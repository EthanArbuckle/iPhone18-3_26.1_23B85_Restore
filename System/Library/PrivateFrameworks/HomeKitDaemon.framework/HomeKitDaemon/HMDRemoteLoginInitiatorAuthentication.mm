@interface HMDRemoteLoginInitiatorAuthentication
+ (id)logCategory;
- (HMDRemoteLoginInitiatorAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7;
- (HMDRemoteLoginInitiatorAuthenticationDelegate)delegate;
- (void)_handleAuthenticationResponse:(id)a3 error:(id)a4;
- (void)authenticate;
@end

@implementation HMDRemoteLoginInitiatorAuthentication

- (HMDRemoteLoginInitiatorAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleAuthenticationResponse:(id)a3 error:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = [HMDRemoteLoginAuthenticationResponse objWithDict:v16];
    v8 = v9;
    if (v9 && ([v9 loggedInAccount], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v8 error];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    }

    v7 = v11;
  }

  v12 = [(HMDRemoteLoginInitiatorAuthentication *)self delegate];
  if ([v12 conformsToProtocol:&unk_283EE04D0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    v15 = [v8 loggedInAccount];
    [v14 didCompleteAuthentication:self error:v7 loggedInAccount:v15];
  }
}

- (void)authenticate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMDRemoteLoginInitiatorAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6 delegate:(id)a7
{
  v12 = a7;
  v16.receiver = self;
  v16.super_class = HMDRemoteLoginInitiatorAuthentication;
  v13 = [(HMDRemoteLoginAuthentication *)&v16 initWithSessionID:a3 remoteDevice:a4 workQueue:a5 remoteMessageSender:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v12);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_263615 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_263615, &__block_literal_global_263616);
  }

  v3 = logCategory__hmf_once_v1_263617;

  return v3;
}

void __52__HMDRemoteLoginInitiatorAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_263617;
  logCategory__hmf_once_v1_263617 = v1;
}

@end