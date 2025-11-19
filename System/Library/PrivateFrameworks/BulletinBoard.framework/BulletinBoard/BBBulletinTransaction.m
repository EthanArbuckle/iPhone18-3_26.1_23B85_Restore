@interface BBBulletinTransaction
+ (id)transactionWithBulletinID:(id)a3;
- (BBBulletinTransaction)initWithBulletinID:(id)a3;
- (id)description;
- (unint64_t)incrementTransactionID;
- (void)incrementTransactionID;
@end

@implementation BBBulletinTransaction

+ (id)transactionWithBulletinID:(id)a3
{
  v3 = a3;
  v4 = [[BBBulletinTransaction alloc] initWithBulletinID:v3];

  return v4;
}

- (BBBulletinTransaction)initWithBulletinID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BBBulletinTransaction;
  v5 = [(BBBulletinTransaction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"BBObserverProxy.m" lineNumber:688 description:{@"You sent NSUIntegerMax transactions to a single observer for bulletinID %@. You lose.", *(a1 + 8)}];

  *a4 = *a3;
}

@end