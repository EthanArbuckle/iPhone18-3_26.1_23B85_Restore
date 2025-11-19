@interface _CNKeyValueObserverHandler
- (_CNKeyValueObserverHandler)initWithObject:(id)a3 keyPath:(id)a4 observer:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _CNKeyValueObserverHandler

- (_CNKeyValueObserverHandler)initWithObject:(id)a3 keyPath:(id)a4 observer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _CNKeyValueObserverHandler;
  v12 = [(_CNKeyValueObserverHandler *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_object, a3);
    v14 = [v10 copy];
    keyPath = v13->_keyPath;
    v13->_keyPath = v14;

    objc_storeStrong(&v13->_observer, a5);
    v16 = v13;
  }

  return v13;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (sHandlerContext == a6)
  {
    observer = self->_observer;

    [(CNObserver *)observer observerDidReceiveResult:a5, a4];
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = _CNKeyValueObserverHandler;
    [(_CNKeyValueObserverHandler *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end