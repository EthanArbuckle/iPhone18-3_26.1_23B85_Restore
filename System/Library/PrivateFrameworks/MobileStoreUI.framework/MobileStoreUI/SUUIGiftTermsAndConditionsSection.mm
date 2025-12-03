@interface SUUIGiftTermsAndConditionsSection
- (id)_headerView;
- (void)_termsAction:(id)action;
@end

@implementation SUUIGiftTermsAndConditionsSection

- (void)_termsAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SUUIMetricsOpenURL(termsAndConditionsURL);
}

- (id)_headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_headerView;
    self->_headerView = v4;

    [(UIView *)self->_headerView setFrame:0.0, 0.0, 60.0, 45.0];
    [(UIView *)self->_headerView bounds];
    v7 = v6;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v10 = [SUUILinkButton alloc];
    if (userInterfaceLayoutDirection)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    v12 = [(SUUILinkButton *)v10 initWithArrowStyle:v11];
    [(SUUILinkButton *)v12 addTarget:self action:sel__termsAction_ forControlEvents:64];
    [(SUUILinkButton *)v12 setAutoresizingMask:5];
    giftConfiguration = [(SUUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    if (SUUIUserInterfaceIdiom(clientContext) == 1)
    {
      if (clientContext)
      {
        v15 = @"GIFTING_TERMS_LINK_IPAD";
LABEL_10:
        v16 = [clientContext localizedStringForKey:v15 inTable:@"Gifting"];
LABEL_14:
        v18 = v16;
        [(SUUILinkButton *)v12 setTitle:v16 forState:0];
        titleLabel = [(SUUILinkButton *)v12 titleLabel];
        v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [titleLabel setFont:v20];

        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [(SUUILinkButton *)v12 setTitleColor:secondaryLabelColor forState:0];

        labelColor = [MEMORY[0x277D75348] labelColor];
        [(SUUILinkButton *)v12 setTitleColor:labelColor forState:1];

        [(SUUILinkButton *)v12 sizeToFit];
        [(SUUILinkButton *)v12 frame];
        [(SUUILinkButton *)v12 setFrame:floor((v7 - v23) * 0.5), 25.0];
        [(UIView *)self->_headerView addSubview:v12];

        headerView = self->_headerView;
        goto LABEL_15;
      }

      v17 = @"GIFTING_TERMS_LINK_IPAD";
    }

    else
    {
      if (clientContext)
      {
        v15 = @"GIFTING_TERMS_LINK_IPHONE";
        goto LABEL_10;
      }

      v17 = @"GIFTING_TERMS_LINK_IPHONE";
    }

    v16 = [SUUIClientContext localizedStringForKey:v17 inBundles:0 inTable:@"Gifting"];
    goto LABEL_14;
  }

LABEL_15:

  return headerView;
}

@end