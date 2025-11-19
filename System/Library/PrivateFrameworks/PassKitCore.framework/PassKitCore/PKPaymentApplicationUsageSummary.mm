@interface PKPaymentApplicationUsageSummary
- (PKPaymentApplicationUsageSummary)initWithCoder:(id)a3;
- (PKPaymentApplicationUsageSummary)initWithPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 lastUsed:(id)a5 lastUsedTransaction:(id)a6;
- (id)_databaseInit;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithSummary:(id)a3;
@end

@implementation PKPaymentApplicationUsageSummary

- (id)_databaseInit
{
  v4.receiver = self;
  v4.super_class = PKPaymentApplicationUsageSummary;
  v2 = [(PKPaymentApplicationUsageSummary *)&v4 init];

  return v2;
}

- (PKPaymentApplicationUsageSummary)initWithPassUniqueIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 lastUsed:(id)a5 lastUsedTransaction:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PKPaymentApplicationUsageSummary;
  v15 = [(PKPaymentApplicationUsageSummary *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_passUniqueIdentifier, a3);
    objc_storeStrong(&v16->_paymentApplicationIdentifier, a4);
    objc_storeStrong(&v16->_lastUsed, a5);
    objc_storeStrong(&v16->_lastUsedTransaction, a6);
  }

  return v16;
}

- (void)updateWithSummary:(id)a3
{
  v10 = a3;
  v4 = [v10 lastUsed];
  if (v4)
  {
    lastUsed = self->_lastUsed;
    if (lastUsed)
    {
      v6 = [(NSDate *)lastUsed laterDate:v4];
      [(PKPaymentApplicationUsageSummary *)self setLastUsed:v6];
    }

    else
    {
      [(PKPaymentApplicationUsageSummary *)self setLastUsed:v4];
    }
  }

  v7 = [v10 lastUsedTransaction];
  if (v7)
  {
    lastUsedTransaction = self->_lastUsedTransaction;
    if (lastUsedTransaction)
    {
      v9 = [(NSDate *)lastUsedTransaction laterDate:v7];
      [(PKPaymentApplicationUsageSummary *)self setLastUsedTransaction:v9];
    }

    else
    {
      [(PKPaymentApplicationUsageSummary *)self setLastUsedTransaction:v7];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_paymentApplicationIdentifier forKey:@"paymentApplicationIdentifier"];
  [v5 encodeObject:self->_lastUsed forKey:@"lastUsed"];
  [v5 encodeObject:self->_lastUsedTransaction forKey:@"lastUsedTransaction"];
}

- (PKPaymentApplicationUsageSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPaymentApplicationUsageSummary;
  v5 = [(PKPaymentApplicationUsageSummary *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    paymentApplicationIdentifier = v5->_paymentApplicationIdentifier;
    v5->_paymentApplicationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
    lastUsed = v5->_lastUsed;
    v5->_lastUsed = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedTransaction"];
    lastUsedTransaction = v5->_lastUsedTransaction;
    v5->_lastUsedTransaction = v12;
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
  [v6 appendFormat:@"lastUsed: '%@'; ", self->_lastUsed];
  [v6 appendFormat:@"lastUsedTransaction: '%@'; ", self->_lastUsedTransaction];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

@end