@interface HMDRemoteLoginInitiatorAuthentication
+ (id)logCategory;
- (HMDRemoteLoginInitiatorAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate;
- (HMDRemoteLoginInitiatorAuthenticationDelegate)delegate;
- (void)_handleAuthenticationResponse:(id)response error:(id)error;
- (void)authenticate;
@end

@implementation HMDRemoteLoginInitiatorAuthentication

- (HMDRemoteLoginInitiatorAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleAuthenticationResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v8 = 0;
  }

  else
  {
    v9 = [HMDRemoteLoginAuthenticationResponse objWithDict:responseCopy];
    v8 = v9;
    if (v9 && ([v9 loggedInAccount], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      error = [v8 error];
    }

    else
    {
      error = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    }

    v7 = error;
  }

  delegate = [(HMDRemoteLoginInitiatorAuthentication *)self delegate];
  if ([delegate conformsToProtocol:&unk_286680DD0])
  {
    v13 = delegate;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    loggedInAccount = [v8 loggedInAccount];
    [v14 didCompleteAuthentication:self error:v7 loggedInAccount:loggedInAccount];
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

- (HMDRemoteLoginInitiatorAuthentication)initWithSessionID:(id)d remoteDevice:(id)device workQueue:(id)queue remoteMessageSender:(id)sender delegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HMDRemoteLoginInitiatorAuthentication;
  v13 = [(HMDRemoteLoginAuthentication *)&v16 initWithSessionID:d remoteDevice:device workQueue:queue remoteMessageSender:sender];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_181800 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_181800, &__block_literal_global_181801);
  }

  v3 = logCategory__hmf_once_v1_181802;

  return v3;
}

uint64_t __52__HMDRemoteLoginInitiatorAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_181802;
  logCategory__hmf_once_v1_181802 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end