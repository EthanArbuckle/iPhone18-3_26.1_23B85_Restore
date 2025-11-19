@interface EMBiomeStreamDirectory
+ (OS_os_log)log;
+ (id)url;
+ (void)url;
@end

@implementation EMBiomeStreamDirectory

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EMBiomeStreamDirectory_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __29__EMBiomeStreamDirectory_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

+ (id)url
{
  v2 = +[EMPersistenceLayoutManager mailDataDirectory];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"BiomeStream" isDirectory:1 relativeToURL:v2];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6 & 1) != 0 || ((v14 = 0, v7 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v14], (v8 = v14) == 0) ? (v9 = v7) : (v9 = 0), (v9))
  {
    v10 = v3;
  }

  else
  {
    v11 = v8;
    v12 = +[EMBiomeStreamDirectory log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[(EMBiomeStreamDirectory *)v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)url
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Error creating Biome storage directory: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end