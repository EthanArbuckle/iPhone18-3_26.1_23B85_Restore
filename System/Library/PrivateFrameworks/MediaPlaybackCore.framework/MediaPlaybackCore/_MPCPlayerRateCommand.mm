@interface _MPCPlayerRateCommand
- (id)changeValue:(float)value;
@end

@implementation _MPCPlayerRateCommand

- (id)changeValue:(float)value
{
  [(_MPCPlayerRateCommand *)self minimumValue];
  if (v5 <= value && ([(_MPCPlayerRateCommand *)self maximumValue], v6 >= value))
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    *&v9 = value;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B11F0]];

    contentItemID = [(_MPCPlayerItemCommand *)self contentItemID];
    v12 = [contentItemID length];

    if (v12)
    {
      contentItemID2 = [(_MPCPlayerItemCommand *)self contentItemID];
      [v8 setObject:contentItemID2 forKeyedSubscript:*MEMORY[0x1E69B10C8]];
    }

    response = [(_MPCPlayerCommand *)self response];
    v15 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v7 = [(MPCPlayerCommandRequest *)v15 initWithMediaRemoteCommand:20 options:v8 controller:controller label:label];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end