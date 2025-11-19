@interface DNDSSenderConfigurationRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithAllowedContactTypes:(id)a3 deniedContactTypes:(id)a4 allowedContactGroups:(id)a5 deniedContactGroups:(id)a6 allowedContacts:(id)a7 deniedContacts:(id)a8 phoneCallBypassSettings:(id)a9;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSSenderConfigurationRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 allowedContactTypes];
  v6 = [v4 deniedContactTypes];
  v7 = [v4 allowedContactGroups];
  v8 = [v4 deniedContactGroups];
  v9 = [v4 allowedContacts];
  v10 = [v4 deniedContacts];
  v11 = [v4 phoneCallBypassSettings];

  v12 = [(DNDSSenderConfigurationRecord *)self _initWithAllowedContactTypes:v5 deniedContactTypes:v6 allowedContactGroups:v7 deniedContactGroups:v8 allowedContacts:v9 deniedContacts:v10 phoneCallBypassSettings:v11];
  return v12;
}

- (id)_initWithAllowedContactTypes:(id)a3 deniedContactTypes:(id)a4 allowedContactGroups:(id)a5 deniedContactGroups:(id)a6 allowedContacts:(id)a7 deniedContacts:(id)a8 phoneCallBypassSettings:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v50.receiver = self;
  v50.super_class = DNDSSenderConfigurationRecord;
  v22 = [(DNDSSenderConfigurationRecord *)&v50 init];
  if (v22)
  {
    v23 = [v15 copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    allowedContactTypes = v22->_allowedContactTypes;
    v22->_allowedContactTypes = v25;

    v27 = [v16 copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = objc_opt_new();
    }

    deniedContactTypes = v22->_deniedContactTypes;
    v22->_deniedContactTypes = v29;

    v31 = [v17 copy];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = objc_opt_new();
    }

    allowedContactGroups = v22->_allowedContactGroups;
    v22->_allowedContactGroups = v33;

    v35 = [v18 copy];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = objc_opt_new();
    }

    deniedContactGroups = v22->_deniedContactGroups;
    v22->_deniedContactGroups = v37;

    v39 = [v19 copy];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = objc_opt_new();
    }

    allowedContacts = v22->_allowedContacts;
    v22->_allowedContacts = v41;

    v43 = [v20 copy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = objc_opt_new();
    }

    deniedContacts = v22->_deniedContacts;
    v22->_deniedContacts = v45;

    v47 = [v21 copy];
    phoneCallBypassSettings = v22->_phoneCallBypassSettings;
    v22->_phoneCallBypassSettings = v47;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
  v4 = [v3 hash];
  v5 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
  v8 = [v7 hash];
  v9 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
  v12 = [v11 hash];
  v13 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
  v14 = v10 ^ v12 ^ [v13 hash];
  v15 = [(DNDSBypassSettingsRecord *)self->_phoneCallBypassSettings hash];

  return v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
      v7 = [(DNDSSenderConfigurationRecord *)v5 allowedContactTypes];
      if (v6 != v7)
      {
        v8 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_77;
        }

        v9 = v8;
        v10 = [(DNDSSenderConfigurationRecord *)v5 allowedContactTypes];
        if (!v10)
        {
          v13 = 0;
LABEL_76:

          goto LABEL_77;
        }

        v11 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
        v12 = [(DNDSSenderConfigurationRecord *)v5 allowedContactTypes];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_75:

          goto LABEL_76;
        }

        v84 = v9;
        v85 = v12;
        v86 = v11;
        v87 = v10;
      }

      v14 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
      v15 = [(DNDSSenderConfigurationRecord *)v5 deniedContactTypes];
      if (v14 != v15)
      {
        v16 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
        if (v16)
        {
          v17 = v16;
          v88 = v14;
          v18 = [(DNDSSenderConfigurationRecord *)v5 deniedContactTypes];
          if (v18)
          {
            v19 = v18;
            v14 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
            v20 = [(DNDSSenderConfigurationRecord *)v5 deniedContactTypes];
            if ([v14 isEqual:v20])
            {
              v81 = v20;
              v82 = v14;
              v78 = v19;
              v79 = v17;
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

LABEL_73:
        v13 = 0;
        goto LABEL_74;
      }

      v88 = v14;
LABEL_17:
      v21 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
      v22 = [(DNDSSenderConfigurationRecord *)v5 allowedContactGroups];
      if (v21 == v22)
      {
        goto LABEL_25;
      }

      v23 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
      if (v23)
      {
        v80 = v23;
        v24 = [(DNDSSenderConfigurationRecord *)v5 allowedContactGroups];
        if (v24)
        {
          v77 = v24;
          v25 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
          v14 = [(DNDSSenderConfigurationRecord *)v5 allowedContactGroups];
          if ([v25 isEqual:v14])
          {
            v70 = v25;
LABEL_25:
            v26 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
            v83 = [(DNDSSenderConfigurationRecord *)v5 deniedContactGroups];
            if (v26 == v83)
            {
              v76 = v22;
              v31 = v14;
              v73 = v21;
LABEL_33:
              v32 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
              [(DNDSSenderConfigurationRecord *)v5 allowedContacts];
              v72 = v71 = v32;
              v75 = v31;
              if (v32 == v72)
              {
                goto LABEL_42;
              }

              v33 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
              if (v33)
              {
                v66 = v33;
                v34 = [(DNDSSenderConfigurationRecord *)v5 allowedContacts];
                if (!v34)
                {

                  v50 = v76;
                  if (v26 != v83)
                  {
                  }

                  v51 = v73;
LABEL_67:
                  v44 = v82;
                  if (v51 != v50)
                  {
                  }

                  v37 = v88;
                  if (v88 == v15)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_70;
                }

                v63 = v34;
                v35 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
                v36 = [(DNDSSenderConfigurationRecord *)v5 allowedContacts];
                if ([v35 isEqual:v36])
                {
                  v60 = v36;
                  v61 = v35;
LABEL_42:
                  v38 = v76;
                  v39 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
                  v67 = [(DNDSSenderConfigurationRecord *)v5 deniedContacts];
                  if (v39 == v67)
                  {
LABEL_56:
                    v45 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
                    v46 = [(DNDSSenderConfigurationRecord *)v5 phoneCallBypassSettings];
                    if (v45 == v46)
                    {

                      v13 = 1;
                    }

                    else
                    {
                      v58 = v46;
                      v47 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
                      if (v47)
                      {
                        v55 = v47;
                        v48 = [(DNDSSenderConfigurationRecord *)v5 phoneCallBypassSettings];
                        if (v48)
                        {
                          v54 = v48;
                          v53 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
                          v49 = [(DNDSSenderConfigurationRecord *)v5 phoneCallBypassSettings];
                          v13 = [v53 isEqual:v49];

                          v48 = v54;
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
                    }

                    if (v39 != v67)
                    {
                    }

                    if (v71 != v72)
                    {
                    }

                    if (v26 != v83)
                    {
                    }

                    if (v73 != v76)
                    {
                    }

                    if (v88 != v15)
                    {
                    }

LABEL_74:
                    v11 = v86;
                    v10 = v87;
                    v9 = v84;
                    v12 = v85;
                    if (v6 != v7)
                    {
                      goto LABEL_75;
                    }

LABEL_77:

                    goto LABEL_78;
                  }

                  v40 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
                  if (v40)
                  {
                    v62 = v40;
                    v41 = [(DNDSSenderConfigurationRecord *)v5 deniedContacts];
                    if (v41)
                    {
                      v59 = v41;
                      v42 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
                      v43 = [(DNDSSenderConfigurationRecord *)v5 deniedContacts];
                      if ([v42 isEqual:v43])
                      {
                        v56 = v42;
                        v57 = v43;
                        goto LABEL_56;
                      }

                      v41 = v59;
                      v38 = v76;
                    }
                  }

                  if (v71 != v72)
                  {
                  }

                  if (v26 != v83)
                  {
                  }

                  if (v73 != v38)
                  {
                  }

                  v37 = v88;
                  if (v88 == v15)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_41;
                }
              }

              if (v26 != v83)
              {
              }

              v51 = v73;
              v50 = v76;
              goto LABEL_67;
            }

            v27 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
            if (v27)
            {
              v69 = v27;
              v28 = [(DNDSSenderConfigurationRecord *)v5 deniedContactGroups];
              if (v28)
              {
                v73 = v21;
                v74 = v14;
                v68 = v28;
                v29 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
                v30 = [(DNDSSenderConfigurationRecord *)v5 deniedContactGroups];
                if ([v29 isEqual:v30])
                {
                  v76 = v22;
                  v64 = v30;
                  v65 = v29;
                  v31 = v74;
                  goto LABEL_33;
                }

                if (v73 != v22)
                {
                }

                goto LABEL_54;
              }
            }

            if (v21 != v22)
            {
            }

LABEL_54:
            v37 = v88;
            v44 = v82;
            if (v88 != v15)
            {
LABEL_70:

              goto LABEL_71;
            }

LABEL_72:

            goto LABEL_73;
          }
        }
      }

      v37 = v88;
      if (v88 != v15)
      {
LABEL_41:

LABEL_71:
        goto LABEL_72;
      }

      goto LABEL_72;
    }

    v13 = 0;
  }

LABEL_78:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
  v6 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
  v7 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
  v8 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
  v9 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
  v10 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
  v11 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
  v12 = [v3 stringWithFormat:@"<%@: %p allowedContactTypes: %@; ; deniedContactTypes: %@; ; allowedContactGroups: %@; ; deniedContactGroups: %@; ; allowedContacts: %@; ; deniedContacts: %@; ; phoneCallBypassSettings: %@; >", v4, self, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableSenderConfigurationRecord alloc];

  return [(DNDSSenderConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = [v5 bs_safeArrayForKey:@"allowedContactTypes"];
  v44 = [v7 setWithArray:v8];

  v9 = MEMORY[0x277CBEB98];
  v10 = [v5 bs_safeArrayForKey:@"deniedContactTypes"];
  v43 = [v9 setWithArray:v10];

  v11 = MEMORY[0x277CBEB98];
  v12 = [v5 bs_safeArrayForKey:@"allowedContactGroups"];
  v40 = [v11 setWithArray:v12];

  v13 = MEMORY[0x277CBEB98];
  v14 = [v5 bs_safeArrayForKey:@"deniedContactGroups"];
  v39 = [v13 setWithArray:v14];

  v15 = MEMORY[0x277CBEB98];
  v16 = [v5 bs_safeArrayForKey:@"allowedContacts"];
  v17 = [v15 setWithArray:v16];

  v18 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      v23 = 0;
      do
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [DNDSContactRecord newWithDictionaryRepresentation:*(*(&v50 + 1) + 8 * v23) context:v6];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v21);
  }

  v25 = MEMORY[0x277CBEB98];
  v45 = v5;
  v26 = [v5 bs_safeArrayForKey:@"silencedContacts"];
  v27 = [v25 setWithArray:v26];

  v28 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = v27;
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      v33 = 0;
      do
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [DNDSContactRecord newWithDictionaryRepresentation:*(*(&v46 + 1) + 8 * v33) context:v6];
        [v28 addObject:v34];

        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v31);
  }

  v35 = [v45 bs_safeDictionaryForKey:@"phoneCallBypassSettings"];
  v36 = [DNDSBypassSettingsRecord newWithDictionaryRepresentation:v35 context:v6];
  v42 = [[a1 alloc] _initWithAllowedContactTypes:v44 deniedContactTypes:v43 allowedContactGroups:v40 deniedContactGroups:v39 allowedContacts:v18 deniedContacts:v28 phoneCallBypassSettings:v36];

  v37 = *MEMORY[0x277D85DE8];
  return v42;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 healingSource];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;

  v10 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
  v11 = [v10 allObjects];
  [v9 bs_setSafeObject:v11 forKey:@"allowedContactTypes"];

  v12 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
  v13 = [v12 allObjects];
  [v9 bs_setSafeObject:v13 forKey:@"deniedContactTypes"];

  v14 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
  v15 = [v14 allObjects];
  [v9 bs_setSafeObject:v15 forKey:@"allowedContactGroups"];

  v16 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
  v17 = [v16 allObjects];
  [v9 bs_setSafeObject:v17 forKey:@"deniedContactGroups"];

  if ([v4 redactSensitiveData])
  {
    [v9 setObject:0 forKeyedSubscript:@"allowedContacts"];
    [v9 setObject:0 forKeyedSubscript:@"silencedContacts"];
  }

  else
  {
    v18 = [v4 mutableCopy];
    v19 = [v4 healingSource];
    v20 = [v19 objectForKeyedSubscript:@"allowedContacts"];
    [v18 setArrayHealingSource:v20];

    v21 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
    v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v49;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentationWithContext:v18];
          [v21 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v24);
    }

    v28 = [v21 allObjects];
    [v9 bs_setSafeObject:v28 forKey:@"allowedContacts"];

    v43 = v4;
    v29 = [v4 healingSource];
    v30 = [v29 objectForKeyedSubscript:@"silencedContacts"];
    [v18 setArrayHealingSource:v30];

    v31 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
    v33 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v45;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentationWithContext:v18];
          [v31 addObject:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v34);
    }

    v38 = [v31 allObjects];
    [v9 bs_setSafeObject:v38 forKey:@"silencedContacts"];

    v4 = v43;
  }

  v39 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];

  if (v39)
  {
    v40 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
    [v9 setDictionaryRepresentationOfRecord:v40 forKey:@"phoneCallBypassSettings" context:v4];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v9;
}

@end