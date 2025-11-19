@interface NSError(WFUserCancelled)
- (BOOL)wf_isUserCancelledError;
@end

@implementation NSError(WFUserCancelled)

- (BOOL)wf_isUserCancelledError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v3 = [a1 code] == 3072;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end