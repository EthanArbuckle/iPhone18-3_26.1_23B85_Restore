@interface OBTemplateLabel
- (BOOL)isRTL;
- (OBTemplateLabel)init;
- (void)_textAlignmentDidChange;
- (void)setText:(id)text;
- (void)setTitleTrailingSymbol:(id)symbol;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTextAlignmentIfNeeded;
@end

@implementation OBTemplateLabel

- (OBTemplateLabel)init
{
  v5.receiver = self;
  v5.super_class = OBTemplateLabel;
  v2 = [(OBTemplateLabel *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(OBTemplateLabel *)v2 updateTextAlignmentIfNeeded];
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = OBTemplateLabel;
  [(OBTemplateLabel *)&v7 traitCollectionDidChange:change];
  [(OBTemplateLabel *)self updateTextAlignmentIfNeeded];
  symbolName = [(OBTemplateLabel *)self symbolName];
  v5 = [symbolName length];

  if (v5)
  {
    symbolName2 = [(OBTemplateLabel *)self symbolName];
    [(OBTemplateLabel *)self setTitleTrailingSymbol:symbolName2];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  [(OBTemplateLabel *)self setDisplayText:textCopy];
  v8.receiver = self;
  v8.super_class = OBTemplateLabel;
  [(OBTemplateLabel *)&v8 setText:textCopy];

  symbolName = [(OBTemplateLabel *)self symbolName];
  v6 = [symbolName length];

  if (v6)
  {
    symbolName2 = [(OBTemplateLabel *)self symbolName];
    [(OBTemplateLabel *)self setTitleTrailingSymbol:symbolName2];
  }
}

- (void)setTitleTrailingSymbol:(id)symbol
{
  objc_storeStrong(&self->_symbolName, symbol);
  symbolCopy = symbol;
  v6 = MEMORY[0x1E69DCAD8];
  font = [(OBTemplateLabel *)self font];
  v18 = [v6 configurationWithFont:font];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:symbolCopy];
  v9 = [v8 imageByApplyingSymbolConfiguration:v18];
  tintColor = [(OBTemplateLabel *)self tintColor];
  v11 = [v9 imageWithTintColor:tintColor];

  v12 = objc_opt_new();
  [v12 setImage:v11];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  displayText = [(OBTemplateLabel *)self displayText];
  v15 = [displayText stringByAppendingString:@" "];

  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  v17 = [v16 initWithString:v15];
  [v17 appendAttributedString:v13];
  [(OBTemplateLabel *)self setAttributedText:v17];
}

- (BOOL)isRTL
{
  _defaultAttributes = [(OBTemplateLabel *)self _defaultAttributes];
  v4 = [_defaultAttributes objectForKeyedSubscript:@"NSLanguage"];

  if (v4)
  {
    layoutDirection = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:v4];
  }

  else
  {
    traitCollection = [(OBTemplateLabel *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];
  }

  return layoutDirection == 1;
}

- (void)updateTextAlignmentIfNeeded
{
  textAlignment = [(OBTemplateLabel *)self textAlignment];
  if (+[OBViewUtilities shouldUseAccessibilityLayout](OBViewUtilities, "shouldUseAccessibilityLayout") || +[OBFeatureFlags isNaturalUIEnabled])
  {
    if ([(OBTemplateLabel *)self isRTL])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  if ([(OBTemplateLabel *)self forceCenterAlignment])
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 != textAlignment)
  {
    [(OBTemplateLabel *)self setTextAlignment:?];

    [(OBTemplateLabel *)self _textAlignmentDidChange];
  }
}

- (void)_textAlignmentDidChange
{
  symbolName = [(OBTemplateLabel *)self symbolName];
  v4 = [symbolName length];

  if (v4)
  {
    symbolName2 = [(OBTemplateLabel *)self symbolName];
    [(OBTemplateLabel *)self setTitleTrailingSymbol:symbolName2];
  }
}

@end