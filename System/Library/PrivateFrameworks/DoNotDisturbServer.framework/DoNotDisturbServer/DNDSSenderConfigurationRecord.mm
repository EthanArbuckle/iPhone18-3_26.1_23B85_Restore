@interface DNDSSenderConfigurationRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithAllowedContactTypes:(id)types deniedContactTypes:(id)contactTypes allowedContactGroups:(id)groups deniedContactGroups:(id)contactGroups allowedContacts:(id)contacts deniedContacts:(id)deniedContacts phoneCallBypassSettings:(id)settings;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSSenderConfigurationRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  allowedContactTypes = [recordCopy allowedContactTypes];
  deniedContactTypes = [recordCopy deniedContactTypes];
  allowedContactGroups = [recordCopy allowedContactGroups];
  deniedContactGroups = [recordCopy deniedContactGroups];
  allowedContacts = [recordCopy allowedContacts];
  deniedContacts = [recordCopy deniedContacts];
  phoneCallBypassSettings = [recordCopy phoneCallBypassSettings];

  v12 = [(DNDSSenderConfigurationRecord *)self _initWithAllowedContactTypes:allowedContactTypes deniedContactTypes:deniedContactTypes allowedContactGroups:allowedContactGroups deniedContactGroups:deniedContactGroups allowedContacts:allowedContacts deniedContacts:deniedContacts phoneCallBypassSettings:phoneCallBypassSettings];
  return v12;
}

- (id)_initWithAllowedContactTypes:(id)types deniedContactTypes:(id)contactTypes allowedContactGroups:(id)groups deniedContactGroups:(id)contactGroups allowedContacts:(id)contacts deniedContacts:(id)deniedContacts phoneCallBypassSettings:(id)settings
{
  typesCopy = types;
  contactTypesCopy = contactTypes;
  groupsCopy = groups;
  contactGroupsCopy = contactGroups;
  contactsCopy = contacts;
  deniedContactsCopy = deniedContacts;
  settingsCopy = settings;
  v50.receiver = self;
  v50.super_class = DNDSSenderConfigurationRecord;
  v22 = [(DNDSSenderConfigurationRecord *)&v50 init];
  if (v22)
  {
    v23 = [typesCopy copy];
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

    v27 = [contactTypesCopy copy];
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

    v31 = [groupsCopy copy];
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

    v35 = [contactGroupsCopy copy];
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

    v39 = [contactsCopy copy];
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

    v43 = [deniedContactsCopy copy];
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

    v47 = [settingsCopy copy];
    phoneCallBypassSettings = v22->_phoneCallBypassSettings;
    v22->_phoneCallBypassSettings = v47;
  }

  return v22;
}

- (unint64_t)hash
{
  allowedContactTypes = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
  v4 = [allowedContactTypes hash];
  deniedContactTypes = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
  v6 = [deniedContactTypes hash] ^ v4;
  allowedContactGroups = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
  v8 = [allowedContactGroups hash];
  deniedContactGroups = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
  v10 = v6 ^ v8 ^ [deniedContactGroups hash];
  allowedContacts = [(DNDSSenderConfigurationRecord *)self allowedContacts];
  v12 = [allowedContacts hash];
  deniedContacts = [(DNDSSenderConfigurationRecord *)self deniedContacts];
  v14 = v10 ^ v12 ^ [deniedContacts hash];
  v15 = [(DNDSBypassSettingsRecord *)self->_phoneCallBypassSettings hash];

  return v14 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      allowedContactTypes = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
      allowedContactTypes2 = [(DNDSSenderConfigurationRecord *)v5 allowedContactTypes];
      if (allowedContactTypes != allowedContactTypes2)
      {
        allowedContactTypes3 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
        if (!allowedContactTypes3)
        {
          v13 = 0;
          goto LABEL_77;
        }

        v9 = allowedContactTypes3;
        allowedContactTypes4 = [(DNDSSenderConfigurationRecord *)v5 allowedContactTypes];
        if (!allowedContactTypes4)
        {
          v13 = 0;
LABEL_76:

          goto LABEL_77;
        }

        allowedContactTypes5 = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
        allowedContactTypes6 = [(DNDSSenderConfigurationRecord *)v5 allowedContactTypes];
        if (![allowedContactTypes5 isEqual:allowedContactTypes6])
        {
          v13 = 0;
LABEL_75:

          goto LABEL_76;
        }

        v84 = v9;
        v85 = allowedContactTypes6;
        v86 = allowedContactTypes5;
        v87 = allowedContactTypes4;
      }

      deniedContactTypes = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
      deniedContactTypes2 = [(DNDSSenderConfigurationRecord *)v5 deniedContactTypes];
      if (deniedContactTypes != deniedContactTypes2)
      {
        deniedContactTypes3 = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
        if (deniedContactTypes3)
        {
          v17 = deniedContactTypes3;
          v88 = deniedContactTypes;
          deniedContactTypes4 = [(DNDSSenderConfigurationRecord *)v5 deniedContactTypes];
          if (deniedContactTypes4)
          {
            v19 = deniedContactTypes4;
            deniedContactTypes = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
            deniedContactTypes5 = [(DNDSSenderConfigurationRecord *)v5 deniedContactTypes];
            if ([deniedContactTypes isEqual:deniedContactTypes5])
            {
              v81 = deniedContactTypes5;
              v82 = deniedContactTypes;
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

      v88 = deniedContactTypes;
LABEL_17:
      allowedContactGroups = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
      allowedContactGroups2 = [(DNDSSenderConfigurationRecord *)v5 allowedContactGroups];
      if (allowedContactGroups == allowedContactGroups2)
      {
        goto LABEL_25;
      }

      allowedContactGroups3 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
      if (allowedContactGroups3)
      {
        v80 = allowedContactGroups3;
        allowedContactGroups4 = [(DNDSSenderConfigurationRecord *)v5 allowedContactGroups];
        if (allowedContactGroups4)
        {
          v77 = allowedContactGroups4;
          allowedContactGroups5 = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
          deniedContactTypes = [(DNDSSenderConfigurationRecord *)v5 allowedContactGroups];
          if ([allowedContactGroups5 isEqual:deniedContactTypes])
          {
            v70 = allowedContactGroups5;
LABEL_25:
            deniedContactGroups = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
            deniedContactGroups2 = [(DNDSSenderConfigurationRecord *)v5 deniedContactGroups];
            if (deniedContactGroups == deniedContactGroups2)
            {
              v76 = allowedContactGroups2;
              v31 = deniedContactTypes;
              v73 = allowedContactGroups;
LABEL_33:
              allowedContacts = [(DNDSSenderConfigurationRecord *)self allowedContacts];
              [(DNDSSenderConfigurationRecord *)v5 allowedContacts];
              v72 = v71 = allowedContacts;
              v75 = v31;
              if (allowedContacts == v72)
              {
                goto LABEL_42;
              }

              allowedContacts2 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
              if (allowedContacts2)
              {
                v66 = allowedContacts2;
                allowedContacts3 = [(DNDSSenderConfigurationRecord *)v5 allowedContacts];
                if (!allowedContacts3)
                {

                  v50 = v76;
                  if (deniedContactGroups != deniedContactGroups2)
                  {
                  }

                  v51 = v73;
LABEL_67:
                  v44 = v82;
                  if (v51 != v50)
                  {
                  }

                  v37 = v88;
                  if (v88 == deniedContactTypes2)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_70;
                }

                v63 = allowedContacts3;
                allowedContacts4 = [(DNDSSenderConfigurationRecord *)self allowedContacts];
                allowedContacts5 = [(DNDSSenderConfigurationRecord *)v5 allowedContacts];
                if ([allowedContacts4 isEqual:allowedContacts5])
                {
                  v60 = allowedContacts5;
                  v61 = allowedContacts4;
LABEL_42:
                  v38 = v76;
                  deniedContacts = [(DNDSSenderConfigurationRecord *)self deniedContacts];
                  deniedContacts2 = [(DNDSSenderConfigurationRecord *)v5 deniedContacts];
                  if (deniedContacts == deniedContacts2)
                  {
LABEL_56:
                    phoneCallBypassSettings = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
                    phoneCallBypassSettings2 = [(DNDSSenderConfigurationRecord *)v5 phoneCallBypassSettings];
                    if (phoneCallBypassSettings == phoneCallBypassSettings2)
                    {

                      v13 = 1;
                    }

                    else
                    {
                      v58 = phoneCallBypassSettings2;
                      phoneCallBypassSettings3 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
                      if (phoneCallBypassSettings3)
                      {
                        v55 = phoneCallBypassSettings3;
                        phoneCallBypassSettings4 = [(DNDSSenderConfigurationRecord *)v5 phoneCallBypassSettings];
                        if (phoneCallBypassSettings4)
                        {
                          v54 = phoneCallBypassSettings4;
                          phoneCallBypassSettings5 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
                          phoneCallBypassSettings6 = [(DNDSSenderConfigurationRecord *)v5 phoneCallBypassSettings];
                          v13 = [phoneCallBypassSettings5 isEqual:phoneCallBypassSettings6];

                          phoneCallBypassSettings4 = v54;
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

                    if (deniedContacts != deniedContacts2)
                    {
                    }

                    if (v71 != v72)
                    {
                    }

                    if (deniedContactGroups != deniedContactGroups2)
                    {
                    }

                    if (v73 != v76)
                    {
                    }

                    if (v88 != deniedContactTypes2)
                    {
                    }

LABEL_74:
                    allowedContactTypes5 = v86;
                    allowedContactTypes4 = v87;
                    v9 = v84;
                    allowedContactTypes6 = v85;
                    if (allowedContactTypes != allowedContactTypes2)
                    {
                      goto LABEL_75;
                    }

LABEL_77:

                    goto LABEL_78;
                  }

                  deniedContacts3 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
                  if (deniedContacts3)
                  {
                    v62 = deniedContacts3;
                    deniedContacts4 = [(DNDSSenderConfigurationRecord *)v5 deniedContacts];
                    if (deniedContacts4)
                    {
                      v59 = deniedContacts4;
                      deniedContacts5 = [(DNDSSenderConfigurationRecord *)self deniedContacts];
                      deniedContacts6 = [(DNDSSenderConfigurationRecord *)v5 deniedContacts];
                      if ([deniedContacts5 isEqual:deniedContacts6])
                      {
                        v56 = deniedContacts5;
                        v57 = deniedContacts6;
                        goto LABEL_56;
                      }

                      deniedContacts4 = v59;
                      v38 = v76;
                    }
                  }

                  if (v71 != v72)
                  {
                  }

                  if (deniedContactGroups != deniedContactGroups2)
                  {
                  }

                  if (v73 != v38)
                  {
                  }

                  v37 = v88;
                  if (v88 == deniedContactTypes2)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_41;
                }
              }

              if (deniedContactGroups != deniedContactGroups2)
              {
              }

              v51 = v73;
              v50 = v76;
              goto LABEL_67;
            }

            deniedContactGroups3 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
            if (deniedContactGroups3)
            {
              v69 = deniedContactGroups3;
              deniedContactGroups4 = [(DNDSSenderConfigurationRecord *)v5 deniedContactGroups];
              if (deniedContactGroups4)
              {
                v73 = allowedContactGroups;
                v74 = deniedContactTypes;
                v68 = deniedContactGroups4;
                deniedContactGroups5 = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
                deniedContactGroups6 = [(DNDSSenderConfigurationRecord *)v5 deniedContactGroups];
                if ([deniedContactGroups5 isEqual:deniedContactGroups6])
                {
                  v76 = allowedContactGroups2;
                  v64 = deniedContactGroups6;
                  v65 = deniedContactGroups5;
                  v31 = v74;
                  goto LABEL_33;
                }

                if (v73 != allowedContactGroups2)
                {
                }

                goto LABEL_54;
              }
            }

            if (allowedContactGroups != allowedContactGroups2)
            {
            }

LABEL_54:
            v37 = v88;
            v44 = v82;
            if (v88 != deniedContactTypes2)
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
      if (v88 != deniedContactTypes2)
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
  allowedContactTypes = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
  deniedContactTypes = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
  allowedContactGroups = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
  deniedContactGroups = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
  allowedContacts = [(DNDSSenderConfigurationRecord *)self allowedContacts];
  deniedContacts = [(DNDSSenderConfigurationRecord *)self deniedContacts];
  phoneCallBypassSettings = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
  v12 = [v3 stringWithFormat:@"<%@: %p allowedContactTypes: %@; ; deniedContactTypes: %@; ; allowedContactGroups: %@; ; deniedContactGroups: %@; ; allowedContacts: %@; ; deniedContacts: %@; ; phoneCallBypassSettings: %@; >", v4, self, allowedContactTypes, deniedContactTypes, allowedContactGroups, deniedContactGroups, allowedContacts, deniedContacts, phoneCallBypassSettings];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableSenderConfigurationRecord alloc];

  return [(DNDSSenderConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v56 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  contextCopy = context;
  v7 = MEMORY[0x277CBEB98];
  v8 = [representationCopy bs_safeArrayForKey:@"allowedContactTypes"];
  v44 = [v7 setWithArray:v8];

  v9 = MEMORY[0x277CBEB98];
  v10 = [representationCopy bs_safeArrayForKey:@"deniedContactTypes"];
  v43 = [v9 setWithArray:v10];

  v11 = MEMORY[0x277CBEB98];
  v12 = [representationCopy bs_safeArrayForKey:@"allowedContactGroups"];
  v40 = [v11 setWithArray:v12];

  v13 = MEMORY[0x277CBEB98];
  v14 = [representationCopy bs_safeArrayForKey:@"deniedContactGroups"];
  v39 = [v13 setWithArray:v14];

  v15 = MEMORY[0x277CBEB98];
  v16 = [representationCopy bs_safeArrayForKey:@"allowedContacts"];
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

        v24 = [DNDSContactRecord newWithDictionaryRepresentation:*(*(&v50 + 1) + 8 * v23) context:contextCopy];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v21);
  }

  v25 = MEMORY[0x277CBEB98];
  v45 = representationCopy;
  v26 = [representationCopy bs_safeArrayForKey:@"silencedContacts"];
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

        v34 = [DNDSContactRecord newWithDictionaryRepresentation:*(*(&v46 + 1) + 8 * v33) context:contextCopy];
        [v28 addObject:v34];

        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v31);
  }

  v35 = [v45 bs_safeDictionaryForKey:@"phoneCallBypassSettings"];
  v36 = [DNDSBypassSettingsRecord newWithDictionaryRepresentation:v35 context:contextCopy];
  v42 = [[self alloc] _initWithAllowedContactTypes:v44 deniedContactTypes:v43 allowedContactGroups:v40 deniedContactGroups:v39 allowedContacts:v18 deniedContacts:v28 phoneCallBypassSettings:v36];

  v37 = *MEMORY[0x277D85DE8];
  return v42;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
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

  allowedContactTypes = [(DNDSSenderConfigurationRecord *)self allowedContactTypes];
  allObjects = [allowedContactTypes allObjects];
  [v9 bs_setSafeObject:allObjects forKey:@"allowedContactTypes"];

  deniedContactTypes = [(DNDSSenderConfigurationRecord *)self deniedContactTypes];
  allObjects2 = [deniedContactTypes allObjects];
  [v9 bs_setSafeObject:allObjects2 forKey:@"deniedContactTypes"];

  allowedContactGroups = [(DNDSSenderConfigurationRecord *)self allowedContactGroups];
  allObjects3 = [allowedContactGroups allObjects];
  [v9 bs_setSafeObject:allObjects3 forKey:@"allowedContactGroups"];

  deniedContactGroups = [(DNDSSenderConfigurationRecord *)self deniedContactGroups];
  allObjects4 = [deniedContactGroups allObjects];
  [v9 bs_setSafeObject:allObjects4 forKey:@"deniedContactGroups"];

  if ([contextCopy redactSensitiveData])
  {
    [v9 setObject:0 forKeyedSubscript:@"allowedContacts"];
    [v9 setObject:0 forKeyedSubscript:@"silencedContacts"];
  }

  else
  {
    v18 = [contextCopy mutableCopy];
    healingSource2 = [contextCopy healingSource];
    v20 = [healingSource2 objectForKeyedSubscript:@"allowedContacts"];
    [v18 setArrayHealingSource:v20];

    v21 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    allowedContacts = [(DNDSSenderConfigurationRecord *)self allowedContacts];
    v23 = [allowedContacts countByEnumeratingWithState:&v48 objects:v53 count:16];
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
            objc_enumerationMutation(allowedContacts);
          }

          v27 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentationWithContext:v18];
          [v21 addObject:v27];
        }

        v24 = [allowedContacts countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v24);
    }

    allObjects5 = [v21 allObjects];
    [v9 bs_setSafeObject:allObjects5 forKey:@"allowedContacts"];

    v43 = contextCopy;
    healingSource3 = [contextCopy healingSource];
    v30 = [healingSource3 objectForKeyedSubscript:@"silencedContacts"];
    [v18 setArrayHealingSource:v30];

    v31 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    deniedContacts = [(DNDSSenderConfigurationRecord *)self deniedContacts];
    v33 = [deniedContacts countByEnumeratingWithState:&v44 objects:v52 count:16];
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
            objc_enumerationMutation(deniedContacts);
          }

          v37 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentationWithContext:v18];
          [v31 addObject:v37];
        }

        v34 = [deniedContacts countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v34);
    }

    allObjects6 = [v31 allObjects];
    [v9 bs_setSafeObject:allObjects6 forKey:@"silencedContacts"];

    contextCopy = v43;
  }

  phoneCallBypassSettings = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];

  if (phoneCallBypassSettings)
  {
    phoneCallBypassSettings2 = [(DNDSSenderConfigurationRecord *)self phoneCallBypassSettings];
    [v9 setDictionaryRepresentationOfRecord:phoneCallBypassSettings2 forKey:@"phoneCallBypassSettings" context:contextCopy];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v9;
}

@end