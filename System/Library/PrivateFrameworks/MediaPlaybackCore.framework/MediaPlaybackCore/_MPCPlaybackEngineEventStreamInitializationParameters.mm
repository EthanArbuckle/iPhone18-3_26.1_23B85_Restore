@interface _MPCPlaybackEngineEventStreamInitializationParameters
- (_MPCPlaybackEngineEventStreamInitializationParameters)initWithPlaybackEngineParameters:(id)a3 engineID:(id)a4;
@end

@implementation _MPCPlaybackEngineEventStreamInitializationParameters

- (_MPCPlaybackEngineEventStreamInitializationParameters)initWithPlaybackEngineParameters:(id)a3 engineID:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = _MPCPlaybackEngineEventStreamInitializationParameters;
  v8 = [(_MPCPlaybackEngineEventStreamInitializationParameters *)&v25 init];
  if (v8)
  {
    v9 = [v6 remoteCommandCenter];
    v10 = [v9 playerPath];
    v11 = [v10 origin];
    quot = [v11 identifier];
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

    v19 = [v6 playerID];
    v20 = [v19 copy];
    playerID = v8->_playerID;
    v8->_playerID = v20;

    v22 = [v7 copy];
    engineID = v8->_engineID;
    v8->_engineID = v22;
  }

  return v8;
}

@end