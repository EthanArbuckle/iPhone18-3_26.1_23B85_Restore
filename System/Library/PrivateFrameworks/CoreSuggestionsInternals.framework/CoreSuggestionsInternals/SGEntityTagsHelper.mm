@interface SGEntityTagsHelper
+ (BOOL)schemasInEntityTagsBelongsToPendingConfirmationEvent:(id)event;
+ (id)extractSchemasFromEntityTags:(id)tags;
@end

@implementation SGEntityTagsHelper

+ (id)extractSchemasFromEntityTags:(id)tags
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  tagsCopy = tags;
  v4 = [tagsCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(tagsCopy);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 isSchemaOrg])
        {
          v10 = objc_autoreleasePoolPush();
          v11 = MEMORY[0x277CCAAA0];
          value = [v8 value];
          v13 = [value dataUsingEncoding:4];
          v19 = 0;
          v9 = [v11 JSONObjectWithData:v13 options:0 error:&v19];
          v14 = v19;

          if (v14)
          {
            v15 = sgLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v25 = v14;
              _os_log_fault_impl(&dword_231E60000, v15, OS_LOG_TYPE_FAULT, "JSON decode error loading schemas: %@", buf, 0xCu);
            }

            if (_PASEvaluateLogFaultAndProbCrashCriteria())
            {
              abort();
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 count])
          {

            v9 = 0;
          }

          objc_autoreleasePoolPop(v10);
          goto LABEL_18;
        }
      }

      v5 = [tagsCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_18:

  v16 = [v9 _pas_filteredArrayWithTest:&__block_literal_global_11199];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __51__SGEntityTagsHelper_extractSchemasFromEntityTags___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)schemasInEntityTagsBelongsToPendingConfirmationEvent:(id)event
{
  v3 = [self extractSchemasFromEntityTags:event];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D06578]];
    v6 = v5;
    v7 = v5 && ([v5 isEqualToString:*MEMORY[0x277D067E8]] & 1) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end