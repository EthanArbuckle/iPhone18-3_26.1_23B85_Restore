@interface CSPairingDevice
- (CSPairingDevice)initWithRPCompanionLinkDevice:(id)a3;
- (NSString)remoteDisplayIdentifier;
- (id)description;
@end

@implementation CSPairingDevice

- (CSPairingDevice)initWithRPCompanionLinkDevice:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CSPairingDevice;
  v5 = [(CSPairingDevice *)&v17 init];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 copy];
    [(CSPairingDevice *)v5 setName:v7];

    v8 = [v4 idsDeviceIdentifier];
    v9 = [v8 copy];
    [(CSPairingDevice *)v5 setIdsDeviceIdentifier:v9];

    v10 = [v4 sessionPairingIdentifier];
    v11 = [v10 copy];
    [(CSPairingDevice *)v5 setSessionPairingIdentifier:v11];

    v12 = [v4 verifiedIdentity];
    v13 = [v12 copy];
    [(CSPairingDevice *)v5 setPeerVerifiedIdentifier:v13];

    v14 = [v4 mediaRouteIdentifier];
    v15 = [v14 copy];
    [(CSPairingDevice *)v5 setMediaRouteIdentifier:v15];

    -[CSPairingDevice setStatusFlags:](v5, "setStatusFlags:", [v4 statusFlags]);
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(CSPairingDevice *)self name];
  v5 = [(CSPairingDevice *)self idsDeviceIdentifier];
  v6 = [(CSPairingDevice *)self sessionPairingIdentifier];
  v7 = [(CSPairingDevice *)self peerVerifiedIdentifier];
  v8 = [(CSPairingDevice *)self mediaRouteIdentifier];
  v9 = [(CSPairingDevice *)self remoteDisplayIdentifier];
  v10 = [v3 initWithFormat:@"<CSPairingDevice [%@] idsDeviceIdentifier:%@ sessionPairingIdentifier:%@ peerVerifiedIdentifier:%@ mediaRouteIdentifier:%@ remoteDisplayIdentifier:%@ isSignedIn:%d>", v4, v5, v6, v7, v8, v9, -[CSPairingDevice isSignedIn](self, "isSignedIn")];

  return v10;
}

- (NSString)remoteDisplayIdentifier
{
  if ([(CSPairingDevice *)self isSignedIn])
  {
    v3 = [(CSPairingDevice *)self idsDeviceIdentifier];
    v4 = [v3 copy];
  }

  else
  {
    v3 = [(CSPairingDevice *)self sessionPairingIdentifier];
    v5 = [v3 copy];
    v6 = v5;
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v7 = [(CSPairingDevice *)self idsDeviceIdentifier];
      v4 = [v7 copy];
    }
  }

  return v4;
}

@end