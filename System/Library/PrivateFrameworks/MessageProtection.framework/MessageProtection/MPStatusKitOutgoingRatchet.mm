@interface MPStatusKitOutgoingRatchet
- (BOOL)ratchetForward;
- (MPStatusKitOutgoingRatchet)init;
- (MPStatusKitOutgoingRatchet)initWithData:(id)data error:(id *)error;
- (id)currentSubscriptionKeys;
- (id)sealStatus:(id)status authenticating:(id)authenticating error:(id *)error;
- (id)serializedData;
- (id)signingKeyIdentifier;
@end

@implementation MPStatusKitOutgoingRatchet

- (MPStatusKitOutgoingRatchet)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MPStatusKitOutgoingRatchet;
  v7 = [(MPStatusKitOutgoingRatchet *)&v11 init];
  if (!v7 || (v8 = [[_TtC17MessageProtection17SKOutgoingRatchet alloc] initWithData:dataCopy error:error], [(MPStatusKitOutgoingRatchet *)v7 setRatchet:v8], v8, [(MPStatusKitOutgoingRatchet *)v7 ratchet], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v9 = v7;
  }

  return v9;
}

- (MPStatusKitOutgoingRatchet)init
{
  v5.receiver = self;
  v5.super_class = MPStatusKitOutgoingRatchet;
  v2 = [(MPStatusKitOutgoingRatchet *)&v5 init];
  if (v2)
  {
    v3 = +[_TtC17MessageProtection17SKOutgoingRatchet generate];
    [(MPStatusKitOutgoingRatchet *)v2 setRatchet:v3];
  }

  return v2;
}

- (id)currentSubscriptionKeys
{
  ratchet = [(MPStatusKitOutgoingRatchet *)self ratchet];
  currentSubscriptionKeys = [ratchet currentSubscriptionKeys];

  return currentSubscriptionKeys;
}

- (BOOL)ratchetForward
{
  ratchet = [(MPStatusKitOutgoingRatchet *)self ratchet];
  ratchetForward = [ratchet ratchetForward];

  return ratchetForward;
}

- (id)sealStatus:(id)status authenticating:(id)authenticating error:(id *)error
{
  authenticatingCopy = authenticating;
  statusCopy = status;
  ratchet = [(MPStatusKitOutgoingRatchet *)self ratchet];
  v11 = [ratchet sealMessage:statusCopy authenticating:authenticatingCopy error:error];

  return v11;
}

- (id)serializedData
{
  ratchet = [(MPStatusKitOutgoingRatchet *)self ratchet];
  serializedData = [ratchet serializedData];

  return serializedData;
}

- (id)signingKeyIdentifier
{
  ratchet = [(MPStatusKitOutgoingRatchet *)self ratchet];
  signingKeyIdentifier = [ratchet signingKeyIdentifier];

  return signingKeyIdentifier;
}

@end