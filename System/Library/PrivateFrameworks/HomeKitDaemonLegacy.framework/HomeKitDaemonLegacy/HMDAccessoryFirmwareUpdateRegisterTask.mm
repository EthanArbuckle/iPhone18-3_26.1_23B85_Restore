@interface HMDAccessoryFirmwareUpdateRegisterTask
- (BOOL)shouldRun;
- (HMDAccessoryFirmwareUpdateRegisterTask)initWithSession:(id)a3 profile:(id)a4 initialDelay:(double)a5;
- (id)criteria;
- (void)run;
@end

@implementation HMDAccessoryFirmwareUpdateRegisterTask

- (void)run
{
  v2 = [(HMDAccessoryFirmwareUpdateTask *)self session];
  [v2 resumeWithState:3];
}

- (BOOL)shouldRun
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateTask *)self session];
  v4 = [(HMDAccessoryFirmwareUpdateTask *)self shouldRunOnCurrentDevice];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateTask *)v6 shouldRunOnCurrentDevice];
      v9 = HMFBooleanToString();
      v10 = [v3 sessionState];
      if ((v10 - 1) > 2)
      {
        v11 = @"Up-To-Date";
      }

      else
      {
        v11 = off_27972C5C0[v10 - 1];
      }

      v12 = v11;
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Register task shouldn't run - runOnCurrentDevice:%@ (%@)", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)criteria
{
  v2 = [(HMDAccessoryFirmwareUpdateTask *)self accessoryActiveTransport];
  switch(v2)
  {
    case 4:
      v3 = threadAccessoryStageSystemCriteria();
      break;
    case 3:
      v3 = bleAccessoryStageSystemCriteria();
      break;
    case 2:
      v3 = ipAccessoryStageSystemCriteria();
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (HMDAccessoryFirmwareUpdateRegisterTask)initWithSession:(id)a3 profile:(id)a4 initialDelay:(double)a5
{
  v6.receiver = self;
  v6.super_class = HMDAccessoryFirmwareUpdateRegisterTask;
  return [(HMDAccessoryFirmwareUpdateTask *)&v6 initWithSession:a3 profile:a4 initialDelay:a5];
}

@end