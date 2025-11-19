@interface SUUIRedeem
- (SUUIRedeem)init;
- (SUUIRedeem)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIRedeem

- (SUUIRedeem)init
{
  v5.receiver = self;
  v5.super_class = SUUIRedeem;
  v2 = [(SUUIRedeem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUUIRedeem *)v2 setITunesPassLearnMoreAlertInterval:-1.0];
  }

  return v3;
}

- (SUUIRedeem)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SUUIRedeem;
  v5 = [(SUUIRedeem *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"items"];
    items = v5->_items;
    v5->_items = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloads"];
    downloads = v5->_downloads;
    v5->_downloads = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inAppPurchase"];
    inAppPurchase = v5->_inAppPurchase;
    v5->_inAppPurchase = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credit"];
    credit = v5->_credit;
    v5->_credit = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creditDisplay"];
    creditDisplay = v5->_creditDisplay;
    v5->_creditDisplay = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thankYouDictionary"];
    thankYouDictionary = v5->_thankYouDictionary;
    v5->_thankYouDictionary = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redirectURL"];
    redirectURL = v5->_redirectURL;
    v5->_redirectURL = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customizedThankyouURL"];
    customizedThankyouURL = v5->_customizedThankyouURL;
    v5->_customizedThankyouURL = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerImage"];
    headerImage = v5->_headerImage;
    v5->_headerImage = v24;

    v26 = [v4 decodeObjectForKey:@"headerArtworkProvider"];
    headerArtworkProvider = v5->_headerArtworkProvider;
    v5->_headerArtworkProvider = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"links"];
    links = v5->_links;
    v5->_links = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  items = self->_items;
  v5 = a3;
  [v5 encodeObject:items forKey:@"items"];
  [v5 encodeObject:self->_downloads forKey:@"downloads"];
  [v5 encodeObject:self->_inAppPurchase forKey:@"inAppPurchase"];
  [v5 encodeObject:self->_credit forKey:@"credit"];
  [v5 encodeObject:self->_creditDisplay forKey:@"creditDisplay"];
  [v5 encodeObject:self->_balance forKey:@"balance"];
  [v5 encodeObject:self->_thankYouDictionary forKey:@"thankYouDictionary"];
  [v5 encodeObject:self->_redirectURL forKey:@"redirectURL"];
  [v5 encodeObject:self->_customizedThankyouURL forKey:@"customizedThankyouURL"];
  [v5 encodeObject:self->_headerImage forKey:@"headerImage"];
  [v5 encodeObject:self->_headerArtworkProvider forKey:@"headerArtworkProvider"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeObject:self->_links forKey:@"links"];
  [v5 encodeBool:self->_hideItemView forKey:@"hideItemView"];
}

@end