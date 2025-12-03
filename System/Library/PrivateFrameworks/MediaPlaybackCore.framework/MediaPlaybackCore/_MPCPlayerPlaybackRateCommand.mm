@interface _MPCPlayerPlaybackRateCommand
- (id)setPlaybackRate:(float)rate;
@end

@implementation _MPCPlayerPlaybackRateCommand

- (id)setPlaybackRate:(float)rate
{
  extendedSupportedPlaybackRates = [(_MPCPlayerPlaybackRateCommand *)self extendedSupportedPlaybackRates];
  if ([extendedSupportedPlaybackRates count])
  {
    [(_MPCPlayerPlaybackRateCommand *)self extendedSupportedPlaybackRates];
  }

  else
  {
    [(_MPCPlayerPlaybackRateCommand *)self supportedPlaybackRates];
  }
  v6 = ;

  response = [(_MPCPlayerCommand *)self response];
  request = [response request];
  if ([request disablePlaybackRateValidation])
  {
    *&v9 = rate;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49___MPCPlayerPlaybackRateCommand_setPlaybackRate___block_invoke;
    v23[3] = &__block_descriptor_36_e18_B16__0__NSNumber_8l;
    rateCopy = rate;
    v10 = [v6 msv_firstWhere:v23];
  }

  v11 = v10;

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B1188]];
    contentItemID = [(_MPCPlayerItemCommand *)self contentItemID];
    v14 = [contentItemID length];

    if (v14)
    {
      contentItemID2 = [(_MPCPlayerItemCommand *)self contentItemID];
      [v12 setObject:contentItemID2 forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    response2 = [(_MPCPlayerCommand *)self response];
    v17 = [MPCPlayerCommandRequest alloc];
    controller = [response2 controller];
    request2 = [response2 request];
    label = [request2 label];
    v21 = [(MPCPlayerCommandRequest *)v17 initWithMediaRemoteCommand:19 options:v12 controller:controller label:label];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end