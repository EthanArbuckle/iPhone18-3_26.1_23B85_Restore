@interface HMDHH1EOLMessageFilter
+ (BOOL)isAllowedMessage:(id)a3;
+ (id)logCategory;
- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5;
@end

@implementation HMDHH1EOLMessageFilter

- (BOOL)acceptMessage:(id)a3 target:(id)a4 errorReason:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 name];
  v11 = [HMDHH1EOLMessageFilter isAllowedMessage:v10];

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Rejecting message: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t139 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t139, &__block_literal_global_482);
  }

  v3 = logCategory__hmf_once_v140;

  return v3;
}

uint64_t __37__HMDHH1EOLMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v140;
  logCategory__hmf_once_v140 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)isAllowedMessage:(id)a3
{
  v3 = isAllowedMessage__pred_476;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isAllowedMessage__pred_476, &__block_literal_global_479);
  }

  v5 = [isAllowedMessage___allowedMessages_477 containsObject:v4];

  return v5;
}

void __43__HMDHH1EOLMessageFilter_isAllowedMessage___block_invoke()
{
  v15[23] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD03B0];
  v15[0] = *MEMORY[0x277CD0090];
  v15[1] = v1;
  v2 = *MEMORY[0x277CD0348];
  v15[2] = *MEMORY[0x277CD01D8];
  v15[3] = v2;
  v3 = *MEMORY[0x277CD00F8];
  v15[4] = *MEMORY[0x277CD01D0];
  v15[5] = v3;
  v4 = *MEMORY[0x277CD03D0];
  v15[6] = *MEMORY[0x277CD03E0];
  v15[7] = v4;
  v5 = *MEMORY[0x277CD1080];
  v15[8] = *MEMORY[0x277CD1070];
  v15[9] = v5;
  v6 = *MEMORY[0x277CD1108];
  v15[10] = *MEMORY[0x277CD1158];
  v15[11] = v6;
  v7 = *MEMORY[0x277CD1180];
  v15[12] = *MEMORY[0x277CD1128];
  v15[13] = v7;
  v8 = *MEMORY[0x277CD1110];
  v15[14] = *MEMORY[0x277CD10F8];
  v15[15] = v8;
  v9 = *MEMORY[0x277CD13E8];
  v15[16] = *MEMORY[0x277CD1178];
  v15[17] = v9;
  v15[18] = *MEMORY[0x277CD1338];
  v15[19] = @"kResetConfigRequestKey";
  v10 = *MEMORY[0x277CD01E0];
  v15[20] = *MEMORY[0x277CCFEE0];
  v15[21] = v10;
  v15[22] = *MEMORY[0x277CD0228];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:23];
  v12 = [v0 setWithArray:v11];
  v13 = isAllowedMessage___allowedMessages_477;
  isAllowedMessage___allowedMessages_477 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

@end