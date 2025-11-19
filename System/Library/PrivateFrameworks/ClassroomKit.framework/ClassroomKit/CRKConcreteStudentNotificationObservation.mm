@interface CRKConcreteStudentNotificationObservation
- (CRKConcreteStudentNotificationObservation)initWithNotificationName:(id)a3 notificationHandler:(id)a4;
- (void)dealloc;
- (void)receiveNotificationWithName:(id)a3 userInfo:(id)a4;
@end

@implementation CRKConcreteStudentNotificationObservation

- (void)dealloc
{
  [(CRKConcreteStudentNotificationObservation *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRKConcreteStudentNotificationObservation;
  [(CRKConcreteStudentNotificationObservation *)&v3 dealloc];
}

- (CRKConcreteStudentNotificationObservation)initWithNotificationName:(id)a3 notificationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CRKConcreteStudentNotificationObservation;
  v8 = [(CRKConcreteStudentNotificationObservation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    notificationName = v8->_notificationName;
    v8->_notificationName = v9;

    v11 = MEMORY[0x245D3AAD0](v7);
    notificationHandler = v8->_notificationHandler;
    v8->_notificationHandler = v11;
  }

  return v8;
}

- (void)receiveNotificationWithName:(id)a3 userInfo:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CRKConcreteStudentNotificationObservation *)self notificationHandler];
  if (v7)
  {
    v8 = v7;
    v9 = [(CRKConcreteStudentNotificationObservation *)self notificationName];
    v10 = [v9 isEqualToString:v12];

    if (v10)
    {
      v11 = [(CRKConcreteStudentNotificationObservation *)self notificationHandler];
      (v11)[2](v11, v6);
    }
  }
}

@end