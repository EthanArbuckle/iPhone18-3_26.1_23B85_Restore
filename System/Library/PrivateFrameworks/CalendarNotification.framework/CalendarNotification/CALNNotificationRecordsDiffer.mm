@interface CALNNotificationRecordsDiffer
+ (id)diffOldRecords:(id)records withNewRecords:(id)newRecords filteredBySourceClientIDs:(id)ds;
@end

@implementation CALNNotificationRecordsDiffer

+ (id)diffOldRecords:(id)records withNewRecords:(id)newRecords filteredBySourceClientIDs:(id)ds
{
  v60 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  newRecordsCopy = newRecords;
  dsCopy = ds;
  v46 = objc_opt_new();
  v45 = objc_opt_new();
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = recordsCopy;
  v11 = [v10 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v55;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v54 + 1) + 8 * i);
        v16 = [CALNNotificationIdentifier alloc];
        sourceIdentifier = [v15 sourceIdentifier];
        sourceClientIdentifier = [v15 sourceClientIdentifier];
        v19 = [(CALNNotificationIdentifier *)v16 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];

        [v9 setObject:v15 forKeyedSubscript:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v12);
  }

  v42 = v10;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = newRecordsCopy;
  v20 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
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
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v50 + 1) + 8 * v23);
        v25 = [CALNNotificationIdentifier alloc];
        sourceIdentifier2 = [v24 sourceIdentifier];
        sourceClientIdentifier2 = [v24 sourceClientIdentifier];
        v28 = [(CALNNotificationIdentifier *)v25 initWithSourceIdentifier:sourceIdentifier2 sourceClientIdentifier:sourceClientIdentifier2];

        v29 = [v9 objectForKeyedSubscript:v28];
        v30 = v46;
        if (!v29)
        {
          goto LABEL_20;
        }

        [v9 removeObjectForKey:v28];
        content = [v29 content];
        content2 = [v24 content];
        v33 = content2;
        if (content)
        {
          v34 = content2 == 0;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {

          v30 = v45;
          if (content == v33)
          {
            goto LABEL_21;
          }

LABEL_20:
          [v30 addObject:v24];
          goto LABEL_21;
        }

        v35 = [content isEqualForDiffingPurposesToContent:content2];

        v30 = v45;
        if ((v35 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_21:

        ++v23;
      }

      while (v21 != v23);
      v36 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v21 = v36;
    }

    while (v36);
  }

  if (dsCopy)
  {
    v37 = [v9 copy];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __89__CALNNotificationRecordsDiffer_diffOldRecords_withNewRecords_filteredBySourceClientIDs___block_invoke;
    v47[3] = &unk_278D6F0F8;
    v48 = dsCopy;
    v49 = v9;
    [v37 enumerateKeysAndObjectsUsingBlock:v47];
  }

  allValues = [v9 allValues];
  v39 = [CALNNotificationRecordsDiff diffWithAddedRecords:v46 removedRecords:allValues modifiedRecords:v45];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

void __89__CALNNotificationRecordsDiffer_diffOldRecords_withNewRecords_filteredBySourceClientIDs___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [CALNNotificationFilterUtils filterIdentifierForNotificationRecord:a3];
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v6];
  }
}

@end