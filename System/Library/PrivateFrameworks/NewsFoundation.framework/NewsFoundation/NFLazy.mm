@interface NFLazy
- (NFLazy)initWithConstructor:(id)a3;
- (id)value;
- (void)reset;
@end

@implementation NFLazy

- (id)value
{
  v3 = [(NFLazy *)self lock];
  [v3 lock];

  if (!self->_value)
  {
    v4 = [(NFLazy *)self constructor];
    v5 = v4[2]();
    value = self->_value;
    self->_value = v5;
  }

  v7 = [(NFLazy *)self lock];
  [v7 unlock];

  v8 = self->_value;

  return v8;
}

- (NFLazy)initWithConstructor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NFLazy;
  v5 = [(NFLazy *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v3 = [(NFLazy *)self lock];
  [v3 lock];

  value = self->_value;
  self->_value = 0;

  v5 = [(NFLazy *)self lock];
  [v5 unlock];
}

@end