@interface ULDarwinNotificationRecord
- (ULDarwinNotificationRecord)initWithNotificationName:(id)name registrationToken:(id)token handler:(id)handler;
@end

@implementation ULDarwinNotificationRecord

- (ULDarwinNotificationRecord)initWithNotificationName:(id)name registrationToken:(id)token handler:(id)handler
{
  nameCopy = name;
  tokenCopy = token;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = ULDarwinNotificationRecord;
  v11 = [(ULDarwinNotificationRecord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ULDarwinNotificationRecord *)v11 setNotificationName:nameCopy];
    [(ULDarwinNotificationRecord *)v12 setRegistrationToken:tokenCopy];
    [(ULDarwinNotificationRecord *)v12 setHandler:handlerCopy];
  }

  return v12;
}

@end