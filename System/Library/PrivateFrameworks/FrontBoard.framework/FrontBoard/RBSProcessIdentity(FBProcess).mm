@interface RBSProcessIdentity(FBProcess)
- (id)fb_processClass;
- (void)fb_processClass;
@end

@implementation RBSProcessIdentity(FBProcess)

- (id)fb_processClass
{
  v10 = 0;
  v2 = [a1 treatedAsAnAppByFrontBoard:&v10];
  v3 = v10;
  if (v3)
  {
    v4 = FBLogProcess();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessIdentity(FBProcess) fb_processClass];
    }
  }

  if (v2)
  {
    v5 = off_1E783A820;
  }

  else
  {
    v6 = [a1 isXPCService];
    v5 = off_1E783A898;
    if (v6)
    {
      v5 = off_1E783A848;
    }
  }

  v7 = *v5;
  v8 = objc_opt_class();

  return v8;
}

- (void)fb_processClass
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  v4 = 2112;
  v5 = v0;
  OUTLINED_FUNCTION_16(&dword_1A89DD000, v1, v1, "treatedAsAnAppByFrontBoard for %@ returned error %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

@end