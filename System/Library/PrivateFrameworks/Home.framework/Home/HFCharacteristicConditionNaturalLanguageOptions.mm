@interface HFCharacteristicConditionNaturalLanguageOptions
- (HFCharacteristicConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3;
@end

@implementation HFCharacteristicConditionNaturalLanguageOptions

- (HFCharacteristicConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = HFCharacteristicConditionNaturalLanguageOptions;
  return [(HFSubstringNaturalLanguageOptions *)&v4 initWithFormattingContext:a3 formattingStyle:2];
}

@end