@interface MRApplicationConnectionProtocolMessage
- (MRApplicationConnectionContext)context;
- (MRApplicationConnectionMessage)message;
- (MRApplicationConnectionProtocolMessage)initWithMessage:(id)message connectionContext:(id)context;
@end

@implementation MRApplicationConnectionProtocolMessage

- (MRApplicationConnectionProtocolMessage)initWithMessage:(id)message connectionContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = MRApplicationConnectionProtocolMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRApplicationConnectionProtocolMessageProtobuf);
    protobuf = [messageCopy protobuf];
    [(_MRApplicationConnectionProtocolMessageProtobuf *)v9 setApplicationMessage:protobuf];

    protobuf2 = [contextCopy protobuf];
    [(_MRApplicationConnectionProtocolMessageProtobuf *)v9 setContext:protobuf2];

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

- (MRApplicationConnectionMessage)message
{
  v3 = [MRApplicationConnectionMessage alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  applicationMessage = [underlyingCodableMessage applicationMessage];
  v6 = [(MRApplicationConnectionMessage *)v3 initWithProtobuf:applicationMessage];

  return v6;
}

@end