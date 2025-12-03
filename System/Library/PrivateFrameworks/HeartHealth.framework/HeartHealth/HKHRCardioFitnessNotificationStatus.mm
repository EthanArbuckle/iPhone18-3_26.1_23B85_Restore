@interface HKHRCardioFitnessNotificationStatus
- (BOOL)isEqual:(id)equal;
- (HKHRCardioFitnessNotificationStatus)initWithCoder:(id)coder;
- (HKHRCardioFitnessNotificationStatus)initWithState:(int64_t)state unavailableReasons:(int64_t)reasons wristDetectEnabled:(BOOL)enabled;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRCardioFitnessNotificationStatus

- (HKHRCardioFitnessNotificationStatus)initWithState:(int64_t)state unavailableReasons:(int64_t)reasons wristDetectEnabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = HKHRCardioFitnessNotificationStatus;
  result = [(HKHRCardioFitnessNotificationStatus *)&v9 init];
  if (result)
  {
    result->_state = state;
    result->_notificationUnavailableReasons = reasons;
    result->_wristDetectEnabled = enabled;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"State"];
  [coderCopy encodeInteger:self->_notificationUnavailableReasons forKey:@"NotificationUnavailableReasons"];
  [coderCopy encodeBool:self->_wristDetectEnabled forKey:@"WristDetectEnabled"];
}

- (HKHRCardioFitnessNotificationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKHRCardioFitnessNotificationStatus;
  v5 = [(HKHRCardioFitnessNotificationStatus *)&v7 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v5->_notificationUnavailableReasons = [coderCopy decodeIntegerForKey:@"NotificationUnavailableReasons"];
    v5->_wristDetectEnabled = [coderCopy decodeBoolForKey:@"WristDetectEnabled"];
  }

  return v5;
}

@end