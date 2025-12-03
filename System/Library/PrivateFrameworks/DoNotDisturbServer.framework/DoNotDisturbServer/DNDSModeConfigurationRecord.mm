@interface DNDSModeConfigurationRecord
+ (id)dictionaryRepresentationWithCKRecord:(id)record partitionType:(unint64_t)type;
+ (id)newWithCKRecord:(id)record currentRecord:(id)currentRecord;
+ (id)newWithDNDSIDSRecord:(id)record currentRecord:(id)currentRecord;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
+ (id)newWithDictionaryRepresentation:(id)representation partitionedDictionaryRepresentation:(id)dictionaryRepresentation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)populateDNDSIDSRecord:(id)record;
- (BOOL)wasLastModifiedByThisDevice;
- (NSString)description;
- (id)_initWithMode:(id)mode configuration:(id)configuration secureConfiguration:(id)secureConfiguration triggers:(id)triggers impactsAvailability:(unint64_t)availability dimsLockScreen:(unint64_t)screen created:(id)created lastModified:(id)self0 lastModifiedByVersion:(id *)self1 lastModifiedByDeviceID:(id)self2 automaticallyGenerated:(BOOL)self3 compatibilityVersion:(int64_t)self4 ephemeralResolvedCompatibilityVersion:(int64_t)self5 hasSecureData:(BOOL)self6;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (int64_t)populateCKRecord:(id)record lastChanceRecord:(id)chanceRecord;
- (unint64_t)hash;
- (void)log:(id)log withMessage:(id)message;
@end

@implementation DNDSModeConfigurationRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  mode = [recordCopy mode];
  configuration = [recordCopy configuration];
  secureConfiguration = [recordCopy secureConfiguration];
  triggers = [recordCopy triggers];
  impactsAvailability = [recordCopy impactsAvailability];
  dimsLockScreen = [recordCopy dimsLockScreen];
  created = [recordCopy created];
  lastModified = [recordCopy lastModified];
  if (recordCopy)
  {
    [recordCopy lastModifiedByVersion];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  lastModifiedByDeviceID = [recordCopy lastModifiedByDeviceID];
  isAutomaticallyGenerated = [recordCopy isAutomaticallyGenerated];
  compatibilityVersion = [recordCopy compatibilityVersion];
  ephemeralResolvedCompatibilityVersion = [recordCopy ephemeralResolvedCompatibilityVersion];
  LOBYTE(v16) = [recordCopy hasSecureData];
  LOBYTE(v15) = isAutomaticallyGenerated;
  v13 = [(DNDSModeConfigurationRecord *)self _initWithMode:mode configuration:configuration secureConfiguration:secureConfiguration triggers:triggers impactsAvailability:impactsAvailability dimsLockScreen:dimsLockScreen created:created lastModified:lastModified lastModifiedByVersion:v21 lastModifiedByDeviceID:lastModifiedByDeviceID automaticallyGenerated:v15 compatibilityVersion:compatibilityVersion ephemeralResolvedCompatibilityVersion:ephemeralResolvedCompatibilityVersion hasSecureData:v16];

  return v13;
}

- (id)_initWithMode:(id)mode configuration:(id)configuration secureConfiguration:(id)secureConfiguration triggers:(id)triggers impactsAvailability:(unint64_t)availability dimsLockScreen:(unint64_t)screen created:(id)created lastModified:(id)self0 lastModifiedByVersion:(id *)self1 lastModifiedByDeviceID:(id)self2 automaticallyGenerated:(BOOL)self3 compatibilityVersion:(int64_t)self4 ephemeralResolvedCompatibilityVersion:(int64_t)self5 hasSecureData:(BOOL)self6
{
  modeCopy = mode;
  configurationCopy = configuration;
  secureConfigurationCopy = secureConfiguration;
  triggersCopy = triggers;
  createdCopy = created;
  modifiedCopy = modified;
  dCopy = d;
  v46.receiver = self;
  v46.super_class = DNDSModeConfigurationRecord;
  v28 = [(DNDSModeConfigurationRecord *)&v46 init];
  if (v28)
  {
    v29 = [modeCopy copy];
    v30 = *(v28 + 1);
    *(v28 + 1) = v29;

    v31 = [configurationCopy copy];
    v32 = *(v28 + 2);
    *(v28 + 2) = v31;

    v33 = [secureConfigurationCopy copy];
    v34 = *(v28 + 3);
    *(v28 + 3) = v33;

    v35 = [triggersCopy copy];
    v36 = *(v28 + 4);
    *(v28 + 4) = v35;

    *(v28 + 5) = availability;
    *(v28 + 6) = screen;
    v37 = [createdCopy copy];
    v38 = *(v28 + 7);
    *(v28 + 7) = v37;

    v39 = [modifiedCopy copy];
    v40 = *(v28 + 8);
    *(v28 + 8) = v39;

    v41 = *&version->var0;
    *(v28 + 11) = version->var2;
    *(v28 + 72) = v41;
    v42 = [dCopy copy];
    v43 = *(v28 + 12);
    *(v28 + 12) = v42;

    v28[104] = generated;
    *(v28 + 14) = compatibilityVersion;
    *(v28 + 15) = resolvedCompatibilityVersion;
    v28[105] = data;
  }

  return v28;
}

- (void)log:(id)log withMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  logCopy = log;
  messageCopy = message;
  mode = [(DNDSModeConfigurationRecord *)self mode];
  modeIdentifier = [mode modeIdentifier];

  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543618;
    v27 = modeIdentifier;
    v28 = 2114;
    v29 = messageCopy;
    _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin: %{public}@", &v26, 0x16u);
  }

  v10 = logCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(DNDSModeConfigurationRecord *)self shortDescription];
    v26 = 138543618;
    v27 = modeIdentifier;
    v28 = 2114;
    v29 = shortDescription;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@", &v26, 0x16u);
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    created = [(DNDSModeConfigurationRecord *)self created];
    lastModified = [(DNDSModeConfigurationRecord *)self lastModified];
    [(DNDSModeConfigurationRecord *)self lastModifiedByVersion];
    v15 = DNDStringFromOperatingSystemVersion();
    lastModifiedByDeviceID = [(DNDSModeConfigurationRecord *)self lastModifiedByDeviceID];
    isAutomaticallyGenerated = [(DNDSModeConfigurationRecord *)self isAutomaticallyGenerated];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDSModeConfigurationRecord compatibilityVersion](self, "compatibilityVersion")}];
    hasSecureData = [(DNDSModeConfigurationRecord *)self hasSecureData];
    v26 = 138545154;
    v27 = modeIdentifier;
    v28 = 2114;
    v29 = created;
    v30 = 2114;
    v31 = lastModified;
    v32 = 2114;
    v33 = v15;
    v34 = 2112;
    v35 = lastModifiedByDeviceID;
    v36 = 1026;
    v37 = isAutomaticallyGenerated;
    v38 = 2114;
    v39 = v18;
    v40 = 1026;
    v41 = hasSecureData;
    _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] created: %{public}@; lastModified: %{public}@; lastModifiedByVersion: %{public}@; lastModifiedByDeviceID: %@; isAutomaticallyGenerated: %{public}d; compatibilityVersion: %{public}@; hasSecureData: %{public}d; ", &v26, 0x4Au);
  }

  v20 = v12;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    triggers = [(DNDSModeConfigurationRecord *)self triggers];
    v26 = 138543619;
    v27 = modeIdentifier;
    v28 = 2113;
    v29 = triggers;
    _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] triggers: %{private}@", &v26, 0x16u);
  }

  v22 = v20;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(DNDSModeConfigurationRecord *)self configuration];
    v26 = 138543619;
    v27 = modeIdentifier;
    v28 = 2113;
    v29 = configuration;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] configuration: %{private}@", &v26, 0x16u);
  }

  secureConfiguration = [(DNDSModeConfigurationRecord *)self secureConfiguration];
  [secureConfiguration log:v22 withPrefix:modeIdentifier];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543362;
    v27 = modeIdentifier;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] End", &v26, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(DNDSModeRecord *)self->_mode hash];
  v4 = [(DNDSConfigurationRecord *)self->_configuration hash]^ v3;
  v5 = [(DNDSConfigurationSecureRecord *)self->_secureConfiguration hash];
  v6 = v4 ^ v5 ^ [(DNDSModeConfigurationTriggersRecord *)self->_triggers hash];
  v7 = self->_impactsAvailability ^ self->_dimsLockScreen;
  v8 = v7 ^ [(NSDate *)self->_created hash];
  v9 = v6 ^ v8 ^ [(NSDate *)self->_lastModified hash];
  return v9 ^ [(NSString *)self->_lastModifiedByDeviceID hash]^ self->_automaticallyGenerated ^ self->_compatibilityVersion ^ self->_hasSecureData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      created = [(DNDSModeConfigurationRecord *)self created];
      created2 = [(DNDSModeConfigurationRecord *)v5 created];
      if (created == created2)
      {
        goto LABEL_10;
      }

      created3 = [(DNDSModeConfigurationRecord *)self created];
      if (!created3)
      {
        goto LABEL_52;
      }

      v9 = created3;
      created4 = [(DNDSModeConfigurationRecord *)v5 created];
      if (created4)
      {
        created5 = [(DNDSModeConfigurationRecord *)self created];
        created6 = [(DNDSModeConfigurationRecord *)v5 created];
        if ([created5 isEqual:created6])
        {
          v96 = v9;
          v97 = created6;
          v98 = created5;
          v99 = created4;
LABEL_10:
          lastModified = [(DNDSModeConfigurationRecord *)self lastModified];
          lastModified2 = [(DNDSModeConfigurationRecord *)v5 lastModified];
          if (lastModified != lastModified2)
          {
            lastModified3 = [(DNDSModeConfigurationRecord *)self lastModified];
            if (!lastModified3)
            {

              goto LABEL_48;
            }

            v17 = lastModified3;
            v100 = lastModified;
            lastModified4 = [(DNDSModeConfigurationRecord *)v5 lastModified];
            if (lastModified4)
            {
              v19 = lastModified4;
              lastModified = [(DNDSModeConfigurationRecord *)self lastModified];
              lastModified5 = [(DNDSModeConfigurationRecord *)v5 lastModified];
              if ([lastModified isEqual:lastModified5])
              {
                v93 = lastModified5;
                v94 = lastModified;
                v91 = v19;
                v92 = v17;
                goto LABEL_16;
              }
            }

            goto LABEL_48;
          }

          v100 = lastModified;
LABEL_16:
          lastModifiedByDeviceID = [(DNDSModeConfigurationRecord *)self lastModifiedByDeviceID];
          lastModifiedByDeviceID2 = [(DNDSModeConfigurationRecord *)v5 lastModifiedByDeviceID];
          if (lastModifiedByDeviceID != lastModifiedByDeviceID2)
          {
            lastModifiedByDeviceID3 = [(DNDSModeConfigurationRecord *)self lastModifiedByDeviceID];
            if (!lastModifiedByDeviceID3)
            {
              goto LABEL_45;
            }

            v95 = lastModifiedByDeviceID3;
            lastModifiedByDeviceID4 = [(DNDSModeConfigurationRecord *)v5 lastModifiedByDeviceID];
            if (!lastModifiedByDeviceID4)
            {
              goto LABEL_44;
            }

            v90 = lastModifiedByDeviceID4;
            lastModifiedByDeviceID5 = [(DNDSModeConfigurationRecord *)self lastModifiedByDeviceID];
            lastModifiedByDeviceID6 = [(DNDSModeConfigurationRecord *)v5 lastModifiedByDeviceID];
            if (([lastModifiedByDeviceID5 isEqual:lastModifiedByDeviceID6] & 1) == 0)
            {

LABEL_43:
LABEL_44:

              goto LABEL_45;
            }

            v89 = lastModifiedByDeviceID5;
            lastModified = lastModifiedByDeviceID6;
          }

          [(DNDSModeConfigurationRecord *)self lastModifiedByVersion];
          if (v5)
          {
            [(DNDSModeConfigurationRecord *)v5 lastModifiedByVersion];
          }

          if (DNDOperatingSystemVersionCompare())
          {
            LOBYTE(v13) = 0;
LABEL_30:
            if (lastModifiedByDeviceID == lastModifiedByDeviceID2)
            {
LABEL_33:

              if (v100 != lastModified2)
              {
              }

              if (created == created2)
              {
                goto LABEL_53;
              }

              goto LABEL_50;
            }

LABEL_32:
            goto LABEL_33;
          }

          mode = [(DNDSModeConfigurationRecord *)self mode];
          mode2 = [(DNDSModeConfigurationRecord *)v5 mode];
          if (mode == mode2)
          {
            v87 = mode;
LABEL_56:
            configuration = [(DNDSModeConfigurationRecord *)self configuration];
            configuration2 = [(DNDSModeConfigurationRecord *)v5 configuration];
            v83 = configuration;
            v86 = lastModified;
            if (configuration == configuration2)
            {
              v39 = v84;
              goto LABEL_62;
            }

            configuration3 = [(DNDSModeConfigurationRecord *)self configuration];
            if (configuration3)
            {
              v77 = configuration3;
              configuration4 = [(DNDSModeConfigurationRecord *)v5 configuration];
              if (!configuration4)
              {

                if (v87 != mode2)
                {
                }

LABEL_87:
                if (lastModifiedByDeviceID != lastModifiedByDeviceID2)
                {
                }

                v32 = v100;
                if (v100 == lastModified2)
                {
                  goto LABEL_47;
                }

                goto LABEL_46;
              }

              v75 = configuration4;
              configuration5 = [(DNDSModeConfigurationRecord *)self configuration];
              configuration6 = [(DNDSModeConfigurationRecord *)v5 configuration];
              if ([configuration5 isEqual:configuration6])
              {
                v70 = configuration6;
                v71 = configuration5;
                v39 = v84;
LABEL_62:
                secureConfiguration = [(DNDSModeConfigurationRecord *)self secureConfiguration];
                secureConfiguration2 = [(DNDSModeConfigurationRecord *)v5 secureConfiguration];
                v79 = secureConfiguration;
                if (secureConfiguration == secureConfiguration2)
                {
                  lastModified = v86;
                  goto LABEL_79;
                }

                secureConfiguration3 = [(DNDSModeConfigurationRecord *)self secureConfiguration];
                if (secureConfiguration3)
                {
                  v72 = secureConfiguration3;
                  secureConfiguration4 = [(DNDSModeConfigurationRecord *)v5 secureConfiguration];
                  lastModified = v86;
                  if (secureConfiguration4)
                  {
                    v69 = secureConfiguration4;
                    secureConfiguration5 = [(DNDSModeConfigurationRecord *)self secureConfiguration];
                    secureConfiguration6 = [(DNDSModeConfigurationRecord *)v5 secureConfiguration];
                    v68 = secureConfiguration5;
                    v45 = secureConfiguration5;
                    v46 = secureConfiguration6;
                    if ([v45 isEqual:secureConfiguration6])
                    {
                      v63 = v46;
LABEL_79:
                      triggers = [(DNDSModeConfigurationRecord *)self triggers];
                      [(DNDSModeConfigurationRecord *)v5 triggers];
                      v74 = v73 = triggers;
                      if (triggers != v74)
                      {
                        triggers2 = [(DNDSModeConfigurationRecord *)self triggers];
                        if (!triggers2)
                        {

                          LOBYTE(v13) = 0;
LABEL_123:
                          if (v79 != secureConfiguration2)
                          {
                          }

                          if (v83 != configuration2)
                          {
                          }

                          if (v87 != mode2)
                          {
                          }

                          if (lastModifiedByDeviceID == lastModifiedByDeviceID2)
                          {
                            goto LABEL_33;
                          }

                          goto LABEL_32;
                        }

                        v64 = triggers2;
                        triggers3 = [(DNDSModeConfigurationRecord *)v5 triggers];
                        if (!triggers3)
                        {
                          LOBYTE(v13) = 0;
LABEL_122:

                          goto LABEL_123;
                        }

                        v62 = triggers3;
                        triggers4 = [(DNDSModeConfigurationRecord *)self triggers];
                        triggers5 = [(DNDSModeConfigurationRecord *)v5 triggers];
                        v61 = triggers4;
                        v55 = triggers4;
                        triggers = triggers5;
                        if (![v55 isEqual:triggers5])
                        {
                          LOBYTE(v13) = 0;
LABEL_121:

                          goto LABEL_122;
                        }
                      }

                      impactsAvailability = [(DNDSModeConfigurationRecord *)self impactsAvailability];
                      if (impactsAvailability == [(DNDSModeConfigurationRecord *)v5 impactsAvailability]&& (v66 = [(DNDSModeConfigurationRecord *)self dimsLockScreen], v66 == [(DNDSModeConfigurationRecord *)v5 dimsLockScreen]) && (v67 = [(DNDSModeConfigurationRecord *)self isAutomaticallyGenerated], v67 == [(DNDSModeConfigurationRecord *)v5 isAutomaticallyGenerated]))
                      {
                        hasSecureData = [(DNDSModeConfigurationRecord *)self hasSecureData];
                        v13 = hasSecureData ^ [(DNDSModeConfigurationRecord *)v5 hasSecureData]^ 1;
                        if (v73 != v74)
                        {
                          goto LABEL_121;
                        }
                      }

                      else
                      {
                        if (v73 != v74)
                        {

                          LOBYTE(v13) = 0;
LABEL_112:
                          v58 = secureConfiguration2;
                          if (v79 != secureConfiguration2)
                          {

                            v58 = secureConfiguration2;
                          }

                          v59 = configuration2;
                          if (v83 != configuration2)
                          {

                            v59 = configuration2;
                          }

                          if (v87 != mode2)
                          {
                          }

                          goto LABEL_30;
                        }

                        LOBYTE(v13) = 0;
                      }

                      goto LABEL_112;
                    }
                  }

                  if (v83 != configuration2)
                  {
                  }

                  v56 = v87;
                  v57 = mode2;
                }

                else
                {
                  v84 = v39;

                  v56 = v87;
                  if (v83 != configuration2)
                  {
                  }

                  v57 = mode2;
                }

                if (v56 != v57)
                {
                }

                if (lastModifiedByDeviceID == lastModifiedByDeviceID2)
                {
LABEL_45:

                  v32 = v100;
                  if (v100 == lastModified2)
                  {
LABEL_47:

LABEL_48:
                    if (created != created2)
                    {

                      LOBYTE(v13) = 0;
LABEL_50:
                      v9 = v96;
                      goto LABEL_51;
                    }

LABEL_52:
                    LOBYTE(v13) = 0;
                    goto LABEL_53;
                  }

LABEL_46:

                  goto LABEL_47;
                }

                goto LABEL_43;
              }

              v47 = v84;

              v49 = v87;
              v48 = mode2;
              if (v87 == mode2)
              {
LABEL_77:

                goto LABEL_87;
              }
            }

            else
            {
              v47 = v84;

              v49 = v87;
              v48 = mode2;
              if (v87 == mode2)
              {
                goto LABEL_77;
              }
            }

            goto LABEL_77;
          }

          mode3 = [(DNDSModeConfigurationRecord *)self mode];
          if (mode3)
          {
            v81 = mode3;
            mode4 = [(DNDSModeConfigurationRecord *)v5 mode];
            if (mode4)
            {
              v85 = lastModified;
              v87 = mode;
              v80 = mode4;
              mode5 = [(DNDSModeConfigurationRecord *)self mode];
              mode6 = [(DNDSModeConfigurationRecord *)v5 mode];
              if ([mode5 isEqual:mode6])
              {
                v84 = mode5;
                v76 = mode6;
                lastModified = v85;
                goto LABEL_56;
              }

              if (lastModifiedByDeviceID == lastModifiedByDeviceID2)
              {
LABEL_73:

                v32 = v100;
                if (v100 == lastModified2)
                {
                  goto LABEL_47;
                }

                goto LABEL_46;
              }

LABEL_72:
              goto LABEL_73;
            }
          }

          if (lastModifiedByDeviceID == lastModifiedByDeviceID2)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }
      }

      LOBYTE(v13) = 0;
LABEL_51:

LABEL_53:
      goto LABEL_54;
    }

    LOBYTE(v13) = 0;
  }

LABEL_54:

  return v13;
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  mode = [(DNDSModeConfigurationRecord *)self mode];
  configuration = [(DNDSModeConfigurationRecord *)self configuration];
  secureConfiguration = [(DNDSModeConfigurationRecord *)self secureConfiguration];
  triggers = [(DNDSModeConfigurationRecord *)self triggers];
  [(DNDSModeConfigurationRecord *)self impactsAvailability];
  v12 = DNDEnabledSettingToString();
  [(DNDSModeConfigurationRecord *)self dimsLockScreen];
  v13 = DNDEnabledSettingToString();
  created = [(DNDSModeConfigurationRecord *)self created];
  lastModified = [(DNDSModeConfigurationRecord *)self lastModified];
  [(DNDSModeConfigurationRecord *)self lastModifiedByVersion];
  v5 = DNDStringFromOperatingSystemVersion();
  lastModifiedByDeviceID = [(DNDSModeConfigurationRecord *)self lastModifiedByDeviceID];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSModeConfigurationRecord isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDSModeConfigurationRecord compatibilityVersion](self, "compatibilityVersion")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSModeConfigurationRecord hasSecureData](self, "hasSecureData")}];
  v10 = [v16 stringWithFormat:@"<%@: %p mode: %@; configuration: %@; secureConfiguration: %@; triggers: %@; impactsAvailability: %@; dimsLockScreen: %@; created: %@; lastModified: %@; lastModifiedByVersion: %@; lastModifiedByDeviceID: %@; automaticallyGenerated: %@; compatibilityVersion: %@; hasSecureData: %@>", v15, self, mode, configuration, secureConfiguration, triggers, v12, v13, created, lastModified, v5, lastModifiedByDeviceID, v7, v8, v9];;

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  mode = [(DNDSModeConfigurationRecord *)self mode];
  [(DNDSModeConfigurationRecord *)self impactsAvailability];
  v6 = DNDEnabledSettingToString();
  [(DNDSModeConfigurationRecord *)self dimsLockScreen];
  v7 = DNDEnabledSettingToString();
  v8 = [v3 stringWithFormat:@"<%@: %p mode: %@; impactsAvailability: %@; dimsLockScreen: %@>", v4, self, mode, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableModeConfigurationRecord alloc];

  return [(DNDSModeConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  currentRecord = [contextCopy currentRecord];
  selfCopy = self;
  if (currentRecord)
  {
    currentRecord2 = [contextCopy currentRecord];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      currentRecord = 0;
    }
  }

  v11 = [representationCopy bs_safeObjectForKey:@"mode" ofType:objc_opt_class()];
  mode = [currentRecord mode];
  v13 = [contextCopy copyWithCurrentRecord:mode];
  v63 = v11;
  v62 = [DNDSModeRecord newWithDictionaryRepresentation:v11 context:v13];

  v14 = [representationCopy bs_safeObjectForKey:@"configuration" ofType:objc_opt_class()];
  configuration = [currentRecord configuration];
  v16 = [contextCopy copyWithCurrentRecord:configuration];
  v59 = v14;
  v58 = [DNDSConfigurationRecord newWithDictionaryRepresentation:v14 context:v16];

  secureConfiguration = [currentRecord secureConfiguration];
  v18 = [contextCopy copyWithCurrentRecord:secureConfiguration];
  v57 = [DNDSConfigurationSecureRecord newWithDictionaryRepresentation:MEMORY[0x277CBEC10] context:v18];

  v19 = [representationCopy bs_safeObjectForKey:@"triggers" ofType:objc_opt_class()];
  triggers = [currentRecord triggers];
  v21 = [contextCopy copyWithCurrentRecord:triggers];
  v56 = v19;
  v55 = [DNDSModeConfigurationTriggersRecord newWithDictionaryRepresentation:v19 context:v21];

  v22 = [representationCopy bs_safeObjectForKey:@"impactsAvailability" ofType:objc_opt_class()];
  v54 = v22;
  if (v22)
  {
    unsignedIntegerValue = [v22 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v23 = [representationCopy bs_safeObjectForKey:@"dimsLockScreen" ofType:objc_opt_class()];
  v53 = v23;
  if (v23)
  {
    unsignedIntegerValue2 = [v23 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v24 = [representationCopy bs_safeObjectForKey:@"lastModified" ofType:objc_opt_class()];
  v25 = MEMORY[0x277CBEAA8];
  v51 = v24;
  [v24 doubleValue];
  v26 = [v25 dateWithTimeIntervalSince1970:?];
  [representationCopy bs_safeStringForKey:@"lastModifiedByVersion"];
  v68 = 0uLL;
  v69 = 0;
  v49 = v65 = contextCopy;
  if (v49)
  {
    DNDOperatingSystemVersionFromString();
  }

  else
  {
    v68 = *MEMORY[0x277D05858];
    v69 = *(MEMORY[0x277D05858] + 16);
  }

  v27 = [representationCopy bs_safeStringForKey:@"lastModifiedByDeviceID"];
  v28 = [representationCopy bs_safeObjectForKey:@"created" ofType:objc_opt_class()];
  v48 = v28;
  if (v28)
  {
    v29 = MEMORY[0x277CBEAA8];
    [v28 doubleValue];
    v30 = [v29 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v30 = v26;
  }

  v31 = v30;
  v32 = [representationCopy bs_safeObjectForKey:@"automaticallyGenerated" ofType:objc_opt_class()];
  v47 = v32;
  v33 = v26;
  if (v32)
  {
    bOOLValue = [v32 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v34 = [representationCopy bs_safeObjectForKey:@"compatibilityVersion" ofType:objc_opt_class()];
  v35 = v34;
  if (v34)
  {
    integerValue = [v34 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  v37 = [representationCopy bs_safeObjectForKey:@"resolvedCompatibilityVersion" ofType:objc_opt_class()];
  v38 = v37;
  if (v37)
  {
    integerValue2 = [v37 integerValue];
  }

  else
  {
    integerValue2 = 2;
  }

  v64 = currentRecord;
  v40 = [representationCopy bs_safeObjectForKey:@"hasSecureData" ofType:objc_opt_class()];
  v41 = v40;
  if (v40)
  {
    bOOLValue2 = [v40 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v66 = v68;
  v67 = v69;
  LOBYTE(v45) = bOOLValue2;
  LOBYTE(v44) = bOOLValue;
  v61 = [[selfCopy alloc] _initWithMode:v62 configuration:v58 secureConfiguration:v57 triggers:v55 impactsAvailability:unsignedIntegerValue dimsLockScreen:unsignedIntegerValue2 created:v31 lastModified:v33 lastModifiedByVersion:&v66 lastModifiedByDeviceID:v27 automaticallyGenerated:v44 compatibilityVersion:integerValue ephemeralResolvedCompatibilityVersion:integerValue2 hasSecureData:v45];

  return v61;
}

+ (id)newWithDictionaryRepresentation:(id)representation partitionedDictionaryRepresentation:(id)dictionaryRepresentation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  dictionaryRepresentationCopy = dictionaryRepresentation;
  currentRecord = [contextCopy currentRecord];
  selfCopy = self;
  if (currentRecord)
  {
    currentRecord2 = [contextCopy currentRecord];
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      currentRecord = 0;
    }
  }

  v14 = [representationCopy bs_safeObjectForKey:@"mode" ofType:objc_opt_class()];
  mode = [currentRecord mode];
  v16 = [contextCopy copyWithCurrentRecord:mode];
  v69 = v14;
  v68 = [DNDSModeRecord newWithDictionaryRepresentation:v14 context:v16];

  v17 = [representationCopy bs_safeObjectForKey:@"configuration" ofType:objc_opt_class()];
  configuration = [currentRecord configuration];
  v19 = [contextCopy copyWithCurrentRecord:configuration];
  v65 = v17;
  v64 = [DNDSConfigurationRecord newWithDictionaryRepresentation:v17 context:v19];

  v20 = [dictionaryRepresentationCopy bs_safeObjectForKey:@"secureConfiguration" ofType:objc_opt_class()];
  secureConfiguration = [currentRecord secureConfiguration];
  v22 = [contextCopy copyWithCurrentRecord:secureConfiguration];
  v63 = v20;
  v62 = [DNDSConfigurationSecureRecord newWithDictionaryRepresentation:v20 context:v22];

  v23 = [representationCopy bs_safeObjectForKey:@"triggers" ofType:objc_opt_class()];
  v24 = [dictionaryRepresentationCopy bs_safeObjectForKey:@"secureTriggers" ofType:objc_opt_class()];

  triggers = [currentRecord triggers];
  v26 = [contextCopy copyWithCurrentRecord:triggers];
  v60 = v24;
  v61 = v23;
  v59 = [DNDSModeConfigurationTriggersRecord newWithDictionaryRepresentation:v23 partitionedDictionaryRepresentation:v24 context:v26];

  v27 = [representationCopy bs_safeObjectForKey:@"impactsAvailability" ofType:objc_opt_class()];
  v58 = v27;
  if (v27)
  {
    unsignedIntegerValue = [v27 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v28 = [representationCopy bs_safeObjectForKey:@"dimsLockScreen" ofType:objc_opt_class()];
  v57 = v28;
  if (v28)
  {
    unsignedIntegerValue2 = [v28 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v29 = [representationCopy bs_safeObjectForKey:@"lastModified" ofType:objc_opt_class()];
  v30 = MEMORY[0x277CBEAA8];
  v55 = v29;
  [v29 doubleValue];
  v31 = [v30 dateWithTimeIntervalSince1970:?];
  [representationCopy bs_safeStringForKey:@"lastModifiedByVersion"];
  v74 = 0uLL;
  v53 = v75 = 0;
  if (v53)
  {
    DNDOperatingSystemVersionFromString();
  }

  else
  {
    v74 = *MEMORY[0x277D05858];
    v75 = *(MEMORY[0x277D05858] + 16);
  }

  v71 = contextCopy;
  v32 = [representationCopy bs_safeStringForKey:@"lastModifiedByDeviceID"];
  v33 = [representationCopy bs_safeObjectForKey:@"created" ofType:objc_opt_class()];
  v52 = v33;
  if (v33)
  {
    v34 = MEMORY[0x277CBEAA8];
    [v33 doubleValue];
    v35 = [v34 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v35 = v31;
  }

  v36 = v35;
  v37 = [representationCopy bs_safeObjectForKey:@"automaticallyGenerated" ofType:objc_opt_class()];
  v70 = currentRecord;
  v51 = v37;
  if (v37)
  {
    bOOLValue = [v37 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v38 = [representationCopy bs_safeObjectForKey:@"compatibilityVersion" ofType:objc_opt_class()];
  v39 = v38;
  if (v38)
  {
    integerValue = [v38 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  v41 = [representationCopy bs_safeObjectForKey:@"resolvedCompatibilityVersion" ofType:objc_opt_class()];
  v42 = v41;
  if (v41)
  {
    integerValue2 = [v41 integerValue];
  }

  else
  {
    integerValue2 = 2;
  }

  v44 = [representationCopy bs_safeObjectForKey:@"hasSecureData" ofType:objc_opt_class()];
  v45 = v44;
  if (v44)
  {
    bOOLValue2 = [v44 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v72 = v74;
  v73 = v75;
  LOBYTE(v49) = bOOLValue2;
  LOBYTE(v48) = bOOLValue;
  v67 = [[selfCopy alloc] _initWithMode:v68 configuration:v64 secureConfiguration:v62 triggers:v59 impactsAvailability:unsignedIntegerValue dimsLockScreen:unsignedIntegerValue2 created:v36 lastModified:v31 lastModifiedByVersion:&v72 lastModifiedByDeviceID:v32 automaticallyGenerated:v48 compatibilityVersion:integerValue ephemeralResolvedCompatibilityVersion:integerValue2 hasSecureData:v49];

  return v67;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  contextCopy = context;
  healingSource = [contextCopy healingSource];
  v6 = [healingSource mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = dictionary;

  if (([contextCopy partitionType] & 2) != 0)
  {
    [v9 setDictionaryRepresentationOfRecord:self->_secureConfiguration forKey:@"secureConfiguration" context:contextCopy];
    [v9 setDictionaryRepresentationOfRecord:self->_triggers forKey:@"secureTriggers" context:contextCopy];
    v10 = [(NSString *)self->_lastModifiedByDeviceID copy];
    [v9 setObject:v10 forKeyedSubscript:@"lastModifiedByDeviceID"];
  }

  if ([contextCopy partitionType])
  {
    [v9 setDictionaryRepresentationOfRecord:self->_mode forKey:@"mode" context:contextCopy];
    [v9 setDictionaryRepresentationOfRecord:self->_configuration forKey:@"configuration" context:contextCopy];
    [v9 setDictionaryRepresentationOfRecord:self->_triggers forKey:@"triggers" context:contextCopy];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_impactsAvailability];
    [v9 setObject:v11 forKeyedSubscript:@"impactsAvailability"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_dimsLockScreen];
    [v9 setObject:v12 forKeyedSubscript:@"dimsLockScreen"];

    v13 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_created timeIntervalSince1970];
    v14 = [v13 numberWithDouble:?];
    [v9 setObject:v14 forKeyedSubscript:@"created"];

    v15 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_lastModified timeIntervalSince1970];
    v16 = [v15 numberWithDouble:?];
    [v9 setObject:v16 forKeyedSubscript:@"lastModified"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_automaticallyGenerated];
    [v9 setObject:v17 forKeyedSubscript:@"automaticallyGenerated"];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_compatibilityVersion];
    [v9 setObject:v18 forKeyedSubscript:@"compatibilityVersion"];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_ephemeralResolvedCompatibilityVersion];
    [v9 setObject:v19 forKeyedSubscript:@"resolvedCompatibilityVersion"];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSecureData];
    [v9 setObject:v20 forKeyedSubscript:@"hasSecureData"];

    v23 = *&self->_lastModifiedByVersion.majorVersion;
    patchVersion = self->_lastModifiedByVersion.patchVersion;
    v21 = DNDStringFromOperatingSystemVersion();
    [v9 setObject:v21 forKeyedSubscript:{@"lastModifiedByVersion", v23, patchVersion}];

    [v9 setObject:self->_lastModifiedByDeviceID forKeyedSubscript:@"lastModifiedByDeviceID"];
  }

  return v9;
}

- (BOOL)wasLastModifiedByThisDevice
{
  lastModifiedByDeviceID = [(DNDSModeConfigurationRecord *)self lastModifiedByDeviceID];
  if (lastModifiedByDeviceID)
  {
    v4 = 0;
  }

  else
  {
    [(DNDSModeConfigurationRecord *)self lastModifiedByVersion];
    v6 = *MEMORY[0x277D05858];
    v7 = *(MEMORY[0x277D05858] + 16);
    v4 = DNDOperatingSystemVersionCompare() != 0;
  }

  return v4;
}

+ (id)dictionaryRepresentationWithCKRecord:(id)record partitionType:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (type == 1)
  {
    v6 = @"Main";
    v7 = kDNDSModeConfigurationsRecordMainPartitionKey;
  }

  else
  {
    if (type != 2)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v6 = @"Secondary";
    v7 = kDNDSModeConfigurationsRecordSecondaryPartitionKey;
  }

  v8 = *v7;
  encryptedValues = [recordCopy encryptedValues];
  v10 = [encryptedValues objectForKey:v8];

  if (v10)
  {
    v21 = 0;
    v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v21];
    v12 = v21;
    if (v12)
    {
      v13 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
      {
        v18 = v13;
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        *buf = 138412802;
        v23 = v6;
        v24 = 2114;
        v25 = recordName;
        v26 = 2114;
        v27 = v12;
        _os_log_error_impl(&dword_24912E000, v18, OS_LOG_TYPE_ERROR, "Failed to decode %@ partition data %{public}@: %{public}@", buf, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v15 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [(DNDSModeConfigurationRecord(CKRecord) *)v6 dictionaryRepresentationWithCKRecord:v15 partitionType:recordCopy];
    }

    v14 = 0;
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)newWithCKRecord:(id)record currentRecord:(id)currentRecord
{
  recordCopy = record;
  currentRecordCopy = currentRecord;
  v8 = [self dictionaryRepresentationWithCKRecord:recordCopy partitionType:1];
  if (v8)
  {
    v9 = [self dictionaryRepresentationWithCKRecord:recordCopy partitionType:2];
    if (v9)
    {
      v10 = objc_alloc_init(DNDSApplicationIdentifierMapper);
      v11 = objc_alloc_init(DNDSContactProvider);
      v12 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 currentRecord:currentRecordCopy redactSensitiveData:0 contactProvider:v11 applicationIdentifierMapper:v10];
      v13 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:v8 partitionedDictionaryRepresentation:v9 context:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)populateCKRecord:(id)record lastChanceRecord:(id)chanceRecord
{
  recordCopy = record;
  chanceRecordCopy = chanceRecord;
  creationDate = [chanceRecordCopy creationDate];

  created = [(DNDSModeConfigurationRecord *)self created];
  creationDate2 = [chanceRecordCopy creationDate];
  v10 = [created compare:creationDate2];

  ephemeralResolvedCompatibilityVersion = [(DNDSModeConfigurationRecord *)self ephemeralResolvedCompatibilityVersion];
  v12 = [chanceRecordCopy objectForKeyedSubscript:@"DNDSModeConfigurationsVersion"];
  integerValue = [v12 integerValue];
  if (creationDate)
  {
    v14 = v10 == 1;
  }

  else
  {
    v14 = 1;
  }

  v16 = !v14 && ephemeralResolvedCompatibilityVersion >= integerValue;

  v35 = v16;
  if (v16 == 1)
  {
    v17 = [objc_opt_class() dictionaryRepresentationWithCKRecord:chanceRecordCopy partitionType:1];
    v18 = [objc_opt_class() dictionaryRepresentationWithCKRecord:chanceRecordCopy partitionType:2];
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v20 = objc_alloc_init(DNDSContactProvider);
  v21 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:1 healingSource:v17 redactSensitiveData:0 contactProvider:v20 applicationIdentifierMapper:v19];
  v22 = [(DNDSModeConfigurationRecord *)self dictionaryRepresentationWithContext:v21];
  v36 = v18;
  v23 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:2 healingSource:v18 redactSensitiveData:0 contactProvider:v20 applicationIdentifierMapper:v19];

  v24 = [(DNDSModeConfigurationRecord *)self dictionaryRepresentationWithContext:v23];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v22] && objc_msgSend(MEMORY[0x277CCAAA0], "isValidJSONObject:", v24))
  {
    v34 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v22 options:0 error:0];
    v33 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v24 options:0 error:0];
    encryptedValues = [recordCopy encryptedValues];
    [encryptedValues setObject:v34 forKey:@"DNDSModeConfigurationsRecordMainPartition"];

    encryptedValues2 = [recordCopy encryptedValues];
    [encryptedValues2 setObject:v33 forKey:@"DNDSModeConfigurationsRecordSecondaryPartition"];

    v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDSModeConfigurationRecord ephemeralResolvedCompatibilityVersion](self, "ephemeralResolvedCompatibilityVersion")}];
    [recordCopy setObject:v27 forKeyedSubscript:@"DNDSModeConfigurationsVersion"];

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDSModeConfigurationRecord ephemeralResolvedCompatibilityVersion](self, "ephemeralResolvedCompatibilityVersion")}];
    v29 = DNDSModeConfigurationsMinimumRequiredVersionForConfigurationVersion(v28);
    [recordCopy setObject:v29 forKeyedSubscript:@"DNDSModeConfigurationsMinimumRequiredVersion"];

    if (v35)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v31 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(CKRecord) populateCKRecord:v31 lastChanceRecord:recordCopy];
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(CKRecord) populateCKRecord:lastChanceRecord:];
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(CKRecord) populateCKRecord:lastChanceRecord:];
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(CKRecord) populateCKRecord:lastChanceRecord:];
    }

    v30 = 0;
  }

  return v30;
}

+ (id)newWithDNDSIDSRecord:(id)record currentRecord:(id)currentRecord
{
  recordCopy = record;
  currentRecordCopy = currentRecord;
  v7 = [recordCopy objectForKey:@"DNDSModeConfigurationsRecordData"];
  v8 = [recordCopy objectForKey:@"DNDSModeConfigurationsRecordPartitionedData"];
  v9 = v8;
  if (!v7)
  {
    v15 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) newWithDNDSIDSRecord:v15 currentRecord:recordCopy];
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    v16 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) newWithDNDSIDSRecord:v16 currentRecord:recordCopy];
    }

LABEL_11:
    v14 = 0;
    goto LABEL_19;
  }

  v24 = 0;
  v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v24];
  v11 = v24;
  if (v11)
  {
    v12 = v11;
    v13 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) newWithDNDSIDSRecord:v13 currentRecord:recordCopy];
    }

    v14 = 0;
  }

  else
  {
    v23 = 0;
    v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v23];
    v12 = v23;
    if (v12)
    {
      v18 = DNDSLogModeConfigurations;
      if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
      {
        [DNDSModeConfigurationRecord(DNDSIDSRecord) newWithDNDSIDSRecord:v18 currentRecord:recordCopy];
      }

      v14 = 0;
    }

    else
    {
      v22 = objc_alloc_init(DNDSApplicationIdentifierMapper);
      v19 = objc_alloc_init(DNDSContactProvider);
      v20 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:3 currentRecord:currentRecordCopy redactSensitiveData:0 contactProvider:v19 applicationIdentifierMapper:v22];
      v14 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:v10 partitionedDictionaryRepresentation:v17 context:v20];
    }
  }

LABEL_19:
  return v14;
}

- (BOOL)populateDNDSIDSRecord:(id)record
{
  recordCopy = record;
  v5 = objc_alloc_init(DNDSApplicationIdentifierMapper);
  v6 = objc_alloc_init(DNDSContactProvider);
  v7 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:1 redactSensitiveData:0 contactProvider:v6 applicationIdentifierMapper:v5];
  v8 = [(DNDSModeConfigurationRecord *)self dictionaryRepresentationWithContext:v7];
  v9 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:0 partitionType:2 redactSensitiveData:0 contactProvider:v6 applicationIdentifierMapper:v5];

  v10 = [(DNDSModeConfigurationRecord *)self dictionaryRepresentationWithContext:v9];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v8] && objc_msgSend(MEMORY[0x277CCAAA0], "isValidJSONObject:", v10))
  {
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:0];
    v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
    [recordCopy setObject:v11 forKey:@"DNDSModeConfigurationsRecordData"];
    [recordCopy setObject:v12 forKey:@"DNDSModeConfigurationsRecordPartitionedData"];
    [recordCopy setObject:&unk_285C53670 forKey:@"DNDSModeConfigurationsVersion"];
    [recordCopy setObject:&unk_285C53670 forKey:@"DNDSModeConfigurationsMinimumRequiredVersion"];

    v13 = 1;
  }

  else
  {
    v14 = DNDSLogModeConfigurations;
    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [(DNDSModeConfigurationRecord(DNDSIDSRecord) *)v14 populateDNDSIDSRecord:recordCopy];
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }

    if (os_log_type_enabled(DNDSLogModeConfigurations, OS_LOG_TYPE_ERROR))
    {
      [DNDSModeConfigurationRecord(DNDSIDSRecord) populateDNDSIDSRecord:];
    }

    v13 = 0;
  }

  return v13;
}

@end