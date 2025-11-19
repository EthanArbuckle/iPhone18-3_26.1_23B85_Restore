@interface DNDSModernAssertionSyncMetadataStore
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithLastReceivedStoreDate:(id)a3 lastSentStoreDate:(id)a4 pendingLastSentStoreDate:(id)a5;
- (id)_initWithStore:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (unint64_t)hash;
@end

@implementation DNDSModernAssertionSyncMetadataStore

- (id)_initWithStore:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DNDSModernAssertionSyncMetadataStore;
  v5 = [(DNDSModernAssertionSyncMetadataStore *)&v19 init];
  if (v5)
  {
    v6 = [v4 lastReceivedStoreDate];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
    }

    lastReceivedStoreDate = v5->_lastReceivedStoreDate;
    v5->_lastReceivedStoreDate = v8;

    v10 = [v4 lastSentStoreDate];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
    }

    lastSentStoreDate = v5->_lastSentStoreDate;
    v5->_lastSentStoreDate = v12;

    v14 = [v4 pendingLastSentStoreDate];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
    }

    pendingLastSentStoreDate = v5->_pendingLastSentStoreDate;
    v5->_pendingLastSentStoreDate = v16;
  }

  return v5;
}

- (id)_initWithLastReceivedStoreDate:(id)a3 lastSentStoreDate:(id)a4 pendingLastSentStoreDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DNDSModernAssertionSyncMetadataStore;
  v11 = [(DNDSModernAssertionSyncMetadataStore *)&v19 init];
  if (v11)
  {
    v12 = [v8 mutableCopy];
    lastReceivedStoreDate = v11->_lastReceivedStoreDate;
    v11->_lastReceivedStoreDate = v12;

    v14 = [v9 mutableCopy];
    lastSentStoreDate = v11->_lastSentStoreDate;
    v11->_lastSentStoreDate = v14;

    v16 = [v10 mutableCopy];
    pendingLastSentStoreDate = v11->_pendingLastSentStoreDate;
    v11->_pendingLastSentStoreDate = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
  v4 = [v3 hash];
  v5 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
      v8 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastReceivedStoreDate];
      if (v7 != v8)
      {
        v9 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = v9;
        v11 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastReceivedStoreDate];
        if (!v11)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        v12 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
        v3 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastReceivedStoreDate];
        if (![v12 isEqual:v3])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = v3;
        v37 = v12;
        v38 = v11;
        v39 = v10;
      }

      v14 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
      v15 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastSentStoreDate];
      if (v14 != v15)
      {
        v16 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastSentStoreDate];
          if (v18)
          {
            v35 = v14;
            v19 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
            v3 = [(DNDSModernAssertionSyncMetadataStore *)v6 lastSentStoreDate];
            if ([v19 isEqual:v3])
            {
              v31 = v19;
              v32 = v18;
              v33 = v17;
LABEL_17:
              v20 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
              v21 = [(DNDSModernAssertionSyncMetadataStore *)v6 pendingLastSentStoreDate];
              v22 = v21;
              if (v20 == v21)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = v3;
                v23 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
                if (v23)
                {
                  v24 = v23;
                  v25 = [(DNDSModernAssertionSyncMetadataStore *)v6 pendingLastSentStoreDate];
                  if (v25)
                  {
                    v30 = v25;
                    v29 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
                    v26 = [(DNDSModernAssertionSyncMetadataStore *)v6 pendingLastSentStoreDate];
                    v13 = [v29 isEqual:v26];

                    v25 = v30;
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

                v3 = v34;
                v27 = v35;
              }

              if (v27 != v15)
              {
              }

LABEL_34:
              v11 = v38;
              v10 = v39;
              v3 = v36;
              v12 = v37;
              if (v7 != v8)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            v14 = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = v14;
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
  v5 = [(DNDSModernAssertionSyncMetadataStore *)self lastReceivedStoreDate];
  v6 = [(DNDSModernAssertionSyncMetadataStore *)self lastSentStoreDate];
  v7 = [(DNDSModernAssertionSyncMetadataStore *)self pendingLastSentStoreDate];
  v8 = [v3 stringWithFormat:@"<%@: %p lastReceivedStoreDate: %@; lastSentStoreDate: %@; pendingLastSentStoreDate: %@>", v4, self, v5, v6, v7];;

  return v8;
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bs_safeObjectForKey:@"lastReceivedStoreDate" ofType:objc_opt_class()];
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

  v15 = [v4 bs_safeObjectForKey:@"lastSentStoreDate" ofType:objc_opt_class()];
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

  v47 = v4;
  v25 = [v4 bs_safeObjectForKey:@"pendingLastSentStoreDate" ofType:objc_opt_class()];
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

  v41 = [[a1 alloc] _initWithLastReceivedStoreDate:v45 lastSentStoreDate:v44 pendingLastSentStoreDate:v26];
  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_lastReceivedStoreDate, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v47 = self;
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
        v13 = [(NSMutableDictionary *)v47->_lastReceivedStoreDate objectForKeyedSubscript:v11];
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
  [v4 setObject:v15 forKeyedSubscript:@"lastReceivedStoreDate"];

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](v47->_lastSentStoreDate, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = v47->_lastSentStoreDate;
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
        v24 = [(NSMutableDictionary *)v47->_lastSentStoreDate objectForKeyedSubscript:v22];
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
  v44 = v4;
  [v4 setObject:v26 forKeyedSubscript:@"lastSentStoreDate"];

  v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](v47->_pendingLastSentStoreDate, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v47->_pendingLastSentStoreDate;
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
        v32 = [(NSMutableDictionary *)v47->_pendingLastSentStoreDate objectForKeyedSubscript:v31];
        v60[0] = @"lastUpdateDate";
        v33 = MEMORY[0x277CCABB0];
        v34 = [v32 lastUpdateDate];
        [v34 timeIntervalSinceReferenceDate];
        v35 = [v33 numberWithDouble:?];
        v60[1] = @"deviceIdentifiers";
        v61[0] = v35;
        v36 = [v32 deviceIdentifiers];
        v37 = [v36 allObjects];
        v61[1] = v37;
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