@interface NetworkPathFinder
+ (id)getNetworkPath;
@end

@implementation NetworkPathFinder

+ (id)getNetworkPath
{
  NSLog(@"%s:%d: Entered to get network path...", a2, "+[NetworkPathFinder getNetworkPath]", 19);
  default_evaluator = nw_path_create_default_evaluator();
  v3 = nw_path_evaluator_copy_path();

  return v3;
}

@end