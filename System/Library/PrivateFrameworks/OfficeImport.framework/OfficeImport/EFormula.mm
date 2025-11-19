@interface EFormula
+ (id)singletonEFormula;
+ (id)stringToFormula:(id)a3 formulaHelper:(id)a4 formulaClass:(Class)a5;
- (id)resolveTable:(const char *)a3 sheetIndex:(unint64_t *)a4;
- (id)stringToTokens:(id)a3;
- (unint64_t)resolveName:(const char *)a3;
- (unint64_t)resolveSheet:(const char *)a3 isCurrentSheet:(BOOL *)a4;
- (void)dealloc;
- (void)setFormula:(id)a3;
- (void)setFormulaHelper:(id)a3;
- (void)setTableData:(id)a3;
@end

@implementation EFormula

+ (id)singletonEFormula
{
  v2 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v3 = [v2 objectForKey:@"EFormula"];
  if (!v3)
  {
    v3 = objc_alloc_init(objc_opt_class());
    [v2 setObject:v3 forKey:@"EFormula"];
  }

  return v3;
}

- (void)dealloc
{
  mTableData = self->mTableData;
  if (mTableData)
  {
  }

  v4.receiver = self;
  v4.super_class = EFormula;
  [(EFormula *)&v4 dealloc];
}

- (void)setFormulaHelper:(id)a3
{
  v5 = a3;

  self->mHelper = a3;
}

- (void)setFormula:(id)a3
{
  v5 = a3;

  self->mFormula = a3;
}

- (id)stringToTokens:(id)a3
{
  if ([a3 UTF8String])
  {
    operator new();
  }

  [(EDFormula *)self->mFormula setWarning:1];
  return 0;
}

+ (id)stringToFormula:(id)a3 formulaHelper:(id)a4 formulaClass:(Class)a5
{
  v8 = [a1 singletonEFormula];
  [v8 setFormulaClass:a5];
  [v8 setFormulaHelper:a4];
  v9 = [v8 stringToTokens:a3];
  [v8 setFormulaHelper:0];
  return v9;
}

- (unint64_t)resolveName:(const char *)a3
{
  mHelper = self->mHelper;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];

  return [(EFHelper *)mHelper resolveName:v4];
}

- (unint64_t)resolveSheet:(const char *)a3 isCurrentSheet:(BOOL *)a4
{
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v7 = [(EFHelper *)self->mHelper resolveSheet:v6];
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(EFHelper *)self->mHelper isCurrentSheet:v6];
  }

  *a4 = v8;
  return v7;
}

- (id)resolveTable:(const char *)a3 sheetIndex:(unint64_t *)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v7 = [(EFHelper *)self->mHelper resolveTable:v6];
  if (v7)
  {
    *a4 = [(EFHelper *)self->mHelper resolveTableToSheetId:v6];
  }

  return v7;
}

- (void)setTableData:(id)a3
{
  v5 = a3;

  self->mTableData = a3;
}

@end