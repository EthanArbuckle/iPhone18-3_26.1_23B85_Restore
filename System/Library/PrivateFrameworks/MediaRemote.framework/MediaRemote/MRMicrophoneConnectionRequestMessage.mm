@interface MRMicrophoneConnectionRequestMessage
- (MRMicrophoneConnectionRequestMessage)initWithDetails:(id)details rapportIdentifier:(id)identifier;
- (MRRequestDetails)details;
- (NSString)rapportIdentifier;
@end

@implementation MRMicrophoneConnectionRequestMessage

- (MRMicrophoneConnectionRequestMessage)initWithDetails:(id)details rapportIdentifier:(id)identifier
{
  detailsCopy = details;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MRMicrophoneConnectionRequestMessage;
  v8 = [(MRProtocolMessage *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRMicrophoneConnectionRequestMessageProtobuf);
    protobuf = [detailsCopy protobuf];
    [(_MRMicrophoneConnectionRequestMessageProtobuf *)v9 setDetails:protobuf];

    [(_MRMicrophoneConnectionRequestMessageProtobuf *)v9 setRapportIdentifier:identifierCopy];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  details = [underlyingCodableMessage details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:details];

  return v6;
}

- (NSString)rapportIdentifier
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  rapportIdentifier = [underlyingCodableMessage rapportIdentifier];

  return rapportIdentifier;
}

@end