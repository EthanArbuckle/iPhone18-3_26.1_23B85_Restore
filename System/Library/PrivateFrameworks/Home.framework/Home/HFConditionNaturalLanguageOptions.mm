@interface HFConditionNaturalLanguageOptions
+ (id)optionsForCondition:(id)condition inHome:(id)home formattingContext:(int64_t)context formattingStyle:(int64_t)style;
@end

@implementation HFConditionNaturalLanguageOptions

+ (id)optionsForCondition:(id)condition inHome:(id)home formattingContext:(int64_t)context formattingStyle:(int64_t)style
{
  conditionCopy = condition;
  homeCopy = home;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = conditionCopy;
    v12 = [HFTimeConditionNaturalLanguageOptions alloc];
    timeConditionType = [v11 timeConditionType];

    v14 = [(HFTimeConditionNaturalLanguageOptions *)v12 initWithFormattingContext:context formattingStyle:style type:timeConditionType];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[HFPresenceConditionNaturalLanguageOptions alloc] initWithHome:homeCopy formattingContext:context formattingStyle:style];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [[HFCharacteristicConditionNaturalLanguageOptions alloc] initWithFormattingContext:context];
      }

      else
      {
        v14 = [(HFSubstringNaturalLanguageOptions *)[HFConditionNaturalLanguageOptions alloc] initWithFormattingContext:context formattingStyle:style];
      }
    }
  }

  v15 = v14;

  return v15;
}

@end