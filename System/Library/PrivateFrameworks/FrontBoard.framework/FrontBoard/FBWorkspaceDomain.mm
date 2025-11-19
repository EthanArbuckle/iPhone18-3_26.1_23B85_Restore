@interface FBWorkspaceDomain
+ (id)backgroundUserInitiatedBootstrapAttributes;
+ (id)debugDescription;
+ (id)nullEndpoint;
+ (id)startWorkspaceDomainListener;
- (FBWorkspaceDomain)init;
- (NSString)description;
- (_BYTE)selfAssertionAttributesForWorkspaceState:(_BYTE *)a1;
- (id)_listenerEndpoint;
- (id)assertionAttributesForLaunchIntent:(uint64_t)a3 outWorkspaceState:(void *)a4 outProcessVisibility:;
- (id)assertionAttributesForWorkspaceState:(uint64_t)a1;
- (id)endpointInjectorTargetingProcess:(uint64_t)a1;
- (os_unfair_lock)_lock_listener;
- (uint64_t)_initWithCoupler:(void *)a3 specification:;
- (uint64_t)defaultSceneInterruptionPolicy;
- (uint64_t)defaultWorkspace;
- (uint64_t)endpointPromise;
- (uint64_t)monitorAllSuspendableProcesses;
- (uint64_t)preregisteredWorkspaces;
- (uint64_t)reconnectShmemIdentifier;
- (uint64_t)reconnectableWorkspaces;
- (uint64_t)selfAssertRuntime;
- (uint64_t)specification;
- (void)_listenerEndpoint;
- (void)dealloc;
- (void)injectEndpointToFBSWorkspace;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)setIndirectConnectionDelegate:(uint64_t)a1;
@end

@implementation FBWorkspaceDomain

- (uint64_t)endpointPromise
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

+ (id)nullEndpoint
{
  objc_opt_self();
  if (nullEndpoint_onceToken != -1)
  {
    +[FBWorkspaceDomain nullEndpoint];
  }

  v0 = nullEndpoint_nullEndpoint;

  return v0;
}

- (uint64_t)selfAssertRuntime
{
  if (result)
  {
    return *(result + 96) & 3;
  }

  return result;
}

- (id)_listenerEndpoint
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  os_unfair_lock_lock((a1 + 88));
  if (*(a1 + 103))
  {
    v2 = 0;
LABEL_4:
    os_unfair_lock_unlock((a1 + 88));
    os_unfair_lock_assert_not_owner((a1 + 88));
LABEL_5:

    return v2;
  }

  os_unfair_lock_lock((a1 + 92));
  v4 = *(a1 + 56);
  os_unfair_lock_unlock((a1 + 92));
  if (v4)
  {
    v5 = [(FBWorkspaceDomain *)a1 _lock_listener];
    v2 = [v5 endpoint];

    goto LABEL_4;
  }

  os_unfair_lock_unlock((a1 + 88));
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asked for the listenerEndpoint before the processConnectionDelegate is registered"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [FBWorkspaceDomain _listenerEndpoint];
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (os_unfair_lock)_lock_listener
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_assert_owner(a1 + 22);
    if ((v1[25]._os_unfair_lock_opaque & 0x1000000) == 0 && !*&v1[10]._os_unfair_lock_opaque)
    {
      v2 = [(FBWorkspaceEndpointPromise *)*&v1[6]._os_unfair_lock_opaque _domainIdentifier];
      v3 = v2;
      if (!*&v1[4]._os_unfair_lock_opaque)
      {
        v4 = MEMORY[0x1E698F508];
        v26 = v2;
        v24[0] = @"Start";
        v24[1] = @"Services";
        v25[0] = @"ManualSession";
        v5 = [MEMORY[0x1E699FCF0] identifier];
        v22 = v5;
        v23 = MEMORY[0x1E695E0F8];
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v25[1] = v6;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
        v27[0] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        v9 = [v4 registerDynamicDomainsFromPlist:v8];
        v10 = *&v1[8]._os_unfair_lock_opaque;
        *&v1[8]._os_unfair_lock_opaque = v9;
      }

      v11 = MEMORY[0x1E698F4B8];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __35__FBWorkspaceDomain__lock_listener__block_invoke;
      v19[3] = &unk_1E783BEB8;
      v12 = v3;
      v20 = v12;
      v21 = v1;
      v13 = [v11 listenerWithConfigurator:v19];
      v14 = *&v1[10]._os_unfair_lock_opaque;
      *&v1[10]._os_unfair_lock_opaque = v13;

      [*&v1[10]._os_unfair_lock_opaque activate];
      if (!*&v1[4]._os_unfair_lock_opaque)
      {
        v15 = [MEMORY[0x1E698F508] activateManualDomain:v12];
        v16 = *&v1[12]._os_unfair_lock_opaque;
        *&v1[12]._os_unfair_lock_opaque = v15;
      }
    }

    a1 = *&v1[10]._os_unfair_lock_opaque;
  }

  v17 = *MEMORY[0x1E69E9840];

  return a1;
}

- (uint64_t)monitorAllSuspendableProcesses
{
  if (a1)
  {
    v1 = *(a1 + 100);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)reconnectableWorkspaces
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

+ (id)startWorkspaceDomainListener
{
  v2 = +[FBProcessManager sharedInstance];
  v3 = [v2 eventDispatcher];
  v4 = [(FBWorkspaceEventDispatcher *)v3 domain];
  v5 = [(FBWorkspaceDomain *)v4 specification];

  return v5;
}

- (uint64_t)reconnectShmemIdentifier
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)preregisteredWorkspaces
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void __35__FBWorkspaceDomain__lock_listener__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDomain:v3];
  v4 = [MEMORY[0x1E699FCF0] identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 40)];
}

- (uint64_t)specification
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)injectEndpointToFBSWorkspace
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (uint64_t)defaultSceneInterruptionPolicy
{
  if (result)
  {
    if (*(result + 97))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (FBWorkspaceDomain)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBWorkspaceDomain"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"FBWorkspaceDomain.m";
    v17 = 1024;
    v18 = 121;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (uint64_t)_initWithCoupler:(void *)a3 specification:
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_80;
  }

  v94.receiver = a1;
  v94.super_class = FBWorkspaceDomain;
  v8 = objc_msgSendSuper2(&v94, sel_init);
  a1 = v8;
  if (!v8)
  {
    goto LABEL_80;
  }

  objc_storeStrong(v8 + 1, a2);
  *(a1 + 88) = 0;
  v9 = [MEMORY[0x1E695DFA8] set];
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;

  if (!v7)
  {
    [FBWorkspaceDomain _initWithCoupler:a1 specification:?];
    goto LABEL_80;
  }

  v11 = [MEMORY[0x1E699FCF0] identifier];
  v12 = [v7 serviceForIdentifier:v11];

  if (!v12)
  {
    [FBWorkspaceDomain _initWithCoupler:? specification:?];
  }

  v13 = [v7 machName];
  v14 = [MEMORY[0x1E698E6D0] environmentAliases];
  v15 = [MEMORY[0x1E698F498] defaultShellMachName];
  v16 = [v14 resolveMachService:v15];

  objc_storeStrong((a1 + 16), a3);
  *(a1 + 97) = [v13 isEqualToString:v16];
  v17 = [FBWorkspaceEndpointPromise alloc];
  v18 = [v7 identifier];
  if (v17)
  {
    v19 = [(FBWorkspaceEndpointPromise *)&v17->super.isa _initWithDomain:a1 identifier:v18 endpoint:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 24);
  *(a1 + 24) = v19;

  v21 = [v12 optionForKey:@"InjectEndpoint"];
  if (objc_opt_respondsToSelector())
  {
    v22 = [v21 BOOLValue];
  }

  else
  {
    v22 = 1;
  }

  *(a1 + 98) = v22;
  v23 = [v12 optionForKey:@"AssertVisibility"];
  v85 = v21;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 99) = [v23 BOOLValue];
  }

  else
  {
    v24 = [MEMORY[0x1E698E620] tokenForCurrentProcess];
    *(a1 + 99) = [v24 hasEntitlement:@"com.apple.runningboard.primitiveattribute"];
  }

  v84 = v23;
  *(a1 + 96) &= 0xFCu;
  v25 = [v12 optionForKey:@"SelfAssertRuntime"];
  v83 = v25;
  if (objc_opt_respondsToSelector())
  {
    if (([v25 BOOLValue] & 1) == 0)
    {
      goto LABEL_19;
    }

    v26 = 2;
  }

  else
  {
    v27 = [MEMORY[0x1E69C75D0] currentProcess];
    v28 = [v27 fb_canTaskSuspend];

    if (!v28)
    {
      goto LABEL_19;
    }

    v26 = 1;
  }

  *(a1 + 96) = *(a1 + 96) & 0xFC | v26;
LABEL_19:
  *(a1 + 100) = *(a1 + 97);
  v29 = [v7 launchIdentifiers];
  v30 = [v29 containsObject:*MEMORY[0x1E699F9C0]];

  *(a1 + 101) = v30;
  v31 = [v12 optionForKey:@"DefaultWorkspace"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = @"FBSceneManager";
    if (([v31 isEqualToString:@"FBSceneManager"] & 1) == 0)
    {
      v32 = [v31 copy];
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a1 + 80);
  v80 = (a1 + 80);
  *(a1 + 80) = v32;

  v34 = [v12 optionForKey:@"RegisterWorkspaces"];
  v81 = v16;
  v82 = v31;
  if (!v34)
  {
    v34 = [v12 optionForKey:@"ReconnectWorkspaces"];
    if (!v34)
    {
      if (*(a1 + 97) == 1)
      {
        v35 = [FBWorkspaceRegistration registrationWithIdentifier:0 options:?];
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObject:v35 forKey:@"FBSceneManager"];
        v62 = *(a1 + 72);
        *(a1 + 72) = v61;
      }

      else
      {
        v64 = [MEMORY[0x1E695DF20] dictionary];
        v35 = *(a1 + 72);
        *(a1 + 72) = v64;
      }

      goto LABEL_51;
    }
  }

  v35 = v34;
  v36 = [MEMORY[0x1E695DF90] dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = v13;
    v77 = v12;
    v78 = v7;
    v79 = v6;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v37 = v35;
    v38 = [v37 countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v91;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v91 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [FBWorkspaceRegistration registrationWithIdentifier:0 options:?];
          v43 = v42;
          if (v42)
          {
            [v36 setObject:v42 forKey:*(v42 + 16)];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v39);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_47;
    }

    v76 = v13;
    v77 = v12;
    v78 = v7;
    v79 = v6;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v44 = v35;
    v45 = [v44 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v87;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v87 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v86 + 1) + 8 * j);
          v50 = [v44 objectForKey:v49];
          v51 = [FBWorkspaceRegistration registrationWithIdentifier:v49 options:v50];
          v52 = v51;
          if (v51)
          {
            [v36 setObject:v51 forKey:*(v51 + 16)];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v46);
    }
  }

  v7 = v78;
  v6 = v79;
  v13 = v76;
  v12 = v77;
LABEL_47:
  if (*v80)
  {
    v53 = [v36 objectForKey:?];

    if (!v53)
    {
      [FBWorkspaceDomain _initWithCoupler:v80 specification:v36];
    }
  }

  v54 = [v36 copy];
  v55 = *(a1 + 72);
  *(a1 + 72) = v54;

  v16 = v81;
LABEL_51:

  if (v13)
  {
    v56 = [MEMORY[0x1E69C75D0] currentProcess];
    v57 = [v56 hasConsistentLaunchdJob];

    if (v57)
    {
      v58 = [v12 optionForKey:@"ReconnectShmemIdentifier"];
      if (!v58)
      {
        v63 = [FBWorkspaceConnectionsStateStore identifierForName:v13];
        if ([FBWorkspaceConnectionsStateStore hasSandboxAccessForIdentifier:v63])
        {
          v60 = v63;
        }

        else
        {
          v65 = FBLogCommon();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v96 = a1;
            v97 = 2112;
            v98 = v63;
            _os_log_impl(&dword_1A89DD000, v65, OS_LOG_TYPE_DEFAULT, "FBWorkspaceDomain:%p no access to defaultShmemIdentifier %@ - disabling reconnection support", buf, 0x16u);
          }

          v60 = 0;
        }

        v16 = v81;
        goto LABEL_75;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = v58;
LABEL_56:
        v60 = v59;
LABEL_75:
        v67 = [v60 copy];
        v68 = *(a1 + 104);
        *(a1 + 104) = v67;

        goto LABEL_76;
      }

      if (objc_opt_respondsToSelector())
      {
        if ([v58 BOOLValue])
        {
          v59 = [FBWorkspaceConnectionsStateStore identifierForName:v13];
          goto LABEL_56;
        }
      }

      else
      {
        v66 = FBLogCommon();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v96 = a1;
          v97 = 2112;
          v98 = v58;
          _os_log_impl(&dword_1A89DD000, v66, OS_LOG_TYPE_DEFAULT, "FBWorkspaceDomain:%p unrecognized ReconnectShmemIdentifier %@ - disabling reconnection support", buf, 0x16u);
        }
      }

      v60 = 0;
      goto LABEL_75;
    }
  }

  v60 = *(a1 + 104);
  *(a1 + 104) = 0;
LABEL_76:

  v69 = MEMORY[0x1E695DFD8];
  if (*(a1 + 104))
  {
    v70 = [*(a1 + 72) allKeys];
    v71 = [v69 setWithArray:v70];
    v72 = *(a1 + 112);
    *(a1 + 112) = v71;
  }

  else
  {
    v73 = [MEMORY[0x1E695DFD8] set];
    v70 = *(a1 + 112);
    *(a1 + 112) = v73;
  }

LABEL_80:
  v74 = *MEMORY[0x1E69E9840];
  return a1;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidate must be called before deallocing"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setIndirectConnectionDelegate:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 103) == 1)
    {
      os_unfair_lock_unlock((a1 + 88));
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set an indirectConnectionDelegate after invalidation : new=%@", v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBWorkspaceDomain setIndirectConnectionDelegate:];
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A02874);
    }

    os_unfair_lock_lock((a1 + 92));
    v5 = *(a1 + 56);
    if (v5)
    {
      v17 = v5;
      os_unfair_lock_unlock((a1 + 92));
      os_unfair_lock_unlock((a1 + 88));
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have an indirectConnectionDelegate : existing=%@ new=%@", v17, v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBWorkspaceDomain setIndirectConnectionDelegate:];
      }

      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A028E8);
    }

    objc_storeStrong((a1 + 56), a2);
    v6 = [*(a1 + 16) machName];

    if (v6)
    {
      os_unfair_lock_unlock((a1 + 92));
      v15 = [(FBWorkspaceDomain *)a1 _lock_listener];
      os_unfair_lock_lock((a1 + 92));
    }

    v7 = *(a1 + 64);
    v8 = *(a1 + 64);
    *(a1 + 64) = 0;

    os_unfair_lock_unlock((a1 + 92));
    os_unfair_lock_unlock((a1 + 88));
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v19 + 1) + 8 * i) + 16))();
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    os_unfair_lock_assert_not_owner((a1 + 92));
    os_unfair_lock_assert_not_owner((a1 + 88));
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)backgroundUserInitiatedBootstrapAttributes
{
  v6 = 0;
  v5 = 0;
  v2 = +[FBWorkspaceAssertionAttributes sharedAttributes];
  v3 = [(FBWorkspaceAssertionAttributes *)v2 assertionAttributesForLaunchIntent:0 assertsVisibility:&v6 outWorkspaceState:&v5 outProcessVisibility:?];

  return v3;
}

void __33__FBWorkspaceDomain_nullEndpoint__block_invoke()
{
  v0 = MEMORY[0x1E698F498];
  v3 = [MEMORY[0x1E699FCF0] identifier];
  v1 = [v0 nullEndpointForService:v3 instance:0];
  v2 = nullEndpoint_nullEndpoint;
  nullEndpoint_nullEndpoint = v1;
}

void __54__FBWorkspaceDomain_endpointInjectorTargetingProcess___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) targetDescription];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEFAULT, "FBWorkspaceDomain: registering saved endowment %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E699FCF0] identifier];
  [v4 saveAsInjectorEndowmentForKey:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void __54__FBWorkspaceDomain_endpointInjectorTargetingProcess___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C7640];
  v4 = *(a1 + 40);
  v6 = a2;
  v5 = [v3 targetWithPid:v4];
  [v6 setTarget:v5];

  [v6 addEndpoint:*(a1 + 32)];
}

- (_BYTE)selfAssertionAttributesForWorkspaceState:(_BYTE *)a1
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      [FBWorkspaceDomain selfAssertionAttributesForWorkspaceState:?];
    }

    if (FBWorkspaceStateEqual(*a2, 0))
    {
      v2 = 0;
    }

    else if ((v2[96] & 3) == 2)
    {
      v4 = FBWorkspaceStateGetActivity(*a2) > 1;
      v9 = 0;
      v5 = +[FBWorkspaceAssertionAttributes sharedAttributes];
      v2 = [(FBWorkspaceAssertionAttributes *)v5 selfAssertionAttributesWithForeground:v4 outWorkspaceState:&v9];
      *a2 = v9;
    }

    else if ((v2[96] & 3) != 0)
    {
      *a2 = FBWorkspaceStateCreate(1, 1, 40);
      v6 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
      v10[0] = v6;
      v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v2 = 0;
      *a2 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_listener;
  os_unfair_lock_unlock(&self->_lock);
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(FBWorkspaceEndpointPromise *)&self->_endpointPromise->super.isa _domainIdentifier];
  [v4 appendString:v5 withName:@"identifier"];

  v6 = [(BSServiceDomainSpecification *)self->_specification machName];
  [v4 appendString:v6 withName:@"machName" skipIfEmpty:1];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__FBWorkspaceDomain_description__block_invoke;
  v11[3] = &unk_1E783B300;
  v12 = v4;
  v13 = self;
  v14 = v3;
  v7 = v3;
  v8 = v4;
  [v8 appendBodySectionWithName:0 multilinePrefix:0 block:v11];
  v9 = [v8 build];

  return v9;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v7 remoteToken];
  v10 = v9;
  if (!v9 || [v9 isInvalid])
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspaceDomain listener:v7 didReceiveConnection:v11 withContext:?];
    }

LABEL_5:

    [v7 invalidate];
    goto LABEL_6;
  }

  if ([v8 decodeBoolForKey:@"targetsClientEndpoint"])
  {
    if (!self->_allowsDirectConnections)
    {
      v13 = [v10 pid];
      if (v13 != getpid())
      {
        v11 = FBLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [FBWorkspaceDomain listener:v10 didReceiveConnection:v11 withContext:?];
        }

        goto LABEL_5;
      }
    }

    v14 = FBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v34 = v7;
      v35 = 2114;
      v36 = v10;
      _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_INFO, "FBWorkspaceDomain: Enqueuing new direct workspace connection %p with remoteToken=%{public}@", buf, 0x16u);
    }

    coupler = self->_coupler;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__FBWorkspaceDomain_listener_didReceiveConnection_withContext___block_invoke;
    v30[3] = &unk_1E783BEE0;
    v31 = v7;
    v32 = v10;
    [(FBSWorkspaceCoupler *)coupler _enqueueClientConnectionBlock:v30];
  }

  else
  {
    os_unfair_lock_lock(&self->_icdLock);
    if (self->_icdLock_pendingIndirectConnectionBlocks)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __63__FBWorkspaceDomain_listener_didReceiveConnection_withContext___block_invoke_171;
      v25 = &unk_1E783BF08;
      v26 = self;
      v27 = v7;
      v28 = v8;
      v29 = v10;
      v16 = MEMORY[0x1AC572E40](&v22);
      icdLock_pendingIndirectConnectionBlocks = self->_icdLock_pendingIndirectConnectionBlocks;
      v18 = [v16 copy];
      v19 = MEMORY[0x1AC572E40]();
      [(NSMutableSet *)icdLock_pendingIndirectConnectionBlocks addObject:v19];

      os_unfair_lock_unlock(&self->_icdLock);
    }

    else
    {
      v20 = self->_icdLock_indirectConnectionDelegate;
      os_unfair_lock_unlock(&self->_icdLock);
      if (v20)
      {
        [(FBWorkspaceDomainConnectionDelegate *)v20 domain:self didReceiveConnection:v7 withContext:v8];
      }

      else
      {
        v21 = FBLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v34 = v7;
          v35 = 2114;
          v36 = v10;
          _os_log_impl(&dword_1A89DD000, v21, OS_LOG_TYPE_INFO, "FBWorkspaceDomain: Invalidating defunct indirect connection %p with remoteToken=%{public}@", buf, 0x16u);
        }

        [v7 invalidate];
      }
    }

    os_unfair_lock_assert_not_owner(&self->_icdLock);
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
}

void __63__FBWorkspaceDomain_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x1E69E9840];

    [a2 _registerSourcePeer:v3];
  }

  else
  {
    v5 = FBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 134218242;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_INFO, "FBWorkspaceDomain: Invalidating enqueued direct connection %p with remoteToken=%{public}@", &v9, 0x16u);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

uint64_t __63__FBWorkspaceDomain_listener_didReceiveConnection_withContext___block_invoke_171(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = *MEMORY[0x1E69E9840];

    return [a2 domain:v3 didReceiveConnection:v4 withContext:v5];
  }

  else
  {
    v8 = FBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      v10 = a1[7];
      v12 = 134218242;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_INFO, "FBWorkspaceDomain: Invalidating pended indirect connection %p with remoteToken=%{public}@", &v12, 0x16u);
    }

    result = [a1[5] invalidate];
    v11 = *MEMORY[0x1E69E9840];
  }

  return result;
}

+ (id)debugDescription
{
  v2 = +[FBProcessManager sharedInstance];
  v3 = [v2 eventDispatcher];
  v4 = [(FBWorkspaceEventDispatcher *)v3 domain];
  v5 = [v4 debugDescription];

  return v5;
}

- (id)endpointInjectorTargetingProcess:(uint64_t)a1
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1 || (v5 = [v3 pid], v5 < 1))
  {
    v15 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = [(FBWorkspaceDomain *)a1 _listenerEndpoint];
  v8 = *(a1 + 98);
  if (v7)
  {
    if (*(a1 + 98))
    {
      if ([*(a1 + 8) _isSharedInstance])
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__FBWorkspaceDomain_endpointInjectorTargetingProcess___block_invoke;
        block[3] = &unk_1E783B580;
        v29 = v7;
        if (endpointInjectorTargetingProcess__onceToken != -1)
        {
          dispatch_once(&endpointInjectorTargetingProcess__onceToken, block);
        }

        v9 = objc_alloc(MEMORY[0x1E69C7548]);
        v10 = [MEMORY[0x1E69C7640] targetWithPid:v6];
        v11 = +[FBWorkspaceAssertionAttributes sharedAttributes];
        v12 = v11;
        if (v11)
        {
          v13 = *(v11 + 200);
        }

        else
        {
          v13 = 0;
        }

        v14 = &v29;
        v15 = [v9 initWithExplanation:@"FBWorkspaceDomain: injecting saved endowment" target:v10 attributes:v13];

        v27 = 0;
        v16 = [v15 acquireWithError:&v27];
        v17 = v27;
        v18 = v17;
        if (!v16 || v17)
        {
          v19 = FBLogProcessWorkspace();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v31 = v4;
            v32 = 2114;
            v33 = v18;
            _os_log_error_impl(&dword_1A89DD000, v19, OS_LOG_TYPE_ERROR, "FBWorkspaceDomain: error injecting workspace endpoint to %{public}@ : %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v21 = MEMORY[0x1E698F4A8];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __54__FBWorkspaceDomain_endpointInjectorTargetingProcess___block_invoke_109;
        v24[3] = &unk_1E783BE90;
        v26 = v6;
        v14 = &v25;
        v25 = v7;
        v15 = [v21 injectorWithConfigurator:v24];
      }

      v20 = *v14;
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (*(a1 + 98))
  {
    v20 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v4;
      _os_log_error_impl(&dword_1A89DD000, v20, OS_LOG_TYPE_ERROR, "FBWorkspaceDomain: can not inject workspace endpoint to %{public}@", buf, 0xCu);
    }

    v15 = 0;
    goto LABEL_24;
  }

  v15 = 0;
LABEL_25:

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)assertionAttributesForLaunchIntent:(uint64_t)a3 outWorkspaceState:(void *)a4 outProcessVisibility:
{
  if (a1)
  {
    OUTLINED_FUNCTION_8_0();
    v8 = v7;
    v9 = +[FBWorkspaceAssertionAttributes sharedAttributes];
    v10 = [(FBWorkspaceAssertionAttributes *)v9 assertionAttributesForLaunchIntent:v5 assertsVisibility:*(v8 + 99) outWorkspaceState:v4 outProcessVisibility:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)assertionAttributesForWorkspaceState:(uint64_t)a1
{
  if (a1)
  {
    v4 = +[FBWorkspaceAssertionAttributes sharedAttributes];
    v5 = [(FBWorkspaceAssertionAttributes *)v4 assertionAttributesForWorkspaceState:a2 assertsVisibility:*(a1 + 99) isBootstrapping:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __32__FBWorkspaceDomain_description__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(v2 + 97);
  }

  v4 = NSStringFromFBSSceneInterruptionPolicy();
  [v3 appendString:v4 withName:@"defaultSceneInterruptionPolicy"];

  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 98) withName:@"injectorEnabled"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 99) withName:@"assertsVisibility"];
  v7 = *(a1 + 32);
  v8 = NSStringFromFBWorkspaceDomainSelfAssertRuntime(*(*(a1 + 40) + 96) & 3);
  [v7 appendString:v8 withName:@"selfAssertRuntime"];

  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"defaultWorkspace"];
  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 72) allValues];
  [v9 appendArraySection:v10 withName:@"preregisteredWorkspaces" skipIfEmpty:1];

  [*(a1 + 32) appendString:*(*(a1 + 40) + 104) withName:@"reconnectShmem" skipIfEmpty:1];
  return [*(a1 + 32) appendPointer:*(a1 + 48) withName:@"listener"];
}

- (uint64_t)defaultWorkspace
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)_initWithCoupler:(void *)a1 specification:(void *)a2 .cold.1(void **a1, void *a2)
{
  v3 = [FBWorkspaceRegistration registrationWithIdentifier:0 options:?];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  [a2 setObject:v3 forKey:v5];
}

- (void)_initWithCoupler:(char *)a1 specification:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing workspace service"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithCoupler:(uint64_t)a1 specification:.cold.3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v2 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = [v3 stringWithFormat:@"FBWorkspace-%@", v4];
  }

  else
  {
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 processName];
    v6 = [v3 stringWithFormat:@"FBWorkspace-%@", v8];
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;

  *(a1 + 97) = 0;
  v10 = [FBWorkspaceEndpointPromise alloc];
  if (v10)
  {
    v10 = [(FBWorkspaceEndpointPromise *)&v10->super.isa _initWithDomain:a1 identifier:v6 endpoint:0];
  }

  v11 = *(a1 + 24);
  *(a1 + 24) = v10;

  *(a1 + 98) = 1;
  *(a1 + 96) &= 0xFCu;
  v12 = [v2 infoDictionary];
  v13 = [v12 objectForKey:@"FBWorkspaceDynamicDomainOption_SelfAssertRuntime"];

  if (objc_opt_respondsToSelector())
  {
    if ([v13 BOOLValue])
    {
      v14 = 2;
LABEL_11:
      *(a1 + 96) = *(a1 + 96) & 0xFC | v14;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69C75D0] currentProcess];
    v16 = [v15 fb_canTaskSuspend];

    if (v16)
    {
      v14 = 1;
      goto LABEL_11;
    }
  }

  *(a1 + 100) = 0;
  v17 = *(a1 + 80);
  *(a1 + 80) = 0;

  v18 = [MEMORY[0x1E695DF20] dictionary];
  v19 = *(a1 + 72);
  *(a1 + 72) = v18;

  v20 = *(a1 + 104);
  *(a1 + 104) = 0;

  v21 = [MEMORY[0x1E695DFD8] set];
  v22 = *(a1 + 112);
  *(a1 + 112) = v21;
}

- (void)setIndirectConnectionDelegate:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setIndirectConnectionDelegate:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_listenerEndpoint
{
  OUTLINED_FUNCTION_8_0();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)selfAssertionAttributesForWorkspaceState:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"inoutState != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "FBWorkspaceDomain: Unable to register new direct connection with remoteToken=%{public}@ because the service doesn't declare support for direct connections", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "FBWorkspaceDomain: Unable to validate new incoming connection because the remote was unknown : connection=%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end