@interface _EFContentProtectionObserverWrapper
- (EFContentProtectionObserver)observer;
- (_EFContentProtectionObserverWrapper)initWithObserver:(id)observer queue:(id)queue;
@end

@implementation _EFContentProtectionObserverWrapper

- (EFContentProtectionObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (_EFContentProtectionObserverWrapper)initWithObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = _EFContentProtectionObserverWrapper;
  v8 = [(_EFContentProtectionObserverWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

@end