@interface PDTransitStateFetchRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PDTransitStateFetchRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PDTransitStateFetchRequest allocWithZone:](PDTransitStateFetchRequest init];
  v6 = [(NSString *)self->_passUniqueIdentifier copyWithZone:a3];
  passUniqueIdentifier = v5->_passUniqueIdentifier;
  v5->_passUniqueIdentifier = v6;

  v8 = [(NSString *)self->_secureElementIdentifier copyWithZone:a3];
  secureElementIdentifier = v5->_secureElementIdentifier;
  v5->_secureElementIdentifier = v8;

  v10 = [(NSString *)self->_paymentApplicationIdentifier copyWithZone:a3];
  paymentApplicationIdentifier = v5->_paymentApplicationIdentifier;
  v5->_paymentApplicationIdentifier = v10;

  v5->_forceTransactionGeneration = self->_forceTransactionGeneration;
  v12 = [(NSDate *)self->_transactionDate copyWithZone:a3];
  transactionDate = v5->_transactionDate;
  v5->_transactionDate = v12;

  v5->_recoverMissingTransactions = self->_recoverMissingTransactions;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ((isKindOfClass & 1) != 0 && PKEqualObjects() && PKEqualObjects())
  {
    v7 = PKEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passUniqueIdentifier hash];
  v4 = [(NSString *)self->_secureElementIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_paymentApplicationIdentifier hash];
}

@end