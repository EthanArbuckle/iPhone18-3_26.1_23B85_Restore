@interface DNDSConfigurationRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithApplicationConfigurationType:(id)type senderConfigurationType:(id)configurationType suppressionType:(id)suppressionType suppressionMode:(id)mode minimumBreakthroughUrgency:(id)urgency hideApplicationBadges:(id)badges allowIntelligentManagement:(id)management compatibilityVersion:(id)self0;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSConfigurationRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  applicationConfigurationType = [recordCopy applicationConfigurationType];
  senderConfigurationType = [recordCopy senderConfigurationType];
  suppressionType = [recordCopy suppressionType];
  suppressionMode = [recordCopy suppressionMode];
  minimumBreakthroughUrgency = [recordCopy minimumBreakthroughUrgency];
  hideApplicationBadges = [recordCopy hideApplicationBadges];
  allowIntelligentManagement = [recordCopy allowIntelligentManagement];
  compatibilityVersion = [recordCopy compatibilityVersion];

  v13 = [(DNDSConfigurationRecord *)self _initWithApplicationConfigurationType:applicationConfigurationType senderConfigurationType:senderConfigurationType suppressionType:suppressionType suppressionMode:suppressionMode minimumBreakthroughUrgency:minimumBreakthroughUrgency hideApplicationBadges:hideApplicationBadges allowIntelligentManagement:allowIntelligentManagement compatibilityVersion:compatibilityVersion];
  return v13;
}

- (id)_initWithApplicationConfigurationType:(id)type senderConfigurationType:(id)configurationType suppressionType:(id)suppressionType suppressionMode:(id)mode minimumBreakthroughUrgency:(id)urgency hideApplicationBadges:(id)badges allowIntelligentManagement:(id)management compatibilityVersion:(id)self0
{
  typeCopy = type;
  configurationTypeCopy = configurationType;
  suppressionTypeCopy = suppressionType;
  modeCopy = mode;
  urgencyCopy = urgency;
  badgesCopy = badges;
  managementCopy = management;
  versionCopy = version;
  v55.receiver = self;
  v55.super_class = DNDSConfigurationRecord;
  v24 = [(DNDSConfigurationRecord *)&v55 init];
  if (v24)
  {
    v54 = typeCopy;
    v25 = [typeCopy copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D058E8], "defaultConfigurationType")}];
    }

    applicationConfigurationType = v24->_applicationConfigurationType;
    v24->_applicationConfigurationType = v27;

    v29 = [configurationTypeCopy copy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D058E8], "defaultConfigurationType")}];
    }

    senderConfigurationType = v24->_senderConfigurationType;
    v24->_senderConfigurationType = v31;

    v33 = [suppressionTypeCopy copy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D058E8], "defaultSuppressionType")}];
    }

    suppressionType = v24->_suppressionType;
    v24->_suppressionType = v35;

    v37 = [modeCopy copy];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = &unk_285C53538;
    }

    objc_storeStrong(&v24->_suppressionMode, v39);

    v40 = [urgencyCopy copy];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D058E8], "defaultMinimumBreakthroughUrgency")}];
    }

    minimumBreakthroughUrgency = v24->_minimumBreakthroughUrgency;
    v24->_minimumBreakthroughUrgency = v42;

    v44 = [badgesCopy copy];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = &unk_285C53538;
    }

    objc_storeStrong(&v24->_hideApplicationBadges, v46);

    v47 = [managementCopy copy];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = &unk_285C53538;
    }

    objc_storeStrong(&v24->_allowIntelligentManagement, v49);

    v50 = [versionCopy copy];
    v51 = v50;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = &unk_285C53550;
    }

    objc_storeStrong(&v24->_compatibilityVersion, v52);

    typeCopy = v54;
  }

  return v24;
}

- (unint64_t)hash
{
  applicationConfigurationType = [(DNDSConfigurationRecord *)self applicationConfigurationType];
  v4 = [applicationConfigurationType hash];
  senderConfigurationType = [(DNDSConfigurationRecord *)self senderConfigurationType];
  v6 = [senderConfigurationType hash] ^ v4;
  minimumBreakthroughUrgency = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
  v8 = [minimumBreakthroughUrgency hash];
  suppressionType = [(DNDSConfigurationRecord *)self suppressionType];
  v10 = v6 ^ v8 ^ [suppressionType hash];
  suppressionMode = [(DNDSConfigurationRecord *)self suppressionMode];
  v12 = [suppressionMode hash];
  hideApplicationBadges = [(DNDSConfigurationRecord *)self hideApplicationBadges];
  v14 = v12 ^ [hideApplicationBadges hash];
  allowIntelligentManagement = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
  v16 = v10 ^ v14 ^ [allowIntelligentManagement hash];
  compatibilityVersion = [(DNDSConfigurationRecord *)self compatibilityVersion];
  v18 = [compatibilityVersion hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationConfigurationType = [(DNDSConfigurationRecord *)self applicationConfigurationType];
      applicationConfigurationType2 = [(DNDSConfigurationRecord *)v5 applicationConfigurationType];
      if (applicationConfigurationType != applicationConfigurationType2)
      {
        v8 = 0;
LABEL_63:

        goto LABEL_64;
      }

      senderConfigurationType = [(DNDSConfigurationRecord *)self senderConfigurationType];
      senderConfigurationType2 = [(DNDSConfigurationRecord *)v5 senderConfigurationType];
      if (senderConfigurationType != senderConfigurationType2)
      {
        v8 = 0;
LABEL_62:

        goto LABEL_63;
      }

      minimumBreakthroughUrgency = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
      minimumBreakthroughUrgency2 = [(DNDSConfigurationRecord *)v5 minimumBreakthroughUrgency];
      v81 = minimumBreakthroughUrgency;
      if (minimumBreakthroughUrgency != minimumBreakthroughUrgency2)
      {
        minimumBreakthroughUrgency3 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
        if (!minimumBreakthroughUrgency3)
        {
          v8 = 0;
          goto LABEL_61;
        }

        v14 = minimumBreakthroughUrgency3;
        minimumBreakthroughUrgency4 = [(DNDSConfigurationRecord *)v5 minimumBreakthroughUrgency];
        if (!minimumBreakthroughUrgency4)
        {
          v8 = 0;
LABEL_60:

          goto LABEL_61;
        }

        v78 = minimumBreakthroughUrgency4;
        minimumBreakthroughUrgency = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
        minimumBreakthroughUrgency5 = [(DNDSConfigurationRecord *)v5 minimumBreakthroughUrgency];
        v77 = minimumBreakthroughUrgency;
        if (![minimumBreakthroughUrgency isEqual:?])
        {
          v8 = 0;
LABEL_59:

          goto LABEL_60;
        }

        v75 = v14;
      }

      suppressionType = [(DNDSConfigurationRecord *)self suppressionType];
      suppressionType2 = [(DNDSConfigurationRecord *)v5 suppressionType];
      v80 = suppressionType;
      if (suppressionType != suppressionType2)
      {
        suppressionType3 = [(DNDSConfigurationRecord *)self suppressionType];
        if (suppressionType3)
        {
          v73 = suppressionType3;
          suppressionType4 = [(DNDSConfigurationRecord *)v5 suppressionType];
          if (suppressionType4)
          {
            v70 = suppressionType4;
            minimumBreakthroughUrgency = [(DNDSConfigurationRecord *)self suppressionType];
            suppressionType5 = [(DNDSConfigurationRecord *)v5 suppressionType];
            if ([minimumBreakthroughUrgency isEqual:suppressionType5])
            {
              v66 = suppressionType5;
              goto LABEL_20;
            }
          }
        }

LABEL_57:
        v8 = 0;
        goto LABEL_58;
      }

LABEL_20:
      suppressionMode = [(DNDSConfigurationRecord *)self suppressionMode];
      suppressionMode2 = [(DNDSConfigurationRecord *)v5 suppressionMode];
      v71 = minimumBreakthroughUrgency;
      v72 = suppressionMode;
      if (suppressionMode == suppressionMode2)
      {
        goto LABEL_27;
      }

      suppressionMode3 = [(DNDSConfigurationRecord *)self suppressionMode];
      if (suppressionMode3)
      {
        v67 = suppressionMode3;
        suppressionMode4 = [(DNDSConfigurationRecord *)v5 suppressionMode];
        if (suppressionMode4)
        {
          v65 = suppressionMode4;
          suppressionMode5 = [(DNDSConfigurationRecord *)self suppressionMode];
          suppressionMode6 = [(DNDSConfigurationRecord *)v5 suppressionMode];
          if ([suppressionMode5 isEqual:suppressionMode6])
          {
            v62 = suppressionMode6;
            v63 = suppressionMode5;
LABEL_27:
            hideApplicationBadges = [(DNDSConfigurationRecord *)self hideApplicationBadges];
            [(DNDSConfigurationRecord *)v5 hideApplicationBadges];
            v69 = v68 = hideApplicationBadges;
            if (hideApplicationBadges == v69)
            {
              goto LABEL_35;
            }

            hideApplicationBadges2 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
            if (hideApplicationBadges2)
            {
              v64 = hideApplicationBadges2;
              hideApplicationBadges3 = [(DNDSConfigurationRecord *)v5 hideApplicationBadges];
              v28 = v72;
              if (!hideApplicationBadges3)
              {

                v44 = suppressionMode2;
LABEL_51:
                if (v28 != v44)
                {
                }

                goto LABEL_54;
              }

              v59 = hideApplicationBadges3;
              hideApplicationBadges4 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
              hideApplicationBadges5 = [(DNDSConfigurationRecord *)v5 hideApplicationBadges];
              if ([hideApplicationBadges4 isEqual:hideApplicationBadges5])
              {
                v56 = hideApplicationBadges5;
                v57 = hideApplicationBadges4;
LABEL_35:
                allowIntelligentManagement = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
                allowIntelligentManagement2 = [(DNDSConfigurationRecord *)v5 allowIntelligentManagement];
                v33 = allowIntelligentManagement2;
                if (allowIntelligentManagement == allowIntelligentManagement2)
                {
                  v60 = allowIntelligentManagement;
                  v61 = allowIntelligentManagement2;
                  goto LABEL_44;
                }

                allowIntelligentManagement3 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
                if (allowIntelligentManagement3)
                {
                  v58 = allowIntelligentManagement3;
                  v60 = allowIntelligentManagement;
                  v61 = v33;
                  allowIntelligentManagement4 = [(DNDSConfigurationRecord *)v5 allowIntelligentManagement];
                  v36 = v72;
                  if (allowIntelligentManagement4)
                  {
                    v55 = allowIntelligentManagement4;
                    allowIntelligentManagement5 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
                    allowIntelligentManagement6 = [(DNDSConfigurationRecord *)v5 allowIntelligentManagement];
                    if ([allowIntelligentManagement5 isEqual:allowIntelligentManagement6])
                    {
                      v52 = allowIntelligentManagement6;
                      v53 = allowIntelligentManagement5;
LABEL_44:
                      compatibilityVersion = [(DNDSConfigurationRecord *)self compatibilityVersion];
                      compatibilityVersion2 = [(DNDSConfigurationRecord *)v5 compatibilityVersion];
                      if (compatibilityVersion == compatibilityVersion2)
                      {

                        v8 = 1;
                      }

                      else
                      {
                        v54 = compatibilityVersion2;
                        compatibilityVersion3 = [(DNDSConfigurationRecord *)self compatibilityVersion];
                        if (compatibilityVersion3)
                        {
                          v51 = compatibilityVersion3;
                          compatibilityVersion4 = [(DNDSConfigurationRecord *)v5 compatibilityVersion];
                          if (compatibilityVersion4)
                          {
                            v50 = compatibilityVersion4;
                            compatibilityVersion5 = [(DNDSConfigurationRecord *)self compatibilityVersion];
                            compatibilityVersion6 = [(DNDSConfigurationRecord *)v5 compatibilityVersion];
                            v8 = [compatibilityVersion5 isEqual:?];

                            compatibilityVersion4 = v50;
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
                      }

                      if (v60 != v61)
                      {
                      }

                      if (v68 != v69)
                      {
                      }

                      if (v72 != suppressionMode2)
                      {
                      }

                      if (v80 != suppressionType2)
                      {
                      }

LABEL_58:
                      v14 = v75;
                      if (v81 != minimumBreakthroughUrgency2)
                      {
                        goto LABEL_59;
                      }

LABEL_61:

                      goto LABEL_62;
                    }

                    allowIntelligentManagement4 = v55;
                    v36 = v72;
                  }

                  v47 = v68;
                  v48 = v69;
                  if (v68 == v69)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {

                  v47 = v68;
                  v48 = v69;
                  v36 = v72;
                  if (v68 == v69)
                  {
                    goto LABEL_71;
                  }
                }

LABEL_71:
                if (v36 != suppressionMode2)
                {
                }

                v45 = v80;
                if (v80 != suppressionType2)
                {
                }

LABEL_56:

                goto LABEL_57;
              }
            }

            v44 = suppressionMode2;
            v28 = v72;
            goto LABEL_51;
          }

LABEL_54:
          v45 = v80;
          if (v80 != suppressionType2)
          {
          }

          goto LABEL_56;
        }
      }

      goto LABEL_54;
    }

    v8 = 0;
  }

LABEL_64:

  return v8;
}

- (NSString)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  applicationConfigurationType = [(DNDSConfigurationRecord *)self applicationConfigurationType];
  [applicationConfigurationType unsignedIntegerValue];
  v15 = DNDStringFromConfigurationType();
  senderConfigurationType = [(DNDSConfigurationRecord *)self senderConfigurationType];
  [senderConfigurationType unsignedIntegerValue];
  v22 = DNDStringFromConfigurationType();
  suppressionType = [(DNDSConfigurationRecord *)self suppressionType];
  [suppressionType unsignedIntegerValue];
  v12 = DNDStringFromInterruptionSuppression();
  suppressionMode = [(DNDSConfigurationRecord *)self suppressionMode];
  [suppressionMode unsignedIntegerValue];
  v13 = DNDStringFromInterruptionSuppressionMode();
  minimumBreakthroughUrgency = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
  [minimumBreakthroughUrgency unsignedIntegerValue];
  v3 = DNDStringFromBreakthroughUrgency();
  hideApplicationBadges = [(DNDSConfigurationRecord *)self hideApplicationBadges];
  [hideApplicationBadges unsignedIntegerValue];
  v5 = DNDEnabledSettingToString();
  allowIntelligentManagement = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
  [allowIntelligentManagement unsignedIntegerValue];
  v7 = DNDEnabledSettingToString();
  compatibilityVersion = [(DNDSConfigurationRecord *)self compatibilityVersion];
  [compatibilityVersion integerValue];
  v9 = DNDCompatibilityVersionToString();
  v10 = [v18 stringWithFormat:@"<%@: %p applicationConfigurationType: %@; senderConfigurationType: %@; suppressionType: %@; suppressionMode: %@; minimumBreakthroughUrgency: %@; hideApplicationBadges: %@; allowIntelligentManagement: %@; compatibilityVersion: %@>", v17, self, v15, v22, v12, v13, v3, v5, v7, v9];;

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableConfigurationRecord alloc];

  return [(DNDSConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  v21 = [representationCopy bs_safeObjectForKey:@"applicationConfigurationType" ofType:objc_opt_class()];
  v8 = [representationCopy bs_safeObjectForKey:@"senderConfigurationType" ofType:objc_opt_class()];
  v9 = [representationCopy bs_safeObjectForKey:@"suppressionType" ofType:objc_opt_class()];
  v10 = [representationCopy bs_safeNumberForKey:@"suppressionMode"];
  currentRecord = [contextCopy currentRecord];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentRecord2 = [contextCopy currentRecord];
    suppressionMode = [currentRecord2 suppressionMode];

    v10 = suppressionMode;
  }

  v15 = [representationCopy bs_safeObjectForKey:@"minimumBreakthroughUrgency" ofType:objc_opt_class()];
  v16 = [representationCopy bs_safeNumberForKey:@"hideApplicationBadges"];
  v17 = [representationCopy bs_safeNumberForKey:@"allowIntelligentManagement"];
  v18 = [representationCopy bs_safeNumberForKey:@"compatibilityVersion"];
  v19 = [[self alloc] _initWithApplicationConfigurationType:v21 senderConfigurationType:v8 suppressionType:v9 suppressionMode:v10 minimumBreakthroughUrgency:v15 hideApplicationBadges:v16 allowIntelligentManagement:v17 compatibilityVersion:v18];

  return v19;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  healingSource = [context healingSource];
  v5 = [healingSource mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;

  applicationConfigurationType = [(DNDSConfigurationRecord *)self applicationConfigurationType];
  [v8 setObject:applicationConfigurationType forKey:@"applicationConfigurationType"];

  senderConfigurationType = [(DNDSConfigurationRecord *)self senderConfigurationType];
  [v8 setObject:senderConfigurationType forKey:@"senderConfigurationType"];

  suppressionType = [(DNDSConfigurationRecord *)self suppressionType];
  [v8 setObject:suppressionType forKey:@"suppressionType"];

  suppressionMode = [(DNDSConfigurationRecord *)self suppressionMode];
  [v8 setObject:suppressionMode forKey:@"suppressionMode"];

  minimumBreakthroughUrgency = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
  [v8 setObject:minimumBreakthroughUrgency forKey:@"minimumBreakthroughUrgency"];

  hideApplicationBadges = [(DNDSConfigurationRecord *)self hideApplicationBadges];
  [v8 setObject:hideApplicationBadges forKey:@"hideApplicationBadges"];

  allowIntelligentManagement = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
  [v8 setObject:allowIntelligentManagement forKey:@"allowIntelligentManagement"];

  compatibilityVersion = [(DNDSConfigurationRecord *)self compatibilityVersion];
  [v8 setObject:compatibilityVersion forKey:@"compatibilityVersion"];

  return v8;
}

@end