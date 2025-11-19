@interface HMDDeviceNotificationHandlerDefaultDataSource
- (HMDDeviceNotificationHandlerDefaultDataSource)initWithHome:(id)a3;
- (HMDHome)home;
- (id)timerWithType:(unsigned __int8)a3;
@end

@implementation HMDDeviceNotificationHandlerDefaultDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)timerWithType:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [(HMDDeviceNotificationHandlerDefaultDataSource *)self home];
  v5 = [v4 isCurrentDeviceAvailableResident];
  if (v5)
  {
    v5 = [v4 isResidentFirstAccessoryCommunicationEnabled];
  }

  if (v3 == 1)
  {
    if (v5)
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
    if (!v3)
    {
      v6 = coalesceNotificationsPeriod;
    }
  }

  v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:*&v6];

  return v7;
}

- (HMDDeviceNotificationHandlerDefaultDataSource)initWithHome:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDDeviceNotificationHandlerDefaultDataSource;
  v5 = [(HMDDeviceNotificationHandlerDefaultDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, v4);
  }

  return v6;
}

@end