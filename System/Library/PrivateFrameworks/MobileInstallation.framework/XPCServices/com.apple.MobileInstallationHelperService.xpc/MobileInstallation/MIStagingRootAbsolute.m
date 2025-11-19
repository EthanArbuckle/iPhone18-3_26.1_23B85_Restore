@interface MIStagingRootAbsolute
- (id)privilegedResolveRootWithError:(id *)a3;
@end

@implementation MIStagingRootAbsolute

- (id)privilegedResolveRootWithError:(id *)a3
{
  v5 = [(MIStagingRootAbsolute *)self stagingContentType];
  if (v5 == 2)
  {
    v7 = +[MIStagingManager sharedInstance];
    v8 = [v7 stagingRecordForUserContentWithinSubsystem:-[MIStagingRootAbsolute stagingSubsystem](self error:{"stagingSubsystem"), a3}];
LABEL_5:
    v9 = v8;

    if (v9)
    {
      v10 = [v9 completeURL];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v7 = +[MIStagingManager sharedInstance];
    v8 = [v7 stagingRecordForSystemContentWithinSubsystem:-[MIStagingRootAbsolute stagingSubsystem](self error:{"stagingSubsystem"), a3}];
    goto LABEL_5;
  }

  if (a3)
  {
    _CreateAndLogError("[MIStagingRootAbsolute(PrivilegedOperations) privilegedResolveRootWithError:]", 36, MIInstallerErrorDomain, 4, 0, 0, @"Failed to resolve staging root for unknown staging content type", v6, v12);
    *a3 = v10 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
LABEL_10:

  return v10;
}

@end