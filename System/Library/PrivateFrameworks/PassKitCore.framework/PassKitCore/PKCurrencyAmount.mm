@interface PKCurrencyAmount
+ (id)maximumCurrencyAmount:(id)amount otherCurrencyAmount:(id)currencyAmount;
+ (id)minimumCurrencyAmount:(id)amount otherCurrencyAmount:(id)currencyAmount;
- (BOOL)currencyAmountEqualToCurrencyAmount:(id)amount;
- (BOOL)currencyAmountGreaterThanCurrencyAmount:(id)amount;
- (BOOL)currencyAmountLessThanCurrencyAmount:(id)amount;
- (BOOL)isCurrency;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCurrencyAmount:(id)amount;
- (PKCurrencyAmount)initWithAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent;
- (PKCurrencyAmount)initWithAmount:(id)amount exponent:(int64_t)exponent preformattedString:(id)string;
- (PKCurrencyAmount)initWithCoder:(id)coder;
- (PKCurrencyAmount)initWithDictionary:(id)dictionary;
- (id)absoluteValue;
- (id)amountByConvertingToSmallestCommonCurrencyUnit;
- (id)currencyAmountByAddingCurrencyAmount:(id)amount;
- (id)currencyAmountBySubtractingCurrencyAmount:(id)amount;
- (id)description;
- (id)dictionaryRepresentation;
- (id)formattedStringValue;
- (id)minimalFormattedStringValueInLocale:(id)locale;
- (id)negativeValue;
- (int64_t)compareToCurrencyCode:(id)code amount:(id)amount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCurrencyAmount

- (int64_t)compareToCurrencyCode:(id)code amount:(id)amount
{
  amountCopy = amount;
  codeCopy = code;
  currency = [(PKCurrencyAmount *)self currency];
  v9 = [currency caseInsensitiveCompare:codeCopy];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    amount = [(PKCurrencyAmount *)self amount];
    v10 = [amount compare:amountCopy];
  }

  return v10;
}

- (PKCurrencyAmount)initWithAmount:(id)amount currency:(id)currency exponent:(int64_t)exponent
{
  amountCopy = amount;
  currencyCopy = currency;
  v10 = currencyCopy;
  selfCopy = 0;
  if (amountCopy && currencyCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18.receiver = self;
      v18.super_class = PKCurrencyAmount;
      v12 = [(PKCurrencyAmount *)&v18 init];
      if (v12)
      {
        v13 = [amountCopy copy];
        amount = v12->_amount;
        v12->_amount = v13;

        v15 = [v10 copy];
        currency = v12->_currency;
        v12->_currency = v15;

        v12->_exponent = exponent;
      }

      self = v12;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (PKCurrencyAmount)initWithAmount:(id)amount exponent:(int64_t)exponent preformattedString:(id)string
{
  stringCopy = string;
  v9 = stringCopy;
  selfCopy = 0;
  if (amount && stringCopy)
  {
    v11 = [(PKCurrencyAmount *)self initWithAmount:amount currency:@"XXX" exponent:exponent];
    if (v11)
    {
      v12 = [v9 copy];
      preformattedString = v11->_preformattedString;
      v11->_preformattedString = v12;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (PKCurrencyAmount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy && [dictionaryCopy count] >= 2)
  {
    v7 = [v5 PKDecimalNumberFromStringForKey:@"amount"];
    v8 = [v5 PKStringForKey:@"currencyCode"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v5 PKStringForKey:@"currency"];
    }

    v11 = v10;

    v6 = 0;
    if (v7 && v11)
    {
      v6 = PKCurrencyAmountCreate(v7, v11, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCurrencyAmount *)self isEqualToCurrencyAmount:v5];
  }

  return v6;
}

- (BOOL)isEqualToCurrencyAmount:(id)amount
{
  amountCopy = amount;
  amount = self->_amount;
  v6 = amountCopy[1];
  if (amount)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (amount != v6)
    {
LABEL_20:
      v16 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = [(NSDecimalNumber *)amount isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (self->_exponent != amountCopy[3])
  {
    goto LABEL_20;
  }

  v9 = amountCopy[4];
  v10 = self->_preformattedString;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_16;
  }

  if (!v10 || !v11)
  {

    goto LABEL_20;
  }

  v13 = [(NSString *)v10 isEqualToString:v11];

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_16:
  currency = self->_currency;
  v15 = amountCopy[2];
  if (currency && v15)
  {
    v16 = [(NSString *)currency isEqual:?];
  }

  else
  {
    v16 = currency == v15;
  }

LABEL_21:

  return v16;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_amount];
  [array safelyAddObject:self->_currency];
  [array safelyAddObject:self->_preformattedString];
  v4 = PKCombinedHash(17, array);
  v5 = self->_exponent - v4 + 32 * v4;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeInteger:self->_exponent forKey:@"exponent"];
  [coderCopy encodeObject:self->_preformattedString forKey:@"preformattedString"];
}

- (PKCurrencyAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCurrencyAmount;
  v5 = [(PKCurrencyAmount *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v8;

    v5->_exponent = [coderCopy decodeIntegerForKey:@"exponent"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preformattedString"];
    preformattedString = v5->_preformattedString;
    v5->_preformattedString = v10;

    if (!v5->_amount || !v5->_currency && !v5->_preformattedString)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"currency: %@; ", self->_currency];
  [v3 appendFormat:@"amount: %@; ", self->_amount];
  [v3 appendFormat:@"exponent: %ld; ", self->_exponent];
  [v3 appendFormat:@"preformatted string: %@; ", self->_preformattedString];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (id)formattedStringValue
{
  preformattedString = self->_preformattedString;
  if (preformattedString)
  {
    v3 = preformattedString;
  }

  else if (self->_currency && self->_amount)
  {
    isCurrency = [(PKCurrencyAmount *)self isCurrency];
    amount = self->_amount;
    if (isCurrency)
    {
      PKFormattedCurrencyStringFromNumber(amount, self->_currency);
    }

    else
    {
      PKFormattedStringMinimalFractionDigitsFromNumber(amount, self->_exponent);
    }
    v3 = ;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCurrency
{
  currency = self->_currency;
  if (currency)
  {
    LOBYTE(currency) = ![(NSString *)currency isEqualToString:@"XXX"];
  }

  return currency;
}

- (id)minimalFormattedStringValueInLocale:(id)locale
{
  localeCopy = locale;
  preformattedString = self->_preformattedString;
  if (preformattedString)
  {
    v6 = preformattedString;
LABEL_3:
    v7 = v6;
    goto LABEL_15;
  }

  if (self->_currency)
  {
    amount = self->_amount;
    if (amount)
    {
      pk_isIntegralNumber = [(NSDecimalNumber *)amount pk_isIntegralNumber];
      if (localeCopy)
      {
        if (pk_isIntegralNumber)
        {
          PKMutableNumberFormatterWithMinimalFractionDigitsForCurrencyCode(self->_currency);
        }

        else
        {
          PKMutableNumberFormatterForCurrencyCode(self->_currency);
        }
        v11 = ;
        [v11 setLocale:localeCopy];
        v7 = [v11 stringFromNumber:self->_amount];

        goto LABEL_15;
      }

      currency = self->_currency;
      if (pk_isIntegralNumber)
      {
        PKFormattedCurrencyStringWithMinimalFractionDigitsFromNumber(self->_amount, currency);
      }

      else
      {
        PKFormattedCurrencyStringFromNumber(self->_amount, currency);
      }
      v6 = ;
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"amount";
  stringValue = [(NSDecimalNumber *)self->_amount stringValue];
  v6[1] = @"currency";
  v7[0] = stringValue;
  v7[1] = self->_currency;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)absoluteValue
{
  pk_absoluteValue = [(NSDecimalNumber *)self->_amount pk_absoluteValue];
  preformattedString = self->_preformattedString;
  v5 = [PKCurrencyAmount alloc];
  if (preformattedString)
  {
    v6 = [(PKCurrencyAmount *)v5 initWithAmount:pk_absoluteValue exponent:self->_exponent preformattedString:self->_preformattedString];
  }

  else
  {
    v6 = [(PKCurrencyAmount *)v5 initWithAmount:pk_absoluteValue currency:self->_currency exponent:self->_exponent];
  }

  v7 = v6;

  return v7;
}

- (id)negativeValue
{
  pk_negativeValue = [(NSDecimalNumber *)self->_amount pk_negativeValue];
  preformattedString = self->_preformattedString;
  v5 = [PKCurrencyAmount alloc];
  if (preformattedString)
  {
    v6 = [(PKCurrencyAmount *)v5 initWithAmount:pk_negativeValue exponent:self->_exponent preformattedString:self->_preformattedString];
  }

  else
  {
    v6 = [(PKCurrencyAmount *)v5 initWithAmount:pk_negativeValue currency:self->_currency exponent:self->_exponent];
  }

  v7 = v6;

  return v7;
}

- (id)currencyAmountByAddingCurrencyAmount:(id)amount
{
  amountCopy = amount;
  currency = self->_currency;
  currency = [amountCopy currency];
  v7 = currency;
  v8 = currency;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NSDecimalNumber *)v7 isEqualToString:v8];

  if (v12)
  {
LABEL_10:
    amount = self->_amount;
    amount = [amountCopy amount];
    v9 = [(NSDecimalNumber *)amount decimalNumberByAdding:amount];

    v11 = PKCurrencyAmountCreate(v9, self->_currency, 0);
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)currencyAmountBySubtractingCurrencyAmount:(id)amount
{
  amountCopy = amount;
  currency = self->_currency;
  currency = [amountCopy currency];
  v7 = currency;
  v8 = currency;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NSDecimalNumber *)v7 isEqualToString:v8];

  if (v12)
  {
LABEL_10:
    amount = self->_amount;
    amount = [amountCopy amount];
    v9 = [(NSDecimalNumber *)amount decimalNumberBySubtracting:amount];

    v11 = PKCurrencyAmountCreate(v9, self->_currency, 0);
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)minimumCurrencyAmount:(id)amount otherCurrencyAmount:(id)currencyAmount
{
  amountCopy = amount;
  currencyAmountCopy = currencyAmount;
  currency = [amountCopy currency];
  currency2 = [currencyAmountCopy currency];
  v9 = currency;
  v10 = currency2;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if (v9 && v10)
  {
    v12 = [v9 isEqualToString:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    amount = [amountCopy amount];
    amount2 = [currencyAmountCopy amount];
    v15 = [amount compare:amount2];

    if (v15 == -1)
    {
      v16 = amountCopy;
    }

    else
    {
      v16 = currencyAmountCopy;
    }

    v17 = v16;
    goto LABEL_13;
  }

LABEL_10:
  v17 = 0;
LABEL_13:

  return v17;
}

+ (id)maximumCurrencyAmount:(id)amount otherCurrencyAmount:(id)currencyAmount
{
  amountCopy = amount;
  currencyAmountCopy = currencyAmount;
  currency = [amountCopy currency];
  currency2 = [currencyAmountCopy currency];
  v9 = currency;
  v10 = currency2;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if (v9 && v10)
  {
    v12 = [v9 isEqualToString:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    amount = [amountCopy amount];
    amount2 = [currencyAmountCopy amount];
    v15 = [amount compare:amount2];

    if (v15 == 1)
    {
      v16 = amountCopy;
    }

    else
    {
      v16 = currencyAmountCopy;
    }

    v17 = v16;
    goto LABEL_13;
  }

LABEL_10:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)amountByConvertingToSmallestCommonCurrencyUnit
{
  if ([(PKCurrencyAmount *)self isCurrency])
  {
    v3 = PKDefaultFractionDigitsForCurrencyCode(self->_currency);
    v4 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v5 = [(NSDecimalNumber *)self->_amount decimalNumberByMultiplyingByPowerOf10:(LOWORD(self->_exponent) + v3) withBehavior:v4];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)currencyAmountLessThanCurrencyAmount:(id)amount
{
  amountCopy = amount;
  currency = self->_currency;
  currency = [amountCopy currency];
  v7 = currency;
  v8 = currency;
  amount = v8;
  if (v7 == v8)
  {

LABEL_10:
    amount = self->_amount;
    amount = [amountCopy amount];
    v11 = [(NSDecimalNumber *)amount compare:amount]== NSOrderedAscending;
    goto LABEL_11;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = [(NSString *)v7 isEqualToString:v8];

    if (!v12)
    {
      v11 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

LABEL_12:
  return v11;
}

- (BOOL)currencyAmountGreaterThanCurrencyAmount:(id)amount
{
  amountCopy = amount;
  currency = self->_currency;
  currency = [amountCopy currency];
  v7 = currency;
  v8 = currency;
  amount = v8;
  if (v7 == v8)
  {

LABEL_10:
    amount = self->_amount;
    amount = [amountCopy amount];
    v11 = [(NSDecimalNumber *)amount compare:amount]== NSOrderedDescending;
    goto LABEL_11;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = [(NSString *)v7 isEqualToString:v8];

    if (!v12)
    {
      v11 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

LABEL_12:
  return v11;
}

- (BOOL)currencyAmountEqualToCurrencyAmount:(id)amount
{
  amountCopy = amount;
  currency = self->_currency;
  currency = [amountCopy currency];
  v7 = currency;
  v8 = currency;
  amount = v8;
  if (v7 == v8)
  {

LABEL_10:
    amount = self->_amount;
    amount = [amountCopy amount];
    v11 = [(NSDecimalNumber *)amount compare:amount]== NSOrderedSame;
    goto LABEL_11;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v12 = [(NSString *)v7 isEqualToString:v8];

    if (!v12)
    {
      v11 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

LABEL_12:
  return v11;
}

@end