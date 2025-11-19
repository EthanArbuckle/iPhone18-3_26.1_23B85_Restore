@interface HDOntologyLocalizedStringProvider
+ (id)_localizedLoggingUnitForAttribute:(id)a3 locale:(id)a4 propertyType:(int64_t)a5;
+ (id)_nullLocalizedOntologyStringsWithVersion:(int64_t)a3 localesToDelete:(id)a4 propertyType:(int64_t)a5;
+ (id)localizedLoggingUnitsForConcept:(id)a3;
+ (id)localizedOntologyPreferredNamesForConcept:(id)a3 version:(id)a4 withUserDomainConceptPropertyType:(int64_t)a5;
+ (id)localizedUserDomainConceptPropertyStringForConceptAttribute:(id)a3 locale:(id)a4 propertyType:(int64_t)a5;
+ (id)nullLocalizedOntologyPreferredNamesWithVersion:(int64_t)a3 withUserDomainConceptPropertyType:(int64_t)a4;
@end

@implementation HDOntologyLocalizedStringProvider

+ (id)localizedOntologyPreferredNamesForConcept:(id)a3 version:(id)a4 withUserDomainConceptPropertyType:(int64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v6;
  obj = [v6 attributes];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v11 = *MEMORY[0x277CCCE40];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ([v13 type] == 1012)
        {
          v14 = v11;
          if (!v11)
          {
            continue;
          }

          v15 = v14;
        }

        else
        {
          v15 = @"en_US";
          if ([v13 type] != 960)
          {
            v15 = @"en_GB";
            if ([v13 type] != 961)
            {
              v15 = @"en_CA";
              if ([v13 type] != 962)
              {
                continue;
              }
            }
          }
        }

        if ([v13 isDeleted])
        {
          v16 = [MEMORY[0x277CCDB10] nullPropertyWithType:a5 locale:v15 version:{objc_msgSend(v13, "version")}];
        }

        else
        {
          v17 = objc_alloc(MEMORY[0x277CCDB10]);
          v18 = [v13 stringValue];
          if (v23)
          {
            v19 = [v23 integerValue];
          }

          else
          {
            v19 = [v13 version];
          }

          v16 = [v17 initWithType:a5 stringValue:v18 locale:v15 version:v19];
        }

        [v7 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)nullLocalizedOntologyPreferredNamesWithVersion:(int64_t)a3 withUserDomainConceptPropertyType:(int64_t)a4
{
  v11[4] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277CCCE40];
  v11[1] = @"en_US";
  v11[2] = @"en_GB";
  v11[3] = @"en_CA";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [a1 _nullLocalizedOntologyStringsWithVersion:a3 localesToDelete:v7 propertyType:a4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_nullLocalizedOntologyStringsWithVersion:(int64_t)a3 localesToDelete:(id)a4 propertyType:(int64_t)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HDOntologyLocalizedStringProvider__nullLocalizedOntologyStringsWithVersion_localesToDelete_propertyType___block_invoke;
  v7[3] = &__block_descriptor_48_e54___HKUserDomainConceptLocalizedString_16__0__NSString_8l;
  v7[4] = a5;
  v7[5] = a3;
  v5 = [a4 hk_map:v7];

  return v5;
}

+ (id)localizedLoggingUnitsForConcept:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 attributes];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 type];
        switch(v14)
        {
          case 795:
            v18 = v13;
            v16 = v8;
            v8 = v18;
            break;
          case 796:
            v17 = v13;
            v16 = v9;
            v9 = v17;
            break;
          case 802:
            v15 = [v13 stringValue];
            v16 = v10;
            v10 = v15;
            break;
          default:
            continue;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v7)
      {

        if (v10)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v8)
          {
            v20 = [a1 _localizedLoggingUnitForAttribute:v8 locale:v10 propertyType:160018];
            [v19 addObject:v20];
          }

          if (v9)
          {
            v5 = [a1 _localizedLoggingUnitForAttribute:v9 locale:v10 propertyType:160017];
            [v19 addObject:v5];
            goto LABEL_21;
          }
        }

        else
        {
          v19 = MEMORY[0x277CBEBF8];
        }

        goto LABEL_23;
      }
    }
  }

  v10 = 0;
  v9 = 0;
  v8 = 0;
  v19 = MEMORY[0x277CBEBF8];
LABEL_21:

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_localizedLoggingUnitForAttribute:(id)a3 locale:(id)a4 propertyType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 isDeleted])
  {
    v9 = [MEMORY[0x277CCDB10] nullPropertyWithType:a5 locale:v8 version:{objc_msgSend(v7, "version")}];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCDB10]);
    v11 = [v7 stringValue];
    v9 = [v10 initWithType:a5 stringValue:v11 locale:v8 version:{objc_msgSend(v7, "version")}];

    v8 = v11;
  }

  return v9;
}

+ (id)localizedUserDomainConceptPropertyStringForConceptAttribute:(id)a3 locale:(id)a4 propertyType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 isDeleted])
  {
    v9 = [MEMORY[0x277CCDB10] nullPropertyWithType:a5 locale:v8 version:{objc_msgSend(v7, "version")}];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCDB10]);
    v11 = [v7 stringValue];
    v9 = [v10 initWithType:a5 stringValue:v11 locale:v8 version:{objc_msgSend(v7, "version")}];

    v8 = v11;
  }

  return v9;
}

@end