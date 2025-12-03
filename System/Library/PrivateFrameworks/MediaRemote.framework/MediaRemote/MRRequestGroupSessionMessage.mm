@interface MRRequestGroupSessionMessage
- (MRRequestDetails)details;
- (MRRequestGroupSessionMessage)initWithDetails:(id)details;
@end

@implementation MRRequestGroupSessionMessage

- (MRRequestGroupSessionMessage)initWithDetails:(id)details
{
  detailsCopy = details;
  v9.receiver = self;
  v9.super_class = MRRequestGroupSessionMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRequestGroupSessionMessageProtobuf);
    protobuf = [detailsCopy protobuf];
    [(_MRRequestGroupSessionMessageProtobuf *)v6 setDetails:protobuf];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  details = [underlyingCodableMessage details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:details];

  return v6;
}

@end