@interface MRSendCommandMessage
- (MRPlayerPath)playerPath;
- (NSDictionary)options;
- (unsigned)appOptions;
- (unsigned)command;
@end

@implementation MRSendCommandMessage

- (unsigned)command
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRMediaRemoteCommandFromProtobuf([underlyingCodableMessage command]);

  return v3;
}

- (NSDictionary)options
{
  options = self->_options;
  if (!options)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    options = [underlyingCodableMessage options];
    v6 = MRMediaRemoteCommandOptionsFromProtobuf(options);
    v7 = self->_options;
    self->_options = v6;

    options = self->_options;
  }

  return options;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (unsigned)appOptions
{
  v2 = [(NSDictionary *)self->_options objectForKey:@"kMRMediaRemoteOptionSendOptionsNumber"];
  intValue = [v2 intValue];

  return intValue;
}

@end