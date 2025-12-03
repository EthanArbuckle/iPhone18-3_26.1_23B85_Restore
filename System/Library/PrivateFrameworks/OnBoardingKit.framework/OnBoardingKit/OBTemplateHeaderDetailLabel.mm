@interface OBTemplateHeaderDetailLabel
- (_NSRange)bodyRange;
- (_NSRange)titleRange;
- (void)overrideSpansAllLines:(unint64_t)lines;
- (void)setDetailedTextHeader:(id)header detailedTextBody:(id)body;
- (void)setForceCenterAlignment:(BOOL)alignment;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAttributedTextWithString:(id)string;
@end

@implementation OBTemplateHeaderDetailLabel

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = OBTemplateHeaderDetailLabel;
  [(OBTemplateHeaderDetailLabel *)&v5 traitCollectionDidChange:change];
  text = [(OBTemplateHeaderDetailLabel *)self text];
  [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:text];
}

- (void)setDetailedTextHeader:(id)header detailedTextBody:(id)body
{
  bodyCopy = body;
  headerCopy = header;
  -[OBTemplateHeaderDetailLabel setTitleRange:](self, "setTitleRange:", 0, [headerCopy length]);
  v8 = [@"\n" length];
  [(OBTemplateHeaderDetailLabel *)self titleRange];
  -[OBTemplateHeaderDetailLabel setBodyRange:](self, "setBodyRange:", v9 + v8, [bodyCopy length]);
  v10 = [headerCopy stringByAppendingString:@"\n"];

  v11 = [v10 stringByAppendingString:bodyCopy];

  [(OBTemplateHeaderDetailLabel *)self setText:v11];
}

- (void)setText:(id)text
{
  v5.receiver = self;
  v5.super_class = OBTemplateHeaderDetailLabel;
  textCopy = text;
  [(OBTemplateHeaderDetailLabel *)&v5 setText:textCopy];
  [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:textCopy, v5.receiver, v5.super_class];
}

- (void)updateAttributedTextWithString:(id)string
{
  stringCopy = string;
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

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

  spansAllLinesOverride = [(OBTemplateHeaderDetailLabel *)self spansAllLinesOverride];

  if (spansAllLinesOverride)
  {
    spansAllLinesOverride2 = [(OBTemplateHeaderDetailLabel *)self spansAllLinesOverride];
    v9 = [v5 spansAllLinesForConfiguration:objc_msgSend(spansAllLinesOverride2 withText:{"intValue"), stringCopy}];
  }

  else if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 preferredSpansAllLinesForCurrentLanguageWithText:stringCopy];
  }

  [v5 setSpansAllLines:v9];
  attributedText = [(OBTemplateHeaderDetailLabel *)self attributedText];
  v11 = [attributedText mutableCopy];

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
  titleRange = [(OBTemplateHeaderDetailLabel *)self titleRange];
  [v11 addAttribute:v20 value:v18 range:{titleRange, v22}];
  bodyRange = [(OBTemplateHeaderDetailLabel *)self bodyRange];
  [v11 addAttribute:v20 value:v19 range:{bodyRange, v24}];
  v25 = *MEMORY[0x1E69DB688];
  [v11 removeAttribute:*MEMORY[0x1E69DB688] range:{0, objc_msgSend(v11, "length")}];
  [v11 addAttribute:v25 value:v5 range:{0, objc_msgSend(v11, "length")}];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v11 compressDoubleSpacingBy:-12.0];
  }

  [(OBTemplateHeaderDetailLabel *)self setAttributedText:v11];
}

- (void)overrideSpansAllLines:(unint64_t)lines
{
  spansAllLinesOverride = [(OBTemplateHeaderDetailLabel *)self spansAllLinesOverride];
  if (!spansAllLinesOverride || (v6 = spansAllLinesOverride, -[OBTemplateHeaderDetailLabel spansAllLinesOverride](self, "spansAllLinesOverride"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 intValue], v7, v6, v8 != lines))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:lines];
    [(OBTemplateHeaderDetailLabel *)self setSpansAllLinesOverride:v9];

    text = [(OBTemplateHeaderDetailLabel *)self text];
    [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:text];
  }
}

- (void)setForceCenterAlignment:(BOOL)alignment
{
  self->_forceCenterAlignment = alignment;
  text = [(OBTemplateHeaderDetailLabel *)self text];
  [(OBTemplateHeaderDetailLabel *)self updateAttributedTextWithString:text];
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