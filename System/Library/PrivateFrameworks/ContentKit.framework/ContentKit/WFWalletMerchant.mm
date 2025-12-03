@interface WFWalletMerchant
- (BOOL)isEqual:(id)equal;
- (WFWalletMerchant)initWithCoder:(id)coder;
- (WFWalletMerchant)initWithDisplayName:(id)name uniqueIdentifier:(id)identifier logoURL:(id)l merchantType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWalletMerchant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      uniqueIdentifier = [(WFWalletMerchant *)self uniqueIdentifier];
      uniqueIdentifier2 = [(WFWalletMerchant *)v6 uniqueIdentifier];
      v9 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (WFWalletMerchant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = WFWalletMerchant;
  v5 = [(WFWalletMerchant *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoURL"];
    logoURL = v5->_logoURL;
    v5->_logoURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantType"];
    v5->_merchantType = [v12 unsignedIntegerValue];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(WFWalletMerchant *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  uniqueIdentifier = [(WFWalletMerchant *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  logoURL = [(WFWalletMerchant *)self logoURL];
  [coderCopy encodeObject:logoURL forKey:@"logoURL"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFWalletMerchant merchantType](self, "merchantType")}];
  [coderCopy encodeObject:v8 forKey:@"merchantType"];
}

- (WFWalletMerchant)initWithDisplayName:(id)name uniqueIdentifier:(id)identifier logoURL:(id)l merchantType:(unint64_t)type
{
  nameCopy = name;
  identifierCopy = identifier;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = WFWalletMerchant;
  v13 = [(WFWalletMerchant *)&v22 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    displayName = v13->_displayName;
    v13->_displayName = v14;

    v16 = [identifierCopy copy];
    uniqueIdentifier = v13->_uniqueIdentifier;
    v13->_uniqueIdentifier = v16;

    v18 = [lCopy copy];
    logoURL = v13->_logoURL;
    v13->_logoURL = v18;

    v13->_merchantType = type;
    v20 = v13;
  }

  return v13;
}

@end