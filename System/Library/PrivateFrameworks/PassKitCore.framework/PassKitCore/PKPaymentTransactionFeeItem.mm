@interface PKPaymentTransactionFeeItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFeeItem:(id)a3;
- (PKPaymentTransactionFeeItem)initWithCoder:(id)a3;
- (PKPaymentTransactionFeeItem)initWithFeeDictionary:(id)a3;
- (id)description;
- (id)jsonDictionaryRepresentation;
- (unint64_t)hash;
- (void)_initWithFeeDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTransactionFeeItem

- (PKPaymentTransactionFeeItem)initWithFeeDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PKPaymentTransactionFeeItem;
    v5 = [(PKPaymentTransactionFeeItem *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(PKPaymentTransactionFeeItem *)v5 _initWithFeeDictionary:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_initWithFeeDictionary:(id)a3
{
  v15 = a3;
  v4 = [v15 objectForKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v4;

  v6 = [v15 objectForKey:@"type"];
  self->_type = PKPaymentTransactionFeeItemTypeFromString(v6);

  v7 = [v15 PKDecimalNumberFromStringForKey:@"amount"];
  v8 = [v15 objectForKey:@"currencyCode"];
  if (v7)
  {
    v9 = [MEMORY[0x1E696AB90] notANumber];
    v10 = [v7 isEqualToNumber:v9];

    if ((v10 & 1) == 0)
    {
      if (v8)
      {
        v11 = [[PKCurrencyAmount alloc] initWithAmount:v7 currency:v8 exponent:0];
        currencyAmount = self->_currencyAmount;
        self->_currencyAmount = v11;
      }
    }
  }

  v13 = [v15 objectForKey:@"localizedDisplayName"];
  localizedDisplayName = self->_localizedDisplayName;
  self->_localizedDisplayName = v13;
}

- (id)jsonDictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  currencyAmount = self->_currencyAmount;
  if (currencyAmount)
  {
    v7 = [(PKCurrencyAmount *)currencyAmount currency];
    v8 = [(PKCurrencyAmount *)self->_currencyAmount amount];
    if (v7)
    {
      [v4 setObject:v7 forKey:@"currencyCode"];
    }

    if (v8)
    {
      v9 = [v8 stringValue];
      [v4 setObject:v9 forKey:@"amount"];
    }
  }

  localizedDisplayName = self->_localizedDisplayName;
  if (localizedDisplayName)
  {
    [v4 setObject:localizedDisplayName forKey:@"localizedDisplayName"];
  }

  type = self->_type;
  if (type <= 2)
  {
    if (type == 1)
    {
      v12 = @"creditCard";
      goto LABEL_23;
    }

    if (type == 2)
    {
      v12 = @"foreignTransaction";
      goto LABEL_23;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v12 = @"serviceCharge";
        goto LABEL_23;
      case 4:
        v12 = @"instantWithdrawal";
        goto LABEL_23;
      case 100:
        v12 = @"other";
        goto LABEL_23;
    }
  }

  v12 = @"unknown";
LABEL_23:
  [v4 setObject:v12 forKey:@"type"];
  v13 = [v4 copy];

  return v13;
}

- (PKPaymentTransactionFeeItem)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionFeeItem;
  v5 = [(PKPaymentTransactionFeeItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentTransactionFeeItemTypeFromString(v10);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  type = self->_type;
  if (type <= 2)
  {
    if (type == 1)
    {
      v5 = @"creditCard";
      goto LABEL_13;
    }

    if (type == 2)
    {
      v5 = @"foreignTransaction";
      goto LABEL_13;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v5 = @"serviceCharge";
        goto LABEL_13;
      case 4:
        v5 = @"instantWithdrawal";
        goto LABEL_13;
      case 100:
        v5 = @"other";
        goto LABEL_13;
    }
  }

  v5 = @"unknown";
LABEL_13:
  [v6 encodeObject:v5 forKey:@"type"];
  [v6 encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_currencyAmount];
  [v3 safelyAddObject:self->_localizedDisplayName];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionFeeItem *)self isEqualToFeeItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToFeeItem:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_19;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

  currencyAmount = self->_currencyAmount;
  v9 = v4[3];
  if (currencyAmount && v9)
  {
    if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
    {
      goto LABEL_19;
    }
  }

  else if (currencyAmount != v9)
  {
    goto LABEL_19;
  }

  localizedDisplayName = self->_localizedDisplayName;
  v11 = v4[4];
  if (!localizedDisplayName || !v11)
  {
    if (localizedDisplayName == v11)
    {
      goto LABEL_17;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (([(NSString *)localizedDisplayName isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v12 = self->_type == v4[2];
LABEL_20:

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  type = self->_type;
  if (type <= 2)
  {
    if (type == 1)
    {
      v5 = @"creditCard";
      goto LABEL_13;
    }

    if (type == 2)
    {
      v5 = @"foreignTransaction";
      goto LABEL_13;
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v5 = @"serviceCharge";
        goto LABEL_13;
      case 4:
        v5 = @"instantWithdrawal";
        goto LABEL_13;
      case 100:
        v5 = @"other";
        goto LABEL_13;
    }
  }

  v5 = @"unknown";
LABEL_13:
  [v3 appendFormat:@"type: '%@'; ", v5];
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v3 appendFormat:@"localizedDisplayName: '%@'; ", self->_localizedDisplayName];
  [v3 appendFormat:@">"];

  return v3;
}

@end