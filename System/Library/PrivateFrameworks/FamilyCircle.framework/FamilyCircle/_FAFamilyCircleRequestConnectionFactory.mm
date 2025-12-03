@interface _FAFamilyCircleRequestConnectionFactory
- (id)createServiceConnectionWithInterruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
@end

@implementation _FAFamilyCircleRequestConnectionFactory

- (id)createServiceConnectionWithInterruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  v5 = MEMORY[0x1E696B0B8];
  invalidationHandlerCopy = invalidationHandler;
  handlerCopy = handler;
  v8 = [[v5 alloc] initWithMachServiceName:@"com.apple.familycircle.agent" options:4096];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F4BF70];
  [v8 setRemoteObjectInterface:v9];
  [v8 setInterruptionHandler:handlerCopy];

  [v8 setInvalidationHandler:invalidationHandlerCopy];

  return v8;
}

@end