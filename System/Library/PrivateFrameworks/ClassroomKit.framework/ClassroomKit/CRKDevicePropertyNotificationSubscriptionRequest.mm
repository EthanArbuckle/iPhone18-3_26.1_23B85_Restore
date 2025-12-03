@interface CRKDevicePropertyNotificationSubscriptionRequest
- (CRKDevicePropertyNotificationSubscriptionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDevicePropertyNotificationSubscriptionRequest

- (CRKDevicePropertyNotificationSubscriptionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKDevicePropertyNotificationSubscriptionRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
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
  v6.super_class = CRKDevicePropertyNotificationSubscriptionRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKDevicePropertyNotificationSubscriptionRequest *)self propertyKeys:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"propertyKeys"];
}

@end