@interface CPLEngineComponentEnumerator
- (CPLEngineComponentEnumerator)initWithComponents:(id)a3 handler:(id)a4;
- (void)handleNextComponent;
@end

@implementation CPLEngineComponentEnumerator

- (void)handleNextComponent
{
  if (self->_handler)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(NSEnumerator *)self->_enumerator nextObject];
    (*(self->_handler + 2))();
    if (!v4)
    {
      handler = self->_handler;
      self->_handler = 0;
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (CPLEngineComponentEnumerator)initWithComponents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CPLEngineComponentEnumerator;
  v8 = [(CPLEngineComponentEnumerator *)&v14 init];
  if (v8)
  {
    v9 = [v6 objectEnumerator];
    enumerator = v8->_enumerator;
    v8->_enumerator = v9;

    v11 = [v7 copy];
    handler = v8->_handler;
    v8->_handler = v11;
  }

  return v8;
}

@end