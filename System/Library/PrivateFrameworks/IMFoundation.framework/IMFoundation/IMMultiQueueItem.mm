@interface IMMultiQueueItem
- (IMMultiQueueItem)initWithBlock:(id)block GUID:(id)d description:(id)description;
@end

@implementation IMMultiQueueItem

- (IMMultiQueueItem)initWithBlock:(id)block GUID:(id)d description:(id)description
{
  blockCopy = block;
  dCopy = d;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = IMMultiQueueItem;
  v12 = [(IMMultiQueueItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_block, block);
    objc_storeStrong(&v13->_GUID, d);
    objc_storeStrong(&v13->_describer, description);
  }

  return v13;
}

@end