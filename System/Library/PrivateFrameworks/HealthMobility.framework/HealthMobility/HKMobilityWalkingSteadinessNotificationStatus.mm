@interface HKMobilityWalkingSteadinessNotificationStatus
- (BOOL)isEqual:(id)equal;
- (HKMobilityWalkingSteadinessNotificationStatus)initWithCoder:(id)coder;
- (HKMobilityWalkingSteadinessNotificationStatus)initWithState:(int64_t)state unavailableReasons:(int64_t)reasons fitnessTrackingEnabled:(BOOL)enabled healthNotificationsDisabled:(BOOL)disabled;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMobilityWalkingSteadinessNotificationStatus

- (HKMobilityWalkingSteadinessNotificationStatus)initWithState:(int64_t)state unavailableReasons:(int64_t)reasons fitnessTrackingEnabled:(BOOL)enabled healthNotificationsDisabled:(BOOL)disabled
{
  v14.receiver = self;
  v14.super_class = HKMobilityWalkingSteadinessNotificationStatus;
  v10 = [(HKMobilityWalkingSteadinessNotificationStatus *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = state;
    v10->_notificationUnavailableReasons = reasons;
    v10->_fitnessTrackingEnabled = enabled;
    v10->_healthNotificationsDisabled = disabled;
    v12 = v10;
  }

  return v11;
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
      v6 = self->_state == v5->_state && self->_notificationUnavailableReasons == v5->_notificationUnavailableReasons && self->_fitnessTrackingEnabled == v5->_fitnessTrackingEnabled && self->_healthNotificationsDisabled == v5->_healthNotificationsDisabled;
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
  v3 = self->_notificationUnavailableReasons ^ self->_state;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_fitnessTrackingEnabled];
  v5 = v3 ^ [v4 hash];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_healthNotificationsDisabled];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"State"];
  [coderCopy encodeInteger:self->_notificationUnavailableReasons forKey:@"NotificationUnavailableReasons"];
  [coderCopy encodeBool:self->_fitnessTrackingEnabled forKey:@"FitnessTrackingEnabled"];
  [coderCopy encodeBool:self->_healthNotificationsDisabled forKey:@"HealthNotificationsDisabled"];
}

- (HKMobilityWalkingSteadinessNotificationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKMobilityWalkingSteadinessNotificationStatus;
  v5 = [(HKMobilityWalkingSteadinessNotificationStatus *)&v7 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v5->_notificationUnavailableReasons = [coderCopy decodeIntegerForKey:@"NotificationUnavailableReasons"];
    v5->_fitnessTrackingEnabled = [coderCopy decodeBoolForKey:@"FitnessTrackingEnabled"];
    v5->_healthNotificationsDisabled = [coderCopy decodeBoolForKey:@"HealthNotificationsDisabled"];
  }

  return v5;
}

@end