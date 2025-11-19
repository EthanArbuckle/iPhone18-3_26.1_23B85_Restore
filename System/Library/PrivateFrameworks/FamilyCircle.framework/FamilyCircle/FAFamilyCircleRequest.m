@interface FAFamilyCircleRequest
- (FAFamilyCircleRequest)init;
- (FAFamilyCircleRequest)initWithConnectionProvider:(id)a3;
- (id)requestOptions;
- (id)serviceConnection;
- (id)serviceRemoteObjectWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectWithErrorHandler:(id)a3;
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
  v2 = [(FAFamilyCircleRequest *)self connectionProvider];
  v3 = [v2 serviceConnection];

  return v3;
}

- (id)requestOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(FAFamilyCircleRequest *)self usernameOrDSID];
  [v3 setObject:v4 forKeyedSubscript:@"Username"];

  v5 = [(FAFamilyCircleRequest *)self passwordOrToken];
  [v3 setObject:v5 forKeyedSubscript:@"Password"];

  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 processName];
  [v3 setObject:v7 forKeyedSubscript:@"ClientProcess"];

  v8 = [v3 copy];

  return v8;
}

- (FAFamilyCircleRequest)initWithConnectionProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FAFamilyCircleRequest;
  v6 = [(FAFamilyCircleRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionProvider, a3);
    v8 = v7;
  }

  return v7;
}

- (id)serviceRemoteObjectWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(FAFamilyCircleRequest *)self serviceConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)synchronousRemoteObjectWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(FAFamilyCircleRequest *)self serviceConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end