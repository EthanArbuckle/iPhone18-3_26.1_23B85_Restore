@interface NSProgress(DASAdditions)
+ (id)indeterminateProgress;
@end

@implementation NSProgress(DASAdditions)

+ (id)indeterminateProgress
{
  v0 = objc_opt_new();
  [v0 setTotalUnitCount:1];
  [v0 setCompletedUnitCount:0];

  return v0;
}

@end