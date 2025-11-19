@interface OBTemplateLabel
- (BOOL)isRTL;
- (OBTemplateLabel)init;
- (void)_textAlignmentDidChange;
- (void)setText:(id)a3;
- (void)setTitleTrailingSymbol:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = OBTemplateLabel;
  [(OBTemplateLabel *)&v7 traitCollectionDidChange:a3];
  [(OBTemplateLabel *)self updateTextAlignmentIfNeeded];
  v4 = [(OBTemplateLabel *)self symbolName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(OBTemplateLabel *)self symbolName];
    [(OBTemplateLabel *)self setTitleTrailingSymbol:v6];
  }
}

- (void)setText:(id)a3
{
  v4 = a3;
  [(OBTemplateLabel *)self setDisplayText:v4];
  v8.receiver = self;
  v8.super_class = OBTemplateLabel;
  [(OBTemplateLabel *)&v8 setText:v4];

  v5 = [(OBTemplateLabel *)self symbolName];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(OBTemplateLabel *)self symbolName];
    [(OBTemplateLabel *)self setTitleTrailingSymbol:v7];
  }
}

- (void)setTitleTrailingSymbol:(id)a3
{
  objc_storeStrong(&self->_symbolName, a3);
  v5 = a3;
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [(OBTemplateLabel *)self font];
  v18 = [v6 configurationWithFont:v7];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
  v9 = [v8 imageByApplyingSymbolConfiguration:v18];
  v10 = [(OBTemplateLabel *)self tintColor];
  v11 = [v9 imageWithTintColor:v10];

  v12 = objc_opt_new();
  [v12 setImage:v11];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  v14 = [(OBTemplateLabel *)self displayText];
  v15 = [v14 stringByAppendingString:@" "];

  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  v17 = [v16 initWithString:v15];
  [v17 appendAttributedString:v13];
  [(OBTemplateLabel *)self setAttributedText:v17];
}

- (BOOL)isRTL
{
  v3 = [(OBTemplateLabel *)self _defaultAttributes];
  v4 = [v3 objectForKeyedSubscript:@"NSLanguage"];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:v4];
  }

  else
  {
    v6 = [(OBTemplateLabel *)self traitCollection];
    v5 = [v6 layoutDirection];
  }

  return v5 == 1;
}

- (void)updateTextAlignmentIfNeeded
{
  v3 = [(OBTemplateLabel *)self textAlignment];
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

  if (v5 != v3)
  {
    [(OBTemplateLabel *)self setTextAlignment:?];

    [(OBTemplateLabel *)self _textAlignmentDidChange];
  }
}

- (void)_textAlignmentDidChange
{
  v3 = [(OBTemplateLabel *)self symbolName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(OBTemplateLabel *)self symbolName];
    [(OBTemplateLabel *)self setTitleTrailingSymbol:v5];
  }
}

@end