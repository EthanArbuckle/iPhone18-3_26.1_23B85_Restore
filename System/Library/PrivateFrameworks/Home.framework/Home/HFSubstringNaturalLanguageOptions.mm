@interface HFSubstringNaturalLanguageOptions
- (HFSubstringNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFSubstringNaturalLanguageOptions

- (HFSubstringNaturalLanguageOptions)initWithFormattingContext:(int64_t)context formattingStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = HFSubstringNaturalLanguageOptions;
  result = [(HFNaturalLanguageOptions *)&v7 init];
  if (result)
  {
    result->_formattingContext = context;
    result->_formattingStyle = style;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HFSubstringNaturalLanguageOptions;
  v4 = [(HFNaturalLanguageOptions *)&v6 copyWithZone:zone];
  [v4 setFormattingContext:{-[HFSubstringNaturalLanguageOptions formattingContext](self, "formattingContext")}];
  [v4 setFormattingStyle:{-[HFSubstringNaturalLanguageOptions formattingStyle](self, "formattingStyle")}];
  return v4;
}

@end