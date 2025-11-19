@interface HMDHomeInviteLogEvent
+ (id)logCategory;
- (HMDHomeInviteLogEvent)initWithHomeInviteLogEventState:(int64_t)a3 isFMFDevice:(BOOL)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeInviteLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v22[15] = *MEMORY[0x277D85DE8];
  v21[0] = @"received_BOOL";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent received](self, "received")}];
  v22[0] = v20;
  v21[1] = @"filtered_BOOL";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent filtered](self, "filtered")}];
  v22[1] = v19;
  v21[2] = @"suppressedNotification_BOOL";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent suppressedNotification](self, "suppressedNotification")}];
  v22[2] = v18;
  v21[3] = @"accepted_BOOL";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent accepted](self, "accepted")}];
  v22[3] = v17;
  v21[4] = @"declined_BOOL";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent declined](self, "declined")}];
  v22[4] = v16;
  v21[5] = @"ignored_BOOL";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent ignored](self, "ignored")}];
  v22[5] = v15;
  v21[6] = @"expired_BOOL";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent expired](self, "expired")}];
  v22[6] = v3;
  v21[7] = @"received_INT";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent received](self, "received")}];
  v22[7] = v4;
  v21[8] = @"filtered_INT";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent filtered](self, "filtered")}];
  v22[8] = v5;
  v21[9] = @"suppressedNotification_INT";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent suppressedNotification](self, "suppressedNotification")}];
  v22[9] = v6;
  v21[10] = @"accepted_INT";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent accepted](self, "accepted")}];
  v22[10] = v7;
  v21[11] = @"declined_INT";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent declined](self, "declined")}];
  v22[11] = v8;
  v21[12] = @"ignored_INT";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent ignored](self, "ignored")}];
  v22[12] = v9;
  v21[13] = @"expired_INT";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent expired](self, "expired")}];
  v22[13] = v10;
  v21[14] = @"isFMFDevice";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent isFMFDevice](self, "isFMFDevice")}];
  v22[14] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDHomeInviteLogEvent)initWithHomeInviteLogEventState:(int64_t)a3 isFMFDevice:(BOOL)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMDHomeInviteLogEvent;
  v6 = [(HMMLogEvent *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v6->_expired = 0;
  v6->_ignored = 0;
  v6->_declined = 0;
  v6->_accepted = 0;
  p_suppressedNotification = &v6->_suppressedNotification;
  v6->_suppressedNotification = 0;
  v6->_filtered = 0;
  v6->_received = 0;
  v6->_isFMFDevice = a4;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        p_suppressedNotification = &v6->_received;
        break;
      case 2:
        p_suppressedNotification = &v6->_filtered;
        break;
      case 3:
        break;
      default:
        goto LABEL_12;
    }

LABEL_17:
    *p_suppressedNotification = 1;
LABEL_18:
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = v15;
    goto LABEL_21;
  }

  if (a3 <= 5)
  {
    p_suppressedNotification = &v6->_accepted;
    if (a3 != 4)
    {
      p_suppressedNotification = &v6->_declined;
    }

    goto LABEL_17;
  }

  p_suppressedNotification = &v6->_ignored;
  if (a3 == 6)
  {
    goto LABEL_17;
  }

  p_suppressedNotification = &v6->_expired;
  if (a3 == 7)
  {
    goto LABEL_17;
  }

LABEL_12:
  v9 = objc_autoreleasePoolPush();
  v10 = v7;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No home invitation event to log. Invitation was cancelled or is pending.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = 0;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_130742 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_130742, &__block_literal_global_130743);
  }

  v3 = logCategory__hmf_once_v3_130744;

  return v3;
}

void __36__HMDHomeInviteLogEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_130744;
  logCategory__hmf_once_v3_130744 = v1;
}

@end