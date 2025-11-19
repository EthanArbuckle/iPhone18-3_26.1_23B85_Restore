@interface HMDPendingInvitedUserMessagePolicy
- (HMDHomeManager)homeManager;
- (HMDPendingInvitedUserMessagePolicy)init;
- (HMDPendingInvitedUserMessagePolicy)initWithHomeManager:(id)a3;
@end

@implementation HMDPendingInvitedUserMessagePolicy

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMDPendingInvitedUserMessagePolicy)initWithHomeManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDPendingInvitedUserMessagePolicy;
  v5 = [(HMDPendingInvitedUserMessagePolicy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeManager, v4);
  }

  return v6;
}

- (HMDPendingInvitedUserMessagePolicy)init
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