@interface MPCSharedListeningQueueEventContentReordered
- (MPCSharedListeningQueueEventContentReordered)initWithItem:(id)item;
@end

@implementation MPCSharedListeningQueueEventContentReordered

- (MPCSharedListeningQueueEventContentReordered)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MPCSharedListeningQueueEventContentReordered;
  v6 = [(MPCSharedListeningQueueEventContentReordered *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

@end