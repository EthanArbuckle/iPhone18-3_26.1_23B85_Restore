@interface MRCreateApplicationConnectionMessage
- (MRApplicationConnectionContext)context;
- (MRApplicationConnectionRequestInfo)requestInfo;
- (MRCreateApplicationConnectionMessage)initWithConnectionContext:(id)a3 requestInfo:(id)a4;
@end

@implementation MRCreateApplicationConnectionMessage

- (MRCreateApplicationConnectionMessage)initWithConnectionContext:(id)a3 requestInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MRCreateApplicationConnectionMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRCreateApplicationConnectionMessageProtobuf);
    v10 = [v6 protobuf];
    [(_MRCreateApplicationConnectionMessageProtobuf *)v9 setContext:v10];

    v11 = [v7 protobuf];
    [(_MRCreateApplicationConnectionMessageProtobuf *)v9 setRequestInfo:v11];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (MRApplicationConnectionContext)context
{
  v3 = [MRApplicationConnectionContext alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 context];
  v6 = [(MRApplicationConnectionContext *)v3 initWithProtobuf:v5];

  return v6;
}

- (MRApplicationConnectionRequestInfo)requestInfo
{
  v3 = [MRApplicationConnectionRequestInfo alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 requestInfo];
  v6 = [(MRApplicationConnectionRequestInfo *)v3 initWithProtobuf:v5];

  return v6;
}

@end