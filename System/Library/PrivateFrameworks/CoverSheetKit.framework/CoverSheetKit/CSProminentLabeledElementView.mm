@interface CSProminentLabeledElementView
- (CSProminentLabeledElementView)initWithDate:(id)date font:(id)font textColor:(id)color glyph:(id)glyph;
- (void)setOverrideString:(id)string;
@end

@implementation CSProminentLabeledElementView

- (CSProminentLabeledElementView)initWithDate:(id)date font:(id)font textColor:(id)color glyph:(id)glyph
{
  glyphCopy = glyph;
  v15.receiver = self;
  v15.super_class = CSProminentLabeledElementView;
  v12 = [(CSProminentTextElementView *)&v15 initWithDate:date font:font textColor:color];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_glyph, glyph);
  }

  return v13;
}

- (void)setOverrideString:(id)string
{
  stringCopy = string;
  overrideString = [(CSProminentTextElementView *)self overrideString];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E69DB7F0];
    glyph = [(CSProminentLabeledElementView *)self glyph];
    v8 = [v6 textAttachmentWithImage:glyph];

    v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];
    v11 = objc_alloc_init(MEMORY[0x1E696AD40]);
    effectiveUserInterfaceLayoutDirection = [(CSProminentLabeledElementView *)self effectiveUserInterfaceLayoutDirection];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    [v11 appendAttributedString:v13];
    [v11 appendAttributedString:v14];
    textLabel = [(CSProminentTextElementView *)self textLabel];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      textLabel2 = [(CSProminentTextElementView *)self textLabel];
      [textLabel2 setAttributedText:v11];
    }

    [(CSProminentLabeledElementView *)self setNeedsLayout];
  }
}

@end