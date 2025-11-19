@interface HMDUserMessagePolicy
- (BOOL)isEqual:(id)a3;
- (HMDHome)home;
- (HMDUserMessagePolicy)init;
- (id)__initWithHome:(id)a3 homeUUID:(id)a4 userPrivilege:(unint64_t)a5 remoteAccessRequired:(BOOL)a6 requiresCameraStreamingAccess:(BOOL)a7 useProofOfLocality:(BOOL)a8;
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
  v5 = [(HMDUserMessagePolicy *)HMDMutableUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:[(HMDUserMessagePolicy *)self userPrivilege] remoteAccessRequired:[(HMDUserMessagePolicy *)self requiresRemoteAccess] requiresCameraStreamingAccess:[(HMDUserMessagePolicy *)self requiresCameraStreamingAccess] useProofOfLocality:[(HMDUserMessagePolicy *)self useProofOfLocality]];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (self == v4)
  {
    v15 = 1;
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

    if (!v8)
    {
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained(&self->_home);
    v10 = [(HMDUserMessagePolicy *)v8 home];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_10;
    }

    userPrivilege = self->_userPrivilege;
    if (userPrivilege == [(HMDUserMessagePolicy *)v8 userPrivilege]&& (requiresRemoteAccess = self->_requiresRemoteAccess, requiresRemoteAccess == [(HMDUserMessagePolicy *)v8 requiresRemoteAccess]))
    {
      useProofOfLocality = self->_useProofOfLocality;
      v15 = useProofOfLocality == [(HMDUserMessagePolicy *)v8 useProofOfLocality];
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_homeUUID hash];
  v4 = v3 ^ [(HMDUserMessagePolicy *)self requiresRemoteAccess];
  v5 = v4 ^ (2 * [(HMDUserMessagePolicy *)self userPrivilege]);
  if ([(HMDUserMessagePolicy *)self requiresCameraStreamingAccess])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMDUserMessagePolicy *)self useProofOfLocality];
  v8 = 8;
  if (!v7)
  {
    v8 = 0;
  }

  return v5 ^ v6 ^ v8;
}

- (id)__initWithHome:(id)a3 homeUUID:(id)a4 userPrivilege:(unint64_t)a5 remoteAccessRequired:(BOOL)a6 requiresCameraStreamingAccess:(BOOL)a7 useProofOfLocality:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v21.receiver = self;
  v21.super_class = HMDUserMessagePolicy;
  v16 = [(HMDUserMessagePolicy *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_home, v14);
    objc_storeStrong(&v17->_homeUUID, a4);
    v17->_userPrivilege = a5;
    v17->_requiresRemoteAccess = a6;
    v17->_requiresCameraStreamingAccess = a7;
    v17->_useProofOfLocality = v8;
    if (v8 && !a6)
    {
      v19 = _HMFPreconditionFailure();
      [(HMDUserMessagePolicy *)v19 init];
    }
  }

  return v17;
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