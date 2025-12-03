@interface BSXPCServiceConnectionRootContext
- (BOOL)isEqual:(id)equal;
- (atomic_ullong)uniqueChildContext;
- (id)debugDescription;
- (void)_initWithType:(void *)type eDesc:;
- (void)childContextWithRemoteIdentifier:(void *)identifier;
@end

@implementation BSXPCServiceConnectionRootContext

- (atomic_ullong)uniqueChildContext
{
  selfCopy = self;
  if (self)
  {
    v2 = atomic_fetch_add_explicit(self + 3, 1uLL, memory_order_relaxed) + 1;
    v3 = [BSXPCServiceConnectionChildContext alloc];
    v4 = MEMORY[0x1E696AEC0];
    isClient = [(atomic_ullong *)selfCopy isClient];
    v6 = 83;
    if (isClient)
    {
      v6 = 67;
    }

    v7 = [v4 stringWithFormat:@"[%c:%llx-%llx]", v6, selfCopy[2], v2];
    selfCopy = [(BSXPCServiceConnectionChildContext *)v3 _initWithParent:selfCopy identifier:v2 remote:0 proem:v7];
  }

  return selfCopy;
}

- (void)_initWithType:(void *)type eDesc:
{
  typeCopy = type;
  if (self)
  {
    v6 = atomic_fetch_add_explicit(&_initWithType_eDesc____uniqueCounter, 1uLL, memory_order_relaxed) + 1;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%c:%llx]", a2, v6];
    self = [(BSXPCServiceConnectionContext *)self _initWithProem:v7];

    if (self)
    {
      self[2] = v6;
      v8 = [typeCopy copy];
      v9 = self[4];
      self[4] = v8;
    }
  }

  return self;
}

- (void)childContextWithRemoteIdentifier:(void *)identifier
{
  if (identifier)
  {
    v4 = [BSXPCServiceConnectionChildContext alloc];
    v5 = MEMORY[0x1E696AEC0];
    isClient = [identifier isClient];
    v7 = 83;
    if (isClient)
    {
      v7 = 67;
    }

    v8 = [v5 stringWithFormat:@"[%c:%llx-%llxr]", v7, identifier[2], a2];
    v9 = [(BSXPCServiceConnectionChildContext *)v4 _initWithParent:identifier identifier:a2 remote:1 proem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_unique == equalCopy->_unique;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  isClient = [(BSXPCServiceConnectionContext *)self isClient];
  v6 = @"server";
  if (isClient)
  {
    v6 = @"client";
  }

  unique = self->_unique;
  return [v3 stringWithFormat:@"<%@:%p %@ %llx %@>", v4, self, v6, unique, self->_eDesc];
}

@end