@interface CAMBufferKeyValueObserverObservance
- (BOOL)shouldBeFulfilledByChange:(id)change;
- (CAMBufferKeyValueObserverObservance)initWithKeyPath:(id)path ofObject:(id)object withPredicate:(id)predicate removedOnceEnabled:(BOOL)enabled;
- (NSObject)object;
- (void)setupObservanceForBuffer:(id)buffer;
- (void)teardownObservanceForBuffer:(id)buffer;
@end

@implementation CAMBufferKeyValueObserverObservance

- (CAMBufferKeyValueObserverObservance)initWithKeyPath:(id)path ofObject:(id)object withPredicate:(id)predicate removedOnceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  pathCopy = path;
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = CAMBufferKeyValueObserverObservance;
  v12 = [(CAMBufferObservance *)&v17 initWithPredicate:predicate removedOnceEnabled:enabledCopy];
  if (v12)
  {
    v13 = [pathCopy copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    objc_storeWeak(&v12->_object, objectCopy);
    v15 = v12;
  }

  return v12;
}

- (BOOL)shouldBeFulfilledByChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = changeCopy;
    keyPath = [(CAMBufferKeyValueObserverObservance *)self keyPath];
    object = [(CAMBufferKeyValueObserverObservance *)self object];
    keyPath2 = [v5 keyPath];
    if ([keyPath2 isEqualToString:keyPath])
    {
      object2 = [v5 object];
      v10 = [object2 isEqual:object];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setupObservanceForBuffer:(id)buffer
{
  bufferCopy = buffer;
  object = [(CAMBufferKeyValueObserverObservance *)self object];
  keyPath = [(CAMBufferKeyValueObserverObservance *)self keyPath];
  [object addObserver:bufferCopy forKeyPath:keyPath options:1 context:self];
}

- (void)teardownObservanceForBuffer:(id)buffer
{
  bufferCopy = buffer;
  object = [(CAMBufferKeyValueObserverObservance *)self object];
  keyPath = [(CAMBufferKeyValueObserverObservance *)self keyPath];
  [object removeObserver:bufferCopy forKeyPath:keyPath context:self];
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end