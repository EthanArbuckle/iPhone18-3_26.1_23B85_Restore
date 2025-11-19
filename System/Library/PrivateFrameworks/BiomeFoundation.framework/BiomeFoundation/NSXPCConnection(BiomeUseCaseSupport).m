@interface NSXPCConnection(BiomeUseCaseSupport)
+ (id)bm_connectionWithListenerEndpoint:()BiomeUseCaseSupport queue:;
+ (id)bm_connectionWithMachServiceName:()BiomeUseCaseSupport queue:options:;
+ (id)bm_connectionWithServiceName:()BiomeUseCaseSupport queue:;
- (id)bm_exportedUseCase;
- (id)bm_remoteUseCase;
- (void)setBm_exportedUseCase:()BiomeUseCaseSupport;
@end

@implementation NSXPCConnection(BiomeUseCaseSupport)

- (id)bm_remoteUseCase
{
  v1 = [a1 bm_transport];
  v2 = [v1 remoteUserInfo];
  v3 = [v2 objectForKeyedSubscript:@"UseCase"];

  return v3;
}

+ (id)bm_connectionWithListenerEndpoint:()BiomeUseCaseSupport queue:
{
  v5 = a4;
  v6 = [a3 _endpoint];
  v7 = xpc_connection_create_from_endpoint(v6);

  if (v5)
  {
    xpc_connection_set_target_queue(v7, v5);
  }

  v8 = [[_BMXPCConnection alloc] _initWithConnection:v7 queue:v5 flags:2];

  return v8;
}

+ (id)bm_connectionWithMachServiceName:()BiomeUseCaseSupport queue:options:
{
  v7 = a5 >> 11;
  v8 = a3;
  v9 = a4;
  mach_service = xpc_connection_create_mach_service([a3 UTF8String], v9, v7 & 2);
  v11 = [[_BMXPCConnection alloc] _initWithConnection:mach_service queue:v9 flags:0];

  return v11;
}

+ (id)bm_connectionWithServiceName:()BiomeUseCaseSupport queue:
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_connection_create([a3 UTF8String], v7);
  v9 = [[_BMXPCConnection alloc] _initWithConnection:v8 queue:v7 flags:0];

  return v9;
}

- (void)setBm_exportedUseCase:()BiomeUseCaseSupport
{
  v4 = a3;
  v6 = [a1 bm_transport];
  v5 = [v6 exportedUserInfo];
  [v5 setObject:v4 forKeyedSubscript:@"UseCase"];
}

- (id)bm_exportedUseCase
{
  v1 = [a1 bm_transport];
  v2 = [v1 exportedUserInfo];
  v3 = [v2 objectForKeyedSubscript:@"UseCase"];

  return v3;
}

@end