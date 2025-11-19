@interface BSXPCServiceConnectionChildContext
- (BOOL)isEqual:(id)a3;
- (id)debugDescription;
- (void)_initWithParent:(uint64_t)a3 identifier:(char)a4 remote:(void *)a5 proem:;
@end

@implementation BSXPCServiceConnectionChildContext

- (void)_initWithParent:(uint64_t)a3 identifier:(char)a4 remote:(void *)a5 proem:
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    a1 = [(BSXPCServiceConnectionContext *)a1 _initWithProem:v10];
    if (a1)
    {
      v11 = [v9 copy];
      v12 = a1[2];
      a1[2] = v11;

      a1[4] = a3;
      *(a1 + 24) = a4;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v8 = v5 == objc_opt_class() && (parent = self->_parent, v7 = v4->_parent, BSEqualObjects()) && self->_identifier == v4->_identifier && self->_remote == v4->_remote;
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_remote)
  {
    v5 = @"remote ";
  }

  else
  {
    v5 = &stru_1F0DFE210;
  }

  identifier = self->_identifier;
  v7 = [(BSXPCServiceConnectionRootContext *)self->_parent debugDescription];
  v8 = [v3 stringWithFormat:@"<%@:%p %@%llx>on%@", v4, self, v5, identifier, v7];

  return v8;
}

@end