@interface _NBNumberFormat
- (_NBNumberFormat)initWithEntry:(id)a3;
- (_NBNumberFormat)initWithPattern:(id)a3 withFormat:(id)a4 withLeadingDigitsPatterns:(id)a5 withNationalPrefixFormattingRule:(id)a6 whenFormatting:(BOOL)a7 withDomesticCarrierCodeFormattingRule:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _NBNumberFormat

- (_NBNumberFormat)initWithPattern:(id)a3 withFormat:(id)a4 withLeadingDigitsPatterns:(id)a5 withNationalPrefixFormattingRule:(id)a6 whenFormatting:(BOOL)a7 withDomesticCarrierCodeFormattingRule:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = _NBNumberFormat;
  v18 = [(_NBNumberFormat *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pattern, a3);
    objc_storeStrong(&v19->_format, a4);
    objc_storeStrong(&v19->_leadingDigitsPatterns, a5);
    objc_storeStrong(&v19->_nationalPrefixFormattingRule, a6);
    v19->_nationalPrefixOptionalWhenFormatting = a7;
    objc_storeStrong(&v19->_domesticCarrierCodeFormattingRule, a8);
  }

  return v19;
}

- (_NBNumberFormat)initWithEntry:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _NBNumberFormat;
  v5 = [(_NBNumberFormat *)&v19 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 nb_safeStringAtIndex:1];
    pattern = v6->_pattern;
    v6->_pattern = v7;

    v9 = [v4 nb_safeStringAtIndex:2];
    format = v6->_format;
    v6->_format = v9;

    v11 = [v4 nb_safeArrayAtIndex:3];
    leadingDigitsPatterns = v6->_leadingDigitsPatterns;
    v6->_leadingDigitsPatterns = v11;

    v13 = [v4 nb_safeStringAtIndex:4];
    nationalPrefixFormattingRule = v6->_nationalPrefixFormattingRule;
    v6->_nationalPrefixFormattingRule = v13;

    v15 = [v4 nb_safeNumberAtIndex:6];
    v6->_nationalPrefixOptionalWhenFormatting = [v15 BOOLValue];

    v16 = [v4 nb_safeStringAtIndex:5];
    domesticCarrierCodeFormattingRule = v6->_domesticCarrierCodeFormattingRule;
    v6->_domesticCarrierCodeFormattingRule = v16;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_NBNumberFormat *)self pattern];
  v5 = [(_NBNumberFormat *)self format];
  v6 = [(_NBNumberFormat *)self leadingDigitsPatterns];
  v7 = [(_NBNumberFormat *)self nationalPrefixFormattingRule];
  if ([(_NBNumberFormat *)self nationalPrefixOptionalWhenFormatting])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = [(_NBNumberFormat *)self domesticCarrierCodeFormattingRule];
  v10 = [v3 stringWithFormat:@"[pattern:%@, format:%@, leadingDigitsPattern:%@, nationalPrefixFormattingRule:%@, nationalPrefixOptionalWhenFormatting:%@, domesticCarrierCodeFormattingRule:%@]", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_NBNumberFormat alloc];
  v5 = [(_NBNumberFormat *)self pattern];
  v6 = [(_NBNumberFormat *)self format];
  v7 = [(_NBNumberFormat *)self leadingDigitsPatterns];
  v8 = [(_NBNumberFormat *)self nationalPrefixFormattingRule];
  v9 = [(_NBNumberFormat *)self nationalPrefixOptionalWhenFormatting];
  v10 = [(_NBNumberFormat *)self domesticCarrierCodeFormattingRule];
  v11 = [(_NBNumberFormat *)v4 initWithPattern:v5 withFormat:v6 withLeadingDigitsPatterns:v7 withNationalPrefixFormattingRule:v8 whenFormatting:v9 withDomesticCarrierCodeFormattingRule:v10];

  return v11;
}

@end