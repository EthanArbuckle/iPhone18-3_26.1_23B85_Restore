@interface CPThreadSafeMutableSet
- (BOOL)containsObject:(id)a3;
- (CPThreadSafeMutableSet)init;
- (id)description;
- (void)addObject:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation CPThreadSafeMutableSet

- (CPThreadSafeMutableSet)init
{
  v6.receiver = self;
  v6.super_class = CPThreadSafeMutableSet;
  v2 = [(CPThreadSafeMutableSet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    mutableSet = v2->_mutableSet;
    v2->_mutableSet = v3;

    v2->_operationLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CPThreadSafeMutableSet;
  v4 = [(CPThreadSafeMutableSet *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_mutableSet];

  return v5;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationLock);
  [(NSMutableSet *)self->_mutableSet addObject:v4];
  os_unfair_lock_unlock(&self->_operationLock);
}

- (void)unionSet:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationLock);
  [(NSMutableSet *)self->_mutableSet unionSet:v4];
  os_unfair_lock_unlock(&self->_operationLock);
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationLock);
  v5 = [(NSMutableSet *)self->_mutableSet containsObject:v4];
  os_unfair_lock_unlock(&self->_operationLock);

  return v5;
}

@end