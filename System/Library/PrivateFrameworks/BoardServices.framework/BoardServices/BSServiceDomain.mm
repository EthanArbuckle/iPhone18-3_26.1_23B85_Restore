@interface BSServiceDomain
- (BSServiceDomain)init;
- (id)_activate;
- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)a1;
- (id)_initWithSpecification:(BSService *)a1;
- (id)serviceWithIdentifier:(id *)a1;
- (uint64_t)endpoint;
- (void)_enforceListenerRegistrationForReason:(uint64_t)a1;
- (void)_invalidate;
@end

@implementation BSServiceDomain

- (id)_activate
{
  v1 = a1;
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *&a1[2]._os_unfair_lock_opaque;
    if (v2)
    {
      v3 = *(v2 + 72);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_lock(a1 + 12);
    if (*(v1 + 53) == 1)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot manually activate an invalidated domain"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__activate);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v35 = v26;
        v36 = 2114;
        v37 = v28;
        v38 = 2048;
        v39 = v1;
        v40 = 2114;
        v41 = @"BSServiceDomain.m";
        v42 = 1024;
        v43 = 384;
        v44 = 2114;
        v45 = v25;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82C8FCLL);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      if (v3 == 3)
      {
        *(v1 + 40) = v4 + 1;
        os_unfair_lock_unlock((v1 + 48));
LABEL_30:
        objc_initWeak(buf, v1);
        v12 = objc_alloc(MEMORY[0x1E698E778]);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __28__BSServiceDomain__activate__block_invoke_2;
        v30[3] = &unk_1E7520F30;
        objc_copyWeak(&v31, buf);
        v1 = [v12 initWithIdentifier:@"com.apple.boardservices.domain" forReason:@"session" invalidationBlock:v30];
        objc_destroyWeak(&v31);
        objc_destroyWeak(buf);
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    *(v1 + 40) = 1;
    if (v3)
    {
      if (v3 <= 2)
      {
        v5 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(v1 + 8) identifier];
          *buf = 138543362;
          v35 = v6;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "manually bootstrapping domain %{public}@", buf, 0xCu);
        }

        v7 = @"manual bootstrap activation";
LABEL_26:

        if (*(v1 + 52))
        {
          goto LABEL_29;
        }

        [(BSServiceDomain *)v1 _enforceListenerRegistrationForReason:v7];
LABEL_28:
        [(BSXPCServiceConnectionListener *)*(v1 + 16) resume];
LABEL_29:
        os_unfair_lock_unlock((v1 + 48));
        if (v3 == 3)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v3 == 5)
      {
        v5 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(v1 + 8) identifier];
          *buf = 138543362;
          v35 = v11;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "initializing view-service domain %{public}@", buf, 0xCu);
        }

        v7 = @"ViewService backstop";
        goto LABEL_26;
      }

      if (v3 != 4)
      {
        if (v3 != 3)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = [*(v1 + 8) identifier];
          v19 = NSStringFromBSServiceDomainStartType(v3);
          v20 = [v17 stringWithFormat:@"cannot process domain %@ with unknown start type %@", v18, v19];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v21 = NSStringFromSelector(sel__activate);
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            *buf = 138544642;
            v35 = v21;
            v36 = 2114;
            v37 = v23;
            v38 = 2048;
            v39 = v1;
            v40 = 2114;
            v41 = @"BSServiceDomain.m";
            v42 = 1024;
            v43 = 406;
            v44 = 2114;
            v45 = v20;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v24 = v20;
          [v20 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A82C804);
        }

        v5 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(v1 + 8) identifier];
          *buf = 138543362;
          v35 = v10;
          _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "manually activating session for domain %{public}@", buf, 0xCu);
        }

        v7 = @"manual session activation";
        goto LABEL_26;
      }

      v13 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(v1 + 8) identifier];
        *buf = 138543362;
        v35 = v14;
        _os_log_impl(&dword_19A821000, v13, OS_LOG_TYPE_DEFAULT, "initializing domain %{public}@", buf, 0xCu);
      }

      if ((*(v1 + 52) & 1) == 0)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __28__BSServiceDomain__activate__block_invoke;
        block[3] = &unk_1E75209E8;
        block[4] = v1;
        v33 = @"XPCService backstop";
        dispatch_async(MEMORY[0x1E69E96A0], block);

        goto LABEL_28;
      }
    }

    else
    {
      v8 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(v1 + 8) identifier];
        *buf = 138543362;
        v35 = v9;
        _os_log_impl(&dword_19A821000, v8, OS_LOG_TYPE_DEFAULT, "initializing automatic domain %{public}@", buf, 0xCu);
      }

      if ((*(v1 + 52) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
    os_unfair_lock_unlock((v1 + 48));
LABEL_35:
    v1 = 0;
  }

LABEL_36:
  v15 = *MEMORY[0x1E69E9840];

  return v1;
}

- (uint64_t)endpoint
{
  if (a1)
  {
    a1 = [(BSXPCServiceConnectionListener *)a1[2] endpoint];
    v1 = vars8;
  }

  return a1;
}

- (BSServiceDomain)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not available on BSServiceDomain"];
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
    v17 = @"BSServiceDomain.m";
    v18 = 1024;
    v19 = 263;
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

- (id)_initWithSpecification:(BSService *)a1
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v57 = v3;
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v62 = v4;
  NSClassFromString(&cfstr_Bsservicedomai_8.isa);
  if (!v4)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(sel__initWithSpecification_);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *v72 = 138544642;
      *&v72[4] = v47;
      *&v72[12] = 2114;
      *&v72[14] = v49;
      v73 = 2048;
      v74 = a1;
      v75 = 2114;
      v76 = @"BSServiceDomain.m";
      v77 = 1024;
      v78 = 268;
      v79 = 2114;
      v80 = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v72, 0x3Au);
    }

    v50 = v46;
    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A864864);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceDomainSpecificationClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(sel__initWithSpecification_);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *v72 = 138544642;
      *&v72[4] = v52;
      *&v72[12] = 2114;
      *&v72[14] = v54;
      v73 = 2048;
      v74 = a1;
      v75 = 2114;
      v76 = @"BSServiceDomain.m";
      v77 = 1024;
      v78 = 268;
      v79 = 2114;
      v80 = v51;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v72, 0x3Au);
    }

    v55 = v51;
    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86496CLL);
  }

  v70.receiver = a1;
  v70.super_class = BSServiceDomain;
  v5 = [(BSService *)&v70 init];
  if (v5)
  {
    v58 = v5;
    objc_storeStrong(v5 + 1, a2);
    *(v58 + 12) = 0;
    v56 = v4[8];
    v61 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v56, "count")}];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v59 = v56;
    v6 = [v59 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v6)
    {
      v7 = *v67;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v67 != v7)
          {
            objc_enumerationMutation(v59);
          }

          v9 = *(*(&v66 + 1) + 8 * i);
          v10 = [BSService alloc];
          v11 = v9;
          v12 = v4;
          if (v10)
          {
            v13 = v11;
            NSClassFromString(&cfstr_Bsservicespeci.isa);
            if (!v13)
            {
              v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v32 = NSStringFromSelector(sel__initWithServiceSpecification_domainSpecification_);
                v33 = objc_opt_class();
                v34 = NSStringFromClass(v33);
                *v72 = 138544642;
                *&v72[4] = v32;
                *&v72[12] = 2114;
                *&v72[14] = v34;
                v73 = 2048;
                v74 = v10;
                v75 = 2114;
                v76 = @"BSServiceDomain.m";
                v77 = 1024;
                v78 = 48;
                v79 = 2114;
                v80 = v31;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v72, 0x3Au);
              }

              v35 = v31;
              [v31 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A864544);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceSpecificationClass]"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v37 = NSStringFromSelector(sel__initWithServiceSpecification_domainSpecification_);
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                *v72 = 138544642;
                *&v72[4] = v37;
                *&v72[12] = 2114;
                *&v72[14] = v39;
                v73 = 2048;
                v74 = v10;
                v75 = 2114;
                v76 = @"BSServiceDomain.m";
                v77 = 1024;
                v78 = 48;
                v79 = 2114;
                v80 = v36;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v72, 0x3Au);
              }

              v40 = v36;
              [v36 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A864650);
            }

            v14 = v12;
            NSClassFromString(&cfstr_Bsservicedomai_8.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceDomainSpecificationClass]"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v42 = NSStringFromSelector(sel__initWithServiceSpecification_domainSpecification_);
                v43 = objc_opt_class();
                v44 = NSStringFromClass(v43);
                *v72 = 138544642;
                *&v72[4] = v42;
                *&v72[12] = 2114;
                *&v72[14] = v44;
                v73 = 2048;
                v74 = v10;
                v75 = 2114;
                v76 = @"BSServiceDomain.m";
                v77 = 1024;
                v78 = 49;
                v79 = 2114;
                v80 = v41;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v72, 0x3Au);
              }

              v45 = v41;
              [v41 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A86475CLL);
            }

            *v72 = v10;
            *&v72[8] = BSService;
            v15 = objc_msgSendSuper2(v72, sel_init);
            v16 = v15;
            v10 = v15;
            if (v15)
            {
              objc_storeStrong(&v15->_specification, v9);
              objc_storeStrong(&v16->_domainSpecification, a2);
              v10->_lock._os_unfair_lock_opaque = 0;
              domainSpecification = v16->_domainSpecification;
              if ((!domainSpecification || !domainSpecification->_start) && ![(BSServiceSpecification *)v16->_specification isHiddenAtLaunch])
              {
                v18 = [MEMORY[0x1E695DF70] array];
                lock_pendedConnections = v10->_lock_pendedConnections;
                v10->_lock_pendedConnections = v18;
              }
            }
          }

          v20 = [v11 identifier];
          [v61 setObject:v10 forKey:v20];

          v4 = v62;
        }

        v6 = [v59 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v6);
    }

    v21 = [v61 copy];
    v22 = v58[3];
    v58[3] = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = v58[4];
    v58[4] = v23;

    v25 = [BSXPCServiceConnectionListener listenerForSpecification:v62];
    v26 = v58[2];
    v58[2] = v25;

    v27 = v58[2];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __42__BSServiceDomain__initWithSpecification___block_invoke;
    v63[3] = &unk_1E7520F08;
    v64 = v62;
    v28 = v58;
    v65 = v28;
    [(BSXPCServiceConnectionListener *)v27 configure:v63];
  }

  else
  {
LABEL_22:
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void __42__BSServiceDomain__initWithSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_2;
  v6[3] = &unk_1E7520EB8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v3 setConnectionHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_111;
  v4[3] = &unk_1E7520EE0;
  v5 = *(a1 + 32);
  [v3 setErrorHandler:v4];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(BSXPCServiceConnection *)v3 defaultNameWithClientLoggingProem:0 as:?];
  v5 = BSServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "[BSServiceDomain-%{public}@] Incoming root connection is %{public}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_101;
  v11[3] = &unk_1E7520DD0;
  v7 = v4;
  v12 = v7;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  [(BSXPCServiceConnection *)v3 configure:v11];
  v8 = BSServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_19A821000, v8, OS_LOG_TYPE_DEFAULT, "[BSServiceDomain-%{public}@] Activating incoming root connection %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock((*(a1 + 40) + 48));
  [*(*(a1 + 40) + 32) addObject:v3];
  os_unfair_lock_unlock((*(a1 + 40) + 48));
  [(BSXPCServiceConnection *)v3 activateNowOrWhenReady:?];

  v10 = *MEMORY[0x1E69E9840];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_101(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] copy];
    v5 = v3[18];
    v3[18] = v4;
  }

  v6 = BSServiceQualityFromBSServiceDomainMultiplexingType([a1[5] multiplexingType]);
  if (v6)
  {
    v7 = [BSServiceDispatchQueue queueWithName:a1[4] serviceQuality:v6];
    [(BSXPCServiceConnectionEventHandler *)v3 setQueue:v7];
  }

  if (v3)
  {
    v8 = [&__block_literal_global_13 copy];
    v9 = v3[9];
    v3[9] = v8;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_3;
  v19[3] = &unk_1E7520E90;
  v20 = a1[5];
  v21 = a1[6];
  v22 = a1[4];
  if (v3)
  {
    v10 = [v19 copy];
    v11 = v3[7];
    v3[7] = v10;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__BSServiceDomain__initWithSpecification___block_invoke_107;
  v15[3] = &unk_1E7520DA8;
  v16 = a1[5];
  v17 = a1[4];
  v12 = a1[6];
  v18 = v12;
  if (v3)
  {
    v13 = [v15 copy];
    v14 = v3[10];
    v3[10] = v13;

    v12 = v18;
  }
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 72) == 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [BSServiceListenerConnection _connectionFromIncomingConnection:v4 requiresMessagingAfterHandshake:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 service];
    v10 = [*(*(a1 + 40) + 24) objectForKey:v9];
    if (!v10)
    {
      v16 = BSServiceLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = [*(a1 + 32) identifier];
        v29 = [(BSXPCServiceConnection *)v4 loggingProem];
        v30 = *(a1 + 48);
        *buf = 138544130;
        v40 = v28;
        v41 = 2114;
        v42 = v9;
        v43 = 2114;
        v44 = v29;
        v45 = 2114;
        v46 = v30;
        _os_log_error_impl(&dword_19A821000, v16, OS_LOG_TYPE_ERROR, "[BSServiceDomain-%{public}@] Unknown service %{public}@ for incoming child connection %{public}@ on %{public}@. Invalidating the connection.", buf, 0x2Au);
      }

      [v8 invalidate];
      goto LABEL_28;
    }

    v11 = v8;
    v12 = [v11 instance];
    os_unfair_lock_lock((v10 + 48));
    v13 = *(v10 + 24);
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12 == 0;
    }

    if (v14)
    {
      v17 = v13;
    }

    else
    {
      v17 = [*(v10 + 32) objectForKey:v12];
    }

    v18 = v17;
    if (v17)
    {
      os_unfair_lock_unlock((v10 + 48));
      v19 = [v18 object];
      v20 = v19;
      if (v19)
      {
        [v19 didReceiveConnection:v11];
      }

      else
      {
        v23 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v37 = [(BSServiceConnection *)v11 loggingProem];
          v34 = [*(v10 + 8) identifier];
          [*(v10 + 16) identifier];
          *buf = 138544130;
          v40 = v37;
          v41 = 2114;
          v42 = v12;
          v43 = 2114;
          v44 = v34;
          v32 = v45 = 2114;
          v46 = v32;
          _os_log_error_impl(&dword_19A821000, v23, OS_LOG_TYPE_ERROR, "invalidating connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because the listener has gone away", buf, 0x2Au);
        }

        [v11 invalidate];
        v20 = 0;
      }
    }

    else
    {
      v21 = *(v10 + 40);
      if (!v21)
      {
        os_unfair_lock_unlock((v10 + 48));
        v25 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v38 = [(BSServiceConnection *)v11 loggingProem];
          v35 = [*(v10 + 8) identifier];
          v31 = [*(v10 + 16) identifier];
          *buf = 138544130;
          v40 = v38;
          v41 = 2114;
          v42 = v12;
          v43 = 2114;
          v44 = v35;
          v45 = 2114;
          v46 = v31;
          _os_log_error_impl(&dword_19A821000, v25, OS_LOG_TYPE_ERROR, "invalidating connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because there is no listener to handle it", buf, 0x2Au);
        }

        [v11 invalidate];
        goto LABEL_27;
      }

      [v21 addObject:v11];
      os_unfair_lock_unlock((v10 + 48));
      v20 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v36 = [(BSServiceConnection *)v11 loggingProem];
        v33 = [*(v10 + 8) identifier];
        v22 = [*(v10 + 16) identifier];
        *buf = 138544130;
        v40 = v36;
        v41 = 2114;
        v42 = v12;
        v43 = 2114;
        v44 = v33;
        v45 = 2114;
        v46 = v22;
        _os_log_debug_impl(&dword_19A821000, v20, OS_LOG_TYPE_DEBUG, "pending connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because there is no listener to handle it", buf, 0x2Au);
      }
    }

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  v15 = BSServiceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v26 = [*(a1 + 32) identifier];
    v27 = [(BSXPCServiceConnection *)v4 loggingProem];
    *buf = 138543618;
    v40 = v26;
    v41 = 2114;
    v42 = v27;
    _os_log_error_impl(&dword_19A821000, v15, OS_LOG_TYPE_ERROR, "[BSServiceDomain-%{public}@] Failed to wrap incoming child connection %{public}@", buf, 0x16u);
  }

  [(BSXPCServiceConnection *)v4 cancel];
LABEL_29:

  v24 = *MEMORY[0x1E69E9840];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BSServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v9 = *(a1 + 40);
    v10 = [v6 succinctDescription];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "[BSServiceDomain-%{public}@] Error on incoming root connection %{public}@: %{public}@", &v12, 0x20u);
  }

  os_unfair_lock_lock((*(a1 + 48) + 48));
  [*(*(a1 + 48) + 32) removeObjectIdenticalTo:v5];
  os_unfair_lock_unlock((*(a1 + 48) + 48));
  [(BSXPCServiceConnection *)v5 cancel];

  v11 = *MEMORY[0x1E69E9840];
}

void __42__BSServiceDomain__initWithSpecification___block_invoke_111(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) identifier];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v7 = _MergedGlobals_13;
    v14 = _MergedGlobals_13;
    if (!_MergedGlobals_13)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getRBSProcessIdentityClass_block_invoke;
      v10[3] = &unk_1E75200F8;
      v10[4] = &v11;
      __getRBSProcessIdentityClass_block_invoke(v10);
      v7 = v12[3];
    }

    v8 = v7;
    _Block_object_dispose(&v11, 8);
    v9 = [v7 identityOfCurrentProcess];
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v3;
    _os_log_error_impl(&dword_19A821000, v4, OS_LOG_TYPE_ERROR, "[BSServiceDomain-%{public}@] unexpected error on listener connection for %{public}@ (is the system going down or the domain misconfigured?): %{public}@", buf, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E698E680] builderWithObject:a1];
    os_unfair_lock_lock((a1 + 48));
    v5 = [*(a1 + 24) allValues];
    v6 = [v5 mutableCopy];

    [v6 sortUsingComparator:&__block_literal_global_145];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_2;
    v15[3] = &unk_1E75209E8;
    v7 = v4;
    v16 = v7;
    v17 = a1;
    v8 = [v7 modifyProem:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_3;
    v12[3] = &unk_1E75205A8;
    v12[4] = a1;
    v9 = v7;
    v13 = v9;
    v10 = v6;
    v14 = v10;
    [v9 appendBodySectionWithName:0 multilinePrefix:v3 block:v12];
    os_unfair_lock_unlock((a1 + 48));
    a1 = [v9 build];
  }

  return a1;
}

- (id)serviceWithIdentifier:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1[3] objectForKey:v3];
  }

  return a1;
}

- (void)_enforceListenerRegistrationForReason:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__BSServiceDomain__enforceListenerRegistrationForReason___block_invoke;
    v6[3] = &unk_1E7520F58;
    v7 = v3;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __28__BSServiceDomain__activate__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    v2 = *&WeakRetained[2]._os_unfair_lock_opaque;
    if (!v2 || *(v2 + 72) != 3)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only manual session domains can deactivate"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__deactivate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        *&buf[4] = v11;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        v22 = v20;
        LOWORD(v23) = 2114;
        *(&v23 + 2) = @"BSServiceDomain.m";
        WORD5(v23) = 1024;
        HIDWORD(v23) = 498;
        v24 = 2114;
        v25 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A866090);
    }

    os_unfair_lock_lock(WeakRetained + 12);
    v3 = v20;
    v4 = *&v20[10]._os_unfair_lock_opaque;
    if (!v4)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"domain activation underflow"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel__deactivate);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        *&buf[22] = 2048;
        v22 = v20;
        LOWORD(v23) = 2114;
        *(&v23 + 2) = @"BSServiceDomain.m";
        WORD5(v23) = 1024;
        HIDWORD(v23) = 500;
        v24 = 2114;
        v25 = v15;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v19 = v15;
      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86618CLL);
    }

    if ((v20[13]._os_unfair_lock_opaque & 0x100) == 0)
    {
      v5 = v4 - 1;
      *&v20[10]._os_unfair_lock_opaque = v5;
      if (!v5)
      {
        v6 = BSServiceBootstrapLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*&v20[2]._os_unfair_lock_opaque identifier];
          *buf = 138543362;
          *&buf[4] = v7;
          _os_log_impl(&dword_19A821000, v6, OS_LOG_TYPE_DEFAULT, "destroying session for domain %{public}@", buf, 0xCu);
        }

        v3 = v20;
        if ((v20[13]._os_unfair_lock_opaque & 1) == 0)
        {
          LOBYTE(v20[13]._os_unfair_lock_opaque) = 1;
          v8 = *&v20[4]._os_unfair_lock_opaque;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __30__BSServiceDomain__deactivate__block_invoke;
          v22 = &unk_1E7520FC0;
          *&v23 = v20;
          *(&v23 + 1) = sel__deactivate;
          [(BSXPCServiceConnectionListener *)v8 suspendWithCompletion:buf];
          v3 = v20;
        }
      }
    }

    os_unfair_lock_unlock(v3 + 12);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__BSServiceDomain__enforceListenerRegistrationForReason___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v22 = *(a1 + 32);
  if (a3)
  {
    os_unfair_lock_lock((a3 + 48));
    v23 = a3;
    if (([*(a3 + 8) isHiddenAtLaunch] & 1) == 0 && !*(a3 + 24) && !objc_msgSend(*(a3 + 32), "count"))
    {
      v4 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v20 = [*(v23 + 16) identifier];
        v21 = *(v23 + 8);
        *v36 = 138543874;
        v37 = v20;
        v38 = 2114;
        v39 = v21;
        v40 = 2114;
        v41 = v22;
        _os_log_fault_impl(&dword_19A821000, v4, OS_LOG_TYPE_FAULT, "domain=%{public}@ service=%{public}@ : no listener at %{public}@", v36, 0x20u);
      }

      a3 = v23;
    }

    v5 = *(a3 + 40);
    v6 = a3;
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = 0;

    os_unfair_lock_unlock((v23 + 48));
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v14 = BSServiceBootstrapLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [(BSServiceConnection *)v13 loggingProem];
            v16 = [v13 instance];
            v17 = [*(v23 + 8) identifier];
            v18 = [*(v23 + 16) identifier];
            *buf = 138544130;
            v29 = v15;
            v30 = 2114;
            v31 = v16;
            v32 = 2114;
            v33 = v17;
            v34 = 2114;
            v35 = v18;
            _os_log_error_impl(&dword_19A821000, v14, OS_LOG_TYPE_ERROR, "invalidating connection %{public}@ to instance %{public}@ of service %{public}@ of domain %{public}@ because pending has been disabled", buf, 0x2Au);
          }

          [v13 invalidate];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v10);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    if ((*(a1 + 53) & 1) == 0)
    {
      *(a1 + 53) = 1;
      v2 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 8) identifier];
        v5 = 138543362;
        v6 = v3;
        _os_log_impl(&dword_19A821000, v2, OS_LOG_TYPE_DEFAULT, "invalidating domain %{public}@", &v5, 0xCu);
      }

      [*(a1 + 24) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_142];
      [*(a1 + 16) invalidate];
    }

    os_unfair_lock_unlock((a1 + 48));
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __30__BSServiceDomain__invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    os_unfair_lock_lock((a3 + 48));
    if (*(a3 + 52))
    {
      v4 = 0;
    }

    else
    {
      *(a3 + 52) = 1;
      v4 = *(a3 + 40);
      v5 = *(a3 + 24);
      *(a3 + 24) = 0;

      v6 = *(a3 + 32);
      *(a3 + 32) = 0;

      v7 = *(a3 + 40);
      *(a3 + 40) = 0;
    }

    os_unfair_lock_unlock((a3 + 48));
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11++) cancel];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 identifier];
  if (v4)
  {
    v8 = v4[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 identifier];
  v10 = [v7 compare:v9];

  return v10;
}

void __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) identifier];
  [v2 appendString:v3 withName:0];

  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  if (v5 && *(v5 + 72))
  {
    if (*(v4 + 53))
    {
      v6 = @"invalid";
    }

    else
    {
      v7 = *(v4 + 52);
      v8 = @"active";
      v9 = *(v4 + 40) == 0;
      v10 = @"reactivating";
      if (v9)
      {
        v8 = @"inactive";
        v10 = @"deactivating";
      }

      if (v7 == 1)
      {
        v6 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    v11 = [*(a1 + 32) appendObject:v6 withName:@"state"];
  }
}

void __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 activeMultilinePrefix];
  [(BSServiceDomainSpecification *)v3 _appendManagerDumpBodyToBuilder:v2 withMultilinePrefix:v4];

  v5 = *(a1 + 40);
  v6 = [(BSXPCServiceConnectionListener *)*(*(a1 + 32) + 16) endpoint];
  v7 = [v5 appendObject:v6 withName:@"endpoint"];

  v8 = *(a1 + 40);
  v9 = [v8 activeMultilinePrefix];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_4;
  v17 = &unk_1E75209E8;
  v18 = *(a1 + 48);
  v19 = *(a1 + 40);
  [v8 appendBodySectionWithName:@"services" multilinePrefix:v9 block:&v14];

  v10 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 16) withName:{@"rootListener", v14, v15, v16, v17}];
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 32);
  v13 = [v11 activeMultilinePrefix];
  [v11 appendArraySection:v12 withName:@"incomingRootConnections" multilinePrefix:v13 skipIfEmpty:0];
}

void __56__BSServiceDomain__debugDescriptionWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v7 activeMultilinePrefix];
        v9 = [(BSService *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __30__BSServiceDomain__deactivate__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  if ((*(v2 + 52) & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sanity - this shouldn't be possible"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 40));
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v13 = 138544642;
      v14 = v7;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2114;
      v20 = @"BSServiceDomain.m";
      v21 = 1024;
      v22 = 507;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    v12 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A866E88);
  }

  *(v2 + 52) = 0;
  v3 = *(a1 + 32);
  if (*(v3 + 40))
  {
    [(BSServiceDomain *)v3 _enforceListenerRegistrationForReason:?];
    [(BSXPCServiceConnectionListener *)*(*(a1 + 32) + 16) resume];
    v3 = *(a1 + 32);
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = (v3 + 48);

  os_unfair_lock_unlock(v5);
}

@end