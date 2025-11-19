@interface DEDCloudKitBaseModel
- (NSString)modelName;
- (id)initModelWithDictionary:(id)a3;
- (void)addDependency:(id)a3;
- (void)addReferenceForModel:(id)a3 referenceKey:(id)a4;
@end

@implementation DEDCloudKitBaseModel

- (id)initModelWithDictionary:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = DEDCloudKitBaseModel;
  v5 = [(DEDCloudKitBaseModel *)&v31 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5A0]);
    v7 = [(DEDCloudKitBaseModel *)v5 modelName];
    v8 = [v6 initWithRecordType:v7];
    [(DEDCloudKitBaseModel *)v5 setCloudKitModel:v8];

    v9 = +[DEDConfiguration sharedInstance];
    v10 = os_log_create([v9 loggingSubsystem], "ded-cloudkit-model");
    [(DEDCloudKitBaseModel *)v5 setLog:v10];

    v11 = objc_opt_new();
    [(DEDCloudKitBaseModel *)v5 setDependencies:v11];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v4;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = *v28;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        v18 = [(DEDCloudKitBaseModel *)v5 cloudKitModel];
        v19 = [v18 objectForKey:v17];
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v21 = [MEMORY[0x277CCA900] letterCharacterSet];
          v22 = [v17 stringByTrimmingCharactersInSet:v21];
          v23 = [v22 isEqualToString:&stru_285B72378];

          if (!v23)
          {
            goto LABEL_12;
          }

          v18 = [v12 objectForKeyedSubscript:v17];
          v20 = [(DEDCloudKitBaseModel *)v5 cloudKitModel];
          [v20 setObject:v18 forKeyedSubscript:v17];
        }

LABEL_12:
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (!v14)
      {
LABEL_14:

        v4 = v26;
        break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)addReferenceForModel:(id)a3 referenceKey:(id)a4
{
  v6 = MEMORY[0x277CBC620];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v12 = [v8 cloudKitModel];

  v10 = [v9 initWithRecord:v12 action:1];
  v11 = [(DEDCloudKitBaseModel *)self cloudKitModel];
  [v11 setObject:v10 forKeyedSubscript:v7];
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  v5 = [(DEDCloudKitBaseModel *)self dependencies];
  [v5 addObject:v4];
}

- (NSString)modelName
{
  v2 = [(DEDCloudKitBaseModel *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(DEDCloudKitBaseModel *)v2 modelName];
  }

  return &stru_285B72378;
}

@end