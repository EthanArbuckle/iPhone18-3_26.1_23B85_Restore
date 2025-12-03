@interface PKSearchTransactionResult
- (BOOL)isEqual:(id)equal;
- (PKSearchTransactionResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchTransactionResult

- (void)encodeWithCoder:(id)coder
{
  transaction = self->_transaction;
  coderCopy = coder;
  [coderCopy encodeObject:transaction forKey:@"transaction"];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
}

- (PKSearchTransactionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchTransactionResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transaction"];
    transaction = v5->_transaction;
    v5->_transaction = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionResult;
  v3 = [(PKSearchTransactionResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"transaction: '%@'; ", self->_transaction];
  [v4 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  transaction = self->_transaction;
  v6 = equalCopy[1];
  if (!transaction || !v6)
  {
    if (transaction == v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![(PKPaymentTransaction *)transaction isEqual:?])
  {
    goto LABEL_9;
  }

LABEL_5:
  passUniqueIdentifier = self->_passUniqueIdentifier;
  v8 = equalCopy[2];
  if (passUniqueIdentifier && v8)
  {
    v9 = [(NSString *)passUniqueIdentifier isEqual:?];
  }

  else
  {
    v9 = passUniqueIdentifier == v8;
  }

LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transaction];
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end