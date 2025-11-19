@interface GKExtensionHostViewController
- (GKExtensionHostViewControllerDelegate)delegate;
- (GKSocialGamingHostInterface)hostViewController;
- (id)methodSignatureForProtocol:(id)a3 selector:(SEL)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addTarget:(id)a3 forProtocol:(id)a4 toLookup:(id)a5;
- (void)buildLookupForHost:(id)a3;
- (void)extensionWillFinish;
- (void)finishExtension;
- (void)forwardInvocation:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation GKExtensionHostViewController

- (void)finishExtension
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 finishExtension];
}

- (void)extensionWillFinish
{
  v2 = [(GKExtensionHostViewController *)self hostViewController];
  [v2 extensionWillFinish];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v8 = a3;
  v4 = [(GKExtensionHostViewController *)self delegate];
  [v4 extensionDidTerminateWithError:v8];

  v5 = [(GKExtensionHostViewController *)self hostViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(GKExtensionHostViewController *)self hostViewController];
    [v7 extensionDidTerminateWithError:v8];
  }
}

- (void)addTarget:(id)a3 forProtocol:(id)a4 toLookup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    outCount = 0;
    v10 = protocol_copyMethodDescriptionList(v8, 1, 1, &outCount);
    v11 = v10;
    if (outCount)
    {
      v12 = 0;
      p_name = &v10->name;
      do
      {
        v14 = NSStringFromSelector(*p_name);
        v15 = [v9 objectForKey:v14];

        if (!v15)
        {
          [v9 setObject:v7 forKey:v14];
        }

        ++v12;
        p_name += 2;
      }

      while (v12 < outCount);
    }

    free(v11);
    v16 = protocol_copyMethodDescriptionList(v8, 0, 1, &outCount);
    v17 = v16;
    if (outCount)
    {
      v18 = 0;
      v19 = &v16->name;
      do
      {
        v20 = NSStringFromSelector(*v19);
        v21 = [v9 objectForKey:v20];

        if (!v21)
        {
          [v9 setObject:v7 forKey:v20];
        }

        ++v18;
        v19 += 2;
      }

      while (v18 < outCount);
    }

    free(v17);
  }
}

- (void)buildLookupForHost:(id)a3
{
  v4 = a3;
  [(GKExtensionHostViewController *)self setHostViewController:v4];
  v11 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  [(GKExtensionHostViewController *)self addTarget:v4 forProtocol:&unk_2861FEDC8 toLookup:v11];
  v5 = [objc_opt_class() exportedInterface];
  v6 = [v5 protocol];
  [(GKExtensionHostViewController *)self addTarget:v4 forProtocol:v6 toLookup:v11];

  v7 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [(GKExtensionHostViewController *)self addTarget:v7 forProtocol:&unk_2861FEE40 toLookup:v11];

  v8 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v9 = [objc_opt_class() serviceViewControllerInterface];
  v10 = [v9 protocol];
  [(GKExtensionHostViewController *)self addTarget:v8 forProtocol:v10 toLookup:v11];

  [(GKExtensionHostViewController *)self setTargetForSelector:v11];
}

- (id)methodSignatureForProtocol:(id)a3 selector:(SEL)a4
{
  v5 = a3;
  MethodDescription = protocol_getMethodDescription(v5, a4, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v8 = protocol_getMethodDescription(v5, a4, 0, 1), types = v8.types, v8.name))
  {
    v9 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v15.receiver = self;
  v15.super_class = GKExtensionHostViewController;
  v5 = [(GKExtensionHostViewController *)&v15 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = NSStringFromSelector(a3);
    v7 = [(GKExtensionHostViewController *)self targetForSelector];
    v8 = [v7 objectForKey:v6];

    v9 = [(GKExtensionHostViewController *)self hostViewController];

    if (v8 == v9)
    {
      v11 = [objc_opt_class() exportedInterface];
    }

    else
    {
      v10 = [(_UIRemoteViewController *)self serviceViewControllerProxy];

      if (v8 != v10)
      {
        v5 = 0;
LABEL_8:

        goto LABEL_9;
      }

      v11 = [objc_opt_class() serviceViewControllerInterface];
    }

    v12 = v11;
    v13 = [v11 protocol];
    v5 = [(GKExtensionHostViewController *)self methodSignatureForProtocol:v13 selector:a3];

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector([v4 selector]);
  v6 = [(GKExtensionHostViewController *)self targetForSelector];
  v7 = [v6 objectForKey:v5];

  if (objc_opt_respondsToSelector())
  {
    [v4 invokeWithTarget:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GKExtensionHostViewController;
    [(GKExtensionHostViewController *)&v8 forwardInvocation:v4];
  }
}

- (GKExtensionHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GKSocialGamingHostInterface)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end