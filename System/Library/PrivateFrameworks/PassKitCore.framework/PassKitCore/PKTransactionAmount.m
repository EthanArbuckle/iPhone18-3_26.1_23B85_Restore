@interface PKTransactionAmount
- (BOOL)isEqual:(id)a3;
- (PKTransactionAmount)initWithCoder:(id)a3;
- (PKTransactionAmount)initWithCurrencyAmount:(id)a3 label:(id)a4;
- (PKTransactionAmount)initWithCurrencyAmount:(id)a3 label:(id)a4 unitIdentifier:(id)a5;
- (PKTransactionAmount)initWithDictionary:(id)a3;
- (PKTransactionAmount)initWithPendingCurrencyAmount:(id)a3 unitIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransactionAmount

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKTransactionAmount allocWithZone:](PKTransactionAmount init];
  v6 = [(PKCurrencyAmount *)self->_amount copyWithZone:a3];
  amount = v5->_amount;
  v5->_amount = v6;

  v8 = [(NSString *)self->_label copyWithZone:a3];
  label = v5->_label;
  v5->_label = v8;

  v5->_pending = self->_pending;
  v10 = [(NSString *)self->_unitIdentifier copyWithZone:a3];
  unitIdentifier = v5->_unitIdentifier;
  v5->_unitIdentifier = v10;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v5 = a3;
  [v5 encodeObject:amount forKey:@"amount"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeBool:self->_pending forKey:@"pending"];
  [v5 encodeObject:self->_unitIdentifier forKey:@"unitIdentifier"];
}

- (PKTransactionAmount)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKTransactionAmount;
  v5 = [(PKTransactionAmount *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v5->_pending = [v4 decodeBoolForKey:@"pending"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unitIdentifier"];
    unitIdentifier = v5->_unitIdentifier;
    v5->_unitIdentifier = v10;
  }

  return v5;
}

- (PKTransactionAmount)initWithCurrencyAmount:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKTransactionAmount;
  v9 = [(PKTransactionAmount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_amount, a3);
    objc_storeStrong(&v10->_label, a4);
    v10->_pending = 0;
  }

  return v10;
}

- (PKTransactionAmount)initWithCurrencyAmount:(id)a3 label:(id)a4 unitIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKTransactionAmount;
  v12 = [(PKTransactionAmount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_amount, a3);
    objc_storeStrong(&v13->_label, a4);
    objc_storeStrong(&v13->_unitIdentifier, a5);
    v13->_pending = 0;
  }

  return v13;
}

- (PKTransactionAmount)initWithPendingCurrencyAmount:(id)a3 unitIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKTransactionAmount;
  v9 = [(PKTransactionAmount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_amount, a3);
    v10->_pending = 1;
    objc_storeStrong(&v10->_unitIdentifier, a4);
  }

  return v10;
}

- (PKTransactionAmount)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKDecimalNumberForKey:@"amount"];
  if (!v5)
  {
    v5 = [v4 PKDecimalNumberForKey:@"value"];
  }

  v6 = [v4 PKStringForKey:@"currency"];
  if (!v6)
  {
    v6 = [v4 PKStringForKey:@"currencyCode"];
  }

  v7 = [v4 PKIntegerForKey:@"exponent"];
  v8 = [v4 PKStringForKey:@"label"];
  if (!v8)
  {
    v8 = [v4 PKStringForKey:@"localizedTitle"];
  }

  v9 = [v4 PKBoolForKey:@"pending"];
  v10 = [v4 PKStringForKey:@"unitIdentifier"];
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
    v5 = [(PKCurrencyAmount *)self->_amount formattedStringValue];
    [v3 stringWithFormat:@"Pending, Unit Identifier: %@, Amount: %@", unitIdentifier, v5];
  }

  else
  {
    v5 = [(PKCurrencyAmount *)self->_amount formattedStringValue];
    [v3 stringWithFormat:@"Amount: %@, Label: %@", v5, self->_label];
  }
  v6 = ;

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKCurrencyAmount *)self->_amount amount];
  [v3 setObject:v4 forKeyedSubscript:@"amount"];

  v5 = [(PKCurrencyAmount *)self->_amount currency];
  [v3 setObject:v5 forKeyedSubscript:@"currency"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKCurrencyAmount exponent](self->_amount, "exponent")}];
  [v3 setObject:v6 forKeyedSubscript:@"exponent"];

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKeyedSubscript:@"label"];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v8 forKeyedSubscript:@"label"];
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
    v11 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v11 forKeyedSubscript:@"unitIdentifier"];
  }

  v12 = [v3 copy];

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_label];
  [v3 safelyAddObject:self->_unitIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_pending - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  amount = self->_amount;
  v6 = [v4 amount];
  v7 = v6;
  if (amount)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (amount == v6)
    {
      goto LABEL_9;
    }
  }

  else if ([(PKCurrencyAmount *)amount isEqual:v6])
  {
LABEL_9:
    label = self->_label;
    v12 = [v4 label];
    v13 = label;
    v14 = v12;
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
    v18 = [v4 unitIdentifier];
    v13 = v18;
    if (unitIdentifier && v18)
    {
      if (([(NSString *)unitIdentifier isEqual:v18]& 1) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (unitIdentifier == v18)
    {
LABEL_22:
      pending = self->_pending;
      v9 = pending == [v4 isPending];
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