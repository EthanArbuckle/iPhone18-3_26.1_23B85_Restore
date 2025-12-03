@interface CKSMSComposeQueuingRemoteViewControllerProxy
- (CKSMSComposeQueuingRemoteViewControllerProxy)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)setServiceViewControllerProxy:(id)proxy;
@end

@implementation CKSMSComposeQueuingRemoteViewControllerProxy

- (CKSMSComposeQueuingRemoteViewControllerProxy)init
{
  v5.receiver = self;
  v5.super_class = CKSMSComposeQueuingRemoteViewControllerProxy;
  v2 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)&v5 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(CKSMSComposeQueuingRemoteViewControllerProxy *)v2 setQueuedInvocations:array];
  }

  return v2;
}

- (void)dealloc
{
  [(CKSMSComposeQueuingRemoteViewControllerProxy *)self setServiceViewControllerProxy:0];
  [(CKSMSComposeQueuingRemoteViewControllerProxy *)self setQueuedInvocations:0];
  v3.receiver = self;
  v3.super_class = CKSMSComposeQueuingRemoteViewControllerProxy;
  [(CKSMSComposeQueuingRemoteViewControllerProxy *)&v3 dealloc];
}

- (void)setServiceViewControllerProxy:(id)proxy
{
  v18 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  p_serviceViewControllerProxy = &self->_serviceViewControllerProxy;
  if (self->_serviceViewControllerProxy != proxyCopy)
  {
    objc_storeStrong(&self->_serviceViewControllerProxy, proxy);
    if (*p_serviceViewControllerProxy)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      queuedInvocations = [(CKSMSComposeQueuingRemoteViewControllerProxy *)self queuedInvocations];
      v8 = [queuedInvocations countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(queuedInvocations);
            }

            [*(*(&v13 + 1) + 8 * v11++) invokeWithTarget:*p_serviceViewControllerProxy];
          }

          while (v9 != v11);
          v9 = [queuedInvocations countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      queuedInvocations2 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)self queuedInvocations];
      [queuedInvocations2 removeAllObjects];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = CKSMSComposeQueuingRemoteViewControllerProxy;
  v4 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)&v8 methodSignatureForSelector:?];
  if (!v4)
  {
    v5 = &unk_1F0587230;
    MethodDescription = protocol_getMethodDescription(v5, selector, 1, 1);
    if (MethodDescription.types)
    {
      v4 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)forwardInvocation:(id)invocation
{
  serviceViewControllerProxy = self->_serviceViewControllerProxy;
  invocationCopy = invocation;
  v6 = invocationCopy;
  if (serviceViewControllerProxy)
  {
    [invocationCopy invokeWithTarget:serviceViewControllerProxy];
  }

  else
  {
    [invocationCopy retainArguments];
    [(NSMutableArray *)self->_queuedInvocations addObject:v6];
  }
}

@end