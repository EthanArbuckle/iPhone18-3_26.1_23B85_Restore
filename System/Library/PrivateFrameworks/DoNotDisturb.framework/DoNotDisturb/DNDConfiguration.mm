@interface DNDConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupportedConfiguration;
- (DNDConfiguration)initWithCoder:(id)coder;
- (NSDictionary)threadsWithExceptions;
- (NSSet)applicationsWithExceptions;
- (NSSet)contactsWithExceptions;
- (NSSet)webApplicationsWithExceptions;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (id)_initWithSuppressionType:(unint64_t)type suppressionMode:(unint64_t)mode allowedApplicationIdentifiers:(id)identifiers deniedApplicationIdentifiers:(id)applicationIdentifiers allowedWebApplicationIdentifiers:(id)webApplicationIdentifiers deniedWebApplicationIdentifiers:(id)deniedWebApplicationIdentifiers senderConfiguration:(id)configuration minimumBreakthroughUrgency:(unint64_t)self0 hideApplicationBadges:(unint64_t)self1 allowIntelligentManagement:(unint64_t)self2 compatibilityVersion:(int64_t)self3 applicationConfigurationType:(unint64_t)self4 senderConfigurationType:(unint64_t)self5;
- (id)allowedApplications;
- (id)deniedApplications;
- (int64_t)compatibilityVersion;
- (unint64_t)_exceptionForApplicationIdentifier:(id)identifier thread:(id)thread;
- (unint64_t)exceptionForApplication:(id)application;
- (unint64_t)exceptionForApplication:(id)application thread:(id)thread;
- (unint64_t)exceptionForContactHandle:(id)handle;
- (unint64_t)exceptionForWebApplicationIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
- (void)log:(id)log withPrefix:(id)prefix;
@end

@implementation DNDConfiguration

- (id)_initWithSuppressionType:(unint64_t)type suppressionMode:(unint64_t)mode allowedApplicationIdentifiers:(id)identifiers deniedApplicationIdentifiers:(id)applicationIdentifiers allowedWebApplicationIdentifiers:(id)webApplicationIdentifiers deniedWebApplicationIdentifiers:(id)deniedWebApplicationIdentifiers senderConfiguration:(id)configuration minimumBreakthroughUrgency:(unint64_t)self0 hideApplicationBadges:(unint64_t)self1 allowIntelligentManagement:(unint64_t)self2 compatibilityVersion:(int64_t)self3 applicationConfigurationType:(unint64_t)self4 senderConfigurationType:(unint64_t)self5
{
  identifiersCopy = identifiers;
  applicationIdentifiersCopy = applicationIdentifiers;
  webApplicationIdentifiersCopy = webApplicationIdentifiers;
  deniedWebApplicationIdentifiersCopy = deniedWebApplicationIdentifiers;
  configurationCopy = configuration;
  v49.receiver = self;
  v49.super_class = DNDConfiguration;
  v26 = [(DNDConfiguration *)&v49 init];
  v27 = v26;
  if (v26)
  {
    v26->_suppressionType = type;
    v26->_suppressionMode = mode;
    v28 = [identifiersCopy mutableCopy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    allowedApplicationIdentifiers = v27->_allowedApplicationIdentifiers;
    v27->_allowedApplicationIdentifiers = v30;

    v32 = [applicationIdentifiersCopy mutableCopy];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    deniedApplicationIdentifiers = v27->_deniedApplicationIdentifiers;
    v27->_deniedApplicationIdentifiers = v34;

    v36 = [webApplicationIdentifiersCopy mutableCopy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    allowedWebApplicationIdentifiers = v27->_allowedWebApplicationIdentifiers;
    v27->_allowedWebApplicationIdentifiers = v38;

    v40 = [deniedWebApplicationIdentifiersCopy mutableCopy];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    deniedWebApplicationIdentifiers = v27->_deniedWebApplicationIdentifiers;
    v27->_deniedWebApplicationIdentifiers = v42;

    v44 = [configurationCopy mutableCopy];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = objc_alloc_init(DNDMutableSenderConfiguration);
    }

    senderConfiguration = v27->_senderConfiguration;
    v27->_senderConfiguration = v46;

    v27->_minimumBreakthroughUrgency = urgency;
    v27->_hideApplicationBadges = badges;
    v27->_allowIntelligentManagement = management;
    v27->_compatibilityVersion = version;
    v27->_applicationConfigurationType = configurationType;
    v27->_senderConfigurationType = senderConfigurationType;
  }

  return v27;
}

- (id)allowedApplications
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_allowedApplicationIdentifiers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_allowedApplicationIdentifiers objectForKeyedSubscript:v9, v14];
        bundleID = [v9 bundleID];
        [dictionary setObject:v10 forKeyedSubscript:bundleID];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)deniedApplications
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_deniedApplicationIdentifiers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleID = [*(*(&v12 + 1) + 8 * i) bundleID];
        [v3 addObject:bundleID];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)hash
{
  suppressionType = [(DNDConfiguration *)self suppressionType];
  v4 = [(DNDConfiguration *)self suppressionMode]^ suppressionType;
  allowedApplicationIdentifiers = [(DNDConfiguration *)self allowedApplicationIdentifiers];
  v6 = v4 ^ [allowedApplicationIdentifiers hash];
  deniedApplicationIdentifiers = [(DNDConfiguration *)self deniedApplicationIdentifiers];
  v8 = [deniedApplicationIdentifiers hash];
  allowedWebApplicationIdentifiers = [(DNDConfiguration *)self allowedWebApplicationIdentifiers];
  v10 = v6 ^ v8 ^ [allowedWebApplicationIdentifiers hash];
  deniedWebApplicationIdentifiers = [(DNDConfiguration *)self deniedWebApplicationIdentifiers];
  v12 = [deniedWebApplicationIdentifiers hash];
  senderConfiguration = [(DNDConfiguration *)self senderConfiguration];
  v14 = v12 ^ [senderConfiguration hash];
  v15 = v10 ^ v14 ^ [(DNDConfiguration *)self minimumBreakthroughUrgency];
  hideApplicationBadges = [(DNDConfiguration *)self hideApplicationBadges];
  v17 = hideApplicationBadges ^ [(DNDConfiguration *)self allowIntelligentManagement];
  v18 = v17 ^ [(DNDConfiguration *)self compatibilityVersion];
  v19 = v18 ^ [(DNDConfiguration *)self applicationConfigurationType];
  v20 = v19 ^ [(DNDConfiguration *)self senderConfigurationType];

  return v15 ^ v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      suppressionType = [(DNDConfiguration *)self suppressionType];
      if (suppressionType != [(DNDConfiguration *)v5 suppressionType]|| (v7 = [(DNDConfiguration *)self suppressionMode], v7 != [(DNDConfiguration *)v5 suppressionMode]))
      {
        v12 = 0;
LABEL_76:

        goto LABEL_77;
      }

      allowedApplicationIdentifiers = [(DNDConfiguration *)self allowedApplicationIdentifiers];
      allowedApplicationIdentifiers2 = [(DNDConfiguration *)v5 allowedApplicationIdentifiers];
      if (allowedApplicationIdentifiers != allowedApplicationIdentifiers2)
      {
        allowedApplicationIdentifiers3 = [(DNDConfiguration *)self allowedApplicationIdentifiers];
        if (!allowedApplicationIdentifiers3)
        {
          v12 = 0;
          goto LABEL_75;
        }

        allowedApplicationIdentifiers4 = [(DNDConfiguration *)v5 allowedApplicationIdentifiers];
        if (!allowedApplicationIdentifiers4)
        {
          v12 = 0;
LABEL_74:

          goto LABEL_75;
        }

        allowedApplicationIdentifiers5 = [(DNDConfiguration *)self allowedApplicationIdentifiers];
        allowedApplicationIdentifiers6 = [(DNDConfiguration *)v5 allowedApplicationIdentifiers];
        if (![allowedApplicationIdentifiers5 isEqual:allowedApplicationIdentifiers6])
        {
          v12 = 0;
LABEL_73:

          goto LABEL_74;
        }

        v68 = allowedApplicationIdentifiers6;
        v69 = allowedApplicationIdentifiers5;
      }

      deniedApplicationIdentifiers = [(DNDConfiguration *)self deniedApplicationIdentifiers];
      deniedApplicationIdentifiers2 = [(DNDConfiguration *)v5 deniedApplicationIdentifiers];
      deniedWebApplicationIdentifiers6 = deniedApplicationIdentifiers2;
      if (deniedApplicationIdentifiers == deniedApplicationIdentifiers2)
      {
        v70 = deniedApplicationIdentifiers2;
LABEL_20:
        allowedWebApplicationIdentifiers = [(DNDConfiguration *)self allowedWebApplicationIdentifiers];
        allowedWebApplicationIdentifiers2 = [(DNDConfiguration *)v5 allowedWebApplicationIdentifiers];
        v67 = allowedWebApplicationIdentifiers;
        if (allowedWebApplicationIdentifiers == allowedWebApplicationIdentifiers2)
        {
LABEL_27:
          deniedWebApplicationIdentifiers = [(DNDConfiguration *)self deniedWebApplicationIdentifiers];
          deniedWebApplicationIdentifiers2 = [(DNDConfiguration *)v5 deniedWebApplicationIdentifiers];
          if (deniedWebApplicationIdentifiers == deniedWebApplicationIdentifiers2)
          {
            goto LABEL_35;
          }

          deniedWebApplicationIdentifiers3 = [(DNDConfiguration *)self deniedWebApplicationIdentifiers];
          if (deniedWebApplicationIdentifiers3)
          {
            v57 = deniedWebApplicationIdentifiers3;
            deniedWebApplicationIdentifiers4 = [(DNDConfiguration *)v5 deniedWebApplicationIdentifiers];
            if (deniedWebApplicationIdentifiers4)
            {
              v54 = deniedWebApplicationIdentifiers4;
              deniedWebApplicationIdentifiers5 = [(DNDConfiguration *)self deniedWebApplicationIdentifiers];
              deniedWebApplicationIdentifiers6 = [(DNDConfiguration *)v5 deniedWebApplicationIdentifiers];
              if ([deniedWebApplicationIdentifiers5 isEqual:deniedWebApplicationIdentifiers6])
              {
                v52 = deniedWebApplicationIdentifiers5;
LABEL_35:
                senderConfiguration = [(DNDConfiguration *)self senderConfiguration];
                senderConfiguration2 = [(DNDConfiguration *)v5 senderConfiguration];
                if (senderConfiguration == senderConfiguration2)
                {
                  v55 = senderConfiguration;
                }

                else
                {
                  senderConfiguration3 = [(DNDConfiguration *)self senderConfiguration];
                  if (!senderConfiguration3)
                  {
                    v46 = senderConfiguration;
                    v47 = deniedWebApplicationIdentifiers6;

                    v12 = 0;
LABEL_86:
                    if (deniedWebApplicationIdentifiers != deniedWebApplicationIdentifiers2)
                    {
                    }

                    if (v67 != allowedWebApplicationIdentifiers2)
                    {
                    }

                    if (deniedApplicationIdentifiers != v70)
                    {
                    }

                    goto LABEL_92;
                  }

                  v53 = senderConfiguration3;
                  senderConfiguration4 = [(DNDConfiguration *)v5 senderConfiguration];
                  v55 = senderConfiguration;
                  if (!senderConfiguration4)
                  {
                    v47 = deniedWebApplicationIdentifiers6;
                    v12 = 0;
LABEL_85:

                    goto LABEL_86;
                  }

                  v48 = deniedWebApplicationIdentifiers;
                  v51 = senderConfiguration4;
                  senderConfiguration5 = [(DNDConfiguration *)self senderConfiguration];
                  senderConfiguration6 = [(DNDConfiguration *)v5 senderConfiguration];
                  v50 = senderConfiguration5;
                  if (![senderConfiguration5 isEqual:?])
                  {
                    v12 = 0;
                    v43 = v60;
                    deniedWebApplicationIdentifiers = v48;
LABEL_84:
                    v47 = deniedWebApplicationIdentifiers6;
                    v60 = v43;

                    goto LABEL_85;
                  }

                  deniedWebApplicationIdentifiers = v48;
                }

                minimumBreakthroughUrgency = [(DNDConfiguration *)self minimumBreakthroughUrgency];
                if (minimumBreakthroughUrgency != [(DNDConfiguration *)v5 minimumBreakthroughUrgency]|| (v38 = [(DNDConfiguration *)self hideApplicationBadges], v38 != [(DNDConfiguration *)v5 hideApplicationBadges]) || (v39 = [(DNDConfiguration *)self allowIntelligentManagement], v39 != [(DNDConfiguration *)v5 allowIntelligentManagement]) || (v40 = [(DNDConfiguration *)self compatibilityVersion], v40 != [(DNDConfiguration *)v5 compatibilityVersion]) || (v41 = [(DNDConfiguration *)self applicationConfigurationType], v41 != [(DNDConfiguration *)v5 applicationConfigurationType]))
                {
                  if (v55 != senderConfiguration2)
                  {

                    v12 = 0;
                    v44 = v60;
                    if (deniedWebApplicationIdentifiers == deniedWebApplicationIdentifiers2)
                    {
LABEL_58:

                      if (v67 != allowedWebApplicationIdentifiers2)
                      {
                      }

                      if (deniedApplicationIdentifiers != v70)
                      {
                      }

LABEL_92:

LABEL_72:
                      allowedApplicationIdentifiers6 = v68;
                      allowedApplicationIdentifiers5 = v69;
                      if (allowedApplicationIdentifiers != allowedApplicationIdentifiers2)
                      {
                        goto LABEL_73;
                      }

LABEL_75:

                      goto LABEL_76;
                    }

LABEL_57:

                    goto LABEL_58;
                  }

                  v12 = 0;
                  v43 = v60;
LABEL_80:
                  v44 = v43;

                  if (deniedWebApplicationIdentifiers == deniedWebApplicationIdentifiers2)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_57;
                }

                senderConfigurationType = [(DNDConfiguration *)self senderConfigurationType];
                v12 = senderConfigurationType == [(DNDConfiguration *)v5 senderConfigurationType];
                v43 = v60;
                if (v55 == senderConfiguration2)
                {
                  goto LABEL_80;
                }

                goto LABEL_84;
              }

              v36 = v58;
            }

            else
            {
              v36 = v58;
            }
          }

          else
          {
            v36 = v58;
          }

          if (v67 != allowedWebApplicationIdentifiers2)
          {
          }

          if (deniedApplicationIdentifiers != v70)
          {
          }

          goto LABEL_70;
        }

        allowedWebApplicationIdentifiers3 = [(DNDConfiguration *)self allowedWebApplicationIdentifiers];
        if (allowedWebApplicationIdentifiers3)
        {
          v23 = allowedWebApplicationIdentifiers3;
          allowedWebApplicationIdentifiers4 = [(DNDConfiguration *)v5 allowedWebApplicationIdentifiers];
          if (allowedWebApplicationIdentifiers4)
          {
            v25 = allowedWebApplicationIdentifiers2;
            v26 = v23;
            v61 = allowedWebApplicationIdentifiers4;
            deniedWebApplicationIdentifiers6 = [(DNDConfiguration *)self allowedWebApplicationIdentifiers];
            allowedWebApplicationIdentifiers5 = [(DNDConfiguration *)v5 allowedWebApplicationIdentifiers];
            if ([deniedWebApplicationIdentifiers6 isEqual:allowedWebApplicationIdentifiers5])
            {
              v56 = deniedWebApplicationIdentifiers6;
              v58 = allowedWebApplicationIdentifiers5;
              v60 = v26;
              allowedWebApplicationIdentifiers2 = v25;
              goto LABEL_27;
            }

LABEL_43:
            if (deniedApplicationIdentifiers != v70)
            {
            }

LABEL_70:

            goto LABEL_71;
          }
        }

        goto LABEL_43;
      }

      deniedApplicationIdentifiers3 = [(DNDConfiguration *)self deniedApplicationIdentifiers];
      if (deniedApplicationIdentifiers3)
      {
        v17 = deniedApplicationIdentifiers3;
        deniedApplicationIdentifiers4 = [(DNDConfiguration *)v5 deniedApplicationIdentifiers];
        if (deniedApplicationIdentifiers4)
        {
          v70 = deniedWebApplicationIdentifiers6;
          v66 = deniedApplicationIdentifiers4;
          deniedApplicationIdentifiers5 = [(DNDConfiguration *)self deniedApplicationIdentifiers];
          deniedWebApplicationIdentifiers6 = [(DNDConfiguration *)v5 deniedApplicationIdentifiers];
          if ([deniedApplicationIdentifiers5 isEqual:deniedWebApplicationIdentifiers6])
          {
            v63 = deniedWebApplicationIdentifiers6;
            v64 = deniedApplicationIdentifiers5;
            v62 = v17;
            goto LABEL_20;
          }

LABEL_71:
          v12 = 0;
          goto LABEL_72;
        }
      }

      goto LABEL_71;
    }

    v12 = 0;
  }

LABEL_77:

  return v12;
}

- (id)_descriptionForRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v26 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v27 = DNDStringFromInterruptionSuppression(self->_suppressionType);
  v5 = DNDStringFromInterruptionSuppressionMode(self->_suppressionMode);
  allowedApplicationIdentifiers = self->_allowedApplicationIdentifiers;
  allowedWebApplicationIdentifiers = self->_allowedWebApplicationIdentifiers;
  deniedWebApplicationIdentifiers = self->_deniedWebApplicationIdentifiers;
  v22 = allowedWebApplicationIdentifiers;
  deniedApplicationIdentifiers = self->_deniedApplicationIdentifiers;
  senderConfiguration = self->_senderConfiguration;
  v28 = redactedCopy;
  if (redactedCopy)
  {
    senderConfiguration = [senderConfiguration redactedDescription];
  }

  v9 = DNDStringFromBreakthroughUrgency(self->_minimumBreakthroughUrgency);
  v10 = DNDEnabledSettingToString([(DNDConfiguration *)self hideApplicationBadges]);
  v11 = DNDEnabledSettingToString([(DNDConfiguration *)self allowIntelligentManagement]);
  v12 = @"Inclusive";
  applicationConfigurationType = self->_applicationConfigurationType;
  senderConfigurationType = self->_senderConfigurationType;
  if (applicationConfigurationType)
  {
    v15 = @"Inclusive";
  }

  else
  {
    v15 = @"Exclusive";
  }

  if (applicationConfigurationType == 2)
  {
    v16 = @"Unconfigured";
  }

  else
  {
    v16 = v15;
  }

  if (!senderConfigurationType)
  {
    v12 = @"Exclusive";
  }

  if (senderConfigurationType == 2)
  {
    v12 = @"Unconfigured";
  }

  v17 = v12;
  v18 = v16;
  v19 = DNDCompatibilityVersionToString([(DNDConfiguration *)self compatibilityVersion]);
  v20 = [v26 stringWithFormat:@"<%@: %p suppressionType: %@; suppressionMode: %@ allowedApplicationIdentifiers: %@; deniedApplicationIdentifiers: %@; allowedWebApplicationIdentifiers: %@; deniedWebApplicationIdentifiers: %@; senderConfiguration: %@; minimumBreakthroughUrgency: %@; hideApplicationBadges: %@; allowIntelligentManagement: %@; applicationConfigurationType: %@; senderConfigurationType: %@; compatibilityVersion: %@; >", v25, self, v27, v5, allowedApplicationIdentifiers, deniedApplicationIdentifiers, v22, deniedWebApplicationIdentifiers, senderConfiguration, v9, v10, v11, v18, v17, v19];;

  if (v28)
  {
  }

  return v20;
}

- (void)log:(id)log withPrefix:(id)prefix
{
  v88 = *MEMORY[0x277D85DE8];
  logCopy = log;
  prefixCopy = prefix;
  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = prefixCopy;
    _os_log_impl(&dword_22002F000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin configuration", buf, 0xCu);
  }

  v7 = logCopy;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v48 = DNDStringFromInterruptionSuppression(self->_suppressionType);
    v8 = DNDStringFromInterruptionSuppressionMode(self->_suppressionMode);
    v9 = DNDStringFromBreakthroughUrgency(self->_minimumBreakthroughUrgency);
    v10 = DNDEnabledSettingToString([(DNDConfiguration *)self hideApplicationBadges]);
    v11 = DNDEnabledSettingToString([(DNDConfiguration *)self allowIntelligentManagement]);
    v12 = @"Inclusive";
    applicationConfigurationType = self->_applicationConfigurationType;
    senderConfigurationType = self->_senderConfigurationType;
    if (applicationConfigurationType)
    {
      v15 = @"Inclusive";
    }

    else
    {
      v15 = @"Exclusive";
    }

    if (applicationConfigurationType == 2)
    {
      v16 = @"Unconfigured";
    }

    else
    {
      v16 = v15;
    }

    if (!senderConfigurationType)
    {
      v12 = @"Exclusive";
    }

    if (senderConfigurationType == 2)
    {
      v17 = @"Unconfigured";
    }

    else
    {
      v17 = v12;
    }

    v47 = v17;
    v46 = v16;
    v18 = DNDCompatibilityVersionToString([(DNDConfiguration *)self compatibilityVersion]);
    *buf = 138545410;
    v71 = prefixCopy;
    v72 = 2114;
    v73 = v48;
    v74 = 2114;
    v75 = v8;
    v76 = 2114;
    v77 = v9;
    v78 = 2114;
    v79 = v10;
    v80 = 2114;
    v81 = v11;
    v82 = 2114;
    v83 = v16;
    v84 = 2114;
    v85 = v17;
    v86 = 2114;
    v87 = v18;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] suppressionType: %{public}@; suppressionMode: %{public}@; minimumBreakthroughUrgency: %{public}@; hideApplicationBadges: %{public}@; allowIntelligentManagement: %{public}@; applicationConfigurationType: %{public}@; senderConfigurationType: %{public}@; compatibilityVersion: %{public}@", buf, 0x5Cu);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v19 = self->_allowedApplicationIdentifiers;
  v20 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v63;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v63 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v62 + 1) + 8 * i);
        v25 = [(NSMutableDictionary *)self->_allowedApplicationIdentifiers objectForKeyedSubscript:v24];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543875;
          v71 = prefixCopy;
          v72 = 2113;
          v73 = v24;
          v74 = 2113;
          v75 = v25;
          _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Allowed app: %{private}@; %{private}@", buf, 0x20u);
        }
      }

      v21 = [(NSMutableDictionary *)v19 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v21);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = self->_deniedApplicationIdentifiers;
  v27 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(v26);
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(*(&v58 + 1) + 8 * j);
          *buf = 138543619;
          v71 = prefixCopy;
          v72 = 2113;
          v73 = v31;
          _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied app: %{private}@", buf, 0x16u);
        }
      }

      v28 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v28);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v32 = self->_allowedWebApplicationIdentifiers;
  v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v55;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v55 != v35)
        {
          objc_enumerationMutation(v32);
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(*(&v54 + 1) + 8 * k);
          *buf = 138543619;
          v71 = prefixCopy;
          v72 = 2113;
          v73 = v37;
          _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Allowed Web app: %{private}@", buf, 0x16u);
        }
      }

      v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v34);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v38 = self->_deniedWebApplicationIdentifiers;
  v39 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v51;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(v38);
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(*(&v50 + 1) + 8 * m);
          *buf = 138543619;
          v71 = prefixCopy;
          v72 = 2113;
          v73 = v43;
          _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied Web app: %{private}@", buf, 0x16u);
        }
      }

      v40 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    senderConfiguration = self->_senderConfiguration;
    *buf = 138543619;
    v71 = prefixCopy;
    v72 = 2113;
    v73 = senderConfiguration;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] senderConfiguration: %{private}@", buf, 0x16u);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = prefixCopy;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] End configuration", buf, 0xCu);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description
{
  objectCopy = object;
  builderCopy = builder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = objectCopy;
    v10 = [v8 numberWithUnsignedInteger:{-[DNDConfiguration suppressionType](self, "suppressionType")}];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "suppressionType")}];
    [builderCopy diffObject:v10 againstObject:v11 withDescription:@"suppressionType"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDConfiguration suppressionMode](self, "suppressionMode")}];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "suppressionMode")}];
    [builderCopy diffObject:v12 againstObject:v13 withDescription:@"suppressionMode"];

    allowedApplicationIdentifiers = [(DNDConfiguration *)self allowedApplicationIdentifiers];
    allowedApplicationIdentifiers2 = [v9 allowedApplicationIdentifiers];
    [builderCopy diffObject:allowedApplicationIdentifiers againstObject:allowedApplicationIdentifiers2 withDescription:@"allowedApplicationIdentifiers"];

    deniedApplicationIdentifiers = [(DNDConfiguration *)self deniedApplicationIdentifiers];
    deniedApplicationIdentifiers2 = [v9 deniedApplicationIdentifiers];
    [builderCopy diffObject:deniedApplicationIdentifiers againstObject:deniedApplicationIdentifiers2 withDescription:@"deniedApplicationIdentifiers"];

    allowedWebApplicationIdentifiers = [(DNDConfiguration *)self allowedWebApplicationIdentifiers];
    allowedWebApplicationIdentifiers2 = [v9 allowedWebApplicationIdentifiers];
    [builderCopy diffObject:allowedWebApplicationIdentifiers againstObject:allowedWebApplicationIdentifiers2 withDescription:@"allowedWebApplicationIdentifiers"];

    deniedWebApplicationIdentifiers = [(DNDConfiguration *)self deniedWebApplicationIdentifiers];
    deniedWebApplicationIdentifiers2 = [v9 deniedWebApplicationIdentifiers];
    [builderCopy diffObject:deniedWebApplicationIdentifiers againstObject:deniedWebApplicationIdentifiers2 withDescription:@"deniedWebApplicationIdentifiers"];

    senderConfiguration = [(DNDConfiguration *)self senderConfiguration];
    senderConfiguration2 = [v9 senderConfiguration];
    [builderCopy diffObject:senderConfiguration againstObject:senderConfiguration2 withDescription:@"senderConfiguration"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDConfiguration minimumBreakthroughUrgency](self, "minimumBreakthroughUrgency")}];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "minimumBreakthroughUrgency")}];
    [builderCopy diffObject:v24 againstObject:v25 withDescription:@"minimumBreakthroughUrgency"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDConfiguration hideApplicationBadges](self, "hideApplicationBadges")}];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "hideApplicationBadges")}];
    [builderCopy diffObject:v26 againstObject:v27 withDescription:@"hideApplicationBadges"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDConfiguration allowIntelligentManagement](self, "allowIntelligentManagement")}];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "allowIntelligentManagement")}];
    [builderCopy diffObject:v28 againstObject:v29 withDescription:@"allowIntelligentManagement]"];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDConfiguration applicationConfigurationType](self, "applicationConfigurationType")}];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "applicationConfigurationType")}];
    [builderCopy diffObject:v30 againstObject:v31 withDescription:@"applicationConfigurationType"];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDConfiguration senderConfigurationType](self, "senderConfigurationType")}];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "senderConfigurationType")}];
    [builderCopy diffObject:v32 againstObject:v33 withDescription:@"senderConfigurationType"];

    v34 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDConfiguration compatibilityVersion](self, "compatibilityVersion")}];
    v35 = MEMORY[0x277CCABB0];
    compatibilityVersion = [v9 compatibilityVersion];

    v37 = [v35 numberWithInteger:compatibilityVersion];
    [builderCopy diffObject:v34 againstObject:v37 withDescription:@"compatibilityVersion"];
  }
}

- (DNDConfiguration)initWithCoder:(id)coder
{
  v34[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29 = [coderCopy decodeIntegerForKey:@"suppressionType"];
  v28 = [coderCopy decodeIntegerForKey:@"suppressionMode"];
  v4 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v34[2] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v6 = [v4 setWithArray:v5];
  v27 = [coderCopy decodeObjectOfClasses:v6 forKey:@"allowedApplicationIdentifiers"];

  v7 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"deniedApplicationIdentifiers"];

  v11 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"allowedWebApplicationIdentifiers"];

  v15 = MEMORY[0x277CBEB98];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"deniedWebApplicationIdentifiers"];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderConfiguration"];
  v20 = [coderCopy decodeIntegerForKey:@"minimumBreakthroughUrgency"];
  if ([coderCopy containsValueForKey:@"hideApplicationBadges"])
  {
    v21 = [coderCopy decodeIntegerForKey:@"hideApplicationBadges"];
  }

  else
  {
    v21 = 0;
  }

  if ([coderCopy containsValueForKey:@"allowIntelligentManagement"])
  {
    v22 = [coderCopy decodeIntegerForKey:@"allowIntelligentManagement"];
  }

  else
  {
    v22 = 0;
  }

  if ([coderCopy containsValueForKey:@"compatibility"])
  {
    v23 = [coderCopy decodeIntegerForKey:@"compatibility"];
  }

  else
  {
    v23 = 2;
  }

  v24 = -[DNDConfiguration _initWithSuppressionType:suppressionMode:allowedApplicationIdentifiers:deniedApplicationIdentifiers:allowedWebApplicationIdentifiers:deniedWebApplicationIdentifiers:senderConfiguration:minimumBreakthroughUrgency:hideApplicationBadges:allowIntelligentManagement:compatibilityVersion:applicationConfigurationType:senderConfigurationType:](self, "_initWithSuppressionType:suppressionMode:allowedApplicationIdentifiers:deniedApplicationIdentifiers:allowedWebApplicationIdentifiers:deniedWebApplicationIdentifiers:senderConfiguration:minimumBreakthroughUrgency:hideApplicationBadges:allowIntelligentManagement:compatibilityVersion:applicationConfigurationType:senderConfigurationType:", v29, v28, v27, v10, v14, v18, v19, v20, v21, v22, v23, [coderCopy decodeIntegerForKey:@"applicationConfigurationType"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"senderConfigurationType"));

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  suppressionType = self->_suppressionType;
  coderCopy = coder;
  [coderCopy encodeInteger:suppressionType forKey:@"suppressionType"];
  [coderCopy encodeInteger:self->_suppressionMode forKey:@"suppressionMode"];
  [coderCopy encodeObject:self->_allowedApplicationIdentifiers forKey:@"allowedApplicationIdentifiers"];
  [coderCopy encodeObject:self->_deniedApplicationIdentifiers forKey:@"deniedApplicationIdentifiers"];
  [coderCopy encodeObject:self->_allowedWebApplicationIdentifiers forKey:@"allowedWebApplicationIdentifiers"];
  [coderCopy encodeObject:self->_deniedWebApplicationIdentifiers forKey:@"deniedWebApplicationIdentifiers"];
  [coderCopy encodeObject:self->_senderConfiguration forKey:@"senderConfiguration"];
  [coderCopy encodeInteger:self->_minimumBreakthroughUrgency forKey:@"minimumBreakthroughUrgency"];
  [coderCopy encodeInteger:self->_hideApplicationBadges forKey:@"hideApplicationBadges"];
  [coderCopy encodeInteger:self->_allowIntelligentManagement forKey:@"allowIntelligentManagement"];
  [coderCopy encodeInteger:-[DNDConfiguration compatibilityVersion](self forKey:{"compatibilityVersion"), @"compatibility"}];
  [coderCopy encodeInteger:self->_applicationConfigurationType forKey:@"applicationConfigurationType"];
  [coderCopy encodeInteger:self->_senderConfigurationType forKey:@"senderConfigurationType"];
}

- (NSSet)applicationsWithExceptions
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = objc_opt_new();
  applicationConfigurationType = [(DNDConfiguration *)self applicationConfigurationType];
  if (applicationConfigurationType == 1)
  {
    allObjects = [(NSMutableSet *)self->_deniedApplicationIdentifiers allObjects];
    [v17 addObjectsFromArray:allObjects];
  }

  else if (!applicationConfigurationType)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_allowedApplicationIdentifiers;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_allowedApplicationIdentifiers objectForKey:v9];
          allowedThreads = [v10 allowedThreads];
          if ([allowedThreads count])
          {
          }

          else
          {
            deniedThreads = [v10 deniedThreads];
            v13 = [deniedThreads count];

            if (!v13)
            {
              [v17 addObject:v9];
            }
          }
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

- (unint64_t)exceptionForApplication:(id)application
{
  applicationCopy = application;
  v5 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  v6 = [(DNDConfiguration *)self _exceptionForApplicationIdentifier:v5 thread:0];
  return v6;
}

- (unint64_t)exceptionForApplication:(id)application thread:(id)thread
{
  threadCopy = thread;
  applicationCopy = application;
  v8 = [[DNDApplicationIdentifier alloc] initWithBundleID:applicationCopy];

  v9 = [(DNDConfiguration *)self _exceptionForApplicationIdentifier:v8 thread:threadCopy];
  return v9;
}

- (unint64_t)_exceptionForApplicationIdentifier:(id)identifier thread:(id)thread
{
  identifierCopy = identifier;
  threadCopy = thread;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __62__DNDConfiguration__exceptionForApplicationIdentifier_thread___block_invoke;
  v19 = &unk_27843A398;
  selfCopy = self;
  v8 = threadCopy;
  v21 = v8;
  v9 = MEMORY[0x223D76270](&v16);
  if ((v9)[2](v9, identifierCopy, v8) == 2)
  {
    if ([identifierCopy platform] == 1)
    {
      v10 = 3;
LABEL_6:
      v11 = [DNDApplicationIdentifier alloc];
      bundleID = [identifierCopy bundleID];
      v13 = [(DNDApplicationIdentifier *)v11 initWithBundleID:bundleID platform:v10];

      identifierCopy = v13;
      goto LABEL_7;
    }

    if ([identifierCopy platform] == 3)
    {
      v10 = 1;
      goto LABEL_6;
    }
  }

LABEL_7:
  v14 = (v9)[2](v9, identifierCopy, v8);

  return v14;
}

uint64_t __62__DNDConfiguration__exceptionForApplicationIdentifier_thread___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 24) objectForKey:v5];
  v8 = v7;
  if (!*(a1 + 40))
  {
    if (v7)
    {
      v15 = [v7 allowedThreads];
      if (![v15 count])
      {
        v17 = [v8 deniedThreads];
        v18 = [v17 count] != 0;

        v16 = 2 * v18;
LABEL_15:
        if ([*(*(a1 + 32) + 32) containsObject:v5])
        {
          v14 = 1;
        }

        else
        {
          v14 = v16;
        }

        goto LABEL_18;
      }
    }

    v16 = 2;
    goto LABEL_15;
  }

  if (v7)
  {
    v9 = [v7 allowedThreads];
    v10 = [v9 containsObject:v6];

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    v12 = [v8 deniedThreads];
    v13 = [v12 containsObject:v6];

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_18:

  return v14;
}

- (NSDictionary)threadsWithExceptions
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_allowedApplicationIdentifiers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_allowedApplicationIdentifiers objectForKey:v9, v16];
        threadConfigurationType = [(DNDConfiguration *)self threadConfigurationType];
        if (threadConfigurationType == 1)
        {
          deniedThreads = [v10 deniedThreads];
        }

        else
        {
          if (threadConfigurationType)
          {
            goto LABEL_11;
          }

          deniedThreads = [v10 allowedThreads];
        }

        v13 = deniedThreads;
        [v3 setObject:deniedThreads forKey:v9];

LABEL_11:
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSSet)webApplicationsWithExceptions
{
  v3 = objc_opt_new();
  applicationConfigurationType = [(DNDConfiguration *)self applicationConfigurationType];
  if (applicationConfigurationType)
  {
    if (applicationConfigurationType != 1)
    {
      goto LABEL_6;
    }

    v5 = 48;
  }

  else
  {
    v5 = 40;
  }

  allObjects = [*(&self->super.isa + v5) allObjects];
  [v3 addObjectsFromArray:allObjects];

LABEL_6:

  return v3;
}

- (unint64_t)exceptionForWebApplicationIdentifier:(id)identifier
{
  allowedWebApplicationIdentifiers = self->_allowedWebApplicationIdentifiers;
  identifierCopy = identifier;
  if ([(NSMutableSet *)allowedWebApplicationIdentifiers containsObject:identifierCopy])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(NSMutableSet *)self->_deniedWebApplicationIdentifiers containsObject:identifierCopy];

  if (v7)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (NSSet)contactsWithExceptions
{
  v3 = objc_opt_new();
  senderConfigurationType = [(DNDConfiguration *)self senderConfigurationType];
  if (senderConfigurationType == 1)
  {
    deniedContacts = [(DNDSenderConfiguration *)self->_senderConfiguration deniedContacts];
  }

  else
  {
    if (senderConfigurationType)
    {
      goto LABEL_6;
    }

    deniedContacts = [(DNDSenderConfiguration *)self->_senderConfiguration allowedContacts];
  }

  v6 = deniedContacts;
  allObjects = [deniedContacts allObjects];
  [v3 addObjectsFromArray:allObjects];

LABEL_6:

  return v3;
}

- (unint64_t)exceptionForContactHandle:(id)handle
{
  handleCopy = handle;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 2;
  allowedContacts = [(DNDSenderConfiguration *)self->_senderConfiguration allowedContacts];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__DNDConfiguration_exceptionForContactHandle___block_invoke;
  v14[3] = &unk_27843A3C0;
  v6 = handleCopy;
  v15 = v6;
  v16 = &v17;
  [allowedContacts enumerateObjectsUsingBlock:v14];

  deniedContacts = [(DNDSenderConfiguration *)self->_senderConfiguration deniedContacts];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__DNDConfiguration_exceptionForContactHandle___block_invoke_2;
  v11[3] = &unk_27843A3C0;
  v8 = v6;
  v12 = v8;
  v13 = &v17;
  [deniedContacts enumerateObjectsUsingBlock:v11];

  v9 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v9;
}

uint64_t __46__DNDConfiguration_exceptionForContactHandle___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 matchesContactHandle:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t __46__DNDConfiguration_exceptionForContactHandle___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 matchesContactHandle:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isSupportedConfiguration
{
  compatibilityVersion = [(DNDConfiguration *)self compatibilityVersion];
  if (compatibilityVersion < 21)
  {
    v5 = __OFSUB__(2, compatibilityVersion);
    v3 = compatibilityVersion == 2;
    v4 = 2 - compatibilityVersion < 0;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v4 = 0;
  }

  return (v4 ^ v5 | v3) != 0;
}

- (int64_t)compatibilityVersion
{
  result = self->_compatibilityVersion;
  if (result <= 20)
  {
    allowedWebApplicationIdentifiers = [(DNDConfiguration *)self allowedWebApplicationIdentifiers];
    if ([allowedWebApplicationIdentifiers count])
    {

      return 11;
    }

    deniedWebApplicationIdentifiers = [(DNDConfiguration *)self deniedWebApplicationIdentifiers];
    v6 = [deniedWebApplicationIdentifiers count];

    if (v6)
    {
      return 11;
    }

    if ([(DNDConfiguration *)self applicationConfigurationType]|| [(DNDConfiguration *)self senderConfigurationType]|| [(DNDConfiguration *)self threadConfigurationType])
    {
      return 10;
    }

    else if ([(DNDConfiguration *)self allowIntelligentManagement]== 2)
    {
      return 20;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

@end