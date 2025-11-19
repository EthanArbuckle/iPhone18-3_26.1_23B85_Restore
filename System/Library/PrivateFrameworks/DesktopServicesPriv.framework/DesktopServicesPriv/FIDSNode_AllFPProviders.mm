@interface FIDSNode_AllFPProviders
- (BOOL)markAsUsed:(id *)a3;
@end

@implementation FIDSNode_AllFPProviders

- (BOOL)markAsUsed:(id *)a3
{
  if (a3)
  {
    *a3 = ErrorWithOSStatus(0, 0);
  }

  return 1;
}

@end