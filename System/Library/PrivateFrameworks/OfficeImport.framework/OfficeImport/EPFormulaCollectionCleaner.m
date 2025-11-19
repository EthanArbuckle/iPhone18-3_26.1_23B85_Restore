@interface EPFormulaCollectionCleaner
- (BOOL)isObjectSupported:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation EPFormulaCollectionCleaner

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = v6;
  [v15 lock];
  v8 = [v15 formulas];
  v9 = [EPFormulaCleaner alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v11 = [(EDProcessor *)v9 initWithWorkbook:WeakRetained];

  v12 = [v8 count];
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = [v8 objectAtIndex:i];
      [(EPFormulaCleaner *)v11 cleanFormula:v14 sheet:v7];
    }
  }

  [v15 unlock];
}

@end