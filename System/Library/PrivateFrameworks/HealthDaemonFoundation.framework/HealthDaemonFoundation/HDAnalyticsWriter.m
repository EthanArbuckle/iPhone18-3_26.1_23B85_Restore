@interface HDAnalyticsWriter
- (BOOL)_cleanAnalyticsDirectory:(uint64_t)a1 error:(void *)a2;
- (BOOL)_createAndCleanAnalyticsDirectoryWithError:(uint64_t)a1;
- (HDAnalyticsWriter)init;
- (HDAnalyticsWriter)initWithURL:(id)a3;
- (id)URLForAnalyticsFileWithName:(id)a3;
- (id)_encryptAnalyticsData:(void *)a3 withConfig:(uint64_t)a4 error:;
- (id)_serializeAnalyticsData:(uint64_t)a3 errorOut:;
- (id)analyticsFilePathsWithError:(id *)a3;
- (uint64_t)_createAnalyticsDirectory:(void *)a3 error:;
- (uint64_t)_loadCertificateWithError:(uint64_t)a1;
- (uint64_t)_submitJSONAnalyticsData:(void *)a3 bugType:(void *)a4 customDirectory:(void *)a5 configuration:(void *)a6 error:;
@end

@implementation HDAnalyticsWriter

- (HDAnalyticsWriter)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDAnalyticsWriter;
  v5 = [(HDAnalyticsWriter *)&v10 init];
  if (v5)
  {
    v6 = [v4 path];
    v7 = [v6 copy];
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

- (uint64_t)_submitJSONAnalyticsData:(void *)a3 bugType:(void *)a4 customDirectory:(void *)a5 configuration:(void *)a6 error:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    if (v13)
    {
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [v15 fileExistsAtPath:v13 isDirectory:0];

      if ((v16 & 1) == 0)
      {
        v17 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Client should ensure submission directory is created before using analytics writer"];
        if (v17)
        {
          if (a6)
          {
            v18 = v17;
            *a6 = v17;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_9;
      }
    }

    if ([(HDAnalyticsWriter *)a1 _createAndCleanAnalyticsDirectoryWithError:a6])
    {
      v20 = [(HDAnalyticsWriter *)a1 _serializeAnalyticsData:v11 errorOut:a6];
      if (!v20)
      {
LABEL_13:
        v39 = 0;
LABEL_14:

        goto LABEL_10;
      }

      if (!v14)
      {
        if (!*(a1 + 8) && ([(HDAnalyticsWriter *)a1 _loadCertificateWithError:a6]& 1) == 0)
        {
          v14 = 0;
          goto LABEL_13;
        }

        v21 = [MEMORY[0x277CBEAA8] date];
        v14 = [objc_alloc(MEMORY[0x277CCD500]) initWithChannel:@"DataAnalytics" payloadType:@"JSON" certificate:*(a1 + 8)];
        [v14 setStartDate:v21];
        [v14 setEndDate:v21];
        [v14 setPayloadIdentifier:@"FOO-Payload"];
      }

      v22 = [(HDAnalyticsWriter *)a1 _encryptAnalyticsData:v20 withConfig:v14 error:a6];
      v23 = v22;
      if (!v22)
      {
        v39 = 0;
LABEL_37:

        goto LABEL_14;
      }

      v24 = [v22 lastPathComponent];
      v36 = v23;
      v25 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v23];
      v35 = v25;
      if (v13)
      {
        v26 = v25;
        v27 = MEMORY[0x277CBEBC0];
        v34 = v24;
        v28 = [v13 stringByAppendingPathComponent:v24];
        v29 = [v27 fileURLWithPath:v28];

        v38 = 0;
        LOBYTE(v28) = [v26 writeToURL:v29 options:805306369 error:&v38];
        v30 = v38;
        if (v28)
        {
LABEL_23:

          v24 = v34;
LABEL_27:
          v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 16)];
          v29 = [v31 URLByAppendingPathComponent:v24];

          v39 = [v20 writeToURL:v29 options:805306369 error:a6];
LABEL_36:
          v23 = v36;

          goto LABEL_37;
        }

        v32 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to write serialized unencrypted analytics data." underlyingError:v30];
        if (v32)
        {
          if (a6)
          {
            v33 = v32;
            *a6 = v32;
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
        if (!v12 || (HDIsUnitTesting() & 1) != 0)
        {
          goto LABEL_27;
        }

        v34 = v24;
        v29 = [v24 stringByAppendingString:@"X-"];
        v37 = v23;
        if (HKSubmitAnalyticsFile())
        {
          v30 = v37;
          goto LABEL_23;
        }

        [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:@"Analytics submission failed for an unknown reason."];
        v39 = 0;
      }

      v24 = v34;
      goto LABEL_36;
    }
  }

LABEL_9:
  v39 = 0;
LABEL_10:

  return v39;
}

- (id)URLForAnalyticsFileWithName:(id)a3
{
  v4 = [a3 lastPathComponent];
  v5 = [v4 componentsSeparatedByString:@"X-"];
  v6 = [v5 firstObject];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_analyticsDirectory];
  v8 = [v7 URLByAppendingPathComponent:v6];

  return v8;
}

- (id)analyticsFilePathsWithError:(id *)a3
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
      if (a3)
      {
        v12 = v11;
        *a3 = v11;
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

- (BOOL)_cleanAnalyticsDirectory:(uint64_t)a1 error:(void *)a2
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v42 = a1;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    [MEMORY[0x277CBEAA8] date];
    v46 = v45 = v4;
    v5 = [v4 enumeratorAtPath:v3];
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
          v13 = [v5 fileAttributes];
          v14 = [v13 objectForKeyedSubscript:v10];

          v15 = v3;
          v16 = [v3 stringByAppendingPathComponent:v12];
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
                OUTLINED_FUNCTION_0_6(v31, v32, v33, v34, v35, v36, v37, v38, v41, v42, v43, *(&v43 + 1), v44);
                v54 = v29;
                _os_log_error_impl(&dword_25156C000, v30, OS_LOG_TYPE_ERROR, "Error removing analytics file at '%{public}@': %{public}@", buf, 0x16u);
              }
            }
          }

          else if (v20)
          {
            OUTLINED_FUNCTION_0_6(v20, v21, v22, v23, v24, v25, v26, v27, v41, v42, v43, *(&v43 + 1), v44);
            v54 = v14;
            _os_log_debug_impl(&dword_25156C000, v19, OS_LOG_TYPE_DEBUG, "Do not remove analytics file '%{public}@' with modification date %{public}@", buf, 0x16u);
          }

          ++v11;
          v3 = v15;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v8);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v42 != 0;
}

- (BOOL)_createAndCleanAnalyticsDirectoryWithError:(uint64_t)a1
{
  if (!a1 || ![(HDAnalyticsWriter *)a1 _createAnalyticsDirectory:a2 error:?])
  {
    return 0;
  }

  v4 = *(a1 + 16);

  return [HDAnalyticsWriter _cleanAnalyticsDirectory:a1 error:v4];
}

- (id)_serializeAnalyticsData:(uint64_t)a3 errorOut:
{
  if (a1)
  {
    v4 = a2;
    v5 = objc_opt_new();
    [v5 setObject:&unk_286385C68 forKeyedSubscript:@"schemaVersion"];
    [v5 setObject:v4 forKeyedSubscript:@"data"];

    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:1 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_loadCertificateWithError:(uint64_t)a1
{
  if (!a1)
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
  *(a1 + 8) = v5;
  if (!v5)
  {
    v7 = @"Failed to create certificate.";
    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (id)_encryptAnalyticsData:(void *)a3 withConfig:(uint64_t)a4 error:
{
  v7 = a2;
  if (a1)
  {
    v8 = MEMORY[0x277CCD4F8];
    v9 = a3;
    v10 = [v8 newOutputFileURL];
    v11 = [objc_alloc(MEMORY[0x277CCD4F8]) initWithConfiguration:v9];

    if ([v11 startWithOutputFileURL:v10 error:a4] && objc_msgSend(v11, "appendData:error:", v7, a4))
    {
      v12 = [v11 finalizeWithError:a4];
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

- (uint64_t)_createAnalyticsDirectory:(void *)a3 error:
{
  v5 = a2;
  if (a1)
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
          if (a3)
          {
            v11 = v10;
            *a3 = v10;
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