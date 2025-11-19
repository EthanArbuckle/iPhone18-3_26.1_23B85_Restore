@interface CATOperationTargetSelectorObserver
@end

@implementation CATOperationTargetSelectorObserver

void __65___CATOperationTargetSelectorObserver_invokeActionWithOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) target];
  v3 = [v2 methodSignatureForSelector:{objc_msgSend(*(a1 + 32), "selector")}];

  v4 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v3];
  v5 = [*(a1 + 32) target];
  [v4 setTarget:v5];

  [v4 setSelector:{objc_msgSend(*(a1 + 32), "selector")}];
  if ([v3 numberOfArguments] >= 3)
  {
    [v4 setArgument:a1 + 40 atIndex:2];
  }

  if ([v3 numberOfArguments] >= 4)
  {
    v6 = [*(a1 + 32) userInfo];
    [v4 setArgument:&v6 atIndex:3];
  }

  [v4 invoke];
}

@end