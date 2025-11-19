@interface MPCSharedListeningQueueEventContentReplaced
- (MPCSharedListeningQueueEventContentReplaced)initWithStartItem:(id)a3;
@end

@implementation MPCSharedListeningQueueEventContentReplaced

- (MPCSharedListeningQueueEventContentReplaced)initWithStartItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPCSharedListeningQueueEventContentReplaced;
  v6 = [(MPCSharedListeningQueueEventContentReplaced *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startItem, a3);
  }

  return v7;
}

@end