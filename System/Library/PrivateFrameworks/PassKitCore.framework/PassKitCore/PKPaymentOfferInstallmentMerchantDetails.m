@interface PKPaymentOfferInstallmentMerchantDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferInstallmentMerchantDetails)initWithCoder:(id)a3;
- (PKPaymentOfferInstallmentMerchantDetails)initWithDictionary:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferInstallmentMerchantDetails

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentOfferInstallmentMerchantDetails;
  return [(PKPaymentOfferInstallmentMerchantDetails *)&v3 init];
}

- (PKPaymentOfferInstallmentMerchantDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferInstallmentMerchantDetails;
  v5 = [(PKPaymentOfferInstallmentMerchantDetails *)&v13 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v6;

    v8 = [PKPaymentOfferDynamicContentIcon alloc];
    v9 = [v4 PKDictionaryForKey:@"icon"];
    v10 = [(PKPaymentOfferDynamicContentIcon *)v8 initWithDictionary:v9];
    icon = v5->_icon;
    v5->_icon = v10;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_merchantName forKeyedSubscript:@"merchantName"];
  v4 = [(PKPaymentOfferDynamicContentIcon *)self->_icon dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"icon"];

  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        merchantName = v6->_merchantName;
        v8 = self->_merchantName;
        v9 = merchantName;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

LABEL_16:
            v12 = 0;
LABEL_18:

            goto LABEL_19;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        icon = self->_icon;
        v14 = v6->_icon;
        if (icon && v14)
        {
          v12 = [(PKPaymentOfferDynamicContentIcon *)icon isEqual:?];
        }

        else
        {
          v12 = icon == v14;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_merchantName];
  [v3 safelyAddObject:self->_icon];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"merchantName: '%@'; ", self->_merchantName];
  [v3 appendFormat:@"icon: '%@'; ", self->_icon];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentMerchantDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferInstallmentMerchantDetails;
  v5 = [(PKPaymentOfferInstallmentMerchantDetails *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantName"];
    merchantName = v5->_merchantName;
    v5->_merchantName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  merchantName = self->_merchantName;
  v5 = a3;
  [v5 encodeObject:merchantName forKey:@"merchantName"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferInstallmentMerchantDetails allocWithZone:](PKPaymentOfferInstallmentMerchantDetails init];
  v6 = [(NSString *)self->_merchantName copyWithZone:a3];
  merchantName = v5->_merchantName;
  v5->_merchantName = v6;

  v8 = [(PKPaymentOfferDynamicContentIcon *)self->_icon copyWithZone:a3];
  icon = v5->_icon;
  v5->_icon = v8;

  return v5;
}

@end