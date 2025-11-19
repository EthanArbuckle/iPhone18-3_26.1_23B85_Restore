@interface PKPaymentRewardsBalance
+ (id)cashbackRewardsBalanceWithIdentifier:(id)a3 monetaryValue:(id)a4 eligibility:(unint64_t)a5 programName:(id)a6 programURL:(id)a7 lastFetchedAt:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFresh;
- (BOOL)isFreshForNow:(id)a3;
- (BOOL)isPositive;
- (BOOL)isValid;
- (PKPaymentRewardsBalance)initWithCoder:(id)a3;
- (PKPaymentRewardsBalance)initWithDictionary:(id)a3;
- (PKPaymentRewardsBalance)initWithIdentifier:(id)a3 type:(unint64_t)a4 value:(id)a5 monetaryValue:(id)a6 conversionRate:(id)a7 roundingStrategy:(unint64_t)a8 eligibility:(unint64_t)a9 programName:(id)a10 programURL:(id)a11 lastFetchedAt:(id)a12;
- (id)_nsDecimalRoundingBehavior;
- (id)convertAmountFromValue:(id)a3;
- (id)convertMonetaryValueFromValue:(id)a3;
- (id)convertValueFromAmount:(id)a3;
- (id)convertValueFromMonetaryValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)formattedQuantityValue;
- (id)redactedDescription;
- (unint64_t)_nsDecimalRoundingMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentRewardsBalance

- (PKPaymentRewardsBalance)initWithIdentifier:(id)a3 type:(unint64_t)a4 value:(id)a5 monetaryValue:(id)a6 conversionRate:(id)a7 roundingStrategy:(unint64_t)a8 eligibility:(unint64_t)a9 programName:(id)a10 programURL:(id)a11 lastFetchedAt:(id)a12
{
  v52 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v47.receiver = self;
  v47.super_class = PKPaymentRewardsBalance;
  v24 = [(PKPaymentRewardsBalance *)&v47 init];
  if (v24)
  {
    v25 = [v46 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v24->_type = a4;
    v27 = [v18 copy];
    value = v24->_value;
    v24->_value = v27;

    v29 = [v19 copy];
    monetaryValue = v24->_monetaryValue;
    v24->_monetaryValue = v29;

    v31 = [v20 copy];
    conversionRate = v24->_conversionRate;
    v24->_conversionRate = v31;

    v24->_roundingStrategy = a8;
    v24->_eligibility = a9;
    v33 = [v21 copy];
    programName = v24->_programName;
    v24->_programName = v33;

    v35 = [v22 copy];
    programURL = v24->_programURL;
    v24->_programURL = v35;

    v37 = [v23 copy];
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

+ (id)cashbackRewardsBalanceWithIdentifier:(id)a3 monetaryValue:(id)a4 eligibility:(unint64_t)a5 programName:(id)a6 programURL:(id)a7 lastFetchedAt:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [[a1 alloc] initWithIdentifier:v18 type:3 value:0 monetaryValue:v17 conversionRate:0 roundingStrategy:0 eligibility:a5 programName:v16 programURL:v15 lastFetchedAt:v14];

  return v19;
}

- (PKPaymentRewardsBalance)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKPaymentRewardsBalance;
  v5 = [(PKPaymentRewardsBalance *)&v28 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"balanceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"rewardsType"];
    v5->_type = PKPaymentRewardsBalanceTypeFromString(v8);

    v9 = [v4 PKDecimalNumberFromStringForKey:@"value"];
    value = v5->_value;
    v5->_value = v9;

    v11 = [v4 PKCurrencyAmountForKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v11;

    v13 = [v4 PKDecimalNumberFromStringForKey:@"conversionRate"];
    conversionRate = v5->_conversionRate;
    v5->_conversionRate = v13;

    v15 = [v4 PKStringForKey:@"roundingStrategy"];
    v5->_roundingStrategy = PKPaymentRewardsBalanceRoundingStrategyFromString(v15);

    v16 = [v4 PKStringForKey:@"eligibility"];
    v5->_eligibility = PKPaymentRewardsBalanceEligibilityFromString(v16);

    v17 = [v4 PKStringForKey:@"programName"];
    programName = v5->_programName;
    v5->_programName = v17;

    v19 = [v4 PKURLForKey:@"programURL"];
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

  v5 = [(NSDecimalNumber *)self->_value stringValue];
  [v3 setObject:v5 forKeyedSubscript:@"value"];

  v6 = [(PKCurrencyAmount *)self->_monetaryValue dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"monetaryValue"];

  v7 = [(NSDecimalNumber *)self->_conversionRate stringValue];
  [v3 setObject:v7 forKeyedSubscript:@"conversionRate"];

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
  v12 = [(NSURL *)self->_programURL absoluteString];
  [v3 setObject:v12 forKeyedSubscript:@"programURL"];

  v13 = [v3 copy];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
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
  v7 = [(NSDecimalNumber *)self->_conversionRate stringValue];
  [v3 appendFormat:@"conversionRate: '%@'; ", v7];

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

- (PKPaymentRewardsBalance)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentRewardsBalance;
  v5 = [(PKPaymentRewardsBalance *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balanceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"rewardsType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversionRate"];
    conversionRate = v5->_conversionRate;
    v5->_conversionRate = v12;

    v5->_roundingStrategy = [v4 decodeIntegerForKey:@"roundingStrategy"];
    v5->_eligibility = [v4 decodeIntegerForKey:@"eligibility"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchedAt"];
    lastFetchedAt = v5->_lastFetchedAt;
    v5->_lastFetchedAt = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"programName"];
    programName = v5->_programName;
    v5->_programName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"programURL"];
    programURL = v5->_programURL;
    v5->_programURL = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"balanceIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"rewardsType"];
  [v5 encodeObject:self->_value forKey:@"value"];
  [v5 encodeObject:self->_monetaryValue forKey:@"monetaryValue"];
  [v5 encodeObject:self->_conversionRate forKey:@"conversionRate"];
  [v5 encodeInteger:self->_roundingStrategy forKey:@"roundingStrategy"];
  [v5 encodeInteger:self->_eligibility forKey:@"eligibility"];
  [v5 encodeObject:self->_lastFetchedAt forKey:@"lastFetchedAt"];
  [v5 encodeObject:self->_programName forKey:@"programName"];
  [v5 encodeObject:self->_programURL forKey:@"programURL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_type;
  v8 = [(NSDecimalNumber *)self->_value copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PKCurrencyAmount *)self->_monetaryValue copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSDecimalNumber *)self->_conversionRate copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v5[6] = self->_roundingStrategy;
  v5[7] = self->_eligibility;
  v14 = [(NSDate *)self->_lastFetchedAt copyWithZone:a3];
  v15 = v5[10];
  v5[10] = v14;

  v16 = [(NSString *)self->_programName copyWithZone:a3];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(NSURL *)self->_programURL copyWithZone:a3];
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

- (BOOL)isFreshForNow:(id)a3
{
  lastFetchedAt = self->_lastFetchedAt;
  if (lastFetchedAt)
  {
    LOBYTE(lastFetchedAt) = PKDateRangeNumberOfIntervalsForUnit(lastFetchedAt, a3, 64) < 6;
  }

  return lastFetchedAt;
}

- (BOOL)isPositive
{
  v3 = [(PKPaymentRewardsBalance *)self isQuantitative];
  v4 = [(PKCurrencyAmount *)self->_monetaryValue amount];
  v5 = [v4 pk_isPositiveNumber];
  v6 = !v3;
  v7 = !v3 & v5;
  if (!v6 && (v5 & 1) != 0)
  {
    v7 = [(NSDecimalNumber *)self->_value pk_isPositiveNumber];
  }

  return v7;
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

- (id)convertValueFromAmount:(id)a3
{
  v4 = a3;
  if (self->_type == 3 || (v5 = self->_conversionRate) == 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSDecimalNumber *)v5 pk_isPositiveNumber];
    v7 = 0;
    if (v4 && v6)
    {
      conversionRate = self->_conversionRate;
      v9 = [(PKPaymentRewardsBalance *)self _nsDecimalRoundingBehavior];
      v10 = [v4 decimalNumberByDividingBy:conversionRate withBehavior:v9];

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

- (id)convertAmountFromValue:(id)a3
{
  v4 = a3;
  if (self->_type == 3 || (conversionRate = self->_conversionRate) == 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSDecimalNumber *)conversionRate pk_isPositiveNumber];
    v7 = 0;
    if (v4 && v6)
    {
      v8 = [v4 decimalNumberByMultiplyingBy:self->_conversionRate];
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

- (id)convertValueFromMonetaryValue:(id)a3
{
  v4 = [a3 amount];
  if (v4)
  {
    v5 = [(PKPaymentRewardsBalance *)self convertValueFromAmount:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)convertMonetaryValueFromValue:(id)a3
{
  v4 = a3;
  v5 = [(PKCurrencyAmount *)self->_monetaryValue currency];
  if (v5)
  {
    v6 = [(PKPaymentRewardsBalance *)self convertAmountFromValue:v4];
    v7 = v6;
    if (v6)
    {
      v8 = PKCurrencyAmountCreate(v6, v5, 0);
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
  v3 = [(PKPaymentRewardsBalance *)self _nsDecimalRoundingMode];

  return [v2 decimalNumberHandlerWithRoundingMode:v3 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
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