@interface IMMultiQueueItem
- (IMMultiQueueItem)initWithBlock:(id)a3 GUID:(id)a4 description:(id)a5;
@end

@implementation IMMultiQueueItem

- (IMMultiQueueItem)initWithBlock:(id)a3 GUID:(id)a4 description:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMMultiQueueItem;
  v12 = [(IMMultiQueueItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_block, a3);
    objc_storeStrong(&v13->_GUID, a4);
    objc_storeStrong(&v13->_describer, a5);
  }

  return v13;
}

@end