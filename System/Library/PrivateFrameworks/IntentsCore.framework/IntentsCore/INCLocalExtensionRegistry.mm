@interface INCLocalExtensionRegistry
+ (id)sharedInstance;
- (INCLocalExtensionRegistry)init;
- (id)localExtensionForIdentifier:(id)identifier;
- (id)localExtensions;
- (void)deregisterLocalExtension:(id)extension;
- (void)registerLocalExtension:(id)extension;
@end

@implementation INCLocalExtensionRegistry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_10);
  }

  v3 = sharedInstance_sLocalExtensionRegistry;

  return v3;
}

- (id)localExtensionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_localExtensionsByIdentifier objectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)localExtensions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CBEB98];
  allValues = [(NSMutableDictionary *)self->_localExtensionsByIdentifier allValues];
  v5 = [v3 setWithArray:allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)deregisterLocalExtension:(id)extension
{
  extensionCopy = extension;
  os_unfair_lock_lock(&self->_lock);
  localExtensionIdentifier = [extensionCopy localExtensionIdentifier];
  v6 = localExtensionIdentifier;
  if (localExtensionIdentifier)
  {
    v7 = localExtensionIdentifier;
  }

  else
  {
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
  }

  v9 = v7;

  v10 = [(NSMutableDictionary *)self->_localExtensionsByIdentifier objectForKey:v9];
  v11 = v10;
  if (v10 && [v10 isEqual:extensionCopy])
  {
    [(NSMutableDictionary *)self->_localExtensionsByIdentifier removeObjectForKey:v9];
  }

  else
  {
    localExtensionsByIdentifier = self->_localExtensionsByIdentifier;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__INCLocalExtensionRegistry_deregisterLocalExtension___block_invoke;
    v16[3] = &unk_2797E75C0;
    v17 = extensionCopy;
    v13 = [(NSMutableDictionary *)localExtensionsByIdentifier keysOfEntriesPassingTest:v16];
    v14 = self->_localExtensionsByIdentifier;
    allObjects = [v13 allObjects];
    [(NSMutableDictionary *)v14 removeObjectsForKeys:allObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerLocalExtension:(id)extension
{
  extensionCopy = extension;
  os_unfair_lock_lock(&self->_lock);
  localExtensionIdentifier = [extensionCopy localExtensionIdentifier];
  v5 = localExtensionIdentifier;
  if (localExtensionIdentifier)
  {
    v6 = localExtensionIdentifier;
  }

  else
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  v8 = v6;

  [(NSMutableDictionary *)self->_localExtensionsByIdentifier setObject:extensionCopy forKey:v8];
  os_unfair_lock_unlock(&self->_lock);
}

- (INCLocalExtensionRegistry)init
{
  v6.receiver = self;
  v6.super_class = INCLocalExtensionRegistry;
  v2 = [(INCLocalExtensionRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localExtensionsByIdentifier = v2->_localExtensionsByIdentifier;
    v2->_localExtensionsByIdentifier = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

uint64_t __43__INCLocalExtensionRegistry_sharedInstance__block_invoke()
{
  sharedInstance_sLocalExtensionRegistry = objc_alloc_init(INCLocalExtensionRegistry);

  return MEMORY[0x2821F96F8]();
}

@end