@interface IDSTransactionQueueTransaction
- (IDSTransactionQueueTransaction)initWithItem:(id)item readyToExecute:(BOOL)execute;
@end

@implementation IDSTransactionQueueTransaction

- (IDSTransactionQueueTransaction)initWithItem:(id)item readyToExecute:(BOOL)execute
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = IDSTransactionQueueTransaction;
  v8 = [(IDSTransactionQueueTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_item, item);
    v9->_readyToExecute = execute;
  }

  return v9;
}

@end