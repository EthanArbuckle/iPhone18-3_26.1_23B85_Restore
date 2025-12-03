@interface HMDCameraIDSSessionInviterDeviceVerifier
+ (id)logCategory;
- (BOOL)canAcceptInvitationForSessionWithIdentifier:(id)identifier;
- (BOOL)canAcceptInvitationFromDeviceWithHandle:(id)handle;
- (HMDCameraIDSSessionInviterDeviceVerifier)initWithSessionID:(id)d expectedInviter:(id)inviter;
- (id)logIdentifier;
@end

@implementation HMDCameraIDSSessionInviterDeviceVerifier

- (id)logIdentifier
{
  sessionID = [(HMDCameraIDSSessionInviterDeviceVerifier *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (BOOL)canAcceptInvitationForSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionID = [(HMDCameraIDSSessionInviterDeviceVerifier *)self sessionID];
  v6 = [identifierCopy isEqualToString:sessionID];

  return v6;
}

- (BOOL)canAcceptInvitationFromDeviceWithHandle:(id)handle
{
  v18 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  expectedInviter = [(HMDCameraIDSSessionInviterDeviceVerifier *)self expectedInviter];
  handles = [expectedInviter handles];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = handles;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEqual:{handleCopy, v13}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDCameraIDSSessionInviterDeviceVerifier)initWithSessionID:(id)d expectedInviter:(id)inviter
{
  dCopy = d;
  inviterCopy = inviter;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = inviterCopy;
  if (!inviterCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDCameraIDSSessionInviterDeviceVerifier *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDCameraIDSSessionInviterDeviceVerifier;
  v10 = [(HMDCameraIDSSessionInviterDeviceVerifier *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionID, d);
    objc_storeStrong(&v11->_expectedInviter, inviter);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_63374 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_63374, &__block_literal_global_63375);
  }

  v3 = logCategory__hmf_once_v1_63376;

  return v3;
}

uint64_t __55__HMDCameraIDSSessionInviterDeviceVerifier_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_63376;
  logCategory__hmf_once_v1_63376 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end