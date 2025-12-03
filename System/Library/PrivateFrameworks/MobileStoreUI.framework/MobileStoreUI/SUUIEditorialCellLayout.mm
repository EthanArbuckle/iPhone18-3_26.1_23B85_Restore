@interface SUUIEditorialCellLayout
- (SUUIEditorialCellLayout)initWithCollectionViewCell:(id)cell;
- (SUUIEditorialCellLayout)initWithParentView:(id)view;
- (UIEdgeInsets)contentInset;
- (id)_linkView;
- (id)_textBoxView;
- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation expanded:(BOOL)expanded;
- (void)dealloc;
- (void)editorialLinkView:(id)view didSelectLink:(id)link;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
@end

@implementation SUUIEditorialCellLayout

- (SUUIEditorialCellLayout)initWithCollectionViewCell:(id)cell
{
  v6.receiver = self;
  v6.super_class = SUUIEditorialCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithCollectionViewCell:cell];
  v4 = v3;
  if (v3)
  {
    [(SUUIEditorialCellLayout *)v3 _initContentInset];
  }

  return v4;
}

- (SUUIEditorialCellLayout)initWithParentView:(id)view
{
  v6.receiver = self;
  v6.super_class = SUUIEditorialCellLayout;
  v3 = [(SUUICellLayout *)&v6 initWithParentView:view];
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

- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  layoutCopy = layout;
  v9 = [layoutCopy bodyTextLayoutForOrientation:orientation];
  v10 = [layoutCopy linkLayoutForOrientation:orientation];
  v11 = [layoutCopy titleTextLayoutForOrientation:orientation];
  if (v9 | v11)
  {
    v17 = 0u;
    v18 = 0u;
    editorialComponent = [layoutCopy editorialComponent];
    v13 = editorialComponent;
    if (editorialComponent)
    {
      [editorialComponent editorialStyle];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    self->_linkSpacing = *(&v18 + 1);
    _textBoxView = [(SUUIEditorialCellLayout *)self _textBoxView];
    [_textBoxView titleInsets];
    [_textBoxView setTitleInsets:?];
    [_textBoxView setFixedWidthTextFrame:{objc_msgSend(v9, "textFrame")}];
    [_textBoxView setFixedWidthTitleTextFrame:{objc_msgSend(v11, "textFrame")}];
    if (v10)
    {
      _linkView = [(SUUIEditorialCellLayout *)self _linkView];
      [_linkView setHorizontalAlignment:v17];
      [_linkView setLinkLayout:v10];
    }

    else
    {
      [(SUUIEditorialLinkView *)self->_linkView setLinkLayout:0];
    }

    [layoutCopy layoutHeightForOrientation:orientation expanded:{expandedCopy, v17, v18, 0}];
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
  contentView = [(SUUICellLayout *)self contentView];
  [contentView bounds];
  v5 = v4;

  v6 = v5 - self->_contentInset.left - self->_contentInset.right;
  _textBoxView = [(SUUIEditorialCellLayout *)self _textBoxView];
  [_textBoxView frame];
  totalHeight = self->_totalHeight;
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  linkLayout = [(SUUIEditorialLinkView *)self->_linkView linkLayout];

  linkView = self->_linkView;
  if (linkLayout)
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

  [_textBoxView setFrame:{left, top, v6, totalHeight}];
}

- (void)setBackgroundColor:(id)color
{
  linkView = self->_linkView;
  colorCopy = color;
  [(SUUIEditorialLinkView *)linkView setBackgroundColor:colorCopy];
  [(SUUITextBoxView *)self->_textBoxView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIEditorialCellLayout;
  [(SUUICellLayout *)&v6 setBackgroundColor:colorCopy];
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  _linkView = [(SUUIEditorialCellLayout *)self _linkView];
  [_linkView setColoringWithColorScheme:schemeCopy];

  _textBoxView = [(SUUIEditorialCellLayout *)self _textBoxView];
  [_textBoxView setColorScheme:schemeCopy];
}

- (void)editorialLinkView:(id)view didSelectLink:(id)link
{
  linkCopy = link;
  parentCellView = [(SUUICellLayout *)self parentCellView];
  v6 = SUUICollectionViewForView(parentCellView);
  delegate = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate collectionView:v6 editorialView:parentCellView didSelectLink:linkCopy];
  }
}

- (id)_linkView
{
  linkView = self->_linkView;
  if (!linkView)
  {
    contentView = [(SUUICellLayout *)self contentView];
    v5 = objc_alloc_init(SUUIEditorialLinkView);
    v6 = self->_linkView;
    self->_linkView = v5;

    v7 = self->_linkView;
    parentCellView = [(SUUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SUUIEditorialLinkView *)v7 setBackgroundColor:backgroundColor];

    [(SUUIEditorialLinkView *)self->_linkView setDelegate:self];
    [contentView addSubview:self->_linkView];

    linkView = self->_linkView;
  }

  return linkView;
}

- (id)_textBoxView
{
  textBoxView = self->_textBoxView;
  if (!textBoxView)
  {
    contentView = [(SUUICellLayout *)self contentView];
    v5 = [SUUITextBoxView alloc];
    [contentView bounds];
    v6 = [(SUUITextBoxView *)v5 initWithFrame:?];
    v7 = self->_textBoxView;
    self->_textBoxView = v6;

    v8 = self->_textBoxView;
    parentCellView = [(SUUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SUUITextBoxView *)v8 setBackgroundColor:backgroundColor];

    [(SUUITextBoxView *)self->_textBoxView setContentInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(SUUITextBoxView *)self->_textBoxView setEnabled:0];
    [contentView addSubview:self->_textBoxView];

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