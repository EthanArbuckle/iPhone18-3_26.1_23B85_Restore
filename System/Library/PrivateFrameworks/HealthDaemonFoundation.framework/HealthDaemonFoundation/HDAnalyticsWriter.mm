@interface HDAnalyticsWriter
- (BOOL)_cleanAnalyticsDirectory:(uint64_t)directory error:(void *)error;
- (BOOL)_createAndCleanAnalyticsDirectoryWithError:(uint64_t)error;
- (HDAnalyticsWriter)init;
- (HDAnalyticsWriter)initWithURL:(id)l;
- (id)URLForAnalyticsFileWithName:(id)name;
- (id)_encryptAnalyticsData:(void *)data withConfig:(uint64_t)config error:;
- (id)_serializeAnalyticsData:(uint64_t)data errorOut:;
- (id)analyticsFilePathsWithError:(id *)error;
- (uint64_t)_createAnalyticsDirectory:(void *)directory error:;
- (uint64_t)_loadCertificateWithError:(uint64_t)error;
- (uint64_t)_submitJSONAnalyticsData:(void *)data bugType:(void *)type customDirectory:(void *)directory configuration:(void *)configuration error:;
@end

@implementation HDAnalyticsWriter

- (HDAnalyticsWriter)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = HDAnalyticsWriter;
  v5 = [(HDAnalyticsWriter *)&v10 init];
  if (v5)
  {
    path = [lCopy path];
    v7 = [path copy];
    analyticsDirectory = v5->_analyticsDirectory;
    v5->_analyticsDirectory = v7;
  }

  return v5;
}

- (HDAnalyticsWriter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (uint64_t)_submitJSONAnalyticsData:(void *)data bugType:(void *)type customDirectory:(void *)directory configuration:(void *)configuration error:
{
  v11 = a2;
  dataCopy = data;
  typeCopy = type;
  directoryCopy = directory;
  if (self)
  {
    if (typeCopy)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [defaultManager fileExistsAtPath:typeCopy isDirectory:0];

      if ((v16 & 1) == 0)
      {
        v17 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Client should ensure submission directory is created before using analytics writer"];
        if (v17)
        {
          if (configuration)
          {
            v18 = v17;
            *configuration = v17;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_9;
      }
    }

    if ([(HDAnalyticsWriter *)self _createAndCleanAnalyticsDirectoryWithError:configuration])
    {
      v20 = [(HDAnalyticsWriter *)self _serializeAnalyticsData:v11 errorOut:configuration];
      if (!v20)
      {
LABEL_13:
        v39 = 0;
LABEL_14:

        goto LABEL_10;
      }

      if (!directoryCopy)
      {
        if (!*(self + 8) && ([(HDAnalyticsWriter *)self _loadCertificateWithError:configuration]& 1) == 0)
        {
          directoryCopy = 0;
          goto LABEL_13;
        }

        date = [MEMORY[0x277CBEAA8] date];
        directoryCopy = [objc_alloc(MEMORY[0x277CCD500]) initWithChannel:@"DataAnalytics" payloadType:@"JSON" certificate:*(self + 8)];
        [directoryCopy setStartDate:date];
        [directoryCopy setEndDate:date];
        [directoryCopy setPayloadIdentifier:@"FOO-Payload"];
      }

      v22 = [(HDAnalyticsWriter *)self _encryptAnalyticsData:v20 withConfig:directoryCopy error:configuration];
      v23 = v22;
      if (!v22)
      {
        v39 = 0;
LABEL_37:

        goto LABEL_14;
      }

      lastPathComponent = [v22 lastPathComponent];
      v36 = v23;
      v25 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v23];
      v35 = v25;
      if (typeCopy)
      {
        v26 = v25;
        v27 = MEMORY[0x277CBEBC0];
        v34 = lastPathComponent;
        v28 = [typeCopy stringByAppendingPathComponent:lastPathComponent];
        v29 = [v27 fileURLWithPath:v28];

        v38 = 0;
        LOBYTE(v28) = [v26 writeToURL:v29 options:805306369 error:&v38];
        v30 = v38;
        if (v28)
        {
LABEL_23:

          lastPathComponent = v34;
LABEL_27:
          v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(self + 16)];
          v29 = [v31 URLByAppendingPathComponent:lastPathComponent];

          v39 = [v20 writeToURL:v29 options:805306369 error:configuration];
LABEL_36:
          v23 = v36;

          goto LABEL_37;
        }

        v32 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to write serialized unencrypted analytics data." underlyingError:v30];
        if (v32)
        {
          if (configuration)
          {
            v33 = v32;
            *configuration = v32;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v39 = 0;
      }

      else
      {
        if (!dataCopy || (HDIsUnitTesting() & 1) != 0)
        {
          goto LABEL_27;
        }

        v34 = lastPathComponent;
        v29 = [lastPathComponent stringByAppendingString:@"X-"];
        v37 = v23;
        if (HKSubmitAnalyticsFile())
        {
          v30 = v37;
          goto LABEL_23;
        }

        [MEMORY[0x277CCA9B8] hk_assignError:configuration code:100 format:@"Analytics submission failed for an unknown reason."];
        v39 = 0;
      }

      lastPathComponent = v34;
      goto LABEL_36;
    }
  }

LABEL_9:
  v39 = 0;
LABEL_10:

  return v39;
}

- (id)URLForAnalyticsFileWithName:(id)name
{
  lastPathComponent = [name lastPathComponent];
  v5 = [lastPathComponent componentsSeparatedByString:@"X-"];
  firstObject = [v5 firstObject];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_analyticsDirectory];
  v8 = [v7 URLByAppendingPathComponent:firstObject];

  return v8;
}

- (id)analyticsFilePathsWithError:(id *)error
{
  if (![HDAnalyticsWriter _cleanAnalyticsDirectory:self->_analyticsDirectory error:?])
  {
    v10 = 0;
    goto LABEL_14;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  analyticsDirectory = self->_analyticsDirectory;
  v15 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:analyticsDirectory error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    goto LABEL_3;
  }

  if ([v8 code] != 260)
  {
    v11 = v9;
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

  if ([v9 code] != 260)
  {
LABEL_3:
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__HDAnalyticsWriter_analyticsFilePathsWithError___block_invoke;
    v14[3] = &unk_2796BDE58;
    v14[4] = self;
    v10 = [v7 hk_map:v14];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

LABEL_13:

LABEL_14:

  return v10;
}

id __49__HDAnalyticsWriter_analyticsFilePathsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = [v4 hasPrefix:@"HealthWrap"];

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 16) stringByAppendingPathComponent:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __90__HDAnalyticsWriter__submitJSONAnalyticsData_bugType_customDirectory_configuration_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dataWithContentsOfURL:v3];
  [v4 writeData:v5];
}

- (BOOL)_cleanAnalyticsDirectory:(uint64_t)directory error:(void *)error
{
  v56 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  directoryCopy = directory;
  if (directory)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    [MEMORY[0x277CBEAA8] date];
    v46 = v45 = v4;
    v5 = [v4 enumeratorAtPath:errorCopy];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v49;
      v10 = *MEMORY[0x277CCA108];
      *&v7 = 138543618;
      v44 = v7;
      *&v7 = 138543362;
      v43 = v7;
      do
      {
        v11 = 0;
        do
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v48 + 1) + 8 * v11);
          fileAttributes = [v5 fileAttributes];
          v14 = [fileAttributes objectForKeyedSubscript:v10];

          v15 = errorCopy;
          v16 = [errorCopy stringByAppendingPathComponent:v12];
          [v46 timeIntervalSinceDate:v14];
          v18 = v17;
          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC2C0];
          v20 = os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG);
          if (v18 >= 1209600.0)
          {
            if (v20)
            {
              *buf = v43;
              v53 = v16;
              _os_log_debug_impl(&dword_25156C000, v19, OS_LOG_TYPE_DEBUG, "Removing analytics file '%{public}@'", buf, 0xCu);
            }

            v47 = 0;
            v28 = [v45 removeItemAtPath:v16 error:&v47];
            v29 = v47;
            if ((v28 & 1) == 0)
            {
              _HKInitializeLogging();
              v30 = *MEMORY[0x277CCC2C0];
              v31 = os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR);
              if (v31)
              {
                OUTLINED_FUNCTION_0_6(v31, v32, v33, v34, v35, v36, v37, v38, v41, directoryCopy, v43, *(&v43 + 1), v44);
                v54 = v29;
                _os_log_error_impl(&dword_25156C000, v30, OS_LOG_TYPE_ERROR, "Error removing analytics file at '%{public}@': %{public}@", buf, 0x16u);
              }
            }
          }

          else if (v20)
          {
            OUTLINED_FUNCTION_0_6(v20, v21, v22, v23, v24, v25, v26, v27, v41, directoryCopy, v43, *(&v43 + 1), v44);
            v54 = v14;
            _os_log_debug_impl(&dword_25156C000, v19, OS_LOG_TYPE_DEBUG, "Do not remove analytics file '%{public}@' with modification date %{public}@", buf, 0x16u);
          }

          ++v11;
          errorCopy = v15;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v8);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return directoryCopy != 0;
}

- (BOOL)_createAndCleanAnalyticsDirectoryWithError:(uint64_t)error
{
  if (!error || ![(HDAnalyticsWriter *)error _createAnalyticsDirectory:a2 error:?])
  {
    return 0;
  }

  v4 = *(error + 16);

  return [HDAnalyticsWriter _cleanAnalyticsDirectory:error error:v4];
}

- (id)_serializeAnalyticsData:(uint64_t)data errorOut:
{
  if (self)
  {
    v4 = a2;
    v5 = objc_opt_new();
    [v5 setObject:&unk_286385C68 forKeyedSubscript:@"schemaVersion"];
    [v5 setObject:v4 forKeyedSubscript:@"data"];

    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:1 error:data];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_loadCertificateWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  v4 = HKHealthWrapDERDataFromString();
  if (!v4)
  {
    v7 = @"Failed to decode base64 certificate data.";
LABEL_7:
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:v7];
    v6 = 0;
    goto LABEL_8;
  }

  v5 = SecCertificateCreateWithData(0, v4);
  *(error + 8) = v5;
  if (!v5)
  {
    v7 = @"Failed to create certificate.";
    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (id)_encryptAnalyticsData:(void *)data withConfig:(uint64_t)config error:
{
  v7 = a2;
  if (self)
  {
    v8 = MEMORY[0x277CCD4F8];
    dataCopy = data;
    newOutputFileURL = [v8 newOutputFileURL];
    v11 = [objc_alloc(MEMORY[0x277CCD4F8]) initWithConfiguration:dataCopy];

    if ([v11 startWithOutputFileURL:newOutputFileURL error:config] && objc_msgSend(v11, "appendData:error:", v7, config))
    {
      v12 = [v11 finalizeWithError:config];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)_createAnalyticsDirectory:(void *)directory error:
{
  v5 = a2;
  if (self)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([v6 fileExistsAtPath:v5 isDirectory:0])
    {
      v7 = 1;
    }

    else
    {
      v13 = 0;
      v7 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v13];
      v8 = v13;
      if ((v7 & 1) == 0)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error creating analytics directory %@", v5];
        v10 = [MEMORY[0x277CCA9B8] hk_error:100 description:v9 underlyingError:v8];
        if (v10)
        {
          if (directory)
          {
            v11 = v10;
            *directory = v10;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end