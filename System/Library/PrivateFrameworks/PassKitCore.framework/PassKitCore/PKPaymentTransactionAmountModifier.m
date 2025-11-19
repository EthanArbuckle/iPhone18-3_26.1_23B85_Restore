@interface PKPaymentTransactionAmountModifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentTransactionAmountModifier:(id)a3;
- (PKPaymentTransactionAmountModifier)initWithCoder:(id)a3;
- (PKPaymentTransactionAmountModifier)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setTypeString:(id)a3;
@end

@implementation PKPaymentTransactionAmountModifier

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentTransactionAmountModifier allocWithZone:](PKPaymentTransactionAmountModifier init];
  v6 = [(NSString *)self->_typeString copyWithZone:a3];
  typeString = v5->_typeString;
  v5->_typeString = v6;

  v5->_type = self->_type;
  v8 = [(NSString *)self->_modifierDescription copyWithZone:a3];
  modifierDescription = v5->_modifierDescription;
  v5->_modifierDescription = v8;

  v5->_order = self->_order;
  v10 = [(PKTransactionAmount *)self->_amount copyWithZone:a3];
  amount = v5->_amount;
  v5->_amount = v10;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  typeString = self->_typeString;
  v5 = a3;
  [v5 encodeObject:typeString forKey:@"type"];
  [v5 encodeObject:self->_modifierDescription forKey:@"description"];
  [v5 encodeInteger:self->_order forKey:@"order"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
}

- (PKPaymentTransactionAmountModifier)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionAmountModifier;
  v5 = [(PKPaymentTransactionAmountModifier *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    typeString = v5->_typeString;
    v5->_typeString = v6;

    v5->_type = PKPaymentTransactionAmountModifierTypeFromString(v5->_typeString);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    modifierDescription = v5->_modifierDescription;
    v5->_modifierDescription = v8;

    v5->_order = [v4 decodeIntegerForKey:@"order"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v10;
  }

  return v5;
}

- (PKPaymentTransactionAmountModifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionAmountModifier;
  v5 = [(PKPaymentTransactionAmountModifier *)&v14 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    typeString = v5->_typeString;
    v5->_typeString = v6;

    v5->_type = PKPaymentTransactionAmountModifierTypeFromString(v5->_typeString);
    v8 = [v4 PKStringForKey:@"description"];
    modifierDescription = v5->_modifierDescription;
    v5->_modifierDescription = v8;

    v5->_order = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [v4 PKDictionaryForKey:@"amount"];
    v11 = [[PKTransactionAmount alloc] initWithDictionary:v10];
    amount = v5->_amount;
    v5->_amount = v11;
  }

  return v5;
}

- (void)setTypeString:(id)a3
{
  objc_storeStrong(&self->_typeString, a3);
  v5 = a3;
  v6 = PKPaymentTransactionAmountModifierTypeFromString(self->_typeString);

  self->_type = v6;
}

- (void)setType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"discount";
  }

  else
  {
    v3 = @"unknown";
  }

  [(PKPaymentTransactionAmountModifier *)self setTypeString:v3];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_typeString forKeyedSubscript:@"type"];
  [v3 setObject:self->_modifierDescription forKeyedSubscript:@"description"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_order];
  [v3 setObject:v4 forKeyedSubscript:@"order"];

  v5 = [(PKTransactionAmount *)self->_amount dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"amount"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_typeString];
  [v3 safelyAddObject:self->_modifierDescription];
  [v3 safelyAddObject:self->_amount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_order - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionAmountModifier *)self isEqualToPaymentTransactionAmountModifier:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentTransactionAmountModifier:(id)a3
{
  v4 = a3;
  v5 = v4[5];
  v6 = self->_typeString;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = v4[4];
  v6 = self->_modifierDescription;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

    goto LABEL_16;
  }

  if (!v6 || !v12)
  {
LABEL_14:

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v13 = [(NSString *)v6 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (self->_order != v4[2] || self->_type != v4[1])
  {
    goto LABEL_21;
  }

  amount = self->_amount;
  v15 = v4[3];
  if (amount && v15)
  {
    v16 = [(PKTransactionAmount *)amount isEqual:?];
  }

  else
  {
    v16 = amount == v15;
  }

LABEL_22:

  return v16;
}

@end