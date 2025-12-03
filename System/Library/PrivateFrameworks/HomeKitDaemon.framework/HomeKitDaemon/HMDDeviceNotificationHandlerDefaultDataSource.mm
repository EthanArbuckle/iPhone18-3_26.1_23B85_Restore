@interface HMDDeviceNotificationHandlerDefaultDataSource
- (HMDDeviceNotificationHandlerDefaultDataSource)initWithHome:(id)home;
- (HMDHome)home;
- (id)timerWithType:(unsigned __int8)type;
@end

@implementation HMDDeviceNotificationHandlerDefaultDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)timerWithType:(unsigned __int8)type
{
  typeCopy = type;
  home = [(HMDDeviceNotificationHandlerDefaultDataSource *)self home];
  isCurrentDeviceAvailableResident = [home isCurrentDeviceAvailableResident];
  if (typeCopy == 1)
  {
    if (isCurrentDeviceAvailableResident)
    {
      v6 = pendingResponseTickPeriod;
    }

    else
    {
      v6 = delayNotificationsPeriod;
    }
  }

  else
  {
    v6 = 0;
    if (!typeCopy)
    {
      v6 = coalesceNotificationsPeriod;
    }
  }

  v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:*&v6];

  return v7;
}

- (HMDDeviceNotificationHandlerDefaultDataSource)initWithHome:(id)home
{
  homeCopy = home;
  v8.receiver = self;
  v8.super_class = HMDDeviceNotificationHandlerDefaultDataSource;
  v5 = [(HMDDeviceNotificationHandlerDefaultDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
  }

  return v6;
}

@end