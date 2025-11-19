@interface PKCreditInstallmentPlanLineItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInstallmentPlanLineItem:(id)a3;
- (PKCreditInstallmentPlanLineItem)initWithCoder:(id)a3;
- (PKCreditInstallmentPlanLineItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditInstallmentPlanLineItem

- (PKCreditInstallmentPlanLineItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PKCreditInstallmentPlanLineItem;
  v5 = [(PKCreditInstallmentPlanLineItem *)&v35 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v7 = v6;
    if (v6 != @"product")
    {
      if (v6)
      {
        v8 = [(__CFString *)v6 isEqualToString:@"product"];

        if (v8)
        {
          goto LABEL_5;
        }

        v10 = v7;
        if (v10 == @"tax" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"tax"], v11, (v12 & 1) != 0))
        {
          v9 = 2;
          goto LABEL_22;
        }

        v13 = v11;
        if (v13 == @"shipping" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"shipping"], v14, (v15 & 1) != 0))
        {
          v9 = 3;
          goto LABEL_22;
        }

        v16 = v14;
        if (v16 == @"other" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"other"], v17, (v18 & 1) != 0))
        {
          v9 = 4;
          goto LABEL_22;
        }

        v19 = v17;
        if (v19 == @"tradeIn" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"tradeIn"], v20, (v21 & 1) != 0))
        {
          v9 = 5;
          goto LABEL_22;
        }

        v22 = v20;
        if (v22 == @"accessory" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"accessory"], v23, v24))
        {
          v9 = 6;
          goto LABEL_22;
        }
      }

      v9 = 0;
      goto LABEL_22;
    }

LABEL_5:
    v9 = 1;
LABEL_22:

    v5->_type = v9;
    v25 = [v4 PKDecimalNumberFromStringForKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v25;

    v5->_duration = [v4 PKIntegerForKey:@"duration"];
    v27 = [v4 PKStringForKey:@"description"];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = v27;

    v29 = [v4 PKStringForKey:@"state"];
    v5->_state = PKInstallmentPlanStateFromString(v29);

    v30 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v30;

    v32 = [v4 PKDecimalNumberFromStringForKey:@"paymentsToDateAmount"];
    paymentsToDateAmount = v5->_paymentsToDateAmount;
    v5->_paymentsToDateAmount = v32;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditInstallmentPlanLineItem *)self isEqualToInstallmentPlanLineItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlanLineItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_type != v4[1])
  {
    goto LABEL_22;
  }

  amount = self->_amount;
  v7 = v5[2];
  if (amount && v7)
  {
    if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (amount != v7)
  {
    goto LABEL_22;
  }

  if (self->_duration != v5[3])
  {
    goto LABEL_22;
  }

  v8 = v5[4];
  v9 = self->_itemDescription;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {
      goto LABEL_21;
    }

    v12 = [(NSString *)v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_22;
    }
  }

  if (self->_state != v5[5])
  {
    goto LABEL_22;
  }

  v13 = v5[6];
  v9 = self->_identifier;
  v14 = v13;
  v11 = v14;
  if (v9 != v14)
  {
    if (v9 && v14)
    {
      v15 = [(NSString *)v9 isEqualToString:v14];

      if (v15)
      {
        goto LABEL_25;
      }

LABEL_22:
      v16 = 0;
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_25:
  paymentsToDateAmount = self->_paymentsToDateAmount;
  v19 = v5[7];
  if (paymentsToDateAmount && v19)
  {
    v16 = [(NSDecimalNumber *)paymentsToDateAmount isEqual:?];
  }

  else
  {
    v16 = paymentsToDateAmount == v19;
  }

LABEL_23:

  return v16;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_itemDescription];
  [v3 safelyAddObject:self->_paymentsToDateAmount];
  [v3 safelyAddObject:self->_identifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_duration - v5 + 32 * v5;
  v7 = self->_state - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"type: '%ld'; ", self->_type];
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@"duration: '%lu'; ", self->_duration];
  [v3 appendFormat:@"itemDescription: '%@'; ", self->_itemDescription];
  [v3 appendFormat:@"state: '%ld'; ", self->_state];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"paymentsToDateAmount: '%@'; ", self->_paymentsToDateAmount];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKCreditInstallmentPlanLineItem)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKCreditInstallmentPlanLineItem;
  v5 = [(PKCreditInstallmentPlanLineItem *)&v15 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v5->_duration = [v4 decodeIntegerForKey:@"duration"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = v8;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentsToDateAmount"];
    paymentsToDateAmount = v5->_paymentsToDateAmount;
    v5->_paymentsToDateAmount = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
  [v5 encodeInteger:self->_duration forKey:@"duration"];
  [v5 encodeObject:self->_itemDescription forKey:@"description"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_paymentsToDateAmount forKey:@"paymentsToDateAmount"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_type;
  v6 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[3] = self->_duration;
  v8 = [(NSString *)self->_itemDescription copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v5[5] = self->_state;
  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSDecimalNumber *)self->_paymentsToDateAmount copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  return v5;
}

@end