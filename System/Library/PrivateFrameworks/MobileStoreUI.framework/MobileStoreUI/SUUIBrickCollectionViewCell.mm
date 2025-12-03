@interface SUUIBrickCollectionViewCell
- (UIEdgeInsets)itemImageInsets;
- (void)_reloadHighlight;
- (void)_removeOverlay;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setCountdown:(id)countdown;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItemImage:(id)image;
- (void)setItemImageHidden:(BOOL)hidden;
- (void)setItemImageInsets:(UIEdgeInsets)insets;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
@end

@implementation SUUIBrickCollectionViewCell

- (void)setAccessibilityLabel:(id)label
{
  if (self->_accessibilityLabel != label)
  {
    v4 = [label copy];
    accessibilityLabel = self->_accessibilityLabel;
    self->_accessibilityLabel = v4;

    itemImageView = self->_itemImageView;
    v7 = self->_accessibilityLabel;

    [(UIImageView *)itemImageView setAccessibilityLabel:v7];
  }
}

- (void)setColoringWithColorScheme:(id)scheme
{
  primaryTextColor = [scheme primaryTextColor];
  titleColor = self->_titleColor;
  if (primaryTextColor != titleColor)
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
        blackColor = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)titleLabel setTextColor:blackColor];
      }

      primaryTextColor = obj;
    }
  }

  MEMORY[0x2821F96F8](titleColor, primaryTextColor);
}

- (void)setCountdown:(id)countdown
{
  countdownCopy = countdown;
  countdown = [(SUUICountdownView *)self->_countdownView countdown];

  if (countdown != countdownCopy)
  {
    [(SUUICountdownView *)self->_countdownView removeFromSuperview];
    countdownView = self->_countdownView;
    self->_countdownView = 0;

    if (countdownCopy)
    {
      v6 = [[SUUICountdownView alloc] initWithCountdown:countdownCopy clientContext:self->_clientContext];
      v7 = self->_countdownView;
      self->_countdownView = v6;

      [(SUUICountdownView *)self->_countdownView sizeToFit];
      [(SUUIBrickCollectionViewCell *)self addSubview:self->_countdownView];
      [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SUUIBrickCollectionViewCell;
  [(SUUIBrickCollectionViewCell *)&v4 setHighlighted:highlighted];
  [(SUUIBrickCollectionViewCell *)self _reloadHighlight];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SUUIBrickCollectionViewCell;
  [(SUUIBrickCollectionViewCell *)&v4 setSelected:selected];
  [(SUUIBrickCollectionViewCell *)self _reloadHighlight];
}

- (void)setItemImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_itemImageView image];

  if (image != imageCopy)
  {
    itemImageView = self->_itemImageView;
    if (imageCopy)
    {
      if (!itemImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_itemImageView;
        self->_itemImageView = v7;

        [(UIImageView *)self->_itemImageView setAccessibilityLabel:self->_accessibilityLabel];
        v9 = self->_itemImageView;
        backgroundColor = [(SUUIBrickCollectionViewCell *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:backgroundColor];

        [(UIImageView *)self->_itemImageView setHidden:[(SUUIBrickCollectionViewCell *)self isItemImageHidden]];
        contentView = [(SUUIBrickCollectionViewCell *)self contentView];
        [contentView addSubview:self->_itemImageView];

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

    setNeedsLayout = [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)setItemImageHidden:(BOOL)hidden
{
  if (self->_itemImageHidden != hidden)
  {
    self->_itemImageHidden = hidden;
    [(UIImageView *)self->_itemImageView setHidden:?];
  }
}

- (void)setItemImageInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_itemImageInsets.top, v3), vceqq_f64(*&self->_itemImageInsets.bottom, v4)))) & 1) == 0)
  {
    self->_itemImageInsets = insets;
    [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIBrickCollectionViewCell *)self title];
  if (title != titleCopy && ([titleCopy isEqualToString:title] & 1) == 0)
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
        backgroundColor = [(SUUIBrickCollectionViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

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
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:blackColor];
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

- (void)setBackgroundColor:(id)color
{
  itemImageView = self->_itemImageView;
  colorCopy = color;
  [(UIImageView *)itemImageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIBrickCollectionViewCell;
  [(SUUIBrickCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
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
      backgroundColor = [(SUUIBrickCollectionViewCell *)self backgroundColor];
      [(UIImageView *)v5 setBackgroundColor:backgroundColor];

      contentView = [(SUUIBrickCollectionViewCell *)self contentView];
      [contentView addSubview:self->_overlayImageView];

      [(SUUIBrickCollectionViewCell *)self setNeedsLayout];
    }

    backgroundImage = [(SUUICountdownView *)self->_countdownView backgroundImage];
    v9 = backgroundImage;
    if (backgroundImage)
    {
      image = backgroundImage;
    }

    else
    {
      image = [(UIImageView *)self->_itemImageView image];
    }

    v14 = image;

    v11 = self->_overlayImageView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    v13 = [v14 _flatImageWithColor:blackColor];
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