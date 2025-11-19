@interface MPCSharedListeningSessionEvent
- (MPCSharedListeningSessionEvent)initWithKind:(int64_t)a3;
- (id)description;
@end

@implementation MPCSharedListeningSessionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  kind = self->_kind;
  if (kind >= 6)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/kind=%ld", self->_kind];
  }

  else
  {
    v5 = off_1E8235AE0[kind];
  }

  v6 = [v3 stringWithFormat:@"<MPCSharedListeningSessionEvent: %p kind=%@>", self, v5];

  return v6;
}

- (MPCSharedListeningSessionEvent)initWithKind:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPCSharedListeningSessionEvent;
  result = [(MPCSharedListeningSessionEvent *)&v5 init];
  if (result)
  {
    result->_kind = a3;
  }

  return result;
}

@end