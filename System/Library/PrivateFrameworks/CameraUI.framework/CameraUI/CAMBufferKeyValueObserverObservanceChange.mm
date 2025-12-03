@interface CAMBufferKeyValueObserverObservanceChange
- (CAMBufferKeyValueObserverObservanceChange)initWithKeyPath:(id)path ofObject:(id)object withChange:(id)change;
- (NSObject)object;
@end

@implementation CAMBufferKeyValueObserverObservanceChange

- (CAMBufferKeyValueObserverObservanceChange)initWithKeyPath:(id)path ofObject:(id)object withChange:(id)change
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v18.receiver = self;
  v18.super_class = CAMBufferKeyValueObserverObservanceChange;
  v11 = [(CAMBufferKeyValueObserverObservanceChange *)&v18 init];
  if (v11)
  {
    v12 = [pathCopy copy];
    keyPath = v11->_keyPath;
    v11->_keyPath = v12;

    objc_storeWeak(&v11->_object, objectCopy);
    v14 = [changeCopy copy];
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