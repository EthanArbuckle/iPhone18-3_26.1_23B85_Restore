@interface MPCSharedListeningQueueEventPlaybackModeChanged
- (MPCSharedListeningQueueEventPlaybackModeChanged)initWithUpdatedAutoPlayEnabled:(BOOL)a3;
- (MPCSharedListeningQueueEventPlaybackModeChanged)initWithUpdatedRepeatType:(int64_t)a3;
- (MPCSharedListeningQueueEventPlaybackModeChanged)initWithUpdatedShuffleType:(int64_t)a3;
- (id)description;
@end

@implementation MPCSharedListeningQueueEventPlaybackModeChanged

- (id)description
{
  kind = self->_kind;
  v4 = MEMORY[0x1E696AEC0];
  if (kind > 1)
  {
    if (kind == 2)
    {
      (*(self->_repeatType + 2))();
      v5 = MPNSStringFromRepeatType();
      [v4 stringWithFormat:@"<MPCSharedListeningQueueEventPlaybackModeChanged: %p repeatType=%@>", self, v5];
      goto LABEL_14;
    }

    if (kind == 3)
    {
      v6 = (*(self->_autoPlayEnabled + 2))();
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      [v4 stringWithFormat:@"<MPCSharedListeningQueueEventPlaybackModeChanged: %p autoPlayEnabled=%@>", self, v7];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!kind)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEventPlaybackModeChanged: %p unknown/invalid>", self, v10];
    goto LABEL_12;
  }

  if (kind != 1)
  {
LABEL_10:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<MPCSharedListeningQueueEventPlaybackModeChanged: %p unknown/kind=%ld>", self, kind];
    v8 = LABEL_12:;
    goto LABEL_15;
  }

  (*(self->_shuffleType + 2))();
  v5 = MPNSStringFromShuffleType();
  [v4 stringWithFormat:@"<MPCSharedListeningQueueEventPlaybackModeChanged: %p shuffleType=%@>", self, v5];
  v8 = LABEL_14:;

LABEL_15:

  return v8;
}

- (MPCSharedListeningQueueEventPlaybackModeChanged)initWithUpdatedAutoPlayEnabled:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = MPCSharedListeningQueueEventPlaybackModeChanged;
  v4 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = 3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__MPCSharedListeningQueueEventPlaybackModeChanged_initWithUpdatedAutoPlayEnabled___block_invoke;
    v9[3] = &__block_descriptor_33_e5_B8__0l;
    v10 = a3;
    v6 = [v9 copy];
    autoPlayEnabled = v5->_autoPlayEnabled;
    v5->_autoPlayEnabled = v6;
  }

  return v5;
}

- (MPCSharedListeningQueueEventPlaybackModeChanged)initWithUpdatedRepeatType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = MPCSharedListeningQueueEventPlaybackModeChanged;
  v4 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = 2;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__MPCSharedListeningQueueEventPlaybackModeChanged_initWithUpdatedRepeatType___block_invoke;
    v9[3] = &__block_descriptor_40_e5_q8__0l;
    v9[4] = a3;
    v6 = [v9 copy];
    repeatType = v5->_repeatType;
    v5->_repeatType = v6;
  }

  return v5;
}

- (MPCSharedListeningQueueEventPlaybackModeChanged)initWithUpdatedShuffleType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = MPCSharedListeningQueueEventPlaybackModeChanged;
  v4 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_kind = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__MPCSharedListeningQueueEventPlaybackModeChanged_initWithUpdatedShuffleType___block_invoke;
    v9[3] = &__block_descriptor_40_e5_q8__0l;
    v9[4] = a3;
    v6 = [v9 copy];
    shuffleType = v5->_shuffleType;
    v5->_shuffleType = v6;
  }

  return v5;
}

@end