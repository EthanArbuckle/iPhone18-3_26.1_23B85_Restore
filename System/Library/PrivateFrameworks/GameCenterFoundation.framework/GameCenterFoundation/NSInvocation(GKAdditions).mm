@interface NSInvocation(GKAdditions)
+ (void)_gkInvocationWithBlock:()GKAdditions;
- (uint64_t)_gkHasReplyBlock;
@end

@implementation NSInvocation(GKAdditions)

+ (void)_gkInvocationWithBlock:()GKAdditions
{
  v4 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(MEMORY[0x277CBEB08], "signatureWithObjCTypes:", _Block_signature(aBlock))}];
  [v4 setTarget:aBlock];
  return v4;
}

- (uint64_t)_gkHasReplyBlock
{
  v1 = [a1 methodSignature];

  return [v1 _gkHasReplyBlock];
}

@end