@interface NFLazy
- (NFLazy)initWithConstructor:(id)constructor;
- (id)value;
- (void)reset;
@end

@implementation NFLazy

- (id)value
{
  lock = [(NFLazy *)self lock];
  [lock lock];

  if (!self->_value)
  {
    constructor = [(NFLazy *)self constructor];
    v5 = constructor[2]();
    value = self->_value;
    self->_value = v5;
  }

  lock2 = [(NFLazy *)self lock];
  [lock2 unlock];

  v8 = self->_value;

  return v8;
}

- (NFLazy)initWithConstructor:(id)constructor
{
  constructorCopy = constructor;
  v11.receiver = self;
  v11.super_class = NFLazy;
  v5 = [(NFLazy *)&v11 init];
  if (v5)
  {
    v6 = [constructorCopy copy];
    constructor = v5->_constructor;
    v5->_constructor = v6;

    v8 = [[NFUnfairLock alloc] initWithOptions:1];
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

- (void)reset
{
  lock = [(NFLazy *)self lock];
  [lock lock];

  value = self->_value;
  self->_value = 0;

  lock2 = [(NFLazy *)self lock];
  [lock2 unlock];
}

@end