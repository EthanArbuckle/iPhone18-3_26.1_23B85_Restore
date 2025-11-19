@interface SUUIDeveloperInfoView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIDeveloperInfoView)initWithDeveloperInfo:(id)a3 clientContext:(id)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIDeveloperInfoView

- (SUUIDeveloperInfoView)initWithDeveloperInfo:(id)a3 clientContext:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v48.receiver = self;
  v48.super_class = SUUIDeveloperInfoView;
  v9 = [(SUUIDeveloperInfoView *)&v48 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_developerInfo, a3);
    v11 = SUUIUserInterfaceIdiom(v8);
    if (v11 == 1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 15.0;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [v7 tradeName];
    if (v14)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_NAME" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_NAME" inBundles:0 inTable:@"ProductPage"];
      }
      v15 = ;
      v53[0] = v15;
      v53[1] = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      [v13 addObject:v16];
    }

    v17 = [v7 tradeRepresentativeName];

    if (v17)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_REP" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_TRADE_REP" inBundles:0 inTable:@"ProductPage"];
      }
      v18 = ;
      v52[0] = v18;
      v52[1] = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
      [v13 addObject:v19];
    }

    v20 = [v7 formattedAddressString];

    if (v20)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_ADDRESS" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_ADDRESS" inBundles:0 inTable:@"ProductPage"];
      }
      v21 = ;
      v51[0] = v21;
      v51[1] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      [v13 addObject:v22];
    }

    v23 = [v7 phoneNumber];

    if (v23)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_PHONE" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_PHONE" inBundles:0 inTable:@"ProductPage"];
      }
      v24 = ;
      v50[0] = v24;
      v50[1] = v23;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      [v13 addObject:v25];
    }

    v26 = [v7 emailAddress];

    if (v26)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_EMAIL" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_EMAIL" inBundles:0 inTable:@"ProductPage"];
      }
      v27 = ;
      v49[0] = v27;
      v49[1] = v26;
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
      v32 = [MEMORY[0x277D759A0] mainScreen];
      [v32 scale];
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

    v41 = [v7 ECommerceRegistrationIdentifier];
    if (v41)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_ECOMMERCE_REGISTRATION_ID" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_ECOMMERCE_REGISTRATION_ID" inBundles:0 inTable:@"ProductPage"];
      }
      v42 = ;
      v43 = [[SUUIDeveloperInfoLineItemView alloc] initWithLabel:v42 value:v41];
      [(SUUIDeveloperInfoLineItemView *)v43 setContentInset:11.0, v12, 11.0, 15.0];
      [(NSMutableArray *)v10->_lineViews addObject:v43];
      [(SUUIDeveloperInfoView *)v10 addSubview:v43];
    }

    v44 = [v7 businessRegistrationIdentifier];

    if (v44)
    {
      if (v8)
      {
        [v8 localizedStringForKey:@"DEVELOPER_INFO_LABEL_BUSINESS_REGISTRATION_ID" inTable:@"ProductPage"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DEVELOPER_INFO_LABEL_BUSINESS_REGISTRATION_ID" inBundles:0 inTable:@"ProductPage"];
      }
      v45 = ;
      v46 = [[SUUIDeveloperInfoLineItemView alloc] initWithLabel:v45 value:v44];
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

- (void)setBackgroundColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SUUIProductInformationView *)self->_infoView setBackgroundColor:v4];
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

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:v4];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUUIDeveloperInfoView;
  [(SUUIDeveloperInfoView *)&v10 setBackgroundColor:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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