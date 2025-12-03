@interface PKPaymentTransactionFeeItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFeeItem:(id)item;
- (PKPaymentTransactionFeeItem)initWithCoder:(id)coder;
- (PKPaymentTransactionFeeItem)initWithFeeDictionary:(id)dictionary;
- (id)description;
- (id)jsonDictionaryRepresentation;
- (unint64_t)hash;
- (void)_initWithFeeDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionFeeItem

- (PKPaymentTransactionFeeItem)initWithFeeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v9.receiver = self;
    v9.super_class = PKPaymentTransactionFeeItem;
    v5 = [(PKPaymentTransactionFeeItem *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(PKPaymentTransactionFeeItem *)v5 _initWithFeeDictionary:dictionaryCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initWithFeeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v4;

  v6 = [dictionaryCopy objectForKey:@"type"];
  self->_type = PKPaymentTransactionFeeItemTypeFromString(v6);

  v7 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amount"];
  v8 = [dictionaryCopy objectForKey:@"currencyCode"];
  if (v7)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v10 = [v7 isEqualToNumber:notANumber];

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

  v13 = [dictionaryCopy objectForKey:@"localizedDisplayName"];
  localizedDisplayName = self->_localizedDisplayName;
  self->_localizedDisplayName = v13;
}

- (id)jsonDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  currencyAmount = self->_currencyAmount;
  if (currencyAmount)
  {
    currency = [(PKCurrencyAmount *)currencyAmount currency];
    amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
    if (currency)
    {
      [v4 setObject:currency forKey:@"currencyCode"];
    }

    if (amount)
    {
      stringValue = [amount stringValue];
      [v4 setObject:stringValue forKey:@"amount"];
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

- (PKPaymentTransactionFeeItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionFeeItem;
  v5 = [(PKPaymentTransactionFeeItem *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPaymentTransactionFeeItemTypeFromString(v10);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
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
  [coderCopy encodeObject:v5 forKey:@"type"];
  [coderCopy encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_currencyAmount];
  [array safelyAddObject:self->_localizedDisplayName];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionFeeItem *)self isEqualToFeeItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToFeeItem:(id)item
{
  itemCopy = item;
  identifier = self->_identifier;
  v6 = itemCopy[1];
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
  v9 = itemCopy[3];
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
  v11 = itemCopy[4];
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
  v12 = self->_type == itemCopy[2];
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