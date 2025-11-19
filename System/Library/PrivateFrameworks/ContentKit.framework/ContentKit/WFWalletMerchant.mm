@interface WFWalletMerchant
- (BOOL)isEqual:(id)a3;
- (WFWalletMerchant)initWithCoder:(id)a3;
- (WFWalletMerchant)initWithDisplayName:(id)a3 uniqueIdentifier:(id)a4 logoURL:(id)a5 merchantType:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWalletMerchant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(WFWalletMerchant *)self uniqueIdentifier];
      v8 = [(WFWalletMerchant *)v6 uniqueIdentifier];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (WFWalletMerchant)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WFWalletMerchant;
  v5 = [(WFWalletMerchant *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoURL"];
    logoURL = v5->_logoURL;
    v5->_logoURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantType"];
    v5->_merchantType = [v12 unsignedIntegerValue];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWalletMerchant *)self displayName];
  [v4 encodeObject:v5 forKey:@"displayName"];

  v6 = [(WFWalletMerchant *)self uniqueIdentifier];
  [v4 encodeObject:v6 forKey:@"uniqueIdentifier"];

  v7 = [(WFWalletMerchant *)self logoURL];
  [v4 encodeObject:v7 forKey:@"logoURL"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFWalletMerchant merchantType](self, "merchantType")}];
  [v4 encodeObject:v8 forKey:@"merchantType"];
}

- (WFWalletMerchant)initWithDisplayName:(id)a3 uniqueIdentifier:(id)a4 logoURL:(id)a5 merchantType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = WFWalletMerchant;
  v13 = [(WFWalletMerchant *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    v16 = [v11 copy];
    uniqueIdentifier = v13->_uniqueIdentifier;
    v13->_uniqueIdentifier = v16;

    v18 = [v12 copy];
    logoURL = v13->_logoURL;
    v13->_logoURL = v18;

    v13->_merchantType = a6;
    v20 = v13;
  }

  return v13;
}

@end