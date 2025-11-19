@interface IDSGroupStatusNotificationParameters
- (IDSGroupStatusNotificationParameters)init;
@end

@implementation IDSGroupStatusNotificationParameters

- (IDSGroupStatusNotificationParameters)init
{
  v3.receiver = self;
  v3.super_class = IDSGroupStatusNotificationParameters;
  return [(IDSGroupStatusNotificationParameters *)&v3 init];
}

@end