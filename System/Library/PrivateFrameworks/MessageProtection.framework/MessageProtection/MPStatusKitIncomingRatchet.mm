@interface MPStatusKitIncomingRatchet
- (MPStatusKitIncomingRatchet)initWithData:(id)data error:(id *)error;
- (id)serializedData;
- (id)signingKeyIdentifier;
- (id)unsealStatusWithIndex:(unsigned __int16)index encryptedMessage:(id)message authenticating:(id)authenticating signature:(id)signature error:(id *)error;
@end

@implementation MPStatusKitIncomingRatchet

- (MPStatusKitIncomingRatchet)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MPStatusKitIncomingRatchet;
  v7 = [(MPStatusKitIncomingRatchet *)&v11 init];
  if (!v7 || (v8 = [[_TtC17MessageProtection17SKIncomingRatchet alloc] initWithData:dataCopy error:error], [(MPStatusKitIncomingRatchet *)v7 setRatchet:v8], v8, [(MPStatusKitIncomingRatchet *)v7 ratchet], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v9 = v7;
  }

  return v9;
}

- (id)unsealStatusWithIndex:(unsigned __int16)index encryptedMessage:(id)message authenticating:(id)authenticating signature:(id)signature error:(id *)error
{
  indexCopy = index;
  signatureCopy = signature;
  authenticatingCopy = authenticating;
  messageCopy = message;
  ratchet = [(MPStatusKitIncomingRatchet *)self ratchet];
  v16 = [ratchet openStatusWithIndex:indexCopy encryptedMessage:messageCopy authenticating:authenticatingCopy signature:signatureCopy error:error];

  return v16;
}

- (id)serializedData
{
  ratchet = [(MPStatusKitIncomingRatchet *)self ratchet];
  serializedData = [ratchet serializedData];

  return serializedData;
}

- (id)signingKeyIdentifier
{
  ratchet = [(MPStatusKitIncomingRatchet *)self ratchet];
  signingKeyIdentifier = [ratchet signingKeyIdentifier];

  return signingKeyIdentifier;
}

@end