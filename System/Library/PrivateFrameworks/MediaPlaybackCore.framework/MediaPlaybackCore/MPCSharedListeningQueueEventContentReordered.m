@interface MPCSharedListeningQueueEventContentReordered
- (MPCSharedListeningQueueEventContentReordered)initWithItem:(id)a3;
@end

@implementation MPCSharedListeningQueueEventContentReordered

- (MPCSharedListeningQueueEventContentReordered)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPCSharedListeningQueueEventContentReordered;
  v6 = [(MPCSharedListeningQueueEventContentReordered *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

@end