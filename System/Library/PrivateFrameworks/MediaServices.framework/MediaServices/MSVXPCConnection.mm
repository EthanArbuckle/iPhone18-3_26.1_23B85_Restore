@interface MSVXPCConnection
+ (void)registerLocalListener:(id)a3 withServiceName:(id)a4;
+ (void)unregisterLocalListerWithName:(id)a3;
- (MSVXPCConnection)initWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (MSVXPCConnection)initWithServiceName:(id)a3;
@end

@implementation MSVXPCConnection

- (MSVXPCConnection)initWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  os_unfair_lock_lock(&__lock);
  v8 = [__localListeners objectForKey:v7];
  os_unfair_lock_unlock(&__lock);
  if (a4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSVXPCConnection.m" lineNumber:63 description:@"MSVXPCConnection does not support nonzero NSXPCConnectionOptions"];

    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_5:
    v14.receiver = self;
    v14.super_class = MSVXPCConnection;
    v11 = [(MSVXPCConnection *)&v14 initWithMachServiceName:v7 options:0];
    goto LABEL_6;
  }

  v9 = [v8 localProxy];
  v10 = [v9 endpoint];
  v11 = [(MSVXPCConnection *)self initWithListenerEndpoint:v10];

LABEL_6:
  return v11;
}

- (MSVXPCConnection)initWithServiceName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&__lock);
  v5 = [__localListeners objectForKey:v4];
  os_unfair_lock_unlock(&__lock);
  if (v5)
  {
    v6 = [v5 localProxy];
    v7 = [v6 endpoint];
    v8 = [(MSVXPCConnection *)self initWithListenerEndpoint:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSVXPCConnection;
    v8 = [(MSVXPCConnection *)&v10 initWithServiceName:v4];
  }

  return v8;
}

+ (void)unregisterLocalListerWithName:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&__lock);
  [__localListeners removeObjectForKey:v3];

  os_unfair_lock_unlock(&__lock);
}

+ (void)registerLocalListener:(id)a3 withServiceName:(id)a4
{
  v5 = a4;
  v6 = a3;
  os_unfair_lock_lock(&__lock);
  if (registerLocalListener_withServiceName__onceToken != -1)
  {
    dispatch_once(&registerLocalListener_withServiceName__onceToken, &__block_literal_global_2838);
  }

  [__localListeners setObject:v6 forKey:v5];

  os_unfair_lock_unlock(&__lock);
}

uint64_t __58__MSVXPCConnection_registerLocalListener_withServiceName___block_invoke()
{
  __localListeners = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

@end