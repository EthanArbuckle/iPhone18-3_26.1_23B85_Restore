@interface MTTreatmentProfile
+ (id)treatmentProfileWithConfigData:(id)data;
- (MTTreatmentProfile)initWithConfigDictionary:(id)dictionary;
- (id)performTreatments:(id)treatments;
@end

@implementation MTTreatmentProfile

+ (id)treatmentProfileWithConfigData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
    if (treatmentProfileWithConfigData__onceToken != -1)
    {
      +[MTTreatmentProfile treatmentProfileWithConfigData:];
    }

    v5 = treatmentProfileWithConfigData__treatmentProfileCache;
    objc_sync_enter(v5);
    v6 = [treatmentProfileWithConfigData__treatmentProfileCache objectForKeyedSubscript:v4];
    if (!v6)
    {
      v6 = [[MTTreatmentProfile alloc] initWithConfigDictionary:v4];
      [treatmentProfileWithConfigData__treatmentProfileCache setObject:v6 forKeyedSubscript:v4];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __53__MTTreatmentProfile_treatmentProfileWithConfigData___block_invoke()
{
  treatmentProfileWithConfigData__treatmentProfileCache = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

- (MTTreatmentProfile)initWithConfigDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = MTTreatmentProfile;
  v5 = [(MTTreatmentProfile *)&v26 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 intValue] > 1)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"treatments"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258F4B000, v20, OS_LOG_TYPE_ERROR, "MetricsKit: Treatment profile doesn't have valid treatments configuration", buf, 2u);
        }

        goto LABEL_7;
      }
    }

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MTTreatment treatmentWithConfigData:*(*(&v21 + 1) + 8 * v15), v21];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
    [(MTTreatmentProfile *)v5 setTreatments:v17];

LABEL_18:
    v8 = v5;
    goto LABEL_19;
  }

  v7 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_ERROR, "MetricsKit: Treatment profile configuration is empty or the format version is not supported", buf, 2u);
  }

LABEL_7:
  v8 = 0;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)performTreatments:(id)treatments
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  treatmentsCopy = treatments;
  v14 = treatmentsCopy;
  treatments = [(MTTreatmentProfile *)self treatments];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MTTreatmentProfile_performTreatments___block_invoke;
  v8[3] = &unk_2798CE938;
  v8[4] = &v9;
  [treatments enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __40__MTTreatmentProfile_performTreatments___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(*(result + 32) + 8) + 40))
  {
    v4 = result;
    v5 = [a2 performTreatment:?];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

@end