@interface SSUCacheDirectoryProviderDevice
- (id)lookupOrCreateCacheDirectory:(id *)a3;
@end

@implementation SSUCacheDirectoryProviderDevice

- (id)lookupOrCreateCacheDirectory:(id *)a3
{
  v40[2] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() getUserCacheDirectoriesList];
  if ([v4 count] == 1)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 fileURLWithPath:v6 isDirectory:1];

    v8 = [v7 URLByAppendingPathComponent:@"ssu" isDirectory:1];
    v30 = 0;
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10 isDirectory:&v30];

    if (v11)
    {
      if ((v30 & 1) == 0)
      {
        if (a3)
        {
          v12 = *MEMORY[0x1E696A588];
          v37[0] = *MEMORY[0x1E696A578];
          v37[1] = v12;
          v38[0] = @"Could not lookup/create cache directory.";
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There is already a non-directory file at path: %@.", v8];
          v38[1] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];

          *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:1 userInfo:v14];
        }

LABEL_17:
        v18 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v34 = "[SSUCacheDirectoryProviderDevice lookupOrCreateCacheDirectory:]";
        v35 = 2112;
        v36 = v8;
        _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s SSU cache directory does not already exist. Creating it at path: %@", buf, 0x16u);
      }

      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v21 = [objc_opt_class() createDirectoryAttributes];
      v29 = 0;
      v22 = [v20 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:v21 error:&v29];
      v23 = v29;

      if ((v22 & 1) == 0)
      {
        if (a3)
        {
          v24 = *MEMORY[0x1E696A588];
          v31[0] = *MEMORY[0x1E696A578];
          v31[1] = v24;
          v32[0] = @"Could not lookup/create cache directory.";
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating directory at path: %@. Error: %@.", v8, v23];
          v32[1] = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

          *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:2 userInfo:v26];
        }

        goto LABEL_17;
      }
    }

    v18 = v8;
LABEL_18:

    goto LABEL_19;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v15 = *MEMORY[0x1E696A578];
  v40[0] = @"Could not lookup/create cache directory.";
  v16 = *MEMORY[0x1E696A588];
  v39[0] = v15;
  v39[1] = v16;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a unique user cache directory, but received: %@.", v4];
  v40[1] = v17;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

  [MEMORY[0x1E696ABC0] errorWithDomain:@"SSUCacheDirectoryProviderErrorDomain" code:0 userInfo:v7];
  *a3 = v18 = 0;
LABEL_19:

LABEL_20:
  v27 = *MEMORY[0x1E69E9840];

  return v18;
}

@end