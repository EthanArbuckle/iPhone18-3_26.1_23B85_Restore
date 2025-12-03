@interface _CNKeyValueObserverHandler
- (_CNKeyValueObserverHandler)initWithObject:(id)object keyPath:(id)path observer:(id)observer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _CNKeyValueObserverHandler

- (_CNKeyValueObserverHandler)initWithObject:(id)object keyPath:(id)path observer:(id)observer
{
  objectCopy = object;
  pathCopy = path;
  observerCopy = observer;
  v18.receiver = self;
  v18.super_class = _CNKeyValueObserverHandler;
  v12 = [(_CNKeyValueObserverHandler *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_object, object);
    v14 = [pathCopy copy];
    keyPath = v13->_keyPath;
    v13->_keyPath = v14;

    objc_storeStrong(&v13->_observer, observer);
    v16 = v13;
  }

  return v13;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (sHandlerContext == context)
  {
    observer = self->_observer;

    [(CNObserver *)observer observerDidReceiveResult:change, object];
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = _CNKeyValueObserverHandler;
    [(_CNKeyValueObserverHandler *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end