@interface MRPlaybackSessionMigratePostMessage
- (MRPlaybackSessionMigratePostMessage)initWithRequest:(id)a3 playerPath:(id)a4 setPlaybackSessionCommandID:(id)a5;
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlayerPath)playerPath;
- (NSDictionary)metrics;
- (NSError)error;
- (NSString)setPlaybackSessionCommandID;
- (void)setMetrics:(id)a3;
@end

@implementation MRPlaybackSessionMigratePostMessage

- (MRPlaybackSessionMigratePostMessage)initWithRequest:(id)a3 playerPath:(id)a4 setPlaybackSessionCommandID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MRPlaybackSessionMigratePostMessage;
  v11 = [(MRProtocolMessage *)&v16 init];
  if (v11)
  {
    v12 = objc_alloc_init(_MRPlaybackSessionMigratePostMessageProtobuf);
    v13 = [v8 protobuf];
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)v12 setRequest:v13];

    v14 = [v9 protobuf];
    [(_MRPlaybackSessionMigratePostMessageProtobuf *)v12 setPlayerPath:v14];

    [(_MRPlaybackSessionMigratePostMessageProtobuf *)v12 setSetPlaybackSessionCommandID:v10];
    [(MRProtocolMessage *)v11 setUnderlyingCodableMessage:v12];
  }

  return v11;
}

- (MRPlaybackSessionMigrateRequest)request
{
  v3 = [MRPlaybackSessionMigrateRequest alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 request];
  v6 = [(MRPlaybackSessionMigrateRequest *)v3 initWithProtobuf:v5];

  return v6;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

- (NSString)setPlaybackSessionCommandID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 setPlaybackSessionCommandID];

  return v3;
}

- (NSDictionary)metrics
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 metrics];
  v4 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v3);

  return v4;
}

- (void)setMetrics:(id)a3
{
  v5 = _MRProtoUtilsProtoDictionaryFromNSDictionary(a3);
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  [v4 setMetrics:v5];
}

- (NSError)error
{
  v3 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v7 = [v6 error];
    v8 = [v5 mr_initWithProtobuf:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end