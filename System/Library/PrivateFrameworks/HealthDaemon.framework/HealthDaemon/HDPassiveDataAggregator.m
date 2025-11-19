@interface HDPassiveDataAggregator
- (Class)sensorDatumClass;
- (id)dataObjectsFromSensorDatum:(id)a3 error:(id *)a4;
- (void)dataCollector:(id)a3 didCollectSensorData:(id)a4 device:(id)a5 options:(unint64_t)a6;
@end

@implementation HDPassiveDataAggregator

- (Class)sensorDatumClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)dataObjectsFromSensorDatum:(id)a3 error:(id *)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)dataCollector:(id)a3 didCollectSensorData:(id)a4 device:(id)a5 options:(unint64_t)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v51.receiver = self;
  v51.super_class = HDPassiveDataAggregator;
  [(HDDataAggregator *)&v51 dataCollector:v10 didCollectSensorData:v11 device:v12 options:a6];
  if ((a6 & 1) == 0)
  {
    v13 = [(HDPassiveDataAggregator *)v10 sourceForDataAggregator:self];
    v14 = v13;
    if (v13)
    {
      v40 = v13;
      v41 = v12;
      v43 = v10;
      [(HDPassiveDataAggregator *)self sensorDatumClass];
      v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v42 = v11;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v60 count:16];
      v17 = MEMORY[0x277CCC298];
      if (v16)
      {
        v18 = v16;
        v19 = *v48;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v48 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v47 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              if ([(HDDataAggregator *)self doesDatumPredateDatabaseObliteration:v21])
              {
                _HKInitializeLogging();
                v22 = *v17;
                if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v53 = self;
                  _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting sensor datum from pre-obliteration", buf, 0xCu);
                }
              }

              else
              {
                v46 = 0;
                v29 = [(HDPassiveDataAggregator *)self dataObjectsFromSensorDatum:v21 error:&v46];
                v30 = v46;
                if (v29)
                {
                  [(HDPassiveDataAggregator *)v44 addObjectsFromArray:v29];
                }

                else
                {
                  _HKInitializeLogging();
                  v31 = *v17;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v32 = v31;
                    v33 = objc_opt_class();
                    *buf = 138412802;
                    v53 = v21;
                    v54 = 2114;
                    v55 = v33;
                    v56 = 2114;
                    v57 = v30;
                    v34 = v33;
                    _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Failed to produce objects from sensor datum %@ (%{public}@): %{public}@", buf, 0x20u);
                  }
                }

                v17 = MEMORY[0x277CCC298];
              }
            }

            else
            {
              _HKInitializeLogging();
              v23 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
              {
                v24 = v23;
                v25 = objc_opt_class();
                v26 = v25;
                v27 = [(HDPassiveDataAggregator *)self sensorDatumClass];
                *buf = 138543618;
                v53 = v25;
                v54 = 2114;
                v55 = v27;
                v28 = v27;
                _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Rejecting sensor datum of unexpected class %{public}@ (expected %{public}@)", buf, 0x16u);
              }
            }
          }

          v18 = [v15 countByEnumeratingWithState:&v47 objects:v60 count:16];
        }

        while (v18);
      }

      v45 = 0;
      v10 = v43;
      v14 = v40;
      v12 = v41;
      v35 = [(HDDataAggregator *)self persistObjects:v44 usedDatums:v15 collector:v43 source:v40 device:v41 resolveAssociations:0 error:&v45];
      v36 = v45;
      if (!v35)
      {
        _HKInitializeLogging();
        v37 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v53 = v44;
          v54 = 2114;
          v55 = v15;
          v56 = 2114;
          v57 = v43;
          v58 = 2114;
          v59 = v36;
          _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Failed to persist %@ through %{public}@ from %{public}@: %{public}@", buf, 0x2Au);
        }
      }

      v11 = v42;
    }

    else
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v10;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Collector %{public}@ failed to provide a source", buf, 0xCu);
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end