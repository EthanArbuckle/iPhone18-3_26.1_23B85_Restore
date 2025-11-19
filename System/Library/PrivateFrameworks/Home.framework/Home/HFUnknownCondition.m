@interface HFUnknownCondition
- (id)hf_naturalLanguageSummaryWithOptions:(id)a3;
@end

@implementation HFUnknownCondition

- (id)hf_naturalLanguageSummaryWithOptions:(id)a3
{
  v4 = a3;
  v5 = _HFLocalizedStringWithDefaultValue(@"HFConditionNameUnknown", @"HFConditionNameUnknown", 1);
  v6 = [v4 formattingContext];

  if (v6 != 5)
  {
    v7 = [v5 hf_stringByCapitalizingFirstWord];

    v5 = v7;
  }

  v8 = [[HFConditionUISummary alloc] initWithCondition:self title:v5 description:0];

  return v8;
}

@end