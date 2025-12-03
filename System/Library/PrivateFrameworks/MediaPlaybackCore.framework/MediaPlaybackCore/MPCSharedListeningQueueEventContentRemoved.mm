@interface MPCSharedListeningQueueEventContentRemoved
- (MPCSharedListeningQueueEventContentRemoved)initWithItem:(id)item;
@end

@implementation MPCSharedListeningQueueEventContentRemoved

- (MPCSharedListeningQueueEventContentRemoved)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MPCSharedListeningQueueEventContentRemoved;
  v6 = [(MPCSharedListeningQueueEventContentRemoved *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

@end