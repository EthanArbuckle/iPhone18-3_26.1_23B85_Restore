@interface DNDSenderConfiguration
- (BOOL)isEqual:(id)a3;
- (DNDSenderConfiguration)initWithCoder:(id)a3;
- (id)_descriptionForRedacted:(BOOL)a3;
- (id)_evaluatedBypassSettings:(id)a3;
- (id)_initWithAllowedContactTypes:(id)a3 deniedContactTypes:(id)a4 allowedContactGroups:(id)a5 deniedContactGroups:(id)a6 allowedContacts:(id)a7 deniedContacts:(id)a8 phoneCallBypassSettings:(id)a9;
- (id)_redactedDescriptionsForContacts:(id)a3;
- (unint64_t)hash;
- (void)diffAgainstObject:(id)a3 usingDiffBuilder:(id)a4 withDescription:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSenderConfiguration

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
  v50.super_class = DNDSenderConfiguration;
  v22 = [(DNDSenderConfiguration *)&v50 init];
  if (v22)
  {
    v23 = [v15 mutableCopy];
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

    v27 = [v16 mutableCopy];
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

    v31 = [v17 mutableCopy];
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

    v35 = [v18 mutableCopy];
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

    v39 = [v19 mutableCopy];
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

    v43 = [v20 mutableCopy];
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

    v47 = [v21 copy];
    phoneCallBypassSettings = v22->_phoneCallBypassSettings;
    v22->_phoneCallBypassSettings = v47;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [(DNDSenderConfiguration *)self allowedContactTypes];
  v4 = [v3 hash];
  v5 = [(DNDSenderConfiguration *)self deniedContactTypes];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSenderConfiguration *)self allowedContactGroups];
  v8 = [v7 hash];
  v9 = [(DNDSenderConfiguration *)self deniedContactGroups];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSenderConfiguration *)self allowedContacts];
  v12 = [v11 hash];
  v13 = [(DNDSenderConfiguration *)self deniedContacts];
  v14 = v12 ^ [v13 hash];
  v15 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
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
      v6 = [(DNDSenderConfiguration *)self allowedContactTypes];
      v7 = [(DNDSenderConfiguration *)v5 allowedContactTypes];
      if (v6 != v7)
      {
        v8 = [(DNDSenderConfiguration *)self allowedContactTypes];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_77;
        }

        v9 = v8;
        v10 = [(DNDSenderConfiguration *)v5 allowedContactTypes];
        if (!v10)
        {
          v13 = 0;
LABEL_76:

          goto LABEL_77;
        }

        v11 = [(DNDSenderConfiguration *)self allowedContactTypes];
        v12 = [(DNDSenderConfiguration *)v5 allowedContactTypes];
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

      v14 = [(DNDSenderConfiguration *)self deniedContactTypes];
      v15 = [(DNDSenderConfiguration *)v5 deniedContactTypes];
      if (v14 != v15)
      {
        v16 = [(DNDSenderConfiguration *)self deniedContactTypes];
        if (v16)
        {
          v17 = v16;
          v88 = v14;
          v18 = [(DNDSenderConfiguration *)v5 deniedContactTypes];
          if (v18)
          {
            v19 = v18;
            v14 = [(DNDSenderConfiguration *)self deniedContactTypes];
            v20 = [(DNDSenderConfiguration *)v5 deniedContactTypes];
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
      v21 = [(DNDSenderConfiguration *)self allowedContactGroups];
      v22 = [(DNDSenderConfiguration *)v5 allowedContactGroups];
      if (v21 == v22)
      {
        goto LABEL_25;
      }

      v23 = [(DNDSenderConfiguration *)self allowedContactGroups];
      if (v23)
      {
        v80 = v23;
        v24 = [(DNDSenderConfiguration *)v5 allowedContactGroups];
        if (v24)
        {
          v77 = v24;
          v25 = [(DNDSenderConfiguration *)self allowedContactGroups];
          v14 = [(DNDSenderConfiguration *)v5 allowedContactGroups];
          if ([v25 isEqual:v14])
          {
            v70 = v25;
LABEL_25:
            v26 = [(DNDSenderConfiguration *)self deniedContactGroups];
            v83 = [(DNDSenderConfiguration *)v5 deniedContactGroups];
            if (v26 == v83)
            {
              v76 = v22;
              v31 = v14;
              v73 = v21;
LABEL_33:
              v32 = [(DNDSenderConfiguration *)self allowedContacts];
              [(DNDSenderConfiguration *)v5 allowedContacts];
              v72 = v71 = v32;
              v75 = v31;
              if (v32 == v72)
              {
                goto LABEL_42;
              }

              v33 = [(DNDSenderConfiguration *)self allowedContacts];
              if (v33)
              {
                v66 = v33;
                v34 = [(DNDSenderConfiguration *)v5 allowedContacts];
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
                v35 = [(DNDSenderConfiguration *)self allowedContacts];
                v36 = [(DNDSenderConfiguration *)v5 allowedContacts];
                if ([v35 isEqual:v36])
                {
                  v60 = v36;
                  v61 = v35;
LABEL_42:
                  v38 = v76;
                  v39 = [(DNDSenderConfiguration *)self deniedContacts];
                  v67 = [(DNDSenderConfiguration *)v5 deniedContacts];
                  if (v39 == v67)
                  {
LABEL_56:
                    v45 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
                    v46 = [(DNDSenderConfiguration *)v5 phoneCallBypassSettings];
                    if (v45 == v46)
                    {

                      v13 = 1;
                    }

                    else
                    {
                      v58 = v46;
                      v47 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
                      if (v47)
                      {
                        v55 = v47;
                        v48 = [(DNDSenderConfiguration *)v5 phoneCallBypassSettings];
                        if (v48)
                        {
                          v54 = v48;
                          v53 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
                          v49 = [(DNDSenderConfiguration *)v5 phoneCallBypassSettings];
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

                  v40 = [(DNDSenderConfiguration *)self deniedContacts];
                  if (v40)
                  {
                    v62 = v40;
                    v41 = [(DNDSenderConfiguration *)v5 deniedContacts];
                    if (v41)
                    {
                      v59 = v41;
                      v42 = [(DNDSenderConfiguration *)self deniedContacts];
                      v43 = [(DNDSenderConfiguration *)v5 deniedContacts];
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

            v27 = [(DNDSenderConfiguration *)self deniedContactGroups];
            if (v27)
            {
              v69 = v27;
              v28 = [(DNDSenderConfiguration *)v5 deniedContactGroups];
              if (v28)
              {
                v73 = v21;
                v74 = v14;
                v68 = v28;
                v29 = [(DNDSenderConfiguration *)self deniedContactGroups];
                v30 = [(DNDSenderConfiguration *)v5 deniedContactGroups];
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

- (id)_descriptionForRedacted:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  allowedContactTypes = self->_allowedContactTypes;
  deniedContactTypes = self->_deniedContactTypes;
  allowedContactGroups = self->_allowedContactGroups;
  deniedContactGroups = self->_deniedContactGroups;
  allowedContacts = self->_allowedContacts;
  if (v3)
  {
    allowedContacts = [(DNDSenderConfiguration *)self _redactedDescriptionsForContacts:self->_allowedContacts];
    deniedContacts = [(DNDSenderConfiguration *)self _redactedDescriptionsForContacts:self->_deniedContacts];
  }

  else
  {
    deniedContacts = self->_deniedContacts;
  }

  v13 = [v5 stringWithFormat:@"<%@: %p allowedContactTypes: %@; deniedContactTypes: %@; allowedContactGroups: %@; deniedContactGroups: %@; allowedContacts: %@; deniedContacts: %@; phoneCallBypassSettings: %@>", v6, self, allowedContactTypes, deniedContactTypes, allowedContactGroups, deniedContactGroups, allowedContacts, deniedContacts, self->_phoneCallBypassSettings];;
  if (v3)
  {
  }

  return v13;
}

- (id)_redactedDescriptionsForContacts:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) redactedDescription];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)diffAgainstObject:(id)a3 usingDiffBuilder:(id)a4 withDescription:(id)a5
{
  v23 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v23;
    v9 = [(DNDSenderConfiguration *)self allowedContacts];
    v10 = [v8 allowedContacts];
    [v7 diffObject:v9 againstObject:v10 withDescription:@"allowedContacts"];

    v11 = [(DNDSenderConfiguration *)self deniedContacts];
    v12 = [v8 deniedContacts];
    [v7 diffObject:v11 againstObject:v12 withDescription:@"deniedContacts"];

    v13 = [(DNDSenderConfiguration *)self allowedContactTypes];
    v14 = [v8 allowedContactTypes];
    [v7 diffObject:v13 againstObject:v14 withDescription:@"allowedContactTypes"];

    v15 = [(DNDSenderConfiguration *)self deniedContactTypes];
    v16 = [v8 deniedContactTypes];
    [v7 diffObject:v15 againstObject:v16 withDescription:@"deniedContactTypes"];

    v17 = [(DNDSenderConfiguration *)self allowedContactGroups];
    v18 = [v8 allowedContactGroups];
    [v7 diffObject:v17 againstObject:v18 withDescription:@"allowedContactGroups"];

    v19 = [(DNDSenderConfiguration *)self deniedContactGroups];
    v20 = [v8 deniedContactGroups];
    [v7 diffObject:v19 againstObject:v20 withDescription:@"deniedContactGroups"];

    v21 = [(DNDSenderConfiguration *)self phoneCallBypassSettings];
    v22 = [v8 phoneCallBypassSettings];

    [v7 diffObject:v21 againstObject:v22 withDescription:@"phoneCallBypassSettings"];
  }
}

- (DNDSenderConfiguration)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v6 = [v3 setWithArray:v5];
  v31 = [v4 decodeObjectOfClasses:v6 forKey:@"allowedContactTypes"];

  v7 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"deniedContactTypes"];

  v11 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v13 = [v11 setWithArray:v12];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"allowedContactGroups"];

  v15 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"deniedContactGroups"];

  v19 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v21 = [v19 setWithArray:v20];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"allowedContacts"];

  v23 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v25 = [v23 setWithArray:v24];
  v26 = [v4 decodeObjectOfClasses:v25 forKey:@"deniedContacts"];

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneCallBypassSettings"];

  v28 = [(DNDSenderConfiguration *)self _initWithAllowedContactTypes:v31 deniedContactTypes:v10 allowedContactGroups:v14 deniedContactGroups:v18 allowedContacts:v22 deniedContacts:v26 phoneCallBypassSettings:v27];
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  allowedContactTypes = self->_allowedContactTypes;
  v5 = a3;
  [v5 encodeObject:allowedContactTypes forKey:@"allowedContactTypes"];
  [v5 encodeObject:self->_deniedContactTypes forKey:@"deniedContactTypes"];
  [v5 encodeObject:self->_allowedContactGroups forKey:@"allowedContactGroups"];
  [v5 encodeObject:self->_deniedContactGroups forKey:@"deniedContactGroups"];
  [v5 encodeObject:self->_allowedContacts forKey:@"allowedContacts"];
  [v5 encodeObject:self->_deniedContacts forKey:@"deniedContacts"];
  [v5 encodeObject:self->_phoneCallBypassSettings forKey:@"phoneCallBypassSettings"];
}

- (id)_evaluatedBypassSettings:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(DNDMutableBypassSettings);
  }

  v5 = DNDResolvedImmediateBypassEventSourceType([v3 immediateBypassEventSourceType]);
  if (v5 == 5)
  {
    v6 = [v3 immediateBypassCNGroupIdentifier];

    if (v6)
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