@interface CALNNotificationUtilities
+ (BOOL)shouldBehaveAsRestart;
+ (void)createSentinelFileIfNeeded;
@end

@implementation CALNNotificationUtilities

+ (BOOL)shouldBehaveAsRestart
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 _pathForSentinelFile];
  v5 = [v3 fileExistsAtPath:v4];

  return v5 ^ 1;
}

+ (void)createSentinelFileIfNeeded
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 _pathForSentinelFile];
  v5 = [v3 createFileAtPath:v4 contents:0 attributes:0];

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