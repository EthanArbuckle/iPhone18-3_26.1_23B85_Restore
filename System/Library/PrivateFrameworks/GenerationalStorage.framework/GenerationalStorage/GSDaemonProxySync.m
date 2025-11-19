@interface GSDaemonProxySync
+ (id)proxy;
- (GSDaemonProxySync)initWithXPCObject:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)finalize;
- (void)forwardInvocation:(id)a3;
- (void)handleBoolResult:(BOOL)a3 error:(id)a4;
- (void)handleObjResult:(id)a3 error:(id)a4;
@end

@implementation GSDaemonProxySync

- (GSDaemonProxySync)initWithXPCObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      sub_100026340();
    }

    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000078F8;
    v10[3] = &unk_100040DC8;
    objc_copyWeak(&v11, &location);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
    target = self->_target;
    self->_target = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [[NSError alloc] initWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];
    error = self->_error;
    self->_error = v7;
  }

  return self;
}

+ (id)proxy
{
  v2 = [GSDaemonProxySync alloc];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000748C;
  v11 = sub_10000749C;
  v12 = 0;
  if (qword_10004C9D0 != -1)
  {
    sub_100026304();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F08;
  block[3] = &unk_100040CF8;
  block[4] = &v7;
  dispatch_sync(qword_10004C9B8, block);
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  v4 = [(GSDaemonProxySync *)v2 initWithXPCObject:v3];

  return v4;
}

- (void)finalize
{
  v2.receiver = self;
  v2.super_class = GSDaemonProxySync;
  [(GSDaemonProxySync *)&v2 finalize];
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  target = self->_target;
  if (!target)
  {
    sub_10002636C();
  }

  v6 = v4;
  [(GSProtocol *)target forwardInvocation:v4];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  target = self->_target;
  if (!target)
  {
    sub_100026398();
  }

  return [(GSProtocol *)target methodSignatureForSelector:a3];
}

- (void)handleBoolResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = v6;
  if (v4)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  [(GSDaemonProxySync *)self setResult:v7];
  [(GSDaemonProxySync *)self setError:v8];
}

- (void)handleObjResult:(id)a3 error:(id)a4
{
  v6 = a4;
  [(GSDaemonProxySync *)self setResult:a3];
  [(GSDaemonProxySync *)self setError:v6];
}

@end