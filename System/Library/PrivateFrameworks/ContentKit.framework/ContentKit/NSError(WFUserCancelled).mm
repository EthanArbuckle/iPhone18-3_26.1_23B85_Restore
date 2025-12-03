@interface NSError(WFUserCancelled)
- (BOOL)wf_isUserCancelledError;
@end

@implementation NSError(WFUserCancelled)

- (BOOL)wf_isUserCancelledError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    v3 = [self code] == 3072;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end