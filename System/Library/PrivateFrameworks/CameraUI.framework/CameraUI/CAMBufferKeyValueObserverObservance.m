@interface CAMBufferKeyValueObserverObservance
- (BOOL)shouldBeFulfilledByChange:(id)a3;
- (CAMBufferKeyValueObserverObservance)initWithKeyPath:(id)a3 ofObject:(id)a4 withPredicate:(id)a5 removedOnceEnabled:(BOOL)a6;
- (NSObject)object;
- (void)setupObservanceForBuffer:(id)a3;
- (void)teardownObservanceForBuffer:(id)a3;
@end

@implementation CAMBufferKeyValueObserverObservance

- (CAMBufferKeyValueObserverObservance)initWithKeyPath:(id)a3 ofObject:(id)a4 withPredicate:(id)a5 removedOnceEnabled:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = CAMBufferKeyValueObserverObservance;
  v12 = [(CAMBufferObservance *)&v17 initWithPredicate:a5 removedOnceEnabled:v6];
  if (v12)
  {
    v13 = [v10 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    objc_storeWeak(&v12->_object, v11);
    v15 = v12;
  }

  return v12;
}

- (BOOL)shouldBeFulfilledByChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CAMBufferKeyValueObserverObservance *)self keyPath];
    v7 = [(CAMBufferKeyValueObserverObservance *)self object];
    v8 = [v5 keyPath];
    if ([v8 isEqualToString:v6])
    {
      v9 = [v5 object];
      v10 = [v9 isEqual:v7];
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

- (void)setupObservanceForBuffer:(id)a3
{
  v4 = a3;
  v6 = [(CAMBufferKeyValueObserverObservance *)self object];
  v5 = [(CAMBufferKeyValueObserverObservance *)self keyPath];
  [v6 addObserver:v4 forKeyPath:v5 options:1 context:self];
}

- (void)teardownObservanceForBuffer:(id)a3
{
  v4 = a3;
  v6 = [(CAMBufferKeyValueObserverObservance *)self object];
  v5 = [(CAMBufferKeyValueObserverObservance *)self keyPath];
  [v6 removeObserver:v4 forKeyPath:v5 context:self];
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end