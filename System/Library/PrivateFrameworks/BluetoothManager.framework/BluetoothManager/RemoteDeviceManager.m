@interface RemoteDeviceManager
- (RemoteDeviceManager)init;
- (void)dealloc;
- (void)disconnectDevice:(id)a3;
- (void)sendMessage:(const char *)a3 args:(id)a4;
@end

@implementation RemoteDeviceManager

- (RemoteDeviceManager)init
{
  v5.receiver = self;
  v5.super_class = RemoteDeviceManager;
  v2 = [(RemoteDeviceManager *)&v5 init];
  if (v2)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.BTServer.le", 0, 0);
    v2->_connection = mach_service;
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_1);
    xpc_connection_resume(v2->_connection);
  }

  return v2;
}

- (void)dealloc
{
  xpc_release(self->_connection);
  v3.receiver = self;
  v3.super_class = RemoteDeviceManager;
  [(RemoteDeviceManager *)&v3 dealloc];
}

- (void)disconnectDevice:(id)a3
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "kDeviceAddress", [objc_msgSend(a3 "address")]);
  [(RemoteDeviceManager *)self sendMessage:"DisconnectClassicDevice" args:v5];

  xpc_release(v5);
}

- (void)sendMessage:(const char *)a3 args:(id)a4
{
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "kMsgId", a3);
  if (a4)
  {
    xpc_dictionary_set_value(v7, "kMsgArgs", a4);
  }

  xpc_connection_send_message(self->_connection, v7);

  xpc_release(v7);
}

@end