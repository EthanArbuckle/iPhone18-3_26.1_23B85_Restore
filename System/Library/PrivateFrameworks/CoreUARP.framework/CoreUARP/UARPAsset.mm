@interface UARPAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)prepareLocalFileForUse:(id *)a3;
- (BOOL)setData:(id)a3 atOffset:(unint64_t)a4 error:(id *)a5;
- (UARPAsset)initWithID:(id)a3;
- (UARPAsset)initWithID:(id)a3 sandboxToken:(id)a4;
- (id)description;
- (id)getDataInRange:(_NSRange)a3 error:(id *)a4;
- (unint64_t)fileLength;
- (void)concludeLocalFileAccess;
- (void)fileLength;
@end

@implementation UARPAsset

- (UARPAsset)initWithID:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UARPAsset;
  v6 = [(UARPAsset *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_id, a3);
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "assetID");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

- (UARPAsset)initWithID:(id)a3 sandboxToken:(id)a4
{
  v6 = a4;
  v7 = [(UARPAsset *)self initWithID:a3];
  if (v7 && (v8 = [[UARPSandboxExtension alloc] initWithTokenString:v6], sandboxExtension = v7->_sandboxExtension, v7->_sandboxExtension = v8, sandboxExtension, !v7->_sandboxExtension))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)getDataInRange:(_NSRange)a3 error:(id *)a4
{
  length = a3.length;
  location = a3.location;
  if ([(UARPAsset *)self prepareLocalFileForUse:a4]&& [(NSFileHandle *)self->_filehandle uarpSeekToOffset:location error:a4])
  {
    v8 = [(NSFileHandle *)self->_filehandle uarpReadDataUpToLength:length error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setData:(id)a3 atOffset:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(UARPAsset *)self prepareLocalFileForUse:a5]&& [(NSFileHandle *)self->_filehandle uarpSeekToOffset:a4 error:a5]&& [(NSFileHandle *)self->_filehandle uarpWriteData:v8 error:a5];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UARPAssetID *)self->_id rawDescription];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self == v4 || [(UARPAssetID *)self->_id isEqual:v4->_id];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)fileLength
{
  [(UARPAsset *)self prepareLocalFileForUse:0];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(NSURL *)self->_url path];
  v9 = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:&v9];
  v6 = v9;
  v7 = [v5 fileSize];

  if (v6)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPAsset fileLength];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)prepareLocalFileForUse:(id *)a3
{
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__0;
  onceToken = self->_onceToken;
  p_onceToken = &self->_onceToken;
  v12[3] = __Block_byref_object_dispose__0;
  v13 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__UARPAsset_prepareLocalFileForUse___block_invoke;
  v10[3] = &unk_278EC2408;
  v10[4] = self;
  v10[5] = &v11;
  if (onceToken != -1)
  {
    dispatch_once(p_onceToken, v10);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    *a3 = *(v12[0] + 40);
  }

LABEL_4:
  if (*(v12[0] + 40))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPAsset *)self prepareLocalFileForUse:v12, log];
    }
  }

  v8 = self->_filehandle != 0;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __36__UARPAsset_prepareLocalFileForUse___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 48) localURL];
  v4 = *(*v2 + 8);
  *(*v2 + 8) = v3;

  if ([*(*v2 + 48) type] == 10)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [*(*v2 + 48) localURL];
    v7 = [v6 path];
    v8 = [v5 createFileAtPath:v7 contents:0 attributes:0];

    if ((v8 & 1) == 0 && os_log_type_enabled(*(*v2 + 24), OS_LOG_TYPE_ERROR))
    {
      __36__UARPAsset_prepareLocalFileForUse___block_invoke_cold_2(v2);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = *(*(a1 + 40) + 8);
    obj = *(v10 + 40);
    v11 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *(v12 + 16) = v11;

    if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_DEBUG))
    {
      __36__UARPAsset_prepareLocalFileForUse___block_invoke_cold_3(v2);
    }
  }

  else
  {
    v14 = *(*(a1 + 32) + 8);
    v15 = *(*(a1 + 40) + 8);
    v19 = *(v15 + 40);
    v16 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v14 error:&v19];
    objc_storeStrong((v15 + 40), v19);
    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    *(v17 + 16) = v16;

    if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_DEBUG))
    {
      __36__UARPAsset_prepareLocalFileForUse___block_invoke_cold_1(v2);
    }
  }
}

- (void)concludeLocalFileAccess
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, v0, OS_LOG_TYPE_ERROR, "%s: Error closing file %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)fileLength
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_247AA7000, v0, v1, "%s: Failed to get file size attribute for %@ with error %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareLocalFileForUse:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[UARPAsset prepareLocalFileForUse:]";
  *&v4[12] = 2112;
  *&v4[14] = *(a1 + 8);
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_3(&dword_247AA7000, a2, a3, "%s: Failed to Write/Read to url(%@) with Error: %@", *v4, *&v4[8], *&v4[16], *(*a2 + 40));
  v3 = *MEMORY[0x277D85DE8];
}

void __36__UARPAsset_prepareLocalFileForUse___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1, *MEMORY[0x277D85DE8]);
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(&dword_247AA7000, v1, OS_LOG_TYPE_DEBUG, "%s: Opened Asset for reading at %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __36__UARPAsset_prepareLocalFileForUse___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1, *MEMORY[0x277D85DE8]);
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_247AA7000, v1, OS_LOG_TYPE_ERROR, "%s: Failed to createFileAtPath for use %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __36__UARPAsset_prepareLocalFileForUse___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1, *MEMORY[0x277D85DE8]);
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(&dword_247AA7000, v1, OS_LOG_TYPE_DEBUG, "%s: Opened Asset for writing at %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end