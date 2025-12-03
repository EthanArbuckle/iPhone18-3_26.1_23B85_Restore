@interface PKTransitAppletAmount
- (PKTransitAppletAmount)initWithAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent identifier:(id)identifier;
- (PKTransitAppletAmount)initWithCoder:(id)coder;
- (PKTransitAppletAmount)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransitAppletAmount

- (PKTransitAppletAmount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKTransitAppletAmount;
  v5 = [(PKTransitAppletAmount *)&v18 init];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"AmountIdentifier"];
    v8 = [v7 copy];
    balanceIdentifier = v6->_balanceIdentifier;
    v6->_balanceIdentifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"Amount"];
    v11 = [v10 copy];
    amount = v6->_amount;
    v6->_amount = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"AmountCurrency"];
    v14 = [v13 copy];
    currency = v6->_currency;
    v6->_currency = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"AmountCurrencyExponent"];
    v6->_exponent = [v16 integerValue];
  }

  return v6;
}

- (PKTransitAppletAmount)initWithAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent identifier:(id)identifier
{
  amountCopy = amount;
  currencyCopy = currency;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = PKTransitAppletAmount;
  v13 = [(PKTransitAppletAmount *)&v21 init];
  if (v13)
  {
    v14 = [amountCopy copy];
    amount = v13->_amount;
    v13->_amount = v14;

    v16 = [currencyCopy copy];
    currency = v13->_currency;
    v13->_currency = v16;

    v13->_exponent = exponent;
    v18 = [identifierCopy copy];
    balanceIdentifier = v13->_balanceIdentifier;
    v13->_balanceIdentifier = v18;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_balanceIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDecimalNumber *)self->_amount copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_currency copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v5[3] = self->_exponent;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  balanceIdentifier = self->_balanceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:balanceIdentifier forKey:@"balanceIdentifier"];
  [coderCopy encodeObject:self->_amount forKey:@"amountKey"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeInteger:self->_exponent forKey:@"currencyExponent"];
}

- (PKTransitAppletAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransitAppletAmount;
  v5 = [(PKTransitAppletAmount *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balanceIdentifier"];
    balanceIdentifier = v5->_balanceIdentifier;
    v5->_balanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amountKey"];
    amount = v5->_amount;
    v5->_amount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v10;

    v5->_exponent = [coderCopy decodeIntegerForKey:@"currencyExponent"];
  }

  return v5;
}

@end