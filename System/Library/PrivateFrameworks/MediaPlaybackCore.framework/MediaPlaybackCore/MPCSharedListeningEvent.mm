@interface MPCSharedListeningEvent
+ (id)eventWithCustomEvent:(id)a3 participant:(id)a4;
+ (id)eventWithPlaybackEvent:(id)a3 participant:(id)a4;
+ (id)eventWithQueueEvent:(id)a3 participant:(id)a4;
+ (id)eventWithReactionEvent:(id)a3 participant:(id)a4;
+ (id)eventWithSessionEvent:(id)a3 participant:(id)a4;
- (id)_initWithType:(int64_t)a3 participant:(id)a4;
- (id)description;
@end

@implementation MPCSharedListeningEvent

- (id)description
{
  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p participant=%@ queueEvent=%@>", self, self->_participant, self->_queueEvent];
      goto LABEL_15;
    }

    if (type != 4)
    {
      if (type == 5)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p participant=%@ customEvent=%@>", self, self->_participant, self->_customEvent];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p participant=%@ reactionEvent=%@>", self, self->_participant, self->_reactionEvent];
  }

  else
  {
    if (!type)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p unknown/invalid>", self, v5, v6];
      goto LABEL_15;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p participant=%@ playbackEvent=%@>", self, self->_participant, self->_playbackEvent];
        goto LABEL_15;
      }

LABEL_12:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p unknown/eventType=%ld>", self, type, v6];
      goto LABEL_15;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningEvent: %p participant=%@ sessionEvent=%@>", self, self->_participant, self->_sessionEvent];
  }

  v3 = LABEL_15:;

  return v3;
}

- (id)_initWithType:(int64_t)a3 participant:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MPCSharedListeningEvent;
  v7 = [(MPCSharedListeningEvent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    participant = v8->_participant;
    v8->_participant = v9;
  }

  return v8;
}

+ (id)eventWithCustomEvent:(id)a3 participant:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPCSharedListeningEvent alloc] _initWithType:5 participant:v6];

  v8 = v7[7];
  v7[7] = v5;

  return v7;
}

+ (id)eventWithReactionEvent:(id)a3 participant:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPCSharedListeningEvent alloc] _initWithType:4 participant:v6];

  v8 = v7[6];
  v7[6] = v5;

  return v7;
}

+ (id)eventWithQueueEvent:(id)a3 participant:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPCSharedListeningEvent alloc] _initWithType:3 participant:v6];

  v8 = v7[5];
  v7[5] = v5;

  return v7;
}

+ (id)eventWithPlaybackEvent:(id)a3 participant:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPCSharedListeningEvent alloc] _initWithType:2 participant:v6];

  v8 = v7[4];
  v7[4] = v5;

  return v7;
}

+ (id)eventWithSessionEvent:(id)a3 participant:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPCSharedListeningEvent alloc] _initWithType:1 participant:v6];

  v8 = v7[3];
  v7[3] = v5;

  return v7;
}

@end