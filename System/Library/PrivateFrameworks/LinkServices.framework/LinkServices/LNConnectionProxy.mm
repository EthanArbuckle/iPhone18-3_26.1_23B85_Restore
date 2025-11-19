@interface LNConnectionProxy
+ (id)proxyWithConnection:(id)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (LNConnectionProxy)initWithConnection:(id)a3;
- (id)description;
- (id)logPrefix;
- (id)methodSignatureForSelector:(SEL)a3;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
@end

@implementation LNConnectionProxy

- (id)logPrefix
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNConnectionProxy *)self connection];
  v4 = [v3 bundleIdentifier];
  v5 = [v2 stringWithFormat:@"[%@]", v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNConnectionProxy *)self connection];
  v5 = [v3 stringWithFormat:@"<LNConnectionProxy: %p, wrapping: %@>", self, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [(LNConnectionProxy *)self connection];
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v4 connection];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = [v6 isEqual:v4];
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(LNConnectionProxy *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(LNConnectionProxy *)self connection];
  v6 = [v5 conformsToProtocol:v4];

  return v6;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v3 = [(LNConnectionProxy *)self connection];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(LNConnectionProxy *)self connection];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = NSStringFromSelector([v3 selector]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__LNConnectionProxy_forwardInvocation___block_invoke;
  aBlock[3] = &unk_1E74B27A0;
  v5 = v3;
  v31 = v5;
  v32 = self;
  v6 = _Block_copy(aBlock);
  if (([v4 hasSuffix:@"completionHandler:"] & 1) == 0)
  {
    goto LABEL_38;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v5 methodSignature];
  for (i = 2; i < [v8 numberOfArguments]; ++i)
  {
    v10 = v8;
    v11 = [v8 getArgumentTypeAtIndex:i];
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
          [v7 addObject:v17];

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
          [v7 addObject:v19];

          continue;
        }
      }

      else if (v12 == 113 && !v11[1])
      {
        *buf = 0;
        [v5 getArgument:buf atIndex:i];
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*buf];
        [v7 addObject:v14];

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
          [v7 addObject:v18];

          continue;
        }
      }

      else if (v12 == 100 && !v11[1])
      {
        *buf = 0;
        [v5 getArgument:buf atIndex:i];
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:*buf];
        [v7 addObject:v13];

        continue;
      }

LABEL_28:
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<arg of type %s>", v11];
      [v7 addObject:v20];

      continue;
    }

    if (v11[1] == 63)
    {
      if (v11[2])
      {
        goto LABEL_28;
      }

      [v7 addObject:@"<block>"];
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

      [v7 addObject:v15];
    }
  }

  v21 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [(LNConnectionProxy *)self logPrefix];
    v23 = [(LNConnectionProxy *)self connection];
    v24 = objc_opt_class();
    *buf = 138543874;
    *&buf[4] = v22;
    v34 = 2114;
    v35 = v24;
    v36 = 2114;
    v37 = v4;
    v25 = v24;
    _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_INFO, "%{public}@ Invoked [%{public}@ %{public}@]", buf, 0x20u);
  }

  if ([v7 count])
  {
    v26 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = [(LNConnectionProxy *)self logPrefix];
      *buf = 138543618;
      *&buf[4] = v27;
      v34 = 2112;
      v35 = v7;
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(LNConnectionProxy *)self connection];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

- (LNConnectionProxy)initWithConnection:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_connection, a3);
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)proxyWithConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConnection:v4];

  return v5;
}

@end