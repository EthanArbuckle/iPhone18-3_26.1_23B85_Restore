@interface SUUIQuicklinkCollectionViewCell
- (id)_linkButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_linkButtonAction:(id)action;
- (void)configureForLink:(id)link;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
@end

@implementation SUUIQuicklinkCollectionViewCell

- (void)dealloc
{
  [(UIButton *)self->_linkButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIQuicklinkCollectionViewCell;
  [(SUUIQuicklinkCollectionViewCell *)&v3 dealloc];
}

- (void)configureForLink:(id)link
{
  linkCopy = link;
  title = [linkCopy title];
  if ([title length])
  {
    _linkButton = [(SUUIQuicklinkCollectionViewCell *)self _linkButton];
    [_linkButton setHidden:0];
    title2 = [linkCopy title];
    [_linkButton setTitle:title2 forState:0];

    [(SUUIQuicklinkCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    [(UIButton *)self->_linkButton setHidden:1];
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  secondaryTextColor = [schemeCopy secondaryTextColor];
  if (!secondaryTextColor)
  {
    secondaryTextColor = [schemeCopy primaryTextColor];
  }

  _linkButton = [(SUUIQuicklinkCollectionViewCell *)self _linkButton];
  [_linkButton setTintColor:secondaryTextColor];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SUUIQuicklinkCollectionViewCell;
  v5 = [(SUUIQuicklinkCollectionViewCell *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = self->_linkButton;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SUUIQuicklinkCollectionViewCell;
  [(SUUICollectionViewCell *)&v13 layoutSubviews];
  if (self->_linkButton)
  {
    contentView = [(SUUIQuicklinkCollectionViewCell *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;

    [(UIButton *)self->_linkButton sizeThatFits:v5 + -15.0 + -15.0, 1.79769313e308];
    if (v5 + -15.0 + -15.0 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5 + -15.0 + -15.0;
    }

    v11 = (v5 - v10) * 0.5;
    v12 = (v7 - v9) * 0.5;
    [(UIButton *)self->_linkButton setFrame:floorf(v11), floorf(v12)];
  }
}

- (void)_linkButtonAction:(id)action
{
  v6 = SUUICollectionViewForView(self);
  delegate = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 indexPathForCell:self];
    [delegate collectionView:v6 didSelectItemAtIndexPath:v5];
  }
}

- (id)_linkButton
{
  linkButton = self->_linkButton;
  if (!linkButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_linkButton;
    self->_linkButton = v4;

    [(UIButton *)self->_linkButton addTarget:self action:sel__linkButtonAction_ forControlEvents:64];
    titleLabel = [(UIButton *)self->_linkButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v7];

    contentView = [(SUUIQuicklinkCollectionViewCell *)self contentView];
    [contentView addSubview:self->_linkButton];

    linkButton = self->_linkButton;
  }

  return linkButton;
}

@end