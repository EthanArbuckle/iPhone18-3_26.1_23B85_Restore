@interface EPNameFormulaTokenizer
- (BOOL)isObjectSupported:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation EPNameFormulaTokenizer

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
  v14 = v6;
  v8 = [v14 formulaString];
  v9 = v8;
  if (v8 && [v8 length])
  {
    WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
    v11 = [EXFormula edTokensForFormulaString:v9 sheet:v7 workbook:WeakRetained];

    v12 = objc_loadWeakRetained(&self->super.mWorkbook);
    [v14 setFormula:v11 workbook:v12];

    v13 = objc_loadWeakRetained(&self->super.mWorkbook);
    [v14 setFormulaString:0 workbook:v13];
  }
}

@end