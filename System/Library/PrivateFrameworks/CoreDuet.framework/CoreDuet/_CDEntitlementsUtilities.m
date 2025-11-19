@interface _CDEntitlementsUtilities
+ (id)entitlementValueForKey:(id)a3;
@end

@implementation _CDEntitlementsUtilities

+ (id)entitlementValueForKey:(id)a3
{
  v3 = a3;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    if (error)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(_CDEntitlementsUtilities *)v3 entitlementValueForKey:?];
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_CDEntitlementsUtilities entitlementValueForKey:];
    }

    v6 = 0;
  }

  return v6;
}

+ (void)entitlementValueForKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to get entitlement '%@': %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end