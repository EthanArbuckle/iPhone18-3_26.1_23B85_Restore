@interface BRLTTranslationParameters
- (BRLTTranslationParameters)initWithCoder:(id)coder;
- (BRLTTranslationParameters)initWithLanguage:(id)language mode:(unint64_t)mode partial:(BOOL)partial useTechnicalTable:(BOOL)table textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (_NSRange)textPositionsRange;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRLTTranslationParameters

- (BRLTTranslationParameters)initWithLanguage:(id)language mode:(unint64_t)mode partial:(BOOL)partial useTechnicalTable:(BOOL)table textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  languageCopy = language;
  rangesCopy = ranges;
  v20.receiver = self;
  v20.super_class = BRLTTranslationParameters;
  v16 = [(BRLTTranslationParameters *)&v20 init];
  if (v16)
  {
    v17 = [languageCopy copy];
    language = v16->_language;
    v16->_language = v17;

    v16->_mode = mode;
    v16->_partial = partial;
    v16->_useTechnicalTableIfPossible = table;
    v16->_textPositionsRange.location = location;
    v16->_textPositionsRange.length = length;
    objc_storeStrong(&v16->_textFormattingRanges, ranges);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = BRLTTranslationParameters;
  v4 = [(BRLTTranslationParameters *)&v13 description];
  language = [(BRLTTranslationParameters *)self language];
  v6 = [(BRLTTranslationParameters *)self mode]- 1;
  if (v6 > 3)
  {
    v7 = @"?";
  }

  else
  {
    v7 = off_278D20968[v6];
  }

  if ([(BRLTTranslationParameters *)self isPartial])
  {
    v8 = " partial";
  }

  else
  {
    v8 = "";
  }

  if ([(BRLTTranslationParameters *)self useTechnicalTableIfPossible])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v15.location = [(BRLTTranslationParameters *)self textPositionsRange];
  v10 = NSStringFromRange(v15);
  v11 = [v3 stringWithFormat:@"<%@ lang:%@ mode:%@%s useTechnicalTable:%s pos:%@>", v4, language, v7, v8, v9, v10];

  return v11;
}

- (BRLTTranslationParameters)initWithCoder:(id)coder
{
  v18[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = BRLTTranslationParameters;
  v5 = [(BRLTTranslationParameters *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v6;

    v5->_mode = [coderCopy decodeIntegerForKey:@"mode"];
    v5->_partial = [coderCopy decodeBoolForKey:@"partial"];
    v5->_useTechnicalTableIfPossible = [coderCopy decodeBoolForKey:@"useTechnicalTable"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textPositionsRange"];
    v5->_textPositionsRange.location = [v8 rangeValue];
    v5->_textPositionsRange.length = v9;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"textFormatting"];
    textFormattingRanges = v5->_textFormattingRanges;
    v5->_textFormattingRanges = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  language = [(BRLTTranslationParameters *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  [coderCopy encodeInteger:-[BRLTTranslationParameters mode](self forKey:{"mode"), @"mode"}];
  [coderCopy encodeBool:-[BRLTTranslationParameters isPartial](self forKey:{"isPartial"), @"partial"}];
  [coderCopy encodeBool:-[BRLTTranslationParameters useTechnicalTableIfPossible](self forKey:{"useTechnicalTableIfPossible"), @"useTechnicalTable"}];
  v6 = MEMORY[0x277CCAE60];
  textPositionsRange = [(BRLTTranslationParameters *)self textPositionsRange];
  v9 = [v6 valueWithRange:{textPositionsRange, v8}];
  [coderCopy encodeObject:v9 forKey:@"textPositionsRange"];

  textFormattingRanges = [(BRLTTranslationParameters *)self textFormattingRanges];
  [coderCopy encodeObject:textFormattingRanges forKey:@"textFormatting"];
}

- (_NSRange)textPositionsRange
{
  length = self->_textPositionsRange.length;
  location = self->_textPositionsRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end