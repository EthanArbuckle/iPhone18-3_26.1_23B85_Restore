@interface LCSExtension
+ (BOOL)isWarmLaunchAllowedForIdentity:(id)a3;
+ (LCSExtension)extensionWithHostConfiguration:(id)a3;
+ (LCSExtension)extensionWithIdentity:(id)a3;
- (BOOL)hasEntitlements:(id)a3 bundleTarget:(unint64_t)a4;
- (BOOL)hasImplementedAppIntentProtocol:(id)a3 bundleTarget:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (LSApplicationExtensionRecord)applicationExtensionRecord;
- (NSString)containerBundleIdentifier;
- (NSString)localizedDisplayName;
- (id)_initWithHostConfiguration:(id)a3;
- (unint64_t)visibilityOverride;
@end

@implementation LCSExtension

- (id)_initWithHostConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [LCSExtension _initWithHostConfiguration:a2];
  }

  v7 = v6;
  v8 = [v6 extensionIdentity];
  v9 = [v7 rbsProcessIdentity];
  if (!v8)
  {
    [LCSExtension _initWithHostConfiguration:a2];
  }

  v10 = v9;
  v11 = [v8 uniqueIdentifier];

  if (!v11)
  {
    [LCSExtension _initWithHostConfiguration:a2];
  }

  if (!v10)
  {
    [LCSExtension _initWithHostConfiguration:a2];
  }

  v18.receiver = self;
  v18.super_class = LCSExtension;
  v12 = [(LCSExtension *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identity, v8);
    v14 = [v8 uniqueIdentifier];
    identityUUID = v13->_identityUUID;
    v13->_identityUUID = v14;

    objc_storeStrong(&v13->_processIdentity, v10);
    objc_storeStrong(&v13->_hostConfiguration, a3);
    v16 = [(LCSExtension *)v13 applicationExtensionRecord];
  }

  return v13;
}

+ (LCSExtension)extensionWithHostConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [LCSExtension extensionWithHostConfiguration:a2];
  }

  v5 = v4;
  v6 = [v4 rbsProcessIdentity];
  if (v6)
  {
    v7 = [[LCSExtension alloc] _initWithHostConfiguration:v5];
  }

  else
  {
    v8 = LCSLogExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LCSExtension *)v5 extensionWithHostConfiguration:v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (LCSExtension)extensionWithIdentity:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Exextensionide.isa);
  if (!v5)
  {
    [LCSExtension extensionWithIdentity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [LCSExtension extensionWithIdentity:a2];
  }

  v6 = [a1 isWarmLaunchAllowedForIdentity:v5];
  v7 = objc_alloc(MEMORY[0x277CC5DF0]);
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithExtensionIdentity:v5];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CC5DE0]);
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v10 initWithIdentifier:v11];
    v9 = [v8 initWithExtensionIdentity:v5 instanceIdentifier:v12];
  }

  v13 = [a1 extensionWithHostConfiguration:v9];

  return v13;
}

+ (BOOL)isWarmLaunchAllowedForIdentity:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 bundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.camera.lockscreen"])
  {
    v5 = 1;
  }

  else
  {
    v13 = 0;
    v6 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v4 allowPlaceholder:0 error:&v13];
    v7 = v13;
    if (v6)
    {
      v8 = [v6 entitlements];
      v9 = objc_opt_self();
      v10 = [v8 objectForKey:@"com.apple.LockedContentServices.allowWarmLaunch" ofClass:v9];
      v5 = [v10 BOOLValue];
    }

    else
    {
      v8 = LCSLogExtension();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v15 = a1;
        v16 = 2114;
        v17 = v4;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&dword_256175000, v8, OS_LOG_TYPE_ERROR, "%p Failure in retrieving the bundle record for %{public}@: %{public}@; Warm launch is not allowed", buf, 0x20u);
      }

      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (LSApplicationExtensionRecord)applicationExtensionRecord
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_EXExtensionIdentity *)self->_identity applicationExtensionRecord];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
  }

  else if (self->_identityUUID)
  {
    v6 = objc_alloc(MEMORY[0x277CC1E50]);
    identityUUID = self->_identityUUID;
    v18 = 0;
    v4 = [v6 initWithUUID:identityUUID error:&v18];
    v5 = v18;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v8 = [(_EXExtensionIdentity *)self->_identity bundleIdentifier];
  v9 = v8;
  if (v4)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    v17 = v5;
    v4 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v8 error:&v17];
    v11 = v17;

    v5 = v11;
  }

  if (!v4)
  {
    v12 = LCSLogExtension();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identity = self->_identity;
      *buf = 134218498;
      v20 = self;
      v21 = 2114;
      v22 = identity;
      v23 = 2114;
      v24 = v5;
      _os_log_error_impl(&dword_256175000, v12, OS_LOG_TYPE_ERROR, "%p Failure in application extensionRecord for identity %{public}@: %{public}@", buf, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = v4;

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSString)containerBundleIdentifier
{
  v2 = [(LCSExtension *)self applicationExtensionRecord];
  v3 = [v2 containingBundleRecord];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (NSString)localizedDisplayName
{
  localizedDisplayName = self->_localizedDisplayName;
  if (!localizedDisplayName)
  {
    v4 = [(LCSExtension *)self applicationExtensionRecord];
    v5 = [v4 containingBundleRecord];
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 localizedName];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 copy];
    v12 = self->_localizedDisplayName;
    self->_localizedDisplayName = v11;

    localizedDisplayName = self->_localizedDisplayName;
  }

  return localizedDisplayName;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_identityUUID isEqual:v4->_identityUUID]&& [(RBSProcessIdentity *)self->_processIdentity isEqual:v4->_processIdentity]&& [(_EXHostConfiguration *)self->_hostConfiguration isEqual:v4->_hostConfiguration])
    {
      v5 = [(_EXExtensionIdentity *)self->_identity isEqual:v4->_identity];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)visibilityOverride
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  v5 = [(LCSExtension *)self bundleIdentifier];
  v6 = [(LCSExtension *)self containerBundleIdentifier];
  if (v6)
  {
    v38 = 0;
    v7 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:&v38];
    v8 = v38;
    if (v8)
    {
      v9 = LCSLogExtension();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v40 = self;
        v41 = 2114;
        v42 = v6;
        v43 = 2114;
        v44 = v8;
        _os_log_error_impl(&dword_256175000, v9, OS_LOG_TYPE_ERROR, "%p Failure in retrieving the bundle record for %{public}@: %{public}@", buf, 0x20u);
      }

      v10 = 0;
    }

    else
    {
      v37 = v5;
      v9 = [v7 infoDictionary];
      v36 = v7;
      v11 = [v7 entitlements];
      v12 = objc_opt_self();
      v35 = v11;
      v13 = [v11 objectForKey:@"com.apple.springboard.allowIconVisibilityChanges" ofClass:v12];
      v14 = [v13 BOOLValue];

      v15 = objc_opt_self();
      v16 = [v9 objectForKey:@"SBIconVisibilitySetByAppPreference" ofClass:v15];
      LODWORD(v11) = [v16 BOOLValue];

      if (v11)
      {
        v17 = objc_opt_self();
        v18 = [v9 objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:v17];

        if ((v3 | v4 | v14))
        {
          if (v18)
          {
            v10 = 1;
          }

          else
          {
            v19 = objc_opt_class();
            v20 = [v9 objectForKey:@"SBIconVisibilityDefaultVisibleInstallTypes" ofClass:v19 valuesOfClass:objc_opt_class()];
            v34 = v20;
            if (v20)
            {
              v21 = @"user";
              if (v4)
              {
                v21 = @"carrier";
              }

              if (v3)
              {
                v22 = @"internal";
              }

              else
              {
                v22 = v21;
              }

              LODWORD(v23) = [v20 containsObject:v22];
            }

            else
            {
              LODWORD(v23) = 0;
            }

            v24 = objc_opt_class();
            v25 = [v9 objectForKey:@"SBIconVisibilityDefaultVisiblePlatforms" ofClass:v24 valuesOfClass:objc_opt_class()];
            if (v25)
            {
              v26 = MGCopyAnswer();
              LODWORD(v23) = [v25 containsObject:v26] | v23;
            }

            v27 = [v9 objectForKey:@"SBIconVisibilityDefaultVisibleFeatureFlag" ofClass:objc_opt_class()];
            v28 = v27;
            if (v27)
            {
              v29 = v23;
              v23 = [v27 componentsSeparatedByString:@"/"];
              if ([v23 count] == 2)
              {
                v30 = [v23 objectAtIndex:0];
                v31 = [v23 objectAtIndex:1];
                [v30 UTF8String];
                [v31 UTF8String];
                v29 |= _os_feature_enabled_impl();
              }

              LOBYTE(v23) = v29;
            }

            if (v23)
            {
              v10 = 1;
            }

            else
            {
              v10 = 2;
            }
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v7 = v36;
      v5 = v37;
    }
  }

  else
  {
    v8 = LCSLogExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v40 = self;
      v41 = 2114;
      v42 = v5;
      _os_log_impl(&dword_256175000, v8, OS_LOG_TYPE_DEFAULT, "%p Failure in retrieving the bundle record for extension: %{public}@ because container app can't be determined", buf, 0x16u);
    }

    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)hasImplementedAppIntentProtocol:(id)a3 bundleTarget:(unint64_t)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(LCSExtension *)self containerBundleIdentifier];
  v8 = [(LCSExtension *)self bundleIdentifier];
  v9 = [objc_alloc(MEMORY[0x277D23C38]) initWithOptions:0];
  v10 = objc_opt_new();
  v11 = [v9 actionsConformingToSystemProtocol:v6 withParametersOfTypes:v10 bundleIdentifier:v7 error:0];

  v12 = [v11 objectForKeyedSubscript:v7];
  v13 = [v12 allValues];

  v14 = v8;
  v15 = v14;
  if (!a4)
  {
    v15 = v7;
  }

  v37 = v14;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    v35 = v7;
    v36 = v6;
    v33 = v11;
    v34 = v9;
    v32 = *v43;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = [v21 effectiveBundleIdentifiers];
        v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v39;
          while (2)
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v39 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v38 + 1) + 8 * j) bundleIdentifier];
              v28 = [v27 isEqualToString:v15];

              if (v28)
              {

                v29 = 1;
                v7 = v35;
                v6 = v36;
                v11 = v33;
                v9 = v34;
                goto LABEL_21;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v19 = v32;
      }

      v18 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
      v29 = 0;
      v7 = v35;
      v6 = v36;
      v11 = v33;
      v9 = v34;
    }

    while (v18);
  }

  else
  {
    v29 = 0;
  }

LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)hasEntitlements:(id)a3 bundleTarget:(unint64_t)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(LCSExtension *)self bundleIdentifier];
  if (!a4)
  {
    v8 = [(LCSExtension *)self containerBundleIdentifier];

    v7 = v8;
  }

  v38 = 0;
  v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v7 allowPlaceholder:0 error:&v38];
  v10 = v38;
  if (v10)
  {
    v11 = LCSLogExtension();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v27 = @"extension";
      }

      else
      {
        v27 = @"container";
      }

      v28 = v27;
      v29 = [v6 description];
      *buf = 134219010;
      v41 = self;
      v42 = 2112;
      v43 = v27;
      v44 = 2114;
      v45 = v7;
      v46 = 2114;
      v47 = v10;
      v48 = 2112;
      v49 = v29;
      _os_log_error_impl(&dword_256175000, v11, OS_LOG_TYPE_ERROR, "%p Failure in retrieving the %@ bundle record for %{public}@: %{public}@; No %@ entitlement found", buf, 0x34u);
    }

    v12 = 0;
  }

  else
  {
    v11 = [v9 entitlements];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v30 = a4;
      v31 = v9;
      v32 = v7;
      v33 = v6;
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = objc_opt_self();
          v20 = [v11 objectForKey:v18 ofClass:v19];
          v21 = [v20 BOOLValue];

          if ((v21 & 1) == 0)
          {
            v22 = LCSLogExtension();
            v7 = v32;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = @"extension";
              *buf = 134218754;
              v41 = self;
              v42 = 2112;
              if (!v30)
              {
                v23 = @"container";
              }

              v43 = v23;
              v44 = 2114;
              v45 = v32;
              v46 = 2112;
              v47 = v18;
              v24 = v23;
              _os_log_impl(&dword_256175000, v22, OS_LOG_TYPE_DEFAULT, "%p %@ bundle record for %{public}@ doesn't have %@ entitlement", buf, 0x2Au);
            }

            v12 = 0;
            v6 = v33;
            goto LABEL_20;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v12 = 1;
      v7 = v32;
      v6 = v33;
LABEL_20:
      v10 = 0;
      v9 = v31;
    }

    else
    {
      v12 = 1;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_initWithHostConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"processIdentity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithHostConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[identity uniqueIdentifier]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithHostConfiguration:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithHostConfiguration:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"hostConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)extensionWithHostConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_256175000, a2, OS_LOG_TYPE_ERROR, "Failed to lookup processIdentity for %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)extensionWithHostConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"hostConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)extensionWithIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:_EXExtensionIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)extensionWithIdentity:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_256175000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end