@interface _NBNumberFormat
- (_NBNumberFormat)initWithEntry:(id)entry;
- (_NBNumberFormat)initWithPattern:(id)pattern withFormat:(id)format withLeadingDigitsPatterns:(id)patterns withNationalPrefixFormattingRule:(id)rule whenFormatting:(BOOL)formatting withDomesticCarrierCodeFormattingRule:(id)formattingRule;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _NBNumberFormat

- (_NBNumberFormat)initWithPattern:(id)pattern withFormat:(id)format withLeadingDigitsPatterns:(id)patterns withNationalPrefixFormattingRule:(id)rule whenFormatting:(BOOL)formatting withDomesticCarrierCodeFormattingRule:(id)formattingRule
{
  patternCopy = pattern;
  formatCopy = format;
  patternsCopy = patterns;
  ruleCopy = rule;
  formattingRuleCopy = formattingRule;
  v23.receiver = self;
  v23.super_class = _NBNumberFormat;
  v18 = [(_NBNumberFormat *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pattern, pattern);
    objc_storeStrong(&v19->_format, format);
    objc_storeStrong(&v19->_leadingDigitsPatterns, patterns);
    objc_storeStrong(&v19->_nationalPrefixFormattingRule, rule);
    v19->_nationalPrefixOptionalWhenFormatting = formatting;
    objc_storeStrong(&v19->_domesticCarrierCodeFormattingRule, formattingRule);
  }

  return v19;
}

- (_NBNumberFormat)initWithEntry:(id)entry
{
  entryCopy = entry;
  v19.receiver = self;
  v19.super_class = _NBNumberFormat;
  v5 = [(_NBNumberFormat *)&v19 init];
  v6 = v5;
  if (entryCopy && v5)
  {
    v7 = [entryCopy nb_safeStringAtIndex:1];
    pattern = v6->_pattern;
    v6->_pattern = v7;

    v9 = [entryCopy nb_safeStringAtIndex:2];
    format = v6->_format;
    v6->_format = v9;

    v11 = [entryCopy nb_safeArrayAtIndex:3];
    leadingDigitsPatterns = v6->_leadingDigitsPatterns;
    v6->_leadingDigitsPatterns = v11;

    v13 = [entryCopy nb_safeStringAtIndex:4];
    nationalPrefixFormattingRule = v6->_nationalPrefixFormattingRule;
    v6->_nationalPrefixFormattingRule = v13;

    v15 = [entryCopy nb_safeNumberAtIndex:6];
    v6->_nationalPrefixOptionalWhenFormatting = [v15 BOOLValue];

    v16 = [entryCopy nb_safeStringAtIndex:5];
    domesticCarrierCodeFormattingRule = v6->_domesticCarrierCodeFormattingRule;
    v6->_domesticCarrierCodeFormattingRule = v16;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  pattern = [(_NBNumberFormat *)self pattern];
  format = [(_NBNumberFormat *)self format];
  leadingDigitsPatterns = [(_NBNumberFormat *)self leadingDigitsPatterns];
  nationalPrefixFormattingRule = [(_NBNumberFormat *)self nationalPrefixFormattingRule];
  if ([(_NBNumberFormat *)self nationalPrefixOptionalWhenFormatting])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  domesticCarrierCodeFormattingRule = [(_NBNumberFormat *)self domesticCarrierCodeFormattingRule];
  v10 = [v3 stringWithFormat:@"[pattern:%@, format:%@, leadingDigitsPattern:%@, nationalPrefixFormattingRule:%@, nationalPrefixOptionalWhenFormatting:%@, domesticCarrierCodeFormattingRule:%@]", pattern, format, leadingDigitsPatterns, nationalPrefixFormattingRule, v8, domesticCarrierCodeFormattingRule];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_NBNumberFormat alloc];
  pattern = [(_NBNumberFormat *)self pattern];
  format = [(_NBNumberFormat *)self format];
  leadingDigitsPatterns = [(_NBNumberFormat *)self leadingDigitsPatterns];
  nationalPrefixFormattingRule = [(_NBNumberFormat *)self nationalPrefixFormattingRule];
  nationalPrefixOptionalWhenFormatting = [(_NBNumberFormat *)self nationalPrefixOptionalWhenFormatting];
  domesticCarrierCodeFormattingRule = [(_NBNumberFormat *)self domesticCarrierCodeFormattingRule];
  v11 = [(_NBNumberFormat *)v4 initWithPattern:pattern withFormat:format withLeadingDigitsPatterns:leadingDigitsPatterns withNationalPrefixFormattingRule:nationalPrefixFormattingRule whenFormatting:nationalPrefixOptionalWhenFormatting withDomesticCarrierCodeFormattingRule:domesticCarrierCodeFormattingRule];

  return v11;
}

@end