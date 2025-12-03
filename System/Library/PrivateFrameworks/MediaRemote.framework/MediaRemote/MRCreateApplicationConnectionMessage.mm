@interface MRCreateApplicationConnectionMessage
- (MRApplicationConnectionContext)context;
- (MRApplicationConnectionRequestInfo)requestInfo;
- (MRCreateApplicationConnectionMessage)initWithConnectionContext:(id)context requestInfo:(id)info;
@end

@implementation MRCreateApplicationConnectionMessage

- (MRCreateApplicationConnectionMessage)initWithConnectionContext:(id)context requestInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = MRCreateApplicationConnectionMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRCreateApplicationConnectionMessageProtobuf);
    protobuf = [contextCopy protobuf];
    [(_MRCreateApplicationConnectionMessageProtobuf *)v9 setContext:protobuf];

    protobuf2 = [infoCopy protobuf];
    [(_MRCreateApplicationConnectionMessageProtobuf *)v9 setRequestInfo:protobuf2];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (MRApplicationConnectionContext)context
{
  v3 = [MRApplicationConnectionContext alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  context = [underlyingCodableMessage context];
  v6 = [(MRApplicationConnectionContext *)v3 initWithProtobuf:context];

  return v6;
}

- (MRApplicationConnectionRequestInfo)requestInfo
{
  v3 = [MRApplicationConnectionRequestInfo alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  requestInfo = [underlyingCodableMessage requestInfo];
  v6 = [(MRApplicationConnectionRequestInfo *)v3 initWithProtobuf:requestInfo];

  return v6;
}

@end