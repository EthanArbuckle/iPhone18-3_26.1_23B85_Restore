@interface FBWorkspaceAssertionAttributes
+ (id)sharedAttributes;
- (id)selfAssertionAttributesWithForeground:(uint64_t)a3 outWorkspaceState:;
- (void)assertionAttributesForLaunchIntent:(int)a3 assertsVisibility:(unsigned int *)a4 outWorkspaceState:(void *)a5 outProcessVisibility:;
- (void)assertionAttributesForWorkspaceState:(int)a3 assertsVisibility:(int)a4 isBootstrapping:;
@end

@implementation FBWorkspaceAssertionAttributes

+ (id)sharedAttributes
{
  objc_opt_self();
  if (sharedAttributes_onceToken != -1)
  {
    +[FBWorkspaceAssertionAttributes sharedAttributes];
  }

  v0 = sharedAttributes_attrs;

  return v0;
}

- (void)assertionAttributesForLaunchIntent:(int)a3 assertsVisibility:(unsigned int *)a4 outWorkspaceState:(void *)a5 outProcessVisibility:
{
  if (a1)
  {
    v6 = a1;
    if (!a4)
    {
      [FBWorkspaceAssertionAttributes assertionAttributesForLaunchIntent:? assertsVisibility:? outWorkspaceState:? outProcessVisibility:?];
    }

    if (!a5)
    {
      [FBWorkspaceAssertionAttributes assertionAttributesForLaunchIntent:? assertsVisibility:? outWorkspaceState:? outProcessVisibility:?];
    }

    v9 = a2 - 1;
    if ((a2 - 1) > 4)
    {
      LOBYTE(v10) = 0;
      LOBYTE(v11) = 0;
      LOBYTE(v12) = 0;
      v13 = 0;
    }

    else
    {
      v10 = 0x103030101uLL >> (8 * v9);
      v11 = 0x405040301uLL >> (8 * v9);
      v12 = 0x50645A2814uLL >> (8 * v9);
      v13 = qword_1A8A71F48[v9];
    }

    v14 = FBWorkspaceStateCreate(v10, v11, v12);
    *a4 = v14;
    *a5 = v13;
    a1 = [(FBWorkspaceAssertionAttributes *)v6 assertionAttributesForWorkspaceState:v14 assertsVisibility:a3 isBootstrapping:1];
  }

  return a1;
}

- (void)assertionAttributesForWorkspaceState:(int)a3 assertsVisibility:(int)a4 isBootstrapping:
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_64;
  }

  v6 = a1;
  v7 = a2;
  if (FBWorkspaceStateEqual(a2, 0))
  {
LABEL_3:
    a1 = 0;
    goto LABEL_64;
  }

  Activity = FBWorkspaceStateGetActivity(v7);
  if (Activity == 3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = Activity;
  }

  else
  {
    v10 = 2;
  }

  ProcessRole = FBWorkspaceStateGetProcessRole(v7);
  JetsamBand = FBWorkspaceStateGetJetsamBand(v7);
  if (!FBWorkspaceActivityIsValid(v10) || !FBWorkspaceProcessRoleIsValid(ProcessRole) || (FBWorkspaceJetsamBandIsValid(JetsamBand) & 1) == 0)
  {
    [FBWorkspaceAssertionAttributes assertionAttributesForWorkspaceState:assertsVisibility:isBootstrapping:];
  }

  memset(v19, 0, sizeof(v19));
  if (!v10)
  {
    goto LABEL_22;
  }

  if (v10 == 1)
  {
    if (!ProcessRole)
    {
      *&v19[0] = v6[3];
      LOBYTE(v10) = 1;
      goto LABEL_34;
    }

    *&v19[0] = v6[5];
    goto LABEL_21;
  }

  v13 = 6;
  if (!ProcessRole)
  {
    v13 = 4;
  }

  *&v19[0] = v6[v13];
  if (v10 != 3)
  {
LABEL_21:
    v10 = 1;
    goto LABEL_22;
  }

  *(&v19[0] + 1) = v6[22];
  v10 = 2;
LABEL_22:
  if (ProcessRole <= 2)
  {
    if (ProcessRole == 1)
    {
      v14 = v6[7];
    }

    else
    {
      if (ProcessRole != 2)
      {
        goto LABEL_34;
      }

      v14 = v6[8];
    }
  }

  else
  {
    switch(ProcessRole)
    {
      case 3:
        v14 = v6[9];
        break;
      case 4:
        v14 = v6[10];
        break;
      case 5:
        v14 = v6[11];
        break;
      default:
        goto LABEL_34;
    }
  }

  *(v19 + v10) = v14;
  LOBYTE(v10) = v10 + 1;
LABEL_34:
  if (JetsamBand > 39)
  {
    if (JetsamBand <= 89)
    {
      if (JetsamBand == 40)
      {
        v15 = 17;
        goto LABEL_58;
      }

      if (JetsamBand == 80)
      {
        v15 = 18;
        goto LABEL_58;
      }
    }

    else
    {
      switch(JetsamBand)
      {
        case 'Z':
          v15 = 19;
          goto LABEL_58;
        case 'd':
          v15 = 20;
          goto LABEL_58;
        case 'e':
          v15 = 21;
          goto LABEL_58;
      }
    }

LABEL_67:
    if (!v10)
    {
      goto LABEL_3;
    }

    goto LABEL_59;
  }

  if (JetsamBand <= 32)
  {
    if (JetsamBand == 20)
    {
      v15 = 12;
      goto LABEL_58;
    }

    if (JetsamBand == 30)
    {
      v15 = 13;
      goto LABEL_58;
    }

    goto LABEL_67;
  }

  if (JetsamBand == 33)
  {
    v15 = 14;
    goto LABEL_58;
  }

  if (JetsamBand == 34)
  {
    v15 = 15;
    goto LABEL_58;
  }

  if (JetsamBand != 35)
  {
    goto LABEL_67;
  }

  v15 = 16;
LABEL_58:
  *(v19 + v10) = v6[v15];
  LOBYTE(v10) = v10 + 1;
LABEL_59:
  if (a4)
  {
    *(v19 + v10) = v6[23];
    v16 = v10 + 1;
    if (ProcessRole == 1)
    {
      v16 = v10 + 2;
      *(v19 + (v10 + 1)) = v6[24];
    }
  }

  else
  {
    v16 = v10;
  }

  a1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:v16];
LABEL_64:
  v17 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)selfAssertionAttributesWithForeground:(uint64_t)a3 outWorkspaceState:
{
  if (a1)
  {
    if (!a3)
    {
      [FBWorkspaceAssertionAttributes selfAssertionAttributesWithForeground:? outWorkspaceState:?];
    }

    [(FBWorkspaceAssertionAttributes *)a2 selfAssertionAttributesWithForeground:a3 outWorkspaceState:a1, &v4];
    a1 = v4;
  }

  return a1;
}

void __50__FBWorkspaceAssertionAttributes_sharedAttributes__block_invoke()
{
  v54[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = sharedAttributes_attrs;
  sharedAttributes_attrs = v0;

  v2 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"MaintainSelfForBGHosting"];
  v3 = *(sharedAttributes_attrs + 8);
  *(sharedAttributes_attrs + 8) = v2;

  v4 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"MaintainSelfForFGHosting"];
  v5 = *(sharedAttributes_attrs + 16);
  *(sharedAttributes_attrs + 16) = v4;

  v6 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamLimit-PreserveNonUI"];
  v7 = *(sharedAttributes_attrs + 24);
  *(sharedAttributes_attrs + 24) = v6;

  v8 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamLimit-ActiveUI"];
  v9 = *(sharedAttributes_attrs + 32);
  *(sharedAttributes_attrs + 32) = v8;

  v10 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableLPRunReason-Suspend"];
  v11 = *(sharedAttributes_attrs + 40);
  *(sharedAttributes_attrs + 40) = v10;

  v12 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableLPRunReason-Resume"];
  v13 = *(sharedAttributes_attrs + 48);
  *(sharedAttributes_attrs + 48) = v12;

  v14 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableRole-Opportunistic"];
  v15 = *(sharedAttributes_attrs + 56);
  *(sharedAttributes_attrs + 56) = v14;

  v16 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableRole-Utility"];
  v17 = *(sharedAttributes_attrs + 64);
  *(sharedAttributes_attrs + 64) = v16;

  v18 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableRole-NonUI"];
  v19 = *(sharedAttributes_attrs + 72);
  *(sharedAttributes_attrs + 72) = v18;

  v20 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableRole-UINonFocal"];
  v21 = *(sharedAttributes_attrs + 80);
  *(sharedAttributes_attrs + 80) = v20;

  v22 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableRole-UIFocal"];
  v23 = *(sharedAttributes_attrs + 88);
  *(sharedAttributes_attrs + 88) = v22;

  v24 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Opportunistic"];
  v25 = *(sharedAttributes_attrs + 96);
  *(sharedAttributes_attrs + 96) = v24;

  v26 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Background"];
  v27 = *(sharedAttributes_attrs + 104);
  *(sharedAttributes_attrs + 104) = v26;

  v28 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Utility3"];
  v29 = *(sharedAttributes_attrs + 112);
  *(sharedAttributes_attrs + 112) = v28;

  v30 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Utility2"];
  v31 = *(sharedAttributes_attrs + 120);
  *(sharedAttributes_attrs + 120) = v30;

  v32 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Utility"];
  v33 = *(sharedAttributes_attrs + 128);
  *(sharedAttributes_attrs + 128) = v32;

  v34 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Active"];
  v35 = *(sharedAttributes_attrs + 136);
  *(sharedAttributes_attrs + 136) = v34;

  v36 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-UISupport"];
  v37 = *(sharedAttributes_attrs + 144);
  *(sharedAttributes_attrs + 144) = v36;

  v38 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-ForegroundSupport"];
  v39 = *(sharedAttributes_attrs + 152);
  *(sharedAttributes_attrs + 152) = v38;

  v40 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-Foreground"];
  v41 = *(sharedAttributes_attrs + 160);
  *(sharedAttributes_attrs + 160) = v40;

  v42 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableJetsamPriority-ForegroundFocal"];
  v43 = *(sharedAttributes_attrs + 168);
  *(sharedAttributes_attrs + 168) = v42;

  v44 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"Visibility"];
  v45 = *(sharedAttributes_attrs + 176);
  *(sharedAttributes_attrs + 176) = v44;

  v46 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SuspendableBootstrapping"];
  v47 = *(sharedAttributes_attrs + 184);
  *(sharedAttributes_attrs + 184) = v46;

  v48 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"Duration-Fixed-60-1-Invalidate"];
  v49 = *(sharedAttributes_attrs + 192);
  *(sharedAttributes_attrs + 192) = v48;

  v50 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"WorkspaceEndpointInjection"];
  v54[0] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v52 = *(sharedAttributes_attrs + 200);
  *(sharedAttributes_attrs + 200) = v51;

  v53 = *MEMORY[0x1E69E9840];
}

- (void)assertionAttributesForLaunchIntent:(char *)a1 assertsVisibility:outWorkspaceState:outProcessVisibility:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outProcessVisibility != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)assertionAttributesForLaunchIntent:(char *)a1 assertsVisibility:outWorkspaceState:outProcessVisibility:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outWorkspaceState != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)assertionAttributesForWorkspaceState:assertsVisibility:isBootstrapping:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v1 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromFBWorkspaceState(v2);
  v3 = [v1 stringWithFormat:@"requesting assertions for invalid state %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(v0);
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, 2u);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)selfAssertionAttributesWithForeground:(char *)a1 outWorkspaceState:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outWorkspaceState != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (uint64_t)selfAssertionAttributesWithForeground:(uint64_t)a3 outWorkspaceState:(uint64_t *)a4 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8_0();
  if (v7)
  {
    v8 = FBWorkspaceStateCreate(2, 4, 100);
    v9 = 16;
  }

  else
  {
    v8 = FBWorkspaceStateCreate(1, 3, 40);
    v9 = 8;
  }

  *v5 = v8;
  result = [MEMORY[0x1E695DEC8] arrayWithObject:*(v4 + v9)];
  *a4 = result;
  return result;
}

@end