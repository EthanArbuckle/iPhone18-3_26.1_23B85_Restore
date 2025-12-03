@interface CAFNotificationSeverityCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFNotificationSeverityCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFNotificationSeverityCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  notificationSeverityValue = [(CAFNotificationSeverityCharacteristic *)self notificationSeverityValue];

  return NSStringFromNotificationSeverity(notificationSeverityValue);
}

@end