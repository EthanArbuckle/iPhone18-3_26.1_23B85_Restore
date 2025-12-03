@interface FBSServiceFacility
- (BOOL)queue_clientDidConnect:(id)connect withMessage:(id)message;
- (FBSServiceFacility)init;
- (FBSServiceFacility)initWithIdentifier:(id)identifier queue:(id)queue;
- (NSSet)clients;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)dealloc;
- (void)invalidate;
- (void)queue_clientDidDisconnect:(id)disconnect;
- (void)queue_handleMessage:(id)message withType:(int64_t)type fromClient:(id)client;
- (void)sendMessage:(id)message withType:(int64_t)type toClients:(id)clients;
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
    selfCopy = self;
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

- (FBSServiceFacility)initWithIdentifier:(id)identifier queue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  if (!identifierCopy)
  {
    [FBSServiceFacility initWithIdentifier:a2 queue:?];
  }

  v9 = queueCopy;
  if (!queueCopy)
  {
    [FBSServiceFacility initWithIdentifier:a2 queue:?];
  }

  v20.receiver = self;
  v20.super_class = FBSServiceFacility;
  v10 = [(FBSServiceFacility *)&v20 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_queue, queue);
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
    NSStringFromSelector(self);
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

- (BOOL)queue_clientDidConnect:(id)connect withMessage:(id)message
{
  connectCopy = connect;
  messageCopy = message;
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  v8 = [(FBSServiceFacility *)self shouldAllowClientConnection:connectCopy withMessage:messageCopy];
  if (v8)
  {
    [(NSMutableSet *)self->_clients addObject:connectCopy];
    os_unfair_lock_lock(&self->_clients_immutable_lock);
    v9 = [(NSMutableSet *)self->_clients copy];
    clients_immutable = self->_clients_immutable;
    self->_clients_immutable = v9;

    os_unfair_lock_unlock(&self->_clients_immutable_lock);
    [(FBSServiceFacility *)self noteClientDidConnect:connectCopy withMessage:messageCopy];
  }

  else
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FBSServiceFacility queue_clientDidConnect:connectCopy withMessage:?];
    }
  }

  return v8;
}

- (void)queue_clientDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  identifier = self->_identifier;
  facilityID = [disconnectCopy facilityID];
  if ([(NSString *)identifier isEqualToString:facilityID])
  {
    v6 = [(NSMutableSet *)self->_clients containsObject:disconnectCopy];

    if (v6)
    {
      [(NSMutableSet *)self->_clients removeObject:disconnectCopy];
      os_unfair_lock_lock(&self->_clients_immutable_lock);
      v7 = [(NSMutableSet *)self->_clients copy];
      clients_immutable = self->_clients_immutable;
      self->_clients_immutable = v7;

      os_unfair_lock_unlock(&self->_clients_immutable_lock);
      [(FBSServiceFacility *)self noteClientDidDisconnect:disconnectCopy];
    }
  }

  else
  {
  }
}

- (void)queue_handleMessage:(id)message withType:(int64_t)type fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  [(BSServiceQueue *)self->_queue assertBarrierOnQueue];
  if ([(NSMutableSet *)self->_clients containsObject:clientCopy])
  {
    [(FBSServiceFacility *)self noteDidReceiveMessage:messageCopy withType:type fromClient:clientCopy];
  }

  else
  {
    v10 = FBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FBSServiceFacility queue_handleMessage:clientCopy withType:? fromClient:?];
    }
  }
}

- (void)sendMessage:(id)message withType:(int64_t)type toClients:(id)clients
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  clientsCopy = clients;
  payload = [messageCopy payload];
  if (payload)
  {
    v20 = payload;
    v19 = a2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = clientsCopy;
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

          clientHandle_messageBuilder = [v15 clientHandle_messageBuilder];
          createMessage = [clientHandle_messageBuilder createMessage];

          [createMessage encodeInt64:type forKey:@"message"];
          payload2 = [messageCopy payload];
          [createMessage encodeXPCObject:payload2 forKey:@"fbs_message"];

          [createMessage send];
        }

        v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    payload = v20;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSServiceFacility *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  identifier = [(FBSServiceFacility *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"ID"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSServiceFacility *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSServiceFacility *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FBSServiceFacility_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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