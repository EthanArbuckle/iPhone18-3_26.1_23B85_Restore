@interface SUUIQuicklinksView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIQuicklinksView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setCollectionView:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIQuicklinksView

- (SUUIQuicklinksView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SUUIQuicklinksView;
  v3 = [(SUUIQuicklinksView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v3->_borderView;
    v3->_borderView = v4;

    v6 = v3->_borderView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    [(SUUIQuicklinksView *)v3 addSubview:v3->_borderView];
  }

  return v3;
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  v7 = v5;
  if (collectionView != v5)
  {
    [(UIView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, a3);
    if (self->_collectionView)
    {
      [(SUUIQuicklinksView *)self addSubview:?];
    }
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v17 = a3;
  v4 = [v17 backgroundColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
  }

  v7 = v6;

  [(SUUIQuicklinksView *)self setBackgroundColor:v7];
  [(UIView *)self->_collectionView setBackgroundColor:v7];
  v8 = [v17 secondaryTextColor];
  titleColor = self->_titleColor;
  self->_titleColor = v8;

  if (self->_titleColor)
  {
    titleLabel = self->_titleLabel;
LABEL_7:
    [(UILabel *)titleLabel setTextColor:?];
    goto LABEL_8;
  }

  v11 = [v17 primaryTextColor];
  v12 = self->_titleColor;
  self->_titleColor = v11;

  titleLabel = self->_titleLabel;
  if (self->_titleColor)
  {
    goto LABEL_7;
  }

  v16 = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)titleLabel setTextColor:v16];

LABEL_8:
  v13 = [v17 primaryTextColor];
  borderView = self->_borderView;
  if (v13)
  {
    [(UIView *)borderView setBackgroundColor:v13];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)borderView setBackgroundColor:v15];
  }
}

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  if (v4 != v15 && ([v4 isEqualToString:v15] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SUUIQuicklinksView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v14 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:v14];
        }

        [(SUUIQuicklinksView *)self addSubview:self->_titleLabel];
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

    [(SUUIQuicklinksView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIQuicklinksView *)self bounds];
  v4 = v3;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v7 = v6;
    [(UILabel *)self->_titleLabel setFrame:15.0, 15.0, v4 + -15.0 + -15.0];
    v14.origin.x = 15.0;
    v14.origin.y = 15.0;
    v14.size.width = v4 + -15.0 + -15.0;
    v14.size.height = v7;
    v8 = CGRectGetMaxY(v14) + 11.0;
  }

  else
  {
    v8 = 15.0;
  }

  [(UIView *)self->_collectionView frame];
  [(UIView *)self->_collectionView setFrame:0.0, v8, v4];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = 1.0 / v10;

  borderView = self->_borderView;

  [(UIView *)borderView setFrame:0.0, v8 - v11, v4, v11];
}

- (void)setBackgroundColor:(id)a3
{
  collectionView = self->_collectionView;
  v5 = a3;
  [(UIView *)collectionView setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIQuicklinksView;
  [(SUUIQuicklinksView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame:a3.width];
    v7 = v6 + 30.0;
  }

  else
  {
    v7 = 30.0;
  }

  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(UIView *)collectionView frame];
    v7 = v7 + v9;
  }

  if (self->_titleLabel && self->_collectionView)
  {
    v7 = v7 + 11.0;
  }

  v10 = width;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

@end