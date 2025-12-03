@interface _EFKeyValueObserverHandler
- (_EFKeyValueObserverHandler)initWithObject:(id)object keyPath:(id)path usingBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _EFKeyValueObserverHandler

- (void)cancel
{
  if (self->_observing)
  {
    [self->_object removeObserver:self forKeyPath:self->_keyPath context:sHandlerContext];
    self->_observing = 0;
  }
}

- (void)dealloc
{
  [(_EFKeyValueObserverHandler *)self cancel];
  v3.receiver = self;
  v3.super_class = _EFKeyValueObserverHandler;
  [(_EFKeyValueObserverHandler *)&v3 dealloc];
}

- (_EFKeyValueObserverHandler)initWithObject:(id)object keyPath:(id)path usingBlock:(id)block
{
  objectCopy = object;
  pathCopy = path;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = _EFKeyValueObserverHandler;
  v11 = [(_EFKeyValueObserverHandler *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_object = objectCopy;
    v13 = [pathCopy copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v15 = [blockCopy copy];
    block = v12->_block;
    v12->_block = v15;

    v17 = v12;
  }

  return v12;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (sHandlerContext == context)
  {
    (*(self->_block + 2))();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _EFKeyValueObserverHandler;
    [(_EFKeyValueObserverHandler *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

@end