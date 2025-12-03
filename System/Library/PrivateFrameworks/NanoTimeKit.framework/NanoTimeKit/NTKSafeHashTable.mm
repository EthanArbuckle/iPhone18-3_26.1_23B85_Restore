@interface NTKSafeHashTable
+ (NTKSafeHashTable)hashTableWithOptions:(unint64_t)options;
+ (id)weakObjectsHashTable;
- (NSArray)allObjects;
- (id)_initWithHashTable:(id)table;
- (id)_initWithOptions:(unint64_t)options;
- (id)_initWithWeakObjects;
- (id)_lock_allObjects;
- (id)_lock_copyWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_lock_addObject:(id)object;
- (void)_lock_removeAllObjects;
- (void)_lock_removeObject:(id)object;
- (void)addObject:(id)object;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
@end

@implementation NTKSafeHashTable

- (id)_initWithHashTable:(id)table
{
  tableCopy = table;
  v9.receiver = self;
  v9.super_class = NTKSafeHashTable;
  v6 = [(NTKSafeHashTable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_hashTable, table);
  }

  return v7;
}

- (id)_initWithOptions:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = NTKSafeHashTable;
  v4 = [(NTKSafeHashTable *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:options];
    hashTable = v5->_hashTable;
    v5->_hashTable = v6;
  }

  return v5;
}

- (id)_initWithWeakObjects
{
  v7.receiver = self;
  v7.super_class = NTKSafeHashTable;
  v2 = [(NTKSafeHashTable *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    hashTable = v3->_hashTable;
    v3->_hashTable = weakObjectsHashTable;
  }

  return v3;
}

+ (NTKSafeHashTable)hashTableWithOptions:(unint64_t)options
{
  v3 = [[self alloc] _initWithOptions:options];

  return v3;
}

+ (id)weakObjectsHashTable
{
  _initWithWeakObjects = [[self alloc] _initWithWeakObjects];

  return _initWithWeakObjects;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NTKSafeHashTable *)self _lock_addObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSHashTable *)self->_hashTable addObject:objectCopy];
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NTKSafeHashTable *)self _lock_removeObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSHashTable *)self->_hashTable removeObject:objectCopy];
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(NTKSafeHashTable *)self _lock_removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeAllObjects
{
  os_unfair_lock_assert_owner(&self->_lock);
  hashTable = self->_hashTable;

  [(NSHashTable *)hashTable removeAllObjects];
}

- (NSArray)allObjects
{
  os_unfair_lock_lock(&self->_lock);
  _lock_allObjects = [(NTKSafeHashTable *)self _lock_allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_allObjects;
}

- (id)_lock_allObjects
{
  os_unfair_lock_assert_owner(&self->_lock);
  hashTable = self->_hashTable;

  return [(NSHashTable *)hashTable allObjects];
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKSafeHashTable *)self _lock_copyWithZone:zone];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)_lock_copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSHashTable *)self->_hashTable copyWithZone:zone];
  v7 = [v5 _initWithHashTable:v6];

  return v7;
}

@end