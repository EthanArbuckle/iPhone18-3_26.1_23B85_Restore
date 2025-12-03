@interface PKPaymentValidationCacheKey
- (BOOL)isEqual:(id)equal;
- (PKPaymentValidationCacheKey)initWithNetworks:(id)networks issuerCountryCodes:(id)codes capabilities:(unint64_t)capabilities webDomain:(id)domain paymentRequestType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPaymentValidationCacheKey

- (PKPaymentValidationCacheKey)initWithNetworks:(id)networks issuerCountryCodes:(id)codes capabilities:(unint64_t)capabilities webDomain:(id)domain paymentRequestType:(id)type
{
  networksCopy = networks;
  codesCopy = codes;
  domainCopy = domain;
  typeCopy = type;
  v31.receiver = self;
  v31.super_class = PKPaymentValidationCacheKey;
  v16 = [(PKPaymentValidationCacheKey *)&v31 init];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    if (networksCopy)
    {
      v18 = networksCopy;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = [MEMORY[0x1E695DFD8] setWithArray:v18];
    v20 = [v17 initWithSet:v19 copyItems:1];
    supportedNetworks = v16->_supportedNetworks;
    v16->_supportedNetworks = v20;

    v16->_merchantCapabilities = capabilities;
    v22 = [codesCopy copy];
    issuerCountryCodes = v16->_issuerCountryCodes;
    v16->_issuerCountryCodes = v22;

    if (codesCopy)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:codesCopy copyItems:1];
      v25 = v16->_issuerCountryCodes;
      v16->_issuerCountryCodes = v24;
    }

    v26 = [domainCopy copy];
    webDomain = v16->_webDomain;
    v16->_webDomain = v26;

    v28 = [typeCopy copy];
    paymentRequestType = v16->_paymentRequestType;
    v16->_paymentRequestType = v28;
  }

  return v16;
}

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
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        supportedNetworks = self->_supportedNetworks;
        v8 = v6->_supportedNetworks;
        if (supportedNetworks && v8)
        {
          if (([(NSSet *)supportedNetworks isEqual:?]& 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (supportedNetworks != v8)
        {
          goto LABEL_24;
        }

        if (self->_merchantCapabilities == v6->_merchantCapabilities)
        {
          issuerCountryCodes = self->_issuerCountryCodes;
          v11 = v6->_issuerCountryCodes;
          if (issuerCountryCodes && v11)
          {
            if (([(NSSet *)issuerCountryCodes isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (issuerCountryCodes != v11)
          {
            goto LABEL_24;
          }

          webDomain = self->_webDomain;
          v13 = v6->_webDomain;
          if (webDomain && v13)
          {
            if (([(NSString *)webDomain isEqual:?]& 1) != 0)
            {
LABEL_20:
              paymentRequestType = self->_paymentRequestType;
              v15 = v6->_paymentRequestType;
              if (paymentRequestType && v15)
              {
                v9 = [(NSNumber *)paymentRequestType isEqual:?];
              }

              else
              {
                v9 = paymentRequestType == v15;
              }

              goto LABEL_25;
            }
          }

          else if (webDomain == v13)
          {
            goto LABEL_20;
          }
        }

LABEL_24:
        v9 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v9 = 0;
  }

LABEL_26:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_supportedNetworks];
  [v3 safelyAddObject:self->_issuerCountryCodes];
  [v3 safelyAddObject:self->_webDomain];
  [v3 safelyAddObject:self->_paymentRequestType];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_merchantCapabilities - v4 + 32 * v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSSet *)self->_supportedNetworks copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_merchantCapabilities;
  v8 = [(NSSet *)self->_issuerCountryCodes copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_webDomain copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSNumber *)self->_paymentRequestType copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"hash: '%ld'; ", -[PKPaymentValidationCacheKey hash](self, "hash")];
  [v3 appendFormat:@">"];

  return v3;
}

@end