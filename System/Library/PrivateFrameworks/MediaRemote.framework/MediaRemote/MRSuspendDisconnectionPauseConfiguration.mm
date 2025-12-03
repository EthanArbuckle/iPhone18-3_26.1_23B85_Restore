@interface MRSuspendDisconnectionPauseConfiguration
- (MRSuspendDisconnectionPauseConfiguration)initWithXPCMessage:(id)message;
- (id)XPCMessage;
@end

@implementation MRSuspendDisconnectionPauseConfiguration

- (MRSuspendDisconnectionPauseConfiguration)initWithXPCMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = MRSuspendDisconnectionPauseConfiguration;
  v5 = [(MRSuspendDisconnectionPauseConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:xpc_dictionary_get_string(messageCopy encoding:{MRSuspendDisconnectionPauseConfigurationKeyDeviceAddress), 4}];
    deviceAddress = v5->_deviceAddress;
    v5->_deviceAddress = v6;
  }

  return v5;
}

- (id)XPCMessage
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "MRXPC_MESSAGE_ID_KEY", 0x100000000000019uLL);
  v4 = MRSuspendDisconnectionPauseConfigurationKeyDeviceAddress;
  deviceAddress = [(MRSuspendDisconnectionPauseConfiguration *)self deviceAddress];
  xpc_dictionary_set_string(v3, v4, [deviceAddress cStringUsingEncoding:4]);

  return v3;
}

@end