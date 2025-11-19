@interface HFConditionNaturalLanguageOptions
+ (id)optionsForCondition:(id)a3 inHome:(id)a4 formattingContext:(int64_t)a5 formattingStyle:(int64_t)a6;
@end

@implementation HFConditionNaturalLanguageOptions

+ (id)optionsForCondition:(id)a3 inHome:(id)a4 formattingContext:(int64_t)a5 formattingStyle:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    v12 = [HFTimeConditionNaturalLanguageOptions alloc];
    v13 = [v11 timeConditionType];

    v14 = [(HFTimeConditionNaturalLanguageOptions *)v12 initWithFormattingContext:a5 formattingStyle:a6 type:v13];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[HFPresenceConditionNaturalLanguageOptions alloc] initWithHome:v10 formattingContext:a5 formattingStyle:a6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [[HFCharacteristicConditionNaturalLanguageOptions alloc] initWithFormattingContext:a5];
      }

      else
      {
        v14 = [(HFSubstringNaturalLanguageOptions *)[HFConditionNaturalLanguageOptions alloc] initWithFormattingContext:a5 formattingStyle:a6];
      }
    }
  }

  v15 = v14;

  return v15;
}

@end