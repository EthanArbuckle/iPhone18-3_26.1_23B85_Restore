@interface HMDAccessoryFirmwareUpdateStagingTask
- (BOOL)shouldRun;
- (HMDAccessoryFirmwareUpdateStagingTask)initWithSession:(id)a3 profile:(id)a4 userInitiated:(BOOL)a5 delay:(BOOL)a6;
- (id)criteria;
- (void)run;
@end

@implementation HMDAccessoryFirmwareUpdateStagingTask

- (void)run
{
  v2 = [(HMDAccessoryFirmwareUpdateTask *)self session];
  [v2 resumeWithState:1];
}

- (BOOL)shouldRun
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateTask *)self session];
  if (-[HMDAccessoryFirmwareUpdateTask shouldRunOnCurrentDevice](self, "shouldRunOnCurrentDevice") && [v3 isReadyForStaging] && objc_msgSend(v3, "sessionState") == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateTask *)v6 shouldRunOnCurrentDevice];
      v9 = HMFBooleanToString();
      [v3 isReadyForStaging];
      v10 = HMFBooleanToString();
      [v3 sessionState];
      v11 = HMFBooleanToString();
      v12 = [v3 sessionState];
      if ((v12 - 1) > 2)
      {
        v13 = @"Up-To-Date";
      }

      else
      {
        v13 = off_27972C5C0[v12 - 1];
      }

      v14 = v13;
      v17 = 138544386;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging task shouldn't run - runOnCurrentDevice:%@ readyForStaging:%@ needsStaging:%@ (%@)", &v17, 0x34u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)criteria
{
  if ([(HMDAccessoryFirmwareUpdateStagingTask *)self isUserInitiated])
  {
    goto LABEL_2;
  }

  v5 = [(HMDAccessoryFirmwareUpdateTask *)self accessoryActiveTransport];
  switch(v5)
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
LABEL_2:
      v3 = 0;
      break;
  }

  return v3;
}

- (HMDAccessoryFirmwareUpdateStagingTask)initWithSession:(id)a3 profile:(id)a4 userInitiated:(BOOL)a5 delay:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = 0.0;
  if (v6 && !a5)
  {
    v13 = uint32ForPreference(@"firmwareUpdateStageMinDelay");
    v14 = uint32ForPreference(@"firmwareUpdateStageMaxDelay");
    v12 = (arc4random_uniform(1000 * (v14 - v13)) + 1000 * v13) / 1000.0;
  }

  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdateStagingTask;
  v15 = [(HMDAccessoryFirmwareUpdateTask *)&v18 initWithSession:v10 profile:v11 initialDelay:v12];
  v16 = v15;
  if (v15)
  {
    v15->_userInitiated = a5;
  }

  return v16;
}

@end