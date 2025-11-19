@interface EDVIPManagerProxy
- (EDVIPManagerProxy)initWithVIPManager:(id)a3;
- (void)_vipsDidChange:(id)a3;
- (void)cancelObservation:(id)a3;
- (void)dealloc;
- (void)registerObserver:(id)a3 observationIdentifier:(id)a4;
- (void)removeVIPsWithEmailAddresses:(id)a3;
- (void)removeVIPsWithIdentifiers:(id)a3;
- (void)saveVIPs:(id)a3;
@end

@implementation EDVIPManagerProxy

- (EDVIPManagerProxy)initWithVIPManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = EDVIPManagerProxy;
  v6 = [(EDVIPManagerProxy *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_observersLock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observersByIdentifier = v7->_observersByIdentifier;
    v7->_observersByIdentifier = v8;

    objc_storeStrong(&v7->_vipManager, a3);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__vipsDidChange_ name:*MEMORY[0x1E699ABE0] object:v5];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = EDVIPManagerProxy;
  [(EDVIPManagerProxy *)&v4 dealloc];
}

- (void)registerObserver:(id)a3 observationIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMapTable *)self->_observersByIdentifier setObject:v9 forKey:v6];
  os_unfair_lock_unlock(&self->_observersLock);
  v7 = [(EDVIPManagerProxy *)self vipManager];
  v8 = [v7 allVIPs];
  [v9 observer:v6 gotVIPs:v8];
}

- (void)cancelObservation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMapTable *)self->_observersByIdentifier removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)saveVIPs:(id)a3
{
  v5 = a3;
  v4 = [(EDVIPManagerProxy *)self vipManager];
  [v4 saveVIPs:v5];
}

- (void)removeVIPsWithIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(EDVIPManagerProxy *)self vipManager];
  [v4 removeVIPsWithIdentifiers:v5];
}

- (void)removeVIPsWithEmailAddresses:(id)a3
{
  v5 = a3;
  v4 = [(EDVIPManagerProxy *)self vipManager];
  [v4 removeVIPsWithEmailAddresses:v5];
}

- (void)_vipsDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E699ABF0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E699ABE8]];
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