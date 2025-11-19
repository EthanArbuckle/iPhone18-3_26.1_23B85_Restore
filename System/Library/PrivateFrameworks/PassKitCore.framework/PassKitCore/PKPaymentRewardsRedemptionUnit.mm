@interface PKPaymentRewardsRedemptionUnit
- (BOOL)isEqual:(id)a3;
- (PKPaymentRewardsRedemptionUnit)initWithCoder:(id)a3;
- (PKPaymentRewardsRedemptionUnit)initWithDictionary:(id)a3;
- (PKPaymentRewardsRedemptionUnit)initWithType:(unint64_t)a3 monetaryValue:(id)a4 value:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentRewardsRedemptionUnit

- (PKPaymentRewardsRedemptionUnit)initWithType:(unint64_t)a3 monetaryValue:(id)a4 value:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PKPaymentRewardsRedemptionUnit;
  v10 = [(PKPaymentRewardsRedemptionUnit *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v9 copy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [v8 copy];
    monetaryValue = v11->_monetaryValue;
    v11->_monetaryValue = v14;
  }

  return v11;
}

- (PKPaymentRewardsRedemptionUnit)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentRewardsRedemptionUnit;
  v5 = [(PKPaymentRewardsRedemptionUnit *)&v13 init];
  if (!v5 || ([v4 PKDecimalNumberFromStringForKey:@"value"], v6 = objc_claimAutoreleasedReturnValue(), value = v5->_value, v5->_value = v6, value, objc_msgSend(v4, "PKStringForKey:", @"type"), v8 = objc_claimAutoreleasedReturnValue(), v5->_type = PKPaymentRewardsBalanceTypeFromString(v8), v8, objc_msgSend(v4, "PKCurrencyAmountForKey:", @"monetaryValue"), v9 = objc_claimAutoreleasedReturnValue(), monetaryValue = v5->_monetaryValue, v5->_monetaryValue = v9, monetaryValue, v5->_monetaryValue) && v5->_type)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = PKPaymentRewardsBalanceTypeToString(self->_type);
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [(NSDecimalNumber *)self->_value stringValue];
  [v3 setObject:v5 forKeyedSubscript:@"value"];

  v6 = [(PKCurrencyAmount *)self->_monetaryValue dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"monetaryValue"];

  v7 = [v3 copy];

  return v7;
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
        value = self->_value;
        v8 = v6->_value;
        if (value && v8)
        {
          if (([(NSDecimalNumber *)value isEqual:?]& 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (value != v8)
        {
          goto LABEL_16;
        }

        monetaryValue = self->_monetaryValue;
        v11 = v6->_monetaryValue;
        if (monetaryValue && v11)
        {
          if ([(PKCurrencyAmount *)monetaryValue isEqual:?])
          {
LABEL_14:
            v9 = self->_type == v6->_type;
LABEL_17:

            goto LABEL_18;
          }
        }

        else if (monetaryValue == v11)
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
  [v3 safelyAddObject:self->_value];
  [v3 safelyAddObject:self->_monetaryValue];
  v8.receiver = self;
  v8.super_class = PKPaymentRewardsRedemptionUnit;
  v4 = [(PKPaymentRewardsRedemptionUnit *)&v8 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_type - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
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
  [v3 appendFormat:@">"];

  return v3;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = PKPaymentRewardsBalanceTypeToString(self->_type);
  [v6 appendFormat:@"type: '%@'; ", v7];

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (PKPaymentRewardsRedemptionUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentRewardsRedemptionUnit;
  v5 = [(PKPaymentRewardsRedemptionUnit *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_value forKey:@"value"];
  [v5 encodeObject:self->_monetaryValue forKey:@"monetaryValue"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_type;
  v6 = [(NSDecimalNumber *)self->_value copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PKCurrencyAmount *)self->_monetaryValue copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

@end