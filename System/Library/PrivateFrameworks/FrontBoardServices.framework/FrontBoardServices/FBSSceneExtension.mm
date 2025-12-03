@interface FBSSceneExtension
+ (id)_frameworkNameLoadingIfNeeded:(BOOL)needed;
+ (id)alloc;
+ (id)description;
+ (void)initialize;
@end

@implementation FBSSceneExtension

+ (void)initialize
{
  v2 = NSStringFromClass(self);
  v8 = [(objc_class *)self _frameworkNameLoadingIfNeeded:1];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (id)alloc
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(self);
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
    selfCopy = self;
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

+ (id)_frameworkNameLoadingIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  os_unfair_lock_lock(&_frameworkNameLoadingIfNeeded____Lock);
  v5 = objc_getAssociatedObject(self, _FBSFrameworkKey);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !neededCopy;
  }

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    os_unfair_lock_unlock(&_frameworkNameLoadingIfNeeded____Lock);
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:self];
    executablePath = [v8 executablePath];
    lastPathComponent = [executablePath lastPathComponent];
    v11 = lastPathComponent;
    v12 = @"(unknown)";
    if (lastPathComponent)
    {
      v12 = lastPathComponent;
    }

    v5 = v12;

    os_unfair_lock_lock(&_frameworkNameLoadingIfNeeded____Lock);
    objc_setAssociatedObject(self, _FBSFrameworkKey, v5, 1);
    objc_autoreleasePoolPop(v7);
  }

  os_unfair_lock_unlock(&_frameworkNameLoadingIfNeeded____Lock);

  return v5;
}

+ (id)description
{
  v3 = [self _frameworkNameLoadingIfNeeded:0];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = NSStringFromClass(self);
    v6 = [v4 stringWithFormat:@"%@ (%@)", v5, v3];
  }

  else
  {
    v6 = NSStringFromClass(self);
  }

  return v6;
}

@end