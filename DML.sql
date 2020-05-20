-- Encontra quaisquer valores que tenham "r" na segunda posição e ano 2014
SELECT * FROM SENSO WHERE NOME_MUN LIKE '_r%' and ano='2014';

-- Localiza valores que contenham "OR" em qualquer lugar
SELECT * FROM SENSO WHERE NOME_MUN LIKE ('%or%') AND ANO = '2014';

-- Localiza valores que começam com a letra "A" e terminam com "o"
SELECT * FROM SENSO WHERE NOME_MUN LIKE 'A%o' and ano = 2014;

-- Operador not 
SELECT * FROM SENSO WHERE NOME_MUN NOT LIKE ('A%') 
AND COD_UF = '35'
AND NOT POPULACAO < 40000
AND ANO='2014';

-- Operador Having 
SELECT COD_UF, ESTADO, COUNT(*) AS QTD FROM SENSO WHERE ANO = 
'2014' GROUP BY COD_UF, ESTADO HAVING COUNT(COD_MUN) > 500;

-- Operador Having 
SELECT COD_UF, ESTADO, COUNT(*) AS QTD FROM SENSO WHERE ANO = 
'2014' GROUP BY COD_UF, ESTADO HAVING COUNT(COD_MUN) <= 500 ORDER BY 3 DESC ;

-- Operador Having 
SELECT COD_UF, ESTADO, SUM(POPULACAO) AS QTD FROM SENSO WHERE ANO = 
'2014' GROUP BY COD_UF, ESTADO HAVING SUM(POPULACAO) > 5000000;


-- DML SELECT
-- EXEMPLO SELECT
SELECT * FROM funcionarios;


-- EXEMPLO SELECT
SELECT id,nome,salario,setor AS depto
FROM funcionarios;


-- DML INSERT
INSERT INTO funcionarios (ID,nome,salario) VALUES (ID_FUNC.NEXTVAL,'Pedro',1000);
INSERT INTO funcionarios (ID,nome,salario) VALUES (ID_FUNC.NEXTVAL,'Cleiton',1080);
INSERT INTO funcionarios (ID,nome,salario,setor) VALUES (ID_FUNC.NEXTVAL,'Joao',1000,'');
INSERT INTO funcionarios (ID,nome,salario,setor) VALUES (ID_FUNC.NEXTVAL,'Alexandre',3000,'');
INSERT INTO funcionarios (ID,nome,salario,setor) VALUES (ID_FUNC.NEXTVAL,'Jose',2000,'');


-- simulando erro
INSERT INTO funcionarios (ID,nome,salario) VALUES (ID_FUNC.NEXT_VAL,'Pedro','asasaasas');


-- DML UPDATE
UPDATE funcionarios SET salario = 1500
WHERE id=1;


-- OU Aumento de 50% sobre Salário atual.
UPDATE funcionarios SET salario=salario*1.5
WHERE id='2';


-- exemplo update com mais de um campo
UPDATE funcionarios SET salario=salario*1.5,setor='TI'
WHERE id<>'1';


-- DML DELETE
DELETE
FROM funcionarios
WHERE id='1';


-- DML SELECT EVIDENCIA DA EXCLUSAO
SELECT *
FROM funcionarios;
-- WHERE id='1';



