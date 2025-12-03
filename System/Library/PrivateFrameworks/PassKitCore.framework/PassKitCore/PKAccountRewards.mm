@interface PKAccountRewards
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountEvent:(id)event;
- (NSString)description;
- (PKAccountRewards)initWithCoder:(id)coder;
- (PKAccountRewards)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountRewards

- (PKAccountRewards)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKAccountRewards;
  v5 = [(PKAccountRewards *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v10;

    v5->_statusCode = [coderCopy decodeIntegerForKey:@"statusCode"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewards"];
    rewards = v5->_rewards;
    v5->_rewards = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"transactionIdentifiers"];
    transactionIdentifiers = v5->_transactionIdentifiers;
    v5->_transactionIdentifiers = v17;

    v19 = [coderCopy decodeObjectOfClasses:v16 forKey:@"rewardsAddedIdentifiers"];
    rewardsAddedIdentifiers = v5->_rewardsAddedIdentifiers;
    v5->_rewardsAddedIdentifiers = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  [coderCopy encodeObject:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_statusCode forKey:@"statusCode"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_rewards forKey:@"rewards"];
  [coderCopy encodeObject:self->_transactionIdentifiers forKey:@"transactionIdentifiers"];
  [coderCopy encodeObject:self->_rewardsAddedIdentifiers forKey:@"rewardsAddedIdentifiers"];
}

- (PKAccountRewards)initWithRecord:(id)record
{
  recordCopy = record;
  v31.receiver = self;
  v31.super_class = PKAccountRewards;
  v5 = [(PKAccountRewards *)&v31 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [recordCopy pk_encryptedStringForKey:@"currencyCode"];
    v9 = [recordCopy pk_encryptedDecimalNumberForKey:@"amount"];
    v10 = v9;
    if (v9 && v8)
    {
      v11 = PKCurrencyAmountCreate(v9, v8, 0);
      currencyAmount = v5->_currencyAmount;
      v5->_currencyAmount = v11;
    }

    v13 = [recordCopy pk_encryptedStringForKey:@"status"];
    status = v5->_status;
    v5->_status = v13;

    v5->_statusCode = [recordCopy pk_encryptedIntForKey:@"statusCode"];
    v15 = [recordCopy pk_encryptedStringForKey:@"type"];
    v5->_type = PKAccountRewardRedemptionTypeFromString(v15);

    v16 = [PKPaymentTransactionRewards alloc];
    v17 = [recordCopy pk_encryptedStringForKey:@"rewards"];
    v18 = [(PKPaymentTransactionRewards *)v16 initWithJsonString:v17];
    rewards = v5->_rewards;
    v5->_rewards = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v22 = [recordCopy pk_encryptedArrayOfClasses:v21 forKey:@"transactionIdentifiers"];
    v23 = [v20 setWithArray:v22];
    transactionIdentifiers = v5->_transactionIdentifiers;
    v5->_transactionIdentifiers = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v27 = [recordCopy pk_encryptedArrayOfClasses:v26 forKey:@"rewardsAddedIdentifiers"];
    v28 = [v25 setWithArray:v27];
    rewardsAddedIdentifiers = v5->_rewardsAddedIdentifiers;
    v5->_rewardsAddedIdentifiers = v28;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  [encryptedValues setObject:self->_identifier forKey:@"identifier"];
  amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
  stringValue = [amount stringValue];
  [encryptedValues setObject:stringValue forKey:@"amount"];

  currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
  [encryptedValues setObject:currency forKey:@"currencyCode"];

  [encryptedValues setObject:self->_status forKey:@"status"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_statusCode];
  [encryptedValues setObject:v7 forKey:@"statusCode"];

  v8 = PKAccountRewardRedemptionTypeToString(self->_type);
  [encryptedValues setObject:v8 forKey:@"type"];

  jsonString = [(PKPaymentTransactionRewards *)self->_rewards jsonString];
  [encryptedValues setObject:jsonString forKey:@"rewards"];

  if (self->_transactionIdentifiers)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = MEMORY[0x1E696ACB0];
    allObjects = [(NSSet *)self->_transactionIdentifiers allObjects];
    v13 = [v11 dataWithJSONObject:allObjects options:0 error:0];
    v14 = [v10 initWithData:v13 encoding:4];

    [encryptedValues setObject:v14 forKey:@"transactionIdentifiers"];
  }

  if (self->_rewardsAddedIdentifiers)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = MEMORY[0x1E696ACB0];
    allObjects2 = [(NSSet *)self->_rewardsAddedIdentifiers allObjects];
    v18 = [v16 dataWithJSONObject:allObjects2 options:0 error:0];
    v19 = [v15 initWithData:v18 encoding:4];

    [encryptedValues setObject:v19 forKey:@"rewardsAddedIdentifiers"];
  }
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_currencyAmount];
  [array safelyAddObject:self->_status];
  [array safelyAddObject:self->_rewards];
  [array safelyAddObject:self->_transactionIdentifiers];
  [array safelyAddObject:self->_rewardsAddedIdentifiers];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_statusCode - v5 + 32 * v5;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountRewards *)self isEqualToAccountEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEvent:(id)event
{
  eventCopy = event;
  identifier = self->_identifier;
  v6 = eventCopy[1];
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
      goto LABEL_36;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

  currencyAmount = self->_currencyAmount;
  v9 = eventCopy[2];
  if (currencyAmount && v9)
  {
    if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
    {
      goto LABEL_36;
    }
  }

  else if (currencyAmount != v9)
  {
    goto LABEL_36;
  }

  status = self->_status;
  v11 = eventCopy[3];
  if (status && v11)
  {
    if (([(NSString *)status isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (status != v11)
  {
    goto LABEL_36;
  }

  rewards = self->_rewards;
  v13 = eventCopy[5];
  if (rewards && v13)
  {
    if (![(PKPaymentTransactionRewards *)rewards isEqual:?])
    {
      goto LABEL_36;
    }
  }

  else if (rewards != v13)
  {
    goto LABEL_36;
  }

  transactionIdentifiers = self->_transactionIdentifiers;
  v15 = eventCopy[7];
  if (transactionIdentifiers && v15)
  {
    if (([(NSSet *)transactionIdentifiers isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (transactionIdentifiers != v15)
  {
    goto LABEL_36;
  }

  rewardsAddedIdentifiers = self->_rewardsAddedIdentifiers;
  v17 = eventCopy[8];
  if (!rewardsAddedIdentifiers || !v17)
  {
    if (rewardsAddedIdentifiers == v17)
    {
      goto LABEL_34;
    }

LABEL_36:
    v18 = 0;
    goto LABEL_37;
  }

  if (([(NSSet *)rewardsAddedIdentifiers isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (self->_statusCode != eventCopy[4])
  {
    goto LABEL_36;
  }

  v18 = self->_type == eventCopy[6];
LABEL_37:

  return v18;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = [(PKCurrencyAmount *)self->_currencyAmount description];
  [v3 appendFormat:@"currencyAmount: '%@'; ", v4];

  v5 = PKAccountRewardRedemptionTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v5];

  v6 = [(NSString *)self->_status description];
  [v3 appendFormat:@"status: '%@'; ", v6];

  [v3 appendFormat:@"statusCode: '%lu'; ", self->_statusCode];
  v7 = [(PKPaymentTransactionRewards *)self->_rewards description];
  [v3 appendFormat:@"rewards: '%@'; ", v7];

  v8 = [(NSSet *)self->_rewardsAddedIdentifiers description];
  [v3 appendFormat:@"rewardsAddedIdentifier: '%@'; ", v8];

  v9 = [(NSSet *)self->_transactionIdentifiers description];
  [v3 appendFormat:@"transactionIdentifiers: '%@'; ", v9];

  [v3 appendFormat:@">"];

  return v3;
}

@end