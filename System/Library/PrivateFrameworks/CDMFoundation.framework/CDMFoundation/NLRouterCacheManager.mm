@interface NLRouterCacheManager
+ (void)deleteAll;
@end

@implementation NLRouterCacheManager

+ (void)deleteAll
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Assistant/LLMCache/NLRouter"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager removeItemAtPath:v3 error:0] & 1) == 0)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[NLRouterCacheManager deleteAll]";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to delete LLM Cache at directory: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end