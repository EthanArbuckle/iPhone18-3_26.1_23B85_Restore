@interface ICScrollViewDelegateMultiplexer
- (BOOL)respondsToSelector:(SEL)selector;
- (ICScrollViewDelegateMultiplexer)initWithForwardingTargets:(id)targets;
- (NSArray)forwardingTargets;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation ICScrollViewDelegateMultiplexer

- (ICScrollViewDelegateMultiplexer)initWithForwardingTargets:(id)targets
{
  v4 = [targets ic_map:&__block_literal_global_16];
  wrappedForwardingTargets = self->_wrappedForwardingTargets;
  self->_wrappedForwardingTargets = v4;

  return self;
}

id __61__ICScrollViewDelegateMultiplexer_initWithForwardingTargets___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B7AD8];
  v3 = a2;
  v4 = [[v2 alloc] initWithObject:v3];

  return v4;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  wrappedForwardingTargets = [(ICScrollViewDelegateMultiplexer *)self wrappedForwardingTargets];
  v4 = [wrappedForwardingTargets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(wrappedForwardingTargets);
        }

        object = [*(*(&v12 + 1) + 8 * i) object];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [wrappedForwardingTargets countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
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

- (id)forwardingTargetForSelector:(SEL)selector
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  wrappedForwardingTargets = [(ICScrollViewDelegateMultiplexer *)self wrappedForwardingTargets];
  v6 = [wrappedForwardingTargets countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(wrappedForwardingTargets);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        object = [v10 object];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          object2 = [v10 object];
          [array addObject:object2];
        }
      }

      v7 = [wrappedForwardingTargets countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([array count] == 1)
  {
    firstObject = [array firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  wrappedForwardingTargets = [(ICScrollViewDelegateMultiplexer *)self wrappedForwardingTargets];
  v5 = [wrappedForwardingTargets countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(wrappedForwardingTargets);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        object = [v9 object];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          object2 = [v9 object];
          v12 = [object2 methodSignatureForSelector:selector];

          goto LABEL_11;
        }
      }

      v6 = [wrappedForwardingTargets countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)forwardInvocation:(id)invocation
{
  v19 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  wrappedForwardingTargets = [(ICScrollViewDelegateMultiplexer *)self wrappedForwardingTargets];
  v6 = [wrappedForwardingTargets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(wrappedForwardingTargets);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        object = [v10 object];
        [invocationCopy selector];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          object2 = [v10 object];
          [invocationCopy invokeWithTarget:object2];
        }
      }

      v7 = [wrappedForwardingTargets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (NSArray)forwardingTargets
{
  wrappedForwardingTargets = [(ICScrollViewDelegateMultiplexer *)self wrappedForwardingTargets];
  v3 = [wrappedForwardingTargets ic_compactMap:&__block_literal_global_4];

  return v3;
}

@end