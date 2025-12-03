@interface PKTransactionAmount
- (BOOL)isEqual:(id)equal;
- (PKTransactionAmount)initWithCoder:(id)coder;
- (PKTransactionAmount)initWithCurrencyAmount:(id)amount label:(id)label;
- (PKTransactionAmount)initWithCurrencyAmount:(id)amount label:(id)label unitIdentifier:(id)identifier;
- (PKTransactionAmount)initWithDictionary:(id)dictionary;
- (PKTransactionAmount)initWithPendingCurrencyAmount:(id)amount unitIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionAmount

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKTransactionAmount allocWithZone:](PKTransactionAmount init];
  v6 = [(PKCurrencyAmount *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSString *)self->_label copyWithZone:zone];
  label = v5->_label;
  v5->_label = v8;

  v5->_pending = self->_pending;
  v10 = [(NSString *)self->_unitIdentifier copyWithZone:zone];
  unitIdentifier = v5->_unitIdentifier;
  v5->_unitIdentifier = v10;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeObject:amount forKey:@"amount"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeBool:self->_pending forKey:@"pending"];
  [coderCopy encodeObject:self->_unitIdentifier forKey:@"unitIdentifier"];
}

- (PKTransactionAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransactionAmount;
  v5 = [(PKTransactionAmount *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v5->_pending = [coderCopy decodeBoolForKey:@"pending"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unitIdentifier"];
    unitIdentifier = v5->_unitIdentifier;
    v5->_unitIdentifier = v10;
  }

  return v5;
}

- (PKTransactionAmount)initWithCurrencyAmount:(id)amount label:(id)label
{
  amountCopy = amount;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = PKTransactionAmount;
  v9 = [(PKTransactionAmount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_amount, amount);
    objc_storeStrong(&v10->_label, label);
    v10->_pending = 0;
  }

  return v10;
}

- (PKTransactionAmount)initWithCurrencyAmount:(id)amount label:(id)label unitIdentifier:(id)identifier
{
  amountCopy = amount;
  labelCopy = label;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PKTransactionAmount;
  v12 = [(PKTransactionAmount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_amount, amount);
    objc_storeStrong(&v13->_label, label);
    objc_storeStrong(&v13->_unitIdentifier, identifier);
    v13->_pending = 0;
  }

  return v13;
}

- (PKTransactionAmount)initWithPendingCurrencyAmount:(id)amount unitIdentifier:(id)identifier
{
  amountCopy = amount;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PKTransactionAmount;
  v9 = [(PKTransactionAmount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_amount, amount);
    v10->_pending = 1;
    objc_storeStrong(&v10->_unitIdentifier, identifier);
  }

  return v10;
}

- (PKTransactionAmount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKDecimalNumberForKey:@"amount"];
  if (!v5)
  {
    v5 = [dictionaryCopy PKDecimalNumberForKey:@"value"];
  }

  v6 = [dictionaryCopy PKStringForKey:@"currency"];
  if (!v6)
  {
    v6 = [dictionaryCopy PKStringForKey:@"currencyCode"];
  }

  v7 = [dictionaryCopy PKIntegerForKey:@"exponent"];
  v8 = [dictionaryCopy PKStringForKey:@"label"];
  if (!v8)
  {
    v8 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
  }

  v9 = [dictionaryCopy PKBoolForKey:@"pending"];
  v10 = [dictionaryCopy PKStringForKey:@"unitIdentifier"];
  v11 = [PKCurrencyAmount alloc];
  v12 = v11;
  if (v9)
  {
    v13 = PKLocalizedPaymentString(&cfstr_TransactionPen.isa, 0);
    v14 = [(PKCurrencyAmount *)v12 initWithAmount:v5 exponent:v7 preformattedString:v13];

    v15 = [(PKTransactionAmount *)self initWithPendingCurrencyAmount:v14 unitIdentifier:v10];
  }

  else
  {
    v14 = [(PKCurrencyAmount *)v11 initWithAmount:v5 currency:v6 exponent:v7];
    v15 = [(PKTransactionAmount *)self initWithCurrencyAmount:v14 label:v8];
  }

  v16 = v15;

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_pending)
  {
    unitIdentifier = self->_unitIdentifier;
    formattedStringValue = [(PKCurrencyAmount *)self->_amount formattedStringValue];
    [v3 stringWithFormat:@"Pending, Unit Identifier: %@, Amount: %@", unitIdentifier, formattedStringValue];
  }

  else
  {
    formattedStringValue = [(PKCurrencyAmount *)self->_amount formattedStringValue];
    [v3 stringWithFormat:@"Amount: %@, Label: %@", formattedStringValue, self->_label];
  }
  v6 = ;

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  amount = [(PKCurrencyAmount *)self->_amount amount];
  [v3 setObject:amount forKeyedSubscript:@"amount"];

  currency = [(PKCurrencyAmount *)self->_amount currency];
  [v3 setObject:currency forKeyedSubscript:@"currency"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKCurrencyAmount exponent](self->_amount, "exponent")}];
  [v3 setObject:v6 forKeyedSubscript:@"exponent"];

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKeyedSubscript:@"label"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:null forKeyedSubscript:@"label"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_pending];
  [v3 setObject:v9 forKeyedSubscript:@"pending"];

  unitIdentifier = self->_unitIdentifier;
  if (unitIdentifier)
  {
    [v3 setObject:unitIdentifier forKeyedSubscript:@"unitIdentifier"];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:null2 forKeyedSubscript:@"unitIdentifier"];
  }

  v12 = [v3 copy];

  return v12;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_amount];
  [array safelyAddObject:self->_label];
  [array safelyAddObject:self->_unitIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_pending - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  amount = self->_amount;
  amount = [equalCopy amount];
  v7 = amount;
  if (amount)
  {
    v8 = amount == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (amount == amount)
    {
      goto LABEL_9;
    }
  }

  else if ([(PKCurrencyAmount *)amount isEqual:amount])
  {
LABEL_9:
    label = self->_label;
    label = [equalCopy label];
    v13 = label;
    v14 = label;
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      if (!v13 || !v14)
      {

        goto LABEL_21;
      }

      v16 = [(NSString *)v13 isEqualToString:v14];

      if (!v16)
      {
        v9 = 0;
LABEL_24:

        goto LABEL_25;
      }
    }

    unitIdentifier = self->_unitIdentifier;
    unitIdentifier = [equalCopy unitIdentifier];
    v13 = unitIdentifier;
    if (unitIdentifier && unitIdentifier)
    {
      if (([(NSString *)unitIdentifier isEqual:unitIdentifier]& 1) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (unitIdentifier == unitIdentifier)
    {
LABEL_22:
      pending = self->_pending;
      v9 = pending == [equalCopy isPending];
      goto LABEL_23;
    }

LABEL_21:
    v9 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v9 = 0;
LABEL_25:

  return v9;
}

@end