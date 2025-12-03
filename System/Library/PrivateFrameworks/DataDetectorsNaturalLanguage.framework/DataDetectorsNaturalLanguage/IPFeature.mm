@interface IPFeature
- (BOOL)isMatchStringInsideQuotationMarks;
- (_NSRange)matchRange;
- (id)description;
- (id)matchString;
@end

@implementation IPFeature

- (id)matchString
{
  textUnit = [(IPFeature *)self textUnit];
  v4 = [textUnit length];
  matchRange = [(IPFeature *)self matchRange];
  v7 = 0;
  v8 = __CFADD__(v6, matchRange);
  if (v6 && v4 && !v8 && matchRange + v6 <= v4)
  {
    v7 = [textUnit substringWithRange:{matchRange, v6}];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = IPFeature;
  v4 = [(IPFeature *)&v8 description];
  matchString = [(IPFeature *)self matchString];
  v6 = [v3 stringWithFormat:@"%@ [%@]", v4, matchString];

  return v6;
}

- (BOOL)isMatchStringInsideQuotationMarks
{
  matchRange = [(IPFeature *)self matchRange];
  v5 = v4;
  textUnit = [(IPFeature *)self textUnit];
  v7 = [IPRegexToolbox isRangeInsideQuotationMarks:matchRange text:v5 limitToSurroundingText:textUnit, 1];

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