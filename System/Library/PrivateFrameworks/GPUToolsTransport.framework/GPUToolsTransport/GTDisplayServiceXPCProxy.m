@interface GTDisplayServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTDisplayServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)show:(id)a3 completionHandler:(id)a4;
- (id)update:(id)a3 completionHandler:(id)a4;
- (void)terminateProcess;
@end

@implementation GTDisplayServiceXPCProxy

- (GTDisplayServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = GTDisplayServiceXPCProxy;
  v8 = [(GTDisplayServiceXPCProxy *)&v19 init];
  if (v8)
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_6;
    }

    v9 = [GTServiceConnection alloc];
    v10 = [v7 deviceUDID];
    v11 = -[GTServiceConnection initWithConnection:device:port:](v9, "initWithConnection:device:port:", v6, v10, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v11;

    v13 = [GTServiceProperties protocolMethods:&unk_2860ECB68];
    v14 = [v7 protocolMethods];
    v15 = newSetWithArrayMinusArray(v13, v14);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v15;
  }

  v17 = v8;
LABEL_6:

  return v17;
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
    v9.super_class = GTDisplayServiceXPCProxy;
    v7 = [(GTDisplayServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (id)show:(id)a3 completionHandler:(id)a4
{
  connection = self->_connection;
  v7 = a4;
  v8 = a3;
  Name = sel_getName(a2);
  v10 = Encode(v8, connection, Name, v7);

  return v10;
}

- (id)update:(id)a3 completionHandler:(id)a4
{
  connection = self->_connection;
  v7 = a4;
  v8 = a3;
  Name = sel_getName(a2);
  v10 = Encode(v8, connection, Name, v7);

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