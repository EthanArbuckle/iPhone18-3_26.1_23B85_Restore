@interface MRSetDefaultSupportedCommandsMessage
- (MRSetDefaultSupportedCommandsMessage)initWithDefaultSupportedCommands:(id)commands forPlayerPath:(id)path encoding:(int64_t)encoding;
- (MRSetDefaultSupportedCommandsMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetDefaultSupportedCommandsMessage

- (MRSetDefaultSupportedCommandsMessage)initWithDefaultSupportedCommands:(id)commands forPlayerPath:(id)path encoding:(int64_t)encoding
{
  commandsCopy = commands;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = MRSetDefaultSupportedCommandsMessage;
  v10 = [(MRProtocolMessage *)&v17 init];
  if (v10)
  {
    v11 = [[MRNowPlayingState alloc] initWithPlayerPath:pathCopy];
    state = v10->_state;
    v10->_state = v11;

    [(MRNowPlayingState *)v10->_state setSupportedCommands:commandsCopy];
    client = [pathCopy client];
    bundleIdentifier = [client bundleIdentifier];
    [(MRNowPlayingState *)v10->_state setDisplayID:bundleIdentifier];

    v15 = [(MRNowPlayingState *)v10->_state protobufWithEncoding:encoding];
    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v15];
  }

  return v10;
}

- (MRSetDefaultSupportedCommandsMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MRSetDefaultSupportedCommandsMessage;
  v7 = [(MRProtocolMessage *)&v11 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v8 = [[MRNowPlayingState alloc] initWithProtobuf:messageCopy];
    state = v7->_state;
    v7->_state = v8;
  }

  return v7;
}

@end