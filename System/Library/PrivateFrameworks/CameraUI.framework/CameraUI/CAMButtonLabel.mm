@interface CAMButtonLabel
- (CAMButtonLabel)initWithFrame:(CGRect)frame;
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateAttributedText;
- (void)_updateInternalContentSize;
- (void)setText:(id)text;
- (void)setWantsLegibilityShadow:(BOOL)shadow;
@end

@implementation CAMButtonLabel

- (void)_updateAttributedText
{
  v20[2] = *MEMORY[0x1E69E9840];
  text = [(CAMButtonLabel *)self text];
  if (text)
  {
    font = [(UILabel *)self->__label font];
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [font leading];
    [v5 setLineSpacing:?];
    v6 = *MEMORY[0x1E69DB688];
    v19[0] = *MEMORY[0x1E69DB648];
    v19[1] = v6;
    v20[0] = font;
    v20[1] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v8 = objc_alloc(MEMORY[0x1E696AD40]);
    text2 = [(CAMButtonLabel *)self text];
    v10 = [v8 initWithString:text2 attributes:v7];

    if ([(CAMButtonLabel *)self wantsLegibilityShadow])
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [v11 setShadowColor:blackColor];

      [v11 setShadowOffset:{0.0, 0.0}];
      [v11 setShadowBlurRadius:3.0];
      [v10 addAttribute:*MEMORY[0x1E69DB6A8] value:v11 range:{0, objc_msgSend(v10, "length")}];
    }

    v13 = +[CAMFormattingManager sharedManager];
    wantsCustomKerning = [v13 wantsCustomKerning];

    if (wantsCustomKerning)
    {
      v15 = [CAMFont cameraKerningForFont:font];
      v17 = *MEMORY[0x1E69DB660];
      v18 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [v10 addAttributes:v16 range:{0, objc_msgSend(v10, "length")}];
    }

    [(UILabel *)self->__label setAttributedText:v10];
  }
}

- (void)_updateInternalContentSize
{
  p_contentSize = &self->_contentSize;
  [(UILabel *)self->__label sizeThatFits:1.79769313e308, 1.79769313e308];
  p_contentSize->width = v4;
  p_contentSize->height = v5;
  label = self->__label;

  [(UILabel *)label setFrame:0.0, 0.0, v4, v5];
}

- (CAMButtonLabel)initWithFrame:(CGRect)frame
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CAMButtonLabel;
  v3 = [(CAMButtonLabel *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(CAMButtonLabel *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    label = v3->__label;
    v3->__label = v5;

    v7 = v3->__label;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v7 setTextColor:whiteColor];

    v9 = v3->__label;
    v10 = [CAMFont cameraFontForContentSize:*MEMORY[0x1E69DDC70]];
    [(UILabel *)v9 setFont:v10];

    v11 = v3->__label;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    [(UILabel *)v3->__label setTextAlignment:0];
    [(CAMButtonLabel *)v3 addSubview:v3->__label];
    v17[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14 = [(CAMButtonLabel *)v3 registerForTraitChanges:v13 withAction:sel__preferredContentSizeCategoryDidChange];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->__label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->__label intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setText:(id)text
{
  textCopy = text;
  text = self->_text;
  if (text != textCopy)
  {
    v8 = textCopy;
    text = [text isEqualToString:textCopy];
    textCopy = v8;
    if ((text & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_text;
      self->_text = v6;

      [(CAMButtonLabel *)self _updateAttributedText];
      text = [(CAMButtonLabel *)self _updateInternalContentSize];
      textCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](text, textCopy);
}

- (void)setWantsLegibilityShadow:(BOOL)shadow
{
  if (self->_wantsLegibilityShadow != shadow)
  {
    self->_wantsLegibilityShadow = shadow;
    [(CAMButtonLabel *)self _updateAttributedText];
  }
}

- (void)_preferredContentSizeCategoryDidChange
{
  traitCollection = [(CAMButtonLabel *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = [CAMFont cameraFontForContentSize:preferredContentSizeCategory];
  [(UILabel *)self->__label setFont:v4];
  [(CAMButtonLabel *)self _updateInternalContentSize];
  [(CAMButtonLabel *)self _updateAttributedText];
  [(UILabel *)self->__label invalidateIntrinsicContentSize];
  [(CAMButtonLabel *)self invalidateIntrinsicContentSize];
  [(CAMButtonLabel *)self setNeedsLayout];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end