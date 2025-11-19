@interface ULDarwinNotificationRecord
- (ULDarwinNotificationRecord)initWithNotificationName:(id)a3 registrationToken:(id)a4 handler:(id)a5;
@end

@implementation ULDarwinNotificationRecord

- (ULDarwinNotificationRecord)initWithNotificationName:(id)a3 registrationToken:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ULDarwinNotificationRecord;
  v11 = [(ULDarwinNotificationRecord *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ULDarwinNotificationRecord *)v11 setNotificationName:v8];
    [(ULDarwinNotificationRecord *)v12 setRegistrationToken:v9];
    [(ULDarwinNotificationRecord *)v12 setHandler:v10];
  }

  return v12;
}

@end