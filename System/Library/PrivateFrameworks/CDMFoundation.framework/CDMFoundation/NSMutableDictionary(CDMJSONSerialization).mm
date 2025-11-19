@interface NSMutableDictionary(CDMJSONSerialization)
- (void)_cdm_safeJSONTraverse;
@end

@implementation NSMutableDictionary(CDMJSONSerialization)

- (void)_cdm_safeJSONTraverse
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [a1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [a1 objectForKeyedSubscript:v7];
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 _cdm_safeJSONString];
          [a1 setObject:v9 forKeyedSubscript:v7];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v8 _cdm_safeJSONTraverse];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end