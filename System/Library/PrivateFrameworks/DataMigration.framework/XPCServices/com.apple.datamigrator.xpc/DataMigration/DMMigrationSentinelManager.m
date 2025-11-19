@interface DMMigrationSentinelManager
- (DMMigrationSentinelManager)initWithFileManager:(id)a3 sentinelPath:(id)a4;
- (void)removeSentinelIfPresent;
@end

@implementation DMMigrationSentinelManager

- (DMMigrationSentinelManager)initWithFileManager:(id)a3 sentinelPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DMMigrationSentinelManager;
  v9 = [(DMMigrationSentinelManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileManager, a3);
    objc_storeStrong(&v10->_sentinelPath, a4);
  }

  return v10;
}

- (void)removeSentinelIfPresent
{
  fileManager = self->_fileManager;
  sentinelPath = self->_sentinelPath;
  v9 = 0;
  v4 = [(NSFileManager *)fileManager removeItemAtPath:sentinelPath error:&v9];
  v5 = v9;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:NSCocoaErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    _DMLogFunc();
  }

LABEL_7:
}

@end