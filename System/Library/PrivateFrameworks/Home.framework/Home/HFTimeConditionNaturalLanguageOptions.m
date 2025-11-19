@interface HFTimeConditionNaturalLanguageOptions
- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4;
- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4 type:(unint64_t)a5;
@end

@implementation HFTimeConditionNaturalLanguageOptions

- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4 type:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = HFTimeConditionNaturalLanguageOptions;
  result = [(HFSubstringNaturalLanguageOptions *)&v7 initWithFormattingContext:a3 formattingStyle:a4];
  if (result)
  {
    result->_timeContext = 0;
    result->_type = a5;
  }

  return result;
}

- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithFormattingContext_formattingStyle_type_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFTimeCondition+NaturalLanguage.m" lineNumber:255 description:{@"%s is unavailable; use %@ instead", "-[HFTimeConditionNaturalLanguageOptions initWithFormattingContext:formattingStyle:]", v7}];

  return 0;
}

@end