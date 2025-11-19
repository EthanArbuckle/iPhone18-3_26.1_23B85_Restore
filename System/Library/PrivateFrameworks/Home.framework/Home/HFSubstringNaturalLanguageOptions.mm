@interface HFSubstringNaturalLanguageOptions
- (HFSubstringNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFSubstringNaturalLanguageOptions

- (HFSubstringNaturalLanguageOptions)initWithFormattingContext:(int64_t)a3 formattingStyle:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = HFSubstringNaturalLanguageOptions;
  result = [(HFNaturalLanguageOptions *)&v7 init];
  if (result)
  {
    result->_formattingContext = a3;
    result->_formattingStyle = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HFSubstringNaturalLanguageOptions;
  v4 = [(HFNaturalLanguageOptions *)&v6 copyWithZone:a3];
  [v4 setFormattingContext:{-[HFSubstringNaturalLanguageOptions formattingContext](self, "formattingContext")}];
  [v4 setFormattingStyle:{-[HFSubstringNaturalLanguageOptions formattingStyle](self, "formattingStyle")}];
  return v4;
}

@end