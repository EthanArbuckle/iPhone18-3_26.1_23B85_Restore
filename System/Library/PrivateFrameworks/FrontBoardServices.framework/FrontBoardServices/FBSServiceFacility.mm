@interface FBSServiceFacility
- (BOOL)queue_clientDidConnect:(id)a3 withMessage:(id)a4;
- (FBSServiceFacility)init;
- (FBSServiceFacility)initWithIdentifier:(id)a3 queue:(id)a4;
- (NSSet)clients;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)dealloc;
- (void)invalidate;
- (void)queue_clientDidDisconnect:(id)a3;
- (void)queue_handleMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5;
- (void)sendMessage:(id)a3 withType:(int64_t)a4 toClients:(id)a5;
@end

@implementation FBSServiceFacility

- (FBSServiceFacility)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong initializer"];
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
    v15 = @"FBSServiceFacility.m";
    v16 = 1024;
    v17 = 34;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSServiceFacility)initWithIdentifier:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSServiceFacility initWithIdentifier:a2 queue:?];
  }

  v9 = v8;
  if (!v8)
  {
    [FBSServiceFacility initWithIdentifier:a2 queue:?];
  }

  v20.receiver = self;
  v20.super_class = FBSServiceFacility;
  v10 = [(FBSServiceFacility *)&v20 init];
  if (v10)
  {
    v11 = [v7 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_queue, a4);
    v13 = [MEMORY[0x1E695DFA8] set];
    clients = v10->_clients;
    v10->_clients = v13;

    v15 = [(NSMutableSet *)v10->_clients copy];
    clients_immutable = v10->_clients_immutable;
    v10->_clients_immutable = v15;

    v10->_clients_immutable_lock._os_unfair_lock_opaque = 0;
    v17 = FBSGetServiceFacilityManager();
    if (!v17)
    {
      [FBSServiceFacility initWithIdentifier:a2 queue:?];
    }

    v18 = v17;
    [v17 addFacility:v10];
  }

  return v10;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_invalidated == __objc_yes", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)invalidate
{
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  self->_invalidated = 1;
  v3 = FBSGetServiceFacilityManager();
  [v3 removeFacility:self];
}

- (NSSet)clients
{
  os_unfair_lock_lock(&self->_clients_immutable_lock);
  v3 = self->_clients_immutable;
  os_unfair_lock_unlock(&self->_clients_immutable_lock);

  return v3;
}

- (BOOL)queue_clientDidConnect:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  v8 = [(FBSServiceFacility *)self shouldAllowClientConnection:v6 withMessage:v7];
  if (v8)
  {
    [(NSMutableSet *)self->_clients addObject:v6];
    os_unfair_lock_lock(&self->_clients_immutable_lock);
    v9 = [(NSMutableSet *)self->_clients copy];
    clients_immutable = self->_clients_immutable;
    self->_clients_immutable = v9;

    os_unfair_lock_unlock(&self->_clients_immutable_lock);
    [(FBSServiceFacility *)self noteClientDidConnect:v6 withMessage:v7];
  }

  else
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FBSServiceFacility queue_clientDidConnect:v6 withMessage:?];
    }
  }

  return v8;
}

- (void)queue_clientDidDisconnect:(id)a3
{
  v9 = a3;
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  identifier = self->_identifier;
  v5 = [v9 facilityID];
  if ([(NSString *)identifier isEqualToString:v5])
  {
    v6 = [(NSMutableSet *)self->_clients containsObject:v9];

    if (v6)
    {
      [(NSMutableSet *)self->_clients removeObject:v9];
      os_unfair_lock_lock(&self->_clients_immutable_lock);
      v7 = [(NSMutableSet *)self->_clients copy];
      clients_immutable = self->_clients_immutable;
      self->_clients_immutable = v7;

      os_unfair_lock_unlock(&self->_clients_immutable_lock);
      [(FBSServiceFacility *)self noteClientDidDisconnect:v9];
    }
  }

  else
  {
  }
}

- (void)queue_handleMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  if ([(NSMutableSet *)self->_clients containsObject:v9])
  {
    [(FBSServiceFacility *)self noteDidReceiveMessage:v8 withType:a4 fromClient:v9];
  }

  else
  {
    v10 = FBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FBSServiceFacility queue_handleMessage:v9 withType:? fromClient:?];
    }
  }
}

- (void)sendMessage:(id)a3 withType:(int64_t)a4 toClients:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 payload];
  if (v10)
  {
    v20 = v10;
    v19 = a2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            [FBSServiceFacility sendMessage:v19 withType:? toClients:?];
          }

          v16 = [v15 clientHandle_messageBuilder];
          v17 = [v16 createMessage];

          [v17 encodeInt64:a4 forKey:@"message"];
          v18 = [v8 payload];
          [v17 encodeXPCObject:v18 forKey:@"fbs_message"];

          [v17 send];
        }

        v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v10 = v20;
  }
}

- (id)succinctDescription
{
  v2 = [(FBSServiceFacility *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [(FBSServiceFacility *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"ID"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSServiceFacility *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSServiceFacility *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FBSServiceFacility_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __60__FBSServiceFacility_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _prerequisiteMilestones];
  v4 = [v3 allObjects];
  [v2 appendArraySection:v4 withName:@"prereqMilestones" skipIfEmpty:1];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) clients];
  v6 = [v7 allObjects];
  [v5 appendArraySection:v6 withName:@"clients" skipIfEmpty:1];
}

- (void)initWithIdentifier:(char *)a1 queue:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no service facility manager found"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    v7 = @"FBSServiceFacility.m";
    v8 = 1024;
    v9 = 51;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithIdentifier:(char *)a1 queue:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"queue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithIdentifier:(char *)a1 queue:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identifier != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)queue_clientDidConnect:(uint64_t)a1 withMessage:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 prettyProcessDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(&dword_1A2DBB000, v6, v7, "[%{public}@] Rejecting client %{public}@.", v8, v9, v10, v11, v12);
}

- (void)queue_handleMessage:(uint64_t)a1 withType:(void *)a2 fromClient:.cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 prettyProcessDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0(&dword_1A2DBB000, v6, v7, "[%{public}@] Ignoring message from untracked client %{public}@.", v8, v9, v10, v11, v12);
}

- (void)sendMessage:(char *)a1 withType:toClients:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client must be provided by the system."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    v7 = @"FBSServiceFacility.m";
    v8 = 1024;
    v9 = 129;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end