@interface EPNameFormulaCleaner
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation EPNameFormulaCleaner

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
  v5 = [EPFormulaCleaner alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v7 = [(EDProcessor *)v5 initWithWorkbook:WeakRetained];

  formula = [objectCopy formula];
  [(EPFormulaCleaner *)v7 cleanFormula:formula name:objectCopy];
}

@end