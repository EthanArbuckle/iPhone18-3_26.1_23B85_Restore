@interface DNDSConfigurationSecureRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithRecord:(id)a3;
- (id)_initWithSenderConfiguration:(id)a3 allowedApplications:(id)a4 deniedApplications:(id)a5 allowedWebApplications:(id)a6 deniedWebApplications:(id)a7;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)log:(id)a3 withPrefix:(id)a4;
@end

@implementation DNDSConfigurationSecureRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 senderConfiguration];
  v6 = [v4 allowedApplications];
  v7 = [v4 deniedApplications];
  v8 = [v4 allowedWebApplications];
  v9 = [v4 deniedWebApplications];

  v10 = [(DNDSConfigurationSecureRecord *)self _initWithSenderConfiguration:v5 allowedApplications:v6 deniedApplications:v7 allowedWebApplications:v8 deniedWebApplications:v9];
  return v10;
}

- (id)_initWithSenderConfiguration:(id)a3 allowedApplications:(id)a4 deniedApplications:(id)a5 allowedWebApplications:(id)a6 deniedWebApplications:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v39.receiver = self;
  v39.super_class = DNDSConfigurationSecureRecord;
  v17 = [(DNDSConfigurationSecureRecord *)&v39 init];
  if (v17)
  {
    v18 = [v12 copy];
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

    v22 = [v13 copy];
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

    v26 = [v14 copy];
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

    v30 = [v15 copy];
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

    v34 = [v16 copy];
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

- (void)log:(id)a3 withPrefix:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v57 = v6;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin secure configuration", buf, 0xCu);
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
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v57 = v6;
          v58 = 2113;
          v59 = v13;
          v60 = 2113;
          v61 = v14;
          _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Allowed app: %{private}@; %{private}@", buf, 0x20u);
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

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(*(&v45 + 1) + 8 * j);
          *buf = 138543619;
          v57 = v6;
          v58 = 2113;
          v59 = v20;
          _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied app: %{private}@", buf, 0x16u);
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

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(*(&v41 + 1) + 8 * k);
          *buf = 138543619;
          v57 = v6;
          v58 = 2113;
          v59 = v26;
          _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Allowed web app: %{private}@", buf, 0x16u);
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

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(*(&v37 + 1) + 8 * m);
          *buf = 138543619;
          v57 = v6;
          v58 = 2113;
          v59 = v32;
          _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Denied web app: %{private}@", buf, 0x16u);
        }
      }

      v29 = [(NSSet *)v27 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v29);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    senderConfiguration = self->_senderConfiguration;
    *buf = 138543619;
    v57 = v6;
    v58 = 2113;
    v59 = senderConfiguration;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] senderConfiguration: %{private}@", buf, 0x16u);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v57 = v6;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] End secure configuration", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
  v4 = [v3 hash];
  v5 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
  v8 = [v7 hash];
  v9 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
      v7 = [(DNDSConfigurationSecureRecord *)v5 senderConfiguration];
      if (v6 != v7)
      {
        v63 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
        if (!v63)
        {
          v11 = 0;
          goto LABEL_56;
        }

        v8 = [(DNDSConfigurationSecureRecord *)v5 senderConfiguration];
        if (!v8)
        {
          v11 = 0;
LABEL_55:

          goto LABEL_56;
        }

        v9 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
        v10 = [(DNDSConfigurationSecureRecord *)v5 senderConfiguration];
        if (![v9 isEqual:v10])
        {
          v11 = 0;
LABEL_54:

          goto LABEL_55;
        }

        v59 = v10;
        v60 = v9;
        v61 = v8;
      }

      v12 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
      v13 = [(DNDSConfigurationSecureRecord *)v5 allowedApplications];
      if (v12 != v13)
      {
        v14 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
        if (v14)
        {
          v15 = v14;
          v62 = v12;
          v16 = [(DNDSConfigurationSecureRecord *)v5 allowedApplications];
          if (v16)
          {
            v17 = v16;
            v18 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
            v19 = [(DNDSConfigurationSecureRecord *)v5 allowedApplications];
            if ([v18 isEqual:v19])
            {
              v54 = v18;
              v55 = v19;
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

      v62 = v12;
LABEL_17:
      v20 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
      v21 = [(DNDSConfigurationSecureRecord *)v5 deniedApplications];
      if (v20 == v21)
      {
        v58 = v20;
LABEL_26:
        v26 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
        [(DNDSConfigurationSecureRecord *)v5 allowedWebApplications];
        v27 = v57 = v26;
        if (v26 == v27)
        {
          v50 = v21;
          goto LABEL_34;
        }

        v28 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
        v29 = v21;
        if (v28)
        {
          v49 = v28;
          v30 = [(DNDSConfigurationSecureRecord *)v5 allowedWebApplications];
          if (v30)
          {
            v50 = v21;
            v46 = v30;
            v31 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
            v32 = [(DNDSConfigurationSecureRecord *)v5 allowedWebApplications];
            if ([v31 isEqual:v32])
            {
              v44 = v32;
              v45 = v31;
LABEL_34:
              v33 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
              v34 = [(DNDSConfigurationSecureRecord *)v5 deniedWebApplications];
              v35 = v34;
              if (v33 == v34)
              {

                v11 = 1;
              }

              else
              {
                v36 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
                if (v36)
                {
                  v43 = v36;
                  v37 = [(DNDSConfigurationSecureRecord *)v5 deniedWebApplications];
                  if (v37)
                  {
                    v42 = v37;
                    v41 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
                    v38 = [(DNDSConfigurationSecureRecord *)v5 deniedWebApplications];
                    v11 = [v41 isEqual:?];

                    v37 = v42;
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

              if (v62 != v13)
              {
              }

LABEL_53:
              v9 = v60;
              v8 = v61;
              v10 = v59;
              if (v6 != v7)
              {
                goto LABEL_54;
              }

LABEL_56:

              goto LABEL_57;
            }

            v30 = v46;
            v29 = v21;
          }
        }

        else
        {
        }

        if (v58 != v29)
        {
        }

        v39 = v62;
        if (v62 == v13)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v22 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
      if (v22)
      {
        v56 = v22;
        v23 = [(DNDSConfigurationSecureRecord *)v5 deniedApplications];
        if (v23)
        {
          v58 = v20;
          v51 = v23;
          v24 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
          v25 = [(DNDSConfigurationSecureRecord *)v5 deniedApplications];
          if ([v24 isEqual:v25])
          {
            v47 = v25;
            v48 = v24;
            goto LABEL_26;
          }

LABEL_41:
          v39 = v62;
          if (v62 == v13)
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
  v5 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
  v6 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
  v7 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
  v8 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
  v9 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
  v10 = [v3 stringWithFormat:@"<%@: %p senderConfiguration: %@; ; allowedApplications: %@; ; deniedApplications: %@; ; allowedWebApplications: %@; ; deniedWebApplications: %@; >", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableConfigurationSecureRecord alloc];

  return [(DNDSConfigurationSecureRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 bs_safeDictionaryForKey:@"senderConfiguration"];
  v54 = [DNDSSenderConfigurationRecord newWithDictionaryRepresentation:v7 context:v6];

  v60 = [v5 bs_safeDictionaryForKey:@"platforms"];
  v55 = v5;
  v8 = [v5 bs_safeDictionaryForKey:@"allowedApplications"];
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
        v15 = [v14 unsignedIntegerValue];

        v16 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v13 platform:v15];
        v17 = [v6 applicationIdentifierMapper];
        v18 = [v17 applicationIdentifierForFileWithSourceApplicationIdentifier:v16];

        v19 = [v18 bundleID];
        v20 = [obj objectForKey:v19];
        v21 = [DNDSApplicationConfigurationRecord newWithDictionaryRepresentation:v20 context:v6];

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
          v31 = [MEMORY[0x277D058C8] newWithDictionaryRepresentation:v29 context:v6];
          v32 = [v6 applicationIdentifierMapper];
          v30 = [v32 applicationIdentifierForFileWithSourceApplicationIdentifier:v31];

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
          v40 = [MEMORY[0x277D05AC8] newWithDictionaryRepresentation:v39 context:v6];
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
          v49 = [MEMORY[0x277D05AC8] newWithDictionaryRepresentation:v48 context:v6];
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

  v50 = [[a1 alloc] _initWithSenderConfiguration:v54 allowedApplications:v59 deniedApplications:v57 allowedWebApplications:v58 deniedWebApplications:v42];
  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 healingSource];
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

  v9 = [(DNDSConfigurationSecureRecord *)self senderConfiguration];
  v63 = v8;
  [v8 setDictionaryRepresentationOfRecord:v9 forKey:@"senderConfiguration" context:v3];

  v66 = [MEMORY[0x277CBEB38] dictionary];
  v65 = [MEMORY[0x277CBEB38] dictionary];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
  v11 = [v10 countByEnumeratingWithState:&v80 objects:v87 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        v16 = [(DNDSConfigurationSecureRecord *)self allowedApplications];
        v17 = [v16 objectForKeyedSubscript:v15];

        v18 = [v3 destination];
        if (!v18)
        {
          v19 = [v3 applicationIdentifierMapper];
          v20 = [v19 applicationIdentifierForSyncWithSourceApplicationIdentifier:v15];
          goto LABEL_13;
        }

        if (v18 == 1)
        {
          v19 = [v3 applicationIdentifierMapper];
          v20 = [v19 applicationIdentifierForFileWithSourceApplicationIdentifier:v15];
LABEL_13:
          v21 = v20;

          goto LABEL_15;
        }

        v21 = 0;
LABEL_15:
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "platform")}];
        v23 = [v21 bundleID];
        [v65 setObject:v22 forKeyedSubscript:v23];

        v24 = [v21 bundleID];
        [v66 setDictionaryRepresentationOfRecord:v17 forKey:v24 context:v3];
      }

      v12 = [v10 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v12);
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [v3 mutableCopy];
  v27 = [v3 healingSource];
  v28 = [v27 objectForKeyedSubscript:@"silencedApplications"];
  v64 = v26;
  [v26 setArrayHealingSource:v28];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v29 = [(DNDSConfigurationSecureRecord *)self deniedApplications];
  v30 = [v29 countByEnumeratingWithState:&v76 objects:v86 count:16];
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
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v76 + 1) + 8 * j);
      v35 = [v3 destination];
      if (!v35)
      {
        v36 = [v3 applicationIdentifierMapper];
        v37 = [v36 applicationIdentifierForSyncWithSourceApplicationIdentifier:v34];
        goto LABEL_26;
      }

      if (v35 == 1)
      {
        v36 = [v3 applicationIdentifierMapper];
        v37 = [v36 applicationIdentifierForFileWithSourceApplicationIdentifier:v34];
LABEL_26:
        v38 = v37;

        goto LABEL_28;
      }

      v38 = 0;
LABEL_28:
      v39 = [v38 dictionaryRepresentationWithContext:v64];
      [v25 addObject:v39];
    }

    v31 = [v29 countByEnumeratingWithState:&v76 objects:v86 count:16];
  }

  while (v31);
LABEL_30:

  [v63 bs_setSafeObject:v66 forKey:@"allowedApplications"];
  [v63 bs_setSafeObject:v65 forKey:@"platforms"];
  v62 = v25;
  [v63 bs_setSafeObject:v25 forKey:@"silencedApplications"];
  v40 = [MEMORY[0x277CBEB18] array];
  v41 = [v3 mutableCopy];
  v42 = [v3 healingSource];
  v43 = [v42 objectForKeyedSubscript:@"allowedWebApplications"];
  [v41 setArrayHealingSource:v43];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v44 = [(DNDSConfigurationSecureRecord *)self allowedWebApplications];
  v45 = [v44 countByEnumeratingWithState:&v72 objects:v85 count:16];
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
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v72 + 1) + 8 * k) dictionaryRepresentationWithContext:v41];
        [v40 addObject:v49];
      }

      v46 = [v44 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v46);
  }

  [v63 bs_setSafeObject:v40 forKey:@"allowedWebApplications"];
  v50 = [MEMORY[0x277CBEB18] array];
  v51 = [v3 mutableCopy];
  v52 = [v3 healingSource];
  v53 = [v52 objectForKeyedSubscript:@"silencedWebApplications"];
  [v51 setArrayHealingSource:v53];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v54 = [(DNDSConfigurationSecureRecord *)self deniedWebApplications];
  v55 = [v54 countByEnumeratingWithState:&v68 objects:v84 count:16];
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
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v68 + 1) + 8 * m) dictionaryRepresentationWithContext:v51];
        [v50 addObject:v59];
      }

      v56 = [v54 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v56);
  }

  [v63 bs_setSafeObject:v50 forKey:@"silencedWebApplications"];
  v60 = *MEMORY[0x277D85DE8];

  return v63;
}

@end