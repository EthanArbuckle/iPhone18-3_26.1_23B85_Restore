@interface _MPCPlayerSeekCommand
- (_MPCPlayerSeekCommand)initWithResponse:(id)a3 seekSupport:(unint64_t)a4;
- (id)_seekCommandWithMediaRemoteCommand:(unsigned int)a3 options:(id)a4;
- (id)beginSeekWithDirection:(int64_t)a3;
- (id)changePositionToElapsedInterval:(double)a3;
- (id)changePositionToElapsedInterval:(double)a3 referenceInterval:(double)a4;
- (id)endSeek;
- (id)jumpByInterval:(double)a3;
@end

@implementation _MPCPlayerSeekCommand

- (id)_seekCommandWithMediaRemoteCommand:(unsigned int)a3 options:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(_MPCPlayerItemCommand *)self contentItemID];
  v8 = [v7 length];

  if (v8)
  {
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v9 = [(_MPCPlayerItemCommand *)self contentItemID];
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B1150]];
  }

  v10 = [(_MPCPlayerCommand *)self response];
  v11 = [MPCPlayerCommandRequest alloc];
  v12 = [v10 controller];
  v13 = [v10 request];
  v14 = [v13 label];
  v15 = [(MPCPlayerCommandRequest *)v11 initWithMediaRemoteCommand:v4 options:v6 controller:v12 label:v14];

  return v15;
}

- (id)changePositionToElapsedInterval:(double)a3 referenceInterval:(double)a4
{
  if ((self->_seekSupport & 0x100) != 0)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B1168]];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B11F8]];

    v4 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:24 options:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)changePositionToElapsedInterval:(double)a3
{
  if ((self->_seekSupport & 0x80) != 0)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B1168]];

    v3 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:24 options:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)jumpByInterval:(double)a3
{
  v3 = a3;
  if (a3 <= 0.0)
  {
    if (a3 < 0.0 && (self->_seekSupport & 0x40) != 0)
    {
      if (![(_MPCPlayerSeekCommand *)self prefersNegativeBackwardSkipIntervals])
      {
        v3 = -v3;
      }

      v5 = 18;
      goto LABEL_10;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_11;
  }

  if ((self->_seekSupport & 0x20) == 0)
  {
    goto LABEL_6;
  }

  v5 = 17;
LABEL_10:
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B1238]];

  v6 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:v5 options:v7];

LABEL_11:

  return v6;
}

- (id)endSeek
{
  seekSupport = self->_seekSupport;
  if ((seekSupport & 4) != 0)
  {
    v7 = 9;
  }

  else
  {
    if ((seekSupport & 0x10) == 0)
    {
      v5 = 0;

      return v5;
    }

    v7 = 11;
  }

  v5 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:v7 options:0, v2];

  return v5;
}

- (id)beginSeekWithDirection:(int64_t)a3
{
  if (a3 == -1)
  {
    if ((self->_seekSupport & 8) != 0)
    {
      v5 = 10;
LABEL_10:
      v6 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:v5 options:0, v3];

      return v6;
    }
  }

  else if (a3 == 1 && (self->_seekSupport & 2) != 0)
  {
    v5 = 8;
    goto LABEL_10;
  }

  v6 = 0;

  return v6;
}

- (_MPCPlayerSeekCommand)initWithResponse:(id)a3 seekSupport:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = _MPCPlayerSeekCommand;
  result = [(_MPCPlayerCommand *)&v6 initWithResponse:a3];
  if (result)
  {
    result->_seekSupport = a4;
  }

  return result;
}

@end