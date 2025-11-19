@interface LDCMMobileAssetDistributor
- (void)receiveBehaviorDictionary:(id)a3;
@end

@implementation LDCMMobileAssetDistributor

- (void)receiveBehaviorDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"LDCMBehaviorV4"];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKeyedSubscript:@"LDCMBehaviorV4"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = v4;
        v9 = [v4 objectForKeyedSubscript:@"LDCMBehaviorV4"];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = _MergedGlobals_0;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * i);
              v16 = [_MergedGlobals_0 objectForKeyedSubscript:v15];
              objc_opt_class();
              v17 = objc_opt_isKindOfClass();

              if (v17)
              {
                v18 = [_MergedGlobals_0 objectForKeyedSubscript:v15];
                [v18 processBehaviorDictionary:v9];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v12);
        }

        v4 = v20;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end