@interface IMConnectionMonitor
+ (IMConnectionMonitor)alloc;
- (IMConnectionMonitor)initWithRemoteHost:(id)a3 delegate:(id)a4;
- (IMConnectionMonitorDelegate)delegate;
@end

@implementation IMConnectionMonitor

+ (IMConnectionMonitor)alloc
{
  if (objc_opt_class() == a1)
  {

    return [IMNetworkConnectionMonitor alloc];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___IMConnectionMonitor;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }
}

- (IMConnectionMonitor)initWithRemoteHost:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = IMConnectionMonitor;
  v10 = [(IMConnectionMonitor *)&v16 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    remoteHost = v10->_remoteHost;
    v10->_remoteHost = v11;

    objc_storeWeak(&v10->_delegate, v7);
    objc_msgSend__setup(v10, v13, v14);
  }

  return v10;
}

- (IMConnectionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end