@interface SUUIDeveloperInfoView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIDeveloperInfoView)initWithDeveloperInfo:(id)info clientContext:(id)context;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIDeveloperInfoView

- (SUUIDeveloperInfoView)initWithDeveloperInfo:(id)info clientContext:(id)context
{
  v53[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  contextCopy = context;
  v48.receiver = self;
  v48.super_class = SUUIDeveloperInfoView;
  v9 = [(SUUIDeveloperInfoView *)&v48 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_developerInfo, info);
    v11 = SUUIUserInterfaceIdiom(contextCopy);
    if (v11 == 1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 15.0;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tradeName = [infoCopy tradeName];
    if (tradeName)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_NAME" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_NAME" inBundles:0 inTable:@"ProductPage"];
      }
      v15 = ;
      v53[0] = v15;
      v53[1] = tradeName;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      [v13 addObject:v16];
    }

    tradeRepresentativeName = [infoCopy tradeRepresentativeName];

    if (tradeRepresentativeName)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_REP" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_REP" inBundles:0 inTable:@"ProductPage"];
      }
      v18 = ;
      v52[0] = v18;
      v52[1] = tradeRepresentativeName;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
      [v13 addObject:v19];
    }

    formattedAddressString = [infoCopy formattedAddressString];

    if (formattedAddressString)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_ADDRESS" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_ADDRESS" inBundles:0 inTable:@"ProductPage"];
      }
      v21 = ;
      v51[0] = v21;
      v51[1] = formattedAddressString;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      [v13 addObject:v22];
    }

    phoneNumber = [infoCopy phoneNumber];

    if (phoneNumber)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_PHONE" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_PHONE" inBundles:0 inTable:@"ProductPage"];
      }
      v24 = ;
      v50[0] = v24;
      v50[1] = phoneNumber;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      [v13 addObject:v25];
    }

    emailAddress = [infoCopy emailAddress];

    if (emailAddress)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_EMAIL" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_EMAIL" inBundles:0 inTable:@"ProductPage"];
      }
      v27 = ;
      v49[0] = v27;
      v49[1] = emailAddress;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
      [v13 addObject:v28];
    }

    if ([v13 count])
    {
      v29 = objc_alloc_init(SUUIProductInformationView);
      infoView = v10->_infoView;
      v10->_infoView = v29;

      v31 = 15.0;
      if (v11 == 1)
      {
        v31 = 0.0;
      }

      [(SUUIProductInformationView *)v10->_infoView setContentInset:v31, v31, 17.0, 15.0];
      [(SUUIProductInformationView *)v10->_infoView setHidesSeparatorView:1];
      [(SUUIProductInformationView *)v10->_infoView setInformationLines:v13];
      [(SUUIDeveloperInfoView *)v10 addSubview:v10->_infoView];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v34 = 1.0 / v33;

      v35 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v12, 0.0, 0.0, v34}];
      infoSeparatorView = v10->_infoSeparatorView;
      v10->_infoSeparatorView = v35;

      v37 = v10->_infoSeparatorView;
      v38 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v37 setBackgroundColor:v38];

      [(SUUIDeveloperInfoView *)v10 addSubview:v10->_infoSeparatorView];
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lineViews = v10->_lineViews;
    v10->_lineViews = v39;

    eCommerceRegistrationIdentifier = [infoCopy ECommerceRegistrationIdentifier];
    if (eCommerceRegistrationIdentifier)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_ECOMMERCE_REGISTRATION_ID" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_ECOMMERCE_REGISTRATION_ID" inBundles:0 inTable:@"ProductPage"];
      }
      v42 = ;
      v43 = [[SUUIDeveloperInfoLineItemView alloc] initWithLabel:v42 value:eCommerceRegistrationIdentifier];
      [(SUUIDeveloperInfoLineItemView *)v43 setContentInset:11.0, v12, 11.0, 15.0];
      [(NSMutableArray *)v10->_lineViews addObject:v43];
      [(SUUIDeveloperInfoView *)v10 addSubview:v43];
    }

    businessRegistrationIdentifier = [infoCopy businessRegistrationIdentifier];

    if (businessRegistrationIdentifier)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"DEVELOPER_INFO_LABEL_BUSINESS_REGISTRATION_ID" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_BUSINESS_REGISTRATION_ID" inBundles:0 inTable:@"ProductPage"];
      }
      v45 = ;
      v46 = [[SUUIDeveloperInfoLineItemView alloc] initWithLabel:v45 value:businessRegistrationIdentifier];
      [(SUUIDeveloperInfoLineItemView *)v46 setContentInset:11.0, v12, 11.0, 15.0];
      [(NSMutableArray *)v10->_lineViews addObject:v46];
      [(SUUIDeveloperInfoView *)v10 addSubview:v46];
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  v34 = *MEMORY[0x277D85DE8];
  [(SUUIDeveloperInfoView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(SUUIProductInformationView *)self->_infoView frame];
  v8 = v7;
  [(SUUIProductInformationView *)self->_infoView sizeThatFits:v4, v6];
  v10 = v9;
  v12 = v11;
  *&v9 = (v4 - v9) * 0.5;
  v13 = floorf(*&v9);
  [(SUUIProductInformationView *)self->_infoView setFrame:v13, v8, v10, v11];
  v35.origin.x = v13;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  MaxY = CGRectGetMaxY(v35);
  [(UIView *)self->_infoSeparatorView frame];
  [(UIView *)self->_infoSeparatorView setFrame:v16, MaxY - v15, v4 - v16];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = self->_lineViews;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        [v22 frame];
        v24 = v23;
        [v22 sizeThatFits:{v4, v6}];
        v26 = v25;
        v28 = v27;
        [v22 setFrame:{v24, MaxY, v25, v27}];
        v36.origin.x = v24;
        v36.origin.y = MaxY;
        v36.size.width = v26;
        v36.size.height = v28;
        MaxY = CGRectGetMaxY(v36);
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }
}

- (void)setBackgroundColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  [(SUUIProductInformationView *)self->_infoView setBackgroundColor:colorCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_lineViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:colorCopy];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUUIDeveloperInfoView;
  [(SUUIDeveloperInfoView *)&v10 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v23 = *MEMORY[0x277D85DE8];
  [(SUUIProductInformationView *)self->_infoView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_lineViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v18 + 1) + 8 * v14) sizeThatFits:{width, height, v18}];
        v9 = v9 + v15;
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = v7;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

@end