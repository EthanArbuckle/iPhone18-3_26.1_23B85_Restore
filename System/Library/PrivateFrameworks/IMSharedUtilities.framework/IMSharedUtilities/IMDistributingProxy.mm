@interface IMDistributingProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (IMDistributingProxy)initWithTargets:(id)a3 targetQueue:(id)a4 asynchronous:(BOOL)a5 filterBlock:(id)a6;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMDistributingProxy

- (IMDistributingProxy)initWithTargets:(id)a3 targetQueue:(id)a4 asynchronous:(BOOL)a5 filterBlock:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [a3 copy];
  targets = self->_targets;
  self->_targets = v12;

  targetQueue = self->_targetQueue;
  self->_targetQueue = v10;
  v15 = v10;

  self->_asynchronous = a5;
  v16 = [v11 copy];

  filterBlock = self->_filterBlock;
  self->_filterBlock = v16;

  return self;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(IMDistributingProxy *)self targets];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) methodSignatureForSelector:a3];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(IMDistributingProxy *)self targetQueue];

  if (v5)
  {
    if ([(IMDistributingProxy *)self isAsynchronous])
    {
      [v4 retainArguments];
      v6 = [(IMDistributingProxy *)self targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8629720;
      block[3] = &unk_1E78260F0;
      block[4] = self;
      v12 = v4;
      dispatch_async(v6, block);

      v7 = v12;
    }

    else
    {
      v8 = [(IMDistributingProxy *)self targetQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A8629930;
      v9[3] = &unk_1E78260F0;
      v9[4] = self;
      v10 = v4;
      dispatch_sync(v8, v9);

      v7 = v10;
    }
  }

  else
  {
    sub_1A862972C(self, v4);
  }
}

@end