@interface HMDUserMessagePolicy
- (BOOL)isEqual:(id)equal;
- (HMDHome)home;
- (HMDUserMessagePolicy)init;
- (id)__initWithHome:(id)home homeUUID:(id)d userPrivilege:(unint64_t)privilege remoteAccessRequired:(BOOL)required requiresCameraStreamingAccess:(BOOL)access;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDUserMessagePolicy

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  home = [(HMDUserMessagePolicy *)self home];
  v5 = [HMDMutableUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:[(HMDUserMessagePolicy *)self userPrivilege] remoteAccessRequired:[(HMDUserMessagePolicy *)self requiresRemoteAccess] requiresCameraStreamingAccess:[(HMDUserMessagePolicy *)self requiresCameraStreamingAccess]];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_autoreleasePoolPush();
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && (WeakRetained = objc_loadWeakRetained(&self->_home), [(HMDUserMessagePolicy *)v8 home], v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, WeakRetained, v11) && (userPrivilege = self->_userPrivilege, userPrivilege == [(HMDUserMessagePolicy *)v8 userPrivilege]))
    {
      requiresRemoteAccess = self->_requiresRemoteAccess;
      v14 = requiresRemoteAccess == [(HMDUserMessagePolicy *)v8 requiresRemoteAccess];
    }

    else
    {
      v14 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_homeUUID hash];
  v4 = v3 ^ [(HMDUserMessagePolicy *)self requiresRemoteAccess];
  v5 = v4 ^ (2 * [(HMDUserMessagePolicy *)self userPrivilege]);
  requiresCameraStreamingAccess = [(HMDUserMessagePolicy *)self requiresCameraStreamingAccess];
  v7 = 4;
  if (!requiresCameraStreamingAccess)
  {
    v7 = 0;
  }

  return v5 ^ v7;
}

- (id)__initWithHome:(id)home homeUUID:(id)d userPrivilege:(unint64_t)privilege remoteAccessRequired:(BOOL)required requiresCameraStreamingAccess:(BOOL)access
{
  homeCopy = home;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = HMDUserMessagePolicy;
  v14 = [(HMDUserMessagePolicy *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, homeCopy);
    objc_storeStrong(&v15->_homeUUID, d);
    v15->_userPrivilege = privilege;
    v15->_requiresRemoteAccess = required;
    v15->_requiresCameraStreamingAccess = access;
  }

  return v15;
}

- (HMDUserMessagePolicy)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end