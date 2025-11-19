@interface PKPassTransactionActivitySummary
- (PKPassTransactionActivitySummary)initWithCoder:(id)a3;
- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 subcredentialIdentifier:(id)a5 lastUsed:(id)a6 presentmentType:(unint64_t)a7;
- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 subcredentialIdentifier:(id)a5 pass:(id)a6 state:(id)a7;
- (id)_databaseInit;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithPassTransactionActivitySummary:(id)a3;
@end

@implementation PKPassTransactionActivitySummary

- (id)_databaseInit
{
  v4.receiver = self;
  v4.super_class = PKPassTransactionActivitySummary;
  v2 = [(PKPassTransactionActivitySummary *)&v4 init];

  return v2;
}

- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 subcredentialIdentifier:(id)a5 pass:(id)a6 state:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  if ([v12 cardType] == 3)
  {
    if ([v12 accessType] == 3 || objc_msgSend(v12, "accessType") == 4)
    {
      if (([v13 standaloneTransactionType] - 1) >= 2)
      {
        v17 = 2;
      }

      else
      {
        v17 = 4;
      }
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E695DF00] now];
  v19 = [(PKPassTransactionActivitySummary *)self initWithPassUniqueIdentifier:v16 paymentApplicationIdentifier:v15 subcredentialIdentifier:v14 lastUsed:v18 presentmentType:v17];

  return v19;
}

- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 subcredentialIdentifier:(id)a5 lastUsed:(id)a6 presentmentType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = PKPassTransactionActivitySummary;
  v17 = [(PKPassTransactionActivitySummary *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passUniqueIdentifier, a3);
    objc_storeStrong(&v18->_paymentApplicationIdentifier, a4);
    objc_storeStrong(&v18->_subcredentialIdentifier, a5);
    objc_storeStrong(&v18->_lastUsed, a6);
    v18->_presentmentType = a7;
  }

  return v18;
}

- (void)updateWithPassTransactionActivitySummary:(id)a3
{
  v4 = [a3 lastUsed];
  if (v4)
  {
    lastUsed = self->_lastUsed;
    v7 = v4;
    if (lastUsed)
    {
      v6 = [(NSDate *)lastUsed laterDate:v4];
      [(PKPassTransactionActivitySummary *)self setLastUsed:v6];
    }

    else
    {
      [(PKPassTransactionActivitySummary *)self setLastUsed:v4];
    }

    v4 = v7;
  }
}

- (void)encodeWithCoder:(id)a3
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_paymentApplicationIdentifier forKey:@"paymentApplicationIdentifier"];
  [v5 encodeObject:self->_subcredentialIdentifier forKey:@"subcredentialIdentifier"];
  [v5 encodeObject:self->_lastUsed forKey:@"lastUsed"];
  [v5 encodeInteger:self->_presentmentType forKey:@"presentmentType"];
}

- (PKPassTransactionActivitySummary)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPassTransactionActivitySummary;
  v5 = [(PKPassTransactionActivitySummary *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    paymentApplicationIdentifier = v5->_paymentApplicationIdentifier;
    v5->_paymentApplicationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
    lastUsed = v5->_lastUsed;
    v5->_lastUsed = v12;

    v5->_presentmentType = [v4 decodeIntegerForKey:@"presentmentType"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  [v6 appendFormat:@"paymentApplicationIdentifier: '%@'; ", self->_paymentApplicationIdentifier];
  [v6 appendFormat:@"subcredentialIdentifier: '%@'; ", self->_subcredentialIdentifier];
  [v6 appendFormat:@"lastUsed: '%@'; ", self->_lastUsed];
  [v6 appendFormat:@"presentmentType: '%ld'; ", self->_presentmentType];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  [v6 appendFormat:@"paymentApplicationIdentifier: '%@'; ", self->_paymentApplicationIdentifier];
  [v6 appendFormat:@"subcredentialIdentifier: '%@'; ", self->_subcredentialIdentifier];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

@end