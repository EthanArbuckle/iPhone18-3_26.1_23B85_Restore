@interface EMActivityRegistry
+ (NSXPCInterface)remoteInterface;
- (EMActivityRegistry)initWithRemoteConnection:(id)a3;
- (id)registerActivityObserver:(id)a3;
@end

@implementation EMActivityRegistry

+ (NSXPCInterface)remoteInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46418E0];
  v4 = [a1 observerInterface];
  [v3 setInterface:v4 forSelector:sel_registerActivityObserver_completion_ argumentIndex:0 ofReply:0];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F461EBF8];
  [v3 setInterface:v5 forSelector:sel_registerActivityObserver_completion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v3 setClasses:v8 forSelector:sel_registerActivityObserver_completion_ argumentIndex:1 ofReply:1];

  return v3;
}

- (EMActivityRegistry)initWithRemoteConnection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EMActivityRegistry;
  v6 = [(EMActivityRegistry *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observerWrappersByObserver = v7->_observerWrappersByObserver;
    v7->_observerWrappersByObserver = v8;
  }

  return v7;
}

- (id)registerActivityObserver:(id)a3
{
  v4 = a3;
  v5 = [_EMActivityRegistryObserverWrapper alloc];
  v6 = [(EMActivityRegistry *)self connection];
  v7 = [(_EMActivityRegistryObserverWrapper *)v5 initWithConnection:v6 registry:self observer:v4];

  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_observerWrappersByObserver setObject:v7 forKey:v4];
  os_unfair_lock_unlock(&self->_lock);
  v8 = MEMORY[0x1E699B7F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__EMActivityRegistry_registerActivityObserver___block_invoke;
  v13[3] = &unk_1E826C230;
  v9 = v7;
  v14 = v9;
  v15 = self;
  v10 = v4;
  v16 = v10;
  v11 = [v8 tokenWithCancelationBlock:v13];
  [(_EMActivityRegistryObserverWrapper *)v9 _startObservingIfNecessary];

  return v11;
}

void __47__EMActivityRegistry_registerActivityObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);
  os_unfair_lock_lock(v2 + 4);
  [*(*(a1 + 40) + 8) removeObjectForKey:*(a1 + 48)];

  os_unfair_lock_unlock(v2 + 4);
}

@end