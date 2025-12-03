@interface SUUIGallerySwooshCollectionViewCell
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentChildView:(id)view;
- (void)setTitle:(id)title;
@end

@implementation SUUIGallerySwooshCollectionViewCell

- (void)setColoringWithColorScheme:(id)scheme
{
  primaryTextColor = [scheme primaryTextColor];
  titleColor = self->_titleColor;
  if (titleColor != primaryTextColor)
  {
    obj = primaryTextColor;
    titleColor = [titleColor isEqual:primaryTextColor];
    primaryTextColor = obj;
    if ((titleColor & 1) == 0)
    {
      objc_storeStrong(&self->_titleColor, obj);
      titleLabel = self->_titleLabel;
      if (self->_titleColor)
      {
        titleColor = [(UILabel *)self->_titleLabel setTextColor:?];
      }

      else
      {
        v7 = [MEMORY[0x277D75348] colorWithWhite:0.235294118 alpha:1.0];
        [(UILabel *)titleLabel setTextColor:v7];
      }

      primaryTextColor = obj;
    }
  }

  MEMORY[0x2821F96F8](titleColor, primaryTextColor);
}

- (void)setContentChildView:(id)view
{
  viewCopy = view;
  contentChildView = self->_contentChildView;
  v8 = viewCopy;
  if (contentChildView != viewCopy)
  {
    if ([(UIView *)contentChildView isDescendantOfView:self])
    {
      [(UIView *)self->_contentChildView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentChildView, view);
    [(SUUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    contentView = [(SUUIGallerySwooshCollectionViewCell *)self contentView];
    [contentView addSubview:self->_contentChildView];
    [(SUUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        backgroundColor = [(SUUIGallerySwooshCollectionViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v14 = [MEMORY[0x277D75348] colorWithWhite:0.235294118 alpha:1.0];
          [(UILabel *)v12 setTextColor:v14];
        }

        contentView = [(SUUIGallerySwooshCollectionViewCell *)self contentView];
        [contentView addSubview:self->_titleLabel];

        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v13 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SUUIGallerySwooshCollectionViewCell;
  [(SUUIGallerySwooshCollectionViewCell *)&v19 layoutSubviews];
  contentView = [(SUUIGallerySwooshCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  MaxY = CGRectGetMaxY(v20);
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v15 = v14;
    v16 = MaxY - v14;
    [(UILabel *)self->_titleLabel setFrame:0.0, v16, v9];
    v21.origin.x = 0.0;
    v21.origin.y = v16;
    v21.size.width = v9;
    v21.size.height = v15;
    MaxY = CGRectGetMinY(v21) + -6.0;
  }

  contentChildView = self->_contentChildView;
  if (contentChildView)
  {
    [(UIView *)contentChildView frame];
    [(UIView *)self->_contentChildView setFrame:0.0, MaxY - v18];
  }
}

@end