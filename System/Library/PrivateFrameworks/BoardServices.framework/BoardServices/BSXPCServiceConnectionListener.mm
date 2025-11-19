@interface BSXPCServiceConnectionListener
+ (id)listenerForSpecification:(uint64_t)a1;
- (BOOL)_isClientInvalidated;
- (BOOL)_isInvalidated;
- (BSXPCServiceConnectionListener)init;
- (id)endpoint;
- (void)_invalidateWithLockBlock:(uint64_t)a1;
- (void)_noteChildConnectionDidInvalidate:(id)a3;
- (void)configure:(uint64_t)a1;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setConnectionHandler:(id)a3;
- (void)setErrorHandler:(id)a3;
- (void)suspendWithCompletion:(uint64_t)a1;
@end

@implementation BSXPCServiceConnectionListener

- (void)resume
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 98) == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot resume after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_resume);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v24 = 138544642;
        v25 = v10;
        v26 = 2114;
        v27 = v12;
        v28 = 2048;
        v29 = a1;
        v30 = 2114;
        v31 = @"BSXPCServiceConnectionListener.m";
        v32 = 1024;
        v33 = 208;
        v34 = 2114;
        v35 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v24, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82D63CLL);
    }

    if ((*(a1 + 94) & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be configured before resume"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_resume);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v24 = 138544642;
        v25 = v15;
        v26 = 2114;
        v27 = v17;
        v28 = 2048;
        v29 = a1;
        v30 = 2114;
        v31 = @"BSXPCServiceConnectionListener.m";
        v32 = 1024;
        v33 = 209;
        v34 = 2114;
        v35 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v24, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82D734);
    }

    if (*(a1 + 96) == 1)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call suspend before calling resume a second time"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_resume);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v24 = 138544642;
        v25 = v20;
        v26 = 2114;
        v27 = v22;
        v28 = 2048;
        v29 = a1;
        v30 = 2114;
        v31 = @"BSXPCServiceConnectionListener.m";
        v32 = 1024;
        v33 = 210;
        v34 = 2114;
        v35 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v24, 0x3Au);
      }

      v23 = v19;
      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82D82CLL);
    }

    *(a1 + 96) = 1;
    if ((*(a1 + 97) & 1) == 0)
    {
      if (*(a1 + 95) == 1)
      {
        v2 = BSServiceXPCLog();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v3 = *(a1 + 16);
          v4 = *(a1 + 32);
          v24 = 138543618;
          v25 = v3;
          v26 = 2112;
          v27 = v4;
          _os_log_impl(&dword_19A821000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Resumed %@", &v24, 0x16u);
        }

        xpc_connection_resume(*(a1 + 64));
      }

      else
      {
        *(a1 + 95) = 1;
        v5 = BSServiceXPCLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 16);
          v7 = *(a1 + 32);
          v24 = 138543618;
          v25 = v6;
          v26 = 2112;
          v27 = v7;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Activated %@", &v24, 0x16u);
        }

        if ((*(a1 + 93) & 1) == 0)
        {
          xpc_connection_activate(*(a1 + 64));
        }
      }
    }

    os_unfair_lock_unlock((a1 + 88));
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)endpoint
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 94) != 1)
    {
      os_unfair_lock_unlock((a1 + 88));
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asked for endpoint before sealing the listener configuration"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel_endpoint);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v10 = 138544642;
        v11 = v6;
        v12 = 2114;
        v13 = v8;
        v14 = 2048;
        v15 = a1;
        v16 = 2114;
        v17 = @"BSXPCServiceConnectionListener.m";
        v18 = 1024;
        v19 = 147;
        v20 = 2114;
        v21 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82F6A4);
    }

    v2 = *(a1 + 80);
    os_unfair_lock_unlock((a1 + 88));
    os_unfair_lock_assert_not_owner((a1 + 88));
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BSXPCServiceConnectionListener)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionListener"];
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
    v15 = self;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionListener.m";
    v18 = 1024;
    v19 = 81;
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

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    proem = self->_proem;
    eDesc = self->_eDesc;
    *buf = 138543618;
    v15 = proem;
    v16 = 2112;
    v17 = eDesc;
    _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Dealloc %@", buf, 0x16u);
  }

  if (!self->_lock_invalidated)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be invalidated before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BSXPCServiceConnectionListener.m";
      v22 = 1024;
      v23 = 125;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A867548);
  }

  v13.receiver = self;
  v13.super_class = BSXPCServiceConnectionListener;
  [(BSXPCServiceConnectionListener *)&v13 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)listenerForSpecification:(uint64_t)a1
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = a2;
  if (!v4)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v35 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"specification", v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel_listenerForSpecification_);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v55 = v39;
      v56 = 2114;
      v57 = v41;
      v58 = 2048;
      v59 = v3;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionListener.m";
      v62 = 1024;
      v63 = 135;
      v64 = 2114;
      v65 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8679CCLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = [v4 classForCoder];
    if (!v44)
    {
      v44 = objc_opt_class();
    }

    v45 = NSStringFromClass(v44);
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v43 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"specification", v45, v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(sel_listenerForSpecification_);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v55 = v49;
      v56 = 2114;
      v57 = v51;
      v58 = 2048;
      v59 = v3;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionListener.m";
      v62 = 1024;
      v63 = 135;
      v64 = 2114;
      v65 = v48;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v52 = v48;
    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A867B14);
  }

  v5 = [BSXPCServiceConnectionListener alloc];
  if (v5)
  {
    add_explicit = atomic_fetch_add_explicit(&_initWithSpecification____uniqueCounter, 1uLL, memory_order_relaxed);
    v53.receiver = v5;
    v53.super_class = BSXPCServiceConnectionListener;
    v7 = objc_msgSendSuper2(&v53, sel_init);
    v8 = v7;
    if (v7)
    {
      v7[1] = add_explicit + 1;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[L:%llx]", add_explicit + 1];
      v10 = *(v8 + 2);
      *(v8 + 2) = v9;

      objc_storeStrong(v8 + 3, a2);
      v11 = [v4 machName];
      v12 = v11;
      if (v4[9] == 4)
      {
        v13 = __xpcInstance();
        v14 = BSServiceConnectionEndpointTargetDescriptionForServiceListener(v12, v13);
        v15 = *(v8 + 4);
        *(v8 + 4) = v14;

        *(v8 + 93) = 1;
      }

      else if (v11)
      {
        v16 = BSServiceConnectionEndpointTargetDescriptionForMachName(v11, 0);
        v17 = *(v8 + 4);
        *(v8 + 4) = v16;
      }

      else
      {
        v18 = [v4 identifier];
        v19 = BSServiceConnectionEndpointTargetDescriptionForAnonymousDomain(v18);
        v20 = *(v8 + 4);
        *(v8 + 4) = v19;

        *(v8 + 92) = 1;
      }

      v21 = *(v8 + 1);
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPCLsn:%llx:%@", v21, *(v8 + 4)];
      v23 = BSServiceQualityFromBSServiceDomainMultiplexingType([v4 multiplexingType]);
      if (v23)
      {
        v24 = +[BSServiceQuality userInteractive];
        v25 = [BSServiceDispatchQueue queueWithName:v22 serviceQuality:v24];
        v26 = *(v8 + 5);
        *(v8 + 5) = v25;
      }

      else
      {
        v27 = [BSServiceDispatchQueue queueWithName:v22];
        v24 = *(v8 + 5);
        *(v8 + 5) = v27;
      }

      *(v8 + 22) = 0;
      v28 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v29 = *(v8 + 9);
      *(v8 + 9) = v28;

      v30 = BSServiceXPCLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v8 + 2);
        v32 = *(v8 + 4);
        *buf = 138543618;
        v55 = v31;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_19A821000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Alloc (%@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)configure:(uint64_t)a1
{
  v104 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(sel_configure_);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v93 = v47;
        v94 = 2114;
        v95 = v49;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 154;
        v102 = 2114;
        v103 = v46;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v50 = v46;
      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8680FCLL);
    }

    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 94) == 1)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot configure after sealing"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v52 = NSStringFromSelector(sel_configure_);
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        *buf = 138544642;
        v93 = v52;
        v94 = 2114;
        v95 = v54;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 156;
        v102 = 2114;
        v103 = v51;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v55 = v51;
      [v51 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8681F4);
    }

    if (*(a1 + 98) == 1)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot configure after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(sel_configure_);
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        *buf = 138544642;
        v93 = v57;
        v94 = 2114;
        v95 = v59;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 157;
        v102 = 2114;
        v103 = v56;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v60 = v56;
      [v56 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8682ECLL);
    }

    if (*(a1 + 97) == 1)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = NSStringFromSelector(sel_configure_);
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        *buf = 138544642;
        v93 = v62;
        v94 = 2114;
        v95 = v64;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 158;
        v102 = 2114;
        v103 = v61;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v65 = v61;
      [v61 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8683E4);
    }

    (*(a2 + 16))(a2, a1);
    if (*(a1 + 95) == 1)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot seal after activation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v67 = NSStringFromSelector(sel_configure_);
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        *buf = 138544642;
        v93 = v67;
        v94 = 2114;
        v95 = v69;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 160;
        v102 = 2114;
        v103 = v66;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v70 = v66;
      [v66 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8684DCLL);
    }

    if (*(a1 + 98) == 1)
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot seal after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v72 = NSStringFromSelector(sel_configure_);
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        *buf = 138544642;
        v93 = v72;
        v94 = 2114;
        v95 = v74;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 161;
        v102 = 2114;
        v103 = v71;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v75 = v71;
      [v71 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8685D4);
    }

    if (*(a1 + 94) == 1)
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot seal twice"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v77 = NSStringFromSelector(sel_configure_);
        v78 = objc_opt_class();
        v79 = NSStringFromClass(v78);
        *buf = 138544642;
        v93 = v77;
        v94 = 2114;
        v95 = v79;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 162;
        v102 = 2114;
        v103 = v76;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v80 = v76;
      [v76 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8686CCLL);
    }

    if (!*(a1 + 48))
    {
      v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"connection handler must be set before sealing"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v82 = NSStringFromSelector(sel_configure_);
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        *buf = 138544642;
        v93 = v82;
        v94 = 2114;
        v95 = v84;
        v96 = 2048;
        v97 = a1;
        v98 = 2114;
        v99 = @"BSXPCServiceConnectionListener.m";
        v100 = 1024;
        v101 = 163;
        v102 = 2114;
        v103 = v81;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v85 = v81;
      [v81 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8687C4);
    }

    *(a1 + 94) = 1;
    v4 = BSServiceXPCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 32);
      *buf = 138543618;
      v93 = v5;
      v94 = 2112;
      v95 = v6;
      _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Sealed %@", buf, 0x16u);
    }

    v7 = *(a1 + 24);
    if (*(a1 + 93) == 1)
    {
      if (v7)
      {
        v8 = v7[10];
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = v9;
      [v9 UTF8String];
      v11 = [*(a1 + 40) queue];
      bs_service_listener = xpc_connection_create_bs_service_listener();
      v13 = *(a1 + 64);
      *(a1 + 64) = bs_service_listener;

      v14 = *(a1 + 64);
      xpc_connection_set_bs_type();
      v15 = __xpcInstance();
      v16 = 0;
    }

    else
    {
      v17 = [v7 machName];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
        v20 = [v18 UTF8String];
        v21 = [*(a1 + 40) queue];
        mach_service = xpc_connection_create_mach_service(v20, v21, 1uLL);
        v23 = *(a1 + 64);
        *(a1 + 64) = mach_service;

        v24 = *(a1 + 64);
        xpc_connection_set_bs_type();
        v16 = 0;
      }

      else
      {
        v25 = [*(a1 + 40) queue];
        v26 = xpc_connection_create(0, v25);
        v27 = *(a1 + 64);
        *(a1 + 64) = v26;

        v28 = *(a1 + 64);
        xpc_connection_set_bs_type();
        v16 = getpid();
      }

      v15 = 0;
    }

    objc_initWeak(buf, a1);
    v29 = *(a1 + 16);
    v30 = MEMORY[0x19A908200](*(a1 + 48));
    v31 = MEMORY[0x19A908200](*(a1 + 56));
    v32 = *(a1 + 92);
    v33 = *(a1 + 64);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__BSXPCServiceConnectionListener_configure___block_invoke;
    handler[3] = &unk_1E7521000;
    objc_copyWeak(&v90, buf);
    v34 = v29;
    v87 = v34;
    v35 = v30;
    v88 = v35;
    v36 = v31;
    v89 = v36;
    v91 = v32;
    xpc_connection_set_event_handler(v33, handler);
    v37 = *(a1 + 48);
    *(a1 + 48) = 0;

    v38 = *(a1 + 56);
    *(a1 + 56) = 0;

    v39 = *(a1 + 64);
    v40 = xpc_connection_bs_seal_listener();
    v41 = *(a1 + 64);
    bs_type = xpc_connection_get_bs_type();
    v43 = [[BSXPCServiceConnectionEndpoint alloc] initWithXPCEndpoint:v40 oneshot:v15 nonLaunching:bs_type == 3 targetPID:v16 targetDescription:*(a1 + 32)];
    v44 = *(a1 + 80);
    *(a1 + 80) = v43;

    os_unfair_lock_unlock((a1 + 88));
    objc_destroyWeak(&v90);

    objc_destroyWeak(buf);
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __44__BSXPCServiceConnectionListener_configure___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = MEMORY[0x19A908710](a2);
  if (v9 != MEMORY[0x1E69E9E68])
  {
    if (v9 == MEMORY[0x1E69E9E98])
    {
      *v21 = MEMORY[0x1E69E9820];
      *&v21[8] = 3221225472;
      *&v21[16] = ____handleEvent_block_invoke;
      v22 = &unk_1E7521070;
      v23 = v6;
      v24 = a2;
      [(BSXPCServiceConnectionListener *)WeakRetained _invalidateWithLockBlock:v21];
      if (v7)
      {
        v12 = BSServiceConnectionErrorCreate(2uLL, a2, 0);
        (*(v7 + 16))(v7, v12);
      }
    }

    else
    {
      v10 = BSServiceXPCErrorsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 138543618;
        *&v21[4] = v6;
        *&v21[12] = 2112;
        *&v21[14] = a2;
        _os_log_impl(&dword_19A821000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ unexpected event (%@)", v21, 0x16u);
      }
    }

    goto LABEL_26;
  }

  if (!WeakRetained)
  {
    v13 = BSServiceXPCLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v21 = 138543362;
      *&v21[4] = v6;
      _os_log_impl(&dword_19A821000, v13, OS_LOG_TYPE_INFO, "%{public}@ Rejecting incoming connection after listener deallocation", v21, 0xCu);
    }

    goto LABEL_25;
  }

  os_unfair_lock_lock(WeakRetained + 22);
  if (*(WeakRetained + 97) == 1)
  {
    v11 = BSServiceXPCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v21 = 138543362;
      *&v21[4] = v6;
      _os_log_impl(&dword_19A821000, v11, OS_LOG_TYPE_INFO, "%{public}@ Rejecting incoming connection after invalidation", v21, 0xCu);
    }

LABEL_24:

    os_unfair_lock_unlock(WeakRetained + 22);
LABEL_25:
    [BSXPCServiceConnection _invalidateIncomingXPCConnection:a2 withDisconnectMessage:v8];
    goto LABEL_26;
  }

  v14 = [BSXPCServiceConnection _connectionWithIncomingXPCConnection:a2 endpointDescription:*(WeakRetained + 4)];
  if (!v14)
  {
    v11 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v21 = 138543362;
      *&v21[4] = v6;
      _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to wrap incoming connection - cancelling", v21, 0xCu);
    }

    v8 = 2;
    goto LABEL_24;
  }

  [*(WeakRetained + 9) addObject:v14];
  os_unfair_lock_unlock(WeakRetained + 22);
  [(BSXPCServiceConnection *)v14 _setParent:?];
  v15 = BSServiceXPCLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v14[24];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    *v21 = 138543618;
    *&v21[4] = v6;
    *&v21[12] = 2114;
    *&v21[14] = v19;
    _os_log_impl(&dword_19A821000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Incoming connection %{public}@", v21, 0x16u);
  }

  (*(v5 + 16))(v5, v14);
LABEL_26:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)suspendWithCompletion:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 93) == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xpc services cannot be suspended"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_suspendWithCompletion_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v36 = v10;
        v37 = 2114;
        v38 = v12;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSXPCServiceConnectionListener.m";
        v43 = 1024;
        v44 = 231;
        v45 = 2114;
        v46 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A868F20);
    }

    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 98) == 1)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot suspend after invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_suspendWithCompletion_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v36 = v15;
        v37 = 2114;
        v38 = v17;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSXPCServiceConnectionListener.m";
        v43 = 1024;
        v44 = 233;
        v45 = 2114;
        v46 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869018);
    }

    if ((*(a1 + 96) & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call resume before calling suspend"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_suspendWithCompletion_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v36 = v20;
        v37 = 2114;
        v38 = v22;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSXPCServiceConnectionListener.m";
        v43 = 1024;
        v44 = 234;
        v45 = 2114;
        v46 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = v19;
      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869110);
    }

    if ((*(a1 + 94) & 1) == 0)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel_suspendWithCompletion_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v36 = v25;
        v37 = 2114;
        v38 = v27;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSXPCServiceConnectionListener.m";
        v43 = 1024;
        v44 = 235;
        v45 = 2114;
        v46 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869208);
    }

    if ((*(a1 + 95) & 1) == 0)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(sel_suspendWithCompletion_);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v36 = v30;
        v37 = 2114;
        v38 = v32;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSXPCServiceConnectionListener.m";
        v43 = 1024;
        v44 = 236;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v33 = v29;
      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A869300);
    }

    *(a1 + 96) = 0;
    if ((*(a1 + 97) & 1) == 0)
    {
      xpc_connection_suspend(*(a1 + 64));
      v4 = BSServiceXPCLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 16);
        v6 = *(a1 + 32);
        *buf = 138543618;
        v36 = v5;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Suspended %@", buf, 0x16u);
      }
    }

    v7 = *(a1 + 40);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __56__BSXPCServiceConnectionListener_suspendWithCompletion___block_invoke;
    v34[3] = &unk_1E7520648;
    v34[4] = a1;
    v34[5] = a2;
    [v7 performAsync:v34];
    os_unfair_lock_unlock((a1 + 88));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __56__BSXPCServiceConnectionListener_suspendWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v2 = *(a1 + 32);
  if (*(v2 + 97))
  {
    v3 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = *(v2 + 72);
    v3 = 0;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        v7 = 0;
        v8 = v3;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v21 + 1) + 8 * v7);
          v20 = v8;
          [(BSXPCServiceConnection *)v9 _handleParentDisconnectWithMessage:&v20 outRevocations:?];
          v3 = v20;

          ++v7;
          v8 = v3;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v5);
    }

    [*(*(a1 + 32) + 72) removeAllObjects];
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 88));
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v16 + 1) + 8 * v13) + 16))(*(*(&v16 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v11);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_isXPCService)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xpc services cannot invalidate"];
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
      v18 = @"BSXPCServiceConnectionListener.m";
      v19 = 1024;
      v20 = 263;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8697C0);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__BSXPCServiceConnectionListener_invalidate__block_invoke;
  v10[3] = &unk_1E7521028;
  v10[4] = self;
  v10[5] = a2;
  [(BSXPCServiceConnectionListener *)self _invalidateWithLockBlock:v10];
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __44__BSXPCServiceConnectionListener_invalidate__block_invoke(uint64_t result)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 98) == 1)
  {
    v3 = result;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot invalidate twice"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(v3 + 40));
      v6 = *(v3 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(v3 + 32);
      v11 = 138544642;
      v12 = v5;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2114;
      v18 = @"BSXPCServiceConnectionListener.m";
      v19 = 1024;
      v20 = 265;
      v21 = 2114;
      v22 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    v10 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A869960);
  }

  *(v1 + 98) = 1;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_invalidateWithLockBlock:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    (*(a2 + 16))(a2, a1);
    if (*(a1 + 97))
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      *(a1 + 97) = 1;
      v7 = *(a1 + 72);
      v8 = *(a1 + 72);
      *(a1 + 72) = 0;

      v6 = *(a1 + 64);
      if ((*(a1 + 93) & 1) == 0)
      {
        v9 = *(a1 + 64);
        *(a1 + 64) = 0;
      }

      v10 = *(a1 + 48);
      *(a1 + 48) = 0;

      v11 = *(a1 + 56);
      *(a1 + 56) = 0;

      v4 = *(a1 + 96);
      v5 = *(a1 + 95);
    }

    os_unfair_lock_unlock((a1 + 88));
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    v29 = v5;
    v14 = 0;
    if (v13)
    {
      v15 = *v38;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v37 + 1) + 8 * v16);
          if (*(a1 + 92))
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          v36 = v17;
          [(BSXPCServiceConnection *)v18 _handleParentDisconnectWithMessage:v19 outRevocations:&v36];
          v14 = v36;

          ++v16;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v13);
    }

    if (v6)
    {
      v20 = *(a1 + 92);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__BSXPCServiceConnectionListener__invalidateWithLockBlock___block_invoke;
      handler[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
      v35 = v20;
      xpc_connection_set_event_handler(v6, handler);
      if (*(a1 + 93) == 1)
      {
        v21 = BSServiceXPCErrorsLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 16);
          v23 = *(a1 + 32);
          *buf = 138543618;
          v43 = v22;
          v44 = 2114;
          v45 = v23;
          _os_log_impl(&dword_19A821000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ xpc-service %{public}@ is now impotent", buf, 0x16u);
        }
      }

      else
      {
        xpc_connection_cancel(v6);
        if (v29)
        {
          if ((v4 & 1) == 0)
          {
            xpc_connection_resume(v6);
          }
        }

        else
        {
          xpc_connection_activate(v6);
        }
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v14;
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v25)
    {
      v26 = *v31;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v24);
          }

          (*(*(*(&v30 + 1) + 8 * i) + 16))();
        }

        v25 = [v24 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v25);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)setConnectionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BSXPCServiceConnectionListener.m";
      v22 = 1024;
      v23 = 277;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A869EF8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = MEMORY[0x19A908200](a3);
  lock_connectionHandler = self->_lock_connectionHandler;
  self->_lock_connectionHandler = v5;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setErrorHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BSXPCServiceConnectionListener.m";
      v22 = 1024;
      v23 = 283;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86A0B8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = MEMORY[0x19A908200](a3);
  lock_errorHandler = self->_lock_errorHandler;
  self->_lock_errorHandler = v5;
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (BOOL)_isClientInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_clientInvalidated = self->_lock_clientInvalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_clientInvalidated;
}

- (void)_noteChildConnectionDidInvalidate:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_lock_childConnections containsObject:a3])
  {
    [(NSHashTable *)self->_lock_childConnections removeObject:a3];
  }

  os_unfair_lock_unlock(&self->_lock);

  [(BSXPCServiceConnection *)a3 _setParent:?];
}

void __59__BSXPCServiceConnectionListener__invalidateWithLockBlock___block_invoke(uint64_t a1, void *a2)
{
  if (MEMORY[0x19A908710](a2) == MEMORY[0x1E69E9E68])
  {
    v4 = *(a1 + 32);

    [BSXPCServiceConnection _invalidateIncomingXPCConnection:a2 withDisconnectMessage:v4];
  }
}

@end