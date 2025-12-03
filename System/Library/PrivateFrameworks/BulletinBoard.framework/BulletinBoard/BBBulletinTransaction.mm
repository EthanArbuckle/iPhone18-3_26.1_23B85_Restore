@interface BBBulletinTransaction
+ (id)transactionWithBulletinID:(id)d;
- (BBBulletinTransaction)initWithBulletinID:(id)d;
- (id)description;
- (unint64_t)incrementTransactionID;
- (void)incrementTransactionID;
@end

@implementation BBBulletinTransaction

+ (id)transactionWithBulletinID:(id)d
{
  dCopy = d;
  v4 = [[BBBulletinTransaction alloc] initWithBulletinID:dCopy];

  return v4;
}

- (BBBulletinTransaction)initWithBulletinID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BBBulletinTransaction;
  v5 = [(BBBulletinTransaction *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bulletinID = v5->_bulletinID;
    v5->_bulletinID = v6;

    v5->_transactionID = 1;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = BBBulletinTransaction;
  v4 = [(BBBulletinTransaction *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: bulletinID: %@ transactionID: %llu", v4, self->_bulletinID, self->_transactionID];;

  return v5;
}

- (unint64_t)incrementTransactionID
{
  p_transactionID = &self->_transactionID;
  transactionID = self->_transactionID;
  if (transactionID == -1)
  {
    [(BBBulletinTransaction *)self incrementTransactionID:a2];
    transactionID = v5;
  }

  result = transactionID + 1;
  *p_transactionID = transactionID + 1;
  return result;
}

- (void)incrementTransactionID
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BBObserverProxy.m" lineNumber:688 description:{@"You sent NSUIntegerMax transactions to a single observer for bulletinID %@. You lose.", *(self + 8)}];

  *a4 = *a3;
}

@end