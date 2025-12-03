@interface DNDSenderConfiguration
- (BOOL)isEqual:(id)equal;
- (DNDSenderConfiguration)initWithCoder:(id)coder;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (id)_evaluatedBypassSettings:(id)settings;
- (id)_initWithAllowedContactTypes:(id)types deniedContactTypes:(id)contactTypes allowedContactGroups:(id)groups deniedContactGroups:(id)contactGroups allowedContacts:(id)contacts deniedContacts:(id)deniedContacts phoneCallBypassSettings:(id)settings;
- (id)_redactedDescriptionsForContacts:(id)contacts;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSenderConfiguration

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
  v50.super_class = DNDSenderConfiguration;
  v22 = [(DNDSenderConfiguration *)&v50 init];
  if (v22)
  {
    v23 = [typesCopy mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    allowedContactTypes = v22->_allowedContactTypes;
    v22->_allowedContactTypes = v25;

    v27 = [contactTypesCopy mutableCopy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    deniedContactTypes = v22->_deniedContactTypes;
    v22->_deniedContactTypes = v29;

    v31 = [groupsCopy mutableCopy];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    allowedContactGroups = v22->_allowedContactGroups;
    v22->_allowedContactGroups = v33;

    v35 = [contactGroupsCopy mutableCopy];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    deniedContactGroups = v22->_deniedContactGroups;
    v22->_deniedContactGroups = v37;

    v39 = [contactsCopy mutableCopy];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    allowedContacts = v22->_allowedContacts;
    v22->_allowedContacts = v41;

    v43 = [deniedContactsCopy mutableCopy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
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
  allowedContactTypes = [(DNDSenderConfiguration *)self allowedContactTypes];
  v4 = [allowedContactTypes hash];
  deniedContactTypes = [(DNDSenderConfiguration *)self deniedContactTypes];
  v6 = [deniedContactTypes hash] ^ v4;
  allowedContactGroups = [(DNDSenderConfiguration *)self allowedContactGroups];
  v8 = [allowedContactGroups hash];
  deniedContactGroups = [(DNDSenderConfiguration *)self deniedContactGroups];
  v10 = v6 ^ v8 ^ [deniedContactGroups hash];
  allowedContacts = [(DNDSenderConfiguration *)self allowedContacts];
  v12 = [allowedContacts hash];
  deniedContacts = [(DNDSenderConfiguration *)self deniedContacts];
  v14 = v12 ^ [deniedContacts hash];
  phoneCallBypassSettings = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
  v16 = v14 ^ [phoneCallBypassSettings hash];

  return v10 ^ v16;
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
      allowedContactTypes = [(DNDSenderConfiguration *)self allowedContactTypes];
      allowedContactTypes2 = [(DNDSenderConfiguration *)v5 allowedContactTypes];
      if (allowedContactTypes != allowedContactTypes2)
      {
        allowedContactTypes3 = [(DNDSenderConfiguration *)self allowedContactTypes];
        if (!allowedContactTypes3)
        {
          v13 = 0;
          goto LABEL_77;
        }

        v9 = allowedContactTypes3;
        allowedContactTypes4 = [(DNDSenderConfiguration *)v5 allowedContactTypes];
        if (!allowedContactTypes4)
        {
          v13 = 0;
LABEL_76:

          goto LABEL_77;
        }

        allowedContactTypes5 = [(DNDSenderConfiguration *)self allowedContactTypes];
        allowedContactTypes6 = [(DNDSenderConfiguration *)v5 allowedContactTypes];
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

      deniedContactTypes = [(DNDSenderConfiguration *)self deniedContactTypes];
      deniedContactTypes2 = [(DNDSenderConfiguration *)v5 deniedContactTypes];
      if (deniedContactTypes != deniedContactTypes2)
      {
        deniedContactTypes3 = [(DNDSenderConfiguration *)self deniedContactTypes];
        if (deniedContactTypes3)
        {
          v17 = deniedContactTypes3;
          v88 = deniedContactTypes;
          deniedContactTypes4 = [(DNDSenderConfiguration *)v5 deniedContactTypes];
          if (deniedContactTypes4)
          {
            v19 = deniedContactTypes4;
            deniedContactTypes = [(DNDSenderConfiguration *)self deniedContactTypes];
            deniedContactTypes5 = [(DNDSenderConfiguration *)v5 deniedContactTypes];
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
      allowedContactGroups = [(DNDSenderConfiguration *)self allowedContactGroups];
      allowedContactGroups2 = [(DNDSenderConfiguration *)v5 allowedContactGroups];
      if (allowedContactGroups == allowedContactGroups2)
      {
        goto LABEL_25;
      }

      allowedContactGroups3 = [(DNDSenderConfiguration *)self allowedContactGroups];
      if (allowedContactGroups3)
      {
        v80 = allowedContactGroups3;
        allowedContactGroups4 = [(DNDSenderConfiguration *)v5 allowedContactGroups];
        if (allowedContactGroups4)
        {
          v77 = allowedContactGroups4;
          allowedContactGroups5 = [(DNDSenderConfiguration *)self allowedContactGroups];
          deniedContactTypes = [(DNDSenderConfiguration *)v5 allowedContactGroups];
          if ([allowedContactGroups5 isEqual:deniedContactTypes])
          {
            v70 = allowedContactGroups5;
LABEL_25:
            deniedContactGroups = [(DNDSenderConfiguration *)self deniedContactGroups];
            deniedContactGroups2 = [(DNDSenderConfiguration *)v5 deniedContactGroups];
            if (deniedContactGroups == deniedContactGroups2)
            {
              v76 = allowedContactGroups2;
              v31 = deniedContactTypes;
              v73 = allowedContactGroups;
LABEL_33:
              allowedContacts = [(DNDSenderConfiguration *)self allowedContacts];
              [(DNDSenderConfiguration *)v5 allowedContacts];
              v72 = v71 = allowedContacts;
              v75 = v31;
              if (allowedContacts == v72)
              {
                goto LABEL_42;
              }

              allowedContacts2 = [(DNDSenderConfiguration *)self allowedContacts];
              if (allowedContacts2)
              {
                v66 = allowedContacts2;
                allowedContacts3 = [(DNDSenderConfiguration *)v5 allowedContacts];
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
                allowedContacts4 = [(DNDSenderConfiguration *)self allowedContacts];
                allowedContacts5 = [(DNDSenderConfiguration *)v5 allowedContacts];
                if ([allowedContacts4 isEqual:allowedContacts5])
                {
                  v60 = allowedContacts5;
                  v61 = allowedContacts4;
LABEL_42:
                  v38 = v76;
                  deniedContacts = [(DNDSenderConfiguration *)self deniedContacts];
                  deniedContacts2 = [(DNDSenderConfiguration *)v5 deniedContacts];
                  if (deniedContacts == deniedContacts2)
                  {
LABEL_56:
                    phoneCallBypassSettings = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
                    phoneCallBypassSettings2 = [(DNDSenderConfiguration *)v5 phoneCallBypassSettings];
                    if (phoneCallBypassSettings == phoneCallBypassSettings2)
                    {

                      v13 = 1;
                    }

                    else
                    {
                      v58 = phoneCallBypassSettings2;
                      phoneCallBypassSettings3 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
                      if (phoneCallBypassSettings3)
                      {
                        v55 = phoneCallBypassSettings3;
                        phoneCallBypassSettings4 = [(DNDSenderConfiguration *)v5 phoneCallBypassSettings];
                        if (phoneCallBypassSettings4)
                        {
                          v54 = phoneCallBypassSettings4;
                          phoneCallBypassSettings5 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
                          phoneCallBypassSettings6 = [(DNDSenderConfiguration *)v5 phoneCallBypassSettings];
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

                  deniedContacts3 = [(DNDSenderConfiguration *)self deniedContacts];
                  if (deniedContacts3)
                  {
                    v62 = deniedContacts3;
                    deniedContacts4 = [(DNDSenderConfiguration *)v5 deniedContacts];
                    if (deniedContacts4)
                    {
                      v59 = deniedContacts4;
                      deniedContacts5 = [(DNDSenderConfiguration *)self deniedContacts];
                      deniedContacts6 = [(DNDSenderConfiguration *)v5 deniedContacts];
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

            deniedContactGroups3 = [(DNDSenderConfiguration *)self deniedContactGroups];
            if (deniedContactGroups3)
            {
              v69 = deniedContactGroups3;
              deniedContactGroups4 = [(DNDSenderConfiguration *)v5 deniedContactGroups];
              if (deniedContactGroups4)
              {
                v73 = allowedContactGroups;
                v74 = deniedContactTypes;
                v68 = deniedContactGroups4;
                deniedContactGroups5 = [(DNDSenderConfiguration *)self deniedContactGroups];
                deniedContactGroups6 = [(DNDSenderConfiguration *)v5 deniedContactGroups];
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

- (id)_descriptionForRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  allowedContactTypes = self->_allowedContactTypes;
  deniedContactTypes = self->_deniedContactTypes;
  allowedContactGroups = self->_allowedContactGroups;
  deniedContactGroups = self->_deniedContactGroups;
  allowedContacts = self->_allowedContacts;
  if (redactedCopy)
  {
    allowedContacts = [(DNDSenderConfiguration *)self _redactedDescriptionsForContacts:self->_allowedContacts];
    deniedContacts = [(DNDSenderConfiguration *)self _redactedDescriptionsForContacts:self->_deniedContacts];
  }

  else
  {
    deniedContacts = self->_deniedContacts;
  }

  v13 = [v5 stringWithFormat:@"<%@: %p allowedContactTypes: %@; deniedContactTypes: %@; allowedContactGroups: %@; deniedContactGroups: %@; allowedContacts: %@; deniedContacts: %@; phoneCallBypassSettings: %@>", v6, self, allowedContactTypes, deniedContactTypes, allowedContactGroups, deniedContactGroups, allowedContacts, deniedContacts, self->_phoneCallBypassSettings];;
  if (redactedCopy)
  {
  }

  return v13;
}

- (id)_redactedDescriptionsForContacts:(id)contacts
{
  v18 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = contactsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        redactedDescription = [*(*(&v13 + 1) + 8 * i) redactedDescription];
        [v4 addObject:redactedDescription];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)diffAgainstObject:(id)object usingDiffBuilder:(id)builder withDescription:(id)description
{
  objectCopy = object;
  builderCopy = builder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    allowedContacts = [(DNDSenderConfiguration *)self allowedContacts];
    allowedContacts2 = [v8 allowedContacts];
    [builderCopy diffObject:allowedContacts againstObject:allowedContacts2 withDescription:@"allowedContacts"];

    deniedContacts = [(DNDSenderConfiguration *)self deniedContacts];
    deniedContacts2 = [v8 deniedContacts];
    [builderCopy diffObject:deniedContacts againstObject:deniedContacts2 withDescription:@"deniedContacts"];

    allowedContactTypes = [(DNDSenderConfiguration *)self allowedContactTypes];
    allowedContactTypes2 = [v8 allowedContactTypes];
    [builderCopy diffObject:allowedContactTypes againstObject:allowedContactTypes2 withDescription:@"allowedContactTypes"];

    deniedContactTypes = [(DNDSenderConfiguration *)self deniedContactTypes];
    deniedContactTypes2 = [v8 deniedContactTypes];
    [builderCopy diffObject:deniedContactTypes againstObject:deniedContactTypes2 withDescription:@"deniedContactTypes"];

    allowedContactGroups = [(DNDSenderConfiguration *)self allowedContactGroups];
    allowedContactGroups2 = [v8 allowedContactGroups];
    [builderCopy diffObject:allowedContactGroups againstObject:allowedContactGroups2 withDescription:@"allowedContactGroups"];

    deniedContactGroups = [(DNDSenderConfiguration *)self deniedContactGroups];
    deniedContactGroups2 = [v8 deniedContactGroups];
    [builderCopy diffObject:deniedContactGroups againstObject:deniedContactGroups2 withDescription:@"deniedContactGroups"];

    phoneCallBypassSettings = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
    phoneCallBypassSettings2 = [v8 phoneCallBypassSettings];

    [builderCopy diffObject:phoneCallBypassSettings againstObject:phoneCallBypassSettings2 withDescription:@"phoneCallBypassSettings"];
  }
}

- (DNDSenderConfiguration)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v6 = [v3 setWithArray:v5];
  v31 = [coderCopy decodeObjectOfClasses:v6 forKey:@"allowedContactTypes"];

  v7 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"deniedContactTypes"];

  v11 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"allowedContactGroups"];

  v15 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"deniedContactGroups"];

  v19 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v21 = [v19 setWithArray:v20];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"allowedContacts"];

  v23 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v25 = [v23 setWithArray:v24];
  v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"deniedContacts"];

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneCallBypassSettings"];

  v28 = [(DNDSenderConfiguration *)self _initWithAllowedContactTypes:v31 deniedContactTypes:v10 allowedContactGroups:v14 deniedContactGroups:v18 allowedContacts:v22 deniedContacts:v26 phoneCallBypassSettings:v27];
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  allowedContactTypes = self->_allowedContactTypes;
  coderCopy = coder;
  [coderCopy encodeObject:allowedContactTypes forKey:@"allowedContactTypes"];
  [coderCopy encodeObject:self->_deniedContactTypes forKey:@"deniedContactTypes"];
  [coderCopy encodeObject:self->_allowedContactGroups forKey:@"allowedContactGroups"];
  [coderCopy encodeObject:self->_deniedContactGroups forKey:@"deniedContactGroups"];
  [coderCopy encodeObject:self->_allowedContacts forKey:@"allowedContacts"];
  [coderCopy encodeObject:self->_deniedContacts forKey:@"deniedContacts"];
  [coderCopy encodeObject:self->_phoneCallBypassSettings forKey:@"phoneCallBypassSettings"];
}

- (id)_evaluatedBypassSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [settingsCopy mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(DNDMutableBypassSettings);
  }

  v5 = DNDResolvedImmediateBypassEventSourceType([settingsCopy immediateBypassEventSourceType]);
  if (v5 == 5)
  {
    immediateBypassCNGroupIdentifier = [settingsCopy immediateBypassCNGroupIdentifier];

    if (immediateBypassCNGroupIdentifier)
    {
      v5 = 5;
    }

    else
    {
      v5 = DNDResolvedImmediateBypassEventSourceType(0);
    }
  }

  [(DNDMutableBypassSettings *)v4 setImmediateBypassEventSourceType:v5];

  return v4;
}

@end