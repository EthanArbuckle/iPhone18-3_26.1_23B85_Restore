@interface SUUIEditorTemplateView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIEditorTemplateView)initWithFrame:(CGRect)a3;
- (SUUIEditorTemplateViewDelegate)delegate;
- (id)_textFromViewElement:(id)a3;
- (void)_reloadSubviews;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBottomInset:(double)a3;
- (void)setDisabled:(BOOL)a3;
- (void)textViewDidChange:(id)a3;
@end

@implementation SUUIEditorTemplateView

- (SUUIEditorTemplateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUIEditorTemplateView;
  v3 = [(SUUIViewReuseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIEditorTemplateView *)v3 _reloadSubviews];
  }

  return v4;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  textView = self->_textView;
  v8 = [(SUUIEditorTemplateView *)self _textFromViewElement:v6];
  [(UITextView *)textView setText:v8];

  v9 = [v6 style];
  v10 = SUUIViewElementFontWithStyle(v9);
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

  v13 = [v9 ikColor];
  v14 = [v13 color];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277D75348] blackColor];
  }

  objc_storeStrong(&self->_textColor, v15);
  if (!v14)
  {
  }

  [(UITextView *)self->_textView setTextColor:self->_textColor];
  v28 = 0;
  v16 = [v6 style];
  v17 = SUUIViewElementPaddingForStyle(v16, &v28);
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

- (void)textViewDidChange:(id)a3
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

- (void)setBottomInset:(double)a3
{
  [(UITextView *)self->_textView contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITextView *)self->_textView setContentInset:?];
  textView = self->_textView;

  [(UITextView *)textView setScrollIndicatorInsets:v6, v8, a3, v10];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
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
    v6 = [(UITextView *)self->_textView layoutManager];
    [v6 setAllowsNonContiguousLayout:0];

    v7 = self->_textView;

    [(SUUIEditorTemplateView *)self addSubview:v7];
  }
}

- (id)_textFromViewElement:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SUUIEditorTemplateView__textFromViewElement___block_invoke;
  v9[3] = &unk_2798F5B20;
  v10 = v5;
  v6 = v5;
  [v4 enumerateChildrenUsingBlock:v9];

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