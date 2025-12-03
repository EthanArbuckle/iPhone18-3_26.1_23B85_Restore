@interface CKAsset(IC)
- (BOOL)isFetched;
- (BOOL)isUnfetched;
@end

@implementation CKAsset(IC)

- (BOOL)isFetched
{
  fileURL = [self fileURL];
  v2 = fileURL != 0;

  return v2;
}

- (BOOL)isUnfetched
{
  fileURL = [self fileURL];
  v2 = fileURL == 0;

  return v2;
}

@end