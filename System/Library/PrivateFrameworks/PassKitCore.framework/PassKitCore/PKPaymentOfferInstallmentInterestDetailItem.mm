@interface PKPaymentOfferInstallmentInterestDetailItem
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferInstallmentInterestDetailItem)initWithCoder:(id)coder;
- (PKPaymentOfferInstallmentInterestDetailItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferInstallmentInterestDetailItem

- (PKPaymentOfferInstallmentInterestDetailItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKPaymentOfferInstallmentInterestDetailItem;
  v5 = [(PKPaymentOfferInstallmentInterestDetailItem *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v7 = v6;
    if (v6 != @"apr")
    {
      if (v6)
      {
        v8 = [(__CFString *)v6 isEqualToString:@"apr"];

        if (v8)
        {
          goto LABEL_5;
        }

        v10 = v7;
        if (v10 == @"pa" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"pa"], v11, v12))
        {
          v9 = 2;
          goto LABEL_10;
        }
      }

      v9 = 0;
      goto LABEL_10;
    }

LABEL_5:
    v9 = 1;
LABEL_10:

    v5->_type = v9;
    v13 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestPercentage"];
    interestPercentage = v5->_interestPercentage;
    v5->_interestPercentage = v13;

    v15 = [dictionaryCopy PKCurrencyAmountForKey:@"totalInterest"];
    totalInterest = v5->_totalInterest;
    v5->_totalInterest = v15;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  type = self->_type;
  v6 = @"unknown";
  if (type == 1)
  {
    v6 = @"apr";
  }

  if (type == 2)
  {
    v7 = @"pa";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"type"];
  stringValue = [(NSDecimalNumber *)self->_interestPercentage stringValue];
  [v4 setObject:stringValue forKeyedSubscript:@"interestPercentage"];

  dictionaryRepresentation = [(PKCurrencyAmount *)self->_totalInterest dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"totalInterest"];

  v10 = [v4 copy];

  return v10;
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
        interestPercentage = self->_interestPercentage;
        v8 = v6->_interestPercentage;
        if (interestPercentage && v8)
        {
          if (([(NSDecimalNumber *)interestPercentage isEqual:?]& 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (interestPercentage != v8)
        {
          goto LABEL_16;
        }

        totalInterest = self->_totalInterest;
        v11 = v6->_totalInterest;
        if (totalInterest && v11)
        {
          if ([(PKCurrencyAmount *)totalInterest isEqual:?])
          {
LABEL_14:
            v9 = self->_type == v6->_type;
LABEL_17:

            goto LABEL_18;
          }
        }

        else if (totalInterest == v11)
        {
          goto LABEL_14;
        }

LABEL_16:
        v9 = 0;
        goto LABEL_17;
      }
    }

    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_interestPercentage];
  [v3 safelyAddObject:self->_totalInterest];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  type = self->_type;
  v5 = @"unknown";
  if (type == 1)
  {
    v5 = @"apr";
  }

  if (type == 2)
  {
    v6 = @"pa";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v3 appendFormat:@"interestPercentage: '%@'; ", self->_interestPercentage];
  [v3 appendFormat:@"totalInterest: '%@'; ", self->_totalInterest];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentInterestDetailItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferInstallmentInterestDetailItem;
  v5 = [(PKPaymentOfferInstallmentInterestDetailItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestPercentage"];
    interestPercentage = v5->_interestPercentage;
    v5->_interestPercentage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalInterest"];
    totalInterest = v5->_totalInterest;
    v5->_totalInterest = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  interestPercentage = self->_interestPercentage;
  coderCopy = coder;
  [coderCopy encodeObject:interestPercentage forKey:@"interestPercentage"];
  [coderCopy encodeObject:self->_totalInterest forKey:@"totalInterest"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferInstallmentInterestDetailItem allocWithZone:](PKPaymentOfferInstallmentInterestDetailItem init];
  v6 = [(PKCurrencyAmount *)self->_totalInterest copyWithZone:zone];
  totalInterest = v5->_totalInterest;
  v5->_totalInterest = v6;

  v8 = [(NSDecimalNumber *)self->_interestPercentage copyWithZone:zone];
  interestPercentage = v5->_interestPercentage;
  v5->_interestPercentage = v8;

  v5->_type = self->_type;
  return v5;
}

@end