@interface SUUIBrickCollectionViewCell
- (UIEdgeInsets)itemImageInsets;
- (void)_reloadHighlight;
- (void)_removeOverlay;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setCountdown:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemImage:(id)a3;
- (void)setItemImageHidden:(BOOL)a3;
- (void)setItemImageInsets:(UIEdgeInsets)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIBrickCollectionViewCell

- (void)setAccessibilityLabel:(id)a3
{
  if (self->_accessibilityLabel != a3)
  {
    v4 = [a3 copy];
    accessibilityLabel = self->_accessibilityLabel;
    self->_accessibilityLabel = v4;

    itemImageView = self->_itemImageView;
    v7 = self->_accessibilityLabel;

    [(UIImageView *)itemImageView setAccessibilityLabel:v7];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = [a3 primaryTextColor];
  titleColor = self->_titleColor;
  if (v4 != titleColor)
  {
    obj = v4;
    titleColor = [titleColor isEqual:v4];
    v4 = obj;
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
        v7 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)titleLabel setTextColor:v7];
      }

      v4 = obj;
    }
  }

  MEMORY[0x2821F96F8](titleColor, v4);
}

- (void)setCountdown:(id)a3
{
  v8 = a3;
  v4 = [(SUUICountdownView *)self->_countdownView countdown];

  if (v4 != v8)
  {
    [(SUUICountdownView *)self->_countdownView removeFromSuperview];
    countdownView = self->_countdownView;
    self->_countdownView = 0;

    if (v8)
    {
      v6 = [[SUUICountdownView alloc] initWithCountdown:v8 clientContext:self->_clientContext];
      v7 = self->_countdownView;
      self->_countdownView = v6;

      [(SUUICountdownView *)self->_countdownView sizeToFit];
      [(SUUIBrickCollectionViewCell *)self addSubview:self->_countdownView];
      [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIBrickCollectionViewCell;
  [(SUUIBrickCollectionViewCell *)&v4 setHighlighted:a3];
  [(SUUIBrickCollectionViewCell *)self _reloadHighlight];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIBrickCollectionViewCell;
  [(SUUIBrickCollectionViewCell *)&v4 setSelected:a3];
  [(SUUIBrickCollectionViewCell *)self _reloadHighlight];
}

- (void)setItemImage:(id)a3
{
  v13 = a3;
  v4 = [(UIImageView *)self->_itemImageView image];

  if (v4 != v13)
  {
    itemImageView = self->_itemImageView;
    if (v13)
    {
      if (!itemImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_itemImageView;
        self->_itemImageView = v7;

        [(UIImageView *)self->_itemImageView setAccessibilityLabel:self->_accessibilityLabel];
        v9 = self->_itemImageView;
        v10 = [(SUUIBrickCollectionViewCell *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v10];

        [(UIImageView *)self->_itemImageView setHidden:[(SUUIBrickCollectionViewCell *)self isItemImageHidden]];
        v11 = [(SUUIBrickCollectionViewCell *)self contentView];
        [v11 addSubview:self->_itemImageView];

        itemImageView = self->_itemImageView;
      }

      [(UIImageView *)itemImageView setImage:?];
      [(UIImageView *)self->_itemImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)itemImageView removeFromSuperview];
      v12 = self->_itemImageView;
      self->_itemImageView = 0;
    }

    v5 = [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setItemImageHidden:(BOOL)a3
{
  if (self->_itemImageHidden != a3)
  {
    self->_itemImageHidden = a3;
    [(UIImageView *)self->_itemImageView setHidden:?];
  }
}

- (void)setItemImageInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_itemImageInsets.top, v3), vceqq_f64(*&self->_itemImageInsets.bottom, v4)))) & 1) == 0)
  {
    self->_itemImageInsets = a3;
    [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [(SUUIBrickCollectionViewCell *)self title];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
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
        v9 = [(SUUIBrickCollectionViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
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

        [(SUUIBrickCollectionViewCell *)self addSubview:self->_titleLabel];
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

    [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)a3
{
  itemImageView = self->_itemImageView;
  v5 = a3;
  [(UIImageView *)itemImageView setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIBrickCollectionViewCell;
  [(SUUIBrickCollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)layoutSubviews
{
  [(UIImageView *)self->_itemImageView frame];
  v4 = v3;
  v6 = v5;
  top = self->_itemImageInsets.top;
  left = self->_itemImageInsets.left;
  [(UIImageView *)self->_itemImageView setFrame:left, top];
  [(UIImageView *)self->_overlayImageView setFrame:left, top, v4, v6];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v11 = v10;
    v14.origin.x = left;
    v14.origin.y = top;
    v14.size.width = v4;
    v14.size.height = v6;
    [(UILabel *)self->_titleLabel setFrame:left, CGRectGetMaxY(v14) + 6.0, v4, v11];
  }

  countdownView = self->_countdownView;
  if (countdownView)
  {

    [(SUUICountdownView *)countdownView setFrame:left, top, v4, v6];
  }
}

- (void)_reloadHighlight
{
  if (([(SUUIBrickCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SUUIBrickCollectionViewCell *)self isSelected])
  {
    if (!self->_overlayImageView)
    {
      v3 = objc_alloc_init(MEMORY[0x277D755E8]);
      overlayImageView = self->_overlayImageView;
      self->_overlayImageView = v3;

      v5 = self->_overlayImageView;
      v6 = [(SUUIBrickCollectionViewCell *)self backgroundColor];
      [(UIImageView *)v5 setBackgroundColor:v6];

      v7 = [(SUUIBrickCollectionViewCell *)self contentView];
      [v7 addSubview:self->_overlayImageView];

      [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
    }

    v8 = [(SUUICountdownView *)self->_countdownView backgroundImage];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(UIImageView *)self->_itemImageView image];
    }

    v14 = v10;

    v11 = self->_overlayImageView;
    v12 = [MEMORY[0x277D75348] blackColor];
    v13 = [v14 _flatImageWithColor:v12];
    [(UIImageView *)v11 setImage:v13];

    [(UIImageView *)self->_overlayImageView setAlpha:0.3];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__SUUIBrickCollectionViewCell__reloadHighlight__block_invoke;
    v15[3] = &unk_2798F5BE8;
    v15[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v15];
    [(UIImageView *)self->_overlayImageView setAlpha:0.0];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_removeOverlay
{
  [(UIImageView *)self->_overlayImageView alpha];
  if (v3 == 0.0)
  {
    [(UIImageView *)self->_overlayImageView removeFromSuperview];
    overlayImageView = self->_overlayImageView;
    self->_overlayImageView = 0;
  }
}

- (UIEdgeInsets)itemImageInsets
{
  top = self->_itemImageInsets.top;
  left = self->_itemImageInsets.left;
  bottom = self->_itemImageInsets.bottom;
  right = self->_itemImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end