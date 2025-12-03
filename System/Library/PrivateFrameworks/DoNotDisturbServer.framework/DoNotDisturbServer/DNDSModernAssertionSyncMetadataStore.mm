@interface DNDSModernAssertionSyncMetadataStore
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithLastReceivedStoreDate:(id)date lastSentStoreDate:(id)storeDate pendingLastSentStoreDate:(id)sentStoreDate;
- (id)_initWithStore:(id)store;
- (id)dictionaryRepresentationWithContext:(id)context;
- (unint64_t)hash;
@end

@implementation DNDSModernAssertionSyncMetadataStore

- (id)_initWithStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = DNDSModernAssertionSyncMetadataStore;
  v5 = [(DNDSModernAssertionSyncMetadataStore *)&v19 init];
  if (v5)
  {
    lastReceivedStoreDate = [storeCopy lastReceivedStoreDate];
    v7 = lastReceivedStoreDate;
    if (lastReceivedStoreDate)
    {
      dictionary = lastReceivedStoreDate;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    lastReceivedStoreDate = v5->_lastReceivedStoreDate;
    v5->_lastReceivedStoreDate = dictionary;

    lastSentStoreDate = [storeCopy lastSentStoreDate];
    v11 = lastSentStoreDate;
    if (lastSentStoreDate)
    {
      dictionary2 = lastSentStoreDate;
    }

    else
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    }

    lastSentStoreDate = v5->_lastSentStoreDate;
    v5->_lastSentStoreDate = dictionary2;

    pendingLastSentStoreDate = [storeCopy pendingLastSentStoreDate];
    v15 = pendingLastSentStoreDate;
    if (pendingLastSentStoreDate)
    {
      dictionary3 = pendingLastSentStoreDate;
    }

    else
    {
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    }

    pendingLastSentStoreDate = v5->_pendingLastSentStoreDate;
    v5->_pendingLastSentStoreDate = dictionary3;
  }

  return v5;
}

- (id)_initWithLastReceivedStoreDate:(id)date lastSentStoreDate:(id)storeDate pendingLastSentStoreDate:(id)sentStoreDate
{
  dateCopy = date;
  storeDateCopy = storeDate;
  sentStoreDateCopy = sentStoreDate;
  v19.receiver = self;
  v19.super_class = DNDSModernAssertionSyncMetadataStore;
  v11 = [(DNDSModernAssertionSyncMetadataStore *)&v19 init];
  if (v11)
  {
    v12 = [dateCopy mutableCopy];
    lastReceivedStoreDate = v11->_lastReceivedStoreDate;
    v11->_lastReceivedStoreDate = v12;

    v14 = [storeDateCopy mutableCopy];
    lastSentStoreDate = v11->_lastSentStoreDate;
    v11->_lastSentStoreDate = v14;

    v16 = [sentStoreDateCopy mutableCopy];
    pendingLastSentStoreDate = v11->_pendingLastSentStoreDate;
    v11->_pendingLastSentStoreDate = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
  v4 = [lastReceivedStoreDate hash];
  lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
  v6 = [lastSentStoreDate hash] ^ v4;
  pendingLastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
  v8 = [pendingLastSentStoreDate hash];

  return v6 ^ v8;
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
      v6 = equalCopy;
      lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
      lastReceivedStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastReceivedStoreDate];
      if (lastReceivedStoreDate != lastReceivedStoreDate2)
      {
        lastReceivedStoreDate3 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
        if (!lastReceivedStoreDate3)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = lastReceivedStoreDate3;
        lastReceivedStoreDate4 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastReceivedStoreDate];
        if (!lastReceivedStoreDate4)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        lastReceivedStoreDate5 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
        lastReceivedStoreDate6 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastReceivedStoreDate];
        if (![lastReceivedStoreDate5 isEqual:lastReceivedStoreDate6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = lastReceivedStoreDate6;
        v37 = lastReceivedStoreDate5;
        v38 = lastReceivedStoreDate4;
        v39 = v10;
      }

      lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
      lastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastSentStoreDate];
      if (lastSentStoreDate != lastSentStoreDate2)
      {
        lastSentStoreDate3 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
        if (lastSentStoreDate3)
        {
          v17 = lastSentStoreDate3;
          lastSentStoreDate4 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastSentStoreDate];
          if (lastSentStoreDate4)
          {
            v35 = lastSentStoreDate;
            lastSentStoreDate5 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
            lastReceivedStoreDate6 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastSentStoreDate];
            if ([lastSentStoreDate5 isEqual:lastReceivedStoreDate6])
            {
              v31 = lastSentStoreDate5;
              v32 = lastSentStoreDate4;
              v33 = v17;
LABEL_17:
              pendingLastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
              pendingLastSentStoreDate2 = [(DNDSModernAssertionSyncMetadataStore *)v6 pendingLastSentStoreDate];
              v22 = pendingLastSentStoreDate2;
              if (pendingLastSentStoreDate == pendingLastSentStoreDate2)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = lastReceivedStoreDate6;
                pendingLastSentStoreDate3 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
                if (pendingLastSentStoreDate3)
                {
                  v24 = pendingLastSentStoreDate3;
                  pendingLastSentStoreDate4 = [(DNDSModernAssertionSyncMetadataStore *)v6 pendingLastSentStoreDate];
                  if (pendingLastSentStoreDate4)
                  {
                    v30 = pendingLastSentStoreDate4;
                    pendingLastSentStoreDate5 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
                    pendingLastSentStoreDate6 = [(DNDSModernAssertionSyncMetadataStore *)v6 pendingLastSentStoreDate];
                    v13 = [pendingLastSentStoreDate5 isEqual:pendingLastSentStoreDate6];

                    pendingLastSentStoreDate4 = v30;
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

                lastReceivedStoreDate6 = v34;
                v27 = v35;
              }

              if (v27 != lastSentStoreDate2)
              {
              }

LABEL_34:
              lastReceivedStoreDate4 = v38;
              v10 = v39;
              lastReceivedStoreDate6 = v36;
              lastReceivedStoreDate5 = v37;
              if (lastReceivedStoreDate != lastReceivedStoreDate2)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            lastSentStoreDate = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = lastSentStoreDate;
      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_38:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  lastReceivedStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
  lastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
  pendingLastSentStoreDate = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
  v8 = [v3 stringWithFormat:@"<%@: %p lastReceivedStoreDate: %@; lastSentStoreDate: %@; pendingLastSentStoreDate: %@>", v4, self, lastReceivedStoreDate, lastSentStoreDate, pendingLastSentStoreDate];;

  return v8;
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy bs_safeObjectForKey:@"lastReceivedStoreDate" ofType:objc_opt_class()];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = MEMORY[0x277CBEAA8];
        v13 = [obj objectForKeyedSubscript:v11];
        [v13 doubleValue];
        v14 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
        [v6 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v8);
  }

  v45 = v6;

  v15 = [representationCopy bs_safeObjectForKey:@"lastSentStoreDate" ofType:objc_opt_class()];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = v15;
  v17 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v55;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v48);
        }

        v21 = *(*(&v54 + 1) + 8 * j);
        v22 = MEMORY[0x277CBEAA8];
        v23 = [v48 objectForKeyedSubscript:v21];
        [v23 doubleValue];
        v24 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
        [v16 setObject:v24 forKeyedSubscript:v21];
      }

      v18 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v18);
  }

  v44 = v16;

  v47 = representationCopy;
  v25 = [representationCopy bs_safeObjectForKey:@"pendingLastSentStoreDate" ofType:objc_opt_class()];
  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v25, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v51;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v50 + 1) + 8 * k);
        v33 = [v27 objectForKeyedSubscript:{v32, v44}];
        v34 = MEMORY[0x277CBEAA8];
        v35 = [v33 objectForKeyedSubscript:@"lastUpdateDate"];
        [v35 doubleValue];
        v36 = [v34 dateWithTimeIntervalSinceReferenceDate:?];

        v37 = MEMORY[0x277CBEB98];
        v38 = [v33 objectForKeyedSubscript:@"deviceIdentifiers"];
        v39 = [v37 setWithArray:v38];

        v40 = [[_DNDSPendingMessageRecipients alloc] initWithLastUpdateDate:v36 deviceIdentifiers:v39];
        [v26 setObject:v40 forKeyedSubscript:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v29);
  }

  v41 = [[self alloc] _initWithLastReceivedStoreDate:v45 lastSentStoreDate:v44 pendingLastSentStoreDate:v26];
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_lastReceivedStoreDate, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  v6 = self->_lastReceivedStoreDate;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v57;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        v13 = [(NSMutableDictionary *)selfCopy->_lastReceivedStoreDate objectForKeyedSubscript:v11];
        [v13 timeIntervalSinceReferenceDate];
        v14 = [v12 numberWithDouble:?];
        [v5 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v8);
  }

  v43 = v5;
  v15 = [v5 copy];
  [dictionary setObject:v15 forKeyedSubscript:@"lastReceivedStoreDate"];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](selfCopy->_lastSentStoreDate, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = selfCopy->_lastSentStoreDate;
  v18 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v53;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v52 + 1) + 8 * j);
        v23 = MEMORY[0x277CCABB0];
        v24 = [(NSMutableDictionary *)selfCopy->_lastSentStoreDate objectForKeyedSubscript:v22];
        [v24 timeIntervalSinceReferenceDate];
        v25 = [v23 numberWithDouble:?];
        [v16 setObject:v25 forKeyedSubscript:v22];
      }

      v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v19);
  }

  v42 = v16;
  v26 = [v16 copy];
  v44 = dictionary;
  [dictionary setObject:v26 forKeyedSubscript:@"lastSentStoreDate"];

  v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](selfCopy->_pendingLastSentStoreDate, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = selfCopy->_pendingLastSentStoreDate;
  v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v48 + 1) + 8 * k);
        v32 = [(NSMutableDictionary *)selfCopy->_pendingLastSentStoreDate objectForKeyedSubscript:v31];
        v60[0] = @"lastUpdateDate";
        v33 = MEMORY[0x277CCABB0];
        lastUpdateDate = [v32 lastUpdateDate];
        [lastUpdateDate timeIntervalSinceReferenceDate];
        v35 = [v33 numberWithDouble:?];
        v60[1] = @"deviceIdentifiers";
        v61[0] = v35;
        deviceIdentifiers = [v32 deviceIdentifiers];
        allObjects = [deviceIdentifiers allObjects];
        v61[1] = allObjects;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
        [v46 setObject:v38 forKeyedSubscript:v31];
      }

      v28 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v28);
  }

  v39 = [v46 copy];
  [v44 setObject:v39 forKeyedSubscript:@"pendingLastSentStoreDate"];

  v40 = *MEMORY[0x277D85DE8];

  return v44;
}

@end