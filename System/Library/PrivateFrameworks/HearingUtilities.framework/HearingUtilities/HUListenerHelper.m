@interface HUListenerHelper
+ (id)listenerHelperWithListener:(id)a3 andDelegate:(id)a4;
- (HUListenerHelper)initWithListener:(id)a3 andDelegate:(id)a4;
- (void)dealloc;
@end

@implementation HUListenerHelper

+ (id)listenerHelperWithListener:(id)a3 andDelegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_getAssociatedObject(v5, &HUListenerHelperKey);
  if (!v7)
  {
    v7 = [[HUListenerHelper alloc] initWithListener:v5 andDelegate:v6];
    objc_setAssociatedObject(v5, &HUListenerHelperKey, v7, 1);
  }

  return v7;
}

- (HUListenerHelper)initWithListener:(id)a3 andDelegate:(id)a4
{
  objc_initWeak(&location, a3);
  objc_initWeak(&v11, a4);
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