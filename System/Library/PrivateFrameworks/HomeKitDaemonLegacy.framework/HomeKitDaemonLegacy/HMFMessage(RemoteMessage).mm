@interface HMFMessage(RemoteMessage)
- (id)remoteSenderContext;
- (id)remoteSourceDevice;
- (id)remoteToID;
- (id)remoteUserPairingIdentity;
- (uint64_t)isRemote;
- (uint64_t)isSecureRemote;
- (uint64_t)remoteDisallowsIDSRacing;
- (uint64_t)remoteResponseRestriction;
- (uint64_t)remoteRestriction;
- (void)remoteSourceID;
@end

@implementation HMFMessage(RemoteMessage)

- (uint64_t)remoteDisallowsIDSRacing
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_BOOLForKey:@"HMD.remoteDisallowsIDSRacing"];

  return v2;
}

- (id)remoteSenderContext
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"HMD.remoteSenderContext"];

  return v2;
}

- (uint64_t)remoteResponseRestriction
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_numberForKey:@"HMD.remoteTransportResponseRestriction"];

  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (uint64_t)remoteRestriction
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_numberForKey:@"HMD.remoteTransportRestriction"];

  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (id)remoteToID
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_stringForKey:@"kRemoteMessageIDSToIDKey"];

  return v2;
}

- (id)remoteUserPairingIdentity
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"kIDSMessageSourceUserKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  pairingIdentity = [v4 pairingIdentity];

  return pairingIdentity;
}

- (id)remoteSourceDevice
{
  destination = [self destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = destination;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  device = [v3 device];

  return device;
}

- (void)remoteSourceID
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"kIDSMessageSourceIDKey"];

  if (!v3)
  {
    messagePayload = [self messagePayload];
    v3 = [messagePayload objectForKeyedSubscript:@"kIDSMessageSourceIDKey"];
  }

  v5 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (uint64_t)isSecureRemote
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_BOOLForKey:@"HMD.remoteSecure"];

  return v2;
}

- (uint64_t)isRemote
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_BOOLForKey:@"HMD.remote"];

  return v2;
}

@end