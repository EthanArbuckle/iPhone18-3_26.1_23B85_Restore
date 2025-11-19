@interface SUUIProductPageInAppPurchaseTableCell
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setIndexString:(id)a3;
- (void)setPriceString:(id)a3;
- (void)setProductName:(id)a3;
@end

@implementation SUUIProductPageInAppPurchaseTableCell

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    indexLabel = self->_indexLabel;
    v7 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v7)
    {
      [(UILabel *)indexLabel setTextColor:v7];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [(UILabel *)indexLabel setTextColor:v8];
    }

    priceLabel = self->_priceLabel;
    v10 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v10)
    {
      [(UILabel *)priceLabel setTextColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [(UILabel *)priceLabel setTextColor:v11];
    }

    nameLabel = self->_nameLabel;
    v13 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (v13)
    {
      [(UILabel *)nameLabel setTextColor:v13];
    }

    else
    {
      v14 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)nameLabel setTextColor:v14];
    }

    v5 = v15;
  }
}

- (void)setIndexString:(id)a3
{
  v18 = a3;
  v4 = [(SUUIProductPageInAppPurchaseTableCell *)self indexString];
  if (v4 != v18 && ([v4 isEqualToString:v18] & 1) == 0)
  {
    v5 = [v18 length];
    indexLabel = self->_indexLabel;
    if (v5)
    {
      if (!indexLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_indexLabel;
        self->_indexLabel = v7;

        v9 = self->_indexLabel;
        v10 = [(SUUIProductPageInAppPurchaseTableCell *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:v10];

        v11 = self->_indexLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v11 setFont:v12];

        [(UILabel *)self->_indexLabel setTextAlignment:1];
        v13 = self->_indexLabel;
        v14 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v14)
        {
          [(UILabel *)v13 setTextColor:v14];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
          [(UILabel *)v13 setTextColor:v16];
        }

        v17 = [(SUUIProductPageInAppPurchaseTableCell *)self contentView];
        [v17 addSubview:self->_indexLabel];

        indexLabel = self->_indexLabel;
      }

      [(UILabel *)indexLabel setText:v18];
    }

    else
    {
      [(UILabel *)indexLabel removeFromSuperview];
      v15 = self->_indexLabel;
      self->_indexLabel = 0;
    }

    [(SUUIProductPageInAppPurchaseTableCell *)self setNeedsLayout];
  }
}

- (void)setPriceString:(id)a3
{
  v18 = a3;
  v4 = [(SUUIProductPageInAppPurchaseTableCell *)self priceString];
  if (v4 != v18 && ([v4 isEqualToString:v18] & 1) == 0)
  {
    v5 = [v18 length];
    priceLabel = self->_priceLabel;
    if (v5)
    {
      if (!priceLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_priceLabel;
        self->_priceLabel = v7;

        v9 = self->_priceLabel;
        v10 = [(SUUIProductPageInAppPurchaseTableCell *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:v10];

        v11 = self->_priceLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_priceLabel;
        v14 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v14)
        {
          [(UILabel *)v13 setTextColor:v14];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
          [(UILabel *)v13 setTextColor:v16];
        }

        v17 = [(SUUIProductPageInAppPurchaseTableCell *)self contentView];
        [v17 addSubview:self->_priceLabel];

        priceLabel = self->_priceLabel;
      }

      [(UILabel *)priceLabel setText:v18];
      [(UILabel *)self->_priceLabel sizeToFit];
    }

    else
    {
      [(UILabel *)priceLabel removeFromSuperview];
      v15 = self->_priceLabel;
      self->_priceLabel = 0;
    }

    [(SUUIProductPageInAppPurchaseTableCell *)self setNeedsLayout];
  }
}

- (void)setProductName:(id)a3
{
  v18 = a3;
  v4 = [(SUUIProductPageInAppPurchaseTableCell *)self productName];
  if (v4 != v18 && ([v4 isEqualToString:v18] & 1) == 0)
  {
    v5 = [v18 length];
    nameLabel = self->_nameLabel;
    if (v5)
    {
      if (!nameLabel)
      {
        v7 = objc_alloc_init(MEMORY[0x277D756B8]);
        v8 = self->_nameLabel;
        self->_nameLabel = v7;

        v9 = self->_nameLabel;
        v10 = [(SUUIProductPageInAppPurchaseTableCell *)self backgroundColor];
        [(UILabel *)v9 setBackgroundColor:v10];

        v11 = self->_nameLabel;
        v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
        [(UILabel *)v11 setFont:v12];

        v13 = self->_nameLabel;
        v14 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
        if (v14)
        {
          [(UILabel *)v13 setTextColor:v14];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:v16];
        }

        v17 = [(SUUIProductPageInAppPurchaseTableCell *)self contentView];
        [v17 addSubview:self->_nameLabel];

        nameLabel = self->_nameLabel;
      }

      [(UILabel *)nameLabel setText:v18];
    }

    else
    {
      [(UILabel *)nameLabel removeFromSuperview];
      v15 = self->_nameLabel;
      self->_nameLabel = 0;
    }

    [(SUUIProductPageInAppPurchaseTableCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIProductPageInAppPurchaseTableCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = self->_contentInsets.left + 15.0;
  indexLabel = self->_indexLabel;
  if (indexLabel)
  {
    [(UILabel *)indexLabel sizeToFit];
    [(UILabel *)self->_indexLabel frame];
    if (v9 < 15.0)
    {
      v9 = 15.0;
    }

    v11 = (v6 - v10) * 0.5;
    [(UILabel *)self->_indexLabel setFrame:v7 + floor((15.0 - v9) * 0.5), ceilf(v11)];
    v7 = v7 + 15.0 + 15.0;
  }

  v12 = v4 + -15.0;
  priceLabel = self->_priceLabel;
  if (priceLabel)
  {
    [(UILabel *)priceLabel sizeToFit];
    [(UILabel *)self->_priceLabel frame];
    v15 = v14;
    v17 = v16;
    v18 = v12 - v14;
    v19 = (v6 - v16) * 0.5;
    v20 = ceilf(v19);
    [(UILabel *)self->_priceLabel setFrame:v18, v20];
    v25.origin.x = v18;
    v25.origin.y = v20;
    v25.size.width = v15;
    v25.size.height = v17;
    v12 = floor(CGRectGetMinX(v25) + -22.5);
  }

  nameLabel = self->_nameLabel;
  if (nameLabel)
  {
    [(UILabel *)nameLabel sizeToFit];
    [(UILabel *)self->_nameLabel frame];
    v23 = (v6 - v22) * 0.5;
    [(UILabel *)self->_nameLabel setFrame:v7, ceilf(v23), v12 - v7];
  }

  v24.receiver = self;
  v24.super_class = SUUIProductPageInAppPurchaseTableCell;
  [(SUUITableViewCell *)&v24 layoutSubviews];
}

- (void)setBackgroundColor:(id)a3
{
  indexLabel = self->_indexLabel;
  v5 = a3;
  [(UILabel *)indexLabel setBackgroundColor:v5];
  [(UILabel *)self->_nameLabel setBackgroundColor:v5];
  [(UILabel *)self->_priceLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIProductPageInAppPurchaseTableCell;
  [(SUUIProductPageInAppPurchaseTableCell *)&v6 setBackgroundColor:v5];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end