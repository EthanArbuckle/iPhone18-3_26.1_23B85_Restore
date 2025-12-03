@interface DaemonInterfaceFactory
- (DaemonInterfaceFactory)initWithPersistence:(id)persistence categorySubsystem:(id)subsystem sharedFetchController:(id)controller;
- (id)newOutgoingMessageRepository;
@end

@implementation DaemonInterfaceFactory

- (id)newOutgoingMessageRepository
{
  v3 = [OutgoingMessageRepository_iOS alloc];
  persistence = [(DaemonInterfaceFactory *)self persistence];
  messagePersistence = [persistence messagePersistence];
  persistence2 = [(DaemonInterfaceFactory *)self persistence];
  messageChangeManager = [persistence2 messageChangeManager];
  v8 = [(OutgoingMessageRepository_iOS *)v3 initWithMessagePersistence:messagePersistence messageChangeManager:messageChangeManager];

  return v8;
}

- (DaemonInterfaceFactory)initWithPersistence:(id)persistence categorySubsystem:(id)subsystem sharedFetchController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = DaemonInterfaceFactory;
  v10 = [(DaemonInterfaceFactory *)&v13 initWithPersistence:persistence categorySubsystem:subsystem];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sharedFetchController, controller);
  }

  return v11;
}

@end