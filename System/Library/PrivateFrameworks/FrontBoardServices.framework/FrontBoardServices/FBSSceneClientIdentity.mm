@interface FBSSceneClientIdentity
+ (id)identityForBundleID:(id)a3;
+ (id)identityForInjectedEndpointToProcessIdentity:(id)a3;
+ (id)identityForManagedEndpointOfProcessIdentity:(id)a3;
+ (id)identityForProcessIdentity:(id)a3;
+ (id)localIdentity;
- (BOOL)isEqual:(id)a3;
- (FBSSceneClientIdentity)initWithCoder:(id)a3;
- (id)_initWithLocal:(BOOL)a3 direct:(BOOL)a4 identity:(id)a5 description:(id)a6;
- (id)bundleIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FBSSceneClientIdentity

+ (id)localIdentity
{
  v2 = [FBSSceneClientIdentity alloc];
  v3 = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
  v4 = [(FBSSceneClientIdentity *)v2 _initWithLocal:1 direct:0 identity:v3 description:0];

  return v4;
}

- (id)bundleIdentifier
{
  v2 = [(FBSSceneClientIdentity *)self processIdentity];
  v3 = [v2 embeddedApplicationIdentifier];

  return v3;
}

+ (id)identityForBundleID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [FBSSceneClientIdentity identityForBundleID:a2];
  }

  v5 = v4;
  v6 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:v4];
  if (!v6)
  {
    [(FBSSceneClientIdentity *)v5 identityForBundleID:a2];
  }

  v7 = v6;
  v8 = [FBSSceneClientIdentity identityForProcessIdentity:v6];

  return v8;
}

+ (id)identityForProcessIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [FBSSceneClientIdentity identityForProcessIdentity:a2];
  }

  v5 = v4;
  v6 = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    +[FBSSceneClientIdentity localIdentity];
  }

  else
  {
    [FBSSceneClientIdentity defaultIdentityForProcessIdentity:v5];
  }
  v8 = ;

  return v8;
}

+ (id)identityForInjectedEndpointToProcessIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [FBSSceneClientIdentity identityForInjectedEndpointToProcessIdentity:a2];
  }

  v5 = v4;
  v6 = [[FBSSceneClientIdentity alloc] _initWithLocal:0 direct:0 identity:v4 description:0];

  return v6;
}

+ (id)identityForManagedEndpointOfProcessIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [FBSSceneClientIdentity identityForManagedEndpointOfProcessIdentity:a2];
  }

  v5 = v4;
  v6 = [[FBSSceneClientIdentity alloc] _initWithLocal:0 direct:1 identity:v4 description:0];

  return v6;
}

- (id)_initWithLocal:(BOOL)a3 direct:(BOOL)a4 identity:(id)a5 description:(id)a6
{
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = FBSSceneClientIdentity;
  v13 = [(FBSSceneClientIdentity *)&v21 init];
  v14 = v13;
  if (v13)
  {
    v13->_local = a3;
    v13->_direct = a4;
    objc_storeStrong(&v13->_processIdentity, a5);
    objc_storeStrong(&v14->_description, a6);
    description = v14->_description;
    if (!description)
    {
      if (v14->_local)
      {
        v14->_description = @"local-sync";
      }

      else if (v14->_direct)
      {
        v16 = MEMORY[0x1E696AEC0];
        description = [(RBSProcessIdentity *)v14->_processIdentity description];
        v17 = [v16 stringWithFormat:@"%@:%@", description, @"com.apple.frontboard.workspace-service"];
        v18 = v14->_description;
        v14->_description = v17;
      }

      else
      {
        v19 = [(RBSProcessIdentity *)v14->_processIdentity description];
        description = v14->_description;
        v14->_description = v19;
      }
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      BSEqualBools();
    }

    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(FBSSceneClientIdentity *)self description];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_local)
  {
    [v4 encodeBool:1 forKey:@"local"];
  }

  if (self->_direct)
  {
    [v4 encodeBool:1 forKey:@"direct"];
  }

  [v4 encodeObject:self->_processIdentity forKey:@"identity"];
  [v4 encodeObject:self->_description forKey:@"desc"];
}

- (FBSSceneClientIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"local"];
  v6 = [v4 decodeBoolForKey:@"direct"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desc"];

  v9 = [(FBSSceneClientIdentity *)self _initWithLocal:v5 direct:v6 identity:v7 description:v8];
  return v9;
}

+ (void)identityForBundleID:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to get an RBSProcessIdentity for bundleID=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)identityForBundleID:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bundleID", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)identityForProcessIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"processIdentity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)identityForInjectedEndpointToProcessIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"processIdentity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)identityForManagedEndpointOfProcessIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"processIdentity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end