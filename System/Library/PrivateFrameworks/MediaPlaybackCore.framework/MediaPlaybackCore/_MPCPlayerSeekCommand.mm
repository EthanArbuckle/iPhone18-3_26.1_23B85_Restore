@interface _MPCPlayerSeekCommand
- (_MPCPlayerSeekCommand)initWithResponse:(id)response seekSupport:(unint64_t)support;
- (id)_seekCommandWithMediaRemoteCommand:(unsigned int)command options:(id)options;
- (id)beginSeekWithDirection:(int64_t)direction;
- (id)changePositionToElapsedInterval:(double)interval;
- (id)changePositionToElapsedInterval:(double)interval referenceInterval:(double)referenceInterval;
- (id)endSeek;
- (id)jumpByInterval:(double)interval;
@end

@implementation _MPCPlayerSeekCommand

- (id)_seekCommandWithMediaRemoteCommand:(unsigned int)command options:(id)options
{
  v4 = *&command;
  optionsCopy = options;
  contentItemID = [(_MPCPlayerItemCommand *)self contentItemID];
  v8 = [contentItemID length];

  if (v8)
  {
    if (!optionsCopy)
    {
      optionsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    contentItemID2 = [(_MPCPlayerItemCommand *)self contentItemID];
    [optionsCopy setObject:contentItemID2 forKeyedSubscript:*MEMORY[0x1E69B1150]];
  }

  response = [(_MPCPlayerCommand *)self response];
  v11 = [MPCPlayerCommandRequest alloc];
  controller = [response controller];
  request = [response request];
  label = [request label];
  v15 = [(MPCPlayerCommandRequest *)v11 initWithMediaRemoteCommand:v4 options:optionsCopy controller:controller label:label];

  return v15;
}

- (id)changePositionToElapsedInterval:(double)interval referenceInterval:(double)referenceInterval
{
  if ((self->_seekSupport & 0x100) != 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
    [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B1168]];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:referenceInterval];
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B11F8]];

    v4 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:24 options:dictionary];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)changePositionToElapsedInterval:(double)interval
{
  if ((self->_seekSupport & 0x80) != 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B1168]];

    v3 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:24 options:dictionary];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)jumpByInterval:(double)interval
{
  intervalCopy = interval;
  if (interval <= 0.0)
  {
    if (interval < 0.0 && (self->_seekSupport & 0x40) != 0)
    {
      if (![(_MPCPlayerSeekCommand *)self prefersNegativeBackwardSkipIntervals])
      {
        intervalCopy = -intervalCopy;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:intervalCopy];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B1238]];

  v6 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:v5 options:dictionary];

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

- (id)beginSeekWithDirection:(int64_t)direction
{
  if (direction == -1)
  {
    if ((self->_seekSupport & 8) != 0)
    {
      v5 = 10;
LABEL_10:
      v6 = [(_MPCPlayerSeekCommand *)self _seekCommandWithMediaRemoteCommand:v5 options:0, v3];

      return v6;
    }
  }

  else if (direction == 1 && (self->_seekSupport & 2) != 0)
  {
    v5 = 8;
    goto LABEL_10;
  }

  v6 = 0;

  return v6;
}

- (_MPCPlayerSeekCommand)initWithResponse:(id)response seekSupport:(unint64_t)support
{
  v6.receiver = self;
  v6.super_class = _MPCPlayerSeekCommand;
  result = [(_MPCPlayerCommand *)&v6 initWithResponse:response];
  if (result)
  {
    result->_seekSupport = support;
  }

  return result;
}

@end