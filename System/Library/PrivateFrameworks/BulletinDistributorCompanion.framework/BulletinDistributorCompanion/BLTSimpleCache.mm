@interface BLTSimpleCache
- (BLTSimpleCache)initWithCapacity:(unint64_t)a3;
- (id)description;
- (id)objects;
- (void)cacheObject:(id)a3;
@end

@implementation BLTSimpleCache

- (BLTSimpleCache)initWithCapacity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = BLTSimpleCache;
  v4 = [(BLTSimpleCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_capacity = a3;
    v6 = [MEMORY[0x277CBEB18] array];
    objects = v5->_objects;
    v5->_objects = v6;
  }

  return v5;
}

- (void)cacheObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_objects removeObject:v4];
  [(NSMutableArray *)self->_objects insertObject:v4 atIndex:0];

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
  v4 = [(BLTSimpleCache *)self objects];
  v5 = [v3 appendObject:v4 withName:@"objects" skipIfNil:0];

  v6 = [v3 build];

  return v6;
}

@end