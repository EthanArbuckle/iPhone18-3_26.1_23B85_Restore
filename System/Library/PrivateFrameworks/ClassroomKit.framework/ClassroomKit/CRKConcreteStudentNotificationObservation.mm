@interface CRKConcreteStudentNotificationObservation
- (CRKConcreteStudentNotificationObservation)initWithNotificationName:(id)name notificationHandler:(id)handler;
- (void)dealloc;
- (void)receiveNotificationWithName:(id)name userInfo:(id)info;
@end

@implementation CRKConcreteStudentNotificationObservation

- (void)dealloc
{
  [(CRKConcreteStudentNotificationObservation *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRKConcreteStudentNotificationObservation;
  [(CRKConcreteStudentNotificationObservation *)&v3 dealloc];
}

- (CRKConcreteStudentNotificationObservation)initWithNotificationName:(id)name notificationHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CRKConcreteStudentNotificationObservation;
  v8 = [(CRKConcreteStudentNotificationObservation *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    notificationName = v8->_notificationName;
    v8->_notificationName = v9;

    v11 = MEMORY[0x245D3AAD0](handlerCopy);
    notificationHandler = v8->_notificationHandler;
    v8->_notificationHandler = v11;
  }

  return v8;
}

- (void)receiveNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  notificationHandler = [(CRKConcreteStudentNotificationObservation *)self notificationHandler];
  if (notificationHandler)
  {
    v8 = notificationHandler;
    notificationName = [(CRKConcreteStudentNotificationObservation *)self notificationName];
    v10 = [notificationName isEqualToString:nameCopy];

    if (v10)
    {
      notificationHandler2 = [(CRKConcreteStudentNotificationObservation *)self notificationHandler];
      (notificationHandler2)[2](notificationHandler2, infoCopy);
    }
  }
}

@end