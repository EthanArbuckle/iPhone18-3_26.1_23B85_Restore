@interface SUUIGiftResultView
- (SUUIGiftResultView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setItemView:(id)view;
- (void)setTitle:(id)title;
@end

@implementation SUUIGiftResultView

- (SUUIGiftResultView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SUUIGiftResultView;
  v3 = [(SUUIGiftResultView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    giftAgainButton = v3->_giftAgainButton;
    v3->_giftAgainButton = v4;

    [(UIButton *)v3->_giftAgainButton setAutoresizingMask:5];
    titleLabel = [(UIButton *)v3->_giftAgainButton titleLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v7];

    [(SUUIGiftResultView *)v3 addSubview:v3->_giftAgainButton];
  }

  return v3;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  if (image != imageCopy)
  {
    imageView = self->_imageView;
    if (imageCopy)
    {
      if (!imageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_imageView;
        self->_imageView = v7;

        v9 = self->_imageView;
        backgroundColor = [(SUUIGiftResultView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:backgroundColor];

        [(SUUIGiftResultView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:?];
      [(UIImageView *)self->_imageView sizeToFit];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v11 = self->_imageView;
      self->_imageView = 0;
    }

    setNeedsLayout = [(SUUIGiftResultView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)setItemView:(id)view
{
  viewCopy = view;
  itemView = self->_itemView;
  if (itemView != viewCopy)
  {
    v9 = viewCopy;
    if (itemView)
    {
      [(SUUIGiftItemView *)itemView removeFromSuperview];
    }

    objc_storeStrong(&self->_itemView, view);
    v7 = self->_itemView;
    backgroundColor = [(SUUIGiftResultView *)self backgroundColor];
    [(SUUIGiftItemView *)v7 setBackgroundColor:backgroundColor];

    if (self->_itemView)
    {
      [(SUUIGiftResultView *)self addSubview:?];
    }

    itemView = [(SUUIGiftResultView *)self setNeedsLayout];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](itemView, viewCopy);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIGiftResultView *)self title];
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
        backgroundColor = [(SUUIGiftResultView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v12 = self->_titleLabel;
        labelColor = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v12 setTextColor:labelColor];

        [(SUUIGiftResultView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIGiftResultView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  [(SUUIGiftResultView *)self bounds];
  v6 = v5;
  v57 = v7;
  v9 = v8;
  v11 = v10;
  v12 = v8 + -30.0;
  [(UIButton *)self->_giftAgainButton frame];
  v14 = v13;
  v16 = v15;
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v12, 1.79769313e308];
  v18 = v17;
  imageView = self->_imageView;
  if (imageView || (imageView = self->_itemView) != 0)
  {
    [imageView bounds];
    v21 = v20 + 15.0;
  }

  else
  {
    v21 = 0.0;
  }

  v56 = v11;
  v22 = (v11 - (v16 + v18 + v21)) * 0.5;
  v23 = floorf(v22);
  v24 = self->_imageView;
  if (v24)
  {
    v54 = v14;
    v55 = v6;
    v53 = v16;
    [(UIImageView *)v24 frame];
    v27 = v25;
    v28 = v26;
    v29 = (v9 - v25) * 0.5;
    v30 = floorf(v29);
    v31 = v30;
    v32 = self->_imageView;
    if (userInterfaceLayoutDirection)
    {
      [SUUICGRectHelpers rect:v30 withFlippedOriginXRelativeTo:v23, v25, v26, v55, v57, v9, v11];
    }

    else
    {
      v33 = v30;
      v34 = v23;
    }

    [(UIImageView *)v32 setFrame:v33, v34];
    v41 = 15.0;
  }

  else
  {
    itemView = self->_itemView;
    if (!itemView)
    {
      goto LABEL_16;
    }

    v53 = v16;
    v54 = v14;
    [(SUUIGiftItemView *)itemView frame];
    v28 = v36;
    v37 = self->_itemView;
    v55 = v6;
    if (userInterfaceLayoutDirection)
    {
      v31 = 15.0;
      [SUUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v23, v12, v36, v6, v57, v9, v11];
    }

    else
    {
      v38 = 15.0;
      v39 = v23;
      v40 = v12;
      v31 = 15.0;
    }

    [(SUUIGiftItemView *)v37 setFrame:v38, v39, v40];
    v41 = 0.0;
    v27 = v12;
  }

  v59.origin.x = v31;
  v59.origin.y = v23;
  v59.size.width = v27;
  v59.size.height = v28;
  v23 = CGRectGetMaxY(v59) + v41;
  v16 = v53;
  v14 = v54;
  v6 = v55;
LABEL_16:
  [(UILabel *)self->_titleLabel setFrame:15.0, v23, v12, v18];
  titleLabel = self->_titleLabel;
  v43 = 15.0;
  v44 = v23;
  v45 = v12;
  v46 = v18;
  if (userInterfaceLayoutDirection)
  {
    [SUUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v23, v12, v18, v6, v57, v9, v56];
  }

  [(UILabel *)titleLabel setFrame:v43, v44, v45, v46];
  v60.origin.x = 15.0;
  v60.origin.y = v23;
  v60.size.width = v12;
  v60.size.height = v18;
  v47 = CGRectGetMaxY(v60) + 16.0;
  v48 = (v9 - v14) * 0.5;
  v49 = floorf(v48);
  giftAgainButton = self->_giftAgainButton;
  if (userInterfaceLayoutDirection)
  {
    [SUUICGRectHelpers rect:v49 withFlippedOriginXRelativeTo:v47, v14, v16, v6, v57, v9, v56];
    v14 = v51;
    v16 = v52;
  }

  [(UIButton *)giftAgainButton setFrame:v49, v47, v14, v16];
}

@end