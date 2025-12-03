@interface CALNNotificationSound
+ (CALNNotificationSound)soundWithAlertType:(int64_t)type alertTopic:(id)topic;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSound:(id)sound;
- (CALNNotificationSound)initWithCoder:(id)coder;
- (id)_initWithAlertType:(int64_t)type alertTopic:(id)topic;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNNotificationSound

+ (CALNNotificationSound)soundWithAlertType:(int64_t)type alertTopic:(id)topic
{
  topicCopy = topic;
  v7 = [[self alloc] _initWithAlertType:type alertTopic:topicCopy];

  return v7;
}

- (id)_initWithAlertType:(int64_t)type alertTopic:(id)topic
{
  topicCopy = topic;
  v12.receiver = self;
  v12.super_class = CALNNotificationSound;
  v7 = [(CALNNotificationSound *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_alertType = type;
    v9 = [topicCopy copy];
    alertTopic = v8->_alertTopic;
    v8->_alertTopic = v9;
  }

  return v8;
}

- (unint64_t)hash
{
  alertType = [(CALNNotificationSound *)self alertType];
  alertTopic = [(CALNNotificationSound *)self alertTopic];
  v5 = [alertTopic hash];

  return v5 ^ alertType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationSound *)self isEqualToSound:equalCopy];

  return v5;
}

- (BOOL)isEqualToSound:(id)sound
{
  soundCopy = sound;
  if (self == soundCopy)
  {
    v8 = 1;
  }

  else
  {
    alertType = [(CALNNotificationSound *)self alertType];
    if (alertType == [(CALNNotificationSound *)soundCopy alertType])
    {
      alertTopic = [(CALNNotificationSound *)self alertTopic];
      alertTopic2 = [(CALNNotificationSound *)soundCopy alertTopic];
      v8 = CalEqualStrings();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CALNNotificationSound alertType](self, "alertType")}];
  alertTopic = [(CALNNotificationSound *)self alertTopic];
  v7 = [v3 stringWithFormat:@"<%@: %p>(alertType = %@, alertTopic = %@)", v4, self, v5, alertTopic];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CALNMutableNotificationSound allocWithZone:zone];
  alertType = [(CALNNotificationSound *)self alertType];
  alertTopic = [(CALNNotificationSound *)self alertTopic];
  v7 = [(CALNNotificationSound *)v4 _initWithAlertType:alertType alertTopic:alertTopic];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alertTopic = [(CALNNotificationSound *)self alertTopic];
  [coderCopy encodeObject:alertTopic forKey:@"alertTopic"];

  [coderCopy encodeInteger:-[CALNNotificationSound alertType](self forKey:{"alertType"), @"alertType"}];
}

- (CALNNotificationSound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertTopic"];
  v6 = [coderCopy decodeIntegerForKey:@"alertType"];

  v7 = [(CALNNotificationSound *)self _initWithAlertType:v6 alertTopic:v5];
  return v7;
}

@end