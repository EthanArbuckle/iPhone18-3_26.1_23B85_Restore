@interface HFPresenceConditionNaturalLanguageOptions
- (HFPresenceConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4;
- (HFPresenceConditionNaturalLanguageOptions)initWithHome:(id)a3 formattingContext:(int64_t)a4 formattingStyle:(int64_t)a5;
@end

@implementation HFPresenceConditionNaturalLanguageOptions

- (HFPresenceConditionNaturalLanguageOptions)initWithHome:(id)a3 formattingContext:(int64_t)a4 formattingStyle:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HFPresenceConditionNaturalLanguageOptions;
  v10 = [(HFSubstringNaturalLanguageOptions *)&v13 initWithFormattingContext:a4 formattingStyle:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_home, a3);
  }

  return v11;
}

- (HFPresenceConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_formattingContext_formattingStyle_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFPresenceCondition+NaturalLanguage.m" lineNumber:109 description:{@"%s is unavailable; use %@ instead", "-[HFPresenceConditionNaturalLanguageOptions initWithFormattingContext:formattingStyle:]", v7}];

  return 0;
}

@end