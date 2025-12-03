@interface MRInvalidateApplicationConnectionMessage
- (MRApplicationConnectionContext)context;
- (MRInvalidateApplicationConnectionMessage)initWithConnectionContext:(id)context error:(id)error;
@end

@implementation MRInvalidateApplicationConnectionMessage

- (MRInvalidateApplicationConnectionMessage)initWithConnectionContext:(id)context error:(id)error
{
  contextCopy = context;
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = MRInvalidateApplicationConnectionMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    protobuf = [contextCopy protobuf];
    [(MRProtocolMessage *)v8 setError:errorCopy];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:protobuf];
  }

  return v8;
}

- (MRApplicationConnectionContext)context
{
  v3 = [MRApplicationConnectionContext alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [(MRApplicationConnectionContext *)v3 initWithProtobuf:underlyingCodableMessage];

  return v5;
}

@end