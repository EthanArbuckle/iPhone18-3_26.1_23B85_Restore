@interface XPCNSServiceListener
- (BOOL)XPCServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (XPCNSServiceListener)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5;
- (void)XPCServiceListener:(id)a3 didReceiveNewConnection:(id)a4;
@end

@implementation XPCNSServiceListener

- (void)XPCServiceListener:(id)a3 didReceiveNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[XPCNSServiceConnection alloc] initWithXPCServiceConnection:v5];

  [(XPCNSServiceListenerDelegate *)self->_delegate XPCNSServiceListener:self didReceiveNewConnection:v6];
}

- (BOOL)XPCServiceListener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(XPCNSServiceListenerDelegate *)self->_delegate XPCNSServiceListener:self shouldReceiveNewConnection:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (XPCNSServiceListener)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = XPCNSServiceListener;
  v11 = [(XPCNSServiceListener *)&v15 init];
  if (v11)
  {
    v12 = [[XPCServiceListener alloc] initWithServiceName:v8 queue:v9 delegate:v11];
    serviceListener = v11->_serviceListener;
    v11->_serviceListener = v12;

    v11->_delegate = v10;
  }

  return v11;
}

@end