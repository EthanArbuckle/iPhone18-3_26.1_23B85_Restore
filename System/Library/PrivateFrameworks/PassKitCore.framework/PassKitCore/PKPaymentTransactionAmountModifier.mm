@interface PKPaymentTransactionAmountModifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentTransactionAmountModifier:(id)modifier;
- (PKPaymentTransactionAmountModifier)initWithCoder:(id)coder;
- (PKPaymentTransactionAmountModifier)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int64_t)type;
- (void)setTypeString:(id)string;
@end

@implementation PKPaymentTransactionAmountModifier

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentTransactionAmountModifier allocWithZone:](PKPaymentTransactionAmountModifier init];
  v6 = [(NSString *)self->_typeString copyWithZone:zone];
  typeString = v5->_typeString;
  v5->_typeString = v6;

  v5->_type = self->_type;
  v8 = [(NSString *)self->_modifierDescription copyWithZone:zone];
  modifierDescription = v5->_modifierDescription;
  v5->_modifierDescription = v8;

  v5->_order = self->_order;
  v10 = [(PKTransactionAmount *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v10;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  typeString = self->_typeString;
  coderCopy = coder;
  [coderCopy encodeObject:typeString forKey:@"type"];
  [coderCopy encodeObject:self->_modifierDescription forKey:@"description"];
  [coderCopy encodeInteger:self->_order forKey:@"order"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
}

- (PKPaymentTransactionAmountModifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentTransactionAmountModifier;
  v5 = [(PKPaymentTransactionAmountModifier *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    typeString = v5->_typeString;
    v5->_typeString = v6;

    v5->_type = PKPaymentTransactionAmountModifierTypeFromString(v5->_typeString);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    modifierDescription = v5->_modifierDescription;
    v5->_modifierDescription = v8;

    v5->_order = [coderCopy decodeIntegerForKey:@"order"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v10;
  }

  return v5;
}

- (PKPaymentTransactionAmountModifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionAmountModifier;
  v5 = [(PKPaymentTransactionAmountModifier *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    typeString = v5->_typeString;
    v5->_typeString = v6;

    v5->_type = PKPaymentTransactionAmountModifierTypeFromString(v5->_typeString);
    v8 = [dictionaryCopy PKStringForKey:@"description"];
    modifierDescription = v5->_modifierDescription;
    v5->_modifierDescription = v8;

    v5->_order = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [dictionaryCopy PKDictionaryForKey:@"amount"];
    v11 = [[PKTransactionAmount alloc] initWithDictionary:v10];
    amount = v5->_amount;
    v5->_amount = v11;
  }

  return v5;
}

- (void)setTypeString:(id)string
{
  objc_storeStrong(&self->_typeString, string);
  stringCopy = string;
  v6 = PKPaymentTransactionAmountModifierTypeFromString(self->_typeString);

  self->_type = v6;
}

- (void)setType:(int64_t)type
{
  if (type == 1)
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

  dictionaryRepresentation = [(PKTransactionAmount *)self->_amount dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"amount"];

  return v3;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_typeString];
  [array safelyAddObject:self->_modifierDescription];
  [array safelyAddObject:self->_amount];
  v4 = PKCombinedHash(17, array);
  v5 = self->_order - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionAmountModifier *)self isEqualToPaymentTransactionAmountModifier:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentTransactionAmountModifier:(id)modifier
{
  modifierCopy = modifier;
  v5 = modifierCopy[5];
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

  v11 = modifierCopy[4];
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
  if (self->_order != modifierCopy[2] || self->_type != modifierCopy[1])
  {
    goto LABEL_21;
  }

  amount = self->_amount;
  v15 = modifierCopy[3];
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