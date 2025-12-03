@interface GTRemoteDeviceBrowserReplyStream
- (GTRemoteDeviceBrowserReplyStream)initWithObserver:(id)observer;
- (void)notifyDeviceListChanged_:(id)changed_ replyConnection:(id)connection;
@end

@implementation GTRemoteDeviceBrowserReplyStream

- (GTRemoteDeviceBrowserReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&unk_2860F4C68];
  v9.receiver = self;
  v9.super_class = GTRemoteDeviceBrowserReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyDeviceListChanged_:(id)changed_ replyConnection:(id)connection
{
  changed_Copy = changed_;
  v6 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(changed_Copy, "deviceList", v6);

  [(GTRemoteDeviceBrowserObserver *)self->_observer notifyDeviceListChanged:nsarray];
}

@end