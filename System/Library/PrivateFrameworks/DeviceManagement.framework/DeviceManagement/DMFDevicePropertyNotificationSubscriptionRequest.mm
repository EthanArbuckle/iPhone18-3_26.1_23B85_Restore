@interface DMFDevicePropertyNotificationSubscriptionRequest
- (DMFDevicePropertyNotificationSubscriptionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFDevicePropertyNotificationSubscriptionRequest

- (DMFDevicePropertyNotificationSubscriptionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DMFDevicePropertyNotificationSubscriptionRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"propertyKeys"];
    propertyKeys = v5->_propertyKeys;
    v5->_propertyKeys = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFDevicePropertyNotificationSubscriptionRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [(DMFDevicePropertyNotificationSubscriptionRequest *)self propertyKeys:v6.receiver];
  [v4 encodeObject:v5 forKey:@"propertyKeys"];
}

@end