@interface HMDWidgetMonitoredCharacteristic
- (BOOL)isEqual:(id)a3;
- (HMDWidgetMonitoredCharacteristic)initWithCharacteristic:(id)a3 reachabilityMonitored:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation HMDWidgetMonitoredCharacteristic

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMDWidgetMonitoredCharacteristic *)self characteristic];
    v8 = [v6 characteristic];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDWidgetMonitoredCharacteristic *)self reachabilityMonitored];
      v10 = v9 ^ [v6 reachabilityMonitored] ^ 1;
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
  v2 = [(HMDWidgetMonitoredCharacteristic *)self characteristic];
  v3 = [v2 hash];

  return v3;
}

- (HMDWidgetMonitoredCharacteristic)initWithCharacteristic:(id)a3 reachabilityMonitored:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDWidgetMonitoredCharacteristic;
  v8 = [(HMDWidgetMonitoredCharacteristic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_characteristic, a3);
    v9->_reachabilityMonitored = a4;
  }

  return v9;
}

@end