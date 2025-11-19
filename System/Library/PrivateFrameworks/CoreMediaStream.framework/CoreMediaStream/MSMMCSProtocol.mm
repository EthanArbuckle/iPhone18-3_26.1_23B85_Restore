@interface MSMMCSProtocol
+ (id)computeItemIDForAsset:(id)a3;
- (MSMMCSProtocol)initWithPersonID:(id)a3 path:(id)a4;
- (void)_getItemDone:(unint64_t)a3 path:(id)a4 error:(id)a5;
- (void)_putItemDone:(unint64_t)a3 putReceipt:(id)a4 error:(id)a5;
- (void)deactivateRemoveAllFiles:(BOOL)a3;
- (void)dealloc;
- (void)didFinishUsingAssets:(id)a3;
@end

@implementation MSMMCSProtocol

- (void)_putItemDone:(unint64_t)a3 putReceipt:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  __assert_rtn("[MSMMCSProtocol _putItemDone:putReceipt:error:]", "MSMMCSProtocol.m", 201, "0");
}

- (void)_getItemDone:(unint64_t)a3 path:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  __assert_rtn("[MSMMCSProtocol _getItemDone:path:error:]", "MSMMCSProtocol.m", 197, "0");
}

- (void)didFinishUsingAssets:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) metadata];
        v10 = [v9 objectForKey:@"MSAssetMetadataItemID"];

        if (v10)
        {
          engine = self->_engine;
          [v10 unsignedLongLongValue];
          MMCSUnregisterFile();
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MSMMCSProtocol *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSMMCSProtocol;
  [(MSMMCSProtocol *)&v3 dealloc];
}

- (void)deactivateRemoveAllFiles:(BOOL)a3
{
  v3 = a3;
  if (self->_engine)
  {
    MMCSEngineDestroy();
    self->_engine = 0;
  }

  personID = self->_personID;
  self->_personID = 0;

  engineDirPath = self->_engineDirPath;
  self->_engineDirPath = 0;

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Removing database.", v9, 2u);
    }

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 removeItemAtPath:self->_MMCSDirPath error:0];
  }

  MMCSDirPath = self->_MMCSDirPath;
  self->_MMCSDirPath = 0;
}

- (MSMMCSProtocol)initWithPersonID:(id)a3 path:(id)a4
{
  v26[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = MSMMCSProtocol;
  v9 = [(MSMMCSProtocol *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_MMCSDirPath, a4);
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    v12 = *MEMORY[0x277D25450];
    v25[0] = *MEMORY[0x277D25448];
    v25[1] = v12;
    v26[0] = MEMORY[0x277CBEC38];
    v26[1] = MEMORY[0x277CBEC38];
    v25[2] = *MEMORY[0x277D25440];
    v26[2] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v13 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE640]];
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    v15 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v15 getCFRunLoop];
    MSPlatform();
    v16 = v8;
    v17 = a3;
    v19 = v18 = v7;
    [v19 appBundleInfoString];
    v10->_engine = MMCSEngineCreate();

    v7 = v18;
    objc_storeStrong(&v10->_engineDirPath, a4);
    v20 = v17;
    v8 = v16;
    objc_storeStrong(&v10->_personID, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)computeItemIDForAsset:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 objectForKey:@"MSAssetMetadataItemID"];
  if (!v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = __masterManifest_1115;
    if (!__masterManifest_1115)
    {
      v8 = MSPathMMCSMasterManifest();
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 fileExistsAtPath:v8];

      if (v10)
      {
        v11 = MEMORY[0x277CCAC58];
        v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8];
        v29 = 0;
        v13 = [v11 propertyListWithData:v12 options:1 format:0 error:&v29];
        v14 = v29;
        v15 = __masterManifest_1115;
        __masterManifest_1115 = v13;

        if (!__masterManifest_1115 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v31 = v14;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to deserialize MMCS master manifest: %{public}@", buf, 0xCu);
        }
      }

      if (!__masterManifest_1115)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v17 = __masterManifest_1115;
        __masterManifest_1115 = v16;
      }

      v7 = __masterManifest_1115;
    }

    v18 = v7;
    v19 = [v18 objectForKey:@"nextFileID"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 unsignedLongLongValue] + 1;
    }

    else
    {
      v22 = arc4random();
      v21 = arc4random() | (v22 << 32);
    }

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
    [v18 setObject:v23 forKey:@"nextFileID"];

    v24 = __masterManifest_1115;
    v25 = MSPathMMCSMasterManifest();
    [v24 writeToFile:v25 atomically:1];

    v5 = [v6 numberWithUnsignedLongLong:v21];
    v26 = [v4 mutableCopy];
    [v26 setObject:v5 forKey:@"MSAssetMetadataItemID"];
    [v3 setMetadata:v26];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

@end