@interface BLAssetContainerEbookiOS
- (id)installOperationForInstallInfo:(id)info;
@end

@implementation BLAssetContainerEbookiOS

- (id)installOperationForInstallInfo:(id)info
{
  infoCopy = info;
  v4 = [[BLEBookInstallOperation alloc] initWithInfo:infoCopy];

  return v4;
}

@end