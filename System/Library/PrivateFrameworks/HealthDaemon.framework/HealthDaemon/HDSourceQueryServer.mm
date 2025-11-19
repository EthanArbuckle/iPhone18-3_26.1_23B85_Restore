@interface HDSourceQueryServer
- (HDSourceQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation HDSourceQueryServer

- (HDSourceQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v13.receiver = self;
  v13.super_class = HDSourceQueryServer;
  v11 = [(HDQueryServer *)&v13 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_deliversUpdates = [v10 shouldDeactivateAfterInitialResults];
  }

  return v11;
}

- (void)_queue_start
{
  v63 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = HDSourceQueryServer;
  [(HDQueryServer *)&v53 _queue_start];
  if (self)
  {
    v3 = [(HDQueryServer *)self clientProxy];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HDQueryServer *)self sampleType];
  v5 = [(HDQueryServer *)self filter];
  v52 = 0;
  v6 = v4;
  v7 = v5;
  if (self)
  {
    v8 = [(HDQueryServer *)self profile];
    v9 = [v8 sourceManager];

    v10 = [(HDQueryServer *)self profile];
    v11 = [v7 predicateWithProfile:v10];

    v12 = [(HDQueryServer *)self authorizationStatusRecordForType:v6 error:&v52];
    v13 = v12;
    if (!v12)
    {
      v30 = 0;
LABEL_45:

      goto LABEL_46;
    }

    if (![v12 canRead])
    {
      if (![(HDQueryServer *)self _shouldStopProcessingQuery])
      {
        goto LABEL_41;
      }

      v17 = 0;
      v18 = 0;
LABEL_27:
      v30 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v51 = v13;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = [objc_msgSend(v6 "dataObjectClass")];
    v16 = [(HDQueryServer *)self profile];
    v61 = 0;
    v17 = [v15 sourceIDsForSamplesWithType:v6 profile:v16 predicate:v11 error:&v61];
    v18 = v61;

    if (!v17)
    {

      v30 = 0;
      v13 = v51;
      goto LABEL_44;
    }

    v50 = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__HDSourceQueryServer__sourcesForObjectsOfType_filter_error___block_invoke;
    aBlock[3] = &unk_278616EF0;
    v59 = v9;
    obj = v14;
    v48 = v14;
    v60 = v48;
    v19 = _Block_copy(aBlock);
    v20 = [v51 restrictedSourceEntities];

    v49 = v17;
    if (v20)
    {
      v45 = v11;
      v46 = v9;
      v47 = v7;
      v43 = v3;
      v21 = [v51 restrictedSourceEntities];
      [v21 hk_map:&__block_literal_global_31];
      v23 = v22 = v17;

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v55;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v55 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v54 + 1) + 8 * i);
            if ([v23 containsObject:v29])
            {
              v19[2](v19, v29);
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v26);
      }

      v3 = v43;
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v23 = v17;
      v31 = [v23 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (!v31)
      {
        goto LABEL_19;
      }

      v32 = v31;
      v45 = v11;
      v46 = v9;
      v47 = v7;
      v33 = *v55;
LABEL_31:
      v34 = 0;
      while (1)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v23);
        }

        v35 = *(*(&v54 + 1) + 8 * v34);
        if ([(HDQueryServer *)self _shouldStopProcessingQuery])
        {
          break;
        }

        v19[2](v19, v35);
        if (v32 == ++v34)
        {
          v32 = [v23 countByEnumeratingWithState:&v54 objects:v62 count:16];
          v18 = v50;
          if (v32)
          {
            goto LABEL_31;
          }

          v7 = v47;
          v11 = v45;
          goto LABEL_20;
        }
      }
    }

    v9 = v46;
    v7 = v47;
    v11 = v45;
LABEL_19:
    v18 = v50;
LABEL_20:

    v17 = v48;
    v13 = v51;
    if (![(HDQueryServer *)self _shouldStopProcessingQuery])
    {
      if (v17)
      {
        objc_storeStrong(&self->_sources, obj);
        if (!v18)
        {
          v18 = 0;
LABEL_43:
          v30 = self->_sources;
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      if (v18)
      {
        v36 = v18;
LABEL_40:
        v37 = v18;
        v52 = v18;
        sources = v18;
LABEL_42:

        goto LABEL_43;
      }

LABEL_41:
      v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v18 = 0;
      v17 = 0;
      sources = self->_sources;
      self->_sources = v39;
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  v30 = 0;
LABEL_46:

  v40 = v52;
  v41 = [(HDQueryServer *)self queryUUID];
  if (v40)
  {
    [v3 client_deliverError:v40 forQuery:v41];
  }

  else
  {
    [v3 client_deliverSources:v30 forQuery:v41];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = a3;
  if (![(HDQueryServer *)self _shouldStopProcessingQuery])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__HDSourceQueryServer_samplesAdded_anchor___block_invoke;
    v6[3] = &unk_278613920;
    v7 = v5;
    v8 = self;
    [(HDQueryServer *)self onQueue:v6];
  }
}

void __43__HDSourceQueryServer_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v3 = [v2 _source];

    if (!v3 || ([*(*(a1 + 40) + 216) containsObject:v3] & 1) != 0)
    {
      goto LABEL_31;
    }

    v4 = *(a1 + 40);
    v5 = [v4 sampleType];
    v34 = 0;
    v6 = [v4 authorizationStatusRecordForType:v5 error:&v34];
    v7 = v34;

    if (v6)
    {
      if (![v6 canRead])
      {
        goto LABEL_30;
      }

      v8 = [v6 restrictedSourceEntities];

      if (v8)
      {
        v9 = [v6 restrictedSourceEntities];
        v10 = [v9 anyObject];

        if (!v10)
        {
          goto LABEL_30;
        }

        v11 = [*(a1 + 40) profile];
        v12 = [v11 sourceManager];
        v33 = 0;
        v13 = [v12 clientSourceForSourceEntity:v10 error:&v33];
        v14 = v33;

        if (!v13)
        {
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v37 = v14;
            _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve client source: %{public}@:", buf, 0xCu);
          }
        }

        v16 = [v13 isEqual:v3];

        if (!v16)
        {
          goto LABEL_30;
        }
      }

      v17 = [*(a1 + 40) filter];
      if (v17)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v18 = *(a1 + 32);
        v19 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v18);
              }

              if (([v17 acceptsDataObject:*(*(&v29 + 1) + 8 * i)]& 1) != 0)
              {

                goto LABEL_25;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
LABEL_25:
        v23 = *(a1 + 40);
        v18 = v3;
        if (v23 && ([v23 _shouldStopProcessingQuery] & 1) == 0)
        {
          [v23[27] addObject:v18];
          v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v18, 0}];
          v25 = [v23 clientProxy];
          v26 = v23[27];
          v27 = [v23 queryUUID];
          [v25 client_deliverUpdatedSources:v26 added:v24 forQuery:v27];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogAuthorization();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v7;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to retrieve authorization status; ignoring added samples: %{public}@", buf, 0xCu);
      }
    }

LABEL_30:
LABEL_31:
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HDSourceQueryServer__sourcesForObjectsOfType_filter_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) clientSourceForPersistentID:a2 error:0];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__HDSourceQueryServer__sourcesForObjectsOfType_filter_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

@end