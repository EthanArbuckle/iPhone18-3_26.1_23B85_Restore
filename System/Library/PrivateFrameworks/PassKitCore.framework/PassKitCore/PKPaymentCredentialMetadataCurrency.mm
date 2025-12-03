@interface PKPaymentCredentialMetadataCurrency
- (BOOL)_isEqualToMetadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (PKPaymentCredentialMetadataCurrency)initWithConfiguration:(id)configuration;
- (id)displayString;
- (unint64_t)hash;
@end

@implementation PKPaymentCredentialMetadataCurrency

- (PKPaymentCredentialMetadataCurrency)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKPaymentCredentialMetadataCurrency;
  v5 = [(PKPaymentCredentialMetadata *)&v11 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = [configurationCopy objectForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    if (!v5->_currencyCode)
    {

      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "No currency code in configuration could not create metadata", v10, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)displayString
{
  v3 = MEMORY[0x1E696AD98];
  value = [(PKPaymentCredentialMetadata *)self value];
  [value doubleValue];
  v5 = [v3 numberWithDouble:?];
  currencyCode = [(PKPaymentCredentialMetadataCurrency *)self currencyCode];
  v7 = PKFormattedCurrencyStringFromNumber(v5, currencyCode);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentCredentialMetadataCurrency *)self _isEqualToMetadata:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = PKPaymentCredentialMetadataCurrency;
  if ([(PKPaymentCredentialMetadata *)&v12 _isEqualToMetadata:metadataCopy])
  {
    v5 = metadataCopy[3];
    v6 = self->_currencyCode;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(NSString *)v6 isEqualToString:v7];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_currencyCode];
  v7.receiver = self;
  v7.super_class = PKPaymentCredentialMetadataCurrency;
  v4 = [(PKPaymentCredentialMetadata *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

@end