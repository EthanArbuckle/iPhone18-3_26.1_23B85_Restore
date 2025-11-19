@interface FBSSceneExtension
+ (id)_frameworkNameLoadingIfNeeded:(BOOL)a3;
+ (id)alloc;
+ (id)description;
+ (void)initialize;
@end

@implementation FBSSceneExtension

+ (void)initialize
{
  v2 = NSStringFromClass(a1);
  v8 = [(objc_class *)a1 _frameworkNameLoadingIfNeeded:1];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (id)alloc
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a1);
  v6 = [v4 stringWithFormat:@"%@ is not intended to be instantiated", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = a1;
    v16 = 2114;
    v17 = @"FBSSceneExtension.m";
    v18 = 1024;
    v19 = 220;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)_frameworkNameLoadingIfNeeded:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_frameworkNameLoadingIfNeeded____Lock);
  v5 = objc_getAssociatedObject(a1, _FBSFrameworkKey);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    os_unfair_lock_unlock(&_frameworkNameLoadingIfNeeded____Lock);
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
    v9 = [v8 executablePath];
    v10 = [v9 lastPathComponent];
    v11 = v10;
    v12 = @"(unknown)";
    if (v10)
    {
      v12 = v10;
    }

    v5 = v12;

    os_unfair_lock_lock(&_frameworkNameLoadingIfNeeded____Lock);
    objc_setAssociatedObject(a1, _FBSFrameworkKey, v5, 1);
    objc_autoreleasePoolPop(v7);
  }

  os_unfair_lock_unlock(&_frameworkNameLoadingIfNeeded____Lock);

  return v5;
}

+ (id)description
{
  v3 = [a1 _frameworkNameLoadingIfNeeded:0];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = NSStringFromClass(a1);
    v6 = [v4 stringWithFormat:@"%@ (%@)", v5, v3];
  }

  else
  {
    v6 = NSStringFromClass(a1);
  }

  return v6;
}

@end