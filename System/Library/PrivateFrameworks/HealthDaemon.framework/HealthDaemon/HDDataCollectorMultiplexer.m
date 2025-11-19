@interface HDDataCollectorMultiplexer
- (id)diagnosticDescription;
- (id)identifierForAggregator:(id)a3;
- (id)initForCollector:(id)a3 identifier:(id)a4 profile:(id)a5 types:(id)a6;
- (id)lastDatumForType:(id)a3;
- (id)mergedConfiguration;
- (void)registerForCollectionWithState:(id)a3;
- (void)setConfiguration:(id)a3 forAggregator:(id)a4;
- (void)setLastSensorDatum:(id)a3 forAggregator:(id)a4;
- (void)unregisterForCollection;
@end

@implementation HDDataCollectorMultiplexer

- (id)initForCollector:(id)a3 identifier:(id)a4 profile:(id)a5 types:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v46 = a4;
  v11 = a5;
  v12 = a6;
  v51.receiver = self;
  v51.super_class = HDDataCollectorMultiplexer;
  v13 = [(HDDataCollectorMultiplexer *)&v51 init];
  v14 = v13;
  if (v13)
  {
    v43 = v11;
    objc_storeWeak(&v13->_profile, v11);
    v44 = v10;
    objc_storeWeak(&v14->_collector, v10);
    v15 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    recordsByAggregator = v14->_recordsByAggregator;
    v14->_recordsByAggregator = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v42 = v12;
    obj = v12;
    v18 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = MEMORY[0x277CCACA8];
          v24 = [v22 identifier];
          v25 = [v23 stringWithFormat:@"%@.%@", v46, v24];

          WeakRetained = objc_loadWeakRetained(&v14->_profile);
          v27 = [WeakRetained dataCollectionManager];
          v28 = [v27 aggregatorForType:v22];

          [v17 setObject:v28 forKeyedSubscript:v22];
          v29 = [HDDataCollectorAggregatorRecord alloc];
          v30 = v28;
          v31 = v25;
          if (v29)
          {
            v52.receiver = v29;
            v52.super_class = HDDataCollectorAggregatorRecord;
            v32 = [(HDDataCollectorMultiplexer *)&v52 init];
            v29 = v32;
            if (v32)
            {
              objc_storeStrong(&v32->_collector, v28);
              v33 = [v31 copy];
              identifier = v29->_identifier;
              v29->_identifier = v33;

              v35 = +[HDDataCollectorConfiguration disabledConfiguration];
              configuration = v29->_configuration;
              v29->_configuration = v35;

              lastSensorDatum = v29->_lastSensorDatum;
              v29->_lastSensorDatum = 0;

              v29->_hasSetLastSensorDatum = 0;
            }
          }

          [(NSMapTable *)v14->_recordsByAggregator setObject:v29 forKey:v30];
        }

        v19 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v19);
    }

    v38 = [v17 copy];
    aggregatorsByType = v14->_aggregatorsByType;
    v14->_aggregatorsByType = v38;

    v11 = v43;
    v10 = v44;
    v12 = v42;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)registerForCollectionWithState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_collector);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    aggregatorsByType = self->_aggregatorsByType;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HDDataCollectorMultiplexer_registerForCollectionWithState___block_invoke;
    v8[3] = &unk_278623A58;
    v9 = WeakRetained;
    v10 = v4;
    [(NSDictionary *)aggregatorsByType enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (void)unregisterForCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_collector);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    aggregatorsByType = self->_aggregatorsByType;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__HDDataCollectorMultiplexer_unregisterForCollection__block_invoke;
    v6[3] = &unk_278623A80;
    v7 = WeakRetained;
    [(NSDictionary *)aggregatorsByType enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (id)identifierForAggregator:(id)a3
{
  v3 = [(NSMapTable *)self->_recordsByAggregator objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)lastDatumForType:(id)a3
{
  v4 = [(NSDictionary *)self->_aggregatorsByType objectForKeyedSubscript:a3];
  if (v4)
  {
    v5 = [(NSMapTable *)self->_recordsByAggregator objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 40);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLastSensorDatum:(id)a3 forAggregator:(id)a4
{
  recordsByAggregator = self->_recordsByAggregator;
  v7 = a3;
  v9 = [(NSMapTable *)recordsByAggregator objectForKey:a4];
  v8 = v7;
  if (v9)
  {
    objc_storeStrong(v9 + 5, a3);
    *(v9 + 8) = 1;
  }
}

- (id)mergedConfiguration
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = +[HDDataCollectorConfiguration disabledConfiguration];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(NSMapTable *)self->_recordsByAggregator objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    v9 = MEMORY[0x277CCC298];
    *&v6 = 138543618;
    v18 = v6;
    while (2)
    {
      v10 = 0;
      v11 = v3;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        if (!v12 || (*(v12 + 8) & 1) == 0)
        {
          _HKInitializeLogging();
          v15 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = self;
            v25 = 2114;
            v26 = v12;
            _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: last sensor dataum has not been set for %{public}@", buf, 0x16u);
          }

          v14 = +[HDDataCollectorConfiguration disabledConfiguration];

          goto LABEL_16;
        }

        _HKInitializeLogging();
        v13 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
        {
          *buf = v18;
          v24 = self;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "%{public}@: merging configuration for record %{public}@", buf, 0x16u);
        }

        v3 = [v11 mergedConfiguration:{*(v12 + 32), v18}];

        ++v10;
        v11 = v3;
      }

      while (v7 != v10);
      v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = v3;
  v14 = v11;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setConfiguration:(id)a3 forAggregator:(id)a4
{
  recordsByAggregator = self->_recordsByAggregator;
  v7 = a3;
  v8 = [(NSMapTable *)recordsByAggregator objectForKey:a4];
  if (v8)
  {
    objc_storeStrong(v8 + 4, a3);
  }
}

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"Diagnostic Description:\n"];
  [v3 appendFormat:@"\taggregatorsByType: %@\n", self->_aggregatorsByType];
  [v3 appendFormat:@"\trecordsByAggregator: %@\n", self->_recordsByAggregator];

  return v3;
}

@end