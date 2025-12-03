@interface MPCSharedListeningQueueEventContentPlayedNow
- (MPCSharedListeningQueueEventContentPlayedNow)initWithItems:(id)items container:(id)container startItem:(id)item;
- (id)description;
@end

@implementation MPCSharedListeningQueueEventContentPlayedNow

- (id)description
{
  items = self->_items;
  container = self->_container;
  if (container)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEventContentPlayedNow: %p container=%@ startItem=%@ items=%@>", self, container, self->_startItem, items];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEventContentPlayedNow: %p startItem=%@ items=%@>", self, self->_startItem, items, v6];
  }
  v4 = ;

  return v4;
}

- (MPCSharedListeningQueueEventContentPlayedNow)initWithItems:(id)items container:(id)container startItem:(id)item
{
  itemsCopy = items;
  containerCopy = container;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = MPCSharedListeningQueueEventContentPlayedNow;
  v11 = [(MPCSharedListeningQueueEventContentPlayedNow *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, container);
    v13 = [itemsCopy copy];
    items = v12->_items;
    v12->_items = v13;

    objc_storeStrong(&v12->_startItem, item);
  }

  return v12;
}

@end