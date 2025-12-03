@interface HMIPersonsModelsSummaryTask
- (HMIPersonsModelsSummaryTask)initWithTaskID:(int)d homeUUID:(id)iD;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIPersonsModelsSummaryTask

- (HMIPersonsModelsSummaryTask)initWithTaskID:(int)d homeUUID:(id)iD
{
  v5.receiver = self;
  v5.super_class = HMIPersonsModelsSummaryTask;
  return [(HMIHomeTask *)&v5 initWithTaskID:*&d homeUUID:iD timeout:30.0];
}

- (void)mainInsideAutoreleasePool
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[HMIPersonsModelManager sharedInstance];
  homeUUID = [(HMIHomeTask *)self homeUUID];
  v11 = 0;
  v5 = [v3 summaryForHomeUUID:homeUUID error:&v11];
  v6 = v11;

  if (v5)
  {
    [HMIAnalytics sendEventForPersonsModels:v5];
    [(HMFOperation *)self finish];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate persons model summary, error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMFOperation *)selfCopy cancelWithError:v6];
  }
}

@end