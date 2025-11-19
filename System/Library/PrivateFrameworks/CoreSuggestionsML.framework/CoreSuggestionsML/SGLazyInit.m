@interface SGLazyInit
- (SGLazyInit)initWithInitializer:(id)a3 destructor:(id)a4;
- (id)getObject;
- (void)dealloc;
- (void)destroyCachedObject;
@end

@implementation SGLazyInit

- (void)dealloc
{
  [(SGLazyInit *)self destroyCachedObject];
  v3.receiver = self;
  v3.super_class = SGLazyInit;
  [(SGLazyInit *)&v3 dealloc];
}

- (void)destroyCachedObject
{
  destructor = self->_destructor;
  if (destructor && self->_cachedObject)
  {
    destructor[2]();
  }

  cachedObject = self->_cachedObject;
  self->_cachedObject = 0;
}

- (id)getObject
{
  cachedObject = self->_cachedObject;
  if (!cachedObject)
  {
    v4 = (*(self->_initializer + 2))();
    v5 = self->_cachedObject;
    self->_cachedObject = v4;

    cachedObject = self->_cachedObject;
  }

  return cachedObject;
}

- (SGLazyInit)initWithInitializer:(id)a3 destructor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15.receiver = self;
    v15.super_class = SGLazyInit;
    v8 = [(SGLazyInit *)&v15 init];
    if (v8)
    {
      v9 = MEMORY[0x24C1B0A20](v6);
      initializer = v8->_initializer;
      v8->_initializer = v9;

      v11 = MEMORY[0x24C1B0A20](v7);
      destructor = v8->_destructor;
      v8->_destructor = v11;
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end