@interface LNConnectionProxy
+ (id)proxyWithConnection:(id)connection;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (LNConnectionProxy)initWithConnection:(id)connection;
- (id)description;
- (id)logPrefix;
- (id)methodSignatureForSelector:(SEL)selector;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
@end

@implementation LNConnectionProxy

- (id)logPrefix
{
  v2 = MEMORY[0x1E696AEC0];
  connection = [(LNConnectionProxy *)self connection];
  bundleIdentifier = [connection bundleIdentifier];
  v5 = [v2 stringWithFormat:@"[%@]", bundleIdentifier];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  connection = [(LNConnectionProxy *)self connection];
  v5 = [v3 stringWithFormat:@"<LNConnectionProxy: %p, wrapping: %@>", self, connection];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  connection = [(LNConnectionProxy *)self connection];
  v7 = connection;
  if (isKindOfClass)
  {
    connection2 = [equalCopy connection];
    v9 = [v7 isEqual:connection2];
  }

  else
  {
    v9 = [connection isEqual:equalCopy];
  }

  return v9;
}

- (unint64_t)hash
{
  connection = [(LNConnectionProxy *)self connection];
  v3 = [connection hash];

  return v3;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  connection = [(LNConnectionProxy *)self connection];
  v6 = [connection conformsToProtocol:protocolCopy];

  return v6;
}

- (BOOL)isKindOfClass:(Class)class
{
  connection = [(LNConnectionProxy *)self connection];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  connection = [(LNConnectionProxy *)self connection];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  v38 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v4 = NSStringFromSelector([invocationCopy selector]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__LNConnectionProxy_forwardInvocation___block_invoke;
  aBlock[3] = &unk_1E74B27A0;
  v5 = invocationCopy;
  v31 = v5;
  selfCopy = self;
  v6 = _Block_copy(aBlock);
  if (([v4 hasSuffix:@"completionHandler:"] & 1) == 0)
  {
    goto LABEL_38;
  }

  array = [MEMORY[0x1E695DF70] array];
  methodSignature = [v5 methodSignature];
  for (i = 2; i < [methodSignature numberOfArguments]; ++i)
  {
    v10 = methodSignature;
    v11 = [methodSignature getArgumentTypeAtIndex:i];
    v12 = *v11;
    if (v12 > 0x65)
    {
      if (v12 == 102)
      {
        if (!v11[1])
        {
          *buf = 0;
          [v5 getArgument:buf atIndex:i];
          LODWORD(v16) = *buf;
          v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
          [array addObject:v17];

          continue;
        }
      }

      else if (v12 == 105)
      {
        if (!v11[1])
        {
          *buf = 0;
          [v5 getArgument:buf atIndex:i];
          v19 = [MEMORY[0x1E696AD98] numberWithInt:*buf];
          [array addObject:v19];

          continue;
        }
      }

      else if (v12 == 113 && !v11[1])
      {
        *buf = 0;
        [v5 getArgument:buf atIndex:i];
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*buf];
        [array addObject:v14];

        continue;
      }

      goto LABEL_28;
    }

    if (v12 != 64)
    {
      if (v12 == 66)
      {
        if (!v11[1])
        {
          buf[0] = 0;
          [v5 getArgument:buf atIndex:i];
          v18 = [MEMORY[0x1E696AD98] numberWithBool:buf[0]];
          [array addObject:v18];

          continue;
        }
      }

      else if (v12 == 100 && !v11[1])
      {
        *buf = 0;
        [v5 getArgument:buf atIndex:i];
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:*buf];
        [array addObject:v13];

        continue;
      }

LABEL_28:
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<arg of type %s>", v11];
      [array addObject:v20];

      continue;
    }

    if (v11[1] == 63)
    {
      if (v11[2])
      {
        goto LABEL_28;
      }

      [array addObject:@"<block>"];
    }

    else
    {
      if (v11[1])
      {
        goto LABEL_28;
      }

      *buf = 0;
      [v5 getArgument:buf atIndex:i];
      if (*buf)
      {
        v15 = *buf;
      }

      else
      {
        v15 = @"<nil>";
      }

      [array addObject:v15];
    }
  }

  v21 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnectionProxy *)self logPrefix];
    connection = [(LNConnectionProxy *)self connection];
    v24 = objc_opt_class();
    *buf = 138543874;
    *&buf[4] = logPrefix;
    v34 = 2114;
    v35 = v24;
    v36 = 2114;
    v37 = v4;
    v25 = v24;
    _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_INFO, "%{public}@ Invoked [%{public}@ %{public}@]", buf, 0x20u);
  }

  if ([array count])
  {
    v26 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      logPrefix2 = [(LNConnectionProxy *)self logPrefix];
      *buf = 138543618;
      *&buf[4] = logPrefix2;
      v34 = 2112;
      v35 = array;
      _os_log_impl(&dword_19763D000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ Arguments: %@", buf, 0x16u);
    }
  }

LABEL_38:
  v6[2](v6);

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __39__LNConnectionProxy_forwardInvocation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) connection];
  [v2 setTarget:v3];

  v4 = *(a1 + 32);

  return [v4 invoke];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  connection = [(LNConnectionProxy *)self connection];
  v5 = [connection methodSignatureForSelector:selector];

  return v5;
}

- (LNConnectionProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    objc_storeStrong(&self->_connection, connection);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)proxyWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithConnection:connectionCopy];

  return v5;
}

@end