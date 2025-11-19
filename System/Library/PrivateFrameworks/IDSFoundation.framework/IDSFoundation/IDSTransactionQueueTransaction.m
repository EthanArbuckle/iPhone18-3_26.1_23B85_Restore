@interface IDSTransactionQueueTransaction
- (IDSTransactionQueueTransaction)initWithItem:(id)a3 readyToExecute:(BOOL)a4;
@end

@implementation IDSTransactionQueueTransaction

- (IDSTransactionQueueTransaction)initWithItem:(id)a3 readyToExecute:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSTransactionQueueTransaction;
  v8 = [(IDSTransactionQueueTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, a3);
    v9->_readyToExecute = a4;
  }

  return v9;
}

@end