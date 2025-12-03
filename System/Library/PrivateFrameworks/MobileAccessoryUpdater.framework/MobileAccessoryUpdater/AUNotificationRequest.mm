@interface AUNotificationRequest
- (AUNotificationRequest)initWithCoder:(id)coder;
- (id)initUnplugReplugNotificationWithAccessoryName:(id)name;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AUNotificationRequest

- (id)initUnplugReplugNotificationWithAccessoryName:(id)name
{
  if (!name)
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
    v4->_accessoryName = [name copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AUNotificationRequest;
  [(AUNotificationRequest *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_accessoryName forKey:@"accessoryName"];
  type = self->_type;

  [coder encodeInteger:type forKey:@"type"];
}

- (AUNotificationRequest)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AUNotificationRequest;
  v4 = [(AUNotificationRequest *)&v6 init];
  if (v4)
  {
    v4->_accessoryName = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"accessoryName", "copy"}];
    v4->_type = [coder decodeIntegerForKey:@"type"];
  }

  return v4;
}

@end