@interface HKPIIRedactor(HealthDeamon)
+ (id)redactorWithProfile:()HealthDeamon error:;
@end

@implementation HKPIIRedactor(HealthDeamon)

+ (id)redactorWithProfile:()HealthDeamon error:
{
  v80[16] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hd_contactStoreWithHealthAppIdentity = [MEMORY[0x277CBDAB8] hd_contactStoreWithHealthAppIdentity];
  objc_opt_self();
  v9 = *MEMORY[0x277CBD000];
  v80[0] = *MEMORY[0x277CBCFF8];
  v80[1] = v9;
  v10 = *MEMORY[0x277CBD0B0];
  v80[2] = *MEMORY[0x277CBD0A8];
  v80[3] = v10;
  v11 = *MEMORY[0x277CBD078];
  v80[4] = *MEMORY[0x277CBD0E0];
  v80[5] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:6];
  v79 = 0;
  v13 = [hd_contactStoreWithHealthAppIdentity _ios_meContactWithKeysToFetch:v12 error:&v79];
  v14 = v79;

  if (v13 || !v14)
  {
    if (v13)
    {
      v19 = v7;
      v20 = v13;
      v21 = objc_opt_self();
      [v20 familyName];
      v23 = v22 = v14;
      [(HKPIIRedactor *)v21 _addName:v23 toArray:v19];

      givenName = [v20 givenName];
      [(HKPIIRedactor *)v21 _addName:givenName toArray:v19];

      phoneticFamilyName = [v20 phoneticFamilyName];
      [(HKPIIRedactor *)v21 _addName:phoneticFamilyName toArray:v19];

      phoneticGivenName = [v20 phoneticGivenName];
      [(HKPIIRedactor *)v21 _addName:phoneticGivenName toArray:v19];

      previousFamilyName = [v20 previousFamilyName];
      [(HKPIIRedactor *)v21 _addName:previousFamilyName toArray:v19];

      nickname = [v20 nickname];

      [(HKPIIRedactor *)v21 _addName:nickname toArray:v19];
      v14 = v22;
    }

LABEL_10:
    v16 = [HDKeyValueDomain healthAppUserDefaultsDomainWithProfile:v5];
    v29 = *MEMORY[0x277CCE5A8];
    v78 = 0;
    v30 = [v16 propertyListValueForKey:v29 error:&v78];
    v31 = v78;
    v32 = v31;
    if (!v30 && v31)
    {
      v33 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Error getting names to redact" underlyingError:v31];
      if (v33)
      {
        if (a4)
        {
          v33 = v33;
          v18 = 0;
          *a4 = v33;
          v34 = v33;
LABEL_49:

          goto LABEL_50;
        }

        v34 = v33;
        _HKLogDroppedError();
        v33 = v34;
      }

      else
      {
        v34 = 0;
      }

      v18 = 0;
      goto LABEL_49;
    }

    v69 = v31;
    if (v30)
    {
      v35 = [v30 objectForKeyedSubscript:*MEMORY[0x277CCE598]];
      [(HKPIIRedactor *)v6 _addName:v35 toArray:v7];

      v36 = [v30 objectForKeyedSubscript:*MEMORY[0x277CCE5A0]];
      [(HKPIIRedactor *)v6 _addName:v36 toArray:v7];
    }

    v68 = v30;
    medicalIDDataManager = [v5 medicalIDDataManager];
    v77 = 0;
    v38 = [medicalIDDataManager fetchMedicalIDIfSetUpWithError:&v77];
    v34 = v77;

    v67 = v38;
    if (v38 || !v34)
    {
      v65 = v34;
      v66 = v13;
      if (v38)
      {
        name = [v38 name];
        [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v44 = v43 = v14;
        v45 = [name componentsSeparatedByCharactersInSet:v44];

        v14 = v43;
        [(HKPIIRedactor *)v6 _addNames:v45 toArray:v7];
      }

      accountOwnerType = [MEMORY[0x277CCCF90] accountOwnerType];
      v76 = 0;
      v47 = [HDSampleEntity samplesWithType:accountOwnerType profile:v5 encodingOptions:MEMORY[0x277CBEC10] predicate:0 limit:0 anchor:0 error:&v76];
      v48 = v76;

      if (v47)
      {
        v62 = v48;
        v63 = v14;
        v70 = v5;
        selfCopy = self;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v40 = v47;
        v49 = [v40 countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v73;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v73 != v51)
              {
                objc_enumerationMutation(v40);
              }

              name2 = [*(*(&v72 + 1) + 8 * i) name];
              whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v55 = [name2 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

              [(HKPIIRedactor *)v6 _addNames:v55 toArray:v7];
            }

            v50 = [v40 countByEnumeratingWithState:&v72 objects:v80 count:16];
          }

          while (v50);
        }

        v18 = v7;
        v14 = v63;
        self = selfCopy;
        v5 = v70;
        v13 = v66;
        v34 = v65;
        v48 = v62;
        goto LABEL_48;
      }

      v56 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Error getting names to redact" underlyingError:v48];
      v57 = v56;
      v13 = v66;
      if (v56)
      {
        if (a4)
        {
          v58 = v56;
          *a4 = v57;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v40 = 0;
    }

    else
    {
      v39 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Error getting names to redact" underlyingError:v34];
      v40 = v39;
      if (v39)
      {
        if (a4)
        {
          v41 = v39;
          v18 = 0;
          *a4 = v40;
        }

        else
        {
          _HKLogDroppedError();
          v18 = 0;
        }

        v48 = v40;
        goto LABEL_48;
      }

      v48 = 0;
    }

    v18 = 0;
LABEL_48:

    v30 = v68;
    v32 = v69;
    v33 = v67;
    goto LABEL_49;
  }

  if ([v14 code] == 2 || objc_msgSend(v14, "code") == 200)
  {
    goto LABEL_10;
  }

  v15 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Error getting names to redact" underlyingError:v14];
  v16 = v15;
  if (v15)
  {
    if (a4)
    {
      v17 = v15;
      v18 = 0;
      *a4 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v18 = 0;
    }

    v32 = v16;
  }

  else
  {
    v32 = 0;
    v18 = 0;
  }

LABEL_50:

  if (v18)
  {
    v59 = [self redactorWithNames:v18 error:a4];
  }

  else
  {
    v59 = 0;
  }

  v60 = *MEMORY[0x277D85DE8];

  return v59;
}

@end