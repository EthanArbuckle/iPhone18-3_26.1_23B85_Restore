@interface CLSSocialService
+ (id)defaultFileName;
- (void)invalidateMemoryCaches;
@end

@implementation CLSSocialService

+ (id)defaultFileName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.plist", v4];

  return v5;
}

- (void)invalidateMemoryCaches
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = +[CLSLogging sharedLogging];
  v3 = [v2 loggingConnection];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CLSSocialService invalidateMemoryCaches]";
    _os_log_error_impl(&dword_22F907000, v3, OS_LOG_TYPE_ERROR, "%s need to be implemented", &v4, 0xCu);
  }
}

@end