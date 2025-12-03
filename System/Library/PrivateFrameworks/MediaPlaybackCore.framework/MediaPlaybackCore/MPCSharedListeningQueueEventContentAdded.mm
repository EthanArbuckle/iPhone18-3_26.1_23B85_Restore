@interface MPCSharedListeningQueueEventContentAdded
- (MPCSharedListeningQueueEventContentAdded)initWithItems:(id)items container:(id)container;
- (id)description;
@end

@implementation MPCSharedListeningQueueEventContentAdded

- (id)description
{
  items = self->_items;
  if (self->_container)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEventContentAdded: %p container=%@ items=%@>", self, self->_container, items];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEventContentAdded: %p items=%@>", self, items, v5];
  }
  v3 = ;

  return v3;
}

- (MPCSharedListeningQueueEventContentAdded)initWithItems:(id)items container:(id)container
{
  itemsCopy = items;
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = MPCSharedListeningQueueEventContentAdded;
  v8 = [(MPCSharedListeningQueueEventContentAdded *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_container, container);
    v10 = [itemsCopy copy];
    items = v9->_items;
    v9->_items = v10;
  }

  return v9;
}

@end