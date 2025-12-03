@interface DESFedStatsDataType
+ (id)extractFedStatsDataTypeFrom:(id)from forKey:(id *)key;
+ (void)initialize;
@end

@implementation DESFedStatsDataType

+ (id)extractFedStatsDataTypeFrom:(id)from forKey:(id *)key
{
  v38 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  recipeUserInfo = [fromCopy recipeUserInfo];
  v7 = [recipeUserInfo objectForKeyedSubscript:@"MetadataEncoding"];

  allKeys = [v7 allKeys];
  v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    keyCopy = key;
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:@"type"];
        v17 = [v16 isEqualToString:@"fedstats"];

        if (v17)
        {
          v19 = sLog;
          if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
          {
            v20 = v19;
            recipeID = [fromCopy recipeID];
            *buf = 138412546;
            v34 = recipeID;
            v35 = 2112;
            v36 = v14;
            _os_log_impl(&dword_248FF7000, v20, OS_LOG_TYPE_INFO, "Recipe %@ has schema for key %@ to use FedStats encoding.", buf, 0x16u);
          }

          v22 = [v15 objectForKeyedSubscript:@"dataContentTypes"];

          if (v22)
          {
            v23 = v14;
            *keyCopy = v14;
            v18 = [v15 objectForKeyedSubscript:@"dataContentTypes"];
          }

          else
          {
            v24 = sLog;
            if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
            {
              [(DESFedStatsDataType *)v24 extractFedStatsDataTypeFrom:fromCopy forKey:v14];
            }

            v18 = 0;
          }

          goto LABEL_19;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.DistributedEvaluation", "DESFedStatsDataType");

    MEMORY[0x2821F96F8]();
  }
}

+ (void)extractFedStatsDataTypeFrom:(uint64_t)a3 forKey:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 recipeID];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  v12 = 2112;
  v13 = @"dataContentTypes";
  _os_log_error_impl(&dword_248FF7000, v5, OS_LOG_TYPE_ERROR, "Recipe %@ has schema for key %@ to use FedStats encoding, but the schema key is not %@.", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end