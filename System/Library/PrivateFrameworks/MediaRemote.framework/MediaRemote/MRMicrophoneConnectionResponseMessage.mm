@interface MRMicrophoneConnectionResponseMessage
- (MRMicrophoneConnectionResponseMessage)initWithPairingData:(id)a3 rapportIdentifier:(id)a4;
- (MRMicrophoneConnectionResponseMessage)initWithResult:(int64_t)a3 rapportIdentifier:(id)a4;
- (NSData)pairingData;
- (NSString)rapportIdentifier;
- (int64_t)result;
@end

@implementation MRMicrophoneConnectionResponseMessage

- (MRMicrophoneConnectionResponseMessage)initWithResult:(int64_t)a3 rapportIdentifier:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MRMicrophoneConnectionResponseMessage;
  v7 = [(MRProtocolMessage *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRMicrophoneConnectionResponseMessageProtobuf);
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v8 setRapportIdentifier:v6];
    if (a3 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a3 == 1;
    }

    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v8 setResult:v9];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (MRMicrophoneConnectionResponseMessage)initWithPairingData:(id)a3 rapportIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRMicrophoneConnectionResponseMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRMicrophoneConnectionResponseMessageProtobuf);
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v9 setRapportIdentifier:v7];
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v9 setResult:1];
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)v9 setPairingData:v6];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (int64_t)result
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 result];
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  return v4;
}

- (NSString)rapportIdentifier
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 rapportIdentifier];

  return v3;
}

- (NSData)pairingData
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 pairingData];

  return v3;
}

@end