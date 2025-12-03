@interface MSVXPCConnection
+ (void)registerLocalListener:(id)listener withServiceName:(id)name;
+ (void)unregisterLocalListerWithName:(id)name;
- (MSVXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options;
- (MSVXPCConnection)initWithServiceName:(id)name;
@end

@implementation MSVXPCConnection

- (MSVXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  os_unfair_lock_lock(&__lock);
  v8 = [__localListeners objectForKey:nameCopy];
  os_unfair_lock_unlock(&__lock);
  if (options)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVXPCConnection.m" lineNumber:63 description:@"MSVXPCConnection does not support nonzero NSXPCConnectionOptions"];

    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_5:
    v14.receiver = self;
    v14.super_class = MSVXPCConnection;
    v11 = [(MSVXPCConnection *)&v14 initWithMachServiceName:nameCopy options:0];
    goto LABEL_6;
  }

  localProxy = [v8 localProxy];
  endpoint = [localProxy endpoint];
  v11 = [(MSVXPCConnection *)self initWithListenerEndpoint:endpoint];

LABEL_6:
  return v11;
}

- (MSVXPCConnection)initWithServiceName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&__lock);
  v5 = [__localListeners objectForKey:nameCopy];
  os_unfair_lock_unlock(&__lock);
  if (v5)
  {
    localProxy = [v5 localProxy];
    endpoint = [localProxy endpoint];
    v8 = [(MSVXPCConnection *)self initWithListenerEndpoint:endpoint];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSVXPCConnection;
    v8 = [(MSVXPCConnection *)&v10 initWithServiceName:nameCopy];
  }

  return v8;
}

+ (void)unregisterLocalListerWithName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&__lock);
  [__localListeners removeObjectForKey:nameCopy];

  os_unfair_lock_unlock(&__lock);
}

+ (void)registerLocalListener:(id)listener withServiceName:(id)name
{
  nameCopy = name;
  listenerCopy = listener;
  os_unfair_lock_lock(&__lock);
  if (registerLocalListener_withServiceName__onceToken != -1)
  {
    dispatch_once(&registerLocalListener_withServiceName__onceToken, &__block_literal_global_2838);
  }

  [__localListeners setObject:listenerCopy forKey:nameCopy];

  os_unfair_lock_unlock(&__lock);
}

uint64_t __58__MSVXPCConnection_registerLocalListener_withServiceName___block_invoke()
{
  __localListeners = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

@end