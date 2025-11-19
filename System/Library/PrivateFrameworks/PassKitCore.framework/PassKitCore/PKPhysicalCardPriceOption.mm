@interface PKPhysicalCardPriceOption
- (BOOL)isEqual:(id)a3;
- (PKPhysicalCardPriceOption)initWithCoder:(id)a3;
- (PKPhysicalCardPriceOption)initWithDictionary:(id)a3;
- (id)jsonDictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPhysicalCardPriceOption

- (PKPhysicalCardPriceOption)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPhysicalCardPriceOption;
  v5 = [(PKPhysicalCardPriceOption *)&v12 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"reason"];
    v5->_reason = PKPhysicalCardOrderReasonFromString(v6);

    v7 = [v4 PKDecimalNumberFromStringForKey:@"priceAmount"];
    v8 = [v4 PKStringForKey:@"currencyCode"];
    v9 = [[PKCurrencyAmount alloc] initWithAmount:v7 currency:v8 exponent:0];
    amount = v5->_amount;
    v5->_amount = v9;
  }

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = PKStringFromPhysicalCardOrderReason(self->_reason);
  [v3 setObject:v4 forKeyedSubscript:@"reason"];

  v5 = [(PKCurrencyAmount *)self->_amount amount];
  v6 = [v5 stringValue];
  [v3 setObject:v6 forKeyedSubscript:@"priceAmount"];

  v7 = [(PKCurrencyAmount *)self->_amount currency];
  [v3 setObject:v7 forKeyedSubscript:@"currencyCode"];

  v8 = [v3 copy];

  return v8;
}

- (PKPhysicalCardPriceOption)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPhysicalCardPriceOption;
  v5 = [(PKPhysicalCardPriceOption *)&v9 init];
  if (v5)
  {
    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeInteger:reason forKey:@"reason"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  amount = self->_amount;
  v6 = v4[2];
  if (!amount || !v6)
  {
    if (amount == v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (![(PKCurrencyAmount *)amount isEqual:?])
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = self->_reason == v4[1];
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_amount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_reason - v4 + 32 * v4;

  return v5;
}

@end