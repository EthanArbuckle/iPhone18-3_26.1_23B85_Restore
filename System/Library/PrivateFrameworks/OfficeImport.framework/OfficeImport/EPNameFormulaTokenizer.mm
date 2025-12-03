@interface EPNameFormulaTokenizer
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation EPNameFormulaTokenizer

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
  v14 = objectCopy;
  formulaString = [v14 formulaString];
  v9 = formulaString;
  if (formulaString && [formulaString length])
  {
    WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
    v11 = [EXFormula edTokensForFormulaString:v9 sheet:sheetCopy workbook:WeakRetained];

    v12 = objc_loadWeakRetained(&self->super.mWorkbook);
    [v14 setFormula:v11 workbook:v12];

    v13 = objc_loadWeakRetained(&self->super.mWorkbook);
    [v14 setFormulaString:0 workbook:v13];
  }
}

@end