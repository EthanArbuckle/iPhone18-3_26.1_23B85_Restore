@interface UARPDynamicAssetCrashLogEvent
+ (id)tag;
- (BOOL)decomposeUARP;
- (BOOL)expandToDirectory:(id)a3 forRemoteEndpoint:(id)a4;
- (BOOL)findMatchingCMAP;
- (BOOL)getCoreName:(id)a3 inPayload:(id)a4;
- (BOOL)processCrashAdditionalInfo;
- (BOOL)processCrashInstance;
- (UARPDynamicAssetCrashLogEvent)init;
- (UARPDynamicAssetCrashLogEvent)initWithURL:(id)a3;
- (id)description;
- (void)decomposeUARP;
- (void)findMatchingCMAP;
- (void)processCrashAdditionalInfo;
- (void)processCrashInstance;
- (void)sendSpeedTracer;
@end

@implementation UARPDynamicAssetCrashLogEvent

- (UARPDynamicAssetCrashLogEvent)init
{
  [(UARPDynamicAssetCrashLogEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetCrashLogEvent)initWithURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UARPDynamicAssetCrashLogEvent;
  v6 = [(UARPDynamicAssetCrashLogEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  processedCrashInstance = self->_processedCrashInstance;
  if (!processedCrashInstance)
  {
    processedCrashInstance = self->_preProcessedCrashLogs;
  }

  [v3 appendFormat:@"Crash Analytics Event %@\n", processedCrashInstance];

  return v4;
}

- (void)sendSpeedTracer
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)expandToDirectory:(id)a3 forRemoteEndpoint:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 appleModelNumber];
  v9 = [v7 serialNumber];

  v10 = UARPStringCrashAnalyticsDirectoryFilePath();
  v11 = UARPUniqueFilename(v8, v9, v10, @"CRSH", @".json");

  v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
  v13 = UARPWriteFile(self->_processedCrashInstanceData, v12);
  if (v13)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v15 = log;
      v16 = [v12 path];
      v21 = 136315394;
      v22 = "[UARPDynamicAssetCrashLogEvent expandToDirectory:forRemoteEndpoint:]";
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_247AA7000, v15, OS_LOG_TYPE_INFO, "%s: Successfully Expanded CRSH to File: %@", &v21, 0x16u);
    }

    if (v6)
    {
      v17 = UARPStringCrashAnalyticsDirectoryFilePath();
      v18 = [v6 path];
      UARPCopyFile(v17, v18, v11);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)decomposeUARP
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if ([(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0]&& [(UARPDynamicAssetCrashLogEvent *)self processCrashAdditionalInfo])
  {
    v5 = objc_opt_new();
    preProcessedCrashLogs = self->_preProcessedCrashLogs;
    self->_preProcessedCrashLogs = v5;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [(UARPSuperBinaryAsset *)self->_asset payloads];
    v25 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v25)
    {
      v8 = *v27;
      v24 = v7;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = +[UARPDynamicAssetCrashLogEvent tag];
          v12 = [v10 payloadTag];
          v13 = [v12 isEqual:v11];

          if (v13)
          {
            v14 = [MEMORY[0x277CBEB38] dictionary];
            v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
            if ([(UARPDynamicAssetCrashLogEvent *)self getCoreName:v15 inPayload:v10])
            {
              v16 = [v15 copy];
              [v14 setObject:v16 forKeyedSubscript:@"core"];

              [v10 rangePayload];
              v18 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v10 range:0 error:v17, 0];
              if (!v18)
              {
                if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
                {
                  [UARPDynamicAssetCrashLogEvent decomposeUARP];
                }

                v21 = 0;
                v7 = v24;
                goto LABEL_20;
              }

              v19 = v18;
              v20 = [v18 copy];
              [(NSMutableDictionary *)self->_preProcessedCrashLogs setObject:v20 forKeyedSubscript:v15];

              v7 = v24;
            }
          }
        }

        v25 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v21 = 1;
LABEL_20:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)processCrashInstance
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_opt_class())
  {
    v3 = MEMORY[0x277CFE068];
    preProcessedCrashLogs = self->_preProcessedCrashLogs;
    testMode = self->_testMode;
    productId = self->_productId;
    v7 = [(NSURL *)self->_url lastPathComponent];
    v8 = [v3 generateReportWithBinary:preProcessedCrashLogs testMode:testMode productId:productId applicationInfo:&unk_2859CACE8 description:v7];

    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:0];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_processedCrashInstance, v9);
        processedCrashInstance = self->_processedCrashInstance;
        v21 = 0;
        v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:processedCrashInstance options:1 error:&v21];
        v12 = v21;
        processedCrashInstanceData = self->_processedCrashInstanceData;
        self->_processedCrashInstanceData = v11;

        if (self->_processedCrashInstanceData)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        log = self->_log;
        if (v14)
        {
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v17 = self->_processedCrashInstance;
            *buf = 138412290;
            v23 = v17;
            _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Successfully expanded CRSH Dynamic Asset: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashInstance];
        }

        goto LABEL_25;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCrashLogEvent processCrashInstance];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent processCrashInstance];
    }

    v15 = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPDynamicAssetCrashLogEvent processCrashInstance];
  }

  v15 = 0;
LABEL_26:
  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)getCoreName:(id)a3 inPayload:(id)a4
{
  v5 = a3;
  v6 = [a4 tlvs];
  v7 = [UARPSuperBinaryAssetTLV findTLVWithType:4042160640 tlvs:v6];

  if (v7)
  {
    v8 = [v7 valueAsString];
    v9 = v8 != 0;
    if (v8)
    {
      [v5 setString:v8];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent getCoreName:inPayload:];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent getCoreName:inPayload:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)processCrashAdditionalInfo
{
  v3 = [(UARPSuperBinaryAsset *)self->_asset tlvs];
  v4 = [UARPSuperBinaryAssetTLV findTLVWithType:4042160641 tlvs:v3];

  if (v4)
  {
    v5 = [v4 valueAsString];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 copy];
      appleModelNumber = self->_appleModelNumber;
      self->_appleModelNumber = v7;

      v9 = [UARPSupportedAccessory findByAppleModelNumber:self->_appleModelNumber];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 hardwareID];
        self->_productId = [v10 productID];
      }

      else
      {
        self->_productId = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(UARPDynamicAssetCrashLogEvent *)&self->_appleModelNumber processCrashAdditionalInfo];
        }
      }

      v12 = [(UARPSuperBinaryAsset *)self->_asset tlvs];
      v13 = [UARPSuperBinaryAssetTLV findTLVWithType:4042160643 tlvs:v12];

      if (v13)
      {
        v14 = [v13 valueAsNumber];
        v15 = v14;
        v11 = v14 != 0;
        if (v14)
        {
          if ([v14 unsignedIntValue])
          {
            self->_testMode = 1;
          }

          else
          {
            self->_testMode = 0;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
        }

        v11 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
      }

      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent processCrashAdditionalInfo];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)findMatchingCMAP
{
  v3 = [[UARPDynamicAssetCmapDatabase alloc] initCmapDatabase:0];
  cmapDatabase = self->_cmapDatabase;
  self->_cmapDatabase = v3;

  v5 = self->_cmapDatabase;
  if (v5)
  {
    v6 = [(UARPDynamicAssetCmapDatabase *)v5 findCmapforAppleModel:self->_appleModelNumber];
    v7 = v6 != 0;
    if (!v6 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetCrashLogEvent *)&self->_appleModelNumber findMatchingCMAP];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCrashLogEvent findMatchingCMAP];
    }

    return 0;
  }

  return v7;
}

+ (id)tag
{
  v2 = uarpAssetTagStructCrashAnalytics();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

- (void)decomposeUARP
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processCrashInstance
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processCrashAdditionalInfo
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)findMatchingCMAP
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end