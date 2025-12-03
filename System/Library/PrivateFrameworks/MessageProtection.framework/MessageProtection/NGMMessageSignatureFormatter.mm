@interface NGMMessageSignatureFormatter
- (NGMMessageSignatureFormatter)initWithDHOutput:(id)output prekeyPub:(id)pub ephemeralPub:(id)ephemeralPub recipientPub:(id)recipientPub ciphertext:(id)ciphertext;
@end

@implementation NGMMessageSignatureFormatter

- (NGMMessageSignatureFormatter)initWithDHOutput:(id)output prekeyPub:(id)pub ephemeralPub:(id)ephemeralPub recipientPub:(id)recipientPub ciphertext:(id)ciphertext
{
  ciphertextCopy = ciphertext;
  recipientPubCopy = recipientPub;
  ephemeralPubCopy = ephemeralPub;
  pubCopy = pub;
  v16 = [output mutableCopy];
  [v16 appendData:pubCopy];

  [v16 appendData:ephemeralPubCopy];
  [v16 appendData:recipientPubCopy];

  [v16 appendData:ciphertextCopy];
  v20.receiver = self;
  v20.super_class = NGMMessageSignatureFormatter;
  v17 = [(NGMMessageSignatureFormatter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_formattedSignedData, v16);
  }

  return v18;
}

@end