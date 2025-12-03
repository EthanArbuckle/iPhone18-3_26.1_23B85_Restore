@interface CalLocationBundle
+ (id)_path;
+ (id)bundle;
+ (void)bundle;
@end

@implementation CalLocationBundle

+ (id)bundle
{
  _path = [objc_opt_class() _path];
  v3 = [MEMORY[0x1E696AAE8] bundleWithPath:_path];
  if (!v3)
  {
    v4 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(CalLocationBundle *)_path];
    }
  }

  return v3;
}

+ (id)_path
{
  v2 = __CalSystemRootDirectory();
  v3 = [v2 stringByAppendingString:@"/System/Library/LocationBundles/CalendarLocation.bundle"];

  return v3;
}

+ (void)bundle
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Could not find location bundle at path: [%@].", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end