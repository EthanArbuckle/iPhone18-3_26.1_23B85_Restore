@interface HUListenerHelper
+ (id)listenerHelperWithListener:(id)listener andDelegate:(id)delegate;
- (HUListenerHelper)initWithListener:(id)listener andDelegate:(id)delegate;
- (void)dealloc;
@end

@implementation HUListenerHelper

+ (id)listenerHelperWithListener:(id)listener andDelegate:(id)delegate
{
  listenerCopy = listener;
  delegateCopy = delegate;
  v7 = objc_getAssociatedObject(listenerCopy, &HUListenerHelperKey);
  if (!v7)
  {
    v7 = [[HUListenerHelper alloc] initWithListener:listenerCopy andDelegate:delegateCopy];
    objc_setAssociatedObject(listenerCopy, &HUListenerHelperKey, v7, 1);
  }

  return v7;
}

- (HUListenerHelper)initWithListener:(id)listener andDelegate:(id)delegate
{
  objc_initWeak(&location, listener);
  objc_initWeak(&v11, delegate);
  v10.receiver = self;
  v10.super_class = HUListenerHelper;
  v6 = [(HUListenerHelper *)&v10 init];
  if (v6)
  {
    v7 = objc_loadWeakRetained(&location);
    v6->_listenerAddress = v7;

    v8 = objc_loadWeakRetained(&v11);
    objc_storeWeak(&v6->_delegate, v8);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeListener:self->_listenerAddress];

  v4.receiver = self;
  v4.super_class = HUListenerHelper;
  [(HUListenerHelper *)&v4 dealloc];
}

@end