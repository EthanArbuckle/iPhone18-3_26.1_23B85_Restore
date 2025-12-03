@interface MPCSharedListeningQueueEventContentReplaced
- (MPCSharedListeningQueueEventContentReplaced)initWithStartItem:(id)item;
@end

@implementation MPCSharedListeningQueueEventContentReplaced

- (MPCSharedListeningQueueEventContentReplaced)initWithStartItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MPCSharedListeningQueueEventContentReplaced;
  v6 = [(MPCSharedListeningQueueEventContentReplaced *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startItem, item);
  }

  return v7;
}

@end