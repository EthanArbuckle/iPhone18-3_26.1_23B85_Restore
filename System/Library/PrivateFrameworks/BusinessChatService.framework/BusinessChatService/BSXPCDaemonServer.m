@interface BSXPCDaemonServer
- (BSXPCDaemonServer)initWithServices:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation BSXPCDaemonServer

- (BSXPCDaemonServer)initWithServices:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BSXPCDaemonServer;
  v6 = [(BSXPCDaemonServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_services, a3);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(BSXPCDaemonServer *)self services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 methodSignatureForSelector:a3];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13.receiver = self;
  v13.super_class = BSXPCDaemonServer;
  v11 = [(BSXPCDaemonServer *)&v13 methodSignatureForSelector:a3];
LABEL_11:

  return v11;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 selector];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(BSXPCDaemonServer *)self services];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v4 invokeWithTarget:v10];

          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11.receiver = self;
  v11.super_class = BSXPCDaemonServer;
  [(BSXPCDaemonServer *)&v11 forwardInvocation:v4];
LABEL_11:
}

@end