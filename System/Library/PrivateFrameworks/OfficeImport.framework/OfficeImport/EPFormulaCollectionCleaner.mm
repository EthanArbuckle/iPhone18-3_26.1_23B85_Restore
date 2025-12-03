@interface EPFormulaCollectionCleaner
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation EPFormulaCollectionCleaner

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  sheetCopy = sheet;
  v15 = objectCopy;
  [v15 lock];
  formulas = [v15 formulas];
  v9 = [EPFormulaCleaner alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v11 = [(EDProcessor *)v9 initWithWorkbook:WeakRetained];

  v12 = [formulas count];
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = [formulas objectAtIndex:i];
      [(EPFormulaCleaner *)v11 cleanFormula:v14 sheet:sheetCopy];
    }
  }

  [v15 unlock];
}

@end