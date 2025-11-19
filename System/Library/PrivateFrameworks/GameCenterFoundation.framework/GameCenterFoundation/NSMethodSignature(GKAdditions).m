@interface NSMethodSignature(GKAdditions)
- (BOOL)_gkTakesBlockAtIndex:()GKAdditions;
- (uint64_t)_gkHasReplyBlock;
@end

@implementation NSMethodSignature(GKAdditions)

- (BOOL)_gkTakesBlockAtIndex:()GKAdditions
{
  if ([a1 numberOfArguments] > a3 && (v5 = objc_msgSend(a1, "getArgumentTypeAtIndex:", a3), *v5 == 64))
  {
    return v5[1] == 63;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_gkHasReplyBlock
{
  v2 = [a1 numberOfArguments] - 1;

  return [a1 _gkTakesBlockAtIndex:v2];
}

@end