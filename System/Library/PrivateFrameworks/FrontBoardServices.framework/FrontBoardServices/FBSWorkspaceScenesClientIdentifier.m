@interface FBSWorkspaceScenesClientIdentifier
+ (FBSWorkspaceScenesClientIdentifier)identifierWithHostEndpoint:(uint64_t)a1;
+ (FBSWorkspaceScenesClientIdentifier)identifierWithPeer:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (id)tokenWithIdentity:(uint64_t)a1;
- (unint64_t)hash;
@end

@implementation FBSWorkspaceScenesClientIdentifier

- (unint64_t)hash
{
  hostEndpoint = self->_hostEndpoint;
  if (!hostEndpoint)
  {
    hostEndpoint = self->_peer;
  }

  return [(BSServiceConnectionEndpoint *)hostEndpoint hash];
}

+ (FBSWorkspaceScenesClientIdentifier)identifierWithHostEndpoint:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    [FBSWorkspaceScenesClientIdentifier identifierWithHostEndpoint:?];
  }

  v3 = objc_alloc_init(FBSWorkspaceScenesClientIdentifier);
  v4 = [v2 copy];
  hostEndpoint = v3->_hostEndpoint;
  v3->_hostEndpoint = v4;

  peer = v3->_peer;
  v3->_peer = 0;

  v7 = [v2 instance];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v2 targetDescription];
    v10 = [v8 stringWithFormat:@"%@:%@", v9, v7];
    description = v3->_description;
    v3->_description = v10;
  }

  else
  {
    v12 = [v2 targetDescription];
    v9 = v3->_description;
    v3->_description = v12;
  }

  return v3;
}

+ (FBSWorkspaceScenesClientIdentifier)identifierWithPeer:(uint64_t)a1
{
  v3 = a2;
  objc_opt_self();
  if (!v3)
  {
    [FBSWorkspaceScenesClientIdentifier identifierWithPeer:?];
  }

  v4 = [v3 remoteToken];
  v5 = [v4 pid];

  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(FBSWorkspaceScenesClientIdentifier);
    hostEndpoint = v6->_hostEndpoint;
    v6->_hostEndpoint = 0;

    objc_storeStrong(&v6->_peer, a2);
    v6->_host = v5;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i(%p)", v5, v3];
    description = v6->_description;
    v6->_description = v8;
  }

  return v6;
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
      BSEqualObjects();
    }

    v6 = 0;
  }

  return v6;
}

- (id)tokenWithIdentity:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 16))
    {
      v5 = *(a1 + 32);
      v6 = [MEMORY[0x1E69C75F0] identityOfCurrentProcess];
      v7 = [v4 internalWorkspaceIdentifier];
      v8 = [v4 identifier];
      v9 = [FBSSceneIdentityToken tokenWithHostPID:v5 directEndpointTarget:v6 workspace:v7 identifier:v8];
    }

    else
    {
      v10 = *(a1 + 8);
      v6 = [v3 internalWorkspaceIdentifier];
      v7 = [v4 identifier];
      v9 = [FBSSceneIdentityToken tokenWithHostEndpoint:v10 workspace:v6 identifier:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)identifierWithHostEndpoint:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"hostEndpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)identifierWithPeer:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"peer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end