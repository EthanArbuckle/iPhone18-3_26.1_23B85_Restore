@interface PKPaymentApplicationUsageSummary
- (PKPaymentApplicationUsageSummary)initWithCoder:(id)coder;
- (PKPaymentApplicationUsageSummary)initWithPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier lastUsed:(id)used lastUsedTransaction:(id)transaction;
- (id)_databaseInit;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithSummary:(id)summary;
@end

@implementation PKPaymentApplicationUsageSummary

- (id)_databaseInit
{
  v4.receiver = self;
  v4.super_class = PKPaymentApplicationUsageSummary;
  v2 = [(PKPaymentApplicationUsageSummary *)&v4 init];

  return v2;
}

- (PKPaymentApplicationUsageSummary)initWithPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier lastUsed:(id)used lastUsedTransaction:(id)transaction
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  usedCopy = used;
  transactionCopy = transaction;
  v18.receiver = self;
  v18.super_class = PKPaymentApplicationUsageSummary;
  v15 = [(PKPaymentApplicationUsageSummary *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_passUniqueIdentifier, identifier);
    objc_storeStrong(&v16->_paymentApplicationIdentifier, applicationIdentifier);
    objc_storeStrong(&v16->_lastUsed, used);
    objc_storeStrong(&v16->_lastUsedTransaction, transaction);
  }

  return v16;
}

- (void)updateWithSummary:(id)summary
{
  summaryCopy = summary;
  lastUsed = [summaryCopy lastUsed];
  if (lastUsed)
  {
    lastUsed = self->_lastUsed;
    if (lastUsed)
    {
      v6 = [(NSDate *)lastUsed laterDate:lastUsed];
      [(PKPaymentApplicationUsageSummary *)self setLastUsed:v6];
    }

    else
    {
      [(PKPaymentApplicationUsageSummary *)self setLastUsed:lastUsed];
    }
  }

  lastUsedTransaction = [summaryCopy lastUsedTransaction];
  if (lastUsedTransaction)
  {
    lastUsedTransaction = self->_lastUsedTransaction;
    if (lastUsedTransaction)
    {
      v9 = [(NSDate *)lastUsedTransaction laterDate:lastUsedTransaction];
      [(PKPaymentApplicationUsageSummary *)self setLastUsedTransaction:v9];
    }

    else
    {
      [(PKPaymentApplicationUsageSummary *)self setLastUsedTransaction:lastUsedTransaction];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_paymentApplicationIdentifier forKey:@"paymentApplicationIdentifier"];
  [coderCopy encodeObject:self->_lastUsed forKey:@"lastUsed"];
  [coderCopy encodeObject:self->_lastUsedTransaction forKey:@"lastUsedTransaction"];
}

- (PKPaymentApplicationUsageSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPaymentApplicationUsageSummary;
  v5 = [(PKPaymentApplicationUsageSummary *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    paymentApplicationIdentifier = v5->_paymentApplicationIdentifier;
    v5->_paymentApplicationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
    lastUsed = v5->_lastUsed;
    v5->_lastUsed = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedTransaction"];
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