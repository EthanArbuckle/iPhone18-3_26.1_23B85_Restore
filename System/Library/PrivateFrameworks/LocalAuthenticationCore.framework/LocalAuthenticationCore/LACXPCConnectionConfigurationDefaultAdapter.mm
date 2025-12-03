@interface LACXPCConnectionConfigurationDefaultAdapter
- (LACXPCConnectionConfigurationDefaultAdapter)initWithRemoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface exportedObject:(id)object replyQueue:(id)queue;
@end

@implementation LACXPCConnectionConfigurationDefaultAdapter

- (LACXPCConnectionConfigurationDefaultAdapter)initWithRemoteObjectInterface:(id)interface exportedInterface:(id)exportedInterface exportedObject:(id)object replyQueue:(id)queue
{
  interfaceCopy = interface;
  exportedInterfaceCopy = exportedInterface;
  objectCopy = object;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = LACXPCConnectionConfigurationDefaultAdapter;
  v15 = [(LACXPCConnectionConfigurationDefaultAdapter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_exportedObject, object);
    objc_storeStrong(&v16->_exportedInterface, exportedInterface);
    objc_storeStrong(&v16->_remoteObjectInterface, interface);
    objc_storeStrong(&v16->_replyQueue, queue);
  }

  return v16;
}

@end