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

- (uint64_t)isRemote
{
  v1 = [a1 userInfo];
  v2 = [v1 hmf_BOOLForKey:@"HMD.remote"];

  return v2;
}

- (uint64_t)remoteDisallowsIDSRacing
{
  v1 = [a1 userInfo];
  v2 = [v1 hmf_BOOLForKey:@"HMD.remoteDisallowsIDSRacing"];

  return v2;
}

- (id)remoteSenderContext
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"HMD.remoteSenderContext"];

  return v2;
}

- (uint64_t)remoteResponseRestriction
{
  v1 = [a1 userInfo];
  v2 = [v1 hmf_numberForKey:@"HMD.remoteTransportResponseRestriction"];

  if (v2)
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (uint64_t)remoteRestriction
{
  v1 = [a1 userInfo];
  v2 = [v1 hmf_numberForKey:@"HMD.remoteTransportRestriction"];

  if (v2)
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (id)remoteToID
{
  v1 = [a1 userInfo];
  v2 = [v1 hmf_stringForKey:@"kRemoteMessageIDSToIDKey"];

  return v2;
}

- (id)remoteUserPairingIdentity
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"kIDSMessageSourceUserKey"];

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

  v5 = [v4 pairingIdentity];

  return v5;
}

- (id)remoteSourceDevice
{
  v1 = [a1 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  v4 = [v3 device];

  return v4;
}

- (void)remoteSourceID
{
  v2 = [a1 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kIDSMessageSourceIDKey"];

  if (!v3)
  {
    v4 = [a1 messagePayload];
    v3 = [v4 objectForKeyedSubscript:@"kIDSMessageSourceIDKey"];
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
  v1 = [a1 userInfo];
  v2 = [v1 hmf_BOOLForKey:@"HMD.remoteSecure"];

  return v2;
}

@end