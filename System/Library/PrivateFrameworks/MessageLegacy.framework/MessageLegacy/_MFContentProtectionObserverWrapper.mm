@interface _MFContentProtectionObserverWrapper
- (MFContentProtectionObserver)observer;
- (_MFContentProtectionObserverWrapper)initWithObserver:(id)observer queue:(id)queue;
- (void)dealloc;
@end

@implementation _MFContentProtectionObserverWrapper

- (_MFContentProtectionObserverWrapper)initWithObserver:(id)observer queue:(id)queue
{
  v8.receiver = self;
  v8.super_class = _MFContentProtectionObserverWrapper;
  v6 = [(_MFContentProtectionObserverWrapper *)&v8 init];
  if (v6)
  {
    v6->_observerReference = [MEMORY[0x277D24FC0] weakReferenceWithObject:observer];
    dispatch_retain(queue);
    v6->_queue = queue;
  }

  return v6;
}

- (MFContentProtectionObserver)observer
{
  retainedReference = [(MFWeakReferenceHolder *)self->_observerReference retainedReference];

  return retainedReference;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = _MFContentProtectionObserverWrapper;
  [(_MFContentProtectionObserverWrapper *)&v3 dealloc];
}

@end