@interface MPCMediaRemoteControllerPlaybackQueue
- (MPCMediaRemoteControllerPlaybackQueue)initWithIdentifiers:(id)identifiers playingIdentifier:(id)identifier queueIdentifier:(id)queueIdentifier queueProperties:(id)properties;
@end

@implementation MPCMediaRemoteControllerPlaybackQueue

- (MPCMediaRemoteControllerPlaybackQueue)initWithIdentifiers:(id)identifiers playingIdentifier:(id)identifier queueIdentifier:(id)queueIdentifier queueProperties:(id)properties
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  queueIdentifierCopy = queueIdentifier;
  propertiesCopy = properties;
  v24.receiver = self;
  v24.super_class = MPCMediaRemoteControllerPlaybackQueue;
  v14 = [(MPCMediaRemoteControllerPlaybackQueue *)&v24 init];
  if (v14)
  {
    v15 = [identifiersCopy copy];
    identifiers = v14->_identifiers;
    v14->_identifiers = v15;

    v17 = [identifierCopy copy];
    playingIdentifier = v14->_playingIdentifier;
    v14->_playingIdentifier = v17;

    v19 = [queueIdentifierCopy copy];
    queueIdentifier = v14->_queueIdentifier;
    v14->_queueIdentifier = v19;

    v21 = [propertiesCopy copy];
    queueProperties = v14->_queueProperties;
    v14->_queueProperties = v21;
  }

  return v14;
}

@end