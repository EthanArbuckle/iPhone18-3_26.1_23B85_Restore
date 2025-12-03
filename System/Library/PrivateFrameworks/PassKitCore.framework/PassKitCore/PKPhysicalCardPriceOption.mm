@interface PKPhysicalCardPriceOption
- (BOOL)isEqual:(id)equal;
- (PKPhysicalCardPriceOption)initWithCoder:(id)coder;
- (PKPhysicalCardPriceOption)initWithDictionary:(id)dictionary;
- (id)jsonDictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPhysicalCardPriceOption

- (PKPhysicalCardPriceOption)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPhysicalCardPriceOption;
  v5 = [(PKPhysicalCardPriceOption *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"reason"];
    v5->_reason = PKPhysicalCardOrderReasonFromString(v6);

    v7 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"priceAmount"];
    v8 = [dictionaryCopy PKStringForKey:@"currencyCode"];
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

  amount = [(PKCurrencyAmount *)self->_amount amount];
  stringValue = [amount stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"priceAmount"];

  currency = [(PKCurrencyAmount *)self->_amount currency];
  [v3 setObject:currency forKeyedSubscript:@"currencyCode"];

  v8 = [v3 copy];

  return v8;
}

- (PKPhysicalCardPriceOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPhysicalCardPriceOption;
  v5 = [(PKPhysicalCardPriceOption *)&v9 init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInteger:reason forKey:@"reason"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  amount = self->_amount;
  v6 = equalCopy[2];
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
  v7 = self->_reason == equalCopy[1];
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_amount];
  v4 = PKCombinedHash(17, array);
  v5 = self->_reason - v4 + 32 * v4;

  return v5;
}

@end