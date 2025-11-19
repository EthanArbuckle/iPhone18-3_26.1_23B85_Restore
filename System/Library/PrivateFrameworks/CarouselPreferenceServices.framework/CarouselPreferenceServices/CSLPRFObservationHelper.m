@interface CSLPRFObservationHelper
- (CSLPRFObservationHelper)init;
- (unint64_t)observerCount;
- (void)addObserver:(id)a3;
- (void)notifyObserversWithBlock:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation CSLPRFObservationHelper

- (void)notifyObserversWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)observerCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_lock_observers count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (CSLPRFObservationHelper)init
{
  v7.receiver = self;
  v7.super_class = CSLPRFObservationHelper;
  v2 = [(CSLPRFObservationHelper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = v4;
  }

  return v3;
}

@end