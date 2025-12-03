@interface BLTSimpleCache
- (BLTSimpleCache)initWithCapacity:(unint64_t)capacity;
- (id)description;
- (id)objects;
- (void)cacheObject:(id)object;
@end

@implementation BLTSimpleCache

- (BLTSimpleCache)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = BLTSimpleCache;
  v4 = [(BLTSimpleCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_capacity = capacity;
    array = [MEMORY[0x277CBEB18] array];
    objects = v5->_objects;
    v5->_objects = array;
  }

  return v5;
}

- (void)cacheObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_objects removeObject:objectCopy];
  [(NSMutableArray *)self->_objects insertObject:objectCopy atIndex:0];

  if ([(NSMutableArray *)self->_objects count]> self->_capacity)
  {
    [(NSMutableArray *)self->_objects removeObjectAtIndex:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)objects
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_objects copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  objects = [(BLTSimpleCache *)self objects];
  v5 = [v3 appendObject:objects withName:@"objects" skipIfNil:0];

  build = [v3 build];

  return build;
}

@end