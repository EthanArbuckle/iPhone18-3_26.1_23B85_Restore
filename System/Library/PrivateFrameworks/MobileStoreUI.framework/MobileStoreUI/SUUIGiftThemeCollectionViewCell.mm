@interface SUUIGiftThemeCollectionViewCell
- (UIImage)itemImage;
- (id)_itemView;
- (void)_reloadItemView;
- (void)_setHeaderImage:(id)image;
- (void)_setMessage:(id)message;
- (void)_setPrice:(id)price;
- (void)_setSenderName:(id)name;
- (void)layoutSubviews;
- (void)reloadThemeHeaderImage;
- (void)setBackgroundColor:(id)color;
- (void)setGift:(id)gift;
- (void)setItemImage:(id)image;
- (void)setTheme:(id)theme;
@end

@implementation SUUIGiftThemeCollectionViewCell

- (UIImage)itemImage
{
  _itemView = [(SUUIGiftThemeCollectionViewCell *)self _itemView];
  itemImage = [_itemView itemImage];

  return itemImage;
}

- (void)reloadThemeHeaderImage
{
  theme = self->_theme;
  if (theme)
  {
    headerImage = [(SUUIGiftTheme *)theme headerImage];
    [(SUUIGiftThemeCollectionViewCell *)self _setHeaderImage:headerImage];
  }
}

- (void)setGift:(id)gift
{
  giftCopy = gift;
  if (self->_gift != giftCopy)
  {
    v17 = giftCopy;
    objc_storeStrong(&self->_gift, gift);
    message = [(SUUIGift *)self->_gift message];
    [(SUUIGiftThemeCollectionViewCell *)self _setMessage:message];

    senderName = [(SUUIGift *)self->_gift senderName];
    [(SUUIGiftThemeCollectionViewCell *)self _setSenderName:senderName];

    item = [(SUUIGift *)self->_gift item];

    if (item)
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

      currencySymbol = [(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbol];
      if ([(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbolPosition]== 1)
      {
        v14 = v12;
        v15 = currencySymbol;
      }

      else
      {
        v14 = currencySymbol;
        v15 = v12;
      }

      v16 = [v14 stringByAppendingString:v15];
      [(SUUIGiftThemeCollectionViewCell *)self _setPrice:v16];
    }

    giftCopy = v17;
  }
}

- (void)setItemImage:(id)image
{
  imageCopy = image;
  _itemView = [(SUUIGiftThemeCollectionViewCell *)self _itemView];
  [_itemView setItemImage:imageCopy];
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (self->_theme != themeCopy)
  {
    v18 = themeCopy;
    objc_storeStrong(&self->_theme, theme);
    headerImage = [(SUUIGiftTheme *)self->_theme headerImage];
    [(SUUIGiftThemeCollectionViewCell *)self _setHeaderImage:headerImage];

    backgroundColor = [(SUUIGiftTheme *)self->_theme backgroundColor];
    contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
    [contentView setBackgroundColor:backgroundColor];

    [(UIImageView *)self->_headerImageView setBackgroundColor:backgroundColor];
    [(SUUIGiftItemView *)self->_itemView setBackgroundColor:backgroundColor];
    [(SUUIGiftItemView *)self->_itemView setTheme:self->_theme];
    [(UILabel *)self->_priceLabel setBackgroundColor:backgroundColor];
    priceLabel = self->_priceLabel;
    primaryTextColor = [(SUUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)priceLabel setTextColor:primaryTextColor];

    [(UILabel *)self->_messageLabel setBackgroundColor:backgroundColor];
    messageLabel = self->_messageLabel;
    bodyTextColor = [(SUUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)messageLabel setTextColor:bodyTextColor];

    [(UILabel *)self->_senderNameLabel setBackgroundColor:backgroundColor];
    senderNameLabel = self->_senderNameLabel;
    bodyTextColor2 = [(SUUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)senderNameLabel setTextColor:bodyTextColor2];

    [(UILabel *)self->_senderNameLabelLabel setBackgroundColor:backgroundColor];
    senderNameLabelLabel = self->_senderNameLabelLabel;
    primaryTextColor2 = [(SUUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)senderNameLabelLabel setTextColor:primaryTextColor2];

    themeName = [(SUUIGiftTheme *)v18 themeName];
    [(SUUIGiftThemeCollectionViewCell *)self setAccessibilityLabel:themeName];

    [(SUUIGiftThemeCollectionViewCell *)self setIsAccessibilityElement:1];
    [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];

    themeCopy = v18;
  }
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = SUUIGiftThemeCollectionViewCell;
  [(SUUIGiftThemeCollectionViewCell *)&v53 layoutSubviews];
  contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 25.0;
  }

  else
  {
    v10 = 5.0;
  }

  [(SUUIGiftThemeCollectionViewCell *)self bounds];
  v12 = v11;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v15 = 50.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v15 = 10.0;
  }

  v16 = v12 - v15;
  [contentView setFrame:{v10, v5, v16, v7}];
  backgroundView = [(SUUIGiftThemeCollectionViewCell *)self backgroundView];
  v54.origin.x = v10;
  v54.origin.y = v5;
  v54.size.width = v16;
  v54.size.height = v7;
  v55 = CGRectInset(v54, -4.0, -4.0);
  [backgroundView setFrame:{v55.origin.x, v55.origin.y, v55.size.width, v55.size.height}];
  [contentView bounds];
  v19 = v18;
  v21 = v20;
  contentView2 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
  [contentView2 bounds];
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

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SUUIGiftThemeCollectionViewCell;
  [(SUUIGiftThemeCollectionViewCell *)&v6 setBackgroundColor:color];
  contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
  backgroundColor = [(SUUIGiftTheme *)self->_theme backgroundColor];
  [contentView setBackgroundColor:backgroundColor];
}

- (id)_itemView
{
  item = [(SUUIGift *)self->_gift item];
  if (item)
  {
    itemView = self->_itemView;
    if (!itemView)
    {
      v5 = [[SUUIGiftItemView alloc] initWithStyle:1 item:item clientContext:0];
      v6 = self->_itemView;
      self->_itemView = v5;

      contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
      [contentView addSubview:self->_itemView];

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
  item = [(SUUIGift *)self->_gift item];
  _itemView = [(SUUIGiftThemeCollectionViewCell *)self _itemView];
  artistName = [item artistName];
  [_itemView setArtistName:artistName];

  backgroundColor = [(SUUIGiftTheme *)self->_theme backgroundColor];
  [_itemView setBackgroundColor:backgroundColor];

  categoryName = [item categoryName];
  [_itemView setCategoryName:categoryName];

  [_itemView setNumberOfUserRatings:{objc_msgSend(item, "numberOfUserRatings")}];
  primaryItemOffer = [item primaryItemOffer];
  buttonText = [primaryItemOffer buttonText];
  [_itemView setPrice:buttonText];

  [_itemView setTheme:self->_theme];
  title = [item title];
  [_itemView setTitle:title];

  [item userRating];
  *&v11 = v10 / 5.0;
  [_itemView setUserRating:v11];
  [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
}

- (void)_setHeaderImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_headerImageView image];

  if (image != imageCopy)
  {
    headerImageView = self->_headerImageView;
    if (imageCopy)
    {
      if (!headerImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_headerImageView;
        self->_headerImageView = v7;

        [(UIImageView *)self->_headerImageView setContentMode:1];
        contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_headerImageView];

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

    setNeedsLayout = [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)_setMessage:(id)message
{
  messageCopy = message;
  text = [(UILabel *)self->_messageLabel text];
  if (text != messageCopy && ([messageCopy isEqualToString:text] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (messageCopy)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        backgroundColor = [(SUUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        v12 = self->_messageLabel;
        bodyTextColor = [(SUUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v12 setTextColor:bodyTextColor];

        contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_messageLabel];

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

- (void)_setPrice:(id)price
{
  priceCopy = price;
  text = [(UILabel *)self->_priceLabel text];
  if (text != priceCopy && ([priceCopy isEqualToString:text] & 1) == 0)
  {
    priceLabel = self->_priceLabel;
    if (priceCopy)
    {
      if (!priceLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_priceLabel;
        self->_priceLabel = v6;

        v8 = self->_priceLabel;
        backgroundColor = [(SUUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_priceLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:35.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_priceLabel;
        primaryTextColor = [(SUUIGiftTheme *)self->_theme primaryTextColor];
        [(UILabel *)v12 setTextColor:primaryTextColor];

        contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_priceLabel];

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

- (void)_setSenderName:(id)name
{
  nameCopy = name;
  text = [(UILabel *)self->_senderNameLabel text];
  if (text != nameCopy && ([nameCopy isEqualToString:text] & 1) == 0)
  {
    senderNameLabel = self->_senderNameLabel;
    if (nameCopy)
    {
      if (!senderNameLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_senderNameLabel;
        self->_senderNameLabel = v6;

        v8 = self->_senderNameLabel;
        backgroundColor = [(SUUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_senderNameLabel;
        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        [(UILabel *)v10 setBackgroundColor:systemRedColor];

        v12 = self->_senderNameLabel;
        v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_senderNameLabel;
        bodyTextColor = [(SUUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v14 setTextColor:bodyTextColor];

        contentView = [(SUUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_senderNameLabel];

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
      backgroundColor2 = [(SUUIGiftTheme *)self->_theme backgroundColor];
      [(UILabel *)v19 setBackgroundColor:backgroundColor2];

      v21 = self->_senderNameLabelLabel;
      systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
      [(UILabel *)v21 setBackgroundColor:systemRedColor2];

      v23 = self->_senderNameLabelLabel;
      v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_senderNameLabelLabel;
      primaryTextColor = [(SUUIGiftTheme *)self->_theme primaryTextColor];
      [(UILabel *)v25 setTextColor:primaryTextColor];

      v27 = self->_senderNameLabelLabel;
      clientContext = [(SUUIGiftConfiguration *)self->_giftConfiguration clientContext];
      v29 = clientContext;
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inTable:@"Gifting"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inBundles:0 inTable:@"Gifting"];
      }
      v32 = ;
      [(UILabel *)v27 setText:v32];

      [(UILabel *)self->_senderNameLabelLabel sizeToFit];
      contentView2 = [(SUUIGiftThemeCollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_senderNameLabelLabel];
    }

    else
    {
      [(UILabel *)senderNameLabel removeFromSuperview];
      v30 = self->_senderNameLabel;
      self->_senderNameLabel = 0;

      [(UILabel *)self->_senderNameLabelLabel removeFromSuperview];
      contentView2 = self->_senderNameLabelLabel;
      self->_senderNameLabelLabel = 0;
    }

LABEL_13:
    [(SUUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

@end