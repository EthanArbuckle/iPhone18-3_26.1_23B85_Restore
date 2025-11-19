@interface MRMicrophoneConnectionRequestMessage
- (MRMicrophoneConnectionRequestMessage)initWithDetails:(id)a3 rapportIdentifier:(id)a4;
- (MRRequestDetails)details;
- (NSString)rapportIdentifier;
@end

@implementation MRMicrophoneConnectionRequestMessage

- (MRMicrophoneConnectionRequestMessage)initWithDetails:(id)a3 rapportIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MRMicrophoneConnectionRequestMessage;
  v8 = [(MRProtocolMessage *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRMicrophoneConnectionRequestMessageProtobuf);
    v10 = [v6 protobuf];
    [(_MRMicrophoneConnectionRequestMessageProtobuf *)v9 setDetails:v10];

    [(_MRMicrophoneConnectionRequestMessageProtobuf *)v9 setRapportIdentifier:v7];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:v5];

  return v6;
}

- (NSString)rapportIdentifier
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 rapportIdentifier];

  return v3;
}

@end