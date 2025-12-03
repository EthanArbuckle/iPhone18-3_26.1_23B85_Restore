@interface DEDCloudKitBaseModel
- (NSString)modelName;
- (id)initModelWithDictionary:(id)dictionary;
- (void)addDependency:(id)dependency;
- (void)addReferenceForModel:(id)model referenceKey:(id)key;
@end

@implementation DEDCloudKitBaseModel

- (id)initModelWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = DEDCloudKitBaseModel;
  v5 = [(DEDCloudKitBaseModel *)&v31 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5A0]);
    modelName = [(DEDCloudKitBaseModel *)v5 modelName];
    v8 = [v6 initWithRecordType:modelName];
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
    v26 = dictionaryCopy;
    v12 = dictionaryCopy;
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
        cloudKitModel = [(DEDCloudKitBaseModel *)v5 cloudKitModel];
        v19 = [cloudKitModel objectForKey:v17];
        if (v19)
        {
          cloudKitModel2 = v19;
        }

        else
        {
          letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
          v22 = [v17 stringByTrimmingCharactersInSet:letterCharacterSet];
          v23 = [v22 isEqualToString:&stru_285B72378];

          if (!v23)
          {
            goto LABEL_12;
          }

          cloudKitModel = [v12 objectForKeyedSubscript:v17];
          cloudKitModel2 = [(DEDCloudKitBaseModel *)v5 cloudKitModel];
          [cloudKitModel2 setObject:cloudKitModel forKeyedSubscript:v17];
        }

LABEL_12:
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (!v14)
      {
LABEL_14:

        dictionaryCopy = v26;
        break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)addReferenceForModel:(id)model referenceKey:(id)key
{
  v6 = MEMORY[0x277CBC620];
  keyCopy = key;
  modelCopy = model;
  v9 = [v6 alloc];
  cloudKitModel = [modelCopy cloudKitModel];

  v10 = [v9 initWithRecord:cloudKitModel action:1];
  cloudKitModel2 = [(DEDCloudKitBaseModel *)self cloudKitModel];
  [cloudKitModel2 setObject:v10 forKeyedSubscript:keyCopy];
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  dependencies = [(DEDCloudKitBaseModel *)self dependencies];
  [dependencies addObject:dependencyCopy];
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