@interface NSMethodSignature(GKAdditions)
- (BOOL)_gkTakesBlockAtIndex:()GKAdditions;
- (uint64_t)_gkHasReplyBlock;
@end

@implementation NSMethodSignature(GKAdditions)

- (BOOL)_gkTakesBlockAtIndex:()GKAdditions
{
  if ([self numberOfArguments] > a3 && (v5 = objc_msgSend(self, "getArgumentTypeAtIndex:", a3), *v5 == 64))
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
  v2 = [self numberOfArguments] - 1;

  return [self _gkTakesBlockAtIndex:v2];
}

@end