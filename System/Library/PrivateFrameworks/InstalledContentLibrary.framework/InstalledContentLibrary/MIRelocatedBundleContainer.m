@interface MIRelocatedBundleContainer
- (BOOL)makeContainerLiveReplacingContainer:(id)a3 reason:(unint64_t)a4 waitForDeletion:(BOOL)a5 withError:(id *)a6;
- (BOOL)makeContainerLiveWithError:(id *)a3;
- (BOOL)purgeContentWithError:(id *)a3;
- (BOOL)regenerateDirectoryUUIDWithError:(id *)a3;
- (unint64_t)diskUsage;
@end

@implementation MIRelocatedBundleContainer

- (BOOL)makeContainerLiveWithError:(id *)a3
{
  v5 = _CreateAndLogError("[MIRelocatedBundleContainer makeContainerLiveWithError:]", 24, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to be made live", v3, v7);
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }

  return 0;
}

- (BOOL)makeContainerLiveReplacingContainer:(id)a3 reason:(unint64_t)a4 waitForDeletion:(BOOL)a5 withError:(id *)a6
{
  v8 = _CreateAndLogError("[MIRelocatedBundleContainer makeContainerLiveReplacingContainer:reason:waitForDeletion:withError:]", 33, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to be replaced", v6, v10);
  if (a6)
  {
    v8 = v8;
    *a6 = v8;
  }

  return 0;
}

- (BOOL)purgeContentWithError:(id *)a3
{
  v5 = _CreateAndLogError("[MIRelocatedBundleContainer purgeContentWithError:]", 42, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to purge", v3, v7);
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }

  return 0;
}

- (BOOL)regenerateDirectoryUUIDWithError:(id *)a3
{
  v5 = _CreateAndLogError("[MIRelocatedBundleContainer regenerateDirectoryUUIDWithError:]", 51, @"MIInstallerErrorDomain", 4, 0, 0, @"There is nothing to generate UUID", v3, v7);
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }

  return 0;
}

- (unint64_t)diskUsage
{
  v3 = +[MIFileManager defaultManager];
  v4 = [(MIContainer *)self containerURL];
  v5 = [v3 diskUsageForURL:v4];

  return v5;
}

@end