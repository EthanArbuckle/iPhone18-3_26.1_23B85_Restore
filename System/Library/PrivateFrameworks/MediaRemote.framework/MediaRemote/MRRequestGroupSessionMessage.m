@interface MRRequestGroupSessionMessage
- (MRRequestDetails)details;
- (MRRequestGroupSessionMessage)initWithDetails:(id)a3;
@end

@implementation MRRequestGroupSessionMessage

- (MRRequestGroupSessionMessage)initWithDetails:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRRequestGroupSessionMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRequestGroupSessionMessageProtobuf);
    v7 = [v4 protobuf];
    [(_MRRequestGroupSessionMessageProtobuf *)v6 setDetails:v7];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:v5];

  return v6;
}

@end