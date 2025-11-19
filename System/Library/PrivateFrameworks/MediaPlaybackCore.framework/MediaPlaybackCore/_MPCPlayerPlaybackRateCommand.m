@interface _MPCPlayerPlaybackRateCommand
- (id)setPlaybackRate:(float)a3;
@end

@implementation _MPCPlayerPlaybackRateCommand

- (id)setPlaybackRate:(float)a3
{
  v5 = [(_MPCPlayerPlaybackRateCommand *)self extendedSupportedPlaybackRates];
  if ([v5 count])
  {
    [(_MPCPlayerPlaybackRateCommand *)self extendedSupportedPlaybackRates];
  }

  else
  {
    [(_MPCPlayerPlaybackRateCommand *)self supportedPlaybackRates];
  }
  v6 = ;

  v7 = [(_MPCPlayerCommand *)self response];
  v8 = [v7 request];
  if ([v8 disablePlaybackRateValidation])
  {
    *&v9 = a3;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49___MPCPlayerPlaybackRateCommand_setPlaybackRate___block_invoke;
    v23[3] = &__block_descriptor_36_e18_B16__0__NSNumber_8l;
    v24 = a3;
    v10 = [v6 msv_firstWhere:v23];
  }

  v11 = v10;

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B1188]];
    v13 = [(_MPCPlayerItemCommand *)self contentItemID];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(_MPCPlayerItemCommand *)self contentItemID];
      [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v16 = [(_MPCPlayerCommand *)self response];
    v17 = [MPCPlayerCommandRequest alloc];
    v18 = [v16 controller];
    v19 = [v16 request];
    v20 = [v19 label];
    v21 = [(MPCPlayerCommandRequest *)v17 initWithMediaRemoteCommand:19 options:v12 controller:v18 label:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end