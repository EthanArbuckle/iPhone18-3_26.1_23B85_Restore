@interface _ICPortraitUtilities
+ (id)acceptedSourceBundleIds;
+ (id)contactFromPortraitContact:(id)a3;
+ (id)contactRecordFromPortraitContactRecord:(id)a3;
+ (id)excludedAlgorithms;
+ (id)filteredNamedEntitiesFromJSONDonations:(id)a3;
+ (id)namedEntityRecordFromPortraitNamedEntityRecord:(id)a3;
+ (unsigned)contactChangeTypeForPortraitChangeType:(unsigned __int8)a3;
+ (unsigned)contactSourceTypeForPortraitSourceType:(unsigned __int8)a3;
@end

@implementation _ICPortraitUtilities

+ (id)contactRecordFromPortraitContactRecord:(id)a3
{
  v4 = a3;
  v5 = [a1 contactFromPortraitContact:v4];
  v6 = [a1 contactChangeTypeForPortraitChangeType:{objc_msgSend(v4, "changeType")}];
  v7 = [a1 contactSourceTypeForPortraitSourceType:{objc_msgSend(v4, "source")}];
  v8 = [_ICContactRecord alloc];
  v9 = [v4 sourceIdentifier];

  v10 = [(_ICContactRecord *)v8 initWithIdentifier:v9 contact:v5 changeType:v6 source:v7];

  return v10;
}

+ (id)contactFromPortraitContact:(id)a3
{
  v3 = a3;
  v4 = [_ICContact alloc];
  v21 = [v3 firstName];
  v5 = [v3 phoneticFirstName];
  v20 = [v3 middleName];
  v19 = [v3 phoneticMiddleName];
  v18 = [v3 lastName];
  v17 = [v3 phoneticLastName];
  v15 = [v3 organizationName];
  v14 = [v3 jobTitle];
  v6 = [v3 nickname];
  v7 = [v3 relatedNames];
  v8 = [v7 allValues];
  v9 = [v3 streetNames];
  v10 = [v3 cityNames];
  [v3 score];
  v12 = v11;

  v16 = [(_ICContact *)v4 initWithFirstName:v21 phoneticFirstName:v5 middleName:v20 phoneticMiddleName:v19 lastName:v18 phoneticLastName:v17 organizationName:v12 jobTitle:v15 nickname:v14 relations:v6 streets:v8 cities:v9 score:v10];

  return v16;
}

+ (unsigned)contactChangeTypeForPortraitChangeType:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)contactSourceTypeForPortraitSourceType:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (id)acceptedSourceBundleIds
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D3A648];
  v9[0] = *MEMORY[0x277D3A698];
  v9[1] = v3;
  v4 = *MEMORY[0x277D3A650];
  v9[2] = *MEMORY[0x277D3A658];
  v9[3] = v4;
  v9[4] = *MEMORY[0x277D3A608];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];
  v6 = [v2 setWithArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)excludedAlgorithms
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = 1; i != 18; ++i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i];
    [v2 addObject:v4];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = +[_ICPortraitUtilities acceptedAlgorithms];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (j = 0; j != v7; ++j)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v2 removeObject:*(*(&v13 + 1) + 8 * j)];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v2 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)namedEntityRecordFromPortraitNamedEntityRecord:(id)a3
{
  v3 = a3;
  if (isTransientLexiconIngestionV2Enabled())
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v3 source];
    v6 = [v5 date];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v4 components:16 fromDate:v6 toDate:v7 options:0];
    v9 = [v8 day];

    v10 = +[_ICPortraitUtilities acceptedSourceBundleIds];
    v11 = [v3 source];
    v12 = [v11 bundleId];
    if ([v10 containsObject:v12])
    {
      v13 = +[_ICPortraitUtilities acceptedAlgorithms];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "algorithm")}];
      v15 = [v13 containsObject:v14];
      if (v9 < 8)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v21 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(_ICPortraitUtilities *)v3 namedEntityRecordFromPortraitNamedEntityRecord:v21];
    }

    v22 = [_ICNamedEntityRecord alloc];
    v23 = [v3 entity];
    v24 = [v23 name];
    v25 = [v3 source];
    v26 = [v25 date];
    [v26 timeIntervalSinceReferenceDate];
    v20 = [(_ICNamedEntityRecord *)v22 initWithName:v24 timestamp:v16 passesFilters:?];
  }

  else
  {
    v17 = [_ICNamedEntityRecord alloc];
    v18 = [v3 entity];
    v19 = [v18 name];
    v20 = [(_ICNamedEntityRecord *)v17 initWithName:v19];
  }

  return v20;
}

+ (id)filteredNamedEntitiesFromJSONDonations:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v35 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v41 = *v43;
    do
    {
      v6 = 0;
      v37 = v5;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"namedEntities"];
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v9 objectForKeyedSubscript:@"name"];
        if (v10)
        {
          v11 = v10;
          v12 = [v7 objectForKeyedSubscript:@"source"];
          v13 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];

          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = [v7 objectForKeyedSubscript:@"namedEntities"];
          v15 = [v14 objectAtIndexedSubscript:0];
          v8 = [v15 objectForKeyedSubscript:@"name"];

          v16 = [v7 objectForKeyedSubscript:@"source"];
          v9 = [v16 objectForKeyedSubscript:@"bundleIdentifier"];

          v17 = [v7 objectForKeyedSubscript:@"source"];
          v18 = [v17 objectForKeyedSubscript:@"date"];

          v19 = objc_opt_new();
          [v19 setFormatOptions:1907];
          v39 = v19;
          v40 = v18;
          v20 = [v19 dateFromString:v18];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = [MEMORY[0x277CBEAA8] date];
          }

          v23 = v22;

          v24 = [v7 objectForKeyedSubscript:@"algorithm"];
          v25 = 1;
          while (1)
          {
            v26 = [MEMORY[0x277D3A438] describeAlgorithm:v25];
            v27 = [v24 isEqualToString:v26];

            if (v27)
            {
              break;
            }

            if (++v25 == 18)
            {
              v25 = 0;
              break;
            }
          }

          v28 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v8 category:0 language:@"en_US"];
          v29 = v23;
          v30 = [objc_alloc(MEMORY[0x277D3A4D8]) initWithBundleId:v9 groupId:&stru_28670C3F8 documentId:&stru_28670C3F8 date:v23];
          v31 = objc_alloc_init(MEMORY[0x277D3A410]);
          [v31 setEntity:v28];
          [v31 setSource:v30];
          [v31 setAlgorithm:v25];
          v32 = [a1 namedEntityRecordFromPortraitNamedEntityRecord:v31];
          if ([v32 passesFilters])
          {
            [v35 addObject:v8];
          }

          v5 = v37;
        }

LABEL_19:
        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v5);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (void)namedEntityRecordFromPortraitNamedEntityRecord:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 entity];
  v5 = [v4 name];
  v6 = [v5 UTF8String];
  v7 = [a1 source];
  v8 = [v7 bundleId];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "algorithm")}];
  v11 = 136315650;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = v9;
  _os_log_debug_impl(&dword_254BD0000, a2, OS_LOG_TYPE_DEBUG, "Performed local filtering in InputContext on Portrait entity with name %s, %@, %@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end