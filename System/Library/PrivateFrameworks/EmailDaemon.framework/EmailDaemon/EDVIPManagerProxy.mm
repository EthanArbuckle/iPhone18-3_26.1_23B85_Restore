@interface EDVIPManagerProxy
- (EDVIPManagerProxy)initWithVIPManager:(id)manager;
- (void)_vipsDidChange:(id)change;
- (void)cancelObservation:(id)observation;
- (void)dealloc;
- (void)registerObserver:(id)observer observationIdentifier:(id)identifier;
- (void)removeVIPsWithEmailAddresses:(id)addresses;
- (void)removeVIPsWithIdentifiers:(id)identifiers;
- (void)saveVIPs:(id)ps;
@end

@implementation EDVIPManagerProxy

- (EDVIPManagerProxy)initWithVIPManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = EDVIPManagerProxy;
  v6 = [(EDVIPManagerProxy *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_observersLock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observersByIdentifier = v7->_observersByIdentifier;
    v7->_observersByIdentifier = strongToStrongObjectsMapTable;

    objc_storeStrong(&v7->_vipManager, manager);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__vipsDidChange_ name:*MEMORY[0x1E699ABE0] object:managerCopy];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = EDVIPManagerProxy;
  [(EDVIPManagerProxy *)&v4 dealloc];
}

- (void)registerObserver:(id)observer observationIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMapTable *)self->_observersByIdentifier setObject:observerCopy forKey:identifierCopy];
  os_unfair_lock_unlock(&self->_observersLock);
  vipManager = [(EDVIPManagerProxy *)self vipManager];
  allVIPs = [vipManager allVIPs];
  [observerCopy observer:identifierCopy gotVIPs:allVIPs];
}

- (void)cancelObservation:(id)observation
{
  observationCopy = observation;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMapTable *)self->_observersByIdentifier removeObjectForKey:observationCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)saveVIPs:(id)ps
{
  psCopy = ps;
  vipManager = [(EDVIPManagerProxy *)self vipManager];
  [vipManager saveVIPs:psCopy];
}

- (void)removeVIPsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  vipManager = [(EDVIPManagerProxy *)self vipManager];
  [vipManager removeVIPsWithIdentifiers:identifiersCopy];
}

- (void)removeVIPsWithEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  vipManager = [(EDVIPManagerProxy *)self vipManager];
  [vipManager removeVIPsWithEmailAddresses:addressesCopy];
}

- (void)_vipsDidChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E699ABF0]];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E699ABE8]];
  os_unfair_lock_lock(&self->_observersLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_observersByIdentifier;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_observersByIdentifier objectForKey:v11, v14];
        [v12 observer:v11 updatedVIPs:v5 removedVIPs:v6];
      }

      v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_observersLock);
  v13 = *MEMORY[0x1E69E9840];
}

@end