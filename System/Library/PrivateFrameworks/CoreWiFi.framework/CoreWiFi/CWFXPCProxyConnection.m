@interface CWFXPCProxyConnection
- (CWFXPCProxyConnection)initWithForwardingTarget:(id)a3;
- (void)invalidate;
@end

@implementation CWFXPCProxyConnection

- (CWFXPCProxyConnection)initWithForwardingTarget:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CWFXPCProxyConnection;
  v5 = [(CWFXPCProxyConnection *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_initially_inactive(0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    p_super = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.corewifi.xpcproxy", p_super);
    queue = v5->_queue;
    v5->_queue = v9;

    if (!v5->_queue)
    {
      goto LABEL_7;
    }

    v11 = objc_alloc_init(CWFXPCProxy);
    XPCProxy = v5->_XPCProxy;
    v5->_XPCProxy = v11;

    v13 = v5->_XPCProxy;
    if (!v13)
    {
      goto LABEL_7;
    }

    [(CWFXPCProxy *)v13 setTarget:v4];
    [(CWFXPCProxy *)v5->_XPCProxy setQueue:v5->_queue];
    v14 = objc_alloc_init(CWFXPCProxy);
    synchronousXPCProxy = v5->_synchronousXPCProxy;
    v5->_synchronousXPCProxy = v14;

    v16 = v5->_synchronousXPCProxy;
    if (v16)
    {
      [(CWFXPCProxy *)v16 setSynchronous:1];
      [(CWFXPCProxy *)v5->_synchronousXPCProxy setTarget:v4];
      [(CWFXPCProxy *)v5->_synchronousXPCProxy setQueue:v5->_queue];
    }

    else
    {
LABEL_7:

      p_super = &v5->super;
      v5 = 0;
    }
  }

  else
  {
    p_super = 0;
  }

  return v5;
}

- (void)invalidate
{
  [(CWFXPCProxy *)self->_XPCProxy setTarget:0];
  [(CWFXPCProxy *)self->_XPCProxy setQueue:0];
  [(CWFXPCProxy *)self->_synchronousXPCProxy setTarget:0];
  [(CWFXPCProxy *)self->_synchronousXPCProxy setQueue:0];
  v3 = [(CWFXPCProxyConnection *)self invalidationHandler];

  if (v3)
  {
    v4 = [(CWFXPCProxyConnection *)self invalidationHandler];
    v4[2]();
  }

  [(CWFXPCProxyConnection *)self setInvalidationHandler:0];
}

@end