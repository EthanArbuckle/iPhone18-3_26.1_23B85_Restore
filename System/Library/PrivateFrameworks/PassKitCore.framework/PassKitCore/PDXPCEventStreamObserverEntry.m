@interface PDXPCEventStreamObserverEntry
- (PDXPCEventStreamObserver)observer;
@end

@implementation PDXPCEventStreamObserverEntry

- (PDXPCEventStreamObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end