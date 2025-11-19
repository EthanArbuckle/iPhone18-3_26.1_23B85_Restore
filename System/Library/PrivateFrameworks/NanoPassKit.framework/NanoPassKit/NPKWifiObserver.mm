@interface NPKWifiObserver
- (NPKWiFiObserverDelegate)delegate;
- (NPKWifiObserver)initWithCallbackQueue:(id)a3;
- (void)dealloc;
@end

@implementation NPKWifiObserver

- (NPKWifiObserver)initWithCallbackQueue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NPKWifiObserver;
  v5 = [(NPKWifiObserver *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = dispatch_get_global_queue(0, 0);
    }

    callbackQueue = v5->_callbackQueue;
    v5->_callbackQueue = v6;

    [(NPKWifiObserver *)v5 _setupInterface];
    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NPKWifiObserver;
  [(NPKWifiObserver *)&v2 dealloc];
}

- (NPKWiFiObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end