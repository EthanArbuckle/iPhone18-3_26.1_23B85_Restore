@interface IMEventListenerReference
- (IMEventListener)eventListener;
- (IMEventListenerReference)initWithEventListener:(id)listener;
@end

@implementation IMEventListenerReference

- (IMEventListenerReference)initWithEventListener:(id)listener
{
  listenerCopy = listener;
  v8.receiver = self;
  v8.super_class = IMEventListenerReference;
  v5 = [(IMEventListenerReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_eventListener, listenerCopy);
  }

  return v6;
}

- (IMEventListener)eventListener
{
  WeakRetained = objc_loadWeakRetained(&self->_eventListener);

  return WeakRetained;
}

@end