@interface MIStagingRootAbsolute
- (id)privilegedResolveRootWithError:(id *)error;
@end

@implementation MIStagingRootAbsolute

- (id)privilegedResolveRootWithError:(id *)error
{
  stagingContentType = [(MIStagingRootAbsolute *)self stagingContentType];
  if (stagingContentType == 2)
  {
    v7 = +[MIStagingManager sharedInstance];
    v8 = [v7 stagingRecordForUserContentWithinSubsystem:-[MIStagingRootAbsolute stagingSubsystem](self error:{"stagingSubsystem"), error}];
LABEL_5:
    v9 = v8;

    if (v9)
    {
      completeURL = [v9 completeURL];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (stagingContentType == 1)
  {
    v7 = +[MIStagingManager sharedInstance];
    v8 = [v7 stagingRecordForSystemContentWithinSubsystem:-[MIStagingRootAbsolute stagingSubsystem](self error:{"stagingSubsystem"), error}];
    goto LABEL_5;
  }

  if (error)
  {
    _CreateAndLogError("[MIStagingRootAbsolute(PrivilegedOperations) privilegedResolveRootWithError:]", 36, MIInstallerErrorDomain, 4, 0, 0, @"Failed to resolve staging root for unknown staging content type", v6, v12);
    *error = completeURL = 0;
    goto LABEL_10;
  }

LABEL_9:
  completeURL = 0;
LABEL_10:

  return completeURL;
}

@end