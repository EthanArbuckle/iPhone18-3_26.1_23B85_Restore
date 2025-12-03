@interface CPLEngineComponentEnumerator
- (CPLEngineComponentEnumerator)initWithComponents:(id)components handler:(id)handler;
- (void)handleNextComponent;
@end

@implementation CPLEngineComponentEnumerator

- (void)handleNextComponent
{
  if (self->_handler)
  {
    v3 = objc_autoreleasePoolPush();
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];
    (*(self->_handler + 2))();
    if (!nextObject)
    {
      handler = self->_handler;
      self->_handler = 0;
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (CPLEngineComponentEnumerator)initWithComponents:(id)components handler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CPLEngineComponentEnumerator;
  v8 = [(CPLEngineComponentEnumerator *)&v14 init];
  if (v8)
  {
    objectEnumerator = [componentsCopy objectEnumerator];
    enumerator = v8->_enumerator;
    v8->_enumerator = objectEnumerator;

    v11 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v11;
  }

  return v8;
}

@end