@interface _DKSyncCoordinatorFactory
+ (id)syncCoordinatorWithContext:(id)context;
@end

@implementation _DKSyncCoordinatorFactory

+ (id)syncCoordinatorWithContext:(id)context
{
  contextCopy = context;
  v4 = [[_DKSync3Coordinator alloc] initWithContext:contextCopy];

  return v4;
}

@end