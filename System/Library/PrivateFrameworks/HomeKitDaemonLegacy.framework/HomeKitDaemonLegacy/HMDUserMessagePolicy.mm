@interface HMDUserMessagePolicy
- (BOOL)isEqual:(id)a3;
- (HMDHome)home;
- (HMDUserMessagePolicy)init;
- (id)__initWithHome:(id)a3 homeUUID:(id)a4 userPrivilege:(unint64_t)a5 remoteAccessRequired:(BOOL)a6 requiresCameraStreamingAccess:(BOOL)a7;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMDUserMessagePolicy

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(HMDUserMessagePolicy *)self home];
  v5 = [HMDMutableUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:[(HMDUserMessagePolicy *)self userPrivilege] remoteAccessRequired:[(HMDUserMessagePolicy *)self requiresRemoteAccess] requiresCameraStreamingAccess:[(HMDUserMessagePolicy *)self requiresCameraStreamingAccess]];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v6 = v4;
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
  v6 = [(HMDUserMessagePolicy *)self requiresCameraStreamingAccess];
  v7 = 4;
  if (!v6)
  {
    v7 = 0;
  }

  return v5 ^ v7;
}

- (id)__initWithHome:(id)a3 homeUUID:(id)a4 userPrivilege:(unint64_t)a5 remoteAccessRequired:(BOOL)a6 requiresCameraStreamingAccess:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v17.receiver = self;
  v17.super_class = HMDUserMessagePolicy;
  v14 = [(HMDUserMessagePolicy *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, v12);
    objc_storeStrong(&v15->_homeUUID, a4);
    v15->_userPrivilege = a5;
    v15->_requiresRemoteAccess = a6;
    v15->_requiresCameraStreamingAccess = a7;
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