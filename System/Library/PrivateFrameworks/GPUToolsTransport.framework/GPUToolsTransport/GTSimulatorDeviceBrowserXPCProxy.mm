@interface GTSimulatorDeviceBrowserXPCProxy
- (BOOL)isSimulatorDevice:(id)device;
- (BOOL)respondsToSelector:(SEL)selector;
- (GTSimulatorDeviceBrowserXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)deviceProperties:(id)properties error:(id *)error;
@end

@implementation GTSimulatorDeviceBrowserXPCProxy

- (GTSimulatorDeviceBrowserXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v23.receiver = self;
  v23.super_class = GTSimulatorDeviceBrowserXPCProxy;
  v8 = [(GTSimulatorDeviceBrowserXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = &unk_2860ED5D8;
    protocolName = [propertiesCopy protocolName];
    v11 = NSStringFromProtocol(v9);
    v12 = [protocolName isEqualToString:v11];

    if (!v12)
    {

      v21 = 0;
      goto LABEL_6;
    }

    v13 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v15;

    v17 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v19 = newSetWithArrayMinusArray(v17, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v19;
  }

  v21 = v8;
LABEL_6:

  return v21;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(selector);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTSimulatorDeviceBrowserXPCProxy;
    v7 = [(GTSimulatorDeviceBrowserXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (BOOL)isSimulatorDevice:(id)device
{
  deviceCopy = device;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  uTF8String = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  v9 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v10 = v9;
  if (v9)
  {
    v11 = xpc_dictionary_get_BOOL(v9, "returnValue");
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)deviceProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  uTF8String = [propertiesCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  v11 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:error];
  if (v11)
  {
    v12 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v11, "returnValue", v12);
    if (error)
    {
      *error = xpc_dictionary_get_nserror(v11, "error");
    }
  }

  else
  {
    nsobject = 0;
  }

  return nsobject;
}

@end