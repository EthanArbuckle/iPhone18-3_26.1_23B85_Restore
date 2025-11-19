@interface MPStatusKitIncomingRatchet
- (MPStatusKitIncomingRatchet)initWithData:(id)a3 error:(id *)a4;
- (id)serializedData;
- (id)signingKeyIdentifier;
- (id)unsealStatusWithIndex:(unsigned __int16)a3 encryptedMessage:(id)a4 authenticating:(id)a5 signature:(id)a6 error:(id *)a7;
@end

@implementation MPStatusKitIncomingRatchet

- (MPStatusKitIncomingRatchet)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MPStatusKitIncomingRatchet;
  v7 = [(MPStatusKitIncomingRatchet *)&v11 init];
  if (!v7 || (v8 = [[_TtC17MessageProtection17SKIncomingRatchet alloc] initWithData:v6 error:a4], [(MPStatusKitIncomingRatchet *)v7 setRatchet:v8], v8, [(MPStatusKitIncomingRatchet *)v7 ratchet], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v9 = v7;
  }

  return v9;
}

- (id)unsealStatusWithIndex:(unsigned __int16)a3 encryptedMessage:(id)a4 authenticating:(id)a5 signature:(id)a6 error:(id *)a7
{
  v10 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [(MPStatusKitIncomingRatchet *)self ratchet];
  v16 = [v15 openStatusWithIndex:v10 encryptedMessage:v14 authenticating:v13 signature:v12 error:a7];

  return v16;
}

- (id)serializedData
{
  v2 = [(MPStatusKitIncomingRatchet *)self ratchet];
  v3 = [v2 serializedData];

  return v3;
}

- (id)signingKeyIdentifier
{
  v2 = [(MPStatusKitIncomingRatchet *)self ratchet];
  v3 = [v2 signingKeyIdentifier];

  return v3;
}

@end