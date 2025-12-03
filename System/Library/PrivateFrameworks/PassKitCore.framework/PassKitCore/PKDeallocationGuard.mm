@interface PKDeallocationGuard
- (BOOL)invalidate;
- (PKDeallocationGuard)initWithBlock:(id)block;
- (void)dealloc;
@end

@implementation PKDeallocationGuard

- (BOOL)invalidate
{
  if (self)
  {
    selfCopy = self;
    p_invalidated = &self->_invalidated;
    LOBYTE(self) = 1;
    if ((atomic_exchange(&p_invalidated->_Value, 1u) & 1) == 0)
    {
      block = selfCopy->_block;
      selfCopy->_block = 0;

      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (void)dealloc
{
  if ((atomic_exchange(&self->_invalidated._Value, 1u) & 1) == 0)
  {
    (*(self->_block + 2))();
  }

  v3.receiver = self;
  v3.super_class = PKDeallocationGuard;
  [(PKDeallocationGuard *)&v3 dealloc];
}

- (PKDeallocationGuard)initWithBlock:(id)block
{
  result = block;
  if (result)
  {
    v5 = result;
    v9.receiver = self;
    v9.super_class = PKDeallocationGuard;
    v6 = [(PKDeallocationGuard *)&v9 init];
    if (v6)
    {
      v7 = _Block_copy(v5);
      block = v6->_block;
      v6->_block = v7;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end