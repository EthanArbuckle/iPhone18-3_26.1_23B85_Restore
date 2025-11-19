@interface NTKSafeHashTable
+ (NTKSafeHashTable)hashTableWithOptions:(unint64_t)a3;
+ (id)weakObjectsHashTable;
- (NSArray)allObjects;
- (id)_initWithHashTable:(id)a3;
- (id)_initWithOptions:(unint64_t)a3;
- (id)_initWithWeakObjects;
- (id)_lock_allObjects;
- (id)_lock_copyWithZone:(_NSZone *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_lock_addObject:(id)a3;
- (void)_lock_removeAllObjects;
- (void)_lock_removeObject:(id)a3;
- (void)addObject:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
@end

@implementation NTKSafeHashTable

- (id)_initWithHashTable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKSafeHashTable;
  v6 = [(NTKSafeHashTable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_hashTable, a3);
  }

  return v7;
}

- (id)_initWithOptions:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = NTKSafeHashTable;
  v4 = [(NTKSafeHashTable *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:a3];
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
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    hashTable = v3->_hashTable;
    v3->_hashTable = v4;
  }

  return v3;
}

+ (NTKSafeHashTable)hashTableWithOptions:(unint64_t)a3
{
  v3 = [[a1 alloc] _initWithOptions:a3];

  return v3;
}

+ (id)weakObjectsHashTable
{
  v2 = [[a1 alloc] _initWithWeakObjects];

  return v2;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NTKSafeHashTable *)self _lock_addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_addObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSHashTable *)self->_hashTable addObject:v4];
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NTKSafeHashTable *)self _lock_removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSHashTable *)self->_hashTable removeObject:v4];
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
  v3 = [(NTKSafeHashTable *)self _lock_allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_allObjects
{
  os_unfair_lock_assert_owner(&self->_lock);
  hashTable = self->_hashTable;

  return [(NSHashTable *)hashTable allObjects];
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NTKSafeHashTable *)self _lock_copyWithZone:a3];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)_lock_copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSHashTable *)self->_hashTable copyWithZone:a3];
  v7 = [v5 _initWithHashTable:v6];

  return v7;
}

@end