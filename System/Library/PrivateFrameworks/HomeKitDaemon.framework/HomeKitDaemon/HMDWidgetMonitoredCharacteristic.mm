@interface HMDWidgetMonitoredCharacteristic
- (BOOL)isEqual:(id)equal;
- (HMDWidgetMonitoredCharacteristic)initWithCharacteristic:(id)characteristic reachabilityMonitored:(BOOL)monitored;
- (unint64_t)hash;
@end

@implementation HMDWidgetMonitoredCharacteristic

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    characteristic = [(HMDWidgetMonitoredCharacteristic *)self characteristic];
    characteristic2 = [v6 characteristic];
    if ([characteristic isEqual:characteristic2])
    {
      reachabilityMonitored = [(HMDWidgetMonitoredCharacteristic *)self reachabilityMonitored];
      v10 = reachabilityMonitored ^ [v6 reachabilityMonitored] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  characteristic = [(HMDWidgetMonitoredCharacteristic *)self characteristic];
  v3 = [characteristic hash];

  return v3;
}

- (HMDWidgetMonitoredCharacteristic)initWithCharacteristic:(id)characteristic reachabilityMonitored:(BOOL)monitored
{
  characteristicCopy = characteristic;
  v11.receiver = self;
  v11.super_class = HMDWidgetMonitoredCharacteristic;
  v8 = [(HMDWidgetMonitoredCharacteristic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_characteristic, characteristic);
    v9->_reachabilityMonitored = monitored;
  }

  return v9;
}

@end