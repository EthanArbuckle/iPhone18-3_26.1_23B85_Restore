@interface _FBDarkBootHelper
- (BOOL)isBootingDark;
- (void)_setDarkBootEnabled:(BOOL)enabled;
- (void)isBootingDark;
@end

@implementation _FBDarkBootHelper

- (BOOL)isBootingDark
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 4;
  v2 = sysctlbyname("kern.darkboot", &v13, &v12, 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = FBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(_FBDarkBootHelper *)v3 isBootingDark];
    }

LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  v8 = v13;
  v9 = FBLogCommon();
  v4 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithBool:0];
      *buf = 138543618;
      v15 = v11;
      v16 = 1024;
      v17 = v13;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_INFO, "read darkboot flag = %{public}@ (%i)", buf, 0x12u);
    }

    goto LABEL_4;
  }

  v5 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    *buf = 138543618;
    v15 = v10;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "read darkboot flag = %{public}@ (%i)", buf, 0x12u);
  }

LABEL_5:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_setDarkBootEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  if (enabled)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v10 = v4;
  v5 = sysctlbyname("kern.darkboot", 0, 0, &v10, 4uLL);
  v6 = FBLogCommon();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_FBDarkBootHelper *)v5 _setDarkBootEnabled:v7];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (enabledCopy)
    {
      v8 = "YES";
    }

    *buf = 136446210;
    v12 = v8;
    _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "Set darkBoot = %{public}s", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)isBootingDark
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "failed to read darkboot state ->  %{darwin.errno}i", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_setDarkBootEnabled:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "Failed to set darkboot state ->  %{darwin.errno}i : do you have the entitlement (com.apple.private.kernel.darkboot)?", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end