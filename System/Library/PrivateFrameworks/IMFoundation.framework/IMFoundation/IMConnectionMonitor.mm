@interface IMConnectionMonitor
+ (IMConnectionMonitor)alloc;
- (IMConnectionMonitor)initWithRemoteHost:(id)host delegate:(id)delegate;
- (IMConnectionMonitorDelegate)delegate;
@end

@implementation IMConnectionMonitor

+ (IMConnectionMonitor)alloc
{
  if (objc_opt_class() == self)
  {

    return [IMNetworkConnectionMonitor alloc];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___IMConnectionMonitor;
    return objc_msgSendSuper2(&v4, sel_alloc);
  }
}

- (IMConnectionMonitor)initWithRemoteHost:(id)host delegate:(id)delegate
{
  hostCopy = host;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = IMConnectionMonitor;
  v10 = [(IMConnectionMonitor *)&v16 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(hostCopy, v8, v9);
    remoteHost = v10->_remoteHost;
    v10->_remoteHost = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
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