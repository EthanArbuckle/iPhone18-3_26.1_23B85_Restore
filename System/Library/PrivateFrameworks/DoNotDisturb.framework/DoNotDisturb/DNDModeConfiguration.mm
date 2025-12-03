@interface DNDModeConfiguration
+ (id)defaultModeConfiguration;
+ (id)defaultReduceInterruptionsMode;
- (BOOL)_containsSecureTriggers:(id)triggers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupportedConfiguration;
- (DNDModeConfiguration)initWithCoder:(id)coder;
- (DNDModeConfiguration)initWithMode:(id)mode configuration:(id)configuration triggers:(id)triggers;
- (DNDModeConfiguration)initWithMode:(id)mode configuration:(id)configuration triggers:(id)triggers impactsAvailability:(unint64_t)availability dimsLockScreen:(unint64_t)screen created:(id)created lastModified:(id)modified automaticallyGenerated:(BOOL)self0 compatibilityVersion:(int64_t)self1 lastModifiedByVersion:(id *)self2 lastModifiedByDeviceID:(id)self3;
- (NSString)description;
- (id)_initWithModeConfiguration:(id)configuration;
- (id)mergeDecision:(id)decision reason:(id)reason;
- (id)mergeWithRemoteModeConfiguration:(id)configuration;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (int64_t)_maxTriggerCompatibilityVersion:(id)version;
- (int64_t)compatibilityVersion;
- (int64_t)rawResolvedCompatibilityVersion;
- (int64_t)resolvedCompatibilityVersion;
- (unint64_t)allowSmartEntry;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)log:(id)log withMessage:(id)message;
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
  phoneCallBypassSettings = [v3 phoneCallBypassSettings];
  v5 = [phoneCallBypassSettings mutableCopy];

  [v5 setImmediateBypassEventSourceType:1];
  [v3 setPhoneCallBypassSettings:v5];
  v6 = [DNDMutableModeConfiguration alloc];
  v7 = [(DNDModeConfiguration *)v6 initWithMode:v2 configuration:v3 triggers:MEMORY[0x277CBEBF8]];
  [(DNDMutableModeConfiguration *)v7 setAutomaticallyGenerated:1];

  return v7;
}

- (DNDModeConfiguration)initWithMode:(id)mode configuration:(id)configuration triggers:(id)triggers
{
  v8 = MEMORY[0x277CBEAA8];
  triggersCopy = triggers;
  configurationCopy = configuration;
  modeCopy = mode;
  date = [v8 date];
  v16 = DNDOperatingSystemVersionNotSet;
  v17 = -1;
  LOBYTE(v15) = 0;
  v13 = [(DNDModeConfiguration *)self initWithMode:modeCopy configuration:configurationCopy triggers:triggersCopy impactsAvailability:0 dimsLockScreen:0 created:date lastModified:date automaticallyGenerated:v15 compatibilityVersion:2 lastModifiedByVersion:&v16 lastModifiedByDeviceID:0];

  return v13;
}

- (DNDModeConfiguration)initWithMode:(id)mode configuration:(id)configuration triggers:(id)triggers impactsAvailability:(unint64_t)availability dimsLockScreen:(unint64_t)screen created:(id)created lastModified:(id)modified automaticallyGenerated:(BOOL)self0 compatibilityVersion:(int64_t)self1 lastModifiedByVersion:(id *)self2 lastModifiedByDeviceID:(id)self3
{
  modeCopy = mode;
  configurationCopy = configuration;
  triggersCopy = triggers;
  createdCopy = created;
  modifiedCopy = modified;
  dCopy = d;
  v41.receiver = self;
  v41.super_class = DNDModeConfiguration;
  v25 = [(DNDModeConfiguration *)&v41 init];
  if (v25)
  {
    v26 = [modeCopy copy];
    mode = v25->_mode;
    v25->_mode = v26;

    v28 = [configurationCopy copy];
    configuration = v25->_configuration;
    v25->_configuration = v28;

    v30 = [triggersCopy copy];
    triggers = v25->_triggers;
    v25->_triggers = v30;

    v25->_impactsAvailability = availability;
    v25->_dimsLockScreen = screen;
    v32 = [createdCopy copy];
    created = v25->_created;
    v25->_created = v32;

    v34 = [modifiedCopy copy];
    lastModified = v25->_lastModified;
    v25->_lastModified = v34;

    v25->_automaticallyGenerated = generated;
    v25->_compatibilityVersion = version;
    v36 = *&byVersion->var0;
    v25->_lastModifiedByVersion.patchVersion = byVersion->var2;
    *&v25->_lastModifiedByVersion.majorVersion = v36;
    v37 = [dCopy copy];
    lastModifiedByDeviceID = v25->_lastModifiedByDeviceID;
    v25->_lastModifiedByDeviceID = v37;

    if ([configurationCopy hasSecureData])
    {
      v39 = 1;
    }

    else
    {
      v39 = [(DNDModeConfiguration *)v25 _containsSecureTriggers:triggersCopy];
    }

    v25->_hasSecureData = v39;
  }

  return v25;
}

- (id)_initWithModeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  configuration = [configurationCopy configuration];
  triggers = [configurationCopy triggers];
  impactsAvailability = [configurationCopy impactsAvailability];
  dimsLockScreen = [configurationCopy dimsLockScreen];
  created = [configurationCopy created];
  lastModified = [configurationCopy lastModified];
  isAutomaticallyGenerated = [configurationCopy isAutomaticallyGenerated];
  compatibilityVersion = [configurationCopy compatibilityVersion];
  if (configurationCopy)
  {
    [configurationCopy lastModifiedByVersion];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  lastModifiedByDeviceID = [configurationCopy lastModifiedByDeviceID];
  LOBYTE(v15) = isAutomaticallyGenerated;
  v13 = [(DNDModeConfiguration *)self initWithMode:mode configuration:configuration triggers:triggers impactsAvailability:impactsAvailability dimsLockScreen:dimsLockScreen created:created lastModified:lastModified automaticallyGenerated:v15 compatibilityVersion:compatibilityVersion lastModifiedByVersion:v18 lastModifiedByDeviceID:lastModifiedByDeviceID];

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

- (id)mergeDecision:(id)decision reason:(id)reason
{
  v15 = *MEMORY[0x277D85DE8];
  decisionCopy = decision;
  reasonCopy = reason;
  v8 = DNDLogModeConfiguration;
  v9 = os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT);
  if (decisionCopy == self)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v13 = 138543362;
    v14 = reasonCopy;
    v10 = "Merge decision: self; reason: %{public}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v13 = 138543362;
    v14 = reasonCopy;
    v10 = "Merge decision: other; reason: %{public}@";
  }

  _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return decisionCopy;
}

- (id)mergeWithRemoteModeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    visibility = [(DNDMode *)self->_mode visibility];
    mode = [(DNDModeConfiguration *)configurationCopy mode];
    visibility2 = [mode visibility];

    automaticallyGenerated = self->_automaticallyGenerated;
    v9 = configurationCopy->_automaticallyGenerated;
    if (automaticallyGenerated != v9)
    {
      if (visibility == visibility2)
      {
        if (!visibility)
        {
          v10 = @"automaticallyGenerated";
          if (!self->_automaticallyGenerated)
          {
            goto LABEL_31;
          }

LABEL_29:
          selfCopy2 = self;
          selfCopy3 = configurationCopy;
          goto LABEL_32;
        }
      }

      else
      {
        if (!visibility && (automaticallyGenerated & 1) == 0)
        {
          v10 = @"visibility";
          goto LABEL_31;
        }

        if (!visibility2 && (v9 & 1) == 0)
        {
          v10 = @"visibility";
          goto LABEL_29;
        }
      }
    }

    if (visibility != visibility2)
    {
      goto LABEL_38;
    }

    resolvedCompatibilityVersion = [(DNDModeConfiguration *)self resolvedCompatibilityVersion];
    rawResolvedCompatibilityVersion = [(DNDModeConfiguration *)configurationCopy rawResolvedCompatibilityVersion];
    if (resolvedCompatibilityVersion == rawResolvedCompatibilityVersion)
    {
      goto LABEL_38;
    }

    if (resolvedCompatibilityVersion < 3 && rawResolvedCompatibilityVersion > 3)
    {
      v10 = @"compatibilityVersion";
      goto LABEL_29;
    }

    if (rawResolvedCompatibilityVersion >= 3 || resolvedCompatibilityVersion <= 3)
    {
LABEL_38:
      if ([(NSDate *)configurationCopy->_lastModified isEqualToDate:self->_lastModified])
      {
        v10 = @"lastModified same";
        goto LABEL_29;
      }

      lastModified = self->_lastModified;
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      LODWORD(lastModified) = [(NSDate *)lastModified isEqualToDate:distantPast];

      if (lastModified)
      {
        v10 = @"lastModified distantPast";
      }

      else
      {
        v16 = [(NSDate *)configurationCopy->_lastModified laterDate:self->_lastModified];
        v17 = [v16 isEqualToDate:configurationCopy->_lastModified];

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
  selfCopy2 = self;
  selfCopy3 = self;
LABEL_32:
  v20 = [(DNDModeConfiguration *)selfCopy2 mergeDecision:selfCopy3 reason:v10];

  return v20;
}

- (BOOL)isSupportedConfiguration
{
  mode = [(DNDModeConfiguration *)self mode];
  isPlaceholder = [mode isPlaceholder];

  if (isPlaceholder)
  {
    return 1;
  }

  resolvedCompatibilityVersion = [(DNDModeConfiguration *)self resolvedCompatibilityVersion];
  return resolvedCompatibilityVersion < 21 && resolvedCompatibilityVersion >= 2;
}

- (int64_t)resolvedCompatibilityVersion
{
  compatibilityVersion = [(DNDModeConfiguration *)self compatibilityVersion];
  if (compatibilityVersion >= 2)
  {
    v4 = compatibilityVersion;
  }

  else
  {
    v4 = 2;
  }

  configuration = [(DNDModeConfiguration *)self configuration];
  compatibilityVersion2 = [configuration compatibilityVersion];

  if (v4 > compatibilityVersion2)
  {
    compatibilityVersion2 = v4;
  }

  triggers = [(DNDModeConfiguration *)self triggers];
  v8 = [(DNDModeConfiguration *)self _maxTriggerCompatibilityVersion:triggers];

  if (compatibilityVersion2 <= v8)
  {
    return v8;
  }

  else
  {
    return compatibilityVersion2;
  }
}

- (int64_t)rawResolvedCompatibilityVersion
{
  compatibilityVersion = [(DNDModeConfiguration *)self compatibilityVersion];
  if (compatibilityVersion >= 2)
  {
    v4 = compatibilityVersion;
  }

  else
  {
    v4 = 2;
  }

  configuration = [(DNDModeConfiguration *)self configuration];
  rawCompatibilityVersion = [configuration rawCompatibilityVersion];

  if (v4 > rawCompatibilityVersion)
  {
    rawCompatibilityVersion = v4;
  }

  triggers = [(DNDModeConfiguration *)self triggers];
  v8 = [(DNDModeConfiguration *)self _maxTriggerCompatibilityVersion:triggers];

  if (rawCompatibilityVersion <= v8)
  {
    return v8;
  }

  else
  {
    return rawCompatibilityVersion;
  }
}

- (int64_t)compatibilityVersion
{
  compatibilityVersion = self->_compatibilityVersion;
  if (compatibilityVersion <= 20)
  {
    mode = [(DNDModeConfiguration *)self mode];
    semanticType = [mode semanticType];

    if (semanticType == 9)
    {
      return 20;
    }
  }

  return compatibilityVersion;
}

- (void)log:(id)log withMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  logCopy = log;
  messageCopy = message;
  mode = [(DNDModeConfiguration *)self mode];
  modeIdentifier = [mode modeIdentifier];

  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = modeIdentifier;
    v23 = 2114;
    v24 = messageCopy;
    _os_log_impl(&dword_22002F000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin: %{public}@", &v21, 0x16u);
  }

  v10 = logCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(DNDModeConfiguration *)self shortDescription];
    v21 = 138543618;
    v22 = modeIdentifier;
    v23 = 2114;
    v24 = shortDescription;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@", &v21, 0x16u);
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    created = [(DNDModeConfiguration *)self created];
    lastModified = [(DNDModeConfiguration *)self lastModified];
    isAutomaticallyGenerated = [(DNDModeConfiguration *)self isAutomaticallyGenerated];
    hasSecureData = [(DNDModeConfiguration *)self hasSecureData];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDModeConfiguration compatibilityVersion](self, "compatibilityVersion")}];
    v21 = 138544642;
    v22 = modeIdentifier;
    v23 = 2114;
    v24 = created;
    v25 = 2114;
    v26 = lastModified;
    v27 = 1026;
    v28 = isAutomaticallyGenerated;
    v29 = 1026;
    v30 = hasSecureData;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_22002F000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] created: %{public}@; lastModified: %{public}@; isAutomaticallyGenerated: %{public}d; hasSecureData: %{public}d; compatibilityVersion: %{public}@; ", &v21, 0x36u);
  }

  v18 = v12;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    triggers = [(DNDModeConfiguration *)self triggers];
    v21 = 138543619;
    v22 = modeIdentifier;
    v23 = 2113;
    v24 = triggers;
    _os_log_impl(&dword_22002F000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] triggers: %{private}@", &v21, 0x16u);
  }

  [(DNDConfiguration *)self->_configuration log:v18 withPrefix:modeIdentifier];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = modeIdentifier;
    _os_log_impl(&dword_22002F000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] End", &v21, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  mode = [(DNDModeConfiguration *)self mode];
  v4 = [mode hash];
  configuration = [(DNDModeConfiguration *)self configuration];
  v6 = [configuration hash] ^ v4;
  triggers = [(DNDModeConfiguration *)self triggers];
  v8 = [triggers hash];
  v9 = v6 ^ v8 ^ [(DNDModeConfiguration *)self impactsAvailability];
  dimsLockScreen = [(DNDModeConfiguration *)self dimsLockScreen];
  created = [(DNDModeConfiguration *)self created];
  v12 = dimsLockScreen ^ [created hash];
  lastModified = [(DNDModeConfiguration *)self lastModified];
  v14 = v9 ^ v12 ^ [lastModified hash];
  isAutomaticallyGenerated = [(DNDModeConfiguration *)self isAutomaticallyGenerated];
  v16 = isAutomaticallyGenerated ^ [(DNDModeConfiguration *)self compatibilityVersion];
  v17 = v16 ^ [(DNDModeConfiguration *)self hasSecureData];

  return v14 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      created = [(DNDModeConfiguration *)self created];
      created2 = [(DNDModeConfiguration *)v6 created];
      if (created != created2)
      {
        created3 = [(DNDModeConfiguration *)self created];
        if (!created3)
        {
          LOBYTE(v11) = 0;
          goto LABEL_61;
        }

        created4 = [(DNDModeConfiguration *)v6 created];
        if (!created4)
        {
          LOBYTE(v11) = 0;
LABEL_60:

          goto LABEL_61;
        }

        created5 = [(DNDModeConfiguration *)self created];
        created6 = [(DNDModeConfiguration *)v6 created];
        if (![created5 isEqual:created6])
        {
          LOBYTE(v11) = 0;
LABEL_59:

          goto LABEL_60;
        }

        v61 = created6;
        v62 = created5;
      }

      lastModified = [(DNDModeConfiguration *)self lastModified];
      lastModified2 = [(DNDModeConfiguration *)v6 lastModified];
      if (lastModified != lastModified2)
      {
        lastModified3 = [(DNDModeConfiguration *)self lastModified];
        if (!lastModified3)
        {
          goto LABEL_57;
        }

        v14 = lastModified3;
        lastModified4 = [(DNDModeConfiguration *)v6 lastModified];
        if (lastModified4)
        {
          v59 = lastModified4;
          lastModified5 = [(DNDModeConfiguration *)self lastModified];
          lastModified6 = [(DNDModeConfiguration *)v6 lastModified];
          if ([lastModified5 isEqual:lastModified6])
          {
            v55 = lastModified6;
            v56 = v14;
            v57 = lastModified5;
            goto LABEL_16;
          }
        }

        goto LABEL_57;
      }

LABEL_16:
      mode = [(DNDModeConfiguration *)self mode];
      mode2 = [(DNDModeConfiguration *)v6 mode];
      v60 = mode;
      if (mode == mode2)
      {
LABEL_23:
        configuration = [(DNDModeConfiguration *)self configuration];
        configuration2 = [(DNDModeConfiguration *)v6 configuration];
        if (configuration == configuration2)
        {
          goto LABEL_31;
        }

        configuration3 = [(DNDModeConfiguration *)self configuration];
        if (configuration3)
        {
          v51 = configuration3;
          configuration4 = [(DNDModeConfiguration *)v6 configuration];
          if (configuration4)
          {
            v48 = configuration4;
            configuration5 = [(DNDModeConfiguration *)self configuration];
            configuration6 = [(DNDModeConfiguration *)v6 configuration];
            if ([configuration5 isEqual:configuration6])
            {
              v44 = configuration5;
LABEL_31:
              triggers = [(DNDModeConfiguration *)self triggers];
              triggers2 = [(DNDModeConfiguration *)v6 triggers];
              if (triggers == triggers2)
              {
                v46 = configuration;
                v47 = configuration6;
                v34 = v54;
              }

              else
              {
                triggers3 = [(DNDModeConfiguration *)self triggers];
                if (!triggers3)
                {

                  LOBYTE(v11) = 0;
LABEL_75:
                  if (configuration != configuration2)
                  {
                  }

                  if (v60 != mode2)
                  {
                  }

                  goto LABEL_79;
                }

                v45 = triggers3;
                triggers4 = [(DNDModeConfiguration *)v6 triggers];
                if (!triggers4)
                {
                  LOBYTE(v11) = 0;
LABEL_74:

                  goto LABEL_75;
                }

                v47 = configuration6;
                v43 = triggers4;
                triggers5 = [(DNDModeConfiguration *)self triggers];
                triggers6 = [(DNDModeConfiguration *)v6 triggers];
                v42 = triggers5;
                if (![triggers5 isEqual:?])
                {
                  LOBYTE(v11) = 0;
                  configuration6 = v47;
LABEL_73:

                  goto LABEL_74;
                }

                v46 = configuration;
                v34 = v54;
              }

              impactsAvailability = [(DNDModeConfiguration *)self impactsAvailability];
              v54 = v34;
              if (impactsAvailability != [(DNDModeConfiguration *)v6 impactsAvailability]|| (v36 = [(DNDModeConfiguration *)self dimsLockScreen], v36 != [(DNDModeConfiguration *)v6 dimsLockScreen]) || (v37 = [(DNDModeConfiguration *)self isAutomaticallyGenerated], v37 != [(DNDModeConfiguration *)v6 isAutomaticallyGenerated]) || (v38 = [(DNDModeConfiguration *)self compatibilityVersion], v38 != [(DNDModeConfiguration *)v6 compatibilityVersion]))
              {
                if (triggers != triggers2)
                {

                  LOBYTE(v11) = 0;
                  configuration = v46;
                  configuration6 = v47;
LABEL_66:
                  if (configuration != configuration2)
                  {
                  }

                  if (v60 != mode2)
                  {
                  }

LABEL_79:

                  if (lastModified != lastModified2)
                  {
                  }

LABEL_58:
                  created6 = v61;
                  created5 = v62;
                  if (created != created2)
                  {
                    goto LABEL_59;
                  }

LABEL_61:

                  goto LABEL_62;
                }

                LOBYTE(v11) = 0;
                configuration = v46;
                configuration6 = v47;
LABEL_65:

                goto LABEL_66;
              }

              hasSecureData = [(DNDModeConfiguration *)self hasSecureData];
              v11 = hasSecureData ^ [(DNDModeConfiguration *)v6 hasSecureData]^ 1;
              configuration = v46;
              configuration6 = v47;
              if (triggers == triggers2)
              {
                goto LABEL_65;
              }

              goto LABEL_73;
            }
          }
        }

        if (v60 != mode2)
        {
        }

        if (lastModified != lastModified2)
        {
        }

LABEL_57:

        LOBYTE(v11) = 0;
        goto LABEL_58;
      }

      mode3 = [(DNDModeConfiguration *)self mode];
      if (mode3)
      {
        v21 = mode3;
        mode4 = [(DNDModeConfiguration *)v6 mode];
        if (mode4)
        {
          v23 = mode2;
          v24 = v21;
          v53 = mode4;
          mode5 = [(DNDModeConfiguration *)self mode];
          configuration6 = [(DNDModeConfiguration *)v6 mode];
          if ([mode5 isEqual:configuration6])
          {
            v49 = mode5;
            v50 = v24;
            mode2 = v23;
            v54 = configuration6;
            goto LABEL_23;
          }

LABEL_39:
          if (lastModified != lastModified2)
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
  mode = [(DNDModeConfiguration *)self mode];
  configuration = [(DNDModeConfiguration *)self configuration];
  triggers = [(DNDModeConfiguration *)self triggers];
  v13 = DNDEnabledSettingToString([(DNDModeConfiguration *)self impactsAvailability]);
  v14 = DNDEnabledSettingToString([(DNDModeConfiguration *)self dimsLockScreen]);
  created = [(DNDModeConfiguration *)self created];
  lastModified = [(DNDModeConfiguration *)self lastModified];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDModeConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v5 = DNDCompatibilityVersionToString([(DNDModeConfiguration *)self compatibilityVersion]);
  v6 = DNDCompatibilityVersionToString([(DNDModeConfiguration *)self resolvedCompatibilityVersion]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDModeConfiguration hasSecureData](self, "hasSecureData")}];
  [(DNDModeConfiguration *)self lastModifiedByVersion];
  v8 = DNDStringFromOperatingSystemVersion(v20);
  lastModifiedByDeviceID = [(DNDModeConfiguration *)self lastModifiedByDeviceID];
  v10 = [v17 stringWithFormat:@"<%@: %p mode: %@; configuration: %@; triggers: %@; impactsAvailability: %@; dimsLockScreen: %@; created: %@; lastModified: %@; automaticallyGenerated: %@; compatibilityVersion: %@; resolvedCompatibilityVersion: %@; hasSecureData: %@; modFrameworkVersion: %@; modDeviceID: %@>", v16, self, mode, configuration, triggers, v13, v14, created, lastModified, v4, v5, v6, v7, v8, lastModifiedByDeviceID];;

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  mode = [(DNDModeConfiguration *)self mode];
  v6 = DNDEnabledSettingToString([(DNDModeConfiguration *)self impactsAvailability]);
  v7 = DNDEnabledSettingToString([(DNDModeConfiguration *)self dimsLockScreen]);
  v8 = [v3 stringWithFormat:@"<%@: %p mode: %@; impactsAvailability: %@; dimsLockScreen: %@>", v4, self, mode, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableModeConfiguration allocWithZone:zone];

  return [(DNDModeConfiguration *)v4 _initWithModeConfiguration:self];
}

- (DNDModeConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v6 forKey:@"triggers"];

  v7 = 0;
  if ([coderCopy containsValueForKey:@"impactsAvailability"])
  {
    v7 = [coderCopy decodeIntegerForKey:@"impactsAvailability"];
  }

  if ([coderCopy containsValueForKey:@"dimsLockScreen"])
  {
    v17 = [coderCopy decodeIntegerForKey:@"dimsLockScreen"];
  }

  else
  {
    v17 = 0;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"created"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedByVersion"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedByDeviceID"];
  v12 = [coderCopy decodeBoolForKey:@"automaticallyGenerated"];
  v13 = [coderCopy decodeIntegerForKey:@"compatibilityVersion"];
  DNDOperatingSystemVersionFromString(v10, v22);
  LOBYTE(v16) = v12;
  v14 = [(DNDModeConfiguration *)self initWithMode:v21 configuration:v19 triggers:v18 impactsAvailability:v7 dimsLockScreen:v17 created:v8 lastModified:v9 automaticallyGenerated:v16 compatibilityVersion:v13 lastModifiedByVersion:v22 lastModifiedByDeviceID:v11];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mode = [(DNDModeConfiguration *)self mode];
  [coderCopy encodeObject:mode forKey:@"mode"];

  configuration = [(DNDModeConfiguration *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  triggers = [(DNDModeConfiguration *)self triggers];
  [coderCopy encodeObject:triggers forKey:@"triggers"];

  [coderCopy encodeInteger:-[DNDModeConfiguration impactsAvailability](self forKey:{"impactsAvailability"), @"impactsAvailability"}];
  [coderCopy encodeInteger:-[DNDModeConfiguration dimsLockScreen](self forKey:{"dimsLockScreen"), @"dimsLockScreen"}];
  created = [(DNDModeConfiguration *)self created];
  [coderCopy encodeObject:created forKey:@"created"];

  lastModified = [(DNDModeConfiguration *)self lastModified];
  [coderCopy encodeObject:lastModified forKey:@"lastModified"];

  [(DNDModeConfiguration *)self lastModifiedByVersion];
  v10 = DNDStringFromOperatingSystemVersion(v12);
  [coderCopy encodeObject:v10 forKey:@"lastModifiedByVersion"];

  lastModifiedByDeviceID = [(DNDModeConfiguration *)self lastModifiedByDeviceID];
  [coderCopy encodeObject:lastModifiedByDeviceID forKey:@"lastModifiedByDeviceID"];

  [coderCopy encodeBool:-[DNDModeConfiguration isAutomaticallyGenerated](self forKey:{"isAutomaticallyGenerated"), @"automaticallyGenerated"}];
  [coderCopy encodeInteger:-[DNDModeConfiguration compatibilityVersion](self forKey:{"compatibilityVersion"), @"compatibilityVersion"}];
}

- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description
{
  objectCopy = object;
  builderCopy = builder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objectCopy;
    mode = [(DNDModeConfiguration *)self mode];
    mode2 = [v9 mode];
    [builderCopy diffObject:mode againstObject:mode2 withDescription:@"mode"];

    configuration = [(DNDModeConfiguration *)self configuration];
    configuration2 = [v9 configuration];
    [builderCopy diffObject:configuration againstObject:configuration2 withDescription:@"configuration"];

    triggers = [(DNDModeConfiguration *)self triggers];
    triggers2 = [v9 triggers];
    [builderCopy diffObject:triggers againstObject:triggers2 withDescription:@"triggers"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDModeConfiguration impactsAvailability](self, "impactsAvailability")}];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "impactsAvailability")}];
    [builderCopy diffObject:v16 againstObject:v17 withDescription:@"impactsAvailability"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDModeConfiguration dimsLockScreen](self, "dimsLockScreen")}];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "dimsLockScreen")}];
    [builderCopy diffObject:v18 againstObject:v19 withDescription:@"dimsLockScreen"];

    created = [(DNDModeConfiguration *)self created];
    created2 = [v9 created];
    [builderCopy diffObject:created againstObject:created2 withDescription:@"created"];

    lastModified = [(DNDModeConfiguration *)self lastModified];
    lastModified2 = [v9 lastModified];
    [builderCopy diffObject:lastModified againstObject:lastModified2 withDescription:@"lastModified"];

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
    [builderCopy diffObject:v24 againstObject:v25 withDescription:@"lastModifiedByVersion"];

    lastModifiedByDeviceID = [(DNDModeConfiguration *)self lastModifiedByDeviceID];
    lastModifiedByDeviceID2 = [v9 lastModifiedByDeviceID];
    [builderCopy diffObject:lastModifiedByDeviceID againstObject:lastModifiedByDeviceID2 withDescription:@"lastModifiedByDeviceID"];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDModeConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isAutomaticallyGenerated")}];
    [builderCopy diffObject:v28 againstObject:v29 withDescription:@"isAutomaticallyGenerated"];

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDModeConfiguration compatibilityVersion](self, "compatibilityVersion")}];
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "compatibilityVersion")}];
    [builderCopy diffObject:v30 againstObject:v31 withDescription:@"compatibilityVersion"];
  }
}

- (BOOL)_containsSecureTriggers:(id)triggers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  triggersCopy = triggers;
  v4 = [triggersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(triggersCopy);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasSecureData])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [triggersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (int64_t)_maxTriggerCompatibilityVersion:(id)version
{
  v17 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v4 = 2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [versionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(versionCopy);
        }

        compatibilityVersion = [*(*(&v12 + 1) + 8 * v8) compatibilityVersion];
        if (v4 <= compatibilityVersion)
        {
          v4 = compatibilityVersion;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [versionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

@end