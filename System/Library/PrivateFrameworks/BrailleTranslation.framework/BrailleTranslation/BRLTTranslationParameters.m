@interface BRLTTranslationParameters
- (BRLTTranslationParameters)initWithCoder:(id)a3;
- (BRLTTranslationParameters)initWithLanguage:(id)a3 mode:(unint64_t)a4 partial:(BOOL)a5 useTechnicalTable:(BOOL)a6 textPositionsRange:(_NSRange)a7 textFormattingRanges:(id)a8;
- (_NSRange)textPositionsRange;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRLTTranslationParameters

- (BRLTTranslationParameters)initWithLanguage:(id)a3 mode:(unint64_t)a4 partial:(BOOL)a5 useTechnicalTable:(BOOL)a6 textPositionsRange:(_NSRange)a7 textFormattingRanges:(id)a8
{
  length = a7.length;
  location = a7.location;
  v14 = a3;
  v15 = a8;
  v20.receiver = self;
  v20.super_class = BRLTTranslationParameters;
  v16 = [(BRLTTranslationParameters *)&v20 init];
  if (v16)
  {
    v17 = [v14 copy];
    language = v16->_language;
    v16->_language = v17;

    v16->_mode = a4;
    v16->_partial = a5;
    v16->_useTechnicalTableIfPossible = a6;
    v16->_textPositionsRange.location = location;
    v16->_textPositionsRange.length = length;
    objc_storeStrong(&v16->_textFormattingRanges, a8);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = BRLTTranslationParameters;
  v4 = [(BRLTTranslationParameters *)&v13 description];
  v5 = [(BRLTTranslationParameters *)self language];
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
  v11 = [v3 stringWithFormat:@"<%@ lang:%@ mode:%@%s useTechnicalTable:%s pos:%@>", v4, v5, v7, v8, v9, v10];

  return v11;
}

- (BRLTTranslationParameters)initWithCoder:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BRLTTranslationParameters;
  v5 = [(BRLTTranslationParameters *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v6;

    v5->_mode = [v4 decodeIntegerForKey:@"mode"];
    v5->_partial = [v4 decodeBoolForKey:@"partial"];
    v5->_useTechnicalTableIfPossible = [v4 decodeBoolForKey:@"useTechnicalTable"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textPositionsRange"];
    v5->_textPositionsRange.location = [v8 rangeValue];
    v5->_textPositionsRange.length = v9;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"textFormatting"];
    textFormattingRanges = v5->_textFormattingRanges;
    v5->_textFormattingRanges = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BRLTTranslationParameters *)self language];
  [v4 encodeObject:v5 forKey:@"language"];

  [v4 encodeInteger:-[BRLTTranslationParameters mode](self forKey:{"mode"), @"mode"}];
  [v4 encodeBool:-[BRLTTranslationParameters isPartial](self forKey:{"isPartial"), @"partial"}];
  [v4 encodeBool:-[BRLTTranslationParameters useTechnicalTableIfPossible](self forKey:{"useTechnicalTableIfPossible"), @"useTechnicalTable"}];
  v6 = MEMORY[0x277CCAE60];
  v7 = [(BRLTTranslationParameters *)self textPositionsRange];
  v9 = [v6 valueWithRange:{v7, v8}];
  [v4 encodeObject:v9 forKey:@"textPositionsRange"];

  v10 = [(BRLTTranslationParameters *)self textFormattingRanges];
  [v4 encodeObject:v10 forKey:@"textFormatting"];
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