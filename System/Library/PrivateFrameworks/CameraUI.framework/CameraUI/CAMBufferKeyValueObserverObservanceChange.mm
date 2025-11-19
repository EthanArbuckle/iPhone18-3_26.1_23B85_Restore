@interface CAMBufferKeyValueObserverObservanceChange
- (CAMBufferKeyValueObserverObservanceChange)initWithKeyPath:(id)a3 ofObject:(id)a4 withChange:(id)a5;
- (NSObject)object;
@end

@implementation CAMBufferKeyValueObserverObservanceChange

- (CAMBufferKeyValueObserverObservanceChange)initWithKeyPath:(id)a3 ofObject:(id)a4 withChange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CAMBufferKeyValueObserverObservanceChange;
  v11 = [(CAMBufferKeyValueObserverObservanceChange *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    keyPath = v11->_keyPath;
    v11->_keyPath = v12;

    objc_storeWeak(&v11->_object, v9);
    v14 = [v10 copy];
    change = v11->_change;
    v11->_change = v14;

    v16 = v11;
  }

  return v11;
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end