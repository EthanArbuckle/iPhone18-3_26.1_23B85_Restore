@interface NTKResourceDirectoryScrubber
- (BOOL)_scrubAssetAtURL:(id)l toDestinationURL:(id)rL error:(id *)error;
- (BOOL)scrubDirectoryAtPath:(id)path toDestinationPath:(id)destinationPath error:(id *)error;
- (NTKResourceDirectoryScrubber)initWithOperations:(id)operations;
@end

@implementation NTKResourceDirectoryScrubber

- (NTKResourceDirectoryScrubber)initWithOperations:(id)operations
{
  v38 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v33.receiver = self;
  v33.super_class = NTKResourceDirectoryScrubber;
  v5 = [(NTKResourceDirectoryScrubber *)&v33 init];
  v6 = v5;
  if (v5)
  {
    v22 = v5;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = operationsCopy;
    obj = operationsCopy;
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
          supportedExtensions = [v12 supportedExtensions];
          v14 = [supportedExtensions countByEnumeratingWithState:&v25 objects:v36 count:16];
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
                  objc_enumerationMutation(supportedExtensions);
                }

                lowercaseString = [*(*(&v25 + 1) + 8 * j) lowercaseString];
                [dictionary setObject:v12 forKeyedSubscript:lowercaseString];
              }

              v15 = [supportedExtensions countByEnumeratingWithState:&v25 objects:v36 count:16];
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v9);
    }

    v6 = v22;
    objc_storeStrong(&v22->_operationsMaps, dictionary);
    v19 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      operationsMaps = v22->_operationsMaps;
      *buf = 138412290;
      v35 = operationsMaps;
      _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_INFO, "[Resource Scrubber]: initialized with operations: %@", buf, 0xCu);
    }

    operationsCopy = v23;
  }

  return v6;
}

- (BOOL)scrubDirectoryAtPath:(id)path toDestinationPath:(id)destinationPath error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  destinationPathCopy = destinationPath;
  v10 = destinationPathCopy;
  if (pathCopy && destinationPathCopy)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:1];
    v31 = v10;
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [defaultManager createDirectoryAtURL:v12 withIntermediateDirectories:0 attributes:0 error:error];

    v15 = 0;
    if (v14)
    {
      v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Created directory for sharing. Now traversing the original directory to see if anything needs scrubbing.", buf, 2u);
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [defaultManager2 enumeratorAtPath:pathCopy];

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
        v30 = pathCopy;
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
            if (![(NTKResourceDirectoryScrubber *)self _scrubAssetAtURL:v25 toDestinationURL:v26 error:error])
            {
              v28 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [NTKResourceDirectoryScrubber scrubDirectoryAtPath:error toDestinationPath:v28 error:?];
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
        pathCopy = v30;
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
      [NTKResourceDirectoryScrubber scrubDirectoryAtPath:pathCopy toDestinationPath:v10 error:v27];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.resourceDirectory" code:2002 userInfo:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_scrubAssetAtURL:(id)l toDestinationURL:(id)rL error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = lCopy;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_INFO, "[Resource Scrubber]: Checking if asset at: '%@' needs scrubbing", &v19, 0xCu);
  }

  operationsMaps = self->_operationsMaps;
  pathExtension = [lCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v14 = [(NSDictionary *)operationsMaps objectForKeyedSubscript:lowercaseString];

  if (v14)
  {
    v15 = [v14 scrubAssetAtURL:lCopy toDestinationURL:rLCopy error:error];
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = lCopy;
    _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_INFO, "[Resource Scrubber]: No scrubbing operations for this asset: '%@'. Passing through.", &v19, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:error];

  if (error)
  {
LABEL_9:
    if ((v15 & 1) == 0 && !*error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.resourceDirectory" code:2001 userInfo:0];
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