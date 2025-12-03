@interface ICEditingTextView(ICAccessibility_iOS)
- (void)_icaxAddObservationsForCalculate;
@end

@implementation ICEditingTextView(ICAccessibility_iOS)

- (void)_icaxAddObservationsForCalculate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__icaxResetCalculationErrorsForCalculateDocumentUpdate name:*MEMORY[0x277D364C8] object:0];
  [defaultCenter addObserver:self selector:sel__icaxResetCalculationErrorsForCalculateDocumentUpdate name:*MEMORY[0x277D364D0] object:0];
}

@end