@interface NSManagedObjectModel(IC)
- (id)ic_versionHash;
@end

@implementation NSManagedObjectModel(IC)

- (id)ic_versionHash
{
  v26 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  entityVersionHashesByName = [self entityVersionHashesByName];
  allKeys = [entityVersionHashesByName allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        entityVersionHashesByName2 = [self entityVersionHashesByName];
        v13 = [entityVersionHashesByName2 objectForKeyedSubscript:v11];

        if (v13)
        {
          ic_md5 = [v13 ic_md5];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v11, ic_md5];
          [array addObject:v15];
        }

        else
        {
          ic_md5 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(ic_md5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_debug_impl(&dword_1D4576000, ic_md5, OS_LOG_TYPE_DEBUG, "No hash for entity %@ while generating version hash", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = [array componentsJoinedByString:@"-"];
  ic_md52 = [v16 ic_md5];

  return ic_md52;
}

@end