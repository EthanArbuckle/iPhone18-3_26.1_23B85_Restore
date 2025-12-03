@interface NPKWorkQueueItem
+ (id)itemWithTransaction:(id)transaction work:(id)work;
- (NPKWorkQueueItem)initWithTransaction:(id)transaction work:(id)work;
@end

@implementation NPKWorkQueueItem

- (NPKWorkQueueItem)initWithTransaction:(id)transaction work:(id)work
{
  transactionCopy = transaction;
  workCopy = work;
  v14.receiver = self;
  v14.super_class = NPKWorkQueueItem;
  v9 = [(NPKWorkQueueItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, transaction);
    v11 = _Block_copy(workCopy);
    workBlock = v10->_workBlock;
    v10->_workBlock = v11;
  }

  return v10;
}

+ (id)itemWithTransaction:(id)transaction work:(id)work
{
  workCopy = work;
  transactionCopy = transaction;
  v7 = [[NPKWorkQueueItem alloc] initWithTransaction:transactionCopy work:workCopy];

  return v7;
}

@end