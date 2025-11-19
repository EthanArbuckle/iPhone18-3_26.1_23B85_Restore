@interface BLAssetContainerEbookiOS
- (id)installOperationForInstallInfo:(id)a3;
@end

@implementation BLAssetContainerEbookiOS

- (id)installOperationForInstallInfo:(id)a3
{
  v3 = a3;
  v4 = [[BLEBookInstallOperation alloc] initWithInfo:v3];

  return v4;
}

@end