@interface NSData(IconServicesAdditions)
+ (id)__is__bookmarkDataWithContentsOfURL:()IconServicesAdditions;
+ (id)__is__dataWithContentsOfURL:()IconServicesAdditions;
- (id)__is__bookmarkResourcePropertyForKey:()IconServicesAdditions;
@end

@implementation NSData(IconServicesAdditions)

+ (id)__is__bookmarkDataWithContentsOfURL:()IconServicesAdditions
{
  v3 = a3;
  v7 = 0;
  v4 = MEMORY[0x1AC55AC70](0, v3, &v7);
  if (!v4)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(NSData(IconServicesAdditions) *)v3 __is__bookmarkDataWithContentsOfURL:v5];
    }
  }

  return v4;
}

- (id)__is__bookmarkResourcePropertyForKey:()IconServicesAdditions
{
  v3 = MEMORY[0x1AC55AC80](0, a3, a1);

  return v3;
}

+ (id)__is__dataWithContentsOfURL:()IconServicesAdditions
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _IF_isOnBootVolume];
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)__is__bookmarkDataWithContentsOfURL:()IconServicesAdditions .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1A77B8000, log, OS_LOG_TYPE_DEBUG, "Failed to read bookmarkm data from URL %@ with error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end