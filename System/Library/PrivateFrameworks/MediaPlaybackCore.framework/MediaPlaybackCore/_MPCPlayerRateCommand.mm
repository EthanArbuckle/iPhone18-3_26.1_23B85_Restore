@interface _MPCPlayerRateCommand
- (id)changeValue:(float)a3;
@end

@implementation _MPCPlayerRateCommand

- (id)changeValue:(float)a3
{
  [(_MPCPlayerRateCommand *)self minimumValue];
  if (v5 <= a3 && ([(_MPCPlayerRateCommand *)self maximumValue], v6 >= a3))
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    *&v9 = a3;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B11F0]];

    v11 = [(_MPCPlayerItemCommand *)self contentItemID];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [(_MPCPlayerItemCommand *)self contentItemID];
      [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69B10C8]];
    }

    v14 = [(_MPCPlayerCommand *)self response];
    v15 = [MPCPlayerCommandRequest alloc];
    v16 = [v14 controller];
    v17 = [v14 request];
    v18 = [v17 label];
    v7 = [(MPCPlayerCommandRequest *)v15 initWithMediaRemoteCommand:20 options:v8 controller:v16 label:v18];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end