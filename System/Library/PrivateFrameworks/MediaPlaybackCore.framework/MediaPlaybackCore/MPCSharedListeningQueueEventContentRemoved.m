@interface MPCSharedListeningQueueEventContentRemoved
- (MPCSharedListeningQueueEventContentRemoved)initWithItem:(id)a3;
@end

@implementation MPCSharedListeningQueueEventContentRemoved

- (MPCSharedListeningQueueEventContentRemoved)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPCSharedListeningQueueEventContentRemoved;
  v6 = [(MPCSharedListeningQueueEventContentRemoved *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

@end