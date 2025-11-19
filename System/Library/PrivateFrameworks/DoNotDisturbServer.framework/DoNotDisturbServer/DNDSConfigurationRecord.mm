@interface DNDSConfigurationRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithApplicationConfigurationType:(id)a3 senderConfigurationType:(id)a4 suppressionType:(id)a5 suppressionMode:(id)a6 minimumBreakthroughUrgency:(id)a7 hideApplicationBadges:(id)a8 allowIntelligentManagement:(id)a9 compatibilityVersion:(id)a10;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSConfigurationRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationConfigurationType];
  v6 = [v4 senderConfigurationType];
  v7 = [v4 suppressionType];
  v8 = [v4 suppressionMode];
  v9 = [v4 minimumBreakthroughUrgency];
  v10 = [v4 hideApplicationBadges];
  v11 = [v4 allowIntelligentManagement];
  v12 = [v4 compatibilityVersion];

  v13 = [(DNDSConfigurationRecord *)self _initWithApplicationConfigurationType:v5 senderConfigurationType:v6 suppressionType:v7 suppressionMode:v8 minimumBreakthroughUrgency:v9 hideApplicationBadges:v10 allowIntelligentManagement:v11 compatibilityVersion:v12];
  return v13;
}

- (id)_initWithApplicationConfigurationType:(id)a3 senderConfigurationType:(id)a4 suppressionType:(id)a5 suppressionMode:(id)a6 minimumBreakthroughUrgency:(id)a7 hideApplicationBadges:(id)a8 allowIntelligentManagement:(id)a9 compatibilityVersion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v55.receiver = self;
  v55.super_class = DNDSConfigurationRecord;
  v24 = [(DNDSConfigurationRecord *)&v55 init];
  if (v24)
  {
    v54 = v16;
    v25 = [v16 copy];
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

    v29 = [v17 copy];
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

    v33 = [v18 copy];
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

    v37 = [v19 copy];
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

    v40 = [v20 copy];
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

    v44 = [v21 copy];
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

    v47 = [v22 copy];
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

    v50 = [v23 copy];
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

    v16 = v54;
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(DNDSConfigurationRecord *)self applicationConfigurationType];
  v4 = [v3 hash];
  v5 = [(DNDSConfigurationRecord *)self senderConfigurationType];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
  v8 = [v7 hash];
  v9 = [(DNDSConfigurationRecord *)self suppressionType];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSConfigurationRecord *)self suppressionMode];
  v12 = [v11 hash];
  v13 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
  v14 = v12 ^ [v13 hash];
  v15 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(DNDSConfigurationRecord *)self compatibilityVersion];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSConfigurationRecord *)self applicationConfigurationType];
      v7 = [(DNDSConfigurationRecord *)v5 applicationConfigurationType];
      if (v6 != v7)
      {
        v8 = 0;
LABEL_63:

        goto LABEL_64;
      }

      v9 = [(DNDSConfigurationRecord *)self senderConfigurationType];
      v10 = [(DNDSConfigurationRecord *)v5 senderConfigurationType];
      if (v9 != v10)
      {
        v8 = 0;
LABEL_62:

        goto LABEL_63;
      }

      v11 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
      v12 = [(DNDSConfigurationRecord *)v5 minimumBreakthroughUrgency];
      v81 = v11;
      if (v11 != v12)
      {
        v13 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
        if (!v13)
        {
          v8 = 0;
          goto LABEL_61;
        }

        v14 = v13;
        v15 = [(DNDSConfigurationRecord *)v5 minimumBreakthroughUrgency];
        if (!v15)
        {
          v8 = 0;
LABEL_60:

          goto LABEL_61;
        }

        v78 = v15;
        v11 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
        v76 = [(DNDSConfigurationRecord *)v5 minimumBreakthroughUrgency];
        v77 = v11;
        if (![v11 isEqual:?])
        {
          v8 = 0;
LABEL_59:

          goto LABEL_60;
        }

        v75 = v14;
      }

      v16 = [(DNDSConfigurationRecord *)self suppressionType];
      v79 = [(DNDSConfigurationRecord *)v5 suppressionType];
      v80 = v16;
      if (v16 != v79)
      {
        v17 = [(DNDSConfigurationRecord *)self suppressionType];
        if (v17)
        {
          v73 = v17;
          v18 = [(DNDSConfigurationRecord *)v5 suppressionType];
          if (v18)
          {
            v70 = v18;
            v11 = [(DNDSConfigurationRecord *)self suppressionType];
            v19 = [(DNDSConfigurationRecord *)v5 suppressionType];
            if ([v11 isEqual:v19])
            {
              v66 = v19;
              goto LABEL_20;
            }
          }
        }

LABEL_57:
        v8 = 0;
        goto LABEL_58;
      }

LABEL_20:
      v20 = [(DNDSConfigurationRecord *)self suppressionMode];
      v74 = [(DNDSConfigurationRecord *)v5 suppressionMode];
      v71 = v11;
      v72 = v20;
      if (v20 == v74)
      {
        goto LABEL_27;
      }

      v21 = [(DNDSConfigurationRecord *)self suppressionMode];
      if (v21)
      {
        v67 = v21;
        v22 = [(DNDSConfigurationRecord *)v5 suppressionMode];
        if (v22)
        {
          v65 = v22;
          v23 = [(DNDSConfigurationRecord *)self suppressionMode];
          v24 = [(DNDSConfigurationRecord *)v5 suppressionMode];
          if ([v23 isEqual:v24])
          {
            v62 = v24;
            v63 = v23;
LABEL_27:
            v25 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
            [(DNDSConfigurationRecord *)v5 hideApplicationBadges];
            v69 = v68 = v25;
            if (v25 == v69)
            {
              goto LABEL_35;
            }

            v26 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
            if (v26)
            {
              v64 = v26;
              v27 = [(DNDSConfigurationRecord *)v5 hideApplicationBadges];
              v28 = v72;
              if (!v27)
              {

                v44 = v74;
LABEL_51:
                if (v28 != v44)
                {
                }

                goto LABEL_54;
              }

              v59 = v27;
              v29 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
              v30 = [(DNDSConfigurationRecord *)v5 hideApplicationBadges];
              if ([v29 isEqual:v30])
              {
                v56 = v30;
                v57 = v29;
LABEL_35:
                v31 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
                v32 = [(DNDSConfigurationRecord *)v5 allowIntelligentManagement];
                v33 = v32;
                if (v31 == v32)
                {
                  v60 = v31;
                  v61 = v32;
                  goto LABEL_44;
                }

                v34 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
                if (v34)
                {
                  v58 = v34;
                  v60 = v31;
                  v61 = v33;
                  v35 = [(DNDSConfigurationRecord *)v5 allowIntelligentManagement];
                  v36 = v72;
                  if (v35)
                  {
                    v55 = v35;
                    v37 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
                    v38 = [(DNDSConfigurationRecord *)v5 allowIntelligentManagement];
                    if ([v37 isEqual:v38])
                    {
                      v52 = v38;
                      v53 = v37;
LABEL_44:
                      v39 = [(DNDSConfigurationRecord *)self compatibilityVersion];
                      v40 = [(DNDSConfigurationRecord *)v5 compatibilityVersion];
                      if (v39 == v40)
                      {

                        v8 = 1;
                      }

                      else
                      {
                        v54 = v40;
                        v41 = [(DNDSConfigurationRecord *)self compatibilityVersion];
                        if (v41)
                        {
                          v51 = v41;
                          v42 = [(DNDSConfigurationRecord *)v5 compatibilityVersion];
                          if (v42)
                          {
                            v50 = v42;
                            v49 = [(DNDSConfigurationRecord *)self compatibilityVersion];
                            v43 = [(DNDSConfigurationRecord *)v5 compatibilityVersion];
                            v8 = [v49 isEqual:?];

                            v42 = v50;
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

                      if (v72 != v74)
                      {
                      }

                      if (v80 != v79)
                      {
                      }

LABEL_58:
                      v14 = v75;
                      if (v81 != v12)
                      {
                        goto LABEL_59;
                      }

LABEL_61:

                      goto LABEL_62;
                    }

                    v35 = v55;
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
                if (v36 != v74)
                {
                }

                v45 = v80;
                if (v80 != v79)
                {
                }

LABEL_56:

                goto LABEL_57;
              }
            }

            v44 = v74;
            v28 = v72;
            goto LABEL_51;
          }

LABEL_54:
          v45 = v80;
          if (v80 != v79)
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
  v21 = [(DNDSConfigurationRecord *)self applicationConfigurationType];
  [v21 unsignedIntegerValue];
  v15 = DNDStringFromConfigurationType();
  v20 = [(DNDSConfigurationRecord *)self senderConfigurationType];
  [v20 unsignedIntegerValue];
  v22 = DNDStringFromConfigurationType();
  v19 = [(DNDSConfigurationRecord *)self suppressionType];
  [v19 unsignedIntegerValue];
  v12 = DNDStringFromInterruptionSuppression();
  v16 = [(DNDSConfigurationRecord *)self suppressionMode];
  [v16 unsignedIntegerValue];
  v13 = DNDStringFromInterruptionSuppressionMode();
  v14 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
  [v14 unsignedIntegerValue];
  v3 = DNDStringFromBreakthroughUrgency();
  v4 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
  [v4 unsignedIntegerValue];
  v5 = DNDEnabledSettingToString();
  v6 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
  [v6 unsignedIntegerValue];
  v7 = DNDEnabledSettingToString();
  v8 = [(DNDSConfigurationRecord *)self compatibilityVersion];
  [v8 integerValue];
  v9 = DNDCompatibilityVersionToString();
  v10 = [v18 stringWithFormat:@"<%@: %p applicationConfigurationType: %@; senderConfigurationType: %@; suppressionType: %@; suppressionMode: %@; minimumBreakthroughUrgency: %@; hideApplicationBadges: %@; allowIntelligentManagement: %@; compatibilityVersion: %@>", v17, self, v15, v22, v12, v13, v3, v5, v7, v9];;

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableConfigurationRecord alloc];

  return [(DNDSConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = [v6 bs_safeObjectForKey:@"applicationConfigurationType" ofType:objc_opt_class()];
  v8 = [v6 bs_safeObjectForKey:@"senderConfigurationType" ofType:objc_opt_class()];
  v9 = [v6 bs_safeObjectForKey:@"suppressionType" ofType:objc_opt_class()];
  v10 = [v6 bs_safeNumberForKey:@"suppressionMode"];
  v11 = [v7 currentRecord];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v7 currentRecord];
    v14 = [v13 suppressionMode];

    v10 = v14;
  }

  v15 = [v6 bs_safeObjectForKey:@"minimumBreakthroughUrgency" ofType:objc_opt_class()];
  v16 = [v6 bs_safeNumberForKey:@"hideApplicationBadges"];
  v17 = [v6 bs_safeNumberForKey:@"allowIntelligentManagement"];
  v18 = [v6 bs_safeNumberForKey:@"compatibilityVersion"];
  v19 = [[a1 alloc] _initWithApplicationConfigurationType:v21 senderConfigurationType:v8 suppressionType:v9 suppressionMode:v10 minimumBreakthroughUrgency:v15 hideApplicationBadges:v16 allowIntelligentManagement:v17 compatibilityVersion:v18];

  return v19;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [a3 healingSource];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  v9 = [(DNDSConfigurationRecord *)self applicationConfigurationType];
  [v8 setObject:v9 forKey:@"applicationConfigurationType"];

  v10 = [(DNDSConfigurationRecord *)self senderConfigurationType];
  [v8 setObject:v10 forKey:@"senderConfigurationType"];

  v11 = [(DNDSConfigurationRecord *)self suppressionType];
  [v8 setObject:v11 forKey:@"suppressionType"];

  v12 = [(DNDSConfigurationRecord *)self suppressionMode];
  [v8 setObject:v12 forKey:@"suppressionMode"];

  v13 = [(DNDSConfigurationRecord *)self minimumBreakthroughUrgency];
  [v8 setObject:v13 forKey:@"minimumBreakthroughUrgency"];

  v14 = [(DNDSConfigurationRecord *)self hideApplicationBadges];
  [v8 setObject:v14 forKey:@"hideApplicationBadges"];

  v15 = [(DNDSConfigurationRecord *)self allowIntelligentManagement];
  [v8 setObject:v15 forKey:@"allowIntelligentManagement"];

  v16 = [(DNDSConfigurationRecord *)self compatibilityVersion];
  [v8 setObject:v16 forKey:@"compatibilityVersion"];

  return v8;
}

@end