@interface CALNNotification
+ (id)notificationWithRequest:(id)a3 date:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNotification:(id)a3;
- (CALNNotification)initWithCoder:(id)a3;
- (CALNNotification)initWithNotificationRequest:(id)a3 date:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNNotification

+ (id)notificationWithRequest:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CALNNotification alloc] initWithNotificationRequest:v6 date:v5];

  return v7;
}

- (CALNNotification)initWithNotificationRequest:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CALNNotification;
  v8 = [(CALNNotification *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [v6 copy];
    request = v8->_request;
    v8->_request = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CALNNotification *)self date];
  v4 = [v3 hash];
  v5 = [(CALNNotification *)self request];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotification *)self isEqualToNotification:v4];

  return v5;
}

- (BOOL)isEqualToNotification:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(CALNNotification *)self date];
    v6 = [(CALNNotification *)v4 date];
    v7 = CalEqualObjects();

    if (v7)
    {
      v8 = [(CALNNotification *)self request];
      v9 = [(CALNNotification *)v4 request];
      v10 = CalEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNNotification *)self date];
  v6 = [(CALNNotification *)self request];
  v7 = [v3 stringWithFormat:@"<%@: %p(date: %@, request: %@)", v4, self, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotification *)self date];
  [v4 encodeObject:v5 forKey:@"date"];

  v6 = [(CALNNotification *)self request];
  [v4 encodeObject:v6 forKey:@"request"];
}

- (CALNNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];

  v7 = [(CALNNotification *)self initWithNotificationRequest:v6 date:v5];
  return v7;
}

@end