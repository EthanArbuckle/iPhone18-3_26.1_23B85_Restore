@interface LCSExtension
+ (BOOL)isWarmLaunchAllowedForIdentity:(id)identity;
+ (LCSExtension)extensionWithHostConfiguration:(id)configuration;
+ (LCSExtension)extensionWithIdentity:(id)identity;
- (BOOL)hasEntitlements:(id)entitlements bundleTarget:(unint64_t)target;
- (BOOL)hasImplementedAppIntentProtocol:(id)protocol bundleTarget:(unint64_t)target;
- (BOOL)isEqual:(id)equal;
- (LSApplicationExtensionRecord)applicationExtensionRecord;
- (NSString)containerBundleIdentifier;
- (NSString)localizedDisplayName;
- (id)_initWithHostConfiguration:(id)configuration;
- (unint64_t)visibilityOverride;
@end

@implementation LCSExtension

- (id)_initWithHostConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [LCSExtension _initWithHostConfiguration:a2];
  }

  v7 = configurationCopy;
  extensionIdentity = [configurationCopy extensionIdentity];
  rbsProcessIdentity = [v7 rbsProcessIdentity];
  if (!extensionIdentity)
  {
    [LCSExtension _initWithHostConfiguration:a2];
  }

  v10 = rbsProcessIdentity;
  uniqueIdentifier = [extensionIdentity uniqueIdentifier];

  if (!uniqueIdentifier)
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
    objc_storeStrong(&v12->_identity, extensionIdentity);
    uniqueIdentifier2 = [extensionIdentity uniqueIdentifier];
    identityUUID = v13->_identityUUID;
    v13->_identityUUID = uniqueIdentifier2;

    objc_storeStrong(&v13->_processIdentity, v10);
    objc_storeStrong(&v13->_hostConfiguration, configuration);
    applicationExtensionRecord = [(LCSExtension *)v13 applicationExtensionRecord];
  }

  return v13;
}

+ (LCSExtension)extensionWithHostConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [LCSExtension extensionWithHostConfiguration:a2];
  }

  v5 = configurationCopy;
  rbsProcessIdentity = [configurationCopy rbsProcessIdentity];
  if (rbsProcessIdentity)
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

+ (LCSExtension)extensionWithIdentity:(id)identity
{
  identityCopy = identity;
  NSClassFromString(&cfstr_Exextensionide.isa);
  if (!identityCopy)
  {
    [LCSExtension extensionWithIdentity:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [LCSExtension extensionWithIdentity:a2];
  }

  v6 = [self isWarmLaunchAllowedForIdentity:identityCopy];
  v7 = objc_alloc(MEMORY[0x277CC5DF0]);
  v8 = v7;
  if (v6)
  {
    v9 = [v7 initWithExtensionIdentity:identityCopy];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CC5DE0]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v12 = [v10 initWithIdentifier:uUID];
    v9 = [v8 initWithExtensionIdentity:identityCopy instanceIdentifier:v12];
  }

  v13 = [self extensionWithHostConfiguration:v9];

  return v13;
}

+ (BOOL)isWarmLaunchAllowedForIdentity:(id)identity
{
  v20 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [identity bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.camera.lockscreen"])
  {
    bOOLValue = 1;
  }

  else
  {
    v13 = 0;
    v6 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v13];
    v7 = v13;
    if (v6)
    {
      entitlements = [v6 entitlements];
      v9 = objc_opt_self();
      v10 = [entitlements objectForKey:@"com.apple.LockedContentServices.allowWarmLaunch" ofClass:v9];
      bOOLValue = [v10 BOOLValue];
    }

    else
    {
      entitlements = LCSLogExtension();
      if (os_log_type_enabled(entitlements, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy = self;
        v16 = 2114;
        v17 = bundleIdentifier;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&dword_256175000, entitlements, OS_LOG_TYPE_ERROR, "%p Failure in retrieving the bundle record for %{public}@: %{public}@; Warm launch is not allowed", buf, 0x20u);
      }

      bOOLValue = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (LSApplicationExtensionRecord)applicationExtensionRecord
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  applicationExtensionRecord = [(_EXExtensionIdentity *)self->_identity applicationExtensionRecord];
  if (applicationExtensionRecord)
  {
    v4 = applicationExtensionRecord;
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

  bundleIdentifier = [(_EXExtensionIdentity *)self->_identity bundleIdentifier];
  v9 = bundleIdentifier;
  if (v4)
  {
    v10 = 1;
  }

  else
  {
    v10 = bundleIdentifier == 0;
  }

  if (!v10)
  {
    v17 = v5;
    v4 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:bundleIdentifier error:&v17];
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
      selfCopy = self;
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
  applicationExtensionRecord = [(LCSExtension *)self applicationExtensionRecord];
  containingBundleRecord = [applicationExtensionRecord containingBundleRecord];
  bundleIdentifier = [containingBundleRecord bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)localizedDisplayName
{
  localizedDisplayName = self->_localizedDisplayName;
  if (!localizedDisplayName)
  {
    applicationExtensionRecord = [(LCSExtension *)self applicationExtensionRecord];
    containingBundleRecord = [applicationExtensionRecord containingBundleRecord];
    v6 = objc_opt_class();
    v7 = containingBundleRecord;
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
      localizedName = [v9 localizedName];
    }

    else
    {
      localizedName = 0;
    }

    v11 = [localizedName copy];
    v12 = self->_localizedDisplayName;
    self->_localizedDisplayName = v11;

    localizedDisplayName = self->_localizedDisplayName;
  }

  return localizedDisplayName;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_identityUUID isEqual:equalCopy->_identityUUID]&& [(RBSProcessIdentity *)self->_processIdentity isEqual:equalCopy->_processIdentity]&& [(_EXHostConfiguration *)self->_hostConfiguration isEqual:equalCopy->_hostConfiguration])
    {
      v5 = [(_EXExtensionIdentity *)self->_identity isEqual:equalCopy->_identity];
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
  bundleIdentifier = [(LCSExtension *)self bundleIdentifier];
  containerBundleIdentifier = [(LCSExtension *)self containerBundleIdentifier];
  if (containerBundleIdentifier)
  {
    v38 = 0;
    v7 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:containerBundleIdentifier allowPlaceholder:0 error:&v38];
    v8 = v38;
    if (v8)
    {
      infoDictionary = LCSLogExtension();
      if (os_log_type_enabled(infoDictionary, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy2 = self;
        v41 = 2114;
        v42 = containerBundleIdentifier;
        v43 = 2114;
        v44 = v8;
        _os_log_error_impl(&dword_256175000, infoDictionary, OS_LOG_TYPE_ERROR, "%p Failure in retrieving the bundle record for %{public}@: %{public}@", buf, 0x20u);
      }

      v10 = 0;
    }

    else
    {
      v37 = bundleIdentifier;
      infoDictionary = [v7 infoDictionary];
      v36 = v7;
      entitlements = [v7 entitlements];
      v12 = objc_opt_self();
      v35 = entitlements;
      v13 = [entitlements objectForKey:@"com.apple.springboard.allowIconVisibilityChanges" ofClass:v12];
      bOOLValue = [v13 BOOLValue];

      v15 = objc_opt_self();
      v16 = [infoDictionary objectForKey:@"SBIconVisibilitySetByAppPreference" ofClass:v15];
      LODWORD(entitlements) = [v16 BOOLValue];

      if (entitlements)
      {
        v17 = objc_opt_self();
        v18 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:v17];

        if ((v3 | v4 | bOOLValue))
        {
          if (v18)
          {
            v10 = 1;
          }

          else
          {
            v19 = objc_opt_class();
            v20 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisibleInstallTypes" ofClass:v19 valuesOfClass:objc_opt_class()];
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
            v25 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisiblePlatforms" ofClass:v24 valuesOfClass:objc_opt_class()];
            if (v25)
            {
              v26 = MGCopyAnswer();
              LODWORD(v23) = [v25 containsObject:v26] | v23;
            }

            v27 = [infoDictionary objectForKey:@"SBIconVisibilityDefaultVisibleFeatureFlag" ofClass:objc_opt_class()];
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
      bundleIdentifier = v37;
    }
  }

  else
  {
    v8 = LCSLogExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v41 = 2114;
      v42 = bundleIdentifier;
      _os_log_impl(&dword_256175000, v8, OS_LOG_TYPE_DEFAULT, "%p Failure in retrieving the bundle record for extension: %{public}@ because container app can't be determined", buf, 0x16u);
    }

    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)hasImplementedAppIntentProtocol:(id)protocol bundleTarget:(unint64_t)target
{
  v48 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  containerBundleIdentifier = [(LCSExtension *)self containerBundleIdentifier];
  bundleIdentifier = [(LCSExtension *)self bundleIdentifier];
  v9 = [objc_alloc(MEMORY[0x277D23C38]) initWithOptions:0];
  v10 = objc_opt_new();
  v11 = [v9 actionsConformingToSystemProtocol:protocolCopy withParametersOfTypes:v10 bundleIdentifier:containerBundleIdentifier error:0];

  v12 = [v11 objectForKeyedSubscript:containerBundleIdentifier];
  allValues = [v12 allValues];

  v14 = bundleIdentifier;
  v15 = v14;
  if (!target)
  {
    v15 = containerBundleIdentifier;
  }

  v37 = v14;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = allValues;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    v35 = containerBundleIdentifier;
    v36 = protocolCopy;
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
        effectiveBundleIdentifiers = [v21 effectiveBundleIdentifiers];
        v23 = [effectiveBundleIdentifiers countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                objc_enumerationMutation(effectiveBundleIdentifiers);
              }

              bundleIdentifier2 = [*(*(&v38 + 1) + 8 * j) bundleIdentifier];
              v28 = [bundleIdentifier2 isEqualToString:v15];

              if (v28)
              {

                v29 = 1;
                containerBundleIdentifier = v35;
                protocolCopy = v36;
                v11 = v33;
                v9 = v34;
                goto LABEL_21;
              }
            }

            v24 = [effectiveBundleIdentifiers countByEnumeratingWithState:&v38 objects:v46 count:16];
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
      containerBundleIdentifier = v35;
      protocolCopy = v36;
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

- (BOOL)hasEntitlements:(id)entitlements bundleTarget:(unint64_t)target
{
  v50 = *MEMORY[0x277D85DE8];
  entitlementsCopy = entitlements;
  bundleIdentifier = [(LCSExtension *)self bundleIdentifier];
  if (!target)
  {
    containerBundleIdentifier = [(LCSExtension *)self containerBundleIdentifier];

    bundleIdentifier = containerBundleIdentifier;
  }

  v38 = 0;
  v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v38];
  v10 = v38;
  if (v10)
  {
    entitlements = LCSLogExtension();
    if (os_log_type_enabled(entitlements, OS_LOG_TYPE_ERROR))
    {
      if (target)
      {
        v27 = @"extension";
      }

      else
      {
        v27 = @"container";
      }

      v28 = v27;
      v29 = [entitlementsCopy description];
      *buf = 134219010;
      selfCopy2 = self;
      v42 = 2112;
      v43 = v27;
      v44 = 2114;
      v45 = bundleIdentifier;
      v46 = 2114;
      v47 = v10;
      v48 = 2112;
      v49 = v29;
      _os_log_error_impl(&dword_256175000, entitlements, OS_LOG_TYPE_ERROR, "%p Failure in retrieving the %@ bundle record for %{public}@: %{public}@; No %@ entitlement found", buf, 0x34u);
    }

    v12 = 0;
  }

  else
  {
    entitlements = [v9 entitlements];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = entitlementsCopy;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      targetCopy = target;
      v31 = v9;
      v32 = bundleIdentifier;
      v33 = entitlementsCopy;
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
          v20 = [entitlements objectForKey:v18 ofClass:v19];
          bOOLValue = [v20 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {
            v22 = LCSLogExtension();
            bundleIdentifier = v32;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = @"extension";
              *buf = 134218754;
              selfCopy2 = self;
              v42 = 2112;
              if (!targetCopy)
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
            entitlementsCopy = v33;
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
      bundleIdentifier = v32;
      entitlementsCopy = v33;
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