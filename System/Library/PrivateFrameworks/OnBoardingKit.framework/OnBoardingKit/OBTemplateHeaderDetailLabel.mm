@interface OBTemplateHeaderDetailLabel
- (_NSRange)bodyRange;
- (_NSRange)titleRange;
- (void)overrideSpansAllLines:(unint64_t)a3;
- (void)setDetailedTextHeader:(id)a3 detailedTextBody:(id)a4;
- (void)setForceCenterAlignment:(BOOL)a3;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAttributedTextWithString:(id)a3;
@end

@implementation OBTemplateHeaderDetailLabel

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = OBTemplateHeaderDetailLabel;
  [(OBTemplateHeaderDetailLabel *)&v5 traitCollectionDidChange:a3];
  v4 = [(OBTemplateHeaderDetailLabel *)self text];
  [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:v4];
}

- (void)setDetailedTextHeader:(id)a3 detailedTextBody:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[OBTemplateHeaderDetailLabel setTitleRange:](self, "setTitleRange:", 0, [v7 length]);
  v8 = [@"\n" length];
  [(OBTemplateHeaderDetailLabel *)self titleRange];
  -[OBTemplateHeaderDetailLabel setBodyRange:](self, "setBodyRange:", v9 + v8, [v6 length]);
  v10 = [v7 stringByAppendingString:@"\n"];

  v11 = [v10 stringByAppendingString:v6];

  [(OBTemplateHeaderDetailLabel *)self setText:v11];
}

- (void)setText:(id)a3
{
  v5.receiver = self;
  v5.super_class = OBTemplateHeaderDetailLabel;
  v4 = a3;
  [(OBTemplateHeaderDetailLabel *)&v5 setText:v4];
  [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:v4, v5.receiver, v5.super_class];
}

- (void)updateAttributedTextWithString:(id)a3
{
  v26 = a3;
  v4 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v5 = [v4 mutableCopy];

  if (+[OBViewUtilities shouldUseAccessibilityLayout])
  {
    v6 = 4;
  }

  else if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [v5 setAlignment:v6];
  if ([(OBTemplateHeaderDetailLabel *)self forceCenterAlignment])
  {
    [v5 setAlignment:1];
  }

  v7 = [(OBTemplateHeaderDetailLabel *)self spansAllLinesOverride];

  if (v7)
  {
    v8 = [(OBTemplateHeaderDetailLabel *)self spansAllLinesOverride];
    v9 = [v5 spansAllLinesForConfiguration:objc_msgSend(v8 withText:{"intValue"), v26}];
  }

  else if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 preferredSpansAllLinesForCurrentLanguageWithText:v26];
  }

  [v5 setSpansAllLines:v9];
  v10 = [(OBTemplateHeaderDetailLabel *)self attributedText];
  v11 = [v10 mutableCopy];

  v12 = 0.0;
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0]];
    [v13 pointSize];
    v12 = v14;
  }

  v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v16 = MEMORY[0x1E69DB878];
  v17 = [v15 fontDescriptorWithSymbolicTraits:2];
  v18 = [v16 fontWithDescriptor:v17 size:v12];

  v19 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:v12];
  v20 = *MEMORY[0x1E69DB648];
  v21 = [(OBTemplateHeaderDetailLabel *)self titleRange];
  [v11 addAttribute:v20 value:v18 range:{v21, v22}];
  v23 = [(OBTemplateHeaderDetailLabel *)self bodyRange];
  [v11 addAttribute:v20 value:v19 range:{v23, v24}];
  v25 = *MEMORY[0x1E69DB688];
  [v11 removeAttribute:*MEMORY[0x1E69DB688] range:{0, objc_msgSend(v11, "length")}];
  [v11 addAttribute:v25 value:v5 range:{0, objc_msgSend(v11, "length")}];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v11 compressDoubleSpacingBy:-12.0];
  }

  [(OBTemplateHeaderDetailLabel *)self setAttributedText:v11];
}

- (void)overrideSpansAllLines:(unint64_t)a3
{
  v5 = [(OBTemplateHeaderDetailLabel *)self spansAllLinesOverride];
  if (!v5 || (v6 = v5, -[OBTemplateHeaderDetailLabel spansAllLinesOverride](self, "spansAllLinesOverride"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 intValue], v7, v6, v8 != a3))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(OBTemplateHeaderDetailLabel *)self setSpansAllLinesOverride:v9];

    v10 = [(OBTemplateHeaderDetailLabel *)self text];
    [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:v10];
  }
}

- (void)setForceCenterAlignment:(BOOL)a3
{
  self->_forceCenterAlignment = a3;
  v4 = [(OBTemplateHeaderDetailLabel *)self text];
  [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:v4];
}

- (_NSRange)titleRange
{
  p_titleRange = &self->_titleRange;
  location = self->_titleRange.location;
  length = p_titleRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)bodyRange
{
  p_bodyRange = &self->_bodyRange;
  location = self->_bodyRange.location;
  length = p_bodyRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end