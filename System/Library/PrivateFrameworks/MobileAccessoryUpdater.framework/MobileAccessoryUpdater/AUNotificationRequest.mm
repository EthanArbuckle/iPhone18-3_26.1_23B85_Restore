@interface AUNotificationRequest
- (AUNotificationRequest)initWithCoder:(id)a3;
- (id)initUnplugReplugNotificationWithAccessoryName:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUNotificationRequest

- (id)initUnplugReplugNotificationWithAccessoryName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = AUNotificationRequest;
  v4 = [(AUNotificationRequest *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 1;
    v4->_accessoryName = [a3 copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AUNotificationRequest;
  [(AUNotificationRequest *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_accessoryName forKey:@"accessoryName"];
  type = self->_type;

  [a3 encodeInteger:type forKey:@"type"];
}

- (AUNotificationRequest)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AUNotificationRequest;
  v4 = [(AUNotificationRequest *)&v6 init];
  if (v4)
  {
    v4->_accessoryName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"accessoryName", "copy"}];
    v4->_type = [a3 decodeIntegerForKey:@"type"];
  }

  return v4;
}

@end