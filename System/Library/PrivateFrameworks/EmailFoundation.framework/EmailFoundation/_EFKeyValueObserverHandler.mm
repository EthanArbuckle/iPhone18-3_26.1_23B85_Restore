@interface _EFKeyValueObserverHandler
- (_EFKeyValueObserverHandler)initWithObject:(id)a3 keyPath:(id)a4 usingBlock:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (_EFKeyValueObserverHandler)initWithObject:(id)a3 keyPath:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _EFKeyValueObserverHandler;
  v11 = [(_EFKeyValueObserverHandler *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_object = v8;
    v13 = [v9 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v15 = [v10 copy];
    block = v12->_block;
    v12->_block = v15;

    v17 = v12;
  }

  return v12;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (sHandlerContext == a6)
  {
    (*(self->_block + 2))();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _EFKeyValueObserverHandler;
    [(_EFKeyValueObserverHandler *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end