@interface DMFDevicePropertyNotificationSubscriptionRequest
- (DMFDevicePropertyNotificationSubscriptionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFDevicePropertyNotificationSubscriptionRequest

- (DMFDevicePropertyNotificationSubscriptionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFDevicePropertyNotificationSubscriptionRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"propertyKeys"];
    propertyKeys = v5->_propertyKeys;
    v5->_propertyKeys = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFDevicePropertyNotificationSubscriptionRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFDevicePropertyNotificationSubscriptionRequest *)self propertyKeys:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"propertyKeys"];
}

@end