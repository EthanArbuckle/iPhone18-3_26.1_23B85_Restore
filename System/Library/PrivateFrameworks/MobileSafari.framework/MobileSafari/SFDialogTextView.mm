@interface SFDialogTextView
- (CGSize)intrinsicContentSize;
- (SFDialogTextView)initWithCoder:(id)coder;
- (SFDialogTextView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
- (void)_updateFontStyling;
- (void)_updateText;
- (void)_updateTextContainerInset;
- (void)layoutSubviews;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setMessage:(id)message;
- (void)setPreferredMaxLayoutWidth:(double)width;
- (void)setTitle:(id)title;
@end

@implementation SFDialogTextView

- (SFDialogTextView)initWithFrame:(CGRect)frame
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = SFDialogTextView;
  v3 = [(SFDialogTextView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    message = v3->_message;
    v3->_message = &stru_1EFF36230;

    v6 = objc_alloc_init(MEMORY[0x1E69DD168]);
    textView = v4->_textView;
    v4->_textView = v6;

    [(UITextView *)v4->_textView setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v4->_textView setAlwaysBounceVertical:0];
    [(UITextView *)v4->_textView setAlwaysBounceHorizontal:0];
    [(UITextView *)v4->_textView setBackgroundColor:0];
    [(UITextView *)v4->_textView setEditable:0];
    [(UITextView *)v4->_textView setKeyboardDismissMode:2];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v4->_textView setTextColor:labelColor];

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_textView setTextAlignment:4];
    [(SFDialogTextView *)v4 _updateFontStyling];
    [(SFDialogTextView *)v4 addSubview:v4->_textView];
    v25 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UITextView *)v4->_textView centerXAnchor];
    centerXAnchor2 = [(SFDialogTextView *)v4 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31[0] = v27;
    centerYAnchor = [(UITextView *)v4->_textView centerYAnchor];
    centerYAnchor2 = [(SFDialogTextView *)v4 centerYAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v31[1] = v10;
    widthAnchor = [(UITextView *)v4->_textView widthAnchor];
    widthAnchor2 = [(SFDialogTextView *)v4 widthAnchor];
    v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v31[2] = v13;
    heightAnchor = [(UITextView *)v4->_textView heightAnchor];
    heightAnchor2 = [(SFDialogTextView *)v4 heightAnchor];
    v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v31[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v25 activateConstraints:v17];

    layer = [(SFDialogTextView *)v4 layer];
    v19 = newGradientLayer(0);
    topGradient = v4->_topGradient;
    v4->_topGradient = v19;

    [layer addSublayer:v4->_topGradient];
    v21 = newGradientLayer(1);
    bottomGradient = v4->_bottomGradient;
    v4->_bottomGradient = v21;

    [layer addSublayer:v4->_bottomGradient];
    v23 = v4;
  }

  return v4;
}

- (SFDialogTextView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFDialogTextView;
  return [(SFDialogTextView *)&v4 initWithCoder:coder];
}

- (CGSize)intrinsicContentSize
{
  preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  if (preferredMaxLayoutWidth <= 0.0)
  {
    preferredMaxLayoutWidth = 1.79769313e308;
  }

  [(UITextView *)self->_textView sizeThatFits:preferredMaxLayoutWidth];
  v4 = ceil(v3);
  v6 = ceil(v5);
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SFDialogTextView;
  [(SFDialogTextView *)&v23 layoutSubviews];
  [(SFDialogTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFDialogTextView *)self contentInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  disableActions = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v20 = gradientLayerColors(0);
  [(CAGradientLayer *)self->_topGradient setColors:v20];

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  [(CAGradientLayer *)self->_topGradient setFrame:v14, 0.0, CGRectGetWidth(v24) - v14 - v18, v12];
  v21 = gradientLayerColors(1);
  [(CAGradientLayer *)self->_bottomGradient setColors:v21];

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v22 = CGRectGetHeight(v25) - v16;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  [(CAGradientLayer *)self->_bottomGradient setFrame:v14, v22, CGRectGetWidth(v26) - v14 - v18, v16];
  [MEMORY[0x1E6979518] setDisableActions:disableActions];
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v4), vceqq_f64(*&self->_contentInsets.bottom, v5)))) & 1) == 0)
  {
    self->_contentInsets = insets;
  }

  [(SFDialogTextView *)self _updateTextContainerInset];
  [(SFDialogTextView *)self invalidateIntrinsicContentSize];

  [(SFDialogTextView *)self setNeedsLayout];
}

- (void)_updateTextContainerInset
{
  [(UITextView *)self->_textView setTextContainerInset:self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
  textContainer = [(UITextView *)self->_textView textContainer];
  [textContainer setLineFragmentPadding:0.0];
}

- (void)_updateText
{
  v32[3] = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_title length]&& ![(NSString *)self->_message length])
  {
    [(UITextView *)self->_textView setFont:self->_messageFont];
    textView = self->_textView;
    v24 = &stru_1EFF36230;
LABEL_15:

    [(UITextView *)textView setText:v24];
    return;
  }

  if (![(NSString *)self->_title length]|| [(NSString *)self->_message length])
  {
    if ([(NSString *)self->_title length]|| ![(NSString *)self->_message length])
    {
      [(UITextView *)self->_textView setFont:self->_messageFont, 440];
      if (!self->_titleParagraphStyle)
      {
        defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
        v4 = [defaultParagraphStyle mutableCopy];

        [v4 setParagraphSpacing:8.0];
        v5 = [v4 copy];
        titleParagraphStyle = self->_titleParagraphStyle;
        self->_titleParagraphStyle = v5;
      }

      v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v8 = objc_alloc(MEMORY[0x1E696AAB0]);
      v9 = [(NSString *)self->_title stringByAppendingString:@"\n"];
      titleFont = self->_titleFont;
      v12 = *MEMORY[0x1E69DB688];
      v30[0] = *MEMORY[0x1E69DB648];
      v10 = v30[0];
      v30[1] = v12;
      v13 = self->_titleParagraphStyle;
      v32[0] = titleFont;
      v32[1] = v13;
      v31 = *MEMORY[0x1E69DB650];
      v14 = v31;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v32[2] = labelColor;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v30 count:3];
      v17 = [v8 initWithString:v9 attributes:v16];
      [v7 appendAttributedString:v17];

      v18 = objc_alloc(MEMORY[0x1E696AAB0]);
      message = self->_message;
      messageFontWithTitle = self->_messageFontWithTitle;
      v28[1] = v14;
      v29[0] = messageFontWithTitle;
      v28[0] = v10;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v29[1] = secondaryLabelColor;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v23 = [v18 initWithString:message attributes:v22];
      [v7 appendAttributedString:v23];

      [*&v26[self] setAttributedText:v7];
      return;
    }

    [(UITextView *)self->_textView setFont:self->_messageFont];
    v24 = self->_message;
    textView = self->_textView;
    goto LABEL_15;
  }

  [(UITextView *)self->_textView setFont:self->_titleFont];
  [(UITextView *)self->_textView setText:self->_title];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UITextView *)self->_textView setTextColor:?];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  if (title != titleCopy)
  {
    v8 = titleCopy;
    v7 = [(NSString *)title isEqualToString:titleCopy];
    titleCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_title, title);
      [(SFDialogTextView *)self _updateText];
      [(SFDialogTextView *)self invalidateIntrinsicContentSize];
      titleCopy = v8;
    }
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  message = self->_message;
  if (message != messageCopy)
  {
    v8 = messageCopy;
    v7 = [(NSString *)message isEqualToString:messageCopy];
    messageCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_message, message);
      [(SFDialogTextView *)self _updateText];
      [(SFDialogTextView *)self invalidateIntrinsicContentSize];
      messageCopy = v8;
    }
  }
}

- (void)setPreferredMaxLayoutWidth:(double)width
{
  if (self->_preferredMaxLayoutWidth != width)
  {
    self->_preferredMaxLayoutWidth = width;
    [(SFDialogTextView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_updateFontStyling
{
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  messageFont = self->_messageFont;
  self->_messageFont = v4;

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
  messageFontWithTitle = self->_messageFontWithTitle;
  self->_messageFontWithTitle = v6;

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  titleFont = self->_titleFont;
  self->_titleFont = v8;

  [(SFDialogTextView *)self _updateText];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end