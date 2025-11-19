@interface TabSnapshotCacheContext
- (id)description;
@end

@implementation TabSnapshotCacheContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_updating)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  identifiersToCache = self->_identifiersToCache;
  capacity = self->_capacity;
  v9 = v6;
  v10 = [v3 stringWithFormat:@"<%@: %p updating = %@; capacity = %zu; total = %zu>", v5, self, v9, capacity, -[NSOrderedSet count](identifiersToCache, "count")];;

  return v10;
}

@end