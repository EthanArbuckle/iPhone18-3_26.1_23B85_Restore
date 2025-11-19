@interface HMDAccessorySettingsControllerDependencyFactory
- (id)createMessageHandlerWithQueue:(id)a3 delegate:(id)a4;
- (id)settingModelForUpdateWithIdentifier:(id)a3 parent:(id)a4 value:(id)a5 configNumber:(id)a6;
- (id)timerWithReason:(int64_t)a3 interval:(double)a4;
- (void)assertWithCondition:(BOOL)a3 message:(id)a4;
@end

@implementation HMDAccessorySettingsControllerDependencyFactory

- (void)assertWithCondition:(BOOL)a3 message:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!a3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [[HMDAssertionLogEvent alloc] initWithReason:@"%@", v6];
    v13 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v13 submitLogEvent:v12];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)createMessageHandlerWithQueue:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDAccessorySettingsMessageHandler alloc] initWithQueue:v6 delegate:v5];

  return v7;
}

- (id)settingModelForUpdateWithIdentifier:(id)a3 parent:(id)a4 value:(id)a5 configNumber:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(HMDBackingStoreModelObject *)[HMDAccessorySettingModel alloc] initWithObjectChangeType:2 uuid:v12 parentUUID:v11];

  v14 = encodeRootObject();

  [(HMDAccessorySettingModel *)v13 setValue:v14];
  [(HMDAccessorySettingModel *)v13 setConfigurationVersion:v9];

  return v13;
}

- (id)timerWithReason:(int64_t)a3 interval:(double)a4
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:16 options:a4];

  return v4;
}

@end