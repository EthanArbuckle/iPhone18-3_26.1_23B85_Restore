@interface HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5;
- (HMDHome)home;
- (id)createBackoffTimer;
- (id)createLocalNotifyUpdate;
@end

@implementation HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource

- (HMDHAPAccessory)hmdHAPAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hmdHAPAccessory);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)createBackoffTimer
{
  v2 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:4 maximumTimeInterval:0 exponentialFactor:2.0 options:3600.0];

  return v2;
}

- (id)createLocalNotifyUpdate
{
  v3 = [HMDHAPAccessoryLocalNotifyUpdate alloc];
  v4 = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)self home];
  v5 = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)self hmdHAPAccessory];
  v6 = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)self queue];
  v7 = [(HMDHAPAccessoryLocalNotifyUpdate *)v3 initWithHome:v4 hmdHAPAccessory:v5 queue:v6];

  return v7;
}

- (HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource;
  v11 = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, v8);
    objc_storeWeak(&v12->_hmdHAPAccessory, v9);
    objc_storeStrong(&v12->_queue, a5);
  }

  return v12;
}

@end