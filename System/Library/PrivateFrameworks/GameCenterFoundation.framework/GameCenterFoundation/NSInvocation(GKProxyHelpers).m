@interface NSInvocation(GKProxyHelpers)
- (uint64_t)_gkClearTarget;
- (uint64_t)_gkInvokeOnce;
- (uint64_t)_gkInvokeOnceWithTarget:()GKProxyHelpers;
- (uint64_t)_gkReplyHandlerInvocation;
- (unint64_t)_gkPrepareForCallWithError:()GKProxyHelpers;
- (void)_gkCallbackWithError:()GKProxyHelpers queue:;
- (void)_gkClearCopiedArguments;
- (void)_gkCopyArguments;
@end

@implementation NSInvocation(GKProxyHelpers)

- (uint64_t)_gkInvokeOnce
{
  [a1 invoke];

  return [a1 _gkClearTarget];
}

- (uint64_t)_gkClearTarget
{
  v2 = [MEMORY[0x277CBEB68] null];

  return [a1 setTarget:v2];
}

- (void)_gkCopyArguments
{
  if (objc_getAssociatedObject(a1, kGKArgumentIndexesCopied))
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Must only copy arguments once per invocation : %@", a1];
    v4 = [v2 stringWithFormat:@"%@ (indexesCopied == nil)\n[%s (%s:%d)]", v3, "-[NSInvocation(GKProxyHelpers) _gkCopyArguments]", objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/NSInvocation+GKAdditions+NoARC.m"), "lastPathComponent"), "UTF8String"), 23];
    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v4}];
  }

  v5 = [MEMORY[0x277CCAB58] indexSet];
  v6 = [a1 methodSignature];
  v7 = [v6 numberOfArguments];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2 * v7];
  if (v7 >= 3)
  {
    for (i = 2; i != v7; ++i)
    {
      if (*[v6 getArgumentTypeAtIndex:i] == 64)
      {
        v11 = 0;
        [a1 getArgument:&v11 atIndex:i];
        if ([v11 conformsToProtocol:&unk_283B34A10])
        {
          [v5 addIndex:i];
          v10 = [v11 copy];
          [a1 setArgument:&v10 atIndex:i];
          [v8 addObject:v10];
        }
      }
    }
  }

  objc_setAssociatedObject(a1, kGKArgumentIndexesCopied, v5, 0x301);
  [a1 retainArguments];
}

- (void)_gkClearCopiedArguments
{
  AssociatedObject = objc_getAssociatedObject(a1, kGKArgumentIndexesCopied);
  if (!AssociatedObject)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Must release arguments only once per invocation for which _gkCopyArguments has been called : %@", a1];
    v5 = [v3 stringWithFormat:@"%@ (indexesCopied != nil)\n[%s (%s:%d)]", v4, "-[NSInvocation(GKProxyHelpers) _gkClearCopiedArguments]", objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/NSInvocation+GKAdditions+NoARC.m"), "lastPathComponent"), "UTF8String"), 60];
    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v5}];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__NSInvocation_GKProxyHelpers___gkClearCopiedArguments__block_invoke;
  v6[3] = &unk_2785E0E60;
  v6[4] = a1;
  [AssociatedObject enumerateIndexesUsingBlock:v6];
  objc_setAssociatedObject(a1, kGKArgumentIndexesCopied, 0, 0x301);
}

- (uint64_t)_gkReplyHandlerInvocation
{
  v2 = [a1 methodSignature];
  v3 = [v2 numberOfArguments] - 1;
  if ([v2 _gkTakesBlockAtIndex:v3] && (v5 = 0, objc_msgSend(a1, "getArgument:atIndex:", &v5, v3), v5))
  {
    return [MEMORY[0x277CBEAE8] _gkInvocationWithBlock:?];
  }

  else
  {
    return 0;
  }
}

- (void)_gkCallbackWithError:()GKProxyHelpers queue:
{
  [a1 _gkPrepareForCallWithError:?];
  [a1 retainArguments];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NSInvocation_GKProxyHelpers___gkCallbackWithError_queue___block_invoke;
  block[3] = &unk_2785DE110;
  block[4] = a1;
  dispatch_async(a4, block);
}

- (unint64_t)_gkPrepareForCallWithError:()GKProxyHelpers
{
  v14 = a3;
  v4 = [a1 methodSignature];
  result = [v4 numberOfArguments];
  if (result >= 3)
  {
    v6 = result - 1;
    v7 = -result;
    v8 = 2;
    do
    {
      v9 = [v4 getArgumentTypeAtIndex:v8];
      if (v7 + v8 == -1 && *v9 == 64)
      {
        v10 = &v14;
        v11 = a1;
        v12 = v6;
      }

      else
      {
        v10 = &v13;
        v11 = a1;
        v12 = v8;
      }

      result = [v11 setArgument:v10 atIndex:v12];
      ++v8;
    }

    while (v7 + v8);
  }

  return result;
}

- (uint64_t)_gkInvokeOnceWithTarget:()GKProxyHelpers
{
  [a1 _gkClearTarget];
  [a1 invokeWithTarget:a3];

  return [a1 _gkClearTarget];
}

@end