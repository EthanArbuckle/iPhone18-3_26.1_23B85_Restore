@interface CRKConnectedStudentDaemonProxyFactory
+ (void)makeConnectedStudentDaemonProxyWithCompletion:(id)completion;
- (CRKConnectedStudentDaemonProxyFactory)initWithStudentDaemonProxy:(id)proxy didConnectHandler:(id)handler;
- (void)beginConnection;
- (void)daemonProxyDidConnect:(id)connect;
@end

@implementation CRKConnectedStudentDaemonProxyFactory

- (CRKConnectedStudentDaemonProxyFactory)initWithStudentDaemonProxy:(id)proxy didConnectHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CRKConnectedStudentDaemonProxyFactory;
  v9 = [(CRKConnectedStudentDaemonProxyFactory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_studentDaemonProxy, proxy);
    v11 = MEMORY[0x245D3AAD0](handlerCopy);
    didConnectHandler = v10->_didConnectHandler;
    v10->_didConnectHandler = v11;
  }

  return v10;
}

+ (void)makeConnectedStudentDaemonProxyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  v4 = [[CRKConnectedStudentDaemonProxyFactory alloc] initWithStudentDaemonProxy:v5 didConnectHandler:completionCopy];

  [v5 addObserver:v4];
  [(CRKConnectedStudentDaemonProxyFactory *)v4 beginConnection];
}

- (void)beginConnection
{
  [(CRKConnectedStudentDaemonProxyFactory *)self setSelfReference:self];
  studentDaemonProxy = [(CRKConnectedStudentDaemonProxyFactory *)self studentDaemonProxy];
  [studentDaemonProxy connect];
}

- (void)daemonProxyDidConnect:(id)connect
{
  connectCopy = connect;
  didConnectHandler = [(CRKConnectedStudentDaemonProxyFactory *)self didConnectHandler];
  [(CRKConnectedStudentDaemonProxyFactory *)self setDidConnectHandler:0];
  didConnectHandler[2](didConnectHandler, connectCopy);

  [(CRKConnectedStudentDaemonProxyFactory *)self setSelfReference:0];
}

@end