@interface FBSBundleInfo
- (id)_initWithBundleProxy:(id)a3 bundleIdentifier:(id)a4 url:(id)a5;
- (id)_initWithBundleProxy:(id)a3 overrideURL:(id)a4;
- (id)applicationIdentity;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBSBundleInfo

- (id)_initWithBundleProxy:(id)a3 overrideURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSBundleInfo _initWithBundleProxy:a2 overrideURL:?];
  }

  v9 = v8;
  v10 = [v7 bundleIdentifier];
  if (v9)
  {
    v11 = [(FBSBundleInfo *)self _initWithBundleProxy:v7 bundleIdentifier:v10 url:v9];
  }

  else
  {
    v12 = [v7 bundleURL];
    v11 = [(FBSBundleInfo *)self _initWithBundleProxy:v7 bundleIdentifier:v10 url:v12];
  }

  return v11;
}

- (id)_initWithBundleProxy:(id)a3 bundleIdentifier:(id)a4 url:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    [FBSBundleInfo _initWithBundleProxy:a2 bundleIdentifier:? url:?];
  }

  v12 = v11;
  if (!v11)
  {
    [FBSBundleInfo _initWithBundleProxy:a2 bundleIdentifier:? url:?];
  }

  v31.receiver = self;
  v31.super_class = FBSBundleInfo;
  v13 = [(FBSBundleInfo *)&v31 init];
  if (v13)
  {
    v14 = [v10 copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v14;

    v16 = [v12 copy];
    bundleURL = v13->_bundleURL;
    v13->_bundleURL = v16;

    v18 = [v9 localizedName];
    v19 = [v18 copy];
    displayName = v13->_displayName;
    v13->_displayName = v19;

    v21 = [v9 bundleVersion];
    v22 = [v21 copy];
    bundleVersion = v13->_bundleVersion;
    v13->_bundleVersion = v22;

    v24 = [v9 bundleType];
    v25 = [v24 copy];
    bundleType = v13->_bundleType;
    v13->_bundleType = v25;

    v13->_sequenceNumber = [v9 sequenceNumber];
    v27 = [v9 cacheGUID];
    v28 = [v27 copy];
    cacheGUID = v13->_cacheGUID;
    v13->_cacheGUID = v28;
  }

  return v13;
}

- (id)applicationIdentity
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must be implemented by subclass"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    v14 = 2114;
    v15 = @"FBSBundleInfo.m";
    v16 = 1024;
    v17 = 76;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)succinctDescription
{
  v2 = [(FBSBundleInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(FBSBundleInfo *)self bundleIdentifier];
  v6 = [(FBSBundleInfo *)self displayName];
  v7 = [v4 stringWithFormat:@"%@ (%@)", v5, v6];
  v8 = [v3 appendObject:v7 withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSBundleInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)_initWithBundleProxy:(const char *)a1 overrideURL:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"proxy", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithBundleProxy:(const char *)a1 bundleIdentifier:url:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"bundleURL", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithBundleProxy:(const char *)a1 bundleIdentifier:url:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"bundleIdentifier", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end