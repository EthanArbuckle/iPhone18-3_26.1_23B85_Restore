@interface MRMicrophoneConnectionResponseMessage
- (MRMicrophoneConnectionResponseMessage)initWithPairingData:(id)data rapportIdentifier:(id)identifier;
- (MRMicrophoneConnectionResponseMessage)initWithResult:(int64_t)result rapportIdentifier:(id)identifier;
- (NSData)pairingData;
- (NSString)rapportIdentifier;
- (int64_t)result;
@end

@implementation MRMicrophoneConnectionResponseMessage

- (MRMicrophoneConnectionResponseMessage)initWithResult:(int64_t)result rapportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MRMicrophoneConnectionResponseMessage;
  v7 = [(MRProtocolMessage *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRMicrophoneConnectionResponseMessageProtobuf);
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v8 setRapportIdentifier:identifierCopy];
    if (result == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = result == 1;
    }

    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v8 setResult:v9];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (MRMicrophoneConnectionResponseMessage)initWithPairingData:(id)data rapportIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MRMicrophoneConnectionResponseMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRMicrophoneConnectionResponseMessageProtobuf);
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v9 setRapportIdentifier:identifierCopy];
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v9 setResult:1];
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v9 setPairingData:dataCopy];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (int64_t)result
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  result = [underlyingCodableMessage result];
  if (result == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = result == 1;
  }

  return v4;
}

- (NSString)rapportIdentifier
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  rapportIdentifier = [underlyingCodableMessage rapportIdentifier];

  return rapportIdentifier;
}

- (NSData)pairingData
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  pairingData = [underlyingCodableMessage pairingData];

  return pairingData;
}

@end