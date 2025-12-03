@interface HMDAccessoryFirmwareUpdateTimeWindow
+ (id)logCategory;
- (HMDAccessoryFirmwareUpdateTimeWindow)initWithStartTime:(id)time endTime:(id)endTime;
@end

@implementation HMDAccessoryFirmwareUpdateTimeWindow

- (HMDAccessoryFirmwareUpdateTimeWindow)initWithStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v22.receiver = self;
  v22.super_class = HMDAccessoryFirmwareUpdateTimeWindow;
  v8 = [(HMDAccessoryFirmwareUpdateTimeWindow *)&v22 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v9 setDateFormat:@"HH:mm:ss"];
    v10 = [v9 dateFromString:timeCopy];
    v11 = [v9 dateFromString:endTimeCopy];
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_10;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [currentCalendar components:224 fromDate:v10];
    startTimeComponents = v8->_startTimeComponents;
    v8->_startTimeComponents = v15;

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v18 = [currentCalendar2 components:224 fromDate:v12];
    endTimeComponents = v8->_endTimeComponents;
    v8->_endTimeComponents = v18;

    if (!v8->_startTimeComponents || !v8->_endTimeComponents)
    {
LABEL_10:

      v20 = 0;
      goto LABEL_11;
    }
  }

  v20 = v8;
LABEL_11:

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_121479 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_121479, &__block_literal_global_121480);
  }

  v3 = logCategory__hmf_once_v1_121481;

  return v3;
}

uint64_t __51__HMDAccessoryFirmwareUpdateTimeWindow_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_121481;
  logCategory__hmf_once_v1_121481 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end