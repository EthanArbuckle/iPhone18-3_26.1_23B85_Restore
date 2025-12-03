@interface _MPCPlaybackEnginePlayerIDInitializationParameters
- (_MPCPlaybackEnginePlayerIDInitializationParameters)initWithPlayerID:(id)d eventStreamConsumers:(id)consumers;
@end

@implementation _MPCPlaybackEnginePlayerIDInitializationParameters

- (_MPCPlaybackEnginePlayerIDInitializationParameters)initWithPlayerID:(id)d eventStreamConsumers:(id)consumers
{
  dCopy = d;
  consumersCopy = consumers;
  v17.receiver = self;
  v17.super_class = _MPCPlaybackEnginePlayerIDInitializationParameters;
  v8 = [(_MPCPlaybackEnginePlayerIDInitializationParameters *)&v17 init];
  if (v8)
  {
    v9 = [dCopy copy];
    playerID = v8->_playerID;
    v8->_playerID = v9;

    v11 = [objc_alloc(MEMORY[0x1E69708D8]) initWithPlayerID:dCopy];
    remoteCommandCenter = v8->_remoteCommandCenter;
    v8->_remoteCommandCenter = v11;

    v13 = [objc_alloc(MEMORY[0x1E6970850]) initWithPlayerID:dCopy];
    nowPlayingInfoCenter = v8->_nowPlayingInfoCenter;
    v8->_nowPlayingInfoCenter = v13;

    audioSession = v8->_audioSession;
    v8->_audioSession = 0;

    objc_storeStrong(&v8->_eventStreamConsumers, consumers);
  }

  return v8;
}

@end