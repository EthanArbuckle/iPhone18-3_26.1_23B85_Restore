@interface SUUIPinnedFooterView
- (SUUIPinnedFooterView)initWithFrame:(CGRect)a3;
- (void)_configureTextViewTextStyling;
- (void)_initializeTextView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
@end

@implementation SUUIPinnedFooterView

- (SUUIPinnedFooterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUIPinnedFooterView;
  v3 = [(SUUIPinnedFooterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v9 = [(SUUIPinnedFooterView *)self textView];
  [v9 sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;
  v13 = v12;

  [(SUUIPinnedFooterView *)self horizontalPadding];
  v15 = v14;
  v16 = [(SUUIPinnedFooterView *)self textView];
  [v16 setFrame:{v15, v6 + -10.0 - v13, v11, v13}];

  v17.receiver = self;
  v17.super_class = SUUIPinnedFooterView;
  [(SUUIPinnedFooterView *)&v17 layoutSubviews];
}

- (void)setAttributedText:(id)a3
{
  v5 = a3;
  if (self->_attributedText != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_attributedText, a3);
    v6 = [(SUUIPinnedFooterView *)self textView];
    [v6 setAttributedText:v7];

    [(SUUIPinnedFooterView *)self _configureTextViewTextStyling];
    v5 = v7;
  }
}

- (void)_configureTextViewTextStyling
{
  v3 = [(SUUIPinnedFooterView *)self textView];
  v4 = [MEMORY[0x277D75348] lightGrayColor];
  [v3 setTextColor:v4];

  v5 = [(SUUIPinnedFooterView *)self textView];
  [v5 setTextAlignment:1];

  v7 = [(SUUIPinnedFooterView *)self textView];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [v7 setFont:v6];
}

- (void)_initializeTextView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(SUUIPinnedFooterView *)self setTextView:v3];

  v4 = [(SUUIPinnedFooterView *)self textView];
  [v4 setDataDetectorTypes:2];

  v5 = [(SUUIPinnedFooterView *)self textView];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [(SUUIPinnedFooterView *)self textView];
  [v7 setEditable:0];

  v8 = [(SUUIPinnedFooterView *)self textView];
  [v8 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  [(SUUIPinnedFooterView *)self _configureTextViewTextStyling];
  v10 = [(SUUIPinnedFooterView *)self contentView];
  v9 = [(SUUIPinnedFooterView *)self textView];
  [v10 addSubview:v9];
}

@end