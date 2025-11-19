@interface HMDCameraIDSSessionInviterDeviceVerifier
+ (id)logCategory;
- (BOOL)canAcceptInvitationForSessionWithIdentifier:(id)a3;
- (BOOL)canAcceptInvitationFromDeviceWithHandle:(id)a3;
- (HMDCameraIDSSessionInviterDeviceVerifier)initWithSessionID:(id)a3 expectedInviter:(id)a4;
- (id)logIdentifier;
@end

@implementation HMDCameraIDSSessionInviterDeviceVerifier

- (id)logIdentifier
{
  v2 = [(HMDCameraIDSSessionInviterDeviceVerifier *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (BOOL)canAcceptInvitationForSessionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraIDSSessionInviterDeviceVerifier *)self sessionID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)canAcceptInvitationFromDeviceWithHandle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSSessionInviterDeviceVerifier *)self expectedInviter];
  v6 = [v5 handles];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
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

        if ([*(*(&v13 + 1) + 8 * i) isEqual:{v4, v13}])
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

- (HMDCameraIDSSessionInviterDeviceVerifier)initWithSessionID:(id)a3 expectedInviter:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_sessionID, a3);
    objc_storeStrong(&v11->_expectedInviter, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_99275 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_99275, &__block_literal_global_99276);
  }

  v3 = logCategory__hmf_once_v1_99277;

  return v3;
}

void __55__HMDCameraIDSSessionInviterDeviceVerifier_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_99277;
  logCategory__hmf_once_v1_99277 = v1;
}

@end