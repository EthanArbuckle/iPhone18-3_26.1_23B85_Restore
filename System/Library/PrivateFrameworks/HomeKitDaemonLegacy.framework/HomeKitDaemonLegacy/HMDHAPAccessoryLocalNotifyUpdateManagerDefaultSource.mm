@interface HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue;
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
  home = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)self home];
  hmdHAPAccessory = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)self hmdHAPAccessory];
  queue = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)self queue];
  v7 = [(HMDHAPAccessoryLocalNotifyUpdate *)v3 initWithHome:home hmdHAPAccessory:hmdHAPAccessory queue:queue];

  return v7;
}

- (HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue
{
  homeCopy = home;
  accessoryCopy = accessory;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource;
  v11 = [(HMDHAPAccessoryLocalNotifyUpdateManagerDefaultSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, homeCopy);
    objc_storeWeak(&v12->_hmdHAPAccessory, accessoryCopy);
    objc_storeStrong(&v12->_queue, queue);
  }

  return v12;
}

@end