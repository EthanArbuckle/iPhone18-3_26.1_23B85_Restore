@interface HFCharacteristicConditionNaturalLanguageOptions
- (HFCharacteristicConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context;
@end

@implementation HFCharacteristicConditionNaturalLanguageOptions

- (HFCharacteristicConditionNaturalLanguageOptions)initWithFormattingContext:(int64_t)context
{
  v4.receiver = self;
  v4.super_class = HFCharacteristicConditionNaturalLanguageOptions;
  return [(HFSubstringNaturalLanguageOptions *)&v4 initWithFormattingContext:context formattingStyle:2];
}

@end