@interface BSServiceConnectionEndpointInjector
+ (id)injectorWithConfigurator:(id)a3;
- (BSServiceConnectionEndpointInjector)init;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BSServiceConnectionEndpointInjector

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    [(RBSAssertion *)self->_lock_assertion invalidate];
    lock_assertion = self->_lock_assertion;
    self->_lock_assertion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
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
      v18 = @"BSServiceConnectionEndpointInjector.m";
      v19 = 1024;
      v20 = 61;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82CBD4);
  }

  v10.receiver = self;
  v10.super_class = BSServiceConnectionEndpointInjector;
  [(BSServiceConnectionEndpointInjector *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (BSServiceConnectionEndpointInjector)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceConnectionEndpointInjector"];
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
    v17 = @"BSServiceConnectionEndpointInjector.m";
    v18 = 1024;
    v19 = 46;
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

+ (id)injectorWithConfigurator:(id)a3
{
  v120 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(a2);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138544642;
      v109 = v54;
      v110 = 2114;
      v111 = v56;
      v112 = 2048;
      v113 = a1;
      v114 = 2114;
      v115 = @"BSServiceConnectionEndpointInjector.m";
      v116 = 1024;
      v117 = 79;
      v118 = 2114;
      v119 = v53;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v57 = v53;
    [v53 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830298);
  }

  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __64__BSServiceConnectionEndpointInjector_injectorWithConfigurator___block_invoke;
  v95[3] = &unk_1E75200B0;
  v95[4] = a3;
  v93 = objc_opt_self();
  v3 = objc_opt_new();
  v92 = v3;
  __64__BSServiceConnectionEndpointInjector_injectorWithConfigurator___block_invoke(v95, v3);
  if (!v3 || (v85 = *(v3 + 8)) == 0)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a manager"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = NSStringFromSelector(sel__injector_);
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138544642;
      v109 = v59;
      v110 = 2114;
      v111 = v61;
      v112 = 2048;
      v113 = v93;
      v114 = 2114;
      v115 = @"BSServiceConnectionEndpointInjector.m";
      v116 = 1024;
      v117 = 104;
      v118 = 2114;
      v119 = v58;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v62 = v58;
    [v58 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830394);
  }

  v88 = MEMORY[0x19A908200](*(v3 + 16));
  if (!v88)
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure an assertion generator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v64 = NSStringFromSelector(sel__injector_);
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      *buf = 138544642;
      v109 = v64;
      v110 = 2114;
      v111 = v66;
      v112 = 2048;
      v113 = v93;
      v114 = 2114;
      v115 = @"BSServiceConnectionEndpointInjector.m";
      v116 = 1024;
      v117 = 107;
      v118 = 2114;
      v119 = v63;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v67 = v63;
    [v63 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830490);
  }

  v87 = *(v3 + 24);
  if (!v87)
  {
    v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a target"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v69 = NSStringFromSelector(sel__injector_);
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      *buf = 138544642;
      v109 = v69;
      v110 = 2114;
      v111 = v71;
      v112 = 2048;
      v113 = v93;
      v114 = 2114;
      v115 = @"BSServiceConnectionEndpointInjector.m";
      v116 = 1024;
      v117 = 110;
      v118 = 2114;
      v119 = v68;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v72 = v68;
    [v68 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83058CLL);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(v3 + 56);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = v7;
  if (v6 && v7)
  {
    v9 = *(v3 + 48);
    v10 = [BSServiceConnectionEndpoint _endpointForManager:v85 domain:v6 service:v8 instance:v9];

    if (!v10)
    {
      v78 = MEMORY[0x1E696AEC0];
      v79 = v92[6];
      v80 = [v78 stringWithFormat:@"no endpoint found for domain='%@' service='%@' instance='%@'", v6, v8, v79];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v81 = NSStringFromSelector(sel__injector_);
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        *buf = 138544642;
        v109 = v81;
        v110 = 2114;
        v111 = v83;
        v112 = 2048;
        v113 = v93;
        v114 = 2114;
        v115 = @"BSServiceConnectionEndpointInjector.m";
        v116 = 1024;
        v117 = 120;
        v118 = 2114;
        v119 = v80;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v84 = v80;
      [v80 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8307ACLL);
    }

    if (v5)
    {
      [v5 addObject:v10];
      v90 = v5;
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v10];
    }
  }

  else
  {
    if (v6 | v7 || (v11 = *(v3 + 48), v12 = v11 == 0, v11, !v12))
    {
      v44 = MEMORY[0x1E696AEC0];
      v45 = *(v3 + 48);
      v46 = [v44 stringWithFormat:@"incomplete lookup information : domain='%@' service'%@' instance='%@'", v6, v8, v45];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(sel__injector_);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v109 = v47;
        v110 = 2114;
        v111 = v49;
        v112 = 2048;
        v113 = v93;
        v114 = 2114;
        v115 = @"BSServiceConnectionEndpointInjector.m";
        v116 = 1024;
        v117 = 129;
        v118 = 2114;
        v119 = v46;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v50 = v46;
      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83018CLL);
    }

    v90 = v5;
  }

  objc_autoreleasePoolPop(v4);
  v13 = [v90 count];
  v14 = v92[8];
  v89 = v14;
  if (!v13 && !v14)
  {
    v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported configuration : inheritingEnvironment='%@' endpoints=%@", 0, v90];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v74 = NSStringFromSelector(sel__injector_);
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      *buf = 138544642;
      v109 = v74;
      v110 = 2114;
      v111 = v76;
      v112 = 2048;
      v113 = v93;
      v114 = 2114;
      v115 = @"BSServiceConnectionEndpointInjector.m";
      v116 = 1024;
      v117 = 137;
      v118 = 2114;
      v119 = v73;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v77 = v73;
    [v73 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A830690);
  }

  v91 = [MEMORY[0x1E696AD60] string];
  v15 = v92[9];
  v86 = [v15 count];

  v94 = [MEMORY[0x1E695DF70] arrayWithCapacity:v86 + 3];
  v17 = v91;
  v16 = v92;
  if (!v13)
  {
    if (!v89)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v18 = [v90 array];
  v19 = [v18 bs_compactMap:&__block_literal_global_49];
  v20 = [v19 componentsJoinedByString:{@", "}];
  [v91 appendFormat:@" [%@]", v20];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v21 = v90;
  v22 = [v21 countByEnumeratingWithState:&v96 objects:buf count:16];
  if (v22)
  {
    v23 = *v97;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v97 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v96 + 1) + 8 * i);
        v104 = 0;
        v105 = &v104;
        v106 = 0x2050000000;
        v26 = _MergedGlobals_2;
        v107 = _MergedGlobals_2;
        if (!_MergedGlobals_2)
        {
          v100.receiver = MEMORY[0x1E69E9820];
          v100.super_class = 3221225472;
          v101 = __getRBSEndowmentGrantClass_block_invoke;
          v102 = &unk_1E75200F8;
          v103 = &v104;
          __getRBSEndowmentGrantClass_block_invoke(&v100);
          v26 = v105[3];
        }

        v27 = v26;
        _Block_object_dispose(&v104, 8);
        v28 = BSServiceEndpointGrantNamespace();
        v29 = [(BSServiceConnectionEndpoint *)v25 _endowmentRepresentation];
        v30 = [v26 grantWithNamespace:v28 endowment:v29];
        [v94 addObject:v30];
      }

      v22 = [v21 countByEnumeratingWithState:&v96 objects:buf count:16];
    }

    while (v22);
  }

  v17 = v91;
  v16 = v92;
  if (v89)
  {
    [v91 appendString:@" +"];
LABEL_31:
    [v17 appendFormat:@" inherited from '%@'", v89];
    v104 = 0;
    v105 = &v104;
    v106 = 0x2050000000;
    v31 = qword_1ED4A7BA8;
    v107 = qword_1ED4A7BA8;
    if (!qword_1ED4A7BA8)
    {
      v100.receiver = MEMORY[0x1E69E9820];
      v100.super_class = 3221225472;
      v101 = __getRBSHereditaryGrantClass_block_invoke;
      v102 = &unk_1E75200F8;
      v103 = &v104;
      __getRBSHereditaryGrantClass_block_invoke(&v100);
      v31 = v105[3];
    }

    v32 = v31;
    _Block_object_dispose(&v104, 8);
    v33 = BSServiceEndpointGrantNamespace();
    v34 = [v31 grantWithNamespace:v33 sourceEnvironment:v89 attributes:0];
    [v94 addObject:v34];

    v17 = v91;
    v16 = v92;
  }

LABEL_34:
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"injecting %@", v17];
  if (v86)
  {
    v36 = v16[9];
    [v94 addObjectsFromArray:v36];

    v17 = v91;
    if (v86 == 1)
    {
      [v91 appendString:@" + 1 attr"];
    }

    else
    {
      [v91 appendFormat:@" + %lu attrs", v86];
    }
  }

  [v17 appendFormat:@" on %@", v87];
  v37 = (v88)[2](v88, v87, v94, v35, v17);
  if (v37 && (v38 = [BSServiceConnectionEndpointInjector alloc]) != 0)
  {
    v100.receiver = v38;
    v100.super_class = BSServiceConnectionEndpointInjector;
    v39 = objc_msgSendSuper2(&v100, sel_init);
    if (v39)
    {
      v40 = [v91 copy];
      v41 = *(v39 + 1);
      *(v39 + 1) = v40;

      objc_storeStrong(v39 + 2, v37);
      *(v39 + 6) = 0;
      *(v39 + 28) = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v39;
}

uint64_t __64__BSServiceConnectionEndpointInjector_injectorWithConfigurator___block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceManager sharedInstance];
  v5 = v4;
  if (a2)
  {
    v6 = v4;
    if (!v6)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"manager", v13];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_setManager_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v30 = v15;
        v31 = 2114;
        v32 = v17;
        v33 = 2048;
        v34 = a2;
        v35 = 2114;
        v36 = @"BSServiceConnectionEndpointInjector.m";
        v37 = 1024;
        v38 = 228;
        v39 = 2114;
        v40 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A830C58);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [v6 classForCoder];
      if (!v20)
      {
        v20 = objc_opt_class();
      }

      v21 = NSStringFromClass(v20);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v19 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"manager", v21, v23];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel_setManager_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v30 = v25;
        v31 = 2114;
        v32 = v27;
        v33 = 2048;
        v34 = a2;
        v35 = 2114;
        v36 = @"BSServiceConnectionEndpointInjector.m";
        v37 = 1024;
        v38 = 228;
        v39 = 2114;
        v40 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A830DA0);
    }

    os_unfair_lock_assert_owner((a2 + 80));
    objc_storeStrong((a2 + 8), v5);

    os_unfair_lock_assert_owner((a2 + 80));
    v7 = [&__block_literal_global copy];
    v5 = *(a2 + 16);
    *(a2 + 16) = v7;
  }

  v8 = *(*(a1 + 32) + 16);
  v9 = *MEMORY[0x1E69E9840];

  return v8();
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_description withName:@"explanation" skipIfEmpty:0];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v4 = @"invalidated";
    goto LABEL_5;
  }

  lock_assertion = self->_lock_assertion;
  if (!lock_assertion)
  {
    v4 = @"inactive";
LABEL_5:
    [v3 appendString:v4 withName:0];
    lock_assertion = self->_lock_assertion;
    if (!lock_assertion)
    {
      goto LABEL_7;
    }
  }

  v6 = [v3 appendPointer:lock_assertion withName:@"assertion"];
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  v7 = [v3 build];

  return v7;
}

@end