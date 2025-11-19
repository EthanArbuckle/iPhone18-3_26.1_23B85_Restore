@interface IPFeature
- (BOOL)isMatchStringInsideQuotationMarks;
- (_NSRange)matchRange;
- (id)description;
- (id)matchString;
@end

@implementation IPFeature

- (id)matchString
{
  v3 = [(IPFeature *)self textUnit];
  v4 = [v3 length];
  v5 = [(IPFeature *)self matchRange];
  v7 = 0;
  v8 = __CFADD__(v6, v5);
  if (v6 && v4 && !v8 && v5 + v6 <= v4)
  {
    v7 = [v3 substringWithRange:{v5, v6}];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = IPFeature;
  v4 = [(IPFeature *)&v8 description];
  v5 = [(IPFeature *)self matchString];
  v6 = [v3 stringWithFormat:@"%@ [%@]", v4, v5];

  return v6;
}

- (BOOL)isMatchStringInsideQuotationMarks
{
  v3 = [(IPFeature *)self matchRange];
  v5 = v4;
  v6 = [(IPFeature *)self textUnit];
  v7 = [IPRegexToolbox isRangeInsideQuotationMarks:v3 text:v5 limitToSurroundingText:v6, 1];

  return v7;
}

- (_NSRange)matchRange
{
  objc_copyStruct(v4, &self->_matchRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end