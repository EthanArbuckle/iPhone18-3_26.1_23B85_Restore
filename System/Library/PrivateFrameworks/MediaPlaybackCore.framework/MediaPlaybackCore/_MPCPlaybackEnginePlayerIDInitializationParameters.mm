@interface _MPCPlaybackEnginePlayerIDInitializationParameters
- (_MPCPlaybackEnginePlayerIDInitializationParameters)initWithPlayerID:(id)a3 eventStreamConsumers:(id)a4;
@end

@implementation _MPCPlaybackEnginePlayerIDInitializationParameters

- (_MPCPlaybackEnginePlayerIDInitializationParameters)initWithPlayerID:(id)a3 eventStreamConsumers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _MPCPlaybackEnginePlayerIDInitializationParameters;
  v8 = [(_MPCPlaybackEnginePlayerIDInitializationParameters *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    playerID = v8->_playerID;
    v8->_playerID = v9;

    v11 = [objc_alloc(MEMORY[0x1E69708D8]) initWithPlayerID:v6];
    remoteCommandCenter = v8->_remoteCommandCenter;
    v8->_remoteCommandCenter = v11;

    v13 = [objc_alloc(MEMORY[0x1E6970850]) initWithPlayerID:v6];
    nowPlayingInfoCenter = v8->_nowPlayingInfoCenter;
    v8->_nowPlayingInfoCenter = v13;

    audioSession = v8->_audioSession;
    v8->_audioSession = 0;

    objc_storeStrong(&v8->_eventStreamConsumers, a4);
  }

  return v8;
}

@end