@interface _DKSyncCoordinatorFactory
+ (id)syncCoordinatorWithContext:(id)a3;
@end

@implementation _DKSyncCoordinatorFactory

+ (id)syncCoordinatorWithContext:(id)a3
{
  v3 = a3;
  v4 = [[_DKSync3Coordinator alloc] initWithContext:v3];

  return v4;
}

@end