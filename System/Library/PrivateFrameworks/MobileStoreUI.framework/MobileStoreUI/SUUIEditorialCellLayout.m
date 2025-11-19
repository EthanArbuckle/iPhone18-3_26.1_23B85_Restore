@interface SUUIEditorialCellLayout
- (SUUIEditorialCellLayout)initWithCollectionViewCell:(id)a3;
- (SUUIEditorialCellLayout)initWithParentView:(id)a3;
- (UIEdgeInsets)contentInset;
- (id)_linkView;
- (id)_textBoxView;
- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4 expanded:(BOOL)a5;
- (void)dealloc;
- (void)editorialLinkView:(id)a3 didSelectLink:(id)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
@end

@implementation SUUIEditorialCellLayout

- (SUUIEditorialCellLayout)initWithCollectionViewCell:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIEditorialCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithCollectionViewCell:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUIEditorialCellLayout *)v3 _initContentInset];
  }

  return v4;
}

- (SUUIEditorialCellLayout)initWithParentView:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIEditorialCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithParentView:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUIEditorialCellLayout *)v3 _initContentInset];
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIEditorialLinkView *)self->_linkView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIEditorialCellLayout;
  [(SUUIEditorialCellLayout *)&v3 dealloc];
}

- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4 expanded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 bodyTextLayoutForOrientation:a4];
  v10 = [v8 linkLayoutForOrientation:a4];
  v11 = [v8 titleTextLayoutForOrientation:a4];
  if (v9 | v11)
  {
    v17 = 0u;
    v18 = 0u;
    v12 = [v8 editorialComponent];
    v13 = v12;
    if (v12)
    {
      [v12 editorialStyle];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    self->_linkSpacing = *(&v18 + 1);
    v14 = [(SUUIEditorialCellLayout *)self _textBoxView];
    [v14 titleInsets];
    [v14 setTitleInsets:?];
    [v14 setFixedWidthTextFrame:{objc_msgSend(v9, "textFrame")}];
    [v14 setFixedWidthTitleTextFrame:{objc_msgSend(v11, "textFrame")}];
    if (v10)
    {
      v15 = [(SUUIEditorialCellLayout *)self _linkView];
      [v15 setHorizontalAlignment:v17];
      [v15 setLinkLayout:v10];
    }

    else
    {
      [(SUUIEditorialLinkView *)self->_linkView setLinkLayout:0];
    }

    [v8 layoutHeightForOrientation:a4 expanded:{v5, v17, v18, 0}];
    self->_totalHeight = v16;
  }

  else
  {
    [(SUUIEditorialLinkView *)self->_linkView setLinkLayout:0];
    [(SUUITextBoxView *)self->_textBoxView reset];
  }

  [(SUUICellLayout *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SUUIEditorialCellLayout;
  [(SUUICellLayout *)&v15 layoutSubviews];
  v3 = [(SUUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;

  v6 = v5 - self->_contentInset.left - self->_contentInset.right;
  v7 = [(SUUIEditorialCellLayout *)self _textBoxView];
  [v7 frame];
  totalHeight = self->_totalHeight;
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v11 = [(SUUIEditorialLinkView *)self->_linkView linkLayout];

  linkView = self->_linkView;
  if (v11)
  {
    [(SUUIEditorialLinkView *)linkView sizeThatFits:v6, 1.79769313e308];
    v14 = v13;
    [(SUUIEditorialLinkView *)self->_linkView setFrame:self->_contentInset.left, self->_contentInset.top + self->_totalHeight - v13, v6, v13];
    [(SUUIEditorialLinkView *)self->_linkView setHidden:0];
    totalHeight = totalHeight - (v14 + self->_linkSpacing);
  }

  else
  {
    [(SUUIEditorialLinkView *)linkView setHidden:1];
  }

  [v7 setFrame:{left, top, v6, totalHeight}];
}

- (void)setBackgroundColor:(id)a3
{
  linkView = self->_linkView;
  v5 = a3;
  [(SUUIEditorialLinkView *)linkView setBackgroundColor:v5];
  [(SUUITextBoxView *)self->_textBoxView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIEditorialCellLayout;
  [(SUUICellLayout *)&v6 setBackgroundColor:v5];
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  v5 = [(SUUIEditorialCellLayout *)self _linkView];
  [v5 setColoringWithColorScheme:v4];

  v6 = [(SUUIEditorialCellLayout *)self _textBoxView];
  [v6 setColorScheme:v4];
}

- (void)editorialLinkView:(id)a3 didSelectLink:(id)a4
{
  v8 = a4;
  v5 = [(SUUICellLayout *)self parentCellView];
  v6 = SUUICollectionViewForView(v5);
  v7 = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 collectionView:v6 editorialView:v5 didSelectLink:v8];
  }
}

- (id)_linkView
{
  linkView = self->_linkView;
  if (!linkView)
  {
    v4 = [(SUUICellLayout *)self contentView];
    v5 = objc_alloc_init(SUUIEditorialLinkView);
    v6 = self->_linkView;
    self->_linkView = v5;

    v7 = self->_linkView;
    v8 = [(SUUICellLayout *)self parentCellView];
    v9 = [v8 backgroundColor];
    [(SUUIEditorialLinkView *)v7 setBackgroundColor:v9];

    [(SUUIEditorialLinkView *)self->_linkView setDelegate:self];
    [v4 addSubview:self->_linkView];

    linkView = self->_linkView;
  }

  return linkView;
}

- (id)_textBoxView
{
  textBoxView = self->_textBoxView;
  if (!textBoxView)
  {
    v4 = [(SUUICellLayout *)self contentView];
    v5 = [SUUITextBoxView alloc];
    [v4 bounds];
    v6 = [(SUUITextBoxView *)v5 initWithFrame:?];
    v7 = self->_textBoxView;
    self->_textBoxView = v6;

    v8 = self->_textBoxView;
    v9 = [(SUUICellLayout *)self parentCellView];
    v10 = [v9 backgroundColor];
    [(SUUITextBoxView *)v8 setBackgroundColor:v10];

    [(SUUITextBoxView *)self->_textBoxView setContentInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(SUUITextBoxView *)self->_textBoxView setEnabled:0];
    [v4 addSubview:self->_textBoxView];

    textBoxView = self->_textBoxView;
  }

  return textBoxView;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end