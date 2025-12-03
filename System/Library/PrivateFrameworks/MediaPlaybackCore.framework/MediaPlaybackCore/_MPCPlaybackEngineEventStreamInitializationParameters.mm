@interface _MPCPlaybackEngineEventStreamInitializationParameters
- (_MPCPlaybackEngineEventStreamInitializationParameters)initWithPlaybackEngineParameters:(id)parameters engineID:(id)d;
@end

@implementation _MPCPlaybackEngineEventStreamInitializationParameters

- (_MPCPlaybackEngineEventStreamInitializationParameters)initWithPlaybackEngineParameters:(id)parameters engineID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = _MPCPlaybackEngineEventStreamInitializationParameters;
  v8 = [(_MPCPlaybackEngineEventStreamInitializationParameters *)&v25 init];
  if (v8)
  {
    remoteCommandCenter = [parametersCopy remoteCommandCenter];
    playerPath = [remoteCommandCenter playerPath];
    origin = [playerPath origin];
    quot = [origin identifier];
    if (quot)
    {
      v13 = quot;
      v14 = &v26 + 1;
      do
      {
        quot = div(quot, 10).quot;
        v15 = HIDWORD(quot);
        if (quot < 0)
        {
          LODWORD(v15) = -HIDWORD(quot);
        }

        *(v14 - 2) = v15 + 48;
        v16 = (v14 - 2);
        --v14;
      }

      while (quot);
      if (v13 < 0)
      {
        *(v14 - 2) = 45;
        v16 = (v14 - 2);
      }

      v17 = CFStringCreateWithBytes(0, v16, &v26 - v16, 0x8000100u, 0);
    }

    else
    {
      v17 = @"0";
    }

    originID = v8->_originID;
    v8->_originID = &v17->isa;

    playerID = [parametersCopy playerID];
    v20 = [playerID copy];
    playerID = v8->_playerID;
    v8->_playerID = v20;

    v22 = [dCopy copy];
    engineID = v8->_engineID;
    v8->_engineID = v22;
  }

  return v8;
}

@end