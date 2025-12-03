@interface PKIssuerProvisioningExtensionPaymentPassEntry
- (PKIssuerProvisioningExtensionPaymentPassEntry)initWithCoder:(id)coder;
- (PKIssuerProvisioningExtensionPaymentPassEntry)initWithIdentifier:(NSString *)identifier title:(NSString *)title art:(CGImageRef)art addRequestConfiguration:(PKAddPaymentPassRequestConfiguration *)configuration;
- (id)_initWithType:(int64_t)type identifier:(id)identifier title:(id)title art:(CGImage *)art;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIssuerProvisioningExtensionPaymentPassEntry

- (id)_initWithType:(int64_t)type identifier:(id)identifier title:(id)title art:(CGImage *)art
{
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKIssuerProvisioningExtensionPaymentPassEntry: invalid initializer.", v9, 2u);
  }

  return 0;
}

- (PKIssuerProvisioningExtensionPaymentPassEntry)initWithIdentifier:(NSString *)identifier title:(NSString *)title art:(CGImageRef)art addRequestConfiguration:(PKAddPaymentPassRequestConfiguration *)configuration
{
  v10 = identifier;
  v11 = title;
  v12 = configuration;
  v13 = v12;
  if (!v12)
  {
    v18 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "PKIssuerProvisioningExtensionPaymentPassEntry: initializer missing required parameters.";
LABEL_10:
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  cardholderName = [(PKAddPaymentPassRequestConfiguration *)v12 cardholderName];
  if (!cardholderName)
  {
    cardholderName = [(PKAddPaymentPassRequestConfiguration *)v13 primaryAccountSuffix];
    if (!cardholderName)
    {
      cardDetails = [(PKAddPaymentPassRequestConfiguration *)v13 cardDetails];
      v22 = [cardDetails count];

      if (v22)
      {
        goto LABEL_5;
      }

      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "PKIssuerProvisioningExtensionPaymentPassEntry: configuration missing card details.";
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

LABEL_5:
  v23.receiver = self;
  v23.super_class = PKIssuerProvisioningExtensionPaymentPassEntry;
  v15 = [(PKIssuerProvisioningExtensionPassEntry *)&v23 _initWithType:1 identifier:v10 title:v11 art:art];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 5, configuration);
  }

  self = v16;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (PKIssuerProvisioningExtensionPaymentPassEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKIssuerProvisioningExtensionPaymentPassEntry;
  v5 = [(PKIssuerProvisioningExtensionPassEntry *)&v10 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PKIssuerProvisioningExtensionPassEntry *)v5 setType:1];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addRequestConfiguration"];
    addRequestConfiguration = v6->_addRequestConfiguration;
    v6->_addRequestConfiguration = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKIssuerProvisioningExtensionPaymentPassEntry;
  coderCopy = coder;
  [(PKIssuerProvisioningExtensionPassEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_addRequestConfiguration forKey:{@"addRequestConfiguration", v5.receiver, v5.super_class}];
}

@end