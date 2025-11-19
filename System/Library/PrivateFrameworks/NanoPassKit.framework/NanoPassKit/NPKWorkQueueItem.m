@interface NPKWorkQueueItem
+ (id)itemWithTransaction:(id)a3 work:(id)a4;
- (NPKWorkQueueItem)initWithTransaction:(id)a3 work:(id)a4;
@end

@implementation NPKWorkQueueItem

- (NPKWorkQueueItem)initWithTransaction:(id)a3 work:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NPKWorkQueueItem;
  v9 = [(NPKWorkQueueItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, a3);
    v11 = _Block_copy(v8);
    workBlock = v10->_workBlock;
    v10->_workBlock = v11;
  }

  return v10;
}

+ (id)itemWithTransaction:(id)a3 work:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NPKWorkQueueItem alloc] initWithTransaction:v6 work:v5];

  return v7;
}

@end