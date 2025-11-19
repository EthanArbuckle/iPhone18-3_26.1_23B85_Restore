@interface MBAppGroup
- (id)domain;
@end

@implementation MBAppGroup

- (id)domain
{
  v3 = [(MBContainer *)self identifier];
  v4 = [(MBContainer *)self volumeMountPoint];
  v5 = [(MBContainer *)self containerDir];
  v6 = [MBDomain appGroupDomainWithIdentifier:v3 volumeMountPoint:v4 rootPath:v5];

  if (qword_100421C78 != -1)
  {
    dispatch_once(&qword_100421C78, &stru_1003C2850);
  }

  [v6 setRelativePathsToBackupAndRestore:qword_100421C70];
  if (qword_100421C88 != -1)
  {
    dispatch_once(&qword_100421C88, &stru_1003C2870);
  }

  [v6 setRelativePathsNotToBackup:qword_100421C80];
  if (qword_100421C98 != -1)
  {
    dispatch_once(&qword_100421C98, &stru_1003C2890);
  }

  [v6 setRelativePathsNotToRestore:qword_100421C90];
  [v6 setShouldDigest:0];

  return v6;
}

@end