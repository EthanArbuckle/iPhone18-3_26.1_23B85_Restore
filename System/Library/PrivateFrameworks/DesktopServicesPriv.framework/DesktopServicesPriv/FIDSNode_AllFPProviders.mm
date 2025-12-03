@interface FIDSNode_AllFPProviders
- (BOOL)markAsUsed:(id *)used;
@end

@implementation FIDSNode_AllFPProviders

- (BOOL)markAsUsed:(id *)used
{
  if (used)
  {
    *used = ErrorWithOSStatus(0, 0);
  }

  return 1;
}

@end