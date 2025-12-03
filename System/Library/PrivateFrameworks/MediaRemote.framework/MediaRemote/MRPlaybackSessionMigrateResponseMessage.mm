@interface MRPlaybackSessionMigrateResponseMessage
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlaybackSessionMigrateResponseMessage)initWithRequest:(id)request;
@end

@implementation MRPlaybackSessionMigrateResponseMessage

- (MRPlaybackSessionMigrateResponseMessage)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MRPlaybackSessionMigrateResponseMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRPlaybackSessionMigrateResponseMessageProtobuf);
    protobuf = [requestCopy protobuf];
    [(_MRPlaybackSessionMigrateResponseMessageProtobuf *)v6 setRequest:protobuf];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRPlaybackSessionMigrateRequest)request
{
  v3 = [MRPlaybackSessionMigrateRequest alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  request = [underlyingCodableMessage request];
  v6 = [(MRPlaybackSessionMigrateRequest *)v3 initWithProtobuf:request];

  return v6;
}

@end