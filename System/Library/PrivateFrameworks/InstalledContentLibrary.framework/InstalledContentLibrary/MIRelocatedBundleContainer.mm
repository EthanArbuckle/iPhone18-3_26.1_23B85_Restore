@interface MIRelocatedBundleContainer
- (BOOL)makeContainerLiveReplacingContainer:(id)container reason:(unint64_t)reason waitForDeletion:(BOOL)deletion withError:(id *)error;
- (BOOL)makeContainerLiveWithError:(id *)error;
- (BOOL)purgeContentWithError:(id *)error;
- (BOOL)regenerateDirectoryUUIDWithError:(id *)error;
- (unint64_t)diskUsage;
@end

@implementation MIRelocatedBundleContainer

- (BOOL)makeContainerLiveWithError:(id *)error
{
  v5 = _CreateAndLogError("[MIRelocatedBundleContainer makeContainerLiveWithError:]", 24, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to be made live", v3, v7);
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (BOOL)makeContainerLiveReplacingContainer:(id)container reason:(unint64_t)reason waitForDeletion:(BOOL)deletion withError:(id *)error
{
  v8 = _CreateAndLogError("[MIRelocatedBundleContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 33, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to be replaced", v6, v10);
  if (error)
  {
    v8 = v8;
    *error = v8;
  }

  return 0;
}

- (BOOL)purgeContentWithError:(id *)error
{
  v5 = _CreateAndLogError("[MIRelocatedBundleContainer purgeContentWithError:]", 42, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to purge", v3, v7);
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (BOOL)regenerateDirectoryUUIDWithError:(id *)error
{
  v5 = _CreateAndLogError("[MIRelocatedBundleContainer regenerateDirectoryUUIDWithError:]", 51, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to generate UUID", v3, v7);
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (unint64_t)diskUsage
{
  v3 = +[MIFileManager defaultManager];
  containerURL = [(MIContainer *)self containerURL];
  v5 = [v3 diskUsageForURL:containerURL];

  return v5;
}

@end