@interface GTDisplayServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTDisplayServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)show:(id)show completionHandler:(id)handler;
- (id)update:(id)update completionHandler:(id)handler;
- (void)terminateProcess;
@end

@implementation GTDisplayServiceXPCProxy

- (GTDisplayServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v19.receiver = self;
  v19.super_class = GTDisplayServiceXPCProxy;
  v8 = [(GTDisplayServiceXPCProxy *)&v19 init];
  if (v8)
  {
    if (!propertiesCopy)
    {
      v17 = 0;
      goto LABEL_6;
    }

    v9 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v11 = -[GTServiceConnection initWithConnection:device:port:](v9, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v11;

    v13 = [GTServiceProperties protocolMethods:&unk_2860ECB68];
    protocolMethods = [propertiesCopy protocolMethods];
    v15 = newSetWithArrayMinusArray(v13, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v15;
  }

  v17 = v8;
LABEL_6:

  return v17;
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
    v9.super_class = GTDisplayServiceXPCProxy;
    v7 = [(GTDisplayServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (id)show:(id)show completionHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  showCopy = show;
  Name = sel_getName(a2);
  v10 = Encode(showCopy, connection, Name, handlerCopy);

  return v10;
}

- (id)update:(id)update completionHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  updateCopy = update;
  Name = sel_getName(a2);
  v10 = Encode(updateCopy, connection, Name, handlerCopy);

  return v10;
}

- (void)terminateProcess
{
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  [(GTServiceConnection *)self->_connection sendMessageAndWaitForDelivery:xdict];
}

@end