@interface SUUIPinnedFooterView
- (SUUIPinnedFooterView)initWithFrame:(CGRect)frame;
- (void)_configureTextViewTextStyling;
- (void)_initializeTextView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
@end

@implementation SUUIPinnedFooterView

- (SUUIPinnedFooterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIPinnedFooterView;
  v3 = [(SUUIPinnedFooterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIPinnedFooterView *)v3 _initializeTextView];
  }

  return v4;
}

- (void)layoutSubviews
{
  [(SUUIPinnedFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(SUUIPinnedFooterView *)self horizontalPadding];
  v8 = v4 + v7 * -2.0;
  textView = [(SUUIPinnedFooterView *)self textView];
  [textView sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;
  v13 = v12;

  [(SUUIPinnedFooterView *)self horizontalPadding];
  v15 = v14;
  textView2 = [(SUUIPinnedFooterView *)self textView];
  [textView2 setFrame:{v15, v6 + -10.0 - v13, v11, v13}];

  v17.receiver = self;
  v17.super_class = SUUIPinnedFooterView;
  [(SUUIPinnedFooterView *)&v17 layoutSubviews];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (self->_attributedText != textCopy)
  {
    v7 = textCopy;
    objc_storeStrong(&self->_attributedText, text);
    textView = [(SUUIPinnedFooterView *)self textView];
    [textView setAttributedText:v7];

    [(SUUIPinnedFooterView *)self _configureTextViewTextStyling];
    textCopy = v7;
  }
}

- (void)_configureTextViewTextStyling
{
  textView = [(SUUIPinnedFooterView *)self textView];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [textView setTextColor:lightGrayColor];

  textView2 = [(SUUIPinnedFooterView *)self textView];
  [textView2 setTextAlignment:1];

  textView3 = [(SUUIPinnedFooterView *)self textView];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [textView3 setFont:v6];
}

- (void)_initializeTextView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(SUUIPinnedFooterView *)self setTextView:v3];

  textView = [(SUUIPinnedFooterView *)self textView];
  [textView setDataDetectorTypes:2];

  textView2 = [(SUUIPinnedFooterView *)self textView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [textView2 setBackgroundColor:clearColor];

  textView3 = [(SUUIPinnedFooterView *)self textView];
  [textView3 setEditable:0];

  textView4 = [(SUUIPinnedFooterView *)self textView];
  [textView4 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  [(SUUIPinnedFooterView *)self _configureTextViewTextStyling];
  contentView = [(SUUIPinnedFooterView *)self contentView];
  textView5 = [(SUUIPinnedFooterView *)self textView];
  [contentView addSubview:textView5];
}

@end