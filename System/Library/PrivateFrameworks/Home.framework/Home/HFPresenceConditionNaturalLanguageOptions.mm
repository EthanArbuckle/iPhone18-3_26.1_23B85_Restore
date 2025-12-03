@interface HFPresenceConditionNaturalLanguageOptions
- (HFPresenceConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style;
- (HFPresenceConditionNaturalLanguageOptions)initWithHome:(id)home formattingContext:(int64_t)context formattingStyle:(int64_t)style;
@end

@implementation HFPresenceConditionNaturalLanguageOptions

- (HFPresenceConditionNaturalLanguageOptions)initWithHome:(id)home formattingContext:(int64_t)context formattingStyle:(int64_t)style
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HFPresenceConditionNaturalLanguageOptions;
  v10 = [(HFSubstringNaturalLanguageOptions *)&v13 initWithFormattingContext:context formattingStyle:style];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_home, home);
  }

  return v11;
}

- (HFPresenceConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_formattingContext_formattingStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPresenceCondition+NaturalLanguage.m" lineNumber:109 description:{@"%s is unavailable; use %@ instead", "-[HFPresenceConditionNaturalLanguageOptions initWithFormattingContext:formattingStyle:]", v7}];

  return 0;
}

@end