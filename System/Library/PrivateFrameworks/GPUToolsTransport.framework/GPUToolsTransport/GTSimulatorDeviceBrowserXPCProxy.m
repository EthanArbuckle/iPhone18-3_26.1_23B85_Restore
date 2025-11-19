@interface GTSimulatorDeviceBrowserXPCProxy
- (BOOL)isSimulatorDevice:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GTSimulatorDeviceBrowserXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)deviceProperties:(id)a3 error:(id *)a4;
@end

@implementation GTSimulatorDeviceBrowserXPCProxy

- (GTSimulatorDeviceBrowserXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = GTSimulatorDeviceBrowserXPCProxy;
  v8 = [(GTSimulatorDeviceBrowserXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = &unk_2860ED5D8;
    v10 = [v7 protocolName];
    v11 = NSStringFromProtocol(v9);
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {

      v21 = 0;
      goto LABEL_6;
    }

    v13 = [GTServiceConnection alloc];
    v14 = [v7 deviceUDID];
    v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", v6, v14, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v15;

    v17 = [GTServiceProperties protocolMethods:v9];
    v18 = [v7 protocolMethods];
    v19 = newSetWithArrayMinusArray(v17, v18);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v19;
  }

  v21 = v8;
LABEL_6:

  return v21;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(a3);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTSimulatorDeviceBrowserXPCProxy;
    v7 = [(GTSimulatorDeviceBrowserXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (BOOL)isSimulatorDevice:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [v5 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v8);
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

- (id)deviceProperties:(id)a3 error:(id *)a4
{
  v7 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v10 = [v7 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v10);
  v11 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  if (v11)
  {
    v12 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v11, "returnValue", v12);
    if (a4)
    {
      *a4 = xpc_dictionary_get_nserror(v11, "error");
    }
  }

  else
  {
    nsobject = 0;
  }

  return nsobject;
}

@end