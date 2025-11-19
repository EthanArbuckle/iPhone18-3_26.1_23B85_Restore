@interface BSServiceInitiatingConnectionMultiplexer
+ (_BYTE)_defaultInstanceCreatingIfNecessary:(uint64_t)a1;
+ (_BYTE)_userInteractiveInstanceCreatingIfNecessary:(uint64_t)a1;
+ (id)debugDescriptionWithMultilinePrefix:(uint64_t)a1;
- (BSServiceInitiatingConnectionMultiplexer)init;
- (_BYTE)_initAsUserInteractive:(void *)a1;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (uint64_t)newConnectionWithEndpoint:(uint64_t)a1;
- (void)dealloc;
@end

@implementation BSServiceInitiatingConnectionMultiplexer

+ (_BYTE)_userInteractiveInstanceCreatingIfNecessary:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_12);
  v3 = qword_1ED4A7C90;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = [[BSServiceInitiatingConnectionMultiplexer alloc] _initAsUserInteractive:?];
    v6 = qword_1ED4A7C90;
    qword_1ED4A7C90 = v5;

    v3 = v5;
  }

  os_unfair_lock_unlock(&_MergedGlobals_12);

  return v3;
}

- (_BYTE)_initAsUserInteractive:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = BSServiceInitiatingConnectionMultiplexer;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[21] = a2;
    *(v3 + 4) = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;
  }

  return v4;
}

+ (_BYTE)_defaultInstanceCreatingIfNecessary:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&stru_1ED4A7C8C);
  v3 = qword_1ED4A7C98;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = [[BSServiceInitiatingConnectionMultiplexer alloc] _initAsUserInteractive:?];
    v6 = qword_1ED4A7C98;
    qword_1ED4A7C98 = v5;

    v3 = v5;
  }

  os_unfair_lock_unlock(&stru_1ED4A7C8C);

  return v3;
}

- (BSServiceInitiatingConnectionMultiplexer)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on %@", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSServiceInitiatingConnectionMultiplexer.m";
    v18 = 1024;
    v19 = 94;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dealloced without invalidating"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v19 = 1024;
      v20 = 108;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8612A4);
  }

  v10.receiver = self;
  v10.super_class = BSServiceInitiatingConnectionMultiplexer;
  [(BSServiceInitiatingConnectionMultiplexer *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (uint64_t)newConnectionWithEndpoint:(uint64_t)a1
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v20 = 0;
    goto LABEL_28;
  }

  v5 = v3;
  if (!v5)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(sel_newConnectionWithEndpoint_);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v66 = v30;
      v67 = 2114;
      v68 = v32;
      v69 = 2048;
      v70 = a1;
      v71 = 2114;
      v72 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v73 = 1024;
      v74 = 114;
      v75 = 2114;
      v76 = v29;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A861824);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = [v5 classForCoder];
    if (!v35)
    {
      v35 = objc_opt_class();
    }

    v36 = NSStringFromClass(v35);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v34 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v36, v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(sel_newConnectionWithEndpoint_);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v66 = v40;
      v67 = 2114;
      v68 = v42;
      v69 = 2048;
      v70 = a1;
      v71 = 2114;
      v72 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v73 = 1024;
      v74 = 114;
      v75 = 2114;
      v76 = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v43 = v39;
    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86196CLL);
  }

  v6 = v5[2];
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 20) == 1)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create an outgoing connection after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(sel_newConnectionWithEndpoint_);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v66 = v45;
      v67 = 2114;
      v68 = v47;
      v69 = 2048;
      v70 = a1;
      v71 = 2114;
      v72 = @"BSServiceInitiatingConnectionMultiplexer.m";
      v73 = 1024;
      v74 = 119;
      v75 = 2114;
      v76 = v44;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v48 = v44;
    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A861A64);
  }

  if (!v6)
  {
    if (![(BSXPCServiceConnectionEndpoint *)v5 isNullEndpoint])
    {
      v11 = BSServiceLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = v5[4];
        *buf = 138543362;
        v66 = v25;
        _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "cannot create outgoing root connection from an endpoint that is no longer valid (%{public}@)", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 16));
    v12 = [BSXPCServiceConnection connectionWithEndpoint:v5];
    goto LABEL_27;
  }

  v7 = [*(a1 + 8) objectForKey:v5];
  if (v7)
  {
    v8 = BSServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(BSXPCServiceConnection *)v7 loggingProem];
      v10 = v5[4];
      *buf = 138543618;
      v66 = v9;
      v67 = 2114;
      v68 = v10;
      _os_log_impl(&dword_19A821000, v8, OS_LOG_TYPE_INFO, "found existing rootConnection %{public}@ by endpoint (%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    v13 = v5;
    os_unfair_lock_assert_owner((a1 + 16));
    if (*(a1 + 20) == 1)
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create an outgoing connection after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(sel__lock_newRootConnectionWithEndpoint_);
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        *buf = 138544642;
        v66 = v50;
        v67 = 2114;
        v68 = v52;
        v69 = 2048;
        v70 = a1;
        v71 = 2114;
        v72 = @"BSServiceInitiatingConnectionMultiplexer.m";
        v73 = 1024;
        v74 = 151;
        v75 = 2114;
        v76 = v49;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v53 = v49;
      [v49 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A861B5CLL);
    }

    v14 = [*(a1 + 8) objectForKey:v13];
    if (v14)
    {
      v54 = MEMORY[0x1E696AEC0];
      v55 = v13[4];
      v56 = [v54 stringWithFormat:@"attempt to create a redundant outgoing connection for endpoint %@ : existing=%@", v55, v14];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(sel__lock_newRootConnectionWithEndpoint_);
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        *buf = 138544642;
        v66 = v57;
        v67 = 2114;
        v68 = v59;
        v69 = 2048;
        v70 = a1;
        v71 = 2114;
        v72 = @"BSServiceInitiatingConnectionMultiplexer.m";
        v73 = 1024;
        v74 = 153;
        v75 = 2114;
        v76 = v56;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v60 = v56;
      [v56 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A861C6CLL);
    }

    v15 = [BSXPCServiceConnection connectionWithEndpoint:v13];
    v7 = v15;
    if (!v15)
    {
      v21 = BSServiceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v13[4];
        *buf = 138543362;
        v66 = v22;
        _os_log_impl(&dword_19A821000, v21, OS_LOG_TYPE_INFO, "failed to create outgoing root connection for endpoint=%{public}@", buf, 0xCu);
      }

      os_unfair_lock_unlock((a1 + 16));
      goto LABEL_26;
    }

    v16 = [(BSXPCServiceConnection *)v15 defaultNameWithClientLoggingProem:0 as:?];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke;
    v61[3] = &unk_1E7520DD0;
    v17 = v16;
    v62 = v17;
    v63 = a1;
    v18 = v13;
    v64 = v18;
    [(BSXPCServiceConnection *)v7 configure:v61];
    v19 = BSServiceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v66 = v17;
      _os_log_impl(&dword_19A821000, v19, OS_LOG_TYPE_INFO, "created outgoing root connection %{public}@", buf, 0xCu);
    }

    [*(a1 + 8) setObject:v7 forKey:v18];
    [(BSXPCServiceConnection *)v7 activateNowOrWhenReady:?];
  }

  v20 = [BSXPCServiceConnection connectionWithConnection:v7];

  os_unfair_lock_unlock((a1 + 16));
  if (!v20)
  {
LABEL_26:
    v12 = +[BSXPCServiceConnection nullConnection];
LABEL_27:
    v20 = v12;
  }

LABEL_28:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) copy];
    v5 = v3[18];
    v3[18] = v4;
  }

  if (*(*(a1 + 40) + 21) == 1)
  {
    v6 = *(a1 + 32);
    v7 = +[BSServiceQuality userInteractive];
    v8 = [BSServiceDispatchQueue queueWithName:v6 serviceQuality:v7];
    [(BSXPCServiceConnectionEventHandler *)v3 setQueue:v8];
  }

  if (v3)
  {
    *(v3 + 128) = 1;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2;
  v28[3] = &unk_1E7520E40;
  v29 = *(a1 + 32);
  if (v3)
  {
    v9 = [v28 copy];
    v10 = v3[11];
    v3[11] = v9;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_65;
  v26[3] = &unk_1E7520D60;
  v11 = *(a1 + 48);
  v26[4] = *(a1 + 40);
  v27 = v11;
  if (v3)
  {
    v12 = [v26 copy];
    v13 = v3[8];
    v3[8] = v12;

    v14 = [&__block_literal_global_12 copy];
    v15 = v3[9];
    v3[9] = v14;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_4;
  v22[3] = &unk_1E7520DA8;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v23 = v16;
  v24 = v17;
  v19 = v18;
  v25 = v19;
  if (v3)
  {
    v20 = [v22 copy];
    v21 = v3[10];
    v3[10] = v20;

    v19 = v25;
  }
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(BSXPCServiceConnection *)v3 auditToken];
  v5 = BSServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = [v4 pid];
    _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "Activated outgoing root connection %{public}@ to %d", &v8, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_65(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2_66;
  v10[3] = &unk_1E7520D38;
  v13 = a3;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_after(v6, v7, v10);
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_2_66(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = *(a1 + 56);
  if (v2 == -[BSXPCServiceConnection childrenGeneration](*(a1 + 40)) && (v3 = *(a1 + 40), [*(*(a1 + 32) + 8) objectForKey:*(a1 + 48)], v4 = objc_claimAutoreleasedReturnValue(), v4, v3 == v4))
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v6 = *(a1 + 40);

    [v6 invalidate];
  }

  else
  {
    v5 = (*(a1 + 32) + 16);

    os_unfair_lock_unlock(v5);
  }
}

void __80__BSServiceInitiatingConnectionMultiplexer__lock_newRootConnectionWithEndpoint___block_invoke_4(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BSServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = [v6 succinctDescription];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "Error on outgoing root connection %{public}@: %{public}@", &v11, 0x16u);
  }

  os_unfair_lock_lock((a1[5] + 16));
  if ([v6 isBSServiceConnectionError] && objc_msgSend(v6, "code") == 1 && -[BSXPCServiceConnection hasChildren](v5))
  {
    os_unfair_lock_unlock((a1[5] + 16));
  }

  else
  {
    [*(a1[5] + 8) removeObjectForKey:a1[6]];
    os_unfair_lock_unlock((a1[5] + 16));
    [v5 invalidate];
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)debugDescriptionWithMultilinePrefix:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E698E680] builderWithClass:objc_opt_class()];
  v5 = v4;
  if (v2)
  {
    [v4 setActiveMultilinePrefix:v2];
  }

  [v5 setUseDebugDescription:1];
  v6 = [v5 activeMultilinePrefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E75205D0;
  v7 = v5;
  v11 = v7;
  [v7 appendBodySectionWithName:0 multilinePrefix:v6 block:v10];

  v8 = [v7 build];

  objc_autoreleasePoolPop(v3);

  return v8;
}

void __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [BSServiceInitiatingConnectionMultiplexer _userInteractiveInstanceCreatingIfNecessary:?];
  v3 = [v2 appendObject:? withName:? skipIfNil:?];

  v4 = *(a1 + 32);
  v7 = [BSServiceInitiatingConnectionMultiplexer _defaultInstanceCreatingIfNecessary:?];
  v5 = [v4 appendObject:? withName:? skipIfNil:?];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSServiceInitiatingConnectionMultiplexer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6 = v5;
  if (v4)
  {
    [v5 setActiveMultilinePrefix:v4];
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(BSServiceInitiatingConnectionMultiplexer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceInitiatingConnectionMultiplexer *)self descriptionBuilderWithMultilinePrefix:v4];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_lock_endpointToOutgoingRootConnections allKeys];
  v7 = [v6 mutableCopy];

  [v7 sortUsingComparator:&__block_literal_global_81];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_2;
  v20[3] = &unk_1E75209E8;
  v8 = v5;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = [v8 modifyProem:v20];
  v11 = [v8 activeMultilinePrefix];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_3;
  v16[3] = &unk_1E75205A8;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v19 = self;
  [v12 appendBodySectionWithName:0 multilinePrefix:v11 block:v16];

  os_unfair_lock_unlock(&self->_lock);
  v14 = [v12 build];

  return v14;
}

void __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 activeMultilinePrefix];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_4;
  v5[3] = &unk_1E7520E18;
  v5[4] = a1[6];
  [v2 appendArraySection:v3 withName:@"outgoingRootConnections" multilinePrefix:v4 skipIfEmpty:0 objectTransformer:v5];
}

id __80__BSServiceInitiatingConnectionMultiplexer_debugDescriptionWithMultilinePrefix___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:a2];
  v3 = [v2 description];

  return v3;
}

@end