@interface MSPCountedOrderedSet
- (BOOL)containsObject:(id)object;
- (MSPCountedOrderedSet)init;
- (NSArray)array;
- (NSOrderedSet)contents;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (void)_addObjectNoLock:(id)lock;
- (void)_removeObjectNoLock:(id)lock;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)minusSet:(id)set;
- (void)removeObject:(id)object;
- (void)removeObjectsFromArray:(id)array;
- (void)unionSet:(id)set;
@end

@implementation MSPCountedOrderedSet

- (NSOrderedSet)contents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableOrderedSet *)self->_set copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (MSPCountedOrderedSet)init
{
  v8.receiver = self;
  v8.super_class = MSPCountedOrderedSet;
  v2 = [(MSPCountedOrderedSet *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA940]);
    counts = v2->_counts;
    v2->_counts = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    set = v2->_set;
    v2->_set = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (NSArray)array
{
  os_unfair_lock_lock(&self->_lock);
  array = [(NSMutableOrderedSet *)self->_set array];
  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableOrderedSet *)self->_set count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)addObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    os_unfair_lock_lock(&self->_lock);
    [(MSPCountedOrderedSet *)self _addObjectNoLock:objectCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_addObjectNoLock:(id)lock
{
  lockCopy = lock;
  if (lockCopy)
  {
    v6 = lockCopy;
    v5 = [(NSCountedSet *)self->_counts countForObject:lockCopy];
    [(NSCountedSet *)self->_counts addObject:v6];
    if (!v5)
    {
      [(NSMutableOrderedSet *)self->_set addObject:v6];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)unionSet:(id)set
{
  v16 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if ([setCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = setCopy;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(MSPCountedOrderedSet *)self _addObjectNoLock:*(*(&v11 + 1) + 8 * v9++), v11];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addObjectsFromArray:(id)array
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:array];
  [(MSPCountedOrderedSet *)self unionSet:v4];
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(MSPCountedOrderedSet *)self _removeObjectNoLock:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeObjectNoLock:(id)lock
{
  lockCopy = lock;
  if (lockCopy)
  {
    v5 = lockCopy;
    [(NSCountedSet *)self->_counts removeObject:lockCopy];
    if (![(NSCountedSet *)self->_counts countForObject:v5])
    {
      [(NSMutableOrderedSet *)self->_set removeObject:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)minusSet:(id)set
{
  v16 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if ([setCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = setCopy;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(MSPCountedOrderedSet *)self _removeObjectNoLock:*(*(&v11 + 1) + 8 * v9++), v11];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectsFromArray:(id)array
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:array];
  [(MSPCountedOrderedSet *)self minusSet:v4];
}

- (BOOL)containsObject:(id)object
{
  if (!object)
  {
    return 0;
  }

  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableOrderedSet *)self->_set containsObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (unint64_t)countForObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSCountedSet *)self->_counts countForObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableOrderedSet *)self->_set countByEnumeratingWithState:state objects:objects count:count];
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

@end