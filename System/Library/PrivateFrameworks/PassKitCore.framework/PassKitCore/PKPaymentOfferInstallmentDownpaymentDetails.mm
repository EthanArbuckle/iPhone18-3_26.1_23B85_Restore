@interface PKPaymentOfferInstallmentDownpaymentDetails
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferInstallmentDownpaymentDetails)initWithCoder:(id)a3;
- (PKPaymentOfferInstallmentDownpaymentDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferInstallmentDownpaymentDetails

- (PKPaymentOfferInstallmentDownpaymentDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferInstallmentDownpaymentDetails;
  v5 = [(PKPaymentOfferInstallmentDownpaymentDetails *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKCurrencyAmountForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 PKDateForKey:@"paymentDate"];
    paymentDate = v5->_paymentDate;
    v5->_paymentDate = v8;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKCurrencyAmount *)self->_amount dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"amount"];

  v5 = PKISO8601DateStringFromDate(self->_paymentDate);
  [v3 setObject:v5 forKeyedSubscript:@"paymentDate"];

  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        amount = self->_amount;
        v8 = v6->_amount;
        if (amount && v8)
        {
          if ([(PKCurrencyAmount *)amount isEqual:?])
          {
LABEL_7:
            paymentDate = self->_paymentDate;
            v10 = v6->_paymentDate;
            if (paymentDate && v10)
            {
              v11 = [(NSDate *)paymentDate isEqual:?];
            }

            else
            {
              v11 = paymentDate == v10;
            }

            goto LABEL_15;
          }
        }

        else if (amount == v8)
        {
          goto LABEL_7;
        }

        v11 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_paymentDate];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@"paymentDate: '%@'; ", self->_paymentDate];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentDownpaymentDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferInstallmentDownpaymentDetails;
  v5 = [(PKPaymentOfferInstallmentDownpaymentDetails *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDate"];
    paymentDate = v5->_paymentDate;
    v5->_paymentDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeObject:self->_paymentDate forKey:@"paymentDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferInstallmentDownpaymentDetails allocWithZone:](PKPaymentOfferInstallmentDownpaymentDetails init];
  v6 = [(PKCurrencyAmount *)self->_amount copyWithZone:a3];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSDate *)self->_paymentDate copyWithZone:a3];
  paymentDate = v5->_paymentDate;
  v5->_paymentDate = v8;

  return v5;
}

@end