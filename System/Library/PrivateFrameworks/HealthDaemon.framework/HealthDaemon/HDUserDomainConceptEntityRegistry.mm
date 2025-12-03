@interface HDUserDomainConceptEntityRegistry
+ (HDUserDomainConceptEntityRegistry)registryWithDaemon:(id)daemon setSharedInstance:(BOOL)instance;
+ (HDUserDomainConceptEntityRegistry)sharedInstance;
+ (void)_setSharedInstance:(id)instance;
- (Class)userDomainConceptEntityClassForTypeIdentifier:(id)identifier;
- (HDDaemon)daemon;
- (HDUserDomainConceptEntityRegistry)initWithDaemon:(id)daemon;
- (id)_builtinUserDomainConceptEntityClasses;
- (id)_registeredUserDomainConceptEntityClasses;
- (id)registeredUserDomainConceptEntityClasses;
- (void)_lock_loadUserDomainConceptEntities;
- (void)_registerUserDomainConceptClassesFromProvider:(id)provider classRegistry:(id)registry;
@end

@implementation HDUserDomainConceptEntityRegistry

- (HDUserDomainConceptEntityRegistry)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = HDUserDomainConceptEntityRegistry;
  v5 = [(HDUserDomainConceptEntityRegistry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

+ (HDUserDomainConceptEntityRegistry)sharedInstance
{
  os_unfair_lock_lock(&_MergedGlobals_206);
  v4 = qword_280D67C78;
  os_unfair_lock_unlock(&_MergedGlobals_206);
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDUserDomainConceptEntityRegistry.m" lineNumber:52 description:{@"The shared instance of HDUserDomainConceptEntityRegistry is nil. Something went wrong at initialization, and the static variable was never set."}];
  }

  return v4;
}

+ (void)_setSharedInstance:(id)instance
{
  instanceCopy = instance;
  os_unfair_lock_lock(&_MergedGlobals_206);
  v4 = qword_280D67C78;
  qword_280D67C78 = instanceCopy;

  os_unfair_lock_unlock(&_MergedGlobals_206);
}

+ (HDUserDomainConceptEntityRegistry)registryWithDaemon:(id)daemon setSharedInstance:(BOOL)instance
{
  instanceCopy = instance;
  daemonCopy = daemon;
  v7 = [[HDUserDomainConceptEntityRegistry alloc] initWithDaemon:daemonCopy];

  if (instanceCopy)
  {
    [self _setSharedInstance:v7];
  }

  return v7;
}

- (Class)userDomainConceptEntityClassForTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _registeredUserDomainConceptEntityClasses = [(HDUserDomainConceptEntityRegistry *)self _registeredUserDomainConceptEntityClasses];
  v6 = [_registeredUserDomainConceptEntityClasses objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)registeredUserDomainConceptEntityClasses
{
  _registeredUserDomainConceptEntityClasses = [(HDUserDomainConceptEntityRegistry *)self _registeredUserDomainConceptEntityClasses];
  allValues = [_registeredUserDomainConceptEntityClasses allValues];

  return allValues;
}

- (id)_registeredUserDomainConceptEntityClasses
{
  os_unfair_lock_lock(&self->_lock);
  lock_typeIdentifierToEntityClass = self->_lock_typeIdentifierToEntityClass;
  if (!lock_typeIdentifierToEntityClass)
  {
    [(HDUserDomainConceptEntityRegistry *)self _lock_loadUserDomainConceptEntities];
    lock_typeIdentifierToEntityClass = self->_lock_typeIdentifierToEntityClass;
  }

  v4 = lock_typeIdentifierToEntityClass;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_registerUserDomainConceptClassesFromProvider:(id)provider classRegistry:(id)registry
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  registryCopy = registry;
  userDomainConceptEntityClasses = [providerCopy userDomainConceptEntityClasses];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [userDomainConceptEntityClasses allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if ([registryCopy objectForKeyedSubscript:v15])
        {
          [MEMORY[0x277CCA890] currentHandler];
          v20 = a2;
          v16 = v21 = providerCopy;
          [v15 description];
          v18 = v17 = self;
          [v16 handleFailureInMethod:v20 object:v17 file:@"HDUserDomainConceptEntityRegistry.m" lineNumber:115 description:{@"Attempting to register an already existing User Domain Concept identifier (%@) is unsupported. Please update the providing class (%@) and make sure the identifier schema is not used in any other plugin.", v18, objc_opt_class()}];

          self = v17;
          a2 = v20;
          providerCopy = v21;
        }

        [registryCopy setObject:objc_msgSend(userDomainConceptEntityClasses forKeyedSubscript:{"objectForKeyedSubscript:", v15), v15}];
      }

      v12 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_lock_loadUserDomainConceptEntities
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  _builtinUserDomainConceptEntityClasses = [(HDUserDomainConceptEntityRegistry *)self _builtinUserDomainConceptEntityClasses];
  v5 = [v3 initWithDictionary:_builtinUserDomainConceptEntityClasses];

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  pluginManager = [WeakRetained pluginManager];
  v8 = [pluginManager pluginsConformingToProtocol:&unk_283D71438];
  allValues = [v8 allValues];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = allValues;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HDUserDomainConceptEntityRegistry *)self _registerUserDomainConceptClassesFromProvider:*(*(&v18 + 1) + 8 * v14++) classRegistry:v5, v18];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = [v5 copy];
  lock_typeIdentifierToEntityClass = self->_lock_typeIdentifierToEntityClass;
  self->_lock_typeIdentifierToEntityClass = v15;

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_builtinUserDomainConceptEntityClasses
{
  v9[3] = *MEMORY[0x277D85DE8];
  baseUserDomainConceptIdentifier = [MEMORY[0x277CCDB50] baseUserDomainConceptIdentifier];
  v8[0] = baseUserDomainConceptIdentifier;
  v9[0] = objc_opt_class();
  medicalUserDomainConceptIdentifier = [MEMORY[0x277CCDB50] medicalUserDomainConceptIdentifier];
  v8[1] = medicalUserDomainConceptIdentifier;
  v9[1] = objc_opt_class();
  listUserDomainConceptIdentifier = [MEMORY[0x277CCDB50] listUserDomainConceptIdentifier];
  v8[2] = listUserDomainConceptIdentifier;
  v9[2] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end