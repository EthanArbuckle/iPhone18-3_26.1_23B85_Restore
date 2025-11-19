@interface CALNNotificationSound
+ (CALNNotificationSound)soundWithAlertType:(int64_t)a3 alertTopic:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSound:(id)a3;
- (CALNNotificationSound)initWithCoder:(id)a3;
- (id)_initWithAlertType:(int64_t)a3 alertTopic:(id)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNNotificationSound

+ (CALNNotificationSound)soundWithAlertType:(int64_t)a3 alertTopic:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] _initWithAlertType:a3 alertTopic:v6];

  return v7;
}

- (id)_initWithAlertType:(int64_t)a3 alertTopic:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CALNNotificationSound;
  v7 = [(CALNNotificationSound *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_alertType = a3;
    v9 = [v6 copy];
    alertTopic = v8->_alertTopic;
    v8->_alertTopic = v9;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CALNNotificationSound *)self alertType];
  v4 = [(CALNNotificationSound *)self alertTopic];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationSound *)self isEqualToSound:v4];

  return v5;
}

- (BOOL)isEqualToSound:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(CALNNotificationSound *)self alertType];
    if (v5 == [(CALNNotificationSound *)v4 alertType])
    {
      v6 = [(CALNNotificationSound *)self alertTopic];
      v7 = [(CALNNotificationSound *)v4 alertTopic];
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
  v6 = [(CALNNotificationSound *)self alertTopic];
  v7 = [v3 stringWithFormat:@"<%@: %p>(alertType = %@, alertTopic = %@)", v4, self, v5, v6];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CALNMutableNotificationSound allocWithZone:a3];
  v5 = [(CALNNotificationSound *)self alertType];
  v6 = [(CALNNotificationSound *)self alertTopic];
  v7 = [(CALNNotificationSound *)v4 _initWithAlertType:v5 alertTopic:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CALNNotificationSound *)self alertTopic];
  [v5 encodeObject:v4 forKey:@"alertTopic"];

  [v5 encodeInteger:-[CALNNotificationSound alertType](self forKey:{"alertType"), @"alertType"}];
}

- (CALNNotificationSound)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertTopic"];
  v6 = [v4 decodeIntegerForKey:@"alertType"];

  v7 = [(CALNNotificationSound *)self _initWithAlertType:v6 alertTopic:v5];
  return v7;
}

@end