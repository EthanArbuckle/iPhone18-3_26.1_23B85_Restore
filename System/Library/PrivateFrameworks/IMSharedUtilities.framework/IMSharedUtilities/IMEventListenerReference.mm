@interface IMEventListenerReference
- (IMEventListener)eventListener;
- (IMEventListenerReference)initWithEventListener:(id)a3;
@end

@implementation IMEventListenerReference

- (IMEventListenerReference)initWithEventListener:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMEventListenerReference;
  v5 = [(IMEventListenerReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_eventListener, v4);
  }

  return v6;
}

- (IMEventListener)eventListener
{
  WeakRetained = objc_loadWeakRetained(&self->_eventListener);

  return WeakRetained;
}

@end