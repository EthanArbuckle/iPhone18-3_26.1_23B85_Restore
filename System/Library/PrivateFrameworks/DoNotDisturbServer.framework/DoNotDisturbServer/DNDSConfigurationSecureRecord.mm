@interface DNDSConfigurationSecureRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithRecord:(id)record;
- (id)_initWithSenderConfiguration:(id)configuration allowedApplications:(id)applications deniedApplications:(id)deniedApplications allowedWebApplications:(id)webApplications deniedWebApplications:(id)deniedWebApplications;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)log:(id)log withPrefix:(id)prefix;
@end

@implementation DNDSConfigurationSecureRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  senderConfiguration = [recordCopy senderConfiguration];
  allowedApplications = [recordCopy allowedApplications];
  deniedApplications = [recordCopy deniedApplications];
  allowedWebApplications = [recordCopy allowedWebApplications];
  deniedWebApplications = [recordCopy deniedWebApplications];

  v10 = [(DNDSConfigurationSecureRecord *)self _initWithSenderConfiguration:senderConfiguration allowedApplications:allowedApplications deniedApplications:deniedApplications allowedWebApplications:allowedWebApplications deniedWebApplications:deniedWebApplications];
  return v10;
}

- (id)_initWithSenderConfiguration:(id)configuration allowedApplications:(id)applications deniedApplications:(id)deniedApplications allowedWebApplications:(id)webApplications deniedWebApplications:(id)deniedWebApplications
{
  configurationCopy = configuration;
  applicationsCopy = applications;
  deniedApplicationsCopy = deniedApplications;
  webApplicationsCopy = webApplications;
  deniedWebApplicationsCopy = deniedWebApplications;
  v39.receiver = self;
  v39.super_class = DNDSConfigurationSecureRecord;
  v17 = [(DNDSConfigurationSecureRecord *)&v39 init];
  if (v17)
  {
    v18 = [configurationCopy copy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    senderConfiguration = v17->_senderConfiguration;
    v17->_senderConfiguration = v20;

    v22 = [applicationsCopy copy];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = objc_opt_new();
    }

    allowedApplications = v17->_allowedApplications;
    v17->_allowedApplications = v24;

    v26 = [deniedApplicationsCopy copy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = objc_opt_new();
    }

    deniedApplications = v17->_deniedApplications;
    v17->_deniedApplications = v28;

    v30 = [webApplicationsCopy copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = objc_opt_new();
    }

    allowedWebApplications = v17->_allowedWebApplications;
    v17->_allowedWebApplications = v32;

    v34 = [deniedWebApplicationsCopy copy];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = objc_opt_new();
    }

    deniedWebApplications = v17->_deniedWebApplications;
    v17->_deniedWebApplications = v36;
  }

  return v17;
}

- (void)log:(id)log withPrefix:(id)prefix
{
  v63 = *MEMORY[0x277D85DE8];
  logCopy = log;
  prefixCopy = prefix;
  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v57 = prefixCopy;
    _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin secure configuration", buf, 0xCu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = self->_allowedApplications;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v50;
    *&v9 = 138543875;
    v35 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->_allowedApplications objectForKeyedSubscript:v13, v35];
        if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v57 = prefixCopy;
          v58 = 2113;
          v59 = v13;
          v60 = 2113;
          v61 = v14;
          _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Allowed app: %{private}@; %{private}@", buf, 0x20u);
        }
      }

      v10 = [(NSDictionary *)v7 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v10);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = self->_deniedApplications;
  v16 = [(NSSet *)v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(*(&v45 + 1) + 8 * j);
          *buf = 138543619;
          v57 = prefixCopy;
          v58 = 2113;
          v59 = v20;
          _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied app: %{private}@", buf, 0x16u);
        }
      }

      v17 = [(NSSet *)v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v17);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = self->_allowedWebApplications;
  v22 = [(NSSet *)v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v21);
        }

        if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(*(&v41 + 1) + 8 * k);
          *buf = 138543619;
          v57 = prefixCopy;
          v58 = 2113;
          v59 = v26;
          _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Allowed web app: %{private}@", buf, 0x16u);
        }
      }

      v23 = [(NSSet *)v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v23);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = self->_deniedWebApplications;
  v28 = [(NSSet *)v27 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v38;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(*(&v37 + 1) + 8 * m);
          *buf = 138543619;
          v57 = prefixCopy;
          v58 = 2113;
          v59 = v32;
          _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied web app: %{private}@", buf, 0x16u);
        }
      }

      v29 = [(NSSet *)v27 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v29);
  }

  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    senderConfiguration = self->_senderConfiguration;
    *buf = 138543619;
    v57 = prefixCopy;
    v58 = 2113;
    v59 = senderConfiguration;
    _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] senderConfiguration: %{private}@", buf, 0x16u);
  }

  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v57 = prefixCopy;
    _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] End secure configuration", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  senderConfiguration = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
  v4 = [senderConfiguration hash];
  allowedApplications = [(DNDSConfigurationSecureRecord *)self allowedApplications];
  v6 = [allowedApplications hash] ^ v4;
  deniedApplications = [(DNDSConfigurationSecureRecord *)self deniedApplications];
  v8 = [deniedApplications hash];
  allowedWebApplications = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
  v10 = v6 ^ v8 ^ [allowedWebApplications hash];
  deniedWebApplications = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
  v12 = [deniedWebApplications hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      senderConfiguration = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
      senderConfiguration2 = [(DNDSConfigurationSecureRecord *)v5 senderConfiguration];
      if (senderConfiguration != senderConfiguration2)
      {
        senderConfiguration3 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
        if (!senderConfiguration3)
        {
          v11 = 0;
          goto LABEL_56;
        }

        senderConfiguration4 = [(DNDSConfigurationSecureRecord *)v5 senderConfiguration];
        if (!senderConfiguration4)
        {
          v11 = 0;
LABEL_55:

          goto LABEL_56;
        }

        senderConfiguration5 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
        senderConfiguration6 = [(DNDSConfigurationSecureRecord *)v5 senderConfiguration];
        if (![senderConfiguration5 isEqual:senderConfiguration6])
        {
          v11 = 0;
LABEL_54:

          goto LABEL_55;
        }

        v59 = senderConfiguration6;
        v60 = senderConfiguration5;
        v61 = senderConfiguration4;
      }

      allowedApplications = [(DNDSConfigurationSecureRecord *)self allowedApplications];
      allowedApplications2 = [(DNDSConfigurationSecureRecord *)v5 allowedApplications];
      if (allowedApplications != allowedApplications2)
      {
        allowedApplications3 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
        if (allowedApplications3)
        {
          v15 = allowedApplications3;
          v62 = allowedApplications;
          allowedApplications4 = [(DNDSConfigurationSecureRecord *)v5 allowedApplications];
          if (allowedApplications4)
          {
            v17 = allowedApplications4;
            allowedApplications5 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
            allowedApplications6 = [(DNDSConfigurationSecureRecord *)v5 allowedApplications];
            if ([allowedApplications5 isEqual:allowedApplications6])
            {
              v54 = allowedApplications5;
              v55 = allowedApplications6;
              v52 = v17;
              v53 = v15;
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

LABEL_52:
        v11 = 0;
        goto LABEL_53;
      }

      v62 = allowedApplications;
LABEL_17:
      deniedApplications = [(DNDSConfigurationSecureRecord *)self deniedApplications];
      deniedApplications2 = [(DNDSConfigurationSecureRecord *)v5 deniedApplications];
      if (deniedApplications == deniedApplications2)
      {
        v58 = deniedApplications;
LABEL_26:
        allowedWebApplications = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
        [(DNDSConfigurationSecureRecord *)v5 allowedWebApplications];
        v27 = v57 = allowedWebApplications;
        if (allowedWebApplications == v27)
        {
          v50 = deniedApplications2;
          goto LABEL_34;
        }

        allowedWebApplications2 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
        v29 = deniedApplications2;
        if (allowedWebApplications2)
        {
          v49 = allowedWebApplications2;
          allowedWebApplications3 = [(DNDSConfigurationSecureRecord *)v5 allowedWebApplications];
          if (allowedWebApplications3)
          {
            v50 = deniedApplications2;
            v46 = allowedWebApplications3;
            allowedWebApplications4 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
            allowedWebApplications5 = [(DNDSConfigurationSecureRecord *)v5 allowedWebApplications];
            if ([allowedWebApplications4 isEqual:allowedWebApplications5])
            {
              v44 = allowedWebApplications5;
              v45 = allowedWebApplications4;
LABEL_34:
              deniedWebApplications = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
              deniedWebApplications2 = [(DNDSConfigurationSecureRecord *)v5 deniedWebApplications];
              v35 = deniedWebApplications2;
              if (deniedWebApplications == deniedWebApplications2)
              {

                v11 = 1;
              }

              else
              {
                deniedWebApplications3 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
                if (deniedWebApplications3)
                {
                  v43 = deniedWebApplications3;
                  deniedWebApplications4 = [(DNDSConfigurationSecureRecord *)v5 deniedWebApplications];
                  if (deniedWebApplications4)
                  {
                    v42 = deniedWebApplications4;
                    deniedWebApplications5 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
                    deniedWebApplications6 = [(DNDSConfigurationSecureRecord *)v5 deniedWebApplications];
                    v11 = [deniedWebApplications5 isEqual:?];

                    deniedWebApplications4 = v42;
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                else
                {

                  v11 = 0;
                }
              }

              if (v57 != v27)
              {
              }

              if (v58 != v50)
              {
              }

              if (v62 != allowedApplications2)
              {
              }

LABEL_53:
              senderConfiguration5 = v60;
              senderConfiguration4 = v61;
              senderConfiguration6 = v59;
              if (senderConfiguration != senderConfiguration2)
              {
                goto LABEL_54;
              }

LABEL_56:

              goto LABEL_57;
            }

            allowedWebApplications3 = v46;
            v29 = deniedApplications2;
          }
        }

        else
        {
        }

        if (v58 != v29)
        {
        }

        v39 = v62;
        if (v62 == allowedApplications2)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      deniedApplications3 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
      if (deniedApplications3)
      {
        v56 = deniedApplications3;
        deniedApplications4 = [(DNDSConfigurationSecureRecord *)v5 deniedApplications];
        if (deniedApplications4)
        {
          v58 = deniedApplications;
          v51 = deniedApplications4;
          deniedApplications5 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
          deniedApplications6 = [(DNDSConfigurationSecureRecord *)v5 deniedApplications];
          if ([deniedApplications5 isEqual:deniedApplications6])
          {
            v47 = deniedApplications6;
            v48 = deniedApplications5;
            goto LABEL_26;
          }

LABEL_41:
          v39 = v62;
          if (v62 == allowedApplications2)
          {
LABEL_51:

            goto LABEL_52;
          }

LABEL_50:

          goto LABEL_51;
        }
      }

      goto LABEL_41;
    }

    v11 = 0;
  }

LABEL_57:

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  senderConfiguration = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
  allowedApplications = [(DNDSConfigurationSecureRecord *)self allowedApplications];
  deniedApplications = [(DNDSConfigurationSecureRecord *)self deniedApplications];
  allowedWebApplications = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
  deniedWebApplications = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
  v10 = [v3 stringWithFormat:@"<%@: %p senderConfiguration: %@; ; allowedApplications: %@; ; deniedApplications: %@; ; allowedWebApplications: %@; ; deniedWebApplications: %@; >", v4, self, senderConfiguration, allowedApplications, deniedApplications, allowedWebApplications, deniedWebApplications];;

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableConfigurationSecureRecord alloc];

  return [(DNDSConfigurationSecureRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v88 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  contextCopy = context;
  v7 = [representationCopy bs_safeDictionaryForKey:@"senderConfiguration"];
  v54 = [DNDSSenderConfigurationRecord newWithDictionaryRepresentation:v7 context:contextCopy];

  v60 = [representationCopy bs_safeDictionaryForKey:@"platforms"];
  v55 = representationCopy;
  v8 = [representationCopy bs_safeDictionaryForKey:@"allowedApplications"];
  v59 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v80 + 1) + 8 * i);
        v14 = [v60 objectForKeyedSubscript:v13];
        unsignedIntegerValue = [v14 unsignedIntegerValue];

        v16 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v13 platform:unsignedIntegerValue];
        applicationIdentifierMapper = [contextCopy applicationIdentifierMapper];
        v18 = [applicationIdentifierMapper applicationIdentifierForFileWithSourceApplicationIdentifier:v16];

        bundleID = [v18 bundleID];
        v20 = [obj objectForKey:bundleID];
        v21 = [DNDSApplicationConfigurationRecord newWithDictionaryRepresentation:v20 context:contextCopy];

        [v59 setObject:v21 forKey:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v10);
  }

  v22 = [v55 bs_safeArrayForKey:@"silencedApplications"];
  v23 = [MEMORY[0x277CBEB58] set];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v76 objects:v86 count:16];
  v56 = v24;
  v57 = v23;
  if (v25)
  {
    v26 = v25;
    v27 = *v77;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v77 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v76 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v29 platform:0];
LABEL_17:
          [v23 addObject:v30];

          continue;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [MEMORY[0x277D058C8] newWithDictionaryRepresentation:v29 context:contextCopy];
          applicationIdentifierMapper2 = [contextCopy applicationIdentifierMapper];
          v30 = [applicationIdentifierMapper2 applicationIdentifierForFileWithSourceApplicationIdentifier:v31];

          v24 = v56;
          v23 = v57;
          goto LABEL_17;
        }

        if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
        {
          [DNDSConfigurationSecureRecord newWithDictionaryRepresentation:v75 context:?];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v26);
  }

  v33 = [v55 bs_safeArrayForKey:@"allowedWebApplications"];
  v58 = [MEMORY[0x277CBEB58] set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v71;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v71 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v70 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = [MEMORY[0x277D05AC8] newWithDictionaryRepresentation:v39 context:contextCopy];
          [v58 addObject:v40];
        }

        else if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
        {
          [DNDSConfigurationSecureRecord newWithDictionaryRepresentation:v69 context:?];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v36);
  }

  v41 = [v55 bs_safeArrayForKey:@"silencedWebApplications"];
  v42 = [MEMORY[0x277CBEB58] set];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v43 = v41;
  v44 = [v43 countByEnumeratingWithState:&v64 objects:v84 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v65;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v64 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = [MEMORY[0x277D05AC8] newWithDictionaryRepresentation:v48 context:contextCopy];
          [v42 addObject:v49];
        }

        else if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
        {
          [DNDSConfigurationSecureRecord newWithDictionaryRepresentation:v63 context:?];
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v64 objects:v84 count:16];
    }

    while (v45);
  }

  v50 = [[self alloc] _initWithSenderConfiguration:v54 allowedApplications:v59 deniedApplications:v57 allowedWebApplications:v58 deniedWebApplications:v42];
  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v88 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  healingSource = [contextCopy healingSource];
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

  senderConfiguration = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
  v63 = v8;
  [v8 setDictionaryRepresentationOfRecord:senderConfiguration forKey:@"senderConfiguration" context:contextCopy];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  allowedApplications = [(DNDSConfigurationSecureRecord *)self allowedApplications];
  v11 = [allowedApplications countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v81;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(allowedApplications);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        allowedApplications2 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
        v17 = [allowedApplications2 objectForKeyedSubscript:v15];

        destination = [contextCopy destination];
        if (!destination)
        {
          applicationIdentifierMapper = [contextCopy applicationIdentifierMapper];
          v20 = [applicationIdentifierMapper applicationIdentifierForSyncWithSourceApplicationIdentifier:v15];
          goto LABEL_13;
        }

        if (destination == 1)
        {
          applicationIdentifierMapper = [contextCopy applicationIdentifierMapper];
          v20 = [applicationIdentifierMapper applicationIdentifierForFileWithSourceApplicationIdentifier:v15];
LABEL_13:
          v21 = v20;

          goto LABEL_15;
        }

        v21 = 0;
LABEL_15:
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "platform")}];
        bundleID = [v21 bundleID];
        [dictionary3 setObject:v22 forKeyedSubscript:bundleID];

        bundleID2 = [v21 bundleID];
        [dictionary2 setDictionaryRepresentationOfRecord:v17 forKey:bundleID2 context:contextCopy];
      }

      v12 = [allowedApplications countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v12);
  }

  array = [MEMORY[0x277CBEB18] array];
  v26 = [contextCopy mutableCopy];
  healingSource2 = [contextCopy healingSource];
  v28 = [healingSource2 objectForKeyedSubscript:@"silencedApplications"];
  v64 = v26;
  [v26 setArrayHealingSource:v28];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  deniedApplications = [(DNDSConfigurationSecureRecord *)self deniedApplications];
  v30 = [deniedApplications countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = v30;
  v32 = *v77;
  do
  {
    for (j = 0; j != v31; ++j)
    {
      if (*v77 != v32)
      {
        objc_enumerationMutation(deniedApplications);
      }

      v34 = *(*(&v76 + 1) + 8 * j);
      destination2 = [contextCopy destination];
      if (!destination2)
      {
        applicationIdentifierMapper2 = [contextCopy applicationIdentifierMapper];
        v37 = [applicationIdentifierMapper2 applicationIdentifierForSyncWithSourceApplicationIdentifier:v34];
        goto LABEL_26;
      }

      if (destination2 == 1)
      {
        applicationIdentifierMapper2 = [contextCopy applicationIdentifierMapper];
        v37 = [applicationIdentifierMapper2 applicationIdentifierForFileWithSourceApplicationIdentifier:v34];
LABEL_26:
        v38 = v37;

        goto LABEL_28;
      }

      v38 = 0;
LABEL_28:
      v39 = [v38 dictionaryRepresentationWithContext:v64];
      [array addObject:v39];
    }

    v31 = [deniedApplications countByEnumeratingWithState:&v76 objects:v86 count:16];
  }

  while (v31);
LABEL_30:

  [v63 bs_setSafeObject:dictionary2 forKey:@"allowedApplications"];
  [v63 bs_setSafeObject:dictionary3 forKey:@"platforms"];
  v62 = array;
  [v63 bs_setSafeObject:array forKey:@"silencedApplications"];
  array2 = [MEMORY[0x277CBEB18] array];
  v41 = [contextCopy mutableCopy];
  healingSource3 = [contextCopy healingSource];
  v43 = [healingSource3 objectForKeyedSubscript:@"allowedWebApplications"];
  [v41 setArrayHealingSource:v43];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  allowedWebApplications = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
  v45 = [allowedWebApplications countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v73;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v73 != v47)
        {
          objc_enumerationMutation(allowedWebApplications);
        }

        v49 = [*(*(&v72 + 1) + 8 * k) dictionaryRepresentationWithContext:v41];
        [array2 addObject:v49];
      }

      v46 = [allowedWebApplications countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v46);
  }

  [v63 bs_setSafeObject:array2 forKey:@"allowedWebApplications"];
  array3 = [MEMORY[0x277CBEB18] array];
  v51 = [contextCopy mutableCopy];
  healingSource4 = [contextCopy healingSource];
  v53 = [healingSource4 objectForKeyedSubscript:@"silencedWebApplications"];
  [v51 setArrayHealingSource:v53];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  deniedWebApplications = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
  v55 = [deniedWebApplications countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v69;
    do
    {
      for (m = 0; m != v56; ++m)
      {
        if (*v69 != v57)
        {
          objc_enumerationMutation(deniedWebApplications);
        }

        v59 = [*(*(&v68 + 1) + 8 * m) dictionaryRepresentationWithContext:v51];
        [array3 addObject:v59];
      }

      v56 = [deniedWebApplications countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v56);
  }

  [v63 bs_setSafeObject:array3 forKey:@"silencedWebApplications"];
  v60 = *MEMORY[0x277D85DE8];

  return v63;
}

@end