@interface UARPDynamicAssetLogsEvent
+ (id)tag;
- (BOOL)decomposeUARP;
- (BOOL)expandToDirectory:(id)a3 forRemoteEndpoint:(id)a4;
- (UARPDynamicAssetLogsEvent)init;
- (UARPDynamicAssetLogsEvent)initWithURL:(id)a3;
- (id)createLogsFilepath:(id)a3 forRemoteEndpoint:(id)a4;
@end

@implementation UARPDynamicAssetLogsEvent

- (UARPDynamicAssetLogsEvent)init
{
  [(UARPDynamicAssetLogsEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetLogsEvent)initWithURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UARPDynamicAssetLogsEvent;
  v6 = [(UARPDynamicAssetLogsEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "logs");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

- (BOOL)decomposeUARP
{
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  v5 = [(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0];
  if (!v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetLogsEvent *)log decomposeUARP];
    }
  }

  return v5;
}

- (BOOL)expandToDirectory:(id)a3 forRemoteEndpoint:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = a4;
  if (![(UARPDynamicAssetLogsEvent *)self decomposeUARP])
  {
    v25 = 0;
    goto LABEL_23;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v7)
  {
    v25 = 1;
    goto LABEL_22;
  }

  v9 = v7;
  v31 = *v34;
  *&v8 = 136315394;
  v29 = v8;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v34 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v33 + 1) + 8 * i);
      v12 = [(UARPDynamicAssetLogsEvent *)self createLogsFilepath:v11 forRemoteEndpoint:v32, v29];
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [v13 path];
      v16 = [v14 createFileAtPath:v15 contents:0 attributes:0];

      if ((v16 & 1) == 0)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [UARPDynamicAssetLogsEvent expandToDirectory:v13 forRemoteEndpoint:?];
        }

        goto LABEL_21;
      }

      [v11 rangePayload];
      v18 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v11 range:0 error:v17, 0];
      if (!UARPWriteFile(v18, v13))
      {

LABEL_21:
        v25 = 0;
        goto LABEL_22;
      }

      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [v13 path];
        *buf = v29;
        v38 = "[UARPDynamicAssetLogsEvent expandToDirectory:forRemoteEndpoint:]";
        v39 = 2112;
        v40 = v21;
        _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_INFO, "%s: Successfully Expanded LOGS to File: %@", buf, 0x16u);
      }

      if (v6)
      {
        v22 = UARPStringLogsDirectoryFilePath();
        v23 = [v6 path];
        v24 = [v12 lastPathComponent];
        UARPCopyFile(v22, v23, v24);
      }
    }

    v9 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    v25 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_22:

LABEL_23:
  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)tag
{
  v2 = uarpAssetTagStructAnalytics();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

- (id)createLogsFilepath:(id)a3 forRemoteEndpoint:(id)a4
{
  v5 = a4;
  v6 = [a3 tlvs];
  v7 = [UARPSuperBinaryAssetTLV findTLVWithType:3436347665 tlvs:v6];

  if (v7)
  {
    v8 = [v7 valueAsString];
    v9 = [v8 UTF8String];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"-%@", v10];
  }

  else
  {
    v11 = @".txt";
  }

  v12 = [v5 appleModelNumber];
  v13 = [v5 serialNumber];

  v14 = UARPStringLogsDirectoryFilePath();
  v15 = UARPUniqueFilename(v12, v13, v14, @"LOGS", v11);

  return v15;
}

- (void)expandToDirectory:(void *)a1 forRemoteEndpoint:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 path];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_247AA7000, v3, OS_LOG_TYPE_ERROR, "Failed to create filepath for radar LOGS at %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end