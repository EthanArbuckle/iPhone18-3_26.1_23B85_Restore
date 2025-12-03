@interface FBSBundleInfo
- (id)_initWithBundleProxy:(id)proxy bundleIdentifier:(id)identifier url:(id)url;
- (id)_initWithBundleProxy:(id)proxy overrideURL:(id)l;
- (id)applicationIdentity;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBSBundleInfo

- (id)_initWithBundleProxy:(id)proxy overrideURL:(id)l
{
  proxyCopy = proxy;
  lCopy = l;
  if (!proxyCopy)
  {
    [FBSBundleInfo _initWithBundleProxy:a2 overrideURL:?];
  }

  v9 = lCopy;
  bundleIdentifier = [proxyCopy bundleIdentifier];
  if (v9)
  {
    v11 = [(FBSBundleInfo *)self _initWithBundleProxy:proxyCopy bundleIdentifier:bundleIdentifier url:v9];
  }

  else
  {
    bundleURL = [proxyCopy bundleURL];
    v11 = [(FBSBundleInfo *)self _initWithBundleProxy:proxyCopy bundleIdentifier:bundleIdentifier url:bundleURL];
  }

  return v11;
}

- (id)_initWithBundleProxy:(id)proxy bundleIdentifier:(id)identifier url:(id)url
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  urlCopy = url;
  if (!identifierCopy)
  {
    [FBSBundleInfo _initWithBundleProxy:a2 bundleIdentifier:? url:?];
  }

  v12 = urlCopy;
  if (!urlCopy)
  {
    [FBSBundleInfo _initWithBundleProxy:a2 bundleIdentifier:? url:?];
  }

  v31.receiver = self;
  v31.super_class = FBSBundleInfo;
  v13 = [(FBSBundleInfo *)&v31 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v14;

    v16 = [v12 copy];
    bundleURL = v13->_bundleURL;
    v13->_bundleURL = v16;

    localizedName = [proxyCopy localizedName];
    v19 = [localizedName copy];
    displayName = v13->_displayName;
    v13->_displayName = v19;

    bundleVersion = [proxyCopy bundleVersion];
    v22 = [bundleVersion copy];
    bundleVersion = v13->_bundleVersion;
    v13->_bundleVersion = v22;

    bundleType = [proxyCopy bundleType];
    v25 = [bundleType copy];
    bundleType = v13->_bundleType;
    v13->_bundleType = v25;

    v13->_sequenceNumber = [proxyCopy sequenceNumber];
    cacheGUID = [proxyCopy cacheGUID];
    v28 = [cacheGUID copy];
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
    selfCopy = self;
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
  succinctDescriptionBuilder = [(FBSBundleInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(FBSBundleInfo *)self bundleIdentifier];
  displayName = [(FBSBundleInfo *)self displayName];
  v7 = [v4 stringWithFormat:@"%@ (%@)", bundleIdentifier, displayName];
  v8 = [v3 appendObject:v7 withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSBundleInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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