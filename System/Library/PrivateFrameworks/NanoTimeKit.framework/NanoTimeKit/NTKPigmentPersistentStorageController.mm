@interface NTKPigmentPersistentStorageController
+ (id)globalStoresFolder;
+ (id)perDeviceFolder;
- (BOOL)createColorSyncFolderIfNeededForDeviceUUID:(id)d;
- (BOOL)createFolderIfNeeded:(id)needed;
- (NTKPigmentPersistentStorageController)init;
- (NTKPigmentPersistentStorageController)initWithRootDirectory:(id)directory;
- (id)_sharedCollections;
- (id)colorDomainFilePath:(id)path deviceUUID:(id)d;
- (id)colorSyncFolderPathWithDeviceUUID:(id)d;
- (id)device;
- (id)facePigmentSetForDomain:(id)domain sharedCollections:(id)collections;
- (id)readPigmentSetFromData:(id)data sharedCollections:(id)collections;
- (id)readSharedCollectionsFromData:(id)data;
- (id)serializeFacePigmentSet:(id)set;
- (id)sharedCollections;
- (id)transactionLockerFileNameForDeviceUUID:(id)d;
- (void)_sharedCollections;
- (void)_writeData:(id)data toFile:(id)file;
- (void)closeTransactionForDeviceUUID:(id)d;
- (void)deleteContent;
- (void)persistFacePigmentSet:(id)set deviceUUID:(id)d;
- (void)persistFacePigmentSetData:(id)data domain:(id)domain deviceUUID:(id)d;
- (void)persistSharedCollections:(id)collections deviceUUID:(id)d;
- (void)persistSharedCollectionsData:(id)data deviceUUID:(id)d;
- (void)startTransactionForDeviceUUID:(id)d;
@end

@implementation NTKPigmentPersistentStorageController

- (NTKPigmentPersistentStorageController)init
{
  perDeviceFolder = [objc_opt_class() perDeviceFolder];
  v4 = [(NTKPigmentPersistentStorageController *)self initWithRootDirectory:perDeviceFolder];

  return v4;
}

- (NTKPigmentPersistentStorageController)initWithRootDirectory:(id)directory
{
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = NTKPigmentPersistentStorageController;
  v6 = [(NTKPigmentPersistentStorageController *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.NanoTimeKit.NTKPigmentPersistentStorageController", v7);
    privateQueue = v6->_privateQueue;
    v6->_privateQueue = v8;

    objc_storeStrong(&v6->_rootDirectory, directory);
  }

  return v6;
}

- (id)facePigmentSetForDomain:(id)domain sharedCollections:(id)collections
{
  domainCopy = domain;
  collectionsCopy = collections;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__50;
  v21 = __Block_byref_object_dispose__50;
  v22 = 0;
  privateQueue = self->_privateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__NTKPigmentPersistentStorageController_facePigmentSetForDomain_sharedCollections___block_invoke;
  v13[3] = &unk_2787805B0;
  v13[4] = self;
  v14 = domainCopy;
  v15 = collectionsCopy;
  v16 = &v17;
  v9 = collectionsCopy;
  v10 = domainCopy;
  dispatch_sync(privateQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __83__NTKPigmentPersistentStorageController_facePigmentSetForDomain_sharedCollections___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = [v2 pdrDevice];
  v4 = [v3 pairingID];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = (a1 + 40);
  v7 = [*(a1 + 32) colorDomainFilePath:*(a1 + 40) deviceUUID:v4];
  if ([v5 fileExistsAtPath:v7])
  {
    v14 = 0;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7 options:1 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = [*(a1 + 32) readPigmentSetFromData:v8 sharedCollections:*(a1 + 48)];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __83__NTKPigmentPersistentStorageController_facePigmentSetForDomain_sharedCollections___block_invoke_cold_1(v6);
      }
    }
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = *v6;
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_INFO, "#persistence No stored color data for domain %{public}@", buf, 0xCu);
    }
  }
}

- (id)sharedCollections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__50;
  v10 = __Block_byref_object_dispose__50;
  v11 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__NTKPigmentPersistentStorageController_sharedCollections__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__NTKPigmentPersistentStorageController_sharedCollections__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sharedCollections];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_sharedCollections
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  pdrDevice = [currentDevice pdrDevice];
  pairingID = [pdrDevice pairingID];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [(NTKPigmentPersistentStorageController *)self colorDomainFilePath:@"sharedCollections" deviceUUID:pairingID];
  if ([defaultManager fileExistsAtPath:v7])
  {
    v13 = 0;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7 options:1 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [(NTKPigmentPersistentStorageController *)self readSharedCollectionsFromData:v8];

      goto LABEL_10;
    }

    v11 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController _sharedCollections];
    }
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController _sharedCollections];
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)persistFacePigmentSetData:(id)data domain:(id)domain deviceUUID:(id)d
{
  dataCopy = data;
  domainCopy = domain;
  dCopy = d;
  privateQueue = self->_privateQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__NTKPigmentPersistentStorageController_persistFacePigmentSetData_domain_deviceUUID___block_invoke;
  v15[3] = &unk_278780FF8;
  v15[4] = self;
  v16 = dCopy;
  v17 = domainCopy;
  v18 = dataCopy;
  v12 = dataCopy;
  v13 = domainCopy;
  v14 = dCopy;
  dispatch_sync(privateQueue, v15);
}

void __85__NTKPigmentPersistentStorageController_persistFacePigmentSetData_domain_deviceUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) createColorSyncFolderIfNeededForDeviceUUID:*(a1 + 40)];
  v2 = [*(a1 + 32) colorDomainFilePath:*(a1 + 48) deviceUUID:*(a1 + 40)];
  [*(a1 + 32) _writeData:*(a1 + 56) toFile:v2];
}

- (void)_writeData:(id)data toFile:(id)file
{
  v13 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v10 = 0;
  v6 = [data writeToFile:fileCopy options:268435457 error:&v10];
  v7 = v10;
  v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v12 = fileCopy;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_INFO, "#persistence Persisted synced pigment options %{public}@.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [NTKPigmentPersistentStorageController _writeData:toFile:];
  }
}

- (void)persistFacePigmentSet:(id)set deviceUUID:(id)d
{
  setCopy = set;
  dCopy = d;
  collectionBySlots = [setCopy collectionBySlots];
  v9 = [collectionBySlots count];

  if (v9)
  {
    domain = [setCopy domain];
    if ([domain length])
    {
      v11 = [(NTKPigmentPersistentStorageController *)self serializeFacePigmentSet:setCopy];
      [(NTKPigmentPersistentStorageController *)self persistFacePigmentSetData:v11 domain:domain deviceUUID:dCopy];
    }

    else
    {
      v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NTKPigmentPersistentStorageController persistFacePigmentSet:deviceUUID:];
      }
    }
  }

  else
  {
    domain = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController persistFacePigmentSet:deviceUUID:];
    }
  }
}

- (void)persistSharedCollections:(id)collections deviceUUID:(id)d
{
  dCopy = d;
  if (collections)
  {
    v7 = [NTKProtoSharedCollections protoBufferFromSharedCollections:collections];
    data = [v7 data];
    [(NTKPigmentPersistentStorageController *)self persistSharedCollectionsData:data deviceUUID:dCopy];
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController persistSharedCollections:deviceUUID:];
    }
  }
}

- (void)persistSharedCollectionsData:(id)data deviceUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NTKPigmentPersistentStorageController_persistSharedCollectionsData_deviceUUID___block_invoke;
  block[3] = &unk_27877E238;
  block[4] = self;
  v12 = dCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = dCopy;
  dispatch_sync(privateQueue, block);
}

void __81__NTKPigmentPersistentStorageController_persistSharedCollectionsData_deviceUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) createColorSyncFolderIfNeededForDeviceUUID:*(a1 + 40)];
  v2 = [*(a1 + 32) colorDomainFilePath:@"sharedCollections" deviceUUID:*(a1 + 40)];
  [*(a1 + 32) _writeData:*(a1 + 48) toFile:v2];
}

- (void)closeTransactionForDeviceUUID:(id)d
{
  dCopy = d;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NTKPigmentPersistentStorageController_closeTransactionForDeviceUUID___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(privateQueue, v7);
}

void __71__NTKPigmentPersistentStorageController_closeTransactionForDeviceUUID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) transactionLockerFileNameForDeviceUUID:*(a1 + 40)];
  if ([v2 fileExistsAtPath:v3])
  {
    v9 = 0;
    v4 = [v2 removeItemAtPath:v3 error:&v9];
    v5 = v9;
    if (!v4 || v5 != 0)
    {
      v7 = v5;
      v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __71__NTKPigmentPersistentStorageController_closeTransactionForDeviceUUID___block_invoke_cold_1();
      }
    }
  }
}

- (void)deleteContent
{
  [(NTKPigmentPersistentStorageController *)self resetCache];
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NTKPigmentPersistentStorageController_deleteContent__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(privateQueue, block);
}

void __54__NTKPigmentPersistentStorageController_deleteContent__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#persistence Deleting root directory. %{public}@", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:*(*(a1 + 32) + 16)])
  {
    v5 = *(*(a1 + 32) + 16);
    v9 = 0;
    v6 = [v4 removeItemAtPath:v5 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __54__NTKPigmentPersistentStorageController_deleteContent__block_invoke_cold_1();
      }
    }
  }
}

- (void)startTransactionForDeviceUUID:(id)d
{
  dCopy = d;
  privateQueue = self->_privateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NTKPigmentPersistentStorageController_startTransactionForDeviceUUID___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(privateQueue, v7);
}

void __71__NTKPigmentPersistentStorageController_startTransactionForDeviceUUID___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) createColorSyncFolderIfNeededForDeviceUUID:*(a1 + 40)];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) transactionLockerFileNameForDeviceUUID:*(a1 + 40)];
  if (([v2 fileExistsAtPath:v3] & 1) == 0)
  {
    v4 = [*(a1 + 32) transactionLockerFileNameForDeviceUUID:*(a1 + 40)];
    v6 = *MEMORY[0x277CCA1B0];
    v7[0] = *MEMORY[0x277CCA1B8];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 createFileAtPath:v4 contents:0 attributes:v5];
  }
}

- (id)device
{
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];

  return device;
}

- (id)transactionLockerFileNameForDeviceUUID:(id)d
{
  v3 = [(NTKPigmentPersistentStorageController *)self colorSyncFolderPathWithDeviceUUID:d];
  v4 = [v3 stringByAppendingPathComponent:@"__TRANSACTION_IN_PROGRESS__"];

  return v4;
}

- (BOOL)createColorSyncFolderIfNeededForDeviceUUID:(id)d
{
  v4 = [(NTKPigmentPersistentStorageController *)self colorSyncFolderPathWithDeviceUUID:d];
  v5 = [(NTKPigmentPersistentStorageController *)self createFolderIfNeeded:v4];
  if (!v5)
  {
    v6 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController createColorSyncFolderIfNeededForDeviceUUID:];
    }
  }

  return v5;
}

+ (id)globalStoresFolder
{
  faceColorRootFolder = [self faceColorRootFolder];
  v3 = [faceColorRootFolder stringByAppendingPathComponent:@"GlobalStores"];

  return v3;
}

+ (id)perDeviceFolder
{
  faceColorRootFolder = [self faceColorRootFolder];
  v3 = [faceColorRootFolder stringByAppendingPathComponent:@"PerDeviceStores"];

  return v3;
}

- (id)colorSyncFolderPathWithDeviceUUID:(id)d
{
  v4 = self->_rootDirectory;
  if (d)
  {
    uUIDString = [d UUIDString];
    v6 = [(NSString *)v4 stringByAppendingPathComponent:uUIDString];

    v4 = v6;
  }

  return v4;
}

- (id)colorDomainFilePath:(id)path deviceUUID:(id)d
{
  pathCopy = path;
  v7 = [(NTKPigmentPersistentStorageController *)self colorSyncFolderPathWithDeviceUUID:d];
  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.protobuffer", pathCopy];

  v9 = [v7 stringByAppendingPathComponent:pathCopy];

  return v9;
}

- (BOOL)createFolderIfNeeded:(id)needed
{
  v15[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  if ([defaultManager fileExistsAtPath:neededCopy isDirectory:&v13] && (v13 & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v14 = *MEMORY[0x277CCA1B0];
    v15[0] = *MEMORY[0x277CCA1B8];
    v5 = 1;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = 0;
    v7 = [defaultManager createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:v6 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NTKPigmentPersistentStorageController createFolderIfNeeded:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)readPigmentSetFromData:(id)data sharedCollections:(id)collections
{
  dataCopy = data;
  collectionsCopy = collections;
  v7 = [[NTKProtoFacePigmentSet alloc] initWithData:dataCopy];
  if (v7)
  {
    v8 = [NTKFacePigmentSet facePigmentSetFromProtoBuffer:v7 sharedCollections:collectionsCopy];
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController readPigmentSetFromData:sharedCollections:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)readSharedCollectionsFromData:(id)data
{
  dataCopy = data;
  v4 = [[NTKProtoSharedCollections alloc] initWithData:dataCopy];

  sharedCollectionsDictionary = [(NTKProtoSharedCollections *)v4 sharedCollectionsDictionary];

  return sharedCollectionsDictionary;
}

- (id)serializeFacePigmentSet:(id)set
{
  setCopy = set;
  protoBuffer = [setCopy protoBuffer];
  data = [protoBuffer data];

  if (!data)
  {
    v6 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentPersistentStorageController serializeFacePigmentSet:];
    }
  }

  return data;
}

void __83__NTKPigmentPersistentStorageController_facePigmentSetForDomain_sharedCollections___block_invoke_cold_1(void *a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v1, v2, "#persistence Failed to read color sync data for domain %{public}@ - %{public}@", v3, DWORD2(v3));
}

- (void)_sharedCollections
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_writeData:toFile:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "#persistence Failed to write pigment options to file %{public}@ - %{public}@");
}

- (void)persistFacePigmentSet:deviceUUID:.cold.1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)persistFacePigmentSet:deviceUUID:.cold.2()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)persistSharedCollections:deviceUUID:.cold.1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__NTKPigmentPersistentStorageController_closeTransactionForDeviceUUID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__NTKPigmentPersistentStorageController_deleteContent__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createColorSyncFolderIfNeededForDeviceUUID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createFolderIfNeeded:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v0, v1, "#persistence Failed to create directory at path %{public}@ - Error %{public}@");
}

- (void)readPigmentSetFromData:sharedCollections:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)serializeFacePigmentSet:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end