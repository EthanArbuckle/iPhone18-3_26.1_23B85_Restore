@interface CALNNotification
+ (id)notificationWithRequest:(id)request date:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNotification:(id)notification;
- (CALNNotification)initWithCoder:(id)coder;
- (CALNNotification)initWithNotificationRequest:(id)request date:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNNotification

+ (id)notificationWithRequest:(id)request date:(id)date
{
  dateCopy = date;
  requestCopy = request;
  v7 = [[CALNNotification alloc] initWithNotificationRequest:requestCopy date:dateCopy];

  return v7;
}

- (CALNNotification)initWithNotificationRequest:(id)request date:(id)date
{
  requestCopy = request;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = CALNNotification;
  v8 = [(CALNNotification *)&v14 init];
  if (v8)
  {
    v9 = [dateCopy copy];
    date = v8->_date;
    v8->_date = v9;

    v11 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v11;
  }

  return v8;
}

- (unint64_t)hash
{
  date = [(CALNNotification *)self date];
  v4 = [date hash];
  request = [(CALNNotification *)self request];
  v6 = [request hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotification *)self isEqualToNotification:equalCopy];

  return v5;
}

- (BOOL)isEqualToNotification:(id)notification
{
  notificationCopy = notification;
  if (self == notificationCopy)
  {
    v10 = 1;
  }

  else
  {
    date = [(CALNNotification *)self date];
    date2 = [(CALNNotification *)notificationCopy date];
    v7 = CalEqualObjects();

    if (v7)
    {
      request = [(CALNNotification *)self request];
      request2 = [(CALNNotification *)notificationCopy request];
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
  date = [(CALNNotification *)self date];
  request = [(CALNNotification *)self request];
  v7 = [v3 stringWithFormat:@"<%@: %p(date: %@, request: %@)", v4, self, date, request];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(CALNNotification *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  request = [(CALNNotification *)self request];
  [coderCopy encodeObject:request forKey:@"request"];
}

- (CALNNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];

  v7 = [(CALNNotification *)self initWithNotificationRequest:v6 date:v5];
  return v7;
}

@end