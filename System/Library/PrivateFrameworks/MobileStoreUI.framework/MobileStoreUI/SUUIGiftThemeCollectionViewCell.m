@interface SUUIGiftThemeCollectionViewCell
- (UIImage)itemImage;
- (id)_itemView;
- (void)_reloadItemView;
- (void)_setHeaderImage:(id)a3;
- (void)_setMessage:(id)a3;
- (void)_setPrice:(id)a3;
- (void)_setSenderName:(id)a3;
- (void)layoutSubviews;
- (void)reloadThemeHeaderImage;
- (void)setBackgroundColor:(id)a3;
- (void)setGift:(id)a3;
- (void)setItemImage:(id)a3;
- (void)setTheme:(id)a3;
@end

@implementation SUUIGiftThemeCollectionViewCell

- (UIImage)itemImage
{
  v2 = [(SUUIGiftThemeCollectionViewCell *)self _itemView];
  v3 = [v2 itemImage];

  return v3;
}

- (void)reloadThemeHeaderImage
{
  theme = self->_theme;
  if (theme)
  {
    v4 = [(SUUIGiftTheme *)theme headerImage];
    [(SUUIGiftThemeCollectionViewCell *)self _setHeaderImage:v4];
  }
}

- (void)setGift:(id)a3
{
  v5 = a3;
  if (self->_gift != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_gift, a3);
    v6 = [(SUUIGift *)self->_gift message];
    [(SUUIGiftThemeCollectionViewCell *)self _setMessage:v6];

    v7 = [(SUUIGift *)self->_gift senderName];
    [(SUUIGiftThemeCollectionViewCell *)self _setSenderName:v7];

    v8 = [(SUUIGift *)self->_gift item];

    if (v8)
    {
      [(SUUIGiftThemeCollectionViewCell *)self _setPrice:0];
      [(SUUIGiftThemeCollectionViewCell *)self _reloadItemView];
    }

    else
    {
      [(SUUIGiftItemView *)self->_itemView removeFromSuperview];
      itemView = self->_itemView;
      self->_itemView = 0;

      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUUIGift giftAmount](self->_gift, "giftAmount")}];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];

      v13 = [(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbol];
      if ([(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbolPosition]== 1)
      {
        v14 = v12;
        v15 = v13;
      }

      else
      {
        v14 = v13;
        v15 = v12;
      }

      v16 = [v14 stringByAppendingString:v15];
      [(SUUIGiftThemeCollectionViewCell *)self _setPrice:v16];
    }

    v5 = v17;
  }
}

- (void)setItemImage:(id)a3
{
  v4 = a3;
  v5 = [(SUUIGiftThemeCollectionViewCell *)self _itemView];
  [v5 setItemImage:v4];
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  if (self->_theme != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_theme, a3);
    v6 = [(SUUIGiftTheme *)self->_theme headerImage];
    [(SUUIGiftThemeCollectionViewCell *)self _setHeaderImage:v6];

    v7 = [(SUUIGiftTheme *)self->_theme backgroundColor];
    v8 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
    [v8 setBackgroundColor:v7];

    [(UIImageView *)self->_headerImageView setBackgroundColor:v7];
    [(SUUIGiftItemView *)self->_itemView setBackgroundColor:v7];
    [(SUUIGiftItemView *)self->_itemView setTheme:self->_theme];
    [(UILabel *)self->_priceLabel setBackgroundColor:v7];
    priceLabel = self->_priceLabel;
    v10 = [(SUUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)priceLabel setTextColor:v10];

    [(UILabel *)self->_messageLabel setBackgroundColor:v7];
    messageLabel = self->_messageLabel;
    v12 = [(SUUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)messageLabel setTextColor:v12];

    [(UILabel *)self->_senderNameLabel setBackgroundColor:v7];
    senderNameLabel = self->_senderNameLabel;
    v14 = [(SUUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)senderNameLabel setTextColor:v14];

    [(UILabel *)self->_senderNameLabelLabel setBackgroundColor:v7];
    senderNameLabelLabel = self->_senderNameLabelLabel;
    v16 = [(SUUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)senderNameLabelLabel setTextColor:v16];

    v17 = [(SUUIGiftTheme *)v18 themeName];
    [(SUUIGiftThemeCollectionViewCell *)self setAccessibilityLabel:v17];

    [(SUUIGiftThemeCollectionViewCell *)self setIsAccessibilityElement:1];
    [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];

    v5 = v18;
  }
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = SUUIGiftThemeCollectionViewCell;
  [(SUUIGiftThemeCollectionViewCell *)&v53 layoutSubviews];
  v3 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 25.0;
  }

  else
  {
    v10 = 5.0;
  }

  [(SUUIGiftThemeCollectionViewCell *)self bounds];
  v12 = v11;
  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = 50.0;
  if ((v14 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v15 = 10.0;
  }

  v16 = v12 - v15;
  [v3 setFrame:{v10, v5, v16, v7}];
  v17 = [(SUUIGiftThemeCollectionViewCell *)self backgroundView];
  v54.origin.x = v10;
  v54.origin.y = v5;
  v54.size.width = v16;
  v54.size.height = v7;
  v55 = CGRectInset(v54, -4.0, -4.0);
  [v17 setFrame:{v55.origin.x, v55.origin.y, v55.size.width, v55.size.height}];
  [v3 bounds];
  v19 = v18;
  v21 = v20;
  v22 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
  [v22 bounds];
  v24 = v23 * 0.5;
  v25 = (floorf(v24) + -4.0);

  headerImageView = self->_headerImageView;
  if (headerImageView)
  {
    [(UIImageView *)headerImageView frame];
    [(UIImageView *)self->_headerImageView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v19, v25];
  }

  p_itemView = &self->_itemView;
  itemView = self->_itemView;
  if (itemView)
  {
    [(SUUIGiftItemView *)itemView frame];
    [*p_itemView sizeThatFits:{v19 + -25.0 + -25.0, 1.79769313e308}];
    v30 = v29;
    v32 = v31;
    v33 = 25.0;
    v34 = 20.0;
  }

  else
  {
    p_itemView = &self->_priceLabel;
    priceLabel = self->_priceLabel;
    if (!priceLabel)
    {
      goto LABEL_13;
    }

    [(UILabel *)priceLabel frame];
    v30 = v36;
    v32 = v37;
    v38 = (v19 - v36) * 0.5;
    v33 = floorf(v38);
    v34 = 21.0;
  }

  [*p_itemView setFrame:{v33, v25, v30, v32}];
  v56.origin.x = v33;
  v56.origin.y = v25;
  v56.size.width = v30;
  v56.size.height = v32;
  v25 = CGRectGetMaxY(v56) + v34;
LABEL_13:
  v39 = v21 + -16.0;
  if (self->_senderNameLabel)
  {
    [(UILabel *)self->_senderNameLabelLabel frame];
    v41 = v40;
    v43 = v42;
    [(UILabel *)self->_senderNameLabel frame];
    [(UILabel *)self->_senderNameLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v45 = v44;
    *&v46 = (v19 - (v41 + 3.0 + v46)) * 0.5;
    v47 = fmaxf(floorf(*&v46), 25.0);
    [(UILabel *)self->_senderNameLabelLabel setFrame:v47, v39 - v43, v41, v43];
    v57.origin.x = v47;
    v57.origin.y = v39 - v43;
    v57.size.width = v41;
    v57.size.height = v43;
    MaxX = CGRectGetMaxX(v57);
    [(UILabel *)self->_senderNameLabel setFrame:MaxX + 3.0, v39 - v45, v19 + -25.0 - (MaxX + 3.0), v45];
    v39 = v39 - v43 + -15.0;
  }

  messageLabel = self->_messageLabel;
  if (messageLabel)
  {
    [(UILabel *)messageLabel frame];
    [(UILabel *)self->_messageLabel sizeThatFits:v19 + -50.0, v39 - v25];
    if (v51 >= v39 - v25)
    {
      v52 = v39 - v25;
    }

    else
    {
      v52 = v51;
    }

    [(UILabel *)self->_messageLabel setFrame:25.0, v25, v50, v52];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIGiftThemeCollectionViewCell;
  [(SUUIGiftThemeCollectionViewCell *)&v6 setBackgroundColor:a3];
  v4 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
  v5 = [(SUUIGiftTheme *)self->_theme backgroundColor];
  [v4 setBackgroundColor:v5];
}

- (id)_itemView
{
  v3 = [(SUUIGift *)self->_gift item];
  if (v3)
  {
    itemView = self->_itemView;
    if (!itemView)
    {
      v5 = [[SUUIGiftItemView alloc] initWithStyle:1 item:v3 clientContext:0];
      v6 = self->_itemView;
      self->_itemView = v5;

      v7 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
      [v7 addSubview:self->_itemView];

      itemView = self->_itemView;
    }

    v8 = itemView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reloadItemView
{
  v12 = [(SUUIGift *)self->_gift item];
  v3 = [(SUUIGiftThemeCollectionViewCell *)self _itemView];
  v4 = [v12 artistName];
  [v3 setArtistName:v4];

  v5 = [(SUUIGiftTheme *)self->_theme backgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = [v12 categoryName];
  [v3 setCategoryName:v6];

  [v3 setNumberOfUserRatings:{objc_msgSend(v12, "numberOfUserRatings")}];
  v7 = [v12 primaryItemOffer];
  v8 = [v7 buttonText];
  [v3 setPrice:v8];

  [v3 setTheme:self->_theme];
  v9 = [v12 title];
  [v3 setTitle:v9];

  [v12 userRating];
  *&v11 = v10 / 5.0;
  [v3 setUserRating:v11];
  [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
}

- (void)_setHeaderImage:(id)a3
{
  v11 = a3;
  v4 = [(UIImageView *)self->_headerImageView image];

  if (v4 != v11)
  {
    headerImageView = self->_headerImageView;
    if (v11)
    {
      if (!headerImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_headerImageView;
        self->_headerImageView = v7;

        [(UIImageView *)self->_headerImageView setContentMode:1];
        v9 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [v9 addSubview:self->_headerImageView];

        headerImageView = self->_headerImageView;
      }

      [(UIImageView *)headerImageView setImage:?];
      [(UIImageView *)self->_headerImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)headerImageView removeFromSuperview];
      v10 = self->_headerImageView;
      self->_headerImageView = 0;
    }

    v5 = [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)_setMessage:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_messageLabel text];
  if (v4 != v16 && ([v16 isEqualToString:v4] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (v16)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        v9 = [(SUUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        v12 = self->_messageLabel;
        v13 = [(SUUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [v14 addSubview:self->_messageLabel];

        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:?];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v15 = self->_messageLabel;
      self->_messageLabel = 0;
    }

    [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_setPrice:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_priceLabel text];
  if (v4 != v16 && ([v16 isEqualToString:v4] & 1) == 0)
  {
    priceLabel = self->_priceLabel;
    if (v16)
    {
      if (!priceLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_priceLabel;
        self->_priceLabel = v6;

        v8 = self->_priceLabel;
        v9 = [(SUUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_priceLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:35.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_priceLabel;
        v13 = [(SUUIGiftTheme *)self->_theme primaryTextColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [v14 addSubview:self->_priceLabel];

        priceLabel = self->_priceLabel;
      }

      [(UILabel *)priceLabel setText:?];
      [(UILabel *)self->_priceLabel sizeToFit];
    }

    else
    {
      [(UILabel *)priceLabel removeFromSuperview];
      v15 = self->_priceLabel;
      self->_priceLabel = 0;
    }

    [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_setSenderName:(id)a3
{
  v33 = a3;
  v4 = [(UILabel *)self->_senderNameLabel text];
  if (v4 != v33 && ([v33 isEqualToString:v4] & 1) == 0)
  {
    senderNameLabel = self->_senderNameLabel;
    if (v33)
    {
      if (!senderNameLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_senderNameLabel;
        self->_senderNameLabel = v6;

        v8 = self->_senderNameLabel;
        v9 = [(SUUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_senderNameLabel;
        v11 = [MEMORY[0x277D75348] systemRedColor];
        [(UILabel *)v10 setBackgroundColor:v11];

        v12 = self->_senderNameLabel;
        v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_senderNameLabel;
        v15 = [(SUUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v14 setTextColor:v15];

        v16 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [v16 addSubview:self->_senderNameLabel];

        senderNameLabel = self->_senderNameLabel;
      }

      [(UILabel *)senderNameLabel setText:?];
      if (self->_senderNameLabelLabel)
      {
        goto LABEL_13;
      }

      v17 = objc_alloc_init(MEMORY[0x277D756B8]);
      senderNameLabelLabel = self->_senderNameLabelLabel;
      self->_senderNameLabelLabel = v17;

      v19 = self->_senderNameLabelLabel;
      v20 = [(SUUIGiftTheme *)self->_theme backgroundColor];
      [(UILabel *)v19 setBackgroundColor:v20];

      v21 = self->_senderNameLabelLabel;
      v22 = [MEMORY[0x277D75348] systemRedColor];
      [(UILabel *)v21 setBackgroundColor:v22];

      v23 = self->_senderNameLabelLabel;
      v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_senderNameLabelLabel;
      v26 = [(SUUIGiftTheme *)self->_theme primaryTextColor];
      [(UILabel *)v25 setTextColor:v26];

      v27 = self->_senderNameLabelLabel;
      v28 = [(SUUIGiftConfiguration *)self->_giftConfiguration clientContext];
      v29 = v28;
      if (v28)
      {
        [v28 localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inTable:@"Gifting"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inBundles:0 inTable:@"Gifting"];
      }
      v32 = ;
      [(UILabel *)v27 setText:v32];

      [(UILabel *)self->_senderNameLabelLabel sizeToFit];
      v31 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
      [v31 addSubview:self->_senderNameLabelLabel];
    }

    else
    {
      [(UILabel *)senderNameLabel removeFromSuperview];
      v30 = self->_senderNameLabel;
      self->_senderNameLabel = 0;

      [(UILabel *)self->_senderNameLabelLabel removeFromSuperview];
      v31 = self->_senderNameLabelLabel;
      self->_senderNameLabelLabel = 0;
    }

LABEL_13:
    [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

@end