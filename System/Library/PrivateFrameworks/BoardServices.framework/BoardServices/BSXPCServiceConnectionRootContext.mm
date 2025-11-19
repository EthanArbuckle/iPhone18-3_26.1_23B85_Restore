@interface BSXPCServiceConnectionRootContext
- (BOOL)isEqual:(id)a3;
- (atomic_ullong)uniqueChildContext;
- (id)debugDescription;
- (void)_initWithType:(void *)a3 eDesc:;
- (void)childContextWithRemoteIdentifier:(void *)a1;
@end

@implementation BSXPCServiceConnectionRootContext

- (atomic_ullong)uniqueChildContext
{
  v1 = a1;
  if (a1)
  {
    v2 = atomic_fetch_add_explicit(a1 + 3, 1uLL, memory_order_relaxed) + 1;
    v3 = [BSXPCServiceConnectionChildContext alloc];
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(atomic_ullong *)v1 isClient];
    v6 = 83;
    if (v5)
    {
      v6 = 67;
    }

    v7 = [v4 stringWithFormat:@"[%c:%llx-%llx]", v6, v1[2], v2];
    v1 = [(BSXPCServiceConnectionChildContext *)v3 _initWithParent:v1 identifier:v2 remote:0 proem:v7];
  }

  return v1;
}

- (void)_initWithType:(void *)a3 eDesc:
{
  v5 = a3;
  if (a1)
  {
    v6 = atomic_fetch_add_explicit(&_initWithType_eDesc____uniqueCounter, 1uLL, memory_order_relaxed) + 1;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%c:%llx]", a2, v6];
    a1 = [(BSXPCServiceConnectionContext *)a1 _initWithProem:v7];

    if (a1)
    {
      a1[2] = v6;
      v8 = [v5 copy];
      v9 = a1[4];
      a1[4] = v8;
    }
  }

  return a1;
}

- (void)childContextWithRemoteIdentifier:(void *)a1
{
  if (a1)
  {
    v4 = [BSXPCServiceConnectionChildContext alloc];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [a1 isClient];
    v7 = 83;
    if (v6)
    {
      v7 = 67;
    }

    v8 = [v5 stringWithFormat:@"[%c:%llx-%llxr]", v7, a1[2], a2];
    v9 = [(BSXPCServiceConnectionChildContext *)v4 _initWithParent:a1 identifier:a2 remote:1 proem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_unique == v4->_unique;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BSXPCServiceConnectionContext *)self isClient];
  v6 = @"server";
  if (v5)
  {
    v6 = @"client";
  }

  unique = self->_unique;
  return [v3 stringWithFormat:@"<%@:%p %@ %llx %@>", v4, self, v6, unique, self->_eDesc];
}

@end