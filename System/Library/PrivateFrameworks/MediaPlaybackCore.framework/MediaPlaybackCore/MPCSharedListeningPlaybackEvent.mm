@interface MPCSharedListeningPlaybackEvent
- (MPCSharedListeningPlaybackEvent)initWithKind:(int64_t)kind item:(id)item;
- (id)description;
@end

@implementation MPCSharedListeningPlaybackEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  kind = self->_kind;
  if (kind >= 5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/kind=%ld", self->_kind];
  }

  else
  {
    v5 = off_1E8235AB8[kind];
  }

  v6 = [v3 stringWithFormat:@"<MPCSharedListeningPlaybackEvent: %p kind=%@>", self, v5];

  return v6;
}

- (MPCSharedListeningPlaybackEvent)initWithKind:(int64_t)kind item:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MPCSharedListeningPlaybackEvent;
  v8 = [(MPCSharedListeningPlaybackEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_kind = kind;
    objc_storeStrong(&v8->_item, item);
  }

  return v9;
}

@end