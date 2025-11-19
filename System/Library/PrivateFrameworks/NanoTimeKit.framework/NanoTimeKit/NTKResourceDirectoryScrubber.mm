@interface NTKResourceDirectoryScrubber
- (BOOL)_scrubAssetAtURL:(id)a3 toDestinationURL:(id)a4 error:(id *)a5;
- (BOOL)scrubDirectoryAtPath:(id)a3 toDestinationPath:(id)a4 error:(id *)a5;
- (NTKResourceDirectoryScrubber)initWithOperations:(id)a3;
@end

@implementation NTKResourceDirectoryScrubber

- (NTKResourceDirectoryScrubber)initWithOperations:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NTKResourceDirectoryScrubber;
  v5 = [(NTKResourceDirectoryScrubber *)&v33 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v4;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [v12 supportedExtensions];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v36 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v25 + 1) + 8 * j) lowercaseString];
                [v7 setObject:v12 forKeyedSubscript:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v36 count:16];
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v9);
    }

    v6 = v22;
    objc_storeStrong(&v22->_operationsMaps, v7);
    v19 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      operationsMaps = v22->_operationsMaps;
      *buf = 138412290;
      v35 = operationsMaps;
      _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_INFO, "[Resource Scrubber]: initialized with operations: %@", buf, 0xCu);
    }

    v4 = v23;
  }

  return v6;
}

- (BOOL)scrubDirectoryAtPath:(id)a3 toDestinationPath:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:1];
    v31 = v10;
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 createDirectoryAtURL:v12 withIntermediateDirectories:0 attributes:0 error:a5];

    v15 = 0;
    if (v14)
    {
      v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Created directory for sharing. Now traversing the original directory to see if anything needs scrubbing.", buf, 2u);
      }

      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [v17 enumeratorAtPath:v8];

      [v18 skipDescendants];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v20)
      {
        v21 = v20;
        v30 = v8;
        v22 = *v33;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            v25 = [v11 URLByAppendingPathComponent:{v24, v30}];
            v26 = [v12 URLByAppendingPathComponent:v24];
            if (![(NTKResourceDirectoryScrubber *)self _scrubAssetAtURL:v25 toDestinationURL:v26 error:a5])
            {
              v28 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [NTKResourceDirectoryScrubber scrubDirectoryAtPath:a5 toDestinationPath:v28 error:?];
              }

              v15 = 0;
              goto LABEL_23;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v15 = 1;
LABEL_23:
        v8 = v30;
      }

      else
      {
        v15 = 1;
      }
    }

    v10 = v31;
  }

  else
  {
    v27 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [NTKResourceDirectoryScrubber scrubDirectoryAtPath:v8 toDestinationPath:v10 error:v27];
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.resourceDirectory" code:2002 userInfo:0];
      *a5 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_scrubAssetAtURL:(id)a3 toDestinationURL:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Checking if asset at: '%@' needs scrubbing", &v19, 0xCu);
  }

  operationsMaps = self->_operationsMaps;
  v12 = [v8 pathExtension];
  v13 = [v12 lowercaseString];
  v14 = [(NSDictionary *)operationsMaps objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v14 scrubAssetAtURL:v8 toDestinationURL:v9 error:a5];
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_INFO, "[Resource Scrubber]: No scrubbing operations for this asset: '%@'. Passing through.", &v19, 0xCu);
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v17 copyItemAtURL:v8 toURL:v9 error:a5];

  if (a5)
  {
LABEL_9:
    if ((v15 & 1) == 0 && !*a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.resourceDirectory" code:2001 userInfo:0];
    }
  }

LABEL_12:

  return v15;
}

- (void)scrubDirectoryAtPath:(uint64_t *)a1 toDestinationPath:(NSObject *)a2 error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "[Resource Scrubber]: Scrubbing failed: %@", &v3, 0xCu);
}

- (void)scrubDirectoryAtPath:(uint64_t)a1 toDestinationPath:(uint64_t)a2 error:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "[Resource Scrubber]: Unable to prepare resource directory for sharing. Original directory: %@. Directory for sharing: %@", &v3, 0x16u);
}

@end