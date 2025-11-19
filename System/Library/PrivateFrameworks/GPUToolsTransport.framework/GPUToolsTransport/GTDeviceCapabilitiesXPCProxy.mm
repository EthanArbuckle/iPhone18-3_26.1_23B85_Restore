@interface GTDeviceCapabilitiesXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTDeviceCapabilitiesXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)daemonDeviceCapabilities;
- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)a3;
- (id)gpuToolsVersionQuery;
- (id)inferiorEnvironment:(id)a3;
@end

@implementation GTDeviceCapabilitiesXPCProxy

- (GTDeviceCapabilitiesXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = GTDeviceCapabilitiesXPCProxy;
  v8 = [(GTDeviceCapabilitiesXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = &unk_2860ECC70;
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
    v9.super_class = GTDeviceCapabilitiesXPCProxy;
    v7 = [(GTDeviceCapabilitiesXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (id)daemonDeviceCapabilities
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 initWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v6, "returnValue", v12);
  }

  else
  {
    nsobject_classes = 0;
  }

  return nsobject_classes;
}

- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "heapDescriptors", v5);

  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v9 initWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v8, "returnValue", v14);
  }

  else
  {
    nsobject_classes = 0;
  }

  return nsobject_classes;
}

- (id)gpuToolsVersionQuery
{
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v6 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  v7 = v6;
  if (v6)
  {
    nsdictionary_any = xpc_dictionary_get_nsdictionary_any(v6, "returnValue");
  }

  else
  {
    nsdictionary_any = 0;
  }

  return nsdictionary_any;
}

- (id)inferiorEnvironment:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "launchDictionary", v5);

  v8 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    nsdictionary = xpc_dictionary_get_nsdictionary(v8, "environment", v9, v10);
  }

  else
  {
    nsdictionary = 0;
  }

  return nsdictionary;
}

@end