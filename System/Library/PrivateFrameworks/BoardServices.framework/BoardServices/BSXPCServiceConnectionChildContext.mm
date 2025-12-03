@interface BSXPCServiceConnectionChildContext
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (void)_initWithParent:(uint64_t)parent identifier:(char)identifier remote:(void *)remote proem:;
@end

@implementation BSXPCServiceConnectionChildContext

- (void)_initWithParent:(uint64_t)parent identifier:(char)identifier remote:(void *)remote proem:
{
  v9 = a2;
  remoteCopy = remote;
  if (self)
  {
    self = [(BSXPCServiceConnectionContext *)self _initWithProem:remoteCopy];
    if (self)
    {
      v11 = [v9 copy];
      v12 = self[2];
      self[2] = v11;

      self[4] = parent;
      *(self + 24) = identifier;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v8 = v5 == objc_opt_class() && (parent = self->_parent, v7 = equalCopy->_parent, BSEqualObjects()) && self->_identifier == equalCopy->_identifier && self->_remote == equalCopy->_remote;
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