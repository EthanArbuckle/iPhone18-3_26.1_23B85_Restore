@interface MPCMediaRemoteControllerPlaybackQueue
- (MPCMediaRemoteControllerPlaybackQueue)initWithIdentifiers:(id)a3 playingIdentifier:(id)a4 queueIdentifier:(id)a5 queueProperties:(id)a6;
@end

@implementation MPCMediaRemoteControllerPlaybackQueue

- (MPCMediaRemoteControllerPlaybackQueue)initWithIdentifiers:(id)a3 playingIdentifier:(id)a4 queueIdentifier:(id)a5 queueProperties:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = MPCMediaRemoteControllerPlaybackQueue;
  v14 = [(MPCMediaRemoteControllerPlaybackQueue *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifiers = v14->_identifiers;
    v14->_identifiers = v15;

    v17 = [v11 copy];
    playingIdentifier = v14->_playingIdentifier;
    v14->_playingIdentifier = v17;

    v19 = [v12 copy];
    queueIdentifier = v14->_queueIdentifier;
    v14->_queueIdentifier = v19;

    v21 = [v13 copy];
    queueProperties = v14->_queueProperties;
    v14->_queueProperties = v21;
  }

  return v14;
}

@end