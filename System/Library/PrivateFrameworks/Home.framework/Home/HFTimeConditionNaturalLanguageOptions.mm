@interface HFTimeConditionNaturalLanguageOptions
- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style;
- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style type:(unint64_t)type;
@end

@implementation HFTimeConditionNaturalLanguageOptions

- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = HFTimeConditionNaturalLanguageOptions;
  result = [(HFSubstringNaturalLanguageOptions *)&v7 initWithFormattingContext:context formattingStyle:style];
  if (result)
  {
    result->_timeContext = 0;
    result->_type = type;
  }

  return result;
}

- (HFTimeConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithFormattingContext_formattingStyle_type_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTimeCondition+NaturalLanguage.m" lineNumber:255 description:{@"%s is unavailable; use %@ instead", "-[HFTimeConditionNaturalLanguageOptions initWithFormattingContext:formattingStyle:]", v7}];

  return 0;
}

@end