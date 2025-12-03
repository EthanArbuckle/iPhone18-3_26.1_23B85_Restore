@interface HDOntologyLocalizedStringProvider
+ (id)_localizedLoggingUnitForAttribute:(id)attribute locale:(id)locale propertyType:(int64_t)type;
+ (id)_nullLocalizedOntologyStringsWithVersion:(int64_t)version localesToDelete:(id)delete propertyType:(int64_t)type;
+ (id)localizedLoggingUnitsForConcept:(id)concept;
+ (id)localizedOntologyPreferredNamesForConcept:(id)concept version:(id)version withUserDomainConceptPropertyType:(int64_t)type;
+ (id)localizedUserDomainConceptPropertyStringForConceptAttribute:(id)attribute locale:(id)locale propertyType:(int64_t)type;
+ (id)nullLocalizedOntologyPreferredNamesWithVersion:(int64_t)version withUserDomainConceptPropertyType:(int64_t)type;
@end

@implementation HDOntologyLocalizedStringProvider

+ (id)localizedOntologyPreferredNamesForConcept:(id)concept version:(id)version withUserDomainConceptPropertyType:(int64_t)type
{
  v31 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  versionCopy = version;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = conceptCopy;
  obj = [conceptCopy attributes];
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
          v16 = [MEMORY[0x277CCDB10] nullPropertyWithType:type locale:v15 version:{objc_msgSend(v13, "version")}];
        }

        else
        {
          v17 = objc_alloc(MEMORY[0x277CCDB10]);
          stringValue = [v13 stringValue];
          if (versionCopy)
          {
            integerValue = [versionCopy integerValue];
          }

          else
          {
            integerValue = [v13 version];
          }

          v16 = [v17 initWithType:type stringValue:stringValue locale:v15 version:integerValue];
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

+ (id)nullLocalizedOntologyPreferredNamesWithVersion:(int64_t)version withUserDomainConceptPropertyType:(int64_t)type
{
  v11[4] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277CCCE40];
  v11[1] = @"en_US";
  v11[2] = @"en_GB";
  v11[3] = @"en_CA";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [self _nullLocalizedOntologyStringsWithVersion:version localesToDelete:v7 propertyType:type];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_nullLocalizedOntologyStringsWithVersion:(int64_t)version localesToDelete:(id)delete propertyType:(int64_t)type
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HDOntologyLocalizedStringProvider__nullLocalizedOntologyStringsWithVersion_localesToDelete_propertyType___block_invoke;
  v7[3] = &__block_descriptor_48_e54___HKUserDomainConceptLocalizedString_16__0__NSString_8l;
  v7[4] = type;
  v7[5] = version;
  v5 = [delete hk_map:v7];

  return v5;
}

+ (id)localizedLoggingUnitsForConcept:(id)concept
{
  v28 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  attributes = [conceptCopy attributes];
  v6 = [attributes countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(attributes);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        type = [v13 type];
        switch(type)
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
            stringValue = [v13 stringValue];
            v16 = v10;
            v10 = stringValue;
            break;
          default:
            continue;
        }
      }

      v7 = [attributes countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v7)
      {

        if (v10)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v8)
          {
            v20 = [self _localizedLoggingUnitForAttribute:v8 locale:v10 propertyType:160018];
            [v19 addObject:v20];
          }

          if (v9)
          {
            attributes = [self _localizedLoggingUnitForAttribute:v9 locale:v10 propertyType:160017];
            [v19 addObject:attributes];
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

+ (id)_localizedLoggingUnitForAttribute:(id)attribute locale:(id)locale propertyType:(int64_t)type
{
  attributeCopy = attribute;
  localeCopy = locale;
  if ([attributeCopy isDeleted])
  {
    v9 = [MEMORY[0x277CCDB10] nullPropertyWithType:type locale:localeCopy version:{objc_msgSend(attributeCopy, "version")}];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCDB10]);
    stringValue = [attributeCopy stringValue];
    v9 = [v10 initWithType:type stringValue:stringValue locale:localeCopy version:{objc_msgSend(attributeCopy, "version")}];

    localeCopy = stringValue;
  }

  return v9;
}

+ (id)localizedUserDomainConceptPropertyStringForConceptAttribute:(id)attribute locale:(id)locale propertyType:(int64_t)type
{
  attributeCopy = attribute;
  localeCopy = locale;
  if ([attributeCopy isDeleted])
  {
    v9 = [MEMORY[0x277CCDB10] nullPropertyWithType:type locale:localeCopy version:{objc_msgSend(attributeCopy, "version")}];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCDB10]);
    stringValue = [attributeCopy stringValue];
    v9 = [v10 initWithType:type stringValue:stringValue locale:localeCopy version:{objc_msgSend(attributeCopy, "version")}];

    localeCopy = stringValue;
  }

  return v9;
}

@end