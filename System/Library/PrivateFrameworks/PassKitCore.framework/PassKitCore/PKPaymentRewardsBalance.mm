@interface PKPaymentRewardsBalance
+ (id)cashbackRewardsBalanceWithIdentifier:(id)identifier monetaryValue:(id)value eligibility:(unint64_t)eligibility programName:(id)name programURL:(id)l lastFetchedAt:(id)at;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFresh;
- (BOOL)isFreshForNow:(id)now;
- (BOOL)isPositive;
- (BOOL)isValid;
- (PKPaymentRewardsBalance)initWithCoder:(id)coder;
- (PKPaymentRewardsBalance)initWithDictionary:(id)dictionary;
- (PKPaymentRewardsBalance)initWithIdentifier:(id)identifier type:(unint64_t)type value:(id)value monetaryValue:(id)monetaryValue conversionRate:(id)rate roundingStrategy:(unint64_t)strategy eligibility:(unint64_t)eligibility programName:(id)self0 programURL:(id)self1 lastFetchedAt:(id)self2;
- (id)_nsDecimalRoundingBehavior;
- (id)convertAmountFromValue:(id)value;
- (id)convertMonetaryValueFromValue:(id)value;
- (id)convertValueFromAmount:(id)amount;
- (id)convertValueFromMonetaryValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)formattedQuantityValue;
- (id)redactedDescription;
- (unint64_t)_nsDecimalRoundingMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentRewardsBalance

- (PKPaymentRewardsBalance)initWithIdentifier:(id)identifier type:(unint64_t)type value:(id)value monetaryValue:(id)monetaryValue conversionRate:(id)rate roundingStrategy:(unint64_t)strategy eligibility:(unint64_t)eligibility programName:(id)self0 programURL:(id)self1 lastFetchedAt:(id)self2
{
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  valueCopy = value;
  monetaryValueCopy = monetaryValue;
  rateCopy = rate;
  nameCopy = name;
  lCopy = l;
  atCopy = at;
  v47.receiver = self;
  v47.super_class = PKPaymentRewardsBalance;
  v24 = [(PKPaymentRewardsBalance *)&v47 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v24->_type = type;
    v27 = [valueCopy copy];
    value = v24->_value;
    v24->_value = v27;

    v29 = [monetaryValueCopy copy];
    monetaryValue = v24->_monetaryValue;
    v24->_monetaryValue = v29;

    v31 = [rateCopy copy];
    conversionRate = v24->_conversionRate;
    v24->_conversionRate = v31;

    v24->_roundingStrategy = strategy;
    v24->_eligibility = eligibility;
    v33 = [nameCopy copy];
    programName = v24->_programName;
    v24->_programName = v33;

    v35 = [lCopy copy];
    programURL = v24->_programURL;
    v24->_programURL = v35;

    v37 = [atCopy copy];
    lastFetchedAt = v24->_lastFetchedAt;
    v24->_lastFetchedAt = v37;

    if (!v24->_lastFetchedAt)
    {
      v39 = [MEMORY[0x1E695DF00] now];
      v40 = v24->_lastFetchedAt;
      v24->_lastFetchedAt = v39;
    }
  }

  v41 = v24->_identifier;
  if (v41 && v24->_monetaryValue && v24->_programName)
  {
    v42 = v24;
  }

  else
  {
    v43 = PKLogFacilityTypeGetObject(0x33uLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v24->_programName;
      *buf = 138412546;
      v49 = v41;
      v50 = 2112;
      v51 = v44;
      _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Got Invalid Payment Rewards Balance, with identifier: %@, programName: %@", buf, 0x16u);
    }

    v42 = 0;
  }

  return v42;
}

+ (id)cashbackRewardsBalanceWithIdentifier:(id)identifier monetaryValue:(id)value eligibility:(unint64_t)eligibility programName:(id)name programURL:(id)l lastFetchedAt:(id)at
{
  atCopy = at;
  lCopy = l;
  nameCopy = name;
  valueCopy = value;
  identifierCopy = identifier;
  v19 = [[self alloc] initWithIdentifier:identifierCopy type:3 value:0 monetaryValue:valueCopy conversionRate:0 roundingStrategy:0 eligibility:eligibility programName:nameCopy programURL:lCopy lastFetchedAt:atCopy];

  return v19;
}

- (PKPaymentRewardsBalance)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = PKPaymentRewardsBalance;
  v5 = [(PKPaymentRewardsBalance *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"balanceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"rewardsType"];
    v5->_type = PKPaymentRewardsBalanceTypeFromString(v8);

    v9 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"value"];
    value = v5->_value;
    v5->_value = v9;

    v11 = [dictionaryCopy PKCurrencyAmountForKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v11;

    v13 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"conversionRate"];
    conversionRate = v5->_conversionRate;
    v5->_conversionRate = v13;

    v15 = [dictionaryCopy PKStringForKey:@"roundingStrategy"];
    v5->_roundingStrategy = PKPaymentRewardsBalanceRoundingStrategyFromString(v15);

    v16 = [dictionaryCopy PKStringForKey:@"eligibility"];
    v5->_eligibility = PKPaymentRewardsBalanceEligibilityFromString(v16);

    v17 = [dictionaryCopy PKStringForKey:@"programName"];
    programName = v5->_programName;
    v5->_programName = v17;

    v19 = [dictionaryCopy PKURLForKey:@"programURL"];
    programURL = v5->_programURL;
    v5->_programURL = v19;

    v21 = [MEMORY[0x1E695DF00] now];
    lastFetchedAt = v5->_lastFetchedAt;
    v5->_lastFetchedAt = v21;
  }

  v23 = v5->_identifier;
  if (v23 && v5->_monetaryValue && v5->_programName)
  {
    v24 = v5;
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(0x33uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v5->_programName;
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Got Invalid Payment Rewards Balance, with identifier: %@, programName: %@", buf, 0x16u);
    }

    v24 = 0;
  }

  return v24;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"balanceIdentifier"];
  v4 = PKPaymentRewardsBalanceTypeToString(self->_type);
  [v3 setObject:v4 forKeyedSubscript:@"rewardsType"];

  stringValue = [(NSDecimalNumber *)self->_value stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"value"];

  dictionaryRepresentation = [(PKCurrencyAmount *)self->_monetaryValue dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"monetaryValue"];

  stringValue2 = [(NSDecimalNumber *)self->_conversionRate stringValue];
  [v3 setObject:stringValue2 forKeyedSubscript:@"conversionRate"];

  v8 = PKPaymentRewardsBalanceRoundingStrategyToString(self->_roundingStrategy);
  [v3 setObject:v8 forKeyedSubscript:@"roundingStrategy"];

  eligibility = self->_eligibility;
  v10 = @"unknown";
  if (eligibility == 2)
  {
    v10 = @"ineligible";
  }

  if (eligibility == 1)
  {
    v11 = @"redeemable";
  }

  else
  {
    v11 = v10;
  }

  [v3 setObject:v11 forKeyedSubscript:@"eligibility"];
  [v3 setObject:self->_programName forKeyedSubscript:@"programName"];
  absoluteString = [(NSURL *)self->_programURL absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"programURL"];

  v13 = [v3 copy];

  return v13;
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
        identifier = self->_identifier;
        v8 = v6->_identifier;
        if (identifier && v8)
        {
          if (([(NSString *)identifier isEqual:?]& 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (identifier != v8)
        {
          goto LABEL_44;
        }

        value = self->_value;
        v11 = v6->_value;
        if (value && v11)
        {
          if (([(NSDecimalNumber *)value isEqual:?]& 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (value != v11)
        {
          goto LABEL_44;
        }

        monetaryValue = self->_monetaryValue;
        v13 = v6->_monetaryValue;
        if (monetaryValue && v13)
        {
          if (![(PKCurrencyAmount *)monetaryValue isEqual:?])
          {
            goto LABEL_44;
          }
        }

        else if (monetaryValue != v13)
        {
          goto LABEL_44;
        }

        conversionRate = self->_conversionRate;
        v15 = v6->_conversionRate;
        if (conversionRate && v15)
        {
          if (([(NSDecimalNumber *)conversionRate isEqual:?]& 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (conversionRate != v15)
        {
          goto LABEL_44;
        }

        lastFetchedAt = self->_lastFetchedAt;
        v17 = v6->_lastFetchedAt;
        if (lastFetchedAt && v17)
        {
          if (([(NSDate *)lastFetchedAt isEqual:?]& 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (lastFetchedAt != v17)
        {
          goto LABEL_44;
        }

        programName = self->_programName;
        v19 = v6->_programName;
        if (programName && v19)
        {
          if (([(NSString *)programName isEqual:?]& 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (programName != v19)
        {
          goto LABEL_44;
        }

        programURL = self->_programURL;
        v21 = v6->_programURL;
        if (programURL && v21)
        {
          if (([(NSURL *)programURL isEqual:?]& 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (programURL != v21)
        {
          goto LABEL_44;
        }

        if (self->_type == v6->_type && self->_roundingStrategy == v6->_roundingStrategy)
        {
          v9 = self->_eligibility == v6->_eligibility;
LABEL_45:

          goto LABEL_46;
        }

LABEL_44:
        v9 = 0;
        goto LABEL_45;
      }
    }

    v9 = 0;
  }

LABEL_46:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_value];
  [v3 safelyAddObject:self->_monetaryValue];
  [v3 safelyAddObject:self->_conversionRate];
  [v3 safelyAddObject:self->_lastFetchedAt];
  [v3 safelyAddObject:self->_programName];
  [v3 safelyAddObject:self->_programURL];
  v10.receiver = self;
  v10.super_class = PKPaymentRewardsBalance;
  v4 = [(PKPaymentRewardsBalance *)&v10 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_roundingStrategy - v6 + 32 * v6;
  v8 = self->_eligibility - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = PKPaymentRewardsBalanceTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v4];

  if (self->_value)
  {
    v5 = @"<redacted>";
  }

  else
  {
    v5 = 0;
  }

  [v3 appendFormat:@"value: '%@'; ", v5];
  if (self->_monetaryValue)
  {
    v6 = @"<redacted>";
  }

  else
  {
    v6 = 0;
  }

  [v3 appendFormat:@"monetaryValue: '%@'; ", v6];
  stringValue = [(NSDecimalNumber *)self->_conversionRate stringValue];
  [v3 appendFormat:@"conversionRate: '%@'; ", stringValue];

  v8 = PKPaymentRewardsBalanceRoundingStrategyToString(self->_roundingStrategy);
  [v3 appendFormat:@"roundingStrategy: '%@'; ", v8];

  eligibility = self->_eligibility;
  v10 = @"unknown";
  if (eligibility == 2)
  {
    v10 = @"ineligible";
  }

  if (eligibility == 1)
  {
    v11 = @"redeemable";
  }

  else
  {
    v11 = v10;
  }

  [v3 appendFormat:@"eligibility: '%@'; ", v11];
  [v3 appendFormat:@"programName: '%@'; ", self->_programName];
  [v3 appendFormat:@"programUrl: '%@'; ", self->_programURL];
  [v3 appendFormat:@"lastFetchedAt: '%@'; ", self->_lastFetchedAt];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@: %p; ", v5, self];

  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v6 = PKPaymentRewardsBalanceTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v6];

  [v3 appendFormat:@"lastFetchedAt: '%@'; ", self->_lastFetchedAt];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentRewardsBalance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKPaymentRewardsBalance;
  v5 = [(PKPaymentRewardsBalance *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balanceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"rewardsType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversionRate"];
    conversionRate = v5->_conversionRate;
    v5->_conversionRate = v12;

    v5->_roundingStrategy = [coderCopy decodeIntegerForKey:@"roundingStrategy"];
    v5->_eligibility = [coderCopy decodeIntegerForKey:@"eligibility"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchedAt"];
    lastFetchedAt = v5->_lastFetchedAt;
    v5->_lastFetchedAt = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"programName"];
    programName = v5->_programName;
    v5->_programName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"programURL"];
    programURL = v5->_programURL;
    v5->_programURL = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"balanceIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"rewardsType"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_monetaryValue forKey:@"monetaryValue"];
  [coderCopy encodeObject:self->_conversionRate forKey:@"conversionRate"];
  [coderCopy encodeInteger:self->_roundingStrategy forKey:@"roundingStrategy"];
  [coderCopy encodeInteger:self->_eligibility forKey:@"eligibility"];
  [coderCopy encodeObject:self->_lastFetchedAt forKey:@"lastFetchedAt"];
  [coderCopy encodeObject:self->_programName forKey:@"programName"];
  [coderCopy encodeObject:self->_programURL forKey:@"programURL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_type;
  v8 = [(NSDecimalNumber *)self->_value copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PKCurrencyAmount *)self->_monetaryValue copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSDecimalNumber *)self->_conversionRate copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v5[6] = self->_roundingStrategy;
  v5[7] = self->_eligibility;
  v14 = [(NSDate *)self->_lastFetchedAt copyWithZone:zone];
  v15 = v5[10];
  v5[10] = v14;

  v16 = [(NSString *)self->_programName copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(NSURL *)self->_programURL copyWithZone:zone];
  v19 = v5[9];
  v5[9] = v18;

  return v5;
}

- (BOOL)isValid
{
  if (!self->_identifier || !self->_programName)
  {
    return 0;
  }

  type = self->_type;
  if (type != 3)
  {
    return type - 1 > 1 || self->_value && self->_monetaryValue && self->_conversionRate;
  }

  return self->_monetaryValue != 0;
}

- (BOOL)isFresh
{
  v3 = [MEMORY[0x1E695DF00] now];
  LOBYTE(self) = [(PKPaymentRewardsBalance *)self isFreshForNow:v3];

  return self;
}

- (BOOL)isFreshForNow:(id)now
{
  lastFetchedAt = self->_lastFetchedAt;
  if (lastFetchedAt)
  {
    LOBYTE(lastFetchedAt) = PKDateRangeNumberOfIntervalsForUnit(lastFetchedAt, now, 64) < 6;
  }

  return lastFetchedAt;
}

- (BOOL)isPositive
{
  isQuantitative = [(PKPaymentRewardsBalance *)self isQuantitative];
  amount = [(PKCurrencyAmount *)self->_monetaryValue amount];
  pk_isPositiveNumber = [amount pk_isPositiveNumber];
  v6 = !isQuantitative;
  pk_isPositiveNumber2 = !isQuantitative & pk_isPositiveNumber;
  if (!v6 && (pk_isPositiveNumber & 1) != 0)
  {
    pk_isPositiveNumber2 = [(NSDecimalNumber *)self->_value pk_isPositiveNumber];
  }

  return pk_isPositiveNumber2;
}

- (id)formattedQuantityValue
{
  if (self->_value && self->_type - 1 <= 1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v3 setNumberStyle:1];
    [v3 setUsesGroupingSeparator:1];
    v4 = [v3 stringFromNumber:self->_value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)convertValueFromAmount:(id)amount
{
  amountCopy = amount;
  if (self->_type == 3 || (v5 = self->_conversionRate) == 0)
  {
    v7 = 0;
  }

  else
  {
    pk_isPositiveNumber = [(NSDecimalNumber *)v5 pk_isPositiveNumber];
    v7 = 0;
    if (amountCopy && pk_isPositiveNumber)
    {
      conversionRate = self->_conversionRate;
      _nsDecimalRoundingBehavior = [(PKPaymentRewardsBalance *)self _nsDecimalRoundingBehavior];
      v10 = [amountCopy decimalNumberByDividingBy:conversionRate withBehavior:_nsDecimalRoundingBehavior];

      if (v10 && ([v10 pk_isNotANumber] & 1) == 0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)convertAmountFromValue:(id)value
{
  valueCopy = value;
  if (self->_type == 3 || (conversionRate = self->_conversionRate) == 0)
  {
    v7 = 0;
  }

  else
  {
    pk_isPositiveNumber = [(NSDecimalNumber *)conversionRate pk_isPositiveNumber];
    v7 = 0;
    if (valueCopy && pk_isPositiveNumber)
    {
      v8 = [valueCopy decimalNumberByMultiplyingBy:self->_conversionRate];
      v9 = v8;
      if (v8 && ([v8 pk_isNotANumber] & 1) == 0)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)convertValueFromMonetaryValue:(id)value
{
  amount = [value amount];
  if (amount)
  {
    v5 = [(PKPaymentRewardsBalance *)self convertValueFromAmount:amount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)convertMonetaryValueFromValue:(id)value
{
  valueCopy = value;
  currency = [(PKCurrencyAmount *)self->_monetaryValue currency];
  if (currency)
  {
    v6 = [(PKPaymentRewardsBalance *)self convertAmountFromValue:valueCopy];
    v7 = v6;
    if (v6)
    {
      v8 = PKCurrencyAmountCreate(v6, currency, 0);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_nsDecimalRoundingBehavior
{
  v2 = MEMORY[0x1E696AB98];
  _nsDecimalRoundingMode = [(PKPaymentRewardsBalance *)self _nsDecimalRoundingMode];

  return [v2 decimalNumberHandlerWithRoundingMode:_nsDecimalRoundingMode scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
}

- (unint64_t)_nsDecimalRoundingMode
{
  if (self->_roundingStrategy - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return self->_roundingStrategy;
  }
}

@end