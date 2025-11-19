@interface PKTransitAppletAmount
- (PKTransitAppletAmount)initWithAmount:(id)a3 currency:(id)a4 exponent:(int64_t)a5 identifier:(id)a6;
- (PKTransitAppletAmount)initWithCoder:(id)a3;
- (PKTransitAppletAmount)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletAmount

- (PKTransitAppletAmount)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKTransitAppletAmount;
  v5 = [(PKTransitAppletAmount *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"AmountIdentifier"];
    v8 = [v7 copy];
    balanceIdentifier = v6->_balanceIdentifier;
    v6->_balanceIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"Amount"];
    v11 = [v10 copy];
    amount = v6->_amount;
    v6->_amount = v11;

    v13 = [v4 objectForKeyedSubscript:@"AmountCurrency"];
    v14 = [v13 copy];
    currency = v6->_currency;
    v6->_currency = v14;

    v16 = [v4 objectForKeyedSubscript:@"AmountCurrencyExponent"];
    v6->_exponent = [v16 integerValue];
  }

  return v6;
}

- (PKTransitAppletAmount)initWithAmount:(id)a3 currency:(id)a4 exponent:(int64_t)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = PKTransitAppletAmount;
  v13 = [(PKTransitAppletAmount *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    amount = v13->_amount;
    v13->_amount = v14;

    v16 = [v11 copy];
    currency = v13->_currency;
    v13->_currency = v16;

    v13->_exponent = a5;
    v18 = [v12 copy];
    balanceIdentifier = v13->_balanceIdentifier;
    v13->_balanceIdentifier = v18;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_balanceIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_currency copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v5[3] = self->_exponent;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  balanceIdentifier = self->_balanceIdentifier;
  v5 = a3;
  [v5 encodeObject:balanceIdentifier forKey:@"balanceIdentifier"];
  [v5 encodeObject:self->_amount forKey:@"amountKey"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeInteger:self->_exponent forKey:@"currencyExponent"];
}

- (PKTransitAppletAmount)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKTransitAppletAmount;
  v5 = [(PKTransitAppletAmount *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balanceIdentifier"];
    balanceIdentifier = v5->_balanceIdentifier;
    v5->_balanceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountKey"];
    amount = v5->_amount;
    v5->_amount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v10;

    v5->_exponent = [v4 decodeIntegerForKey:@"currencyExponent"];
  }

  return v5;
}

@end