@interface MRSendCommandMessage
- (MRPlayerPath)playerPath;
- (NSDictionary)options;
- (unsigned)appOptions;
- (unsigned)command;
@end

@implementation MRSendCommandMessage

- (unsigned)command
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRMediaRemoteCommandFromProtobuf([v2 command]);

  return v3;
}

- (NSDictionary)options
{
  options = self->_options;
  if (!options)
  {
    v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v5 = [v4 options];
    v6 = MRMediaRemoteCommandOptionsFromProtobuf(v5);
    v7 = self->_options;
    self->_options = v6;

    options = self->_options;
  }

  return options;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

- (unsigned)appOptions
{
  v2 = [(NSDictionary *)self->_options objectForKey:@"kMRMediaRemoteOptionSendOptionsNumber"];
  v3 = [v2 intValue];

  return v3;
}

@end