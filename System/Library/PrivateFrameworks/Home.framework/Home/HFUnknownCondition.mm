@interface HFUnknownCondition
- (id)hf_naturalLanguageSummaryWithOptions:(id)options;
@end

@implementation HFUnknownCondition

- (id)hf_naturalLanguageSummaryWithOptions:(id)options
{
  optionsCopy = options;
  v5 = _HFLocalizedStringWithDefaultValue(@"HFConditionNameUnknown", @"HFConditionNameUnknown", 1);
  formattingContext = [optionsCopy formattingContext];

  if (formattingContext != 5)
  {
    hf_stringByCapitalizingFirstWord = [v5 hf_stringByCapitalizingFirstWord];

    v5 = hf_stringByCapitalizingFirstWord;
  }

  v8 = [[HFConditionUISummary alloc] initWithCondition:self title:v5 description:0];

  return v8;
}

@end