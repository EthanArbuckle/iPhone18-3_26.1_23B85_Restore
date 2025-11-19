@interface AssetTask
- (BOOL)isCancelled;
@end

@implementation AssetTask

- (BOOL)isCancelled
{

  sub_1C5D467D8();
  v3 = v2;

  return v3 & 1;
}

@end