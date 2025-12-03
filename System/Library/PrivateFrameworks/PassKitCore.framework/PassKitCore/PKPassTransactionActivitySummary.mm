@interface PKPassTransactionActivitySummary
- (PKPassTransactionActivitySummary)initWithCoder:(id)coder;
- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier subcredentialIdentifier:(id)subcredentialIdentifier lastUsed:(id)used presentmentType:(unint64_t)type;
- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier subcredentialIdentifier:(id)subcredentialIdentifier pass:(id)pass state:(id)state;
- (id)_databaseInit;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithPassTransactionActivitySummary:(id)summary;
@end

@implementation PKPassTransactionActivitySummary

- (id)_databaseInit
{
  v4.receiver = self;
  v4.super_class = PKPassTransactionActivitySummary;
  v2 = [(PKPassTransactionActivitySummary *)&v4 init];

  return v2;
}

- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier subcredentialIdentifier:(id)subcredentialIdentifier pass:(id)pass state:(id)state
{
  passCopy = pass;
  stateCopy = state;
  subcredentialIdentifierCopy = subcredentialIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  if ([passCopy cardType] == 3)
  {
    if ([passCopy accessType] == 3 || objc_msgSend(passCopy, "accessType") == 4)
    {
      if (([stateCopy standaloneTransactionType] - 1) >= 2)
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
  v19 = [(PKPassTransactionActivitySummary *)self initWithPassUniqueIdentifier:identifierCopy paymentApplicationIdentifier:applicationIdentifierCopy subcredentialIdentifier:subcredentialIdentifierCopy lastUsed:v18 presentmentType:v17];

  return v19;
}

- (PKPassTransactionActivitySummary)initWithPassUniqueIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier subcredentialIdentifier:(id)subcredentialIdentifier lastUsed:(id)used presentmentType:(unint64_t)type
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  subcredentialIdentifierCopy = subcredentialIdentifier;
  usedCopy = used;
  v20.receiver = self;
  v20.super_class = PKPassTransactionActivitySummary;
  v17 = [(PKPassTransactionActivitySummary *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passUniqueIdentifier, identifier);
    objc_storeStrong(&v18->_paymentApplicationIdentifier, applicationIdentifier);
    objc_storeStrong(&v18->_subcredentialIdentifier, subcredentialIdentifier);
    objc_storeStrong(&v18->_lastUsed, used);
    v18->_presentmentType = type;
  }

  return v18;
}

- (void)updateWithPassTransactionActivitySummary:(id)summary
{
  lastUsed = [summary lastUsed];
  if (lastUsed)
  {
    lastUsed = self->_lastUsed;
    v7 = lastUsed;
    if (lastUsed)
    {
      v6 = [(NSDate *)lastUsed laterDate:lastUsed];
      [(PKPassTransactionActivitySummary *)self setLastUsed:v6];
    }

    else
    {
      [(PKPassTransactionActivitySummary *)self setLastUsed:lastUsed];
    }

    lastUsed = v7;
  }
}

- (void)encodeWithCoder:(id)coder
{
  passUniqueIdentifier = self->_passUniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_paymentApplicationIdentifier forKey:@"paymentApplicationIdentifier"];
  [coderCopy encodeObject:self->_subcredentialIdentifier forKey:@"subcredentialIdentifier"];
  [coderCopy encodeObject:self->_lastUsed forKey:@"lastUsed"];
  [coderCopy encodeInteger:self->_presentmentType forKey:@"presentmentType"];
}

- (PKPassTransactionActivitySummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPassTransactionActivitySummary;
  v5 = [(PKPassTransactionActivitySummary *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    paymentApplicationIdentifier = v5->_paymentApplicationIdentifier;
    v5->_paymentApplicationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
    lastUsed = v5->_lastUsed;
    v5->_lastUsed = v12;

    v5->_presentmentType = [coderCopy decodeIntegerForKey:@"presentmentType"];
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