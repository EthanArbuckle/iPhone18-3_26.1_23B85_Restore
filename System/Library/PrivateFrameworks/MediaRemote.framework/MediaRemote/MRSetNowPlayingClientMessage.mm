@interface MRSetNowPlayingClientMessage
- (MRClient)client;
- (MRSetNowPlayingClientMessage)initWithClient:(id)client;
@end

@implementation MRSetNowPlayingClientMessage

- (MRSetNowPlayingClientMessage)initWithClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = MRSetNowPlayingClientMessage;
  v5 = [(MRProtocolMessage *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSetNowPlayingClientMessageProtobuf);
    skeleton = [clientCopy skeleton];
    protobuf = [skeleton protobuf];
    [(_MRSetNowPlayingClientMessageProtobuf *)v6 setClient:protobuf];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRClient)client
{
  v3 = [MRClient alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  client = [underlyingCodableMessage client];
  v6 = [(MRClient *)v3 initWithProtobuf:client];

  return v6;
}

@end