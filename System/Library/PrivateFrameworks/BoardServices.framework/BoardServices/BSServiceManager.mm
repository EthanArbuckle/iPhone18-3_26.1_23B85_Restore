@interface BSServiceManager
+ (id)_sharedInstanceCreatingIfNecessary:(uint64_t)a1;
+ (id)debugDescription;
+ (id)sharedInstance;
+ (id)sharedInstanceIfCreated;
+ (void)validateDynamicConfiguration:(void *)a3 withDebugInfo:;
- (BSServiceManager)init;
- (id)_lock_registerDomain:(uint64_t)a1;
- (id)activateManualDomain:(uint64_t)a1;
- (id)debugDescription;
- (id)domainWithIdentifier:(uint64_t)a1;
- (id)registerDynamicConfiguration:(uint64_t)a1;
- (id)viewServiceConfigurationRegisteringIfNecessary:(uint64_t)a1;
- (os_unfair_lock_s)extendAutomaticBootstrapCompletion;
- (void)activateViewServiceConfiguration;
- (void)dealloc;
- (void)enforceXPCServiceListenerRegistration;
@end

@implementation BSServiceManager

+ (id)sharedInstanceIfCreated
{
  objc_opt_self();

  return [BSServiceManager _sharedInstanceCreatingIfNecessary:?];
}

+ (id)sharedInstance
{
  objc_opt_self();

  return [BSServiceManager _sharedInstanceCreatingIfNecessary:?];
}

- (void)activateViewServiceConfiguration
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_24;
  }

  v42 = [(BSServiceManager *)a1 viewServiceConfigurationRegisteringIfNecessary:?];
  v2 = [v42 domains];
  v3 = [v2 count];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:v3];
  os_unfair_lock_lock((a1 + 56));
  if (*(a1 + 73) == 1)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(sel_activateViewServiceConfiguration);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v54 = v30;
      v55 = 2114;
      v56 = v32;
      v57 = 2048;
      v58 = a1;
      v59 = 2114;
      v60 = @"BSServiceManager.m";
      v61 = 1024;
      v62 = 419;
      v63 = 2114;
      v64 = v29;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82BFBCLL);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v6)
  {
    v7 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = *(a1 + 48);
        v11 = [v9 identifier];
        v12 = [v10 objectForKey:v11];

        if (!v12)
        {
          v22 = MEMORY[0x1E696AEC0];
          v23 = [v9 identifier];
          v24 = [v22 stringWithFormat:@"attempt to activate unknown domain %@", v23];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(sel_activateViewServiceConfiguration);
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            *buf = 138544642;
            v54 = v25;
            v55 = 2114;
            v56 = v27;
            v57 = 2048;
            v58 = a1;
            v59 = 2114;
            v60 = @"BSServiceManager.m";
            v61 = 1024;
            v62 = 422;
            v63 = 2114;
            v64 = v24;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v28 = v24;
          [v24 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          goto LABEL_36;
        }

        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock((a1 + 56));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *v44;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v44 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v43 + 1) + 8 * j);
      if (!v17)
      {
        v34 = 0;
        goto LABEL_33;
      }

      v18 = *(v17 + 8);
      if (!v18 || (v19 = v18[9] == 5, v18, !v19))
      {
        v34 = *(v17 + 8);
LABEL_33:
        v35 = MEMORY[0x1E696AEC0];
        v36 = v34;
        v37 = [v35 stringWithFormat:@"view-service domains must specify Start to be ViewService : %@", v36];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v38 = NSStringFromSelector(sel_activateViewServiceConfiguration);
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          *buf = 138544642;
          v54 = v38;
          v55 = 2114;
          v56 = v40;
          v57 = 2048;
          v58 = a1;
          v59 = 2114;
          v60 = @"BSServiceManager.m";
          v61 = 1024;
          v62 = 427;
          v63 = 2114;
          v64 = v37;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v41 = v37;
        [v37 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
LABEL_36:
        JUMPOUT(0x19A82BEC4);
      }

      v20 = [(BSServiceDomain *)v17 _activate];
    }

    v14 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
  }

  while (v14);
LABEL_22:

LABEL_23:
LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
}

+ (id)_sharedInstanceCreatingIfNecessary:(uint64_t)a1
{
  v139 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_11);
  v3 = qword_1ED4A7C80;
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
    v5 = [BSServiceManager alloc];
    v6 = objc_opt_self();
    obj = [(BSRBSService *)v6 _sharedInstanceCreatingIfNecessary:?];
    v108 = +[BSServiceInitiatingConnectionMultiplexer userInteractiveMultiplexer];
    v107 = +[BSServiceInitiatingConnectionMultiplexer defaultMultiplexer];
    v7 = +[BSServicesConfiguration bootstrapConfiguration];
    v8 = obj;
    v113 = v108;
    v112 = v107;
    v111 = v7;
    if (!v5)
    {
      goto LABEL_35;
    }

    v110 = v8;
    if (!v110)
    {
      v34 = MEMORY[0x1E696AEC0];
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [v34 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"RBSService", v36];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v128 = v38;
        v129 = 2114;
        v130 = v40;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 113;
        v137 = 2114;
        v138 = v37;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v41 = v37;
      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B06CLL);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = MEMORY[0x1E696AEC0];
      v43 = [v110 classForCoder];
      if (!v43)
      {
        v43 = objc_opt_class();
      }

      v44 = NSStringFromClass(v43);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = [v42 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"RBSService", v44, v46];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        v128 = v48;
        v129 = 2114;
        v130 = v50;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 113;
        v137 = 2114;
        v138 = v47;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v51 = v47;
      [v47 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B1B4);
    }

    v9 = v113;
    if (!v9)
    {
      v52 = MEMORY[0x1E696AEC0];
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = [v52 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"uiMuxer", v54];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v56 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        *buf = 138544642;
        v128 = v56;
        v129 = 2114;
        v130 = v58;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 114;
        v137 = 2114;
        v138 = v55;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v59 = v55;
      [v55 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B2D4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v60 = MEMORY[0x1E696AEC0];
      v61 = [v9 classForCoder];
      if (!v61)
      {
        v61 = objc_opt_class();
      }

      v62 = NSStringFromClass(v61);
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      v65 = [v60 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"uiMuxer", v62, v64];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v66 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138544642;
        v128 = v66;
        v129 = 2114;
        v130 = v68;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 114;
        v137 = 2114;
        v138 = v65;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v69 = v65;
      [v65 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B41CLL);
    }

    v10 = v112;
    if (!v10)
    {
      v70 = MEMORY[0x1E696AEC0];
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = [v70 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"dfMuxer", v72];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v74 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        *buf = 138544642;
        v128 = v74;
        v129 = 2114;
        v130 = v76;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 115;
        v137 = 2114;
        v138 = v73;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v77 = v73;
      [v73 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B53CLL);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v78 = MEMORY[0x1E696AEC0];
      v79 = [v10 classForCoder];
      if (!v79)
      {
        v79 = objc_opt_class();
      }

      v80 = NSStringFromClass(v79);
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      v83 = [v78 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"dfMuxer", v80, v82];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v84 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        *buf = 138544642;
        v128 = v84;
        v129 = 2114;
        v130 = v86;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 115;
        v137 = 2114;
        v138 = v83;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v87 = v83;
      [v83 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B684);
    }

    v11 = v111;
    if (!v11)
    {
      v88 = MEMORY[0x1E696AEC0];
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v91 = [v88 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"bootstrapConfiguration", v90];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v92 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        *buf = 138544642;
        v128 = v92;
        v129 = 2114;
        v130 = v94;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 116;
        v137 = 2114;
        v138 = v91;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v95 = v91;
      [v91 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B7A4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v96 = MEMORY[0x1E696AEC0];
      v97 = [v11 classForCoder];
      if (!v97)
      {
        v97 = objc_opt_class();
      }

      v98 = NSStringFromClass(v97);
      v99 = objc_opt_class();
      v100 = NSStringFromClass(v99);
      v101 = [v96 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"bootstrapConfiguration", v98, v100];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v102 = NSStringFromSelector(sel__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration_);
        v103 = objc_opt_class();
        v104 = NSStringFromClass(v103);
        *buf = 138544642;
        v128 = v102;
        v129 = 2114;
        v130 = v104;
        v131 = 2048;
        v132 = v5;
        v133 = 2114;
        v134 = @"BSServiceManager.m";
        v135 = 1024;
        v136 = 116;
        v137 = 2114;
        v138 = v101;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v105 = v101;
      [v101 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85B8ECLL);
    }

    v125.receiver = v5;
    v125.super_class = BSServiceManager;
    v12 = objc_msgSendSuper2(&v125, sel_init);
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, obj);
      objc_storeStrong(v13 + 2, v108);
      objc_storeStrong(v13 + 3, v107);
      objc_storeStrong(v13 + 4, v7);
      *(v13 + 14) = 0;
      v14 = v13[4];
      if (v14)
      {
        v14 = v14[3];
      }

      v106 = v14;
      v15 = [MEMORY[0x1E695DF70] array];
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v106, "count")}];
      v17 = v13[6];
      v13[6] = v16;

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v114 = v106;
      v18 = [v114 countByEnumeratingWithState:&v121 objects:buf count:16];
      if (v18)
      {
        v19 = *v122;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v122 != v19)
            {
              objc_enumerationMutation(v114);
            }

            v21 = *(*(&v121 + 1) + 8 * i);
            v22 = [[BSServiceDomain alloc] _initWithSpecification:v21];
            v23 = v13[6];
            v24 = [v21 identifier];
            [v23 setObject:v22 forKey:v24];

            if (!v21 || (v21[9] | 4) == 4)
            {
              [v15 addObject:v22];
            }
          }

          v18 = [v114 countByEnumeratingWithState:&v121 objects:buf count:16];
        }

        while (v18);
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v25 = v15;
      v26 = [v25 countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (v26)
      {
        v27 = *v118;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v118 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = [(BSServiceDomain *)*(*(&v117 + 1) + 8 * j) _activate];
          }

          v26 = [v25 countByEnumeratingWithState:&v117 objects:v126 count:16];
        }

        while (v26);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke;
      block[3] = &unk_1E75205D0;
      v30 = v13;
      v116 = v30;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
LABEL_35:
      v30 = 0;
    }

    v31 = qword_1ED4A7C80;
    qword_1ED4A7C80 = v30;

    v3 = v30;
  }

  os_unfair_lock_unlock(&_MergedGlobals_11);
  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BSServiceManager)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceManager"];
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
    v17 = @"BSServiceManager.m";
    v18 = 1024;
    v19 = 105;
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

void __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 56));
  *(*(a1 + 32) + 72) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = v3 != 0;
  if (v3)
  {
    v5 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "automatic bootstrap deadline has been extended", buf, 2u);
    }

    v2 = *(a1 + 32);
  }

  if ([*(v2 + 48) count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(*(a1 + 32) + 48);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke_59;
    v15 = &unk_1E7520BE8;
    v17 = v4;
    v8 = v6;
    v16 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:&v12];
    if ([v8 count])
    {
      [v8 sortUsingComparator:&__block_literal_global_11];
      v9 = BSServiceBootstrapLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_19A821000, v9, OS_LOG_TYPE_DEFAULT, "automatic bootstrapping is complete : domains=%@", buf, 0xCu);
      }
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
  v11 = *MEMORY[0x1E69E9840];
}

void __79__BSServiceManager__initWithRBSService_uiMuxer_dfMuxer_bootstrapConfiguration___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && (v7 = v5[1]) != 0 && (v8 = v7[9], v7, v8))
  {
    if (v8 != 1)
    {
      goto LABEL_9;
    }

    v9 = @"manual bootstrap deadline";
  }

  else
  {
    if (*(a1 + 40))
    {
      goto LABEL_9;
    }

    [*(a1 + 32) addObject:v10];
    v9 = @"automatic bootstrap deadline";
  }

  [(BSServiceDomain *)v6 _enforceListenerRegistrationForReason:v9];
LABEL_9:
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
      v18 = @"BSServiceManager.m";
      v19 = 1024;
      v20 = 185;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85C170);
  }

  v10.receiver = self;
  v10.super_class = BSServiceManager;
  [(BSServiceManager *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

+ (id)debugDescription
{
  v2 = objc_autoreleasePoolPush();
  v3 = [BSServiceManager _sharedInstanceCreatingIfNecessary:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugDescription];
  }

  else
  {
    v6 = [MEMORY[0x1E698E680] builderWithClass:objc_opt_class()];
    [v6 setUseDebugDescription:1];
    v7 = [v6 activeMultilinePrefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__BSServiceManager_debugDescription__block_invoke;
    v10[3] = &unk_1E75205D0;
    v8 = v6;
    v11 = v8;
    [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:v10];

    v5 = [v8 build];
  }

  objc_autoreleasePoolPop(v2);

  return v5;
}

void __36__BSServiceManager_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 activeMultilinePrefix];
  v3 = [BSServiceInitiatingConnectionMultiplexer debugDescriptionWithMultilinePrefix:v6];
  [v2 appendString:v3 withName:@"clients"];

  v4 = *(a1 + 32);
  v7 = [v4 activeMultilinePrefix];
  v5 = [BSRBSService debugDescriptionWithMultilinePrefix:v7];
  [v4 appendString:v5 withName:@"RBSService"];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  os_unfair_lock_lock(&self->_lock);
  v22 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  lock_identifierToDomain = self->_lock_identifierToDomain;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __36__BSServiceManager_debugDescription__block_invoke;
  v35[3] = &unk_1E7520C30;
  v35[4] = self;
  v7 = v22;
  v36 = v7;
  v8 = v4;
  v37 = v8;
  v9 = v5;
  v38 = v9;
  [(NSMutableDictionary *)lock_identifierToDomain enumerateKeysAndObjectsUsingBlock:v35];
  [v7 sortUsingComparator:&__block_literal_global_83];
  [v8 sortUsingComparator:&__block_literal_global_83];
  [v9 sortUsingComparator:&__block_literal_global_83];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __36__BSServiceManager_debugDescription__block_invoke_3;
  v29[3] = &unk_1E7520C78;
  v10 = v3;
  v30 = v10;
  v11 = v7;
  v31 = v11;
  v12 = v8;
  v32 = v12;
  v13 = v9;
  v33 = v13;
  v34 = self;
  v14 = [v10 modifyProem:v29];
  v15 = [v10 activeMultilinePrefix];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36__BSServiceManager_debugDescription__block_invoke_4;
  v23[3] = &unk_1E7520C78;
  v16 = v10;
  v24 = v16;
  v17 = v11;
  v25 = v17;
  v18 = v12;
  v26 = v18;
  v19 = v13;
  v27 = v19;
  v28 = self;
  [v16 appendBodySectionWithName:0 multilinePrefix:v15 block:v23];

  os_unfair_lock_unlock(&self->_lock);
  v20 = [v16 build];

  return v20;
}

void __36__BSServiceManager_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 32) domainForIdentifier:v9];

  if (v6)
  {
    v7 = 40;
  }

  else
  {
    v8 = [*(*(a1 + 32) + 40) domainForIdentifier:v9];

    v7 = 48;
    if (!v8)
    {
      v7 = 56;
    }
  }

  [*(a1 + v7) addObject:v5];
}

uint64_t __36__BSServiceManager_debugDescription__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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

  v9 = v8;
  v10 = [v9 identifier];
  v11 = [v7 compare:v10];

  return v11;
}

id __36__BSServiceManager_debugDescription__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"count"), @"bootstrapDomains"}];
  if ([*(a1 + 48) count])
  {
    v3 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 48) withName:{"count"), @"viewServiceDomains"}];
  }

  v4 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 56) withName:{"count"), @"dynamicDomains"}];
  v5 = *(a1 + 64);
  if (*(v5 + 64))
  {
    v6 = @"extended";
  }

  else if (*(v5 + 72))
  {
    v6 = @"complete";
  }

  else
  {
    v6 = @"pending";
  }

  return [*(a1 + 32) appendObject:v6 withName:@"automaticStart"];
}

void __36__BSServiceManager_debugDescription__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __36__BSServiceManager_debugDescription__block_invoke_5;
  v29[3] = &unk_1E75209E8;
  v30 = *(a1 + 40);
  v31 = *(a1 + 32);
  [v2 appendBodySectionWithName:@"bootstrapDomains" multilinePrefix:v3 block:v29];

  if ([*(a1 + 48) count])
  {
    v4 = *(a1 + 32);
    v5 = [v4 activeMultilinePrefix];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __36__BSServiceManager_debugDescription__block_invoke_6;
    v26[3] = &unk_1E75209E8;
    v27 = *(a1 + 48);
    v28 = *(a1 + 32);
    [v4 appendBodySectionWithName:@"viewServiceDomains" multilinePrefix:v5 block:v26];
  }

  v6 = *(a1 + 32);
  v7 = [v6 activeMultilinePrefix];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36__BSServiceManager_debugDescription__block_invoke_7;
  v23[3] = &unk_1E75209E8;
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  [v6 appendBodySectionWithName:@"dynamicDomains" multilinePrefix:v7 block:v23];

  v8 = *(a1 + 32);
  v9 = [v8 activeMultilinePrefix];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __36__BSServiceManager_debugDescription__block_invoke_8;
  v20 = &unk_1E75209E8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 64);
  v21 = v10;
  v22 = v11;
  [v8 appendBodySectionWithName:@"clientManagers" multilinePrefix:v9 block:&v17];

  v12 = *(a1 + 32);
  v13 = *(*(a1 + 64) + 8);
  v14 = [v12 activeMultilinePrefix];
  v15 = [v13 debugDescriptionWithMultilinePrefix:v14];
  v16 = [v12 appendObject:v15 withName:@"RBSService"];
}

void __36__BSServiceManager_debugDescription__block_invoke_5(uint64_t a1)
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
        v9 = [(BSServiceDomain *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __36__BSServiceManager_debugDescription__block_invoke_6(uint64_t a1)
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
        v9 = [(BSServiceDomain *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __36__BSServiceManager_debugDescription__block_invoke_7(uint64_t a1)
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
        v9 = [(BSServiceDomain *)v6 _debugDescriptionWithMultilinePrefix:v8];
        v10 = [v7 appendObject:v9 withName:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __36__BSServiceManager_debugDescription__block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v10 = [v2 activeMultilinePrefix];
  v4 = [v3 debugDescriptionWithMultilinePrefix:?];
  v5 = [v2 appendObject:v4 withName:@"userInteractive"];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 24);
  v11 = [v6 activeMultilinePrefix];
  v8 = [v7 debugDescriptionWithMultilinePrefix:?];
  v9 = [v6 appendObject:v8 withName:@"default"];
}

- (id)domainWithIdentifier:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 56));
    v4 = [*(a1 + 48) objectForKey:v3];
    os_unfair_lock_unlock((a1 + 56));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (os_unfair_lock_s)extendAutomaticBootstrapCompletion
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock(v1 + 14);
    if (LOBYTE(v1[18]._os_unfair_lock_opaque) == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before automatic bootstrapping would complete without extensions"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel_extendAutomaticBootstrapCompletion);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v17 = v6;
        v18 = 2114;
        v19 = v8;
        v20 = 2048;
        v21 = v1;
        v22 = 2114;
        v23 = @"BSServiceManager.m";
        v24 = 1024;
        v25 = 301;
        v26 = 2114;
        v27 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85D680);
    }

    if (BYTE1(v1[18]._os_unfair_lock_opaque) == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel_extendAutomaticBootstrapCompletion);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        v20 = 2048;
        v21 = v1;
        v22 = 2114;
        v23 = @"BSServiceManager.m";
        v24 = 1024;
        v25 = 302;
        v26 = 2114;
        v27 = v10;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v14 = v10;
      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85D778);
    }

    ++*&v1[16]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v1 + 14);
    v2 = objc_alloc(MEMORY[0x1E698E778]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke;
    v15[3] = &unk_1E7520CC8;
    v15[4] = v1;
    v15[5] = sel_extendAutomaticBootstrapCompletion;
    a1 = [v2 initWithIdentifier:@"com.apple.boardservices.bootstrap" forReason:@"extend" invalidationBlock:v15];
  }

  v3 = *MEMORY[0x1E69E9840];

  return a1;
}

void __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bootstrap extension underflow"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(*(a1 + 40));
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = *(a1 + 32);
      *buf = 138544642;
      v23 = v14;
      v24 = 2114;
      v25 = v17;
      v26 = 2048;
      v27 = v18;
      v28 = 2114;
      v29 = @"BSServiceManager.m";
      v30 = 1024;
      v31 = 308;
      v32 = 2114;
      v33 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85DA80);
  }

  v6 = v5 - 1;
  *(v4 + 64) = v6;
  v7 = *(a1 + 32);
  if (!v6 && *(v7 + 72) == 1)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    if ([*(*(a1 + 32) + 48) count])
    {
      v9 = *(*(a1 + 32) + 48);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke_132;
      v20[3] = &unk_1E7520CA0;
      v21 = v8;
      [v9 enumerateKeysAndObjectsUsingBlock:v20];
    }

    [v8 sortUsingComparator:&__block_literal_global_137];
    v10 = BSServiceBootstrapLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_19A821000, v10, OS_LOG_TYPE_DEFAULT, "extended automatic bootstrapping is complete : domains=%@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v7 + 56));

  v12 = *MEMORY[0x1E69E9840];
}

void __54__BSServiceManager_extendAutomaticBootstrapCompletion__block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = *(v4 + 1);
  if (!v5 || (v6 = v5[9], v5, !v6))
  {
    v7 = v11[1];
LABEL_5:
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v9 identifier];
    [v8 addObject:v10];

    [(BSServiceDomain *)v11 _enforceListenerRegistrationForReason:?];
  }
}

- (id)_lock_registerDomain:(uint64_t)a1
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_assert_owner((a1 + 56));
  if (*(a1 + 73) == 1)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(sel__lock_registerDomain_);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v32 = v13;
      v33 = 2114;
      v34 = v15;
      v35 = 2048;
      v36 = a1;
      v37 = 2114;
      v38 = @"BSServiceManager.m";
      v39 = 1024;
      v40 = 329;
      v41 = 2114;
      v42 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85DDECLL);
  }

  if (v3 && v3[9] == 4)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dynamic domains cannot be an XPCService : %@", v3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(sel__lock_registerDomain_);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v32 = v18;
      v33 = 2114;
      v34 = v20;
      v35 = 2048;
      v36 = a1;
      v37 = 2114;
      v38 = @"BSServiceManager.m";
      v39 = 1024;
      v40 = 330;
      v41 = 2114;
      v42 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85DEE8);
  }

  v4 = *(a1 + 48);
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = *(a1 + 48);
    v24 = [v3 identifier];
    v25 = [v23 objectForKey:v24];
    v26 = [v22 stringWithFormat:@"connot register dynamic domain due to identifier collision : new=%@ existing=%@", v3, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(sel__lock_registerDomain_);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v32 = v27;
      v33 = 2114;
      v34 = v29;
      v35 = 2048;
      v36 = a1;
      v37 = 2114;
      v38 = @"BSServiceManager.m";
      v39 = 1024;
      v40 = 331;
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85E018);
  }

  v7 = [[BSServiceDomain alloc] _initWithSpecification:v3];
  v8 = *(a1 + 48);
  v9 = [v3 identifier];
  [v8 setObject:v7 forKey:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)validateDynamicConfiguration:(void *)a3 withDebugInfo:
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v33 = a3;
  v5 = objc_opt_self();
  v6 = [v4 domains];
  if (![v6 count])
  {
    v27 = v33;
    if (!v33)
    {
      v27 = v4;
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no domains in dynamic registration : %@", v27];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(sel_validateDynamicConfiguration_withDebugInfo_);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v40 = v29;
      v41 = 2114;
      v42 = v31;
      v43 = 2048;
      v44 = v5;
      v45 = 2114;
      v46 = @"BSServiceManager.m";
      v47 = 1024;
      v48 = 340;
      v49 = 2114;
      v50 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85E56CLL);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 machName];
        v13 = v12 == 0;

        if (!v13)
        {
          v15 = v33;
          if (!v33)
          {
            v15 = v11;
          }

          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dynamic domains may not specify a mach name : %@", v15];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(sel_validateDynamicConfiguration_withDebugInfo_);
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            *buf = 138544642;
            v40 = v17;
            v41 = 2114;
            v42 = v19;
            v43 = 2048;
            v44 = v5;
            v45 = 2114;
            v46 = @"BSServiceManager.m";
            v47 = 1024;
            v48 = 342;
            v49 = 2114;
            v50 = v16;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v20 = v16;
          [v16 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85E358);
        }

        if (!v11 || v11[9] != 3)
        {
          v21 = v33;
          if (!v33)
          {
            v21 = v11;
          }

          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dynamic domains must specify Start to be ManualSession : %@", v21];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(sel_validateDynamicConfiguration_withDebugInfo_);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138544642;
            v40 = v23;
            v41 = 2114;
            v42 = v25;
            v43 = 2048;
            v44 = v5;
            v45 = 2114;
            v46 = @"BSServiceManager.m";
            v47 = 1024;
            v48 = 343;
            v49 = 2114;
            v50 = v22;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v26 = v22;
          [v22 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85E464);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)registerDynamicConfiguration:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    [BSServiceManager validateDynamicConfiguration:v3 withDebugInfo:0];
    v4 = [v3 domains];
    os_unfair_lock_lock((a1 + 56));
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [(BSServiceManager *)a1 _lock_registerDomain:v10];
          [v5 addObject:v11];
          v12 = *(a1 + 48);
          v13 = [v10 identifier];
          [v12 setObject:v11 forKey:v13];
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock((a1 + 56));
    v14 = objc_alloc(MEMORY[0x1E698E778]);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__BSServiceManager_registerDynamicConfiguration___block_invoke;
    v18[3] = &unk_1E7520CF0;
    v18[4] = a1;
    v15 = v5;
    v19 = v15;
    v20 = sel_registerDynamicConfiguration_;
    a1 = [v14 initWithIdentifier:@"com.apple.boardservices.register" forReason:@"dynamic" invalidationBlock:v18];
  }

  v16 = *MEMORY[0x1E69E9840];

  return a1;
}

void __49__BSServiceManager_registerDynamicConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 8);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = *(*(a1 + 32) + 48);
        v12 = [v10 identifier];
        v13 = [v11 objectForKey:v12];
        LOBYTE(v11) = v13 == v8;

        if ((v11 & 1) == 0)
        {
          v18 = MEMORY[0x1E696AEC0];
          v19 = *(*(a1 + 32) + 48);
          v20 = [v10 identifier];
          v21 = [v19 objectForKey:v20];
          v22 = [v18 stringWithFormat:@"domain registration stomping : removing=%@ existing=%@", v8, v21, v29];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(*(a1 + 48));
            v24 = *(a1 + 32);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v27 = *(a1 + 32);
            *buf = 138544642;
            v34 = v23;
            v35 = 2114;
            v36 = v26;
            v37 = 2048;
            v38 = v27;
            v39 = 2114;
            v40 = @"BSServiceManager.m";
            v41 = 1024;
            v42 = 365;
            v43 = 2114;
            v44 = v22;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v28 = v22;
          [v22 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85EBD8);
        }

        [(BSServiceDomain *)v8 _invalidate];
        v14 = *(*(a1 + 32) + 48);
        v15 = [v10 identifier];
        [v14 removeObjectForKey:v15];

        ++v7;
      }

      while (v5 != v7);
      v16 = [v4 countByEnumeratingWithState:&v29 objects:v45 count:16];
      v5 = v16;
    }

    while (v16);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 56));
  v17 = *MEMORY[0x1E69E9840];
}

- (id)activateManualDomain:(uint64_t)a1
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(sel_activateManualDomain_);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v53 = v23;
        v54 = 2114;
        v55 = v25;
        v56 = 2048;
        v57 = a1;
        v58 = 2114;
        v59 = @"BSServiceManager.m";
        v60 = 1024;
        v61 = 374;
        v62 = 2114;
        v63 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v26 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F098);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(sel_activateManualDomain_);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        v53 = v28;
        v54 = 2114;
        v55 = v30;
        v56 = 2048;
        v57 = a1;
        v58 = 2114;
        v59 = @"BSServiceManager.m";
        v60 = 1024;
        v61 = 374;
        v62 = 2114;
        v63 = v27;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v31 = v27;
      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F19CLL);
    }

    os_unfair_lock_lock((a1 + 56));
    if (*(a1 + 73) == 1)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call before invalidation"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(sel_activateManualDomain_);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138544642;
        v53 = v33;
        v54 = 2114;
        v55 = v35;
        v56 = 2048;
        v57 = a1;
        v58 = 2114;
        v59 = @"BSServiceManager.m";
        v60 = 1024;
        v61 = 376;
        v62 = 2114;
        v63 = v32;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v36 = v32;
      [v32 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F294);
    }

    v6 = [*(a1 + 48) objectForKey:v5];
    v7 = v6;
    if (!v6)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to activate unknown domain %@", v5];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(sel_activateManualDomain_);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v53 = v38;
        v54 = 2114;
        v55 = v40;
        v56 = 2048;
        v57 = a1;
        v58 = 2114;
        v59 = @"BSServiceManager.m";
        v60 = 1024;
        v61 = 378;
        v62 = 2114;
        v63 = v37;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v41 = v37;
      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85F390);
    }

    v8 = *(v6 + 8);
    if (v8)
    {
      v9 = v8[9];

      if (v9 > 3)
      {
        if (v9 == 4)
        {
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPCService domain cannot be activated via this call"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v48 = NSStringFromSelector(sel_activateManualDomain_);
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            *buf = 138544642;
            v53 = v48;
            v54 = 2114;
            v55 = v50;
            v56 = 2048;
            v57 = a1;
            v58 = 2114;
            v59 = @"BSServiceManager.m";
            v60 = 1024;
            v61 = 381;
            v62 = 2114;
            v63 = v47;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v51 = v47;
          [v47 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85F580);
        }

        if (v9 == 5)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ViewService domain cannot be activated via this call"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = NSStringFromSelector(sel_activateManualDomain_);
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = 138544642;
            v53 = v16;
            v54 = 2114;
            v55 = v18;
            v56 = 2048;
            v57 = a1;
            v58 = 2114;
            v59 = @"BSServiceManager.m";
            v60 = 1024;
            v61 = 382;
            v62 = 2114;
            v63 = v15;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v19 = v15;
          [v15 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85EF2CLL);
        }

        goto LABEL_19;
      }

      if (v9 == 1)
      {
        if (*(a1 + 72) == 1)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"manual bootstrap must occur before automatic bootstrapping would complete without extensions"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v11 = NSStringFromSelector(sel_activateManualDomain_);
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            *buf = 138544642;
            v53 = v11;
            v54 = 2114;
            v55 = v13;
            v56 = 2048;
            v57 = a1;
            v58 = 2114;
            v59 = @"BSServiceManager.m";
            v60 = 1024;
            v61 = 384;
            v62 = 2114;
            v63 = v10;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v14 = v10;
          [v10 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A85EE24);
        }

        goto LABEL_19;
      }

      if (v9)
      {
LABEL_19:
        os_unfair_lock_unlock((a1 + 56));
        a1 = [(BSServiceDomain *)v7 _activate];

        goto LABEL_20;
      }
    }

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot manually activate an automatic domain"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(sel_activateManualDomain_);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138544642;
      v53 = v43;
      v54 = 2114;
      v55 = v45;
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = @"BSServiceManager.m";
      v60 = 1024;
      v61 = 380;
      v62 = 2114;
      v63 = v42;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v46 = v42;
    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85F488);
  }

LABEL_20:

  v20 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)viewServiceConfigurationRegisteringIfNecessary:(uint64_t)a1
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 56));
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 == 0;
    }

    if (!v5)
    {
      if (!NSClassFromString(&cfstr_Uiviewservicec.isa))
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not resolve class _UIViewServiceConfiguration"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v26 = NSStringFromSelector(sel_viewServiceConfigurationRegisteringIfNecessary_);
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138544642;
          v41 = v26;
          v42 = 2114;
          v43 = v28;
          v44 = 2048;
          v45 = a1;
          v46 = 2114;
          v47 = @"BSServiceManager.m";
          v48 = 1024;
          v49 = 395;
          v50 = 2114;
          v51 = v25;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v29 = v25;
        [v25 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A85FAA8);
      }

      v6 = objc_opt_new();
      v7 = [v6 domainsDictionary];
      v8 = [BSServicesConfiguration _configOfService:v7 withViewServiceDomainsDictionary:?];
      v9 = *(a1 + 40);
      *(a1 + 40) = v8;

      v10 = v8;
      if (!v10)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid viewServiceConfiguration returned for %@", v7];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = NSStringFromSelector(sel_viewServiceConfigurationRegisteringIfNecessary_);
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138544642;
          v41 = v31;
          v42 = 2114;
          v43 = v33;
          v44 = 2048;
          v45 = a1;
          v46 = 2114;
          v47 = @"BSServiceManager.m";
          v48 = 1024;
          v49 = 399;
          v50 = 2114;
          v51 = v30;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v34 = v30;
        [v30 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A85FBA4);
      }

      v4 = v10;
      v11 = [v10 domains];
      if ([v11 count])
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v13)
        {
          v14 = *v36;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v35 + 1) + 8 * i);
              if (!v16 || v16[9] != 5)
              {
                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"view-service domains must specify Start to be ViewService : %@", *(*(&v35 + 1) + 8 * i)];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v21 = NSStringFromSelector(sel_viewServiceConfigurationRegisteringIfNecessary_);
                  v22 = objc_opt_class();
                  v23 = NSStringFromClass(v22);
                  *buf = 138544642;
                  v41 = v21;
                  v42 = 2114;
                  v43 = v23;
                  v44 = 2048;
                  v45 = a1;
                  v46 = 2114;
                  v47 = @"BSServiceManager.m";
                  v48 = 1024;
                  v49 = 403;
                  v50 = 2114;
                  v51 = v20;
                  _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
                }

                v24 = v20;
                [v20 UTF8String];
                _bs_set_crash_log_message();
                __break(0);
                JUMPOUT(0x19A85F9B0);
              }

              v17 = [(BSServiceManager *)a1 _lock_registerDomain:v16];
            }

            v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v13);
        }
      }
    }

    os_unfair_lock_unlock((a1 + 56));
  }

  else
  {
    v4 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)enforceXPCServiceListenerRegistration
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 56));
    [*(a1 + 48) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_216];

    os_unfair_lock_unlock((a1 + 56));
  }
}

void __57__BSServiceManager_enforceXPCServiceListenerRegistration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v4[9];

      if (v5 == 4)
      {
        [(BSServiceDomain *)v6 _enforceListenerRegistrationForReason:?];
      }
    }
  }
}

@end