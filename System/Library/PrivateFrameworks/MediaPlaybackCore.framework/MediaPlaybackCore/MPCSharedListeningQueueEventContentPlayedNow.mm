@interface MPCSharedListeningQueueEventContentPlayedNow
- (MPCSharedListeningQueueEventContentPlayedNow)initWithItems:(id)a3 container:(id)a4 startItem:(id)a5;
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

- (MPCSharedListeningQueueEventContentPlayedNow)initWithItems:(id)a3 container:(id)a4 startItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MPCSharedListeningQueueEventContentPlayedNow;
  v11 = [(MPCSharedListeningQueueEventContentPlayedNow *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, a4);
    v13 = [v8 copy];
    items = v12->_items;
    v12->_items = v13;

    objc_storeStrong(&v12->_startItem, a5);
  }

  return v12;
}

@end