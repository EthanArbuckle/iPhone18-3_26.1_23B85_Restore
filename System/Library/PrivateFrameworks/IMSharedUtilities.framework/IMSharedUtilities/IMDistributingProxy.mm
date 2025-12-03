@interface IMDistributingProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (IMDistributingProxy)initWithTargets:(id)targets targetQueue:(id)queue asynchronous:(BOOL)asynchronous filterBlock:(id)block;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IMDistributingProxy

- (IMDistributingProxy)initWithTargets:(id)targets targetQueue:(id)queue asynchronous:(BOOL)asynchronous filterBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v12 = [targets copy];
  targets = self->_targets;
  self->_targets = v12;

  targetQueue = self->_targetQueue;
  self->_targetQueue = queueCopy;
  v15 = queueCopy;

  self->_asynchronous = asynchronous;
  v16 = [blockCopy copy];

  filterBlock = self->_filterBlock;
  self->_filterBlock = v16;

  return self;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(IMDistributingProxy *)self targets:0];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_opt_respondsToSelector())
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  targets = [(IMDistributingProxy *)self targets];
  v5 = [targets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(targets);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) methodSignatureForSelector:selector];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [targets countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  targetQueue = [(IMDistributingProxy *)self targetQueue];

  if (targetQueue)
  {
    if ([(IMDistributingProxy *)self isAsynchronous])
    {
      [invocationCopy retainArguments];
      targetQueue2 = [(IMDistributingProxy *)self targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8629720;
      block[3] = &unk_1E78260F0;
      block[4] = self;
      v12 = invocationCopy;
      dispatch_async(targetQueue2, block);

      v7 = v12;
    }

    else
    {
      targetQueue3 = [(IMDistributingProxy *)self targetQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A8629930;
      v9[3] = &unk_1E78260F0;
      v9[4] = self;
      v10 = invocationCopy;
      dispatch_sync(targetQueue3, v9);

      v7 = v10;
    }
  }

  else
  {
    sub_1A862972C(self, invocationCopy);
  }
}

@end