@interface PKCurrencyNumberRoundingHandler
@end

@implementation PKCurrencyNumberRoundingHandler

void ___PKCurrencyNumberRoundingHandler_block_invoke()
{
  v0 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:4 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v1 = qword_1ED6D15E8;
  qword_1ED6D15E8 = v0;
}

@end