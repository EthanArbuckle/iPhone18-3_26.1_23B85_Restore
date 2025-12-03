@interface FBSApplicationLibraryConfiguration
- (FBSApplicationLibraryConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setApplicationInfoClass:(Class)class;
- (void)setApplicationPlaceholderClass:(Class)class;
@end

@implementation FBSApplicationLibraryConfiguration

- (FBSApplicationLibraryConfiguration)init
{
  v10.receiver = self;
  v10.super_class = FBSApplicationLibraryConfiguration;
  v2 = [(FBSApplicationLibraryConfiguration *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    applicationInfoClass = v2->_applicationInfoClass;
    v2->_applicationInfoClass = v3;

    v5 = objc_opt_class();
    applicationPlaceholderClass = v2->_applicationPlaceholderClass;
    v2->_applicationPlaceholderClass = v5;

    *&v2->_personaAware = 0;
    installedApplicationFilter = v2->_installedApplicationFilter;
    v2->_installedApplicationFilter = 0;

    placeholderFilter = v2->_placeholderFilter;
    v2->_placeholderFilter = 0;
  }

  return v2;
}

- (void)setApplicationInfoClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [(FBSApplicationLibraryConfiguration *)class setApplicationInfoClass:a2];
  }

  applicationInfoClass = self->_applicationInfoClass;
  p_applicationInfoClass = &self->_applicationInfoClass;
  if (applicationInfoClass != class)
  {

    objc_storeStrong(p_applicationInfoClass, class);
  }
}

- (void)setApplicationPlaceholderClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [(FBSApplicationLibraryConfiguration *)class setApplicationPlaceholderClass:a2];
  }

  applicationPlaceholderClass = self->_applicationPlaceholderClass;
  p_applicationPlaceholderClass = &self->_applicationPlaceholderClass;
  if (applicationPlaceholderClass != class)
  {

    objc_storeStrong(p_applicationPlaceholderClass, class);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FBSApplicationLibraryConfiguration);
  [(FBSApplicationLibraryConfiguration *)v4 setApplicationInfoClass:self->_applicationInfoClass];
  [(FBSApplicationLibraryConfiguration *)v4 setApplicationPlaceholderClass:self->_applicationPlaceholderClass];
  [(FBSApplicationLibraryConfiguration *)v4 setAllowConcurrentLoading:self->_allowConcurrentLoading];
  [(FBSApplicationLibraryConfiguration *)v4 setInstalledApplicationFilter:self->_installedApplicationFilter];
  [(FBSApplicationLibraryConfiguration *)v4 setPlaceholderFilter:self->_placeholderFilter];
  [(FBSApplicationLibraryConfiguration *)v4 setApplicationIdentityFilter:self->_applicationIdentityFilter];
  [(FBSApplicationLibraryConfiguration *)v4 setPlaceholderIdentityFilter:self->_placeholderIdentityFilter];
  [(FBSApplicationLibraryConfiguration *)v4 setPersonaAware:self->_personaAware];
  return v4;
}

- (void)setApplicationInfoClass:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must specify a class that subclasses from FBSApplicationInfo : was passed %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v9 = @"FBSApplicationLibraryConfiguration.m";
    v10 = 1024;
    v11 = 36;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setApplicationPlaceholderClass:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must specify a class that subclasses from FBSApplicationPlaceholder : was passed %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v9 = @"FBSApplicationLibraryConfiguration.m";
    v10 = 1024;
    v11 = 45;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end