@interface GKExtensionHostViewController
- (GKExtensionHostViewControllerDelegate)delegate;
- (GKSocialGamingHostInterface)hostViewController;
- (id)methodSignatureForProtocol:(id)protocol selector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addTarget:(id)target forProtocol:(id)protocol toLookup:(id)lookup;
- (void)buildLookupForHost:(id)host;
- (void)extensionWillFinish;
- (void)finishExtension;
- (void)forwardInvocation:(id)invocation;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation GKExtensionHostViewController

- (void)finishExtension
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy finishExtension];
}

- (void)extensionWillFinish
{
  hostViewController = [(GKExtensionHostViewController *)self hostViewController];
  [hostViewController extensionWillFinish];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(GKExtensionHostViewController *)self delegate];
  [delegate extensionDidTerminateWithError:errorCopy];

  hostViewController = [(GKExtensionHostViewController *)self hostViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    hostViewController2 = [(GKExtensionHostViewController *)self hostViewController];
    [hostViewController2 extensionDidTerminateWithError:errorCopy];
  }
}

- (void)addTarget:(id)target forProtocol:(id)protocol toLookup:(id)lookup
{
  targetCopy = target;
  protocolCopy = protocol;
  lookupCopy = lookup;
  if (targetCopy)
  {
    outCount = 0;
    v10 = protocol_copyMethodDescriptionList(protocolCopy, 1, 1, &outCount);
    v11 = v10;
    if (outCount)
    {
      v12 = 0;
      p_name = &v10->name;
      do
      {
        v14 = NSStringFromSelector(*p_name);
        v15 = [lookupCopy objectForKey:v14];

        if (!v15)
        {
          [lookupCopy setObject:targetCopy forKey:v14];
        }

        ++v12;
        p_name += 2;
      }

      while (v12 < outCount);
    }

    free(v11);
    v16 = protocol_copyMethodDescriptionList(protocolCopy, 0, 1, &outCount);
    v17 = v16;
    if (outCount)
    {
      v18 = 0;
      v19 = &v16->name;
      do
      {
        v20 = NSStringFromSelector(*v19);
        v21 = [lookupCopy objectForKey:v20];

        if (!v21)
        {
          [lookupCopy setObject:targetCopy forKey:v20];
        }

        ++v18;
        v19 += 2;
      }

      while (v18 < outCount);
    }

    free(v17);
  }
}

- (void)buildLookupForHost:(id)host
{
  hostCopy = host;
  [(GKExtensionHostViewController *)self setHostViewController:hostCopy];
  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  [(GKExtensionHostViewController *)self addTarget:hostCopy forProtocol:&unk_2861FEDC8 toLookup:strongToWeakObjectsMapTable];
  exportedInterface = [objc_opt_class() exportedInterface];
  protocol = [exportedInterface protocol];
  [(GKExtensionHostViewController *)self addTarget:hostCopy forProtocol:protocol toLookup:strongToWeakObjectsMapTable];

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [(GKExtensionHostViewController *)self addTarget:serviceViewControllerProxy forProtocol:&unk_2861FEE40 toLookup:strongToWeakObjectsMapTable];

  serviceViewControllerProxy2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  serviceViewControllerInterface = [objc_opt_class() serviceViewControllerInterface];
  protocol2 = [serviceViewControllerInterface protocol];
  [(GKExtensionHostViewController *)self addTarget:serviceViewControllerProxy2 forProtocol:protocol2 toLookup:strongToWeakObjectsMapTable];

  [(GKExtensionHostViewController *)self setTargetForSelector:strongToWeakObjectsMapTable];
}

- (id)methodSignatureForProtocol:(id)protocol selector:(SEL)selector
{
  protocolCopy = protocol;
  MethodDescription = protocol_getMethodDescription(protocolCopy, selector, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v8 = protocol_getMethodDescription(protocolCopy, selector, 0, 1), types = v8.types, v8.name))
  {
    v9 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v15.receiver = self;
  v15.super_class = GKExtensionHostViewController;
  v5 = [(GKExtensionHostViewController *)&v15 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = NSStringFromSelector(selector);
    targetForSelector = [(GKExtensionHostViewController *)self targetForSelector];
    v8 = [targetForSelector objectForKey:v6];

    hostViewController = [(GKExtensionHostViewController *)self hostViewController];

    if (v8 == hostViewController)
    {
      exportedInterface = [objc_opt_class() exportedInterface];
    }

    else
    {
      serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];

      if (v8 != serviceViewControllerProxy)
      {
        v5 = 0;
LABEL_8:

        goto LABEL_9;
      }

      exportedInterface = [objc_opt_class() serviceViewControllerInterface];
    }

    v12 = exportedInterface;
    protocol = [exportedInterface protocol];
    v5 = [(GKExtensionHostViewController *)self methodSignatureForProtocol:protocol selector:selector];

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = NSStringFromSelector([invocationCopy selector]);
  targetForSelector = [(GKExtensionHostViewController *)self targetForSelector];
  v7 = [targetForSelector objectForKey:v5];

  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GKExtensionHostViewController;
    [(GKExtensionHostViewController *)&v8 forwardInvocation:invocationCopy];
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