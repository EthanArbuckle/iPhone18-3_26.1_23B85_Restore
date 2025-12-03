@interface CAMInstructionLabel
- (CAMInstructionLabel)initWithFrame:(CGRect)frame;
- (CAMInstructionLabelDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)_textInsets;
- (id)_textAttributes;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateAttributedText;
- (void)_updateLabel;
- (void)_updateLayerCornerRadius;
- (void)layoutSubviews;
- (void)setStyle:(int64_t)style;
- (void)setText:(id)text;
@end

@implementation CAMInstructionLabel

- (void)_updateLabel
{
  _label = [(CAMInstructionLabel *)self _label];
  _attributedText = [(CAMInstructionLabel *)self _attributedText];
  [_label setAttributedText:_attributedText];

  [(CAMInstructionLabel *)self setNeedsLayout];
  delegate = [(CAMInstructionLabel *)self delegate];
  [delegate instructionLabelDidChangeIntrinsicContentSize:self];
}

- (CAMInstructionLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_textAttributes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _textColor = [(CAMInstructionLabel *)self _textColor];
  traitCollection = [(CAMInstructionLabel *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [CAMChromeViewSpec regularFontSizeForContentSize:preferredContentSizeCategory];
  v8 = v7;

  v9 = [CAMFont cameraFontOfSize:v8];
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setAlignment:1];
  [v10 setLineBreakMode:0];
  [v10 setLineBreakStrategy:0xFFFFLL];
  text = [(CAMInstructionLabel *)self text];
  LODWORD(preferredContentSizeCategory) = [CAMFont isExtraLongCharacterSet:text];

  v12 = 1.39999998;
  if (!preferredContentSizeCategory)
  {
    v12 = 1.0;
  }

  [v10 setLineHeightMultiple:v12];
  v13 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.75];
  [v13 setShadowColor:v14];

  [v13 setShadowOffset:{0.0, 0.0}];
  [v13 setShadowBlurRadius:3.0];
  [v3 setObject:_textColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB6A8]];

  return v3;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = CAMInstructionLabel;
  [(CAMInstructionLabel *)&v32 layoutSubviews];
  [(CAMInstructionLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v30 = v9;
  if ([(CAMInstructionLabel *)self _wantsPrefixActivityIndicatorView])
  {
    _activityIndicatorView = [(CAMInstructionLabel *)self _activityIndicatorView];

    if (!_activityIndicatorView)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [(CAMInstructionLabel *)self set_activityIndicatorView:v11];

      _activityIndicatorView2 = [(CAMInstructionLabel *)self _activityIndicatorView];
      [_activityIndicatorView2 startAnimating];

      _activityIndicatorView3 = [(CAMInstructionLabel *)self _activityIndicatorView];
      [(CAMInstructionLabel *)self addSubview:_activityIndicatorView3];
    }
  }

  [(CAMInstructionLabel *)self _textInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v26 = v4 + v16;
  v27 = v6 + v14;
  v28 = v8;
  v29 = v6;
  v22 = v8 - (v16 + v20);
  v23 = v30 - (v14 + v18);
  v24 = ![(CAMInstructionLabel *)self _wantsPrefixActivityIndicatorView];
  v25 = 0.0;
  v31[1] = 3221225472;
  v31[0] = MEMORY[0x1E69E9820];
  v31[2] = __37__CAMInstructionLabel_layoutSubviews__block_invoke;
  v31[3] = &unk_1E76FCA90;
  v31[4] = self;
  if (!v24)
  {
    v25 = 16.0;
  }

  *&v31[5] = v26 + v25;
  *&v31[6] = v27;
  *&v31[7] = v22 - v25;
  *&v31[8] = v23;
  *&v31[9] = v15;
  *&v31[10] = v17;
  *&v31[11] = v19;
  *&v31[12] = v21;
  *&v31[13] = v4;
  *&v31[14] = v29;
  *&v31[15] = v28;
  *&v31[16] = v30;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v31];
  [(CAMInstructionLabel *)self _updateLayerCornerRadius];
}

- (CAMInstructionLabel)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CAMInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMInstructionLabel *)v3 _backgroundAlpha];
    [(CAMInstructionLabel *)v4 _backgroundColorWhiteValue];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:? alpha:?];
    [(CAMInstructionLabel *)v4 setBackgroundColor:v5];

    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v4->__label;
    v4->__label = v7;

    [(UILabel *)v4->__label setTextAlignment:1];
    [(UILabel *)v4->__label setNumberOfLines:0];
    [(CAMInstructionLabel *)v4 addSubview:v4->__label];
    v14[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [(CAMInstructionLabel *)v4 registerForTraitChanges:v9 withAction:sel__preferredContentSizeCategoryDidChange];

    v11 = v4;
  }

  return v4;
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

      text = [(CAMInstructionLabel *)self _updateAttributedText];
      textCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](text, textCopy);
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(CAMInstructionLabel *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _attributedText = [(CAMInstructionLabel *)self _attributedText];
  [(CAMInstructionLabel *)self _textInsets];
  if (width <= 0.0 || height <= 0.0)
  {
    [_attributedText size];
  }

  else
  {
    v11 = width - v8 - v10;
    v12 = height - v7 - v9;
    traitCollection = [(CAMInstructionLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [(UILabel *)self->__label sizeThatFits:v11, v12];
    }

    else
    {
      [_attributedText boundingRectWithSize:1 options:0 context:{v11, v12}];
    }
  }

  [(CAMInstructionLabel *)self _wantsPrefixActivityIndicatorView];
  UICeilToViewScale();
  v17 = v16;
  UICeilToViewScale();
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CAMInstructionLabel *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(CAMInstructionLabel *)self _updateAttributedText];

  [(CAMInstructionLabel *)self setNeedsLayout];
}

void __37__CAMInstructionLabel_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _label];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  CGAffineTransformMakeScale(&v7, 0.6, 0.6);
  v3 = [*(a1 + 32) _activityIndicatorView];
  v6 = v7;
  [v3 setTransform:&v6];

  v4 = [*(a1 + 32) _activityIndicatorView];
  [v4 setFrame:{*(a1 + 80), 0.0, 10.0, *(a1 + 128)}];

  LODWORD(v4) = [*(a1 + 32) _wantsPrefixActivityIndicatorView];
  v5 = [*(a1 + 32) _activityIndicatorView];
  [v5 setHidden:v4 ^ 1];
}

- (void)_updateAttributedText
{
  text = [(CAMInstructionLabel *)self text];
  if (text)
  {
    _textAttributes = [(CAMInstructionLabel *)self _textAttributes];
    v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text];
    _symbolPrefixName = [(CAMInstructionLabel *)self _symbolPrefixName];
    _symbolSuffixName = [(CAMInstructionLabel *)self _symbolSuffixName];
    if ([_symbolPrefixName length])
    {
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:_symbolPrefixName];
      if (v7)
      {
        v8 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v7];
        v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
        v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v16 insertAttributedString:v10 atIndex:0];

        [v16 insertAttributedString:v9 atIndex:0];
      }
    }

    if ([_symbolSuffixName length])
    {
      v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:_symbolSuffixName];
      if (v11)
      {
        v12 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v11];
        v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
        v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v16 appendAttributedString:v14];

        [v16 appendAttributedString:v13];
      }
    }

    [v16 addAttributes:_textAttributes range:{0, objc_msgSend(v16, "length")}];

    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = v15;
  [(CAMInstructionLabel *)self set_attributedText:v15];
  [(CAMInstructionLabel *)self _updateLabel];
}

- (void)_updateLayerCornerRadius
{
  [(CAMInstructionLabel *)self _defaultCornerRadius];
  v4 = v3;
  style = [(CAMInstructionLabel *)self style];
  if (style == 2)
  {
    [(CAMInstructionLabel *)self bounds];
    v4 = v6 * 0.5;
  }

  else if (style == 1)
  {
    v4 = 5.0;
  }

  layer = [(CAMInstructionLabel *)self layer];
  [layer setCornerRadius:v4];
}

- (UIEdgeInsets)_textInsets
{
  v2 = 2.0;
  v3 = 8.0;
  v4 = 2.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end