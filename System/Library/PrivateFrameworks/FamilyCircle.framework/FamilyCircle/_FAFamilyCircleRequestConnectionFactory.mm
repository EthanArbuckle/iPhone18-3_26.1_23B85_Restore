@interface _FAFamilyCircleRequestConnectionFactory
- (id)createServiceConnectionWithInterruptionHandler:(id)a3 invalidationHandler:(id)a4;
@end

@implementation _FAFamilyCircleRequestConnectionFactory

- (id)createServiceConnectionWithInterruptionHandler:(id)a3 invalidationHandler:(id)a4
{
  v5 = MEMORY[0x1E696B0B8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithMachServiceName:@"com.apple.familycircle.agent" options:4096];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F4BF70];
  [v8 setRemoteObjectInterface:v9];
  [v8 setInterruptionHandler:v7];

  [v8 setInvalidationHandler:v6];

  return v8;
}

@end