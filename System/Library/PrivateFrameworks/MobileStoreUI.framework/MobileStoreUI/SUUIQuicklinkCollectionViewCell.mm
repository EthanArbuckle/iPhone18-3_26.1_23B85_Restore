@interface SUUIQuicklinkCollectionViewCell
- (id)_linkButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_linkButtonAction:(id)a3;
- (void)configureForLink:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)a3;
@end

@implementation SUUIQuicklinkCollectionViewCell

- (void)dealloc
{
  [(UIButton *)self->_linkButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIQuicklinkCollectionViewCell;
  [(SUUIQuicklinkCollectionViewCell *)&v3 dealloc];
}

- (void)configureForLink:(id)a3
{
  v7 = a3;
  v4 = [v7 title];
  if ([v4 length])
  {
    v5 = [(SUUIQuicklinkCollectionViewCell *)self _linkButton];
    [v5 setHidden:0];
    v6 = [v7 title];
    [v5 setTitle:v6 forState:0];

    [(SUUIQuicklinkCollectionViewCell *)self setNeedsLayout];
  }

  else
  {
    [(UIButton *)self->_linkButton setHidden:1];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v6 = a3;
  v4 = [v6 secondaryTextColor];
  if (!v4)
  {
    v4 = [v6 primaryTextColor];
  }

  v5 = [(SUUIQuicklinkCollectionViewCell *)self _linkButton];
  [v5 setTintColor:v4];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIQuicklinkCollectionViewCell;
  v5 = [(SUUIQuicklinkCollectionViewCell *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
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
    v3 = [(SUUIQuicklinkCollectionViewCell *)self contentView];
    [v3 bounds];
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

- (void)_linkButtonAction:(id)a3
{
  v6 = SUUICollectionViewForView(self);
  v4 = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 indexPathForCell:self];
    [v4 collectionView:v6 didSelectItemAtIndexPath:v5];
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
    v6 = [(UIButton *)self->_linkButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [v6 setFont:v7];

    v8 = [(SUUIQuicklinkCollectionViewCell *)self contentView];
    [v8 addSubview:self->_linkButton];

    linkButton = self->_linkButton;
  }

  return linkButton;
}

@end