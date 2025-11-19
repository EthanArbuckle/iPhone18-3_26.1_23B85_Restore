@interface CKAsset(IC)
- (BOOL)isFetched;
- (BOOL)isUnfetched;
@end

@implementation CKAsset(IC)

- (BOOL)isFetched
{
  v1 = [a1 fileURL];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)isUnfetched
{
  v1 = [a1 fileURL];
  v2 = v1 == 0;

  return v2;
}

@end