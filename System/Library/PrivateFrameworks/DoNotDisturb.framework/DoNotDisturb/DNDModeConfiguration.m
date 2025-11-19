@interface DNDModeConfiguration
+ (id)defaultModeConfiguration;
+ (id)defaultReduceInterruptionsMode;
- (BOOL)_containsSecureTriggers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSupportedConfiguration;
- (DNDModeConfiguration)initWithCoder:(id)a3;
- (DNDModeConfiguration)initWithMode:(id)a3 configuration:(id)a4 triggers:(id)a5;
- (DNDModeConfiguration)initWithMode:(id)a3 configuration:(id)a4 triggers:(id)a5 impactsAvailability:(unint64_t)a6 dimsLockScreen:(unint64_t)a7 created:(id)a8 lastModified:(id)a9 automaticallyGenerated:(BOOL)a10 compatibilityVersion:(int64_t)a11 lastModifiedByVersion:(id *)a12 lastModifiedByDeviceID:(id)a13;
- (NSString)description;
- (id)_initWithModeConfiguration:(id)a3;
- (id)mergeDecision:(id)a3 reason:(id)a4;
- (id)mergeWithRemoteModeConfiguration:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)shortDescription;
- (int64_t)_maxTriggerCompatibilityVersion:(id)a3;
- (int64_t)compatibilityVersion;
- (int64_t)rawResolvedCompatibilityVersion;
- (int64_t)resolvedCompatibilityVersion;
- (unint64_t)allowSmartEntry;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)a3 usingDiffBuilder:(id)a4 withDescription:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)log:(id)a3 withMessage:(id)a4;
@end

@implementation DNDModeConfiguration

+ (id)defaultModeConfiguration
{
  v2 = +[DNDMode defaultMode];
  v3 = +[DNDMutableConfiguration defaultConfiguration];
  v4 = [DNDMutableModeConfiguration alloc];
  v5 = [(DNDModeConfiguration *)v4 initWithMode:v2 configuration:v3 triggers:MEMORY[0x277CBEBF8]];
  [(DNDMutableModeConfiguration *)v5 setAutomaticallyGenerated:1];

  return v5;
}

+ (id)defaultReduceInterruptionsMode
{
  v2 = +[DNDMode defaultReduceInterruptionsMode];
  v3 = +[DNDMutableConfiguration defaultConfiguration];
  [v3 setAllowIntelligentManagement:2];
  [v3 setHideApplicationBadges:1];
  v4 = [v3 phoneCallBypassSettings];
  v5 = [v4 mutableCopy];

  [v5 setImmediateBypassEventSourceType:1];
  [v3 setPhoneCallBypassSettings:v5];
  v6 = [DNDMutableModeConfiguration alloc];
  v7 = [(DNDModeConfiguration *)v6 initWithMode:v2 configuration:v3 triggers:MEMORY[0x277CBEBF8]];
  [(DNDMutableModeConfiguration *)v7 setAutomaticallyGenerated:1];

  return v7;
}

- (DNDModeConfiguration)initWithMode:(id)a3 configuration:(id)a4 triggers:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 date];
  v16 = DNDOperatingSystemVersionNotSet;
  v17 = -1;
  LOBYTE(v15) = 0;
  v13 = [(DNDModeConfiguration *)self initWithMode:v11 configuration:v10 triggers:v9 impactsAvailability:0 dimsLockScreen:0 created:v12 lastModified:v12 automaticallyGenerated:v15 compatibilityVersion:2 lastModifiedByVersion:&v16 lastModifiedByDeviceID:0];

  return v13;
}

- (DNDModeConfiguration)initWithMode:(id)a3 configuration:(id)a4 triggers:(id)a5 impactsAvailability:(unint64_t)a6 dimsLockScreen:(unint64_t)a7 created:(id)a8 lastModified:(id)a9 automaticallyGenerated:(BOOL)a10 compatibilityVersion:(int64_t)a11 lastModifiedByVersion:(id *)a12 lastModifiedByDeviceID:(id)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  v23 = a9;
  v24 = a13;
  v41.receiver = self;
  v41.super_class = DNDModeConfiguration;
  v25 = [(DNDModeConfiguration *)&v41 init];
  if (v25)
  {
    v26 = [v19 copy];
    mode = v25->_mode;
    v25->_mode = v26;

    v28 = [v20 copy];
    configuration = v25->_configuration;
    v25->_configuration = v28;

    v30 = [v21 copy];
    triggers = v25->_triggers;
    v25->_triggers = v30;

    v25->_impactsAvailability = a6;
    v25->_dimsLockScreen = a7;
    v32 = [v22 copy];
    created = v25->_created;
    v25->_created = v32;

    v34 = [v23 copy];
    lastModified = v25->_lastModified;
    v25->_lastModified = v34;

    v25->_automaticallyGenerated = a10;
    v25->_compatibilityVersion = a11;
    v36 = *&a12->var0;
    v25->_lastModifiedByVersion.patchVersion = a12->var2;
    *&v25->_lastModifiedByVersion.majorVersion = v36;
    v37 = [v24 copy];
    lastModifiedByDeviceID = v25->_lastModifiedByDeviceID;
    v25->_lastModifiedByDeviceID = v37;

    if ([v20 hasSecureData])
    {
      v39 = 1;
    }

    else
    {
      v39 = [(DNDModeConfiguration *)v25 _containsSecureTriggers:v21];
    }

    v25->_hasSecureData = v39;
  }

  return v25;
}

- (id)_initWithModeConfiguration:(id)a3
{
  v3 = a3;
  v17 = [v3 mode];
  v4 = [v3 configuration];
  v5 = [v3 triggers];
  v6 = [v3 impactsAvailability];
  v7 = [v3 dimsLockScreen];
  v8 = [v3 created];
  v9 = [v3 lastModified];
  v10 = [v3 isAutomaticallyGenerated];
  v11 = [v3 compatibilityVersion];
  if (v3)
  {
    [v3 lastModifiedByVersion];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v12 = [v3 lastModifiedByDeviceID];
  LOBYTE(v15) = v10;
  v13 = [(DNDModeConfiguration *)self initWithMode:v17 configuration:v4 triggers:v5 impactsAvailability:v6 dimsLockScreen:v7 created:v8 lastModified:v9 automaticallyGenerated:v15 compatibilityVersion:v11 lastModifiedByVersion:v18 lastModifiedByDeviceID:v12];

  return v13;
}

- (unint64_t)allowSmartEntry
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_triggers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = 2;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      v9 = objc_opt_class();
      v10 = v8;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v9 = v10;
        }

        else
        {
          v9 = 0;
        }
      }

      if (v9)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v6 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)mergeDecision:(id)a3 reason:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDLogModeConfiguration;
  v9 = os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT);
  if (v6 == self)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v13 = 138543362;
    v14 = v7;
    v10 = "Merge decision: self; reason: %{public}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v13 = 138543362;
    v14 = v7;
    v10 = "Merge decision: other; reason: %{public}@";
  }

  _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)mergeWithRemoteModeConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DNDMode *)self->_mode visibility];
    v6 = [(DNDModeConfiguration *)v4 mode];
    v7 = [v6 visibility];

    automaticallyGenerated = self->_automaticallyGenerated;
    v9 = v4->_automaticallyGenerated;
    if (automaticallyGenerated != v9)
    {
      if (v5 == v7)
      {
        if (!v5)
        {
          v10 = @"automaticallyGenerated";
          if (!self->_automaticallyGenerated)
          {
            goto LABEL_31;
          }

LABEL_29:
          v18 = self;
          v19 = v4;
          goto LABEL_32;
        }
      }

      else
      {
        if (!v5 && (automaticallyGenerated & 1) == 0)
        {
          v10 = @"visibility";
          goto LABEL_31;
        }

        if (!v7 && (v9 & 1) == 0)
        {
          v10 = @"visibility";
          goto LABEL_29;
        }
      }
    }

    if (v5 != v7)
    {
      goto LABEL_38;
    }

    v11 = [(DNDModeConfiguration *)self resolvedCompatibilityVersion];
    v12 = [(DNDModeConfiguration *)v4 rawResolvedCompatibilityVersion];
    if (v11 == v12)
    {
      goto LABEL_38;
    }

    if (v11 < 3 && v12 > 3)
    {
      v10 = @"compatibilityVersion";
      goto LABEL_29;
    }

    if (v12 >= 3 || v11 <= 3)
    {
LABEL_38:
      if ([(NSDate *)v4->_lastModified isEqualToDate:self->_lastModified])
      {
        v10 = @"lastModified same";
        goto LABEL_29;
      }

      lastModified = self->_lastModified;
      v14 = [MEMORY[0x277CBEAA8] distantPast];
      LODWORD(lastModified) = [(NSDate *)lastModified isEqualToDate:v14];

      if (lastModified)
      {
        v10 = @"lastModified distantPast";
      }

      else
      {
        v16 = [(NSDate *)v4->_lastModified laterDate:self->_lastModified];
        v17 = [v16 isEqualToDate:v4->_lastModified];

        if (v17)
        {
          v10 = @"lastModified";
          goto LABEL_29;
        }

        v10 = @"fallthrough";
      }
    }

    else
    {
      v10 = @"compatibilityVersion";
    }
  }

  else
  {
    v10 = @"nothing to merge with";
  }

LABEL_31:
  v18 = self;
  v19 = self;
LABEL_32:
  v20 = [(DNDModeConfiguration *)v18 mergeDecision:v19 reason:v10];

  return v20;
}

- (BOOL)isSupportedConfiguration
{
  v3 = [(DNDModeConfiguration *)self mode];
  v4 = [v3 isPlaceholder];

  if (v4)
  {
    return 1;
  }

  v6 = [(DNDModeConfiguration *)self resolvedCompatibilityVersion];
  return v6 < 21 && v6 >= 2;
}

- (int64_t)resolvedCompatibilityVersion
{
  v3 = [(DNDModeConfiguration *)self compatibilityVersion];
  if (v3 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(DNDModeConfiguration *)self configuration];
  v6 = [v5 compatibilityVersion];

  if (v4 > v6)
  {
    v6 = v4;
  }

  v7 = [(DNDModeConfiguration *)self triggers];
  v8 = [(DNDModeConfiguration *)self _maxTriggerCompatibilityVersion:v7];

  if (v6 <= v8)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (int64_t)rawResolvedCompatibilityVersion
{
  v3 = [(DNDModeConfiguration *)self compatibilityVersion];
  if (v3 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(DNDModeConfiguration *)self configuration];
  v6 = [v5 rawCompatibilityVersion];

  if (v4 > v6)
  {
    v6 = v4;
  }

  v7 = [(DNDModeConfiguration *)self triggers];
  v8 = [(DNDModeConfiguration *)self _maxTriggerCompatibilityVersion:v7];

  if (v6 <= v8)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (int64_t)compatibilityVersion
{
  compatibilityVersion = self->_compatibilityVersion;
  if (compatibilityVersion <= 20)
  {
    v3 = [(DNDModeConfiguration *)self mode];
    v4 = [v3 semanticType];

    if (v4 == 9)
    {
      return 20;
    }
  }

  return compatibilityVersion;
}

- (void)log:(id)a3 withMessage:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DNDModeConfiguration *)self mode];
  v9 = [v8 modeIdentifier];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin: %{public}@", &v21, 0x16u);
  }

  v10 = v6;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(DNDModeConfiguration *)self shortDescription];
    v21 = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@", &v21, 0x16u);
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(DNDModeConfiguration *)self created];
    v14 = [(DNDModeConfiguration *)self lastModified];
    v15 = [(DNDModeConfiguration *)self isAutomaticallyGenerated];
    v16 = [(DNDModeConfiguration *)self hasSecureData];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDModeConfiguration compatibilityVersion](self, "compatibilityVersion")}];
    v21 = 138544642;
    v22 = v9;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    v27 = 1026;
    v28 = v15;
    v29 = 1026;
    v30 = v16;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_22002F000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] created: %{public}@; lastModified: %{public}@; isAutomaticallyGenerated: %{public}d; hasSecureData: %{public}d; compatibilityVersion: %{public}@; ", &v21, 0x36u);
  }

  v18 = v12;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(DNDModeConfiguration *)self triggers];
    v21 = 138543619;
    v22 = v9;
    v23 = 2113;
    v24 = v19;
    _os_log_impl(&dword_22002F000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] triggers: %{private}@", &v21, 0x16u);
  }

  [(DNDConfiguration *)self->_configuration log:v18 withPrefix:v9];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = v9;
    _os_log_impl(&dword_22002F000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] End", &v21, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(DNDModeConfiguration *)self mode];
  v4 = [v3 hash];
  v5 = [(DNDModeConfiguration *)self configuration];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDModeConfiguration *)self triggers];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(DNDModeConfiguration *)self impactsAvailability];
  v10 = [(DNDModeConfiguration *)self dimsLockScreen];
  v11 = [(DNDModeConfiguration *)self created];
  v12 = v10 ^ [v11 hash];
  v13 = [(DNDModeConfiguration *)self lastModified];
  v14 = v9 ^ v12 ^ [v13 hash];
  v15 = [(DNDModeConfiguration *)self isAutomaticallyGenerated];
  v16 = v15 ^ [(DNDModeConfiguration *)self compatibilityVersion];
  v17 = v16 ^ [(DNDModeConfiguration *)self hasSecureData];

  return v14 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDModeConfiguration *)self created];
      v8 = [(DNDModeConfiguration *)v6 created];
      if (v7 != v8)
      {
        v65 = [(DNDModeConfiguration *)self created];
        if (!v65)
        {
          LOBYTE(v11) = 0;
          goto LABEL_61;
        }

        v63 = [(DNDModeConfiguration *)v6 created];
        if (!v63)
        {
          LOBYTE(v11) = 0;
LABEL_60:

          goto LABEL_61;
        }

        v9 = [(DNDModeConfiguration *)self created];
        v10 = [(DNDModeConfiguration *)v6 created];
        if (![v9 isEqual:v10])
        {
          LOBYTE(v11) = 0;
LABEL_59:

          goto LABEL_60;
        }

        v61 = v10;
        v62 = v9;
      }

      v12 = [(DNDModeConfiguration *)self lastModified];
      v64 = [(DNDModeConfiguration *)v6 lastModified];
      if (v12 != v64)
      {
        v13 = [(DNDModeConfiguration *)self lastModified];
        if (!v13)
        {
          goto LABEL_57;
        }

        v14 = v13;
        v15 = [(DNDModeConfiguration *)v6 lastModified];
        if (v15)
        {
          v59 = v15;
          v16 = [(DNDModeConfiguration *)self lastModified];
          v17 = [(DNDModeConfiguration *)v6 lastModified];
          if ([v16 isEqual:v17])
          {
            v55 = v17;
            v56 = v14;
            v57 = v16;
            goto LABEL_16;
          }
        }

        goto LABEL_57;
      }

LABEL_16:
      v18 = [(DNDModeConfiguration *)self mode];
      v19 = [(DNDModeConfiguration *)v6 mode];
      v60 = v18;
      if (v18 == v19)
      {
LABEL_23:
        v26 = [(DNDModeConfiguration *)self configuration];
        v58 = [(DNDModeConfiguration *)v6 configuration];
        if (v26 == v58)
        {
          goto LABEL_31;
        }

        v27 = [(DNDModeConfiguration *)self configuration];
        if (v27)
        {
          v51 = v27;
          v28 = [(DNDModeConfiguration *)v6 configuration];
          if (v28)
          {
            v48 = v28;
            v29 = [(DNDModeConfiguration *)self configuration];
            v3 = [(DNDModeConfiguration *)v6 configuration];
            if ([v29 isEqual:v3])
            {
              v44 = v29;
LABEL_31:
              v30 = [(DNDModeConfiguration *)self triggers];
              v52 = [(DNDModeConfiguration *)v6 triggers];
              if (v30 == v52)
              {
                v46 = v26;
                v47 = v3;
                v34 = v54;
              }

              else
              {
                v31 = [(DNDModeConfiguration *)self triggers];
                if (!v31)
                {

                  LOBYTE(v11) = 0;
LABEL_75:
                  if (v26 != v58)
                  {
                  }

                  if (v60 != v19)
                  {
                  }

                  goto LABEL_79;
                }

                v45 = v31;
                v32 = [(DNDModeConfiguration *)v6 triggers];
                if (!v32)
                {
                  LOBYTE(v11) = 0;
LABEL_74:

                  goto LABEL_75;
                }

                v47 = v3;
                v43 = v32;
                v33 = [(DNDModeConfiguration *)self triggers];
                v41 = [(DNDModeConfiguration *)v6 triggers];
                v42 = v33;
                if (![v33 isEqual:?])
                {
                  LOBYTE(v11) = 0;
                  v3 = v47;
LABEL_73:

                  goto LABEL_74;
                }

                v46 = v26;
                v34 = v54;
              }

              v35 = [(DNDModeConfiguration *)self impactsAvailability];
              v54 = v34;
              if (v35 != [(DNDModeConfiguration *)v6 impactsAvailability]|| (v36 = [(DNDModeConfiguration *)self dimsLockScreen], v36 != [(DNDModeConfiguration *)v6 dimsLockScreen]) || (v37 = [(DNDModeConfiguration *)self isAutomaticallyGenerated], v37 != [(DNDModeConfiguration *)v6 isAutomaticallyGenerated]) || (v38 = [(DNDModeConfiguration *)self compatibilityVersion], v38 != [(DNDModeConfiguration *)v6 compatibilityVersion]))
              {
                if (v30 != v52)
                {

                  LOBYTE(v11) = 0;
                  v26 = v46;
                  v3 = v47;
LABEL_66:
                  if (v26 != v58)
                  {
                  }

                  if (v60 != v19)
                  {
                  }

LABEL_79:

                  if (v12 != v64)
                  {
                  }

LABEL_58:
                  v10 = v61;
                  v9 = v62;
                  if (v7 != v8)
                  {
                    goto LABEL_59;
                  }

LABEL_61:

                  goto LABEL_62;
                }

                LOBYTE(v11) = 0;
                v26 = v46;
                v3 = v47;
LABEL_65:

                goto LABEL_66;
              }

              v39 = [(DNDModeConfiguration *)self hasSecureData];
              v11 = v39 ^ [(DNDModeConfiguration *)v6 hasSecureData]^ 1;
              v26 = v46;
              v3 = v47;
              if (v30 == v52)
              {
                goto LABEL_65;
              }

              goto LABEL_73;
            }
          }
        }

        if (v60 != v19)
        {
        }

        if (v12 != v64)
        {
        }

LABEL_57:

        LOBYTE(v11) = 0;
        goto LABEL_58;
      }

      v20 = [(DNDModeConfiguration *)self mode];
      if (v20)
      {
        v21 = v20;
        v22 = [(DNDModeConfiguration *)v6 mode];
        if (v22)
        {
          v23 = v19;
          v24 = v21;
          v53 = v22;
          v25 = [(DNDModeConfiguration *)self mode];
          v3 = [(DNDModeConfiguration *)v6 mode];
          if ([v25 isEqual:v3])
          {
            v49 = v25;
            v50 = v24;
            v19 = v23;
            v54 = v3;
            goto LABEL_23;
          }

LABEL_39:
          if (v12 != v64)
          {
          }

          goto LABEL_57;
        }
      }

      goto LABEL_39;
    }

    LOBYTE(v11) = 0;
  }

LABEL_62:

  return v11;
}

- (NSString)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v15 = [(DNDModeConfiguration *)self mode];
  v19 = [(DNDModeConfiguration *)self configuration];
  v18 = [(DNDModeConfiguration *)self triggers];
  v13 = DNDEnabledSettingToString([(DNDModeConfiguration *)self impactsAvailability]);
  v14 = DNDEnabledSettingToString([(DNDModeConfiguration *)self dimsLockScreen]);
  v12 = [(DNDModeConfiguration *)self created];
  v3 = [(DNDModeConfiguration *)self lastModified];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDModeConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v5 = DNDCompatibilityVersionToString([(DNDModeConfiguration *)self compatibilityVersion]);
  v6 = DNDCompatibilityVersionToString([(DNDModeConfiguration *)self resolvedCompatibilityVersion]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDModeConfiguration hasSecureData](self, "hasSecureData")}];
  [(DNDModeConfiguration *)self lastModifiedByVersion];
  v8 = DNDStringFromOperatingSystemVersion(v20);
  v9 = [(DNDModeConfiguration *)self lastModifiedByDeviceID];
  v10 = [v17 stringWithFormat:@"<%@: %p mode: %@; configuration: %@; triggers: %@; impactsAvailability: %@; dimsLockScreen: %@; created: %@; lastModified: %@; automaticallyGenerated: %@; compatibilityVersion: %@; resolvedCompatibilityVersion: %@; hasSecureData: %@; modFrameworkVersion: %@; modDeviceID: %@>", v16, self, v15, v19, v18, v13, v14, v12, v3, v4, v5, v6, v7, v8, v9];;

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDModeConfiguration *)self mode];
  v6 = DNDEnabledSettingToString([(DNDModeConfiguration *)self impactsAvailability]);
  v7 = DNDEnabledSettingToString([(DNDModeConfiguration *)self dimsLockScreen]);
  v8 = [v3 stringWithFormat:@"<%@: %p mode: %@; impactsAvailability: %@; dimsLockScreen: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableModeConfiguration allocWithZone:a3];

  return [(DNDModeConfiguration *)v4 _initWithModeConfiguration:self];
}

- (DNDModeConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v6 forKey:@"triggers"];

  v7 = 0;
  if ([v3 containsValueForKey:@"impactsAvailability"])
  {
    v7 = [v3 decodeIntegerForKey:@"impactsAvailability"];
  }

  if ([v3 containsValueForKey:@"dimsLockScreen"])
  {
    v17 = [v3 decodeIntegerForKey:@"dimsLockScreen"];
  }

  else
  {
    v17 = 0;
  }

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"created"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedByVersion"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedByDeviceID"];
  v12 = [v3 decodeBoolForKey:@"automaticallyGenerated"];
  v13 = [v3 decodeIntegerForKey:@"compatibilityVersion"];
  DNDOperatingSystemVersionFromString(v10, v22);
  LOBYTE(v16) = v12;
  v14 = [(DNDModeConfiguration *)self initWithMode:v21 configuration:v19 triggers:v18 impactsAvailability:v7 dimsLockScreen:v17 created:v8 lastModified:v9 automaticallyGenerated:v16 compatibilityVersion:v13 lastModifiedByVersion:v22 lastModifiedByDeviceID:v11];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDModeConfiguration *)self mode];
  [v4 encodeObject:v5 forKey:@"mode"];

  v6 = [(DNDModeConfiguration *)self configuration];
  [v4 encodeObject:v6 forKey:@"configuration"];

  v7 = [(DNDModeConfiguration *)self triggers];
  [v4 encodeObject:v7 forKey:@"triggers"];

  [v4 encodeInteger:-[DNDModeConfiguration impactsAvailability](self forKey:{"impactsAvailability"), @"impactsAvailability"}];
  [v4 encodeInteger:-[DNDModeConfiguration dimsLockScreen](self forKey:{"dimsLockScreen"), @"dimsLockScreen"}];
  v8 = [(DNDModeConfiguration *)self created];
  [v4 encodeObject:v8 forKey:@"created"];

  v9 = [(DNDModeConfiguration *)self lastModified];
  [v4 encodeObject:v9 forKey:@"lastModified"];

  [(DNDModeConfiguration *)self lastModifiedByVersion];
  v10 = DNDStringFromOperatingSystemVersion(v12);
  [v4 encodeObject:v10 forKey:@"lastModifiedByVersion"];

  v11 = [(DNDModeConfiguration *)self lastModifiedByDeviceID];
  [v4 encodeObject:v11 forKey:@"lastModifiedByDeviceID"];

  [v4 encodeBool:-[DNDModeConfiguration isAutomaticallyGenerated](self forKey:{"isAutomaticallyGenerated"), @"automaticallyGenerated"}];
  [v4 encodeInteger:-[DNDModeConfiguration compatibilityVersion](self forKey:{"compatibilityVersion"), @"compatibilityVersion"}];
}

- (void)diffAgainstObject:(id)a3 usingDiffBuilder:(id)a4 withDescription:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = [(DNDModeConfiguration *)self mode];
    v11 = [v9 mode];
    [v8 diffObject:v10 againstObject:v11 withDescription:@"mode"];

    v12 = [(DNDModeConfiguration *)self configuration];
    v13 = [v9 configuration];
    [v8 diffObject:v12 againstObject:v13 withDescription:@"configuration"];

    v14 = [(DNDModeConfiguration *)self triggers];
    v15 = [v9 triggers];
    [v8 diffObject:v14 againstObject:v15 withDescription:@"triggers"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDModeConfiguration impactsAvailability](self, "impactsAvailability")}];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "impactsAvailability")}];
    [v8 diffObject:v16 againstObject:v17 withDescription:@"impactsAvailability"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDModeConfiguration dimsLockScreen](self, "dimsLockScreen")}];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "dimsLockScreen")}];
    [v8 diffObject:v18 againstObject:v19 withDescription:@"dimsLockScreen"];

    v20 = [(DNDModeConfiguration *)self created];
    v21 = [v9 created];
    [v8 diffObject:v20 againstObject:v21 withDescription:@"created"];

    v22 = [(DNDModeConfiguration *)self lastModified];
    v23 = [v9 lastModified];
    [v8 diffObject:v22 againstObject:v23 withDescription:@"lastModified"];

    [(DNDModeConfiguration *)self lastModifiedByVersion];
    v24 = DNDStringFromOperatingSystemVersion(v32);
    if (v9)
    {
      [v9 lastModifiedByVersion];
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    v25 = DNDStringFromOperatingSystemVersion(v32);
    [v8 diffObject:v24 againstObject:v25 withDescription:@"lastModifiedByVersion"];

    v26 = [(DNDModeConfiguration *)self lastModifiedByDeviceID];
    v27 = [v9 lastModifiedByDeviceID];
    [v8 diffObject:v26 againstObject:v27 withDescription:@"lastModifiedByDeviceID"];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDModeConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isAutomaticallyGenerated")}];
    [v8 diffObject:v28 againstObject:v29 withDescription:@"isAutomaticallyGenerated"];

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDModeConfiguration compatibilityVersion](self, "compatibilityVersion")}];
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "compatibilityVersion")}];
    [v8 diffObject:v30 againstObject:v31 withDescription:@"compatibilityVersion"];
  }
}

- (BOOL)_containsSecureTriggers:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasSecureData])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int64_t)_maxTriggerCompatibilityVersion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) compatibilityVersion];
        if (v4 <= v9)
        {
          v4 = v9;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

@end