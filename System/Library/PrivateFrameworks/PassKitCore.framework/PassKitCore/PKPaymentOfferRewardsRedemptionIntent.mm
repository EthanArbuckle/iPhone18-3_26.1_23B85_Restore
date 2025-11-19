@interface PKPaymentOfferRewardsRedemptionIntent
- (BOOL)hasFullBalanceSelected;
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferRewardsRedemptionIntent)initWithCoder:(id)a3;
- (PKPaymentOfferRewardsRedemptionIntent)initWithRewardsBalance:(id)a3 amount:(id)a4 value:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferRewardsRedemptionIntent

- (PKPaymentOfferRewardsRedemptionIntent)initWithRewardsBalance:(id)a3 amount:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 monetaryValue];
  v21.receiver = self;
  v21.super_class = PKPaymentOfferRewardsRedemptionIntent;
  v12 = [(PKPaymentOfferRewardsRedemptionIntent *)&v21 init];
  if (v12)
  {
    v13 = [v8 copy];
    rewardsBalance = v12->_rewardsBalance;
    v12->_rewardsBalance = v13;

    if (v10)
    {
      v15 = [v10 copy];
    }

    else
    {
      v15 = [v8 convertValueFromAmount:v9];
    }

    value = v12->_value;
    v12->_value = v15;

    v17 = [v11 currency];
    v18 = PKCurrencyAmountCreate(v9, v17, 0);
    monetaryValue = v12->_monetaryValue;
    v12->_monetaryValue = v18;
  }

  return v12;
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
        rewardsBalance = self->_rewardsBalance;
        v8 = v6->_rewardsBalance;
        if (rewardsBalance && v8)
        {
          if (![(PKPaymentRewardsBalance *)rewardsBalance isEqual:?])
          {
            goto LABEL_18;
          }
        }

        else if (rewardsBalance != v8)
        {
          goto LABEL_18;
        }

        monetaryValue = self->_monetaryValue;
        v11 = v6->_monetaryValue;
        if (monetaryValue && v11)
        {
          if ([(PKCurrencyAmount *)monetaryValue isEqual:?])
          {
LABEL_14:
            value = self->_value;
            v13 = v6->_value;
            if (value && v13)
            {
              v9 = [(NSDecimalNumber *)value isEqual:?];
            }

            else
            {
              v9 = value == v13;
            }

            goto LABEL_19;
          }
        }

        else if (monetaryValue == v11)
        {
          goto LABEL_14;
        }

LABEL_18:
        v9 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = 0;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_rewardsBalance];
  [v3 safelyAddObject:self->_monetaryValue];
  [v3 safelyAddObject:self->_value];
  v7.receiver = self;
  v7.super_class = PKPaymentOfferRewardsRedemptionIntent;
  v4 = [(PKPaymentOfferRewardsRedemptionIntent *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = [(PKPaymentOfferRewardsRedemptionIntent *)self balanceIdentifier];
  [v3 appendFormat:@"balanceIdentifier: '%@'; ", v4];

  v5 = [(PKPaymentOfferRewardsRedemptionIntent *)self programName];
  [v3 appendFormat:@"programName: '%@'; ", v5];

  v6 = PKPaymentRewardsBalanceTypeToString([(PKPaymentOfferRewardsRedemptionIntent *)self rewardsType]);
  [v3 appendFormat:@"rewardsType: '%@'; ", v6];

  if (self->_monetaryValue)
  {
    v7 = @"<redacted>";
  }

  else
  {
    v7 = 0;
  }

  [v3 appendFormat:@"monetaryValue: '%@'; ", v7];
  if (self->_value)
  {
    v8 = @"<redacted>";
  }

  else
  {
    v8 = 0;
  }

  [v3 appendFormat:@"value: '%@'; ", v8];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@: %p; ", v5, self];

  v6 = [(PKPaymentOfferRewardsRedemptionIntent *)self balanceIdentifier];
  [v3 appendFormat:@"balanceIdentifier: '%@'; ", v6];

  v7 = PKPaymentRewardsBalanceTypeToString([(PKPaymentOfferRewardsRedemptionIntent *)self rewardsType]);
  [v3 appendFormat:@"rewardsType: '%@'; ", v7];

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferRewardsRedemptionIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferRewardsRedemptionIntent;
  v5 = [(PKPaymentOfferRewardsRedemptionIntent *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rewardsBalance = self->_rewardsBalance;
  v5 = a3;
  [v5 encodeObject:rewardsBalance forKey:@"rewardsBalance"];
  [v5 encodeObject:self->_monetaryValue forKey:@"monetaryValue"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKPaymentRewardsBalance *)self->_rewardsBalance copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKCurrencyAmount *)self->_monetaryValue copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDecimalNumber *)self->_value copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKPaymentRewardsBalance *)self->_rewardsBalance identifier];
  [v3 setObject:v4 forKeyedSubscript:@"balanceIdentifier"];

  v5 = PKPaymentRewardsBalanceTypeToString([(PKPaymentRewardsBalance *)self->_rewardsBalance type]);
  [v3 setObject:v5 forKeyedSubscript:@"rewardsType"];

  v6 = [(PKCurrencyAmount *)self->_monetaryValue dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"monetaryValue"];

  v7 = [(PKPaymentRewardsBalance *)self->_rewardsBalance monetaryValue];
  v8 = [v7 amount];
  v9 = [v8 stringValue];
  [v3 setObject:v9 forKeyedSubscript:@"displayedBalanceAmount"];

  if ([(PKPaymentRewardsBalance *)self->_rewardsBalance isQuantitative])
  {
    value = self->_value;
    if (value)
    {
      v11 = [(NSDecimalNumber *)value stringValue];
      [v3 setObject:v11 forKeyedSubscript:@"value"];

      v12 = [(PKPaymentRewardsBalance *)self->_rewardsBalance value];
      v13 = [v12 stringValue];
      [v3 setObject:v13 forKeyedSubscript:@"displayedBalanceValue"];
    }
  }

  v14 = [v3 copy];

  return v14;
}

- (BOOL)hasFullBalanceSelected
{
  v3 = [(PKPaymentRewardsBalance *)self->_rewardsBalance monetaryValue];
  monetaryValue = self->_monetaryValue;
  if (monetaryValue)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5 && [(PKCurrencyAmount *)monetaryValue isEqual:v3];

  return v6;
}

@end