@interface EFormula
+ (id)singletonEFormula;
+ (id)stringToFormula:(id)formula formulaHelper:(id)helper formulaClass:(Class)class;
- (id)resolveTable:(const char *)table sheetIndex:(unint64_t *)index;
- (id)stringToTokens:(id)tokens;
- (unint64_t)resolveName:(const char *)name;
- (unint64_t)resolveSheet:(const char *)sheet isCurrentSheet:(BOOL *)currentSheet;
- (void)dealloc;
- (void)setFormula:(id)formula;
- (void)setFormulaHelper:(id)helper;
- (void)setTableData:(id)data;
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

- (void)setFormulaHelper:(id)helper
{
  helperCopy = helper;

  self->mHelper = helper;
}

- (void)setFormula:(id)formula
{
  formulaCopy = formula;

  self->mFormula = formula;
}

- (id)stringToTokens:(id)tokens
{
  if ([tokens UTF8String])
  {
    operator new();
  }

  [(EDFormula *)self->mFormula setWarning:1];
  return 0;
}

+ (id)stringToFormula:(id)formula formulaHelper:(id)helper formulaClass:(Class)class
{
  singletonEFormula = [self singletonEFormula];
  [singletonEFormula setFormulaClass:class];
  [singletonEFormula setFormulaHelper:helper];
  v9 = [singletonEFormula stringToTokens:formula];
  [singletonEFormula setFormulaHelper:0];
  return v9;
}

- (unint64_t)resolveName:(const char *)name
{
  mHelper = self->mHelper;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];

  return [(EFHelper *)mHelper resolveName:v4];
}

- (unint64_t)resolveSheet:(const char *)sheet isCurrentSheet:(BOOL *)currentSheet
{
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:sheet];
  v7 = [(EFHelper *)self->mHelper resolveSheet:v6];
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(EFHelper *)self->mHelper isCurrentSheet:v6];
  }

  *currentSheet = v8;
  return v7;
}

- (id)resolveTable:(const char *)table sheetIndex:(unint64_t *)index
{
  if (!table)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v7 = [(EFHelper *)self->mHelper resolveTable:v6];
  if (v7)
  {
    *index = [(EFHelper *)self->mHelper resolveTableToSheetId:v6];
  }

  return v7;
}

- (void)setTableData:(id)data
{
  dataCopy = data;

  self->mTableData = data;
}

@end