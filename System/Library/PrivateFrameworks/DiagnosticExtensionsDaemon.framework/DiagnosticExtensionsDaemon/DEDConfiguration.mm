@interface DEDConfiguration
+ (id)sharedInstance;
- (const)loggingSubsystem;
- (id)dedDirectory;
- (id)errorDomain;
- (id)sharedAnonymousListener;
- (unint64_t)connectionType;
@end

@implementation DEDConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[DEDConfiguration sharedInstance];
  }

  v3 = sharedInstance_shared_0;

  return v3;
}

uint64_t __34__DEDConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_shared_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)errorDomain
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(DEDConfiguration *)self identifier];
  v4 = [v2 stringWithFormat:@"%@-error", identifier];

  return v4;
}

- (const)loggingSubsystem
{
  identifier = [(DEDConfiguration *)self identifier];
  v3 = [identifier cStringUsingEncoding:4];

  return v3;
}

- (unint64_t)connectionType
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v4 = [environment objectForKeyedSubscript:@"DED_CONNECTION"];

  v5 = v4 && ([v4 isEqualToString:&stru_285B72378] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"privileged") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"anonymous") & 1) != 0;
  return v5;
}

- (id)dedDirectory
{
  v3 = [MEMORY[0x277D051E0] userLibraryDirectoryForApp:@"Logs"];
  identifier = [(DEDConfiguration *)self identifier];
  v5 = [v3 URLByAppendingPathComponent:identifier];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(DEDConfiguration *)v7 dedDirectory];
    }

    v8 = MEMORY[0x277CBEBC0];
    v9 = NSHomeDirectory();
    v6 = [v8 fileURLWithPath:v9 isDirectory:1];
  }

  return v6;
}

- (id)sharedAnonymousListener
{
  anonymousListener = [(DEDConfiguration *)self anonymousListener];

  if (!anonymousListener)
  {
    v4 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(DEDConfiguration *)v4 sharedAnonymousListener];
    }

    anonymousListener2 = [MEMORY[0x277CCAE98] anonymousListener];
    [(DEDConfiguration *)self setAnonymousListener:anonymousListener2];
  }

  anonymousListener3 = [(DEDConfiguration *)self anonymousListener];

  return anonymousListener3;
}

@end