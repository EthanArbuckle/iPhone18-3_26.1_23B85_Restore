@interface BSService
- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)a1;
- (id)registerListener:(void *)a3 forInstance:;
@end

@implementation BSService

- (id)registerListener:(void *)a3 forInstance:
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (!v5)
  {
    v37 = MEMORY[0x1E696AEC0];
    if (v6)
    {
      v38 = v6;
    }

    else
    {
      v38 = @"<any>";
    }

    v39 = [*(a1 + 8) identifier];
    v40 = [*(a1 + 16) identifier];
    v41 = [v37 stringWithFormat:@"asked to register a nil listener for instance %@ of service %@ of domain %@", v38, v39, v40];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(sel_registerListener_forInstance_);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *location = 138544642;
      *&location[4] = v42;
      v86 = 2114;
      v87 = v44;
      v88 = 2048;
      v89 = a1;
      v90 = 2114;
      v91 = @"BSServiceDomain.m";
      v92 = 1024;
      v93 = 82;
      v94 = 2114;
      v95 = v41;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v45 = v41;
    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8631A0);
  }

  v8 = [MEMORY[0x1E698E7B8] referenceWithObject:v5];
  os_unfair_lock_lock((a1 + 48));
  v76 = v8;
  if (*(a1 + 52) == 1)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot register listener on an invalidated service"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(sel_registerListener_forInstance_);
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      *location = 138544642;
      *&location[4] = v47;
      v86 = 2114;
      v87 = v49;
      v88 = 2048;
      v89 = a1;
      v90 = 2114;
      v91 = @"BSServiceDomain.m";
      v92 = 1024;
      v93 = 87;
      v94 = 2114;
      v95 = v46;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v50 = v46;
    [v46 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A863298);
  }

  if (*(a1 + 24))
  {
    v51 = MEMORY[0x1E696AEC0];
    v52 = [*(a1 + 8) identifier];
    v53 = [*(a1 + 16) identifier];
    v54 = [v51 stringWithFormat:@"already have a global listener for service %@ of domain %@ : old=%@ new=%@", v52, v53, *(a1 + 24), v5];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(sel_registerListener_forInstance_);
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *location = 138544642;
      *&location[4] = v55;
      v86 = 2114;
      v87 = v57;
      v88 = 2048;
      v89 = a1;
      v90 = 2114;
      v91 = @"BSServiceDomain.m";
      v92 = 1024;
      v93 = 88;
      v94 = 2114;
      v95 = v54;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v58 = v54;
    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8633C8);
  }

  v9 = *(a1 + 32);
  if (v7)
  {
    if (v9)
    {
      v10 = [v9 objectForKey:v7];

      if (v10)
      {
        v59 = MEMORY[0x1E696AEC0];
        v60 = [*(a1 + 8) identifier];
        v61 = [*(a1 + 16) identifier];
        v62 = [*(a1 + 32) objectForKey:v7];
        v63 = [v59 stringWithFormat:@"already have a listener for instance %@ of service %@ of domain %@ : old=%@ new=%@", v7, v60, v61, v62, v5];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v64 = NSStringFromSelector(sel_registerListener_forInstance_);
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          *location = 138544642;
          *&location[4] = v64;
          v86 = 2114;
          v87 = v66;
          v88 = 2048;
          v89 = a1;
          v90 = 2114;
          v91 = @"BSServiceDomain.m";
          v92 = 1024;
          v93 = 91;
          v94 = 2114;
          v95 = v63;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
        }

        v67 = v63;
        [v63 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A863510);
      }

      [*(a1 + 32) setObject:v8 forKey:v7];
      goto LABEL_13;
    }

    v13 = [MEMORY[0x1E695DF90] dictionaryWithObject:v8 forKey:v7];
    v12 = *(a1 + 32);
    *(a1 + 32) = v13;
  }

  else
  {
    if (v9)
    {
      v68 = MEMORY[0x1E696AEC0];
      v69 = [*(a1 + 8) identifier];
      v70 = [*(a1 + 16) identifier];
      v71 = [v68 stringWithFormat:@"already have a listener for service %@ of domain %@ : old=%@ new=%@", v69, v70, *(a1 + 32), v5];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v72 = NSStringFromSelector(sel_registerListener_forInstance_);
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        *location = 138544642;
        *&location[4] = v72;
        v86 = 2114;
        v87 = v74;
        v88 = 2048;
        v89 = a1;
        v90 = 2114;
        v91 = @"BSServiceDomain.m";
        v92 = 1024;
        v93 = 97;
        v94 = 2114;
        v95 = v71;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v75 = v71;
      [v71 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A863640);
    }

    v11 = v8;
    v12 = *(a1 + 24);
    *(a1 + 24) = v11;
  }

LABEL_13:
  v14 = [*(a1 + 40) count];
  if (v14)
  {
    if (v7)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [*(a1 + 40) objectAtIndex:v15];
        v18 = [v17 instance];
        v19 = BSEqualStrings();

        if (v19)
        {
          if (!v16)
          {
            v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
          }

          [v16 addObject:v17];
          [*(a1 + 40) removeObjectAtIndex:v15];
          --v14;
        }

        else
        {
          ++v15;
        }
      }

      while (v15 < v14);
    }

    else
    {
      v16 = *(a1 + 40);
      v20 = [MEMORY[0x1E695DF70] array];
      v21 = *(a1 + 40);
      *(a1 + 40) = v20;
    }
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock((a1 + 48));
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (v23)
  {
    v24 = *v81;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v81 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [v5 didReceiveConnection:*(*(&v80 + 1) + 8 * i)];
      }

      v23 = [v22 countByEnumeratingWithState:&v80 objects:v84 count:16];
    }

    while (v23);
  }

  objc_initWeak(location, a1);
  v26 = objc_alloc(MEMORY[0x1E698E778]);
  v27 = MEMORY[0x1E696AEC0];
  v28 = [*(a1 + 16) identifier];
  v29 = [v27 stringWithFormat:@"com.apple.boardservices.domain:%@", v28];
  v30 = MEMORY[0x1E696AEC0];
  v31 = [*(a1 + 8) identifier];
  v32 = v31;
  v33 = @"<any>";
  if (v7)
  {
    v33 = v7;
  }

  v34 = [v30 stringWithFormat:@"listener:%@-%@ -> %p", v31, v33, v5];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __42__BSService_registerListener_forInstance___block_invoke;
  v77[3] = &unk_1E7520E68;
  objc_copyWeak(&v79, location);
  v77[4] = v76;
  v78 = v7;
  a1 = [v26 initWithIdentifier:v29 forReason:v34 invalidationBlock:v77];

  objc_destroyWeak(&v79);
  objc_destroyWeak(location);

LABEL_35:
  v35 = *MEMORY[0x1E69E9840];

  return a1;
}

void __42__BSService_registerListener_forInstance___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 12);
    if ((WeakRetained[52] & 1) == 0)
    {
      if (!v4)
      {
        v5 = (WeakRetained + 24);
        v8 = *(WeakRetained + 3);
        if (v8 != v3)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v5 = (WeakRetained + 32);
      v6 = [*(WeakRetained + 4) objectForKey:v4];

      if (v6 == v3)
      {
        v7 = [*v5 count];
        v8 = *v5;
        if (v7 != 1)
        {
          [v8 removeObjectForKey:v4];
          goto LABEL_9;
        }

LABEL_8:
        *v5 = 0;
      }
    }

LABEL_9:
    os_unfair_lock_unlock(WeakRetained + 12);
  }
}

- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E698E680] builderWithObject:a1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke;
    v16[3] = &unk_1E75209E8;
    v5 = v4;
    v17 = v5;
    v18 = a1;
    v6 = [v5 modifyProem:v16];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_2;
    v13 = &unk_1E75209E8;
    v14 = a1;
    v7 = v5;
    v15 = v7;
    [v7 appendBodySectionWithName:0 multilinePrefix:v3 block:&v10];
    v8 = [v7 build];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) identifier];
  v4 = [v2 appendObject:v3 withName:0];

  os_unfair_lock_lock((*(a1 + 40) + 48));
  v5 = *(a1 + 40);
  if (*(v5 + 52))
  {
    v6 = @"invalid";
  }

  else
  {
    v6 = @"active";
  }

  os_unfair_lock_unlock((v5 + 48));
  return [*(a1 + 32) appendObject:v6 withName:@"state"];
}

void __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 activeMultilinePrefix];
  [(BSServiceSpecification *)v3 _appendManagerDumpBodyToBuilder:v2 withMultilinePrefix:v4];

  v5 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 24) withName:@"listener" skipIfNil:1];
  if ([*(*(a1 + 32) + 32) count])
  {
    v6 = [*(*(a1 + 32) + 32) allKeys];
    v7 = [v6 mutableCopy];

    [v7 sortUsingSelector:sel_compare_];
    v8 = *(a1 + 40);
    v9 = [v8 activeMultilinePrefix];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_3;
    v16[3] = &unk_1E75205A8;
    v10 = v7;
    v17 = v10;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    [v8 appendBodySectionWithName:@"listeners" multilinePrefix:v9 block:v16];
  }

  v13 = *(a1 + 40);
  v14 = *(*(a1 + 32) + 40);
  v15 = [v13 activeMultilinePrefix];
  [v13 appendArraySection:v14 withName:@"pendedConnections" multilinePrefix:v15 skipIfEmpty:1];
}

void __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [*(*(a1 + 48) + 32) objectForKey:{v6, v11}];
        v9 = [v7 appendObject:v8 withName:v6];
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end