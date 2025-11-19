@interface HKHRCardioFitnessNotificationStatus
- (BOOL)isEqual:(id)a3;
- (HKHRCardioFitnessNotificationStatus)initWithCoder:(id)a3;
- (HKHRCardioFitnessNotificationStatus)initWithState:(int64_t)a3 unavailableReasons:(int64_t)a4 wristDetectEnabled:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRCardioFitnessNotificationStatus

- (HKHRCardioFitnessNotificationStatus)initWithState:(int64_t)a3 unavailableReasons:(int64_t)a4 wristDetectEnabled:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = HKHRCardioFitnessNotificationStatus;
  result = [(HKHRCardioFitnessNotificationStatus *)&v9 init];
  if (result)
  {
    result->_state = a3;
    result->_notificationUnavailableReasons = a4;
    result->_wristDetectEnabled = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_state == v5->_state && self->_notificationUnavailableReasons == v5->_notificationUnavailableReasons && self->_wristDetectEnabled == v5->_wristDetectEnabled;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = self->_notificationUnavailableReasons ^ self->_state;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_wristDetectEnabled];
  v4 = [v3 hash];

  return v2 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"State"];
  [v5 encodeInteger:self->_notificationUnavailableReasons forKey:@"NotificationUnavailableReasons"];
  [v5 encodeBool:self->_wristDetectEnabled forKey:@"WristDetectEnabled"];
}

- (HKHRCardioFitnessNotificationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKHRCardioFitnessNotificationStatus;
  v5 = [(HKHRCardioFitnessNotificationStatus *)&v7 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v5->_notificationUnavailableReasons = [v4 decodeIntegerForKey:@"NotificationUnavailableReasons"];
    v5->_wristDetectEnabled = [v4 decodeBoolForKey:@"WristDetectEnabled"];
  }

  return v5;
}

@end