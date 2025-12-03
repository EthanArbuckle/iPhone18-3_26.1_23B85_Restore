@interface MRPlaybackSessionMigratePostMessage
- (MRPlaybackSessionMigratePostMessage)initWithRequest:(id)request playerPath:(id)path setPlaybackSessionCommandID:(id)d;
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlayerPath)playerPath;
- (NSDictionary)metrics;
- (NSError)error;
- (NSString)setPlaybackSessionCommandID;
- (void)setMetrics:(id)metrics;
@end

@implementation MRPlaybackSessionMigratePostMessage

- (MRPlaybackSessionMigratePostMessage)initWithRequest:(id)request playerPath:(id)path setPlaybackSessionCommandID:(id)d
{
  requestCopy = request;
  pathCopy = path;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MRPlaybackSessionMigratePostMessage;
  v11 = [(MRProtocolMessage *)&v16 init];
  if (v11)
  {
    v12 = objc_alloc_init(_MRPlaybackSessionMigratePostMessageProtobuf);
    protobuf = [requestCopy protobuf];
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)v12 setRequest:protobuf];

    protobuf2 = [pathCopy protobuf];
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)v12 setPlayerPath:protobuf2];

    [(_MRPlaybackSessionMigratePostMessageProtobuf *)v12 setSetPlaybackSessionCommandID:dCopy];
    [(MRProtocolMessage *)v11 setUnderlyingCodableMessage:v12];
  }

  return v11;
}

- (MRPlaybackSessionMigrateRequest)request
{
  v3 = [MRPlaybackSessionMigrateRequest alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  request = [underlyingCodableMessage request];
  v6 = [(MRPlaybackSessionMigrateRequest *)v3 initWithProtobuf:request];

  return v6;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (NSString)setPlaybackSessionCommandID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  setPlaybackSessionCommandID = [underlyingCodableMessage setPlaybackSessionCommandID];

  return setPlaybackSessionCommandID;
}

- (NSDictionary)metrics
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  metrics = [underlyingCodableMessage metrics];
  v4 = _MRProtoUtilsNSDictionaryFromProtoDictionary(metrics);

  return v4;
}

- (void)setMetrics:(id)metrics
{
  v5 = _MRProtoUtilsProtoDictionaryFromNSDictionary(metrics);
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  [underlyingCodableMessage setMetrics:v5];
}

- (NSError)error
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  error = [underlyingCodableMessage error];

  if (error)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
    error2 = [underlyingCodableMessage2 error];
    v8 = [v5 mr_initWithProtobuf:error2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end