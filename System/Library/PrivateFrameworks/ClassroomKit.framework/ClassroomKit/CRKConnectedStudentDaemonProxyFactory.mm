@interface CRKConnectedStudentDaemonProxyFactory
+ (void)makeConnectedStudentDaemonProxyWithCompletion:(id)a3;
- (CRKConnectedStudentDaemonProxyFactory)initWithStudentDaemonProxy:(id)a3 didConnectHandler:(id)a4;
- (void)beginConnection;
- (void)daemonProxyDidConnect:(id)a3;
@end

@implementation CRKConnectedStudentDaemonProxyFactory

- (CRKConnectedStudentDaemonProxyFactory)initWithStudentDaemonProxy:(id)a3 didConnectHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKConnectedStudentDaemonProxyFactory;
  v9 = [(CRKConnectedStudentDaemonProxyFactory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_studentDaemonProxy, a3);
    v11 = MEMORY[0x245D3AAD0](v8);
    didConnectHandler = v10->_didConnectHandler;
    v10->_didConnectHandler = v11;
  }

  return v10;
}

+ (void)makeConnectedStudentDaemonProxyWithCompletion:(id)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v4 = [[CRKConnectedStudentDaemonProxyFactory alloc] initWithStudentDaemonProxy:v5 didConnectHandler:v3];

  [v5 addObserver:v4];
  [(CRKConnectedStudentDaemonProxyFactory *)v4 beginConnection];
}

- (void)beginConnection
{
  [(CRKConnectedStudentDaemonProxyFactory *)self setSelfReference:self];
  v3 = [(CRKConnectedStudentDaemonProxyFactory *)self studentDaemonProxy];
  [v3 connect];
}

- (void)daemonProxyDidConnect:(id)a3
{
  v4 = a3;
  v5 = [(CRKConnectedStudentDaemonProxyFactory *)self didConnectHandler];
  [(CRKConnectedStudentDaemonProxyFactory *)self setDidConnectHandler:0];
  v5[2](v5, v4);

  [(CRKConnectedStudentDaemonProxyFactory *)self setSelfReference:0];
}

@end