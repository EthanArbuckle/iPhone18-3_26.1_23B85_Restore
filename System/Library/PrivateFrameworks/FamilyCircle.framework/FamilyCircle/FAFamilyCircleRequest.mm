@interface FAFamilyCircleRequest
- (FAFamilyCircleRequest)init;
- (FAFamilyCircleRequest)initWithConnectionProvider:(id)provider;
- (id)requestOptions;
- (id)serviceConnection;
- (id)serviceRemoteObjectWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectWithErrorHandler:(id)handler;
@end

@implementation FAFamilyCircleRequest

- (FAFamilyCircleRequest)init
{
  v3 = +[_FAFamilyCircleRequestConnectionProvider sharedInstance];
  v4 = [(FAFamilyCircleRequest *)self initWithConnectionProvider:v3];

  return v4;
}

- (id)serviceConnection
{
  connectionProvider = [(FAFamilyCircleRequest *)self connectionProvider];
  serviceConnection = [connectionProvider serviceConnection];

  return serviceConnection;
}

- (id)requestOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  usernameOrDSID = [(FAFamilyCircleRequest *)self usernameOrDSID];
  [dictionary setObject:usernameOrDSID forKeyedSubscript:@"Username"];

  passwordOrToken = [(FAFamilyCircleRequest *)self passwordOrToken];
  [dictionary setObject:passwordOrToken forKeyedSubscript:@"Password"];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  [dictionary setObject:processName forKeyedSubscript:@"ClientProcess"];

  v8 = [dictionary copy];

  return v8;
}

- (FAFamilyCircleRequest)initWithConnectionProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = FAFamilyCircleRequest;
  v6 = [(FAFamilyCircleRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionProvider, provider);
    v8 = v7;
  }

  return v7;
}

- (id)serviceRemoteObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serviceConnection = [(FAFamilyCircleRequest *)self serviceConnection];
  v6 = [serviceConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serviceConnection = [(FAFamilyCircleRequest *)self serviceConnection];
  v6 = [serviceConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

@end