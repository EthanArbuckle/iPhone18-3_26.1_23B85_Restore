@interface _MFContentProtectionObserverWrapper
- (MFContentProtectionObserver)observer;
- (_MFContentProtectionObserverWrapper)initWithObserver:(id)a3 queue:(id)a4;
- (void)dealloc;
@end

@implementation _MFContentProtectionObserverWrapper

- (_MFContentProtectionObserverWrapper)initWithObserver:(id)a3 queue:(id)a4
{
  v8.receiver = self;
  v8.super_class = _MFContentProtectionObserverWrapper;
  v6 = [(_MFContentProtectionObserverWrapper *)&v8 init];
  if (v6)
  {
    v6->_observerReference = [MEMORY[0x277D24FC0] weakReferenceWithObject:a3];
    dispatch_retain(a4);
    v6->_queue = a4;
  }

  return v6;
}

- (MFContentProtectionObserver)observer
{
  v2 = [(MFWeakReferenceHolder *)self->_observerReference retainedReference];

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = _MFContentProtectionObserverWrapper;
  [(_MFContentProtectionObserverWrapper *)&v3 dealloc];
}

@end