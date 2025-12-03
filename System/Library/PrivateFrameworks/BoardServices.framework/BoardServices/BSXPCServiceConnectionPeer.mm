@interface BSXPCServiceConnectionPeer
+ (id)peerOfConnection:(uint64_t)connection;
+ (void)invalidateConnection:(uint64_t)connection;
- (BSXPCServiceConnectionPeer)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BSXPCServiceConnectionPeer

- (BSXPCServiceConnectionPeer)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionPeer"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionPeer.m";
    v18 = 1024;
    v19 = 36;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)peerOfConnection:(uint64_t)connection
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v19 = v3;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"connection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(sel_peerOfConnection_);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *v25 = 138544642;
      *&v25[4] = v21;
      *&v25[12] = 2114;
      *&v25[14] = v23;
      v26 = 2048;
      v27 = v19;
      v28 = 2114;
      v29 = @"BSXPCServiceConnectionPeer.m";
      v30 = 1024;
      v31 = 57;
      v32 = 2114;
      v33 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v25, 0x3Au);
    }

    v24 = v20;
    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84826CLL);
  }

  v4 = BSPIDForXPCConnection();
  if (v4 < 1)
  {
    v8 = BSServiceXPCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v25 = 138412290;
      *&v25[4] = v2;
      _os_log_error_impl(&dword_19A821000, v8, OS_LOG_TYPE_ERROR, "Unable to create a peer for a connection with no PID: %@", v25, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    os_unfair_lock_lock(&_MergedGlobals_6);
    v6 = [qword_1ED4A7C08 objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      os_unfair_lock_lock(v6 + 2);
      [*(v7 + 2) addObject:v2];
      ++*(v7 + 3);
      os_unfair_lock_unlock(v7 + 2);
    }

    else
    {
      v9 = [BSXPCServiceConnectionPeer alloc];
      v10 = v2;
      if (v9)
      {
        *v25 = v9;
        *&v25[8] = BSXPCServiceConnectionPeer;
        v7 = objc_msgSendSuper2(v25, sel_init);
        if (v7)
        {
          v11 = [MEMORY[0x1E698E740] processHandleForXPCConnection:v10];
          v12 = *(v7 + 4);
          *(v7 + 4) = v11;

          *(v7 + 2) = 0;
          v13 = [MEMORY[0x1E695DFA8] setWithObject:v10];
          v14 = *(v7 + 2);
          *(v7 + 2) = v13;
        }
      }

      else
      {
        v7 = 0;
      }

      if (qword_1ED4A7C08)
      {
        [qword_1ED4A7C08 setObject:v7 forKey:v5];
      }

      else
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithObject:v7 forKey:v5];
        v16 = qword_1ED4A7C08;
        qword_1ED4A7C08 = v15;
      }
    }

    os_unfair_lock_unlock(&_MergedGlobals_6);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)invalidateConnection:(uint64_t)connection
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:BSPIDForXPCConnection()];
    os_unfair_lock_lock(&_MergedGlobals_6);
    v4 = [qword_1ED4A7C08 objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      os_unfair_lock_lock(v4 + 2);
      if ([*&v5[4]._os_unfair_lock_opaque count])
      {
        [*&v5[4]._os_unfair_lock_opaque removeObject:v2];
        v6 = *&v5[6]._os_unfair_lock_opaque;
        if (![*&v5[4]._os_unfair_lock_opaque count])
        {
          v7 = dispatch_get_global_queue(17, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __51__BSXPCServiceConnectionPeer_invalidateConnection___block_invoke;
          block[3] = &unk_1E7520960;
          v9 = v5;
          v11 = v6;
          v10 = v3;
          dispatch_async(v7, block);
        }
      }

      os_unfair_lock_unlock(v5 + 2);
    }

    os_unfair_lock_unlock(&_MergedGlobals_6);
  }
}

void __51__BSXPCServiceConnectionPeer_invalidateConnection___block_invoke(void *a1)
{
  os_unfair_lock_lock(&_MergedGlobals_6);
  os_unfair_lock_lock((a1[4] + 8));
  v2 = a1[4];
  if (a1[6] == v2[3])
  {
    v3 = [qword_1ED4A7C08 objectForKey:a1[5]];

    if (v2 == v3)
    {
      [qword_1ED4A7C08 removeObjectForKey:a1[5]];
    }
  }

  os_unfair_lock_unlock((a1[4] + 8));

  os_unfair_lock_unlock(&_MergedGlobals_6);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSXPCServiceConnectionPeer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableSet *)self->_lock_connections count];
  os_unfair_lock_unlock(&self->_lock);
  name = [(BSProcessHandle *)self->_processHandle name];
  bundleIdentifier = [(BSProcessHandle *)self->_processHandle bundleIdentifier];
  v7 = bundleIdentifier;
  if (name && bundleIdentifier)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", name, bundleIdentifier];
  }

  else
  {
    if (name)
    {
      v9 = name;
    }

    else
    {
      v9 = bundleIdentifier;
    }

    v8 = v9;
  }

  v10 = v8;
  v11 = [v3 appendObject:v8 withName:0];
  v12 = [v3 appendInt:-[BSProcessHandle pid](self->_processHandle withName:{"pid"), @"pid"}];
  v13 = [v3 appendUnsignedInteger:v4 withName:@"count"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSXPCServiceConnectionPeer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BSXPCServiceConnectionPeer *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

@end