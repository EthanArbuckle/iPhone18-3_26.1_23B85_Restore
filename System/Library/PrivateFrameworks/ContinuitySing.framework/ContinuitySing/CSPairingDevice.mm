@interface CSPairingDevice
- (CSPairingDevice)initWithRPCompanionLinkDevice:(id)device;
- (NSString)remoteDisplayIdentifier;
- (id)description;
@end

@implementation CSPairingDevice

- (CSPairingDevice)initWithRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = CSPairingDevice;
  v5 = [(CSPairingDevice *)&v17 init];
  if (v5)
  {
    name = [deviceCopy name];
    v7 = [name copy];
    [(CSPairingDevice *)v5 setName:v7];

    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    v9 = [idsDeviceIdentifier copy];
    [(CSPairingDevice *)v5 setIdsDeviceIdentifier:v9];

    sessionPairingIdentifier = [deviceCopy sessionPairingIdentifier];
    v11 = [sessionPairingIdentifier copy];
    [(CSPairingDevice *)v5 setSessionPairingIdentifier:v11];

    verifiedIdentity = [deviceCopy verifiedIdentity];
    v13 = [verifiedIdentity copy];
    [(CSPairingDevice *)v5 setPeerVerifiedIdentifier:v13];

    mediaRouteIdentifier = [deviceCopy mediaRouteIdentifier];
    v15 = [mediaRouteIdentifier copy];
    [(CSPairingDevice *)v5 setMediaRouteIdentifier:v15];

    -[CSPairingDevice setStatusFlags:](v5, "setStatusFlags:", [deviceCopy statusFlags]);
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = [(CSPairingDevice *)self name];
  idsDeviceIdentifier = [(CSPairingDevice *)self idsDeviceIdentifier];
  sessionPairingIdentifier = [(CSPairingDevice *)self sessionPairingIdentifier];
  peerVerifiedIdentifier = [(CSPairingDevice *)self peerVerifiedIdentifier];
  mediaRouteIdentifier = [(CSPairingDevice *)self mediaRouteIdentifier];
  remoteDisplayIdentifier = [(CSPairingDevice *)self remoteDisplayIdentifier];
  v10 = [v3 initWithFormat:@"<CSPairingDevice [%@] idsDeviceIdentifier:%@ sessionPairingIdentifier:%@ peerVerifiedIdentifier:%@ mediaRouteIdentifier:%@ remoteDisplayIdentifier:%@ isSignedIn:%d>", name, idsDeviceIdentifier, sessionPairingIdentifier, peerVerifiedIdentifier, mediaRouteIdentifier, remoteDisplayIdentifier, -[CSPairingDevice isSignedIn](self, "isSignedIn")];

  return v10;
}

- (NSString)remoteDisplayIdentifier
{
  if ([(CSPairingDevice *)self isSignedIn])
  {
    idsDeviceIdentifier = [(CSPairingDevice *)self idsDeviceIdentifier];
    v4 = [idsDeviceIdentifier copy];
  }

  else
  {
    idsDeviceIdentifier = [(CSPairingDevice *)self sessionPairingIdentifier];
    v5 = [idsDeviceIdentifier copy];
    v6 = v5;
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      idsDeviceIdentifier2 = [(CSPairingDevice *)self idsDeviceIdentifier];
      v4 = [idsDeviceIdentifier2 copy];
    }
  }

  return v4;
}

@end