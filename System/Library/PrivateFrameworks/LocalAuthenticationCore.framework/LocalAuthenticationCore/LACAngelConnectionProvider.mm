@interface LACAngelConnectionProvider
- (LACAngelConnectionProvider)initWithReplyQueue:(id)queue;
- (id)makeConnectionForRequest:(id)request withExportedObject:(id)object;
@end

@implementation LACAngelConnectionProvider

- (LACAngelConnectionProvider)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = LACAngelConnectionProvider;
  v6 = [(LACAngelConnectionProvider *)&v10 init];
  if (v6)
  {
    v7 = [[LACXPCConnectionEndpointBSAdapter alloc] initWithMachService:@"com.apple.LocalAuthenticationUIService.authentication-methods" protocolServiceName:@"com.apple.LocalAuthenticationUIService.authentication-service"];
    endpoint = v6->_endpoint;
    v6->_endpoint = v7;

    objc_storeStrong(&v6->_replyQueue, queue);
  }

  return v6;
}

- (id)makeConnectionForRequest:(id)request withExportedObject:(id)object
{
  objectCopy = object;
  v6 = [LACXPCConnectionConfigurationDefaultAdapter alloc];
  v7 = [LACXPCInterface interfaceForXPCProtocol:&unk_1F26AA318];
  v8 = [LACXPCInterface interfaceForXPCProtocol:&unk_1F269F8E0];
  v9 = [(LACXPCConnectionConfigurationDefaultAdapter *)v6 initWithRemoteObjectInterface:v7 exportedInterface:v8 exportedObject:objectCopy replyQueue:self->_replyQueue];

  v10 = [[LACXPCConnectionBSAdapter alloc] initWithEndpoint:self->_endpoint];
  [(LACXPCConnectionDefaultAdapter *)v10 configureWithConfiguration:v9];

  return v10;
}

@end