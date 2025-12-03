@interface CALNNotificationUtilities
+ (BOOL)shouldBehaveAsRestart;
+ (void)createSentinelFileIfNeeded;
@end

@implementation CALNNotificationUtilities

+ (BOOL)shouldBehaveAsRestart
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _pathForSentinelFile = [self _pathForSentinelFile];
  v5 = [defaultManager fileExistsAtPath:_pathForSentinelFile];

  return v5 ^ 1;
}

+ (void)createSentinelFileIfNeeded
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _pathForSentinelFile = [self _pathForSentinelFile];
  v5 = [defaultManager createFileAtPath:_pathForSentinelFile contents:0 attributes:0];

  v6 = +[CALNLogSubsystem calendar];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Creating the sentinel file was successful or the sentinel file already exists", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[(CALNNotificationUtilities *)v7];
  }
}

@end