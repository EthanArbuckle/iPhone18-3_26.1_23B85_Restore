@interface SUUIEditorTemplateView
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIEditorTemplateView)initWithFrame:(CGRect)frame;
- (SUUIEditorTemplateViewDelegate)delegate;
- (id)_textFromViewElement:(id)element;
- (void)_reloadSubviews;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBottomInset:(double)inset;
- (void)setDisabled:(BOOL)disabled;
- (void)textViewDidChange:(id)change;
@end

@implementation SUUIEditorTemplateView

- (SUUIEditorTemplateView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUUIEditorTemplateView;
  v3 = [(SUUIViewReuseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIEditorTemplateView *)v3 _reloadSubviews];
  }

  return v4;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  textView = self->_textView;
  v8 = [(SUUIEditorTemplateView *)self _textFromViewElement:elementCopy];
  [(UITextView *)textView setText:v8];

  style = [elementCopy style];
  v10 = SUUIViewElementFontWithStyle(style);
  v11 = self->_textView;
  if (v10)
  {
    [(UITextView *)self->_textView setFont:v10];
  }

  else
  {
    v12 = SUUIFontPreferredFontForTextStyle(1);
    [(UITextView *)v11 setFont:v12];
  }

  ikColor = [style ikColor];
  color = [ikColor color];
  blackColor = color;
  if (!color)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  objc_storeStrong(&self->_textColor, blackColor);
  if (!color)
  {
  }

  [(UITextView *)self->_textView setTextColor:self->_textColor];
  v28 = 0;
  style2 = [elementCopy style];
  v17 = SUUIViewElementPaddingForStyle(style2, &v28);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = 15.0;
  v25 = 18.0;
  if (v28)
  {
    v26 = v17;
  }

  else
  {
    v26 = 18.0;
  }

  if (v28)
  {
    v27 = v19;
  }

  else
  {
    v27 = 15.0;
  }

  if (v28)
  {
    v25 = v21;
    v24 = v23;
  }

  [(UITextView *)self->_textView setTextContainerInset:v26, v27, v25, v24];
  [(UITextView *)self->_textView setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)textViewDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 didChangeTextInEditorTemplateView:self];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SUUIEditorTemplateView;
  [(SUUIEditorTemplateView *)&v5 layoutSubviews];
  textView = self->_textView;
  [(SUUIEditorTemplateView *)self bounds];
  [(UITextView *)textView setFrame:?];
  if (self->_disabled)
  {
    v4 = [(UIColor *)self->_textColor colorWithAlphaComponent:0.2];
    [(UITextView *)self->_textView setTextColor:v4];
    [(UITextView *)self->_textView setEditable:0];
  }

  else
  {
    [(UITextView *)self->_textView setTextColor:self->_textColor];
    [(UITextView *)self->_textView setEditable:1];
  }
}

- (void)setBottomInset:(double)inset
{
  [(UITextView *)self->_textView contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITextView *)self->_textView setContentInset:?];
  textView = self->_textView;

  [(UITextView *)textView setScrollIndicatorInsets:v6, v8, inset, v10];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(SUUIEditorTemplateView *)self setNeedsLayout];
  }
}

- (void)_reloadSubviews
{
  if (!self->_textView)
  {
    v3 = objc_alloc(MEMORY[0x277D75C40]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = self->_textView;
    self->_textView = v4;

    [(UITextView *)self->_textView setDelegate:self];
    [(UITextView *)self->_textView setKeyboardDismissMode:2];
    [(UITextView *)self->_textView setAlwaysBounceVertical:1];
    layoutManager = [(UITextView *)self->_textView layoutManager];
    [layoutManager setAllowsNonContiguousLayout:0];

    v7 = self->_textView;

    [(SUUIEditorTemplateView *)self addSubview:v7];
  }
}

- (id)_textFromViewElement:(id)element
{
  v3 = MEMORY[0x277CBEB18];
  elementCopy = element;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SUUIEditorTemplateView__textFromViewElement___block_invoke;
  v9[3] = &unk_2798F5B20;
  v10 = v5;
  v6 = v5;
  [elementCopy enumerateChildrenUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:@"\n"];

  return v7;
}

void __47__SUUIEditorTemplateView__textFromViewElement___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 elementType] == 138)
  {
    v3 = *(a1 + 32);
    v4 = [v6 text];
    v5 = [v4 string];
    [v3 addObject:v5];
  }
}

- (SUUIEditorTemplateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end