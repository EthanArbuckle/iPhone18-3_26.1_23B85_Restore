@interface CKSMSComposeQueuingRemoteViewControllerProxy
- (CKSMSComposeQueuingRemoteViewControllerProxy)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)setServiceViewControllerProxy:(id)a3;
@end

@implementation CKSMSComposeQueuingRemoteViewControllerProxy

- (CKSMSComposeQueuingRemoteViewControllerProxy)init
{
  v5.receiver = self;
  v5.super_class = CKSMSComposeQueuingRemoteViewControllerProxy;
  v2 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    [(CKSMSComposeQueuingRemoteViewControllerProxy *)v2 setQueuedInvocations:v3];
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

- (void)setServiceViewControllerProxy:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_serviceViewControllerProxy = &self->_serviceViewControllerProxy;
  if (self->_serviceViewControllerProxy != v5)
  {
    objc_storeStrong(&self->_serviceViewControllerProxy, a3);
    if (*p_serviceViewControllerProxy)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)self queuedInvocations];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(v7);
            }

            [*(*(&v13 + 1) + 8 * v11++) invokeWithTarget:*p_serviceViewControllerProxy];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      v12 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)self queuedInvocations];
      [v12 removeAllObjects];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = CKSMSComposeQueuingRemoteViewControllerProxy;
  v4 = [(CKSMSComposeQueuingRemoteViewControllerProxy *)&v8 methodSignatureForSelector:?];
  if (!v4)
  {
    v5 = &unk_1F0587230;
    MethodDescription = protocol_getMethodDescription(v5, a3, 1, 1);
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

- (void)forwardInvocation:(id)a3
{
  serviceViewControllerProxy = self->_serviceViewControllerProxy;
  v5 = a3;
  v6 = v5;
  if (serviceViewControllerProxy)
  {
    [v5 invokeWithTarget:serviceViewControllerProxy];
  }

  else
  {
    [v5 retainArguments];
    [(NSMutableArray *)self->_queuedInvocations addObject:v6];
  }
}

@end