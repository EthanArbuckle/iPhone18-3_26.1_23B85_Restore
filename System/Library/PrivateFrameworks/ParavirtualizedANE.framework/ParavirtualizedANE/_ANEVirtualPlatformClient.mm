@interface _ANEVirtualPlatformClient
+ (BOOL)createLastModificationTimeStampFile:(id)file fileName:(id)name timeSince1970:(double)since1970;
+ (BOOL)isFileModificationTimeStampSame:(id)same timeSince1970:(double)since1970;
+ (BOOL)isValidBufferSize:(unint64_t)size;
+ (BOOL)needToSaveFile:(id)file fileName:(id)name timeSince1970:(double)since1970;
+ (__CFDictionary)prepareValidationResultForSerialization:(__CFDictionary *)serialization;
+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (const)dictionaryGetDataBytesForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (id)generateExpectedBaseDirectoryWith:(id)with withCSIdentity:(id)identity withVMID:(id)d fileSubDirectory:(id)directory;
+ (id)generateExpectedPathForFileName:(id)name withANEBaseDirectory:(id)directory withCSIdentity:(id)identity withVMID:(id)d fileSubDirectory:(id)subDirectory;
+ (id)getCodeSigningIdentity:(__CFDictionary *)identity;
+ (id)getDataFromIOSurface:(__IOSurface *)surface withSize:(unint64_t)size;
+ (id)getPrecompiledModelPath:(id)path error:(id *)error;
+ (id)sharedConnection:(id)connection;
+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (unint64_t)getCommandInputSize:(unint64_t)size;
+ (void)initialize;
+ (void)printStruct:(VirtANEModel *)struct;
- (BOOL)copyDictionaryUsingJSONSerialization:(id)serialization toIOSurfaceWithID:(unsigned int)d withMaxSize:(unint64_t)size outWrittentDataSize:(unint64_t *)dataSize;
- (BOOL)createLLIRBundleOnDiskFromIOSurfaceWithID:(unsigned int)d destDirectory:(id)directory llirDataSize:(unint64_t)size;
- (BOOL)createModelFileAtPath:(id)path fromIOSID:(unsigned int)d withDataLength:(unint64_t)length shouldAppend:(BOOL)append;
- (BOOL)writeObjectToIOSurfaceID:(unsigned int)d obj:(id)obj writtenDataLength:(unint64_t *)length ioSurfaceMaxSize:(unint64_t)size;
- (__CFDictionary)chunkedDataReceived:(__CFDictionary *)received;
- (__CFDictionary)compileModelDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)compiledModelExistsForDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)compiledModelExistsMatchingHashDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)echoDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)getDeviceInfoDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)loadModelDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)loadModelNewInstance:(__CFDictionary *)instance;
- (__CFDictionary)loadModelNewInstanceLegacy:(__CFDictionary *)legacy;
- (__CFDictionary)purgeCompiledModelDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)purgeCompiledModelMatchingHashDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)sessionHintWithModel:(__CFDictionary *)model;
- (__CFDictionary)unLoadModelDictionary:(__CFDictionary *)dictionary;
- (__CFDictionary)validateNetworkCreateMLIR:(__CFDictionary *)r;
- (id)constructANEModel:(__CFDictionary *)model modelDirectory:(id)directory;
- (id)createANEModelInstanceParameters:(__CFDictionary *)parameters modelUUID:(id)d;
- (id)createAllModelFilesOnHost:(__CFDictionary *)host;
- (id)doCreateModelFile:(VirtANEModel *)file aneModelKey:(id)key;
- (id)generateExpectedModelFilePathFromDictionary:(__CFDictionary *)dictionary error:(id *)error;
- (id)generatedExpectedBaseDirectoryWithFileType:(unsigned int)type withInputDictionary:(__CFDictionary *)dictionary;
- (id)getANEModelKey:(__CFDictionary *)key caller:(id)caller;
- (id)getObjectFromIOSurfaceID:(unsigned int)d classType:(Class)type length:(unint64_t)AllocSize;
- (id)getOptionsFromDictionary:(__CFDictionary *)dictionary;
- (id)init:(id)init;
- (id)objectWithIOSurfaceID:(unsigned int)d;
- (id)removeAllModelFiles:(id)files;
- (id)requestWithVirtualANEModel:(VirtANEModel *)model;
- (id)requestWithVirtualANEModelDictionary:(__CFDictionary *)dictionary;
- (id)updateOptions:(id)options virtualANEModel:(VirtANEModel *)model;
- (id)updateOptionsDictionary:(id)dictionary directoryPath:(id)path;
- (void)asyncAvpHoldMessageReceived:(AppleVirtIONeuralEngineCFData *)received;
- (void)callCFDictionaryMethod:(AppleVirtIONeuralEngineCFData *)method;
- (void)compileModel:(VirtANEModel *)model;
- (void)compiledModelExistsFor:(VirtANEModel *)for;
- (void)compiledModelExistsMatchingHash:(VirtANEModel *)hash;
- (void)copyBytesToIOSurface:(char *)surface dataLength:(unsigned int)length ioSID:(unsigned int)d;
- (void)createOptionFilesForCompilation:(VirtANEModel *)compilation aneModelKey:(id)key options:(id)options;
- (void)createOptionFilesForCompilationDictionary:(__CFDictionary *)dictionary aneModelKey:(id)key options:(id)options modelDirectory:(id)directory;
- (void)dealloc;
- (void)doModelAttributeUpdate:(id)update virtualANEModel:(VirtANEModel *)model;
- (void)doModelAttributeUpdateDictionary:(id)dictionary dictionary:(__CFDictionary *)a4;
- (void)doRemoveModelFile:(VirtANEModel *)file;
- (void)echo:(VirtANEModel *)echo;
- (void)evaluateWithModel:(VirtANEModel *)model;
- (void)evaluateWithModelDictionary:(__CFDictionary *)dictionary;
- (void)exchangeBuildVersionInfo:(BuildVersionInfo *)info;
- (void)getArrayFromIOSurfaceID:(unsigned int)d localData:(unsigned int *)data localDataLength:(unint64_t)length;
- (void)getBytesFromIOSurfaceID:(unsigned int)d dest:(char *)dest dataLength:(unint64_t)length;
- (void)getDeviceInfo:(DeviceInfo *)info;
- (void)loadModel:(VirtANEModel *)model;
- (void)mapIOSurfacesWithModel:(VirtANEModel *)model;
- (void)modelAction:(unsigned __int16)action buffer:(void *)buffer bufferSize:(unint64_t)size;
- (void)printIOSurfaceDataInBytes:(unsigned int)bytes;
- (void)purgeCompiledModel:(VirtANEModel *)model;
- (void)purgeCompiledModelMatchingHash:(VirtANEModel *)hash;
- (void)storeGuestBuildVersion:(BuildVersionInfoLegacy *)version;
- (void)unLoadModel:(VirtANEModel *)model;
- (void)updateErrorValue:(VirtANEModel *)value error:(id)error;
- (void)updateErrorValueDictionary:(__CFDictionary *)dictionary error:(id)error;
- (void)updatePerformanceStats:(VirtANEModel *)stats aneRequest:(id)request;
- (void)updatePerformanceStatsDictionary:(__CFDictionary *)dictionary aneRequest:(id)request;
- (void)updateVirtualANEModel:(VirtANEModel *)model model:(id)a4;
- (void)updateVirtualANEModelDictionary:(__CFDictionary *)dictionary model:(id)model cacheURLIdentifierToGuest:(BOOL)guest;
- (void)validateNetworkCreate:(__CFDictionary *)create;
@end

@implementation _ANEVirtualPlatformClient

+ (void)initialize
{
  gLogger = os_log_create("com.apple.ane", "ANEVirtualPlatformClient");

  MEMORY[0x2821F96F8]();
}

+ (id)sharedConnection:(id)connection
{
  connectionCopy = connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46___ANEVirtualPlatformClient_sharedConnection___block_invoke;
  v10[3] = &unk_2799FDB30;
  v11 = connectionCopy;
  v12 = a2;
  v5 = +[_ANEVirtualPlatformClient sharedConnection:]::onceToken;
  v6 = connectionCopy;
  if (v5 != -1)
  {
    dispatch_once(&+[_ANEVirtualPlatformClient sharedConnection:]::onceToken, v10);
  }

  v7 = +[_ANEVirtualPlatformClient sharedConnection:]::client;
  v8 = +[_ANEVirtualPlatformClient sharedConnection:]::client;

  return v7;
}

- (id)init:(id)init
{
  v43 = *MEMORY[0x277D85DE8];
  initCopy = init;
  v41.receiver = self;
  v41.super_class = _ANEVirtualPlatformClient;
  v5 = [(_ANEVirtualPlatformClient *)&v41 init];
  if (!v5)
  {
LABEL_28:
    v31 = v5;
    goto LABEL_29;
  }

  v6 = objc_opt_new();
  aneModelDict = v5->_aneModelDict;
  v5->_aneModelDict = v6;

  mEMORY[0x277CEE948] = [MEMORY[0x277CEE948] sharedConnection];
  aneClient = v5->_aneClient;
  v5->_aneClient = mEMORY[0x277CEE948];

  v10 = dispatch_queue_create("com.apple.avp.ane", 0);
  queue = v5->_queue;
  v5->_queue = v10;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  confstr(65538, v42, 0x400uLL);
  if (initCopy)
  {
    v13 = [initCopy dataUsingEncoding:4];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/com.apple.appleneuralengine", initCopy, a2];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v42 length:1024];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/com.apple.appleneuralengine", v42, a2];
  }

  p_anebaseDirectory = &v5->_anebaseDirectory;
  anebaseDirectory = v5->_anebaseDirectory;
  v5->_anebaseDirectory = v14;

  if (([defaultManager fileExistsAtPath:v5->_anebaseDirectory] & 1) != 0 || (v17 = *p_anebaseDirectory, v40 = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v17, 1, 0, &v40), (v18 = v40) == 0))
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/test1", *p_anebaseDirectory];
    v39 = 0;
    [v13 writeToFile:v20 options:1 error:&v39];
    v19 = v39;
    v21 = v19 != 0;
    if (!v19)
    {
      goto LABEL_14;
    }

    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelectora);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient init:];
    }
  }

  else
  {
    v19 = v18;
    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelectora);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient init:];
    }
  }

  v21 = 1;
LABEL_14:

  if (initCopy != 0 || !v21)
  {
LABEL_25:
    v32 = gLogger;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelectora);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient init:];
    }

    goto LABEL_28;
  }

  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/com.apple.virtualization.juniper/com.apple.appleneuralengine", v42];
  v24 = *p_anebaseDirectory;
  *p_anebaseDirectory = v23;

  if (([defaultManager fileExistsAtPath:*p_anebaseDirectory] & 1) != 0 || (v25 = *p_anebaseDirectory, v38 = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v25, 1, 0, &v38), (v26 = v38) == 0))
  {
    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/test1", *p_anebaseDirectory];
    v37 = 0;
    [v13 writeToFile:v28 options:1 error:&v37];
    v29 = v37;
    if (v29)
    {
      v27 = v29;
      v30 = gLogger;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(aSelectora);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient init:];
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v27 = v26;
  v28 = gLogger;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(aSelectora);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient init:];
  }

LABEL_23:

  v31 = 0;
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _ANEVirtualPlatformClient;
  [(_ANEVirtualPlatformClient *)&v2 dealloc];
}

+ (BOOL)isValidBufferSize:(unint64_t)size
{
  result = 0;
  if (size <= 287)
  {
    if (size != 32 && size != 40 && size != 192)
    {
      return result;
    }

    return 1;
  }

  if (size == 288 || size == 2640 || size == 2624)
  {
    return 1;
  }

  return result;
}

- (void)modelAction:(unsigned __int16)action buffer:(void *)buffer bufferSize:(unint64_t)size
{
  queue = [(_ANEVirtualPlatformClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke;
  block[3] = &unk_2799FDB58;
  block[6] = a2;
  block[7] = size;
  actionCopy = action;
  block[4] = self;
  block[5] = buffer;
  dispatch_sync(queue, block);
}

+ (unint64_t)getCommandInputSize:(unint64_t)size
{
  v9 = *MEMORY[0x277D85DE8];
  if (size >= 0xF)
  {
    v5 = gLogger;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualPlatformClient getCommandInputSize:];
    }

    v4 = 2640;
  }

  else
  {
    v4 = *&aP[8 * size];
  }

  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    +[_ANEVirtualPlatformClient getCommandInputSize:];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)getANEModelKey:(__CFDictionary *)key caller:(id)caller
{
  v14 = *MEMORY[0x277D85DE8];
  callerCopy = caller;
  if (CFDictionaryContainsKey(key, @"keyLength"))
  {
    if (CFDictionaryContainsKey(key, @"ioSIDKey"))
    {
      v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:key key:@"keyLength"];
      v9 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:key key:@"ioSIDKey"];
      if (v8)
      {
        if (v9)
        {
          v10 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v9 classType:objc_opt_class() length:v8];
          goto LABEL_10;
        }

        v11 = gLogger;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient getANEModelKey:caller:];
        }
      }
    }
  }

  v10 = &stru_286FC4C68;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)compileModel:(VirtANEModel *)model
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var5 classType:objc_opt_class() length:model->var9];
  v6 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:model aneModelKey:v5];
  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var23 classType:objc_opt_class() length:model->var24];
  [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilation:model aneModelKey:v5 options:v7];
  [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v6 virtualANEModel:model];
  aneClient = self->_aneClient;
  var22 = model->var22;
  v12 = 0;
  v10 = [(_ANEClient *)aneClient compileModel:v6 options:v7 qos:var22 error:&v12];
  v11 = v12;
  model->var1 = v10;
  [(_ANEVirtualPlatformClient *)self updateErrorValue:model error:v11];
  [(_ANEVirtualPlatformClient *)self updateVirtualANEModel:model model:v6];
}

+ (const)dictionaryGetDataBytesForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  result = CFDictionaryGetValue(key, a4);
  if (result)
  {

    return CFDataGetBytePtr(result);
  }

  return result;
}

+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  result = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (!Value)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
  return valuePtr;
}

- (id)getOptionsFromDictionary:(__CFDictionary *)dictionary
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"optionsLength"];
  v7 = v6;
  if (v6)
  {
    v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDOptions"];
    if (v8)
    {
      v9 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v8 classType:objc_opt_class() length:v7];
      goto LABEL_10;
    }

    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient getOptionsFromDictionary:];
    }
  }

  else
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient getOptionsFromDictionary:];
    }
  }

  v9 = 0;
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)constructANEModel:(__CFDictionary *)model modelDirectory:(id)directory
{
  v32 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v8 = NSStringFromSelector(a2);
  v31 = [(_ANEVirtualPlatformClient *)self getANEModelKey:model caller:v8];

  v9 = [(__CFDictionary *)model objectForKeyedSubscript:@"uuid"];
  v10 = v9;
  if (!v9 || ![v9 length])
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v10 = uUIDString;
  }

  if (CFDictionaryContainsKey(model, @"modelCacheURLIdentifier") && (Value = CFDictionaryGetValue(model, @"modelCacheURLIdentifier")) != 0)
  {
    v15 = Value;
    v16 = gLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
    }
  }

  else
  {
    v15 = 0;
  }

  if (CFDictionaryContainsKey(model, @"modelCacheURLIdentifierSource"))
  {
    v17 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"modelCacheURLIdentifierSource"];
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
    }
  }

  else
  {
    v17 = 0;
  }

  if (!CFDictionaryContainsKey(model, @"sourceURLPathLength"))
  {
    goto LABEL_26;
  }

  v19 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"sourceURLPathLength"];
  v20 = gLogger;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
  }

  if (v19 && CFDictionaryContainsKey(model, @"ioSIDModelSourceURLPath") && (v21 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"ioSIDModelSourceURLPath"]) != 0)
  {
    v22 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v21 classType:objc_opt_class() length:v19];
    v23 = gLogger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
    }
  }

  else
  {
LABEL_26:
    v22 = 0;
  }

  v24 = MEMORY[0x277CEE980];
  if (directoryCopy)
  {
    v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:directoryCopy];
    if (v22)
    {
LABEL_29:
      v26 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
      goto LABEL_32;
    }
  }

  else
  {
    v25 = 0;
    if (v22)
    {
      goto LABEL_29;
    }
  }

  v26 = 0;
LABEL_32:
  v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
  v28 = [v24 modelAtURLWithSourceURL:v25 sourceURL:v26 key:v31 identifierSource:v17 cacheURLIdentifier:v15 UUID:v27];

  if (v22)
  {
  }

  if (directoryCopy)
  {
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (__CFDictionary)compileModelDictionary:(__CFDictionary *)dictionary
{
  v32[6] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  [(__CFDictionary *)Mutable setObject:v7 forKey:@"success"];

  if (CFDictionaryContainsKey(dictionary, @"ioSIDErrorValue"))
  {
    Value = CFDictionaryGetValue(dictionary, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", Value);
  }

  if (CFDictionaryContainsKey(dictionary, @"ioSIDModelParameters"))
  {
    v9 = CFDictionaryGetValue(dictionary, @"ioSIDModelParameters");
    CFDictionarySetValue(Mutable, @"ioSIDModelParameters", v9);
  }

  if (CFDictionaryContainsKey(dictionary, @"ioSIDModelAttributes"))
  {
    v10 = CFDictionaryGetValue(dictionary, @"ioSIDModelAttributes");
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"ioSIDModelAttributes", v10);
    }
  }

  v11 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:dictionary];
  v12 = gLogger;
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient compileModelDictionary:];
    }

    v14 = [(_ANEVirtualPlatformClient *)self constructANEModel:dictionary modelDirectory:v11];
    v31 = v11;
    getCacheURLIdentifier = [v14 getCacheURLIdentifier];

    v16 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"optionsLength"];
    v17 = v16;
    if (v16)
    {
      v18 = a2;
      v19 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDOptions"];
      if (v19)
      {
        v20 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v19 classType:objc_opt_class() length:v17];
        [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v14 dictionary:dictionary];
        v21 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"qos"];
        aneClient = self->_aneClient;
        v32[0] = 0;
        v23 = [(_ANEClient *)aneClient compileModel:v14 options:v20 qos:v21 error:v32];
        v24 = v32[0];
        CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v23]);
        [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v24];
        [(_ANEVirtualPlatformClient *)self updateVirtualANEModelDictionary:Mutable model:v14 cacheURLIdentifierToGuest:getCacheURLIdentifier == 0];
        v11 = v31;
LABEL_23:

        goto LABEL_24;
      }

      v27 = gLogger;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = v18;
        v11 = v31;
        NSStringFromSelector(v28);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient getOptionsFromDictionary:];
        goto LABEL_22;
      }
    }

    else
    {
      v27 = gLogger;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient getOptionsFromDictionary:];
LABEL_22:

        v20 = 0;
        v24 = 0;
        goto LABEL_23;
      }
    }

    v11 = v31;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient compileModelDictionary:];
  }

  v25 = MEMORY[0x277CEE968];
  v26 = NSStringFromSelector(a2);
  v24 = [v25 virtualizationHostError:v26];

  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v24];
LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)loadModel:(VirtANEModel *)model
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var5 classType:objc_opt_class() length:model->var9];
  v6 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:model aneModelKey:v5];
  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var23 classType:objc_opt_class() length:model->var24];
  if (([(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask]& 2) == 0)
  {
    v8 = [(_ANEVirtualPlatformClient *)self updateOptions:v7 virtualANEModel:model];

    v7 = v8;
  }

  [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilation:model aneModelKey:v5 options:v7];
  [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v6 virtualANEModel:model];
  aneClient = self->_aneClient;
  var22 = model->var22;
  v19 = 0;
  v11 = [(_ANEClient *)aneClient loadModel:v6 options:v7 qos:var22 error:&v19];
  v12 = v19;
  model->var1 = v11;
  if (v11)
  {
    aneModelDict = self->_aneModelDict;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "programHandle")}];
    v15 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v14];

    if (v15)
    {
      [v15 addCachedReference];
    }

    else
    {
      v16 = [_ANEVirtualModel objectWithModel:v6];
      v17 = self->_aneModelDict;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "programHandle")}];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

      v15 = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  [(_ANEVirtualPlatformClient *)self updateErrorValue:model error:v12];
  [(_ANEVirtualPlatformClient *)self updateVirtualANEModel:model model:v6];
}

- (__CFDictionary)loadModelDictionary:(__CFDictionary *)dictionary
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"qos"];
  v6 = [(_ANEVirtualPlatformClient *)self getOptionsFromDictionary:dictionary];
  v43 = [(_ANEVirtualPlatformClient *)self updateOptionsDictionary:v6 directoryPath:0];

  v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"fileDataAlreadySent"];
  if (v7)
  {
    v47 = 0;
    v8 = [(_ANEVirtualPlatformClient *)self generateExpectedModelFilePathFromDictionary:dictionary withFileType:1 error:&v47];
    v9 = v47;
    v10 = 0;
    v44 = v8;
  }

  else
  {
    v11 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:dictionary];
    v12 = [v43 objectForKeyedSubscript:*MEMORY[0x277CEE9D0]];
    v13 = [v12 isEqualToString:*MEMORY[0x277CEE9C8]];

    if (v13)
    {
      v46 = 0;
      v14 = [_ANEVirtualPlatformClient getPrecompiledModelPath:v11 error:&v46];
      v9 = v46;
      if (!v14)
      {
        v36 = gLogger;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient loadModelDictionary:];
        }

        v37 = MEMORY[0x277CEE968];
        v25 = NSStringFromSelector(a2);
        v20 = [v37 dataNotFoundForMethod:v25];
        v44 = 0;
        v16 = 0;
        v21 = 0;
        v42 = 1;
        goto LABEL_19;
      }

      v44 = v14;
      v10 = v11;
    }

    else
    {
      v10 = v11;
      v9 = 0;
      v44 = v10;
    }
  }

  v15 = gLogger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v39 = NSStringFromSelector(a2);
    *buf = 138412802;
    v49 = v39;
    v50 = 1024;
    *v51 = v7 != 0;
    *&v51[4] = 2112;
    *&v51[6] = v44;
    _os_log_debug_impl(&dword_25DF54000, v15, OS_LOG_TYPE_DEBUG, "%@: wasModelFileAlreadyAvailable=%d modelPath=%@", buf, 0x1Cu);
  }

  v16 = [(_ANEVirtualPlatformClient *)self constructANEModel:dictionary modelDirectory:v44];
  getCacheURLIdentifier = [v16 getCacheURLIdentifier];
  v42 = getCacheURLIdentifier == 0;

  if (v16)
  {
    [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilationDictionary:dictionary aneModelKey:0 options:v43 modelDirectory:v10];
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v16 dictionary:dictionary];
    aneClient = self->_aneClient;
    v45 = v9;
    v19 = [(_ANEClient *)aneClient loadModel:v16 options:v43 qos:v5 error:&v45];
    v20 = v45;

    v21 = v19;
    if (!v19)
    {
      v25 = 0;
      goto LABEL_20;
    }

    aneModelDict = self->_aneModelDict;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v16, "programHandle")}];
    v24 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v23];

    if (v24)
    {
      [v24 addCachedReference];
      v25 = v24;
      goto LABEL_20;
    }

    v25 = [_ANEVirtualModel objectWithModel:v16 tmpModelFilesPath:v44 tmpWeightFilesPath:0];
    v40 = self->_aneModelDict;
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v16, "programHandle")}];
    [(NSMutableDictionary *)v40 setObject:v25 forKeyedSubscript:v28];
    v9 = v28;
  }

  else
  {
    v26 = gLogger;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelDictionary:];
    }

    v27 = MEMORY[0x277CEE968];
    v25 = NSStringFromSelector(a2);
    v20 = [v27 dataNotFoundForMethod:v25];
    v16 = 0;
    v21 = 0;
  }

  v11 = v10;
LABEL_19:

  v10 = v11;
LABEL_20:

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (CFDictionaryContainsKey(dictionary, @"ioSIDErrorValue"))
  {
    Value = CFDictionaryGetValue(dictionary, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", Value);
  }

  if (CFDictionaryContainsKey(dictionary, @"ioSIDModelParameters"))
  {
    v31 = CFDictionaryGetValue(dictionary, @"ioSIDModelParameters");
    CFDictionarySetValue(Mutable, @"ioSIDModelParameters", v31);
  }

  if (CFDictionaryContainsKey(dictionary, @"ioSIDModelAttributes"))
  {
    v32 = CFDictionaryGetValue(dictionary, @"ioSIDModelAttributes");
    if (v32)
    {
      CFDictionarySetValue(Mutable, @"ioSIDModelAttributes", v32);
    }
  }

  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v21]);
  v33 = gLogger;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v38 = NSStringFromSelector(a2);
    *buf = 138412802;
    v49 = v38;
    v50 = 2048;
    *v51 = v21;
    *&v51[8] = 2112;
    *&v51[10] = v16;
    _os_log_debug_impl(&dword_25DF54000, v33, OS_LOG_TYPE_DEBUG, "%@: success=%llu model=%@", buf, 0x20u);
  }

  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v20];
  [(_ANEVirtualPlatformClient *)self updateVirtualANEModelDictionary:Mutable model:v16 cacheURLIdentifierToGuest:v42];

  v34 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (__CFDictionary)loadModelNewInstance:(__CFDictionary *)instance
{
  v109 = *MEMORY[0x277D85DE8];
  if ([(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion]<= 0x20405)
  {
    v3 = *MEMORY[0x277D85DE8];

    return [(_ANEVirtualPlatformClient *)self loadModelNewInstanceLegacy:instance];
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v36 = gLogger;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    result = 0;
    goto LABEL_125;
  }

  v80 = Mutable;
  v78 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"qos"];
  v81 = [(__CFDictionary *)instance objectForKeyedSubscript:@"uuid"];
  if (!v81 || ![v81 length])
  {
    v79 = gLogger;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    v35 = 0;
    goto LABEL_124;
  }

  v79 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v81];
  if (!v79)
  {
    v77 = gLogger;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    v35 = 0;
    goto LABEL_123;
  }

  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"ioSIDModelInstParamsData"];
  v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"modelInstParamsDataSize"];
  v8 = [(_ANEVirtualPlatformClient *)self getIOSurface:v6];
  v77 = [_ANEVirtualPlatformClient getDataFromIOSurface:v8 withSize:v7];
  if (!v77)
  {
    v76 = gLogger;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    v35 = 0;
    goto LABEL_122;
  }

  CFRelease(v8);
  v102 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v77 error:&v102];
  v75 = v9;
  v76 = v102;
  if (!v9)
  {
    v91 = gLogger;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    v35 = 0;
    goto LABEL_121;
  }

  v91 = [(_ANEVirtualPlatformClient *)self generatedExpectedBaseDirectoryWithFileType:2 withInputDictionary:instance];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [v9 procedureArray];
  v10 = [obj countByEnumeratingWithState:&v98 objects:v108 count:16];
  if (!v10)
  {

    goto LABEL_72;
  }

  v88 = 1;
  v85 = *v99;
  do
  {
    v86 = v10;
    for (i = 0; i != v86; ++i)
    {
      if (*v99 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v98 + 1) + 8 * i);
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      weightArray = [v12 weightArray];
      v13 = [weightArray countByEnumeratingWithState:&v94 objects:v107 count:16];
      if (!v13)
      {
        goto LABEL_50;
      }

      v14 = *v95;
      while (2)
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v95 != v14)
          {
            objc_enumerationMutation(weightArray);
          }

          v16 = *(*(&v94 + 1) + 8 * j);
          weightURL = [v16 weightURL];
          path = [weightURL path];

          v19 = [path rangeOfString:@".asset"];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            lastPathComponent = [path lastPathComponent];
            v21 = gLogger;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = NSStringFromSelector(a2);
              *buf = 138412802;
              v104 = v22;
              v105 = 2112;
              *v106 = path;
              *&v106[8] = 2112;
              *&v106[10] = lastPathComponent;
              _os_log_debug_impl(&dword_25DF54000, v21, OS_LOG_TYPE_DEBUG, "%@: could not find .asset directory in path=%@, searching for fileName=%@ only", buf, 0x20u);
            }
          }

          else
          {
            v23 = [path rangeOfString:@"/" options:4 range:{0, v19}];
            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v33 = NSStringFromSelector(a2);
                *buf = 138412546;
                v104 = v33;
                v105 = 2112;
                *v106 = path;
                _os_log_error_impl(&dword_25DF54000, v26, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not get complete name of .asset directory in path=%@!", buf, 0x16u);
              }

              lastPathComponent = &stru_286FC4C68;
              goto LABEL_49;
            }

            v24 = [path substringFromIndex:v23 + 1];
            lastPathComponent = v24;
            if (!v24 || ![(__CFString *)v24 length])
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v32 = NSStringFromSelector(a2);
                *buf = 138412546;
                v104 = v32;
                v105 = 2112;
                *v106 = path;
                _os_log_error_impl(&dword_25DF54000, v26, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, get overWriteFileName from path=%@!", buf, 0x16u);
              }

              goto LABEL_49;
            }

            v21 = gLogger;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v30 = NSStringFromSelector(a2);
              *buf = 138412802;
              v104 = v30;
              v105 = 2112;
              *v106 = path;
              *&v106[8] = 2112;
              *&v106[10] = lastPathComponent;
              _os_log_debug_impl(&dword_25DF54000, v21, OS_LOG_TYPE_DEBUG, "%@: .asset directory found in path=%@, searching for fileName=%@", buf, 0x20u);
            }
          }

          v25 = [v91 stringByAppendingPathComponent:lastPathComponent];
          v26 = v25;
          if (!v25 || ![v25 length])
          {
            v31 = gLogger;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient loadModelNewInstance:];
            }

LABEL_49:
            v88 = 0;
            goto LABEL_50;
          }

          v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26];
          if (v27)
          {
            [v16 updateWeightURL:v27];
            v28 = gLogger;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = NSStringFromSelector(a2);
              *buf = 138412802;
              v104 = v29;
              v105 = 2112;
              *v106 = path;
              *&v106[8] = 2112;
              *&v106[10] = v26;
              _os_log_debug_impl(&dword_25DF54000, v28, OS_LOG_TYPE_DEBUG, "%@: Update _ANEWeight URL from %@ to %@", buf, 0x20u);
            }
          }

          else
          {
            v28 = gLogger;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient loadModelNewInstance:];
            }

            v88 = 0;
          }

          if (!v27)
          {
            goto LABEL_50;
          }
        }

        v13 = [weightArray countByEnumeratingWithState:&v94 objects:v107 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_50:
    }

    v10 = [obj countByEnumeratingWithState:&v98 objects:v108 count:16];
  }

  while (v10);

  if (v88)
  {
LABEL_72:
    v37 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"ioSIDCacheURLIdentifierData", v75];
    v38 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"cacheURLIdentifierDataSize"];
    v39 = [(_ANEVirtualPlatformClient *)self getIOSurface:v37];
    v34 = [_ANEVirtualPlatformClient getDataFromIOSurface:v39 withSize:v38];
    if (!v34)
    {
      v41 = gLogger;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient loadModelNewInstance:];
      }

      v35 = 0;
      goto LABEL_119;
    }

    CFRelease(v39);
    v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v34 encoding:4];
    v41 = v40;
    if (!v40 || ![v40 length])
    {
      v55 = gLogger;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient loadModelNewInstance:];
      }

      v35 = 0;
      goto LABEL_118;
    }

    v42 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"ioSIDOptions"];
    v43 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"optionsLength"];
    v90 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v42 classType:objc_opt_class() length:v43];
    if (!v90)
    {
      v47 = gLogger;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v71 = NSStringFromSelector(a2);
        *buf = 138412802;
        v104 = v71;
        v105 = 1024;
        *v106 = v42;
        *&v106[4] = 2048;
        *&v106[6] = v43;
        _os_log_error_impl(&dword_25DF54000, v47, OS_LOG_TYPE_ERROR, "%@: ERROR failed to extract options dictionary from IOSurface with optionsIOSID=%u optionsDataSize=%llu!", buf, 0x1Cu);
      }

      v35 = 0;
      goto LABEL_117;
    }

    v44 = [MEMORY[0x277CEE980] modelWithCacheURLIdentifier:v41 UUID:v79];
    v45 = gLogger;
    v46 = v45;
    v47 = v44;
    if (!v44)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v72 = NSStringFromSelector(a2);
        *buf = 138412802;
        v104 = v72;
        v105 = 2112;
        *v106 = v41;
        *&v106[8] = 2112;
        *&v106[10] = v79;
        _os_log_error_impl(&dword_25DF54000, v46, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create _ANEModel object with cacheURLIdentifier=%@ uuid=%@!", buf, 0x20u);
      }

      v35 = 0;
      goto LABEL_116;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    aneClient = self->_aneClient;
    v93 = 0;
    v49 = [(_ANEClient *)aneClient loadModelNewInstance:v44 options:v90 modelInstParams:v75 qos:v78 error:&v93];
    v46 = v93;
    v35 = v49;
    v50 = gLogger;
    v51 = v50;
    if ((v49 & 1) == 0)
    {
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient loadModelNewInstance:];
      }

      goto LABEL_115;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v73 = NSStringFromSelector(a2);
      modelAttributes = [v47 modelAttributes];
      *buf = 138412802;
      v104 = v73;
      v105 = 2048;
      *v106 = v35;
      *&v106[8] = 2112;
      *&v106[10] = modelAttributes;
      _os_log_debug_impl(&dword_25DF54000, v51, OS_LOG_TYPE_DEBUG, "%@: clientCall success=%lld modelAttributes=%@!", buf, 0x20u);
    }

    v52 = gLogger;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstance:];
    }

    aneModelDict = self->_aneModelDict;
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[NSObject programHandle](v47, "programHandle")}];
    v51 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v54];

    if (v51)
    {
      [v51 addCachedReference];
      [v51 updateTmpWeightFilesPath:v91];
    }

    else
    {
      v56 = [_ANEVirtualModel objectWithModel:v47 tmpModelFilesPath:0 tmpWeightFilesPath:v91];
      v57 = self->_aneModelDict;
      v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[NSObject programHandle](v47, "programHandle")}];
      [(NSMutableDictionary *)v57 setObject:v56 forKeyedSubscript:v58];

      v51 = v56;
    }

    v59 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"ioSIDModelAttributes"];
    if (v59)
    {
      v60 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:instance key:@"modelAttributeLength"];
      if (v60)
      {
        v92 = 0;
        modelAttributes2 = [v47 modelAttributes];
        v62 = [(_ANEVirtualPlatformClient *)self copyDictionaryUsingJSONSerialization:modelAttributes2 toIOSurfaceWithID:v59 withMaxSize:v60 outWrittentDataSize:&v92];

        if (v62)
        {
          v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v92];
          [(__CFDictionary *)v80 setValue:v63 forKey:@"modelAttributeLength"];

          v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[NSObject programHandle](v47, "programHandle")}];
          [(__CFDictionary *)v80 setValue:v64 forKey:@"programHandle"];

          v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[NSObject intermediateBufferHandle](v47, "intermediateBufferHandle")}];
          [(__CFDictionary *)v80 setValue:v65 forKey:@"intermediateBufferHandle"];

          v66 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSObject queueDepth](v47, "queueDepth")}];
          [(__CFDictionary *)v80 setValue:v66 forKey:@"queueDepth"];

          v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSObject state](v47, "state")}];
          [(__CFDictionary *)v80 setValue:v67 forKey:@"state"];
        }

        else
        {
          v67 = gLogger;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient loadModelNewInstance:];
          }
        }

        goto LABEL_115;
      }

      v68 = gLogger;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient loadModelNewInstance:];
      }
    }

    else
    {
      v68 = gLogger;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient loadModelNewInstance:];
      }
    }

LABEL_115:
LABEL_116:

LABEL_117:
    v55 = v90;
LABEL_118:

LABEL_119:
    goto LABEL_120;
  }

  v34 = gLogger;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient loadModelNewInstance:];
  }

  v35 = 0;
LABEL_120:

LABEL_121:
LABEL_122:

LABEL_123:
LABEL_124:

  v69 = [MEMORY[0x277CCABB0] numberWithLongLong:v35];
  [(__CFDictionary *)v80 setValue:v69 forKey:@"success"];

  result = v80;
LABEL_125:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

- (__CFDictionary)loadModelNewInstanceLegacy:(__CFDictionary *)legacy
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:legacy key:@"qos"];
  v6 = [(_ANEVirtualPlatformClient *)self getOptionsFromDictionary:legacy];
  v7 = [(_ANEVirtualPlatformClient *)self updateOptionsDictionary:v6 directoryPath:0];

  v8 = [v7 objectForKey:*MEMORY[0x277CEE9B8]];
  v35 = v7;

  Value = CFDictionaryGetValue(legacy, @"modelCacheURLIdentifier");
  v10 = Value;
  if (Value && v8)
  {
    v11 = Value;
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient loadModelNewInstanceLegacy:];
    }

    v13 = [MEMORY[0x277CEE980] modelWithCacheURLIdentifier:v11];
    if (v13)
    {
      [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilationDictionary:legacy aneModelKey:0 options:v35 modelDirectory:0];
      [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v13 dictionary:legacy];
      getUUID = [v13 getUUID];
      v15 = [(_ANEVirtualPlatformClient *)self createANEModelInstanceParameters:legacy modelUUID:getUUID];

      aneClient = self->_aneClient;
      v36 = 0;
      LODWORD(v17) = [(_ANEClient *)aneClient loadModelNewInstance:v13 options:v35 modelInstParams:v15 qos:v5 error:&v36];
      v18 = v36;
      if (v17)
      {
        aneModelDict = self->_aneModelDict;
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "programHandle")}];
        v21 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v20];

        if (v21)
        {
          [v21 addCachedReference];
        }

        else
        {
          v23 = [_ANEVirtualModel objectWithModel:v13];
          v33 = self->_aneModelDict;
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "programHandle")}];
          [(NSMutableDictionary *)v33 setObject:v23 forKeyedSubscript:v24];

          v21 = v23;
        }
      }

      else
      {
        v21 = 0;
      }

      v17 = v17;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v32;
      v39 = 1024;
      v40 = v8 != 0;
      v41 = 2048;
      v42 = v10;
      _os_log_debug_impl(&dword_25DF54000, v22, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient NOT FOUND BaseModelCacheURLIdentifierOptionSet=%u %p", buf, 0x1Cu);
    }

    v11 = 0;
  }

  v15 = gLogger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient loadModelNewInstanceLegacy:];
  }

  v13 = 0;
  v17 = 0;
  v18 = 0;
LABEL_18:

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (CFDictionaryContainsKey(legacy, @"ioSIDErrorValue"))
  {
    v26 = CFDictionaryGetValue(legacy, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", v26);
  }

  if (CFDictionaryContainsKey(legacy, @"ioSIDModelParameters"))
  {
    v27 = CFDictionaryGetValue(legacy, @"ioSIDModelParameters");
    CFDictionarySetValue(Mutable, @"ioSIDModelParameters", v27);
  }

  if (CFDictionaryContainsKey(legacy, @"ioSIDModelAttributes"))
  {
    v28 = CFDictionaryGetValue(legacy, @"ioSIDModelAttributes");
    if (v28)
    {
      CFDictionarySetValue(Mutable, @"ioSIDModelAttributes", v28);
    }
  }

  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v17]);
  v29 = gLogger;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient loadModelNewInstanceLegacy:];
  }

  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v18];
  [(_ANEVirtualPlatformClient *)self updateVirtualANEModelDictionary:Mutable model:v13 cacheURLIdentifierToGuest:1];

  v30 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (id)updateOptions:(id)options virtualANEModel:(VirtANEModel *)model
{
  optionsCopy = options;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:optionsCopy];
  if (model->var6)
  {
    if (model->var7)
    {
      if (model->var8)
      {
        v7 = MEMORY[0x277CEE9D0];
        v8 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CEE9D0]];
        v9 = [v8 isEqualToString:*MEMORY[0x277CEE9C8]];

        if (v9)
        {
          [v6 removeObjectForKey:*v7];
        }
      }
    }
  }

  return v6;
}

- (id)updateOptionsDictionary:(id)dictionary directoryPath:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:dictionaryCopy];
  if (pathCopy)
  {
    v21 = v7;
    v22 = pathCopy;
    v23 = dictionaryCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager enumeratorAtPath:pathCopy];
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      nextObject = [v8 nextObject];

      if (!nextObject)
      {
        break;
      }

      v14 = [nextObject componentsSeparatedByString:@"."];
      lastObject = [v14 lastObject];
      v12 |= [lastObject isEqual:@"net"];
      v10 |= [lastObject isEqual:@"weights"];
      v9 |= [lastObject isEqual:@"shape"];

      v11 = nextObject;
    }

    pathCopy = v22;
    dictionaryCopy = v23;
    v7 = v21;
    if (v12 & v9 & v10)
    {
      v16 = MEMORY[0x277CEE9D0];
      v17 = [v23 objectForKeyedSubscript:*MEMORY[0x277CEE9D0]];
      v18 = [v17 isEqualToString:*MEMORY[0x277CEE9C8]];

      if (v18)
      {
        [v21 removeObjectForKey:*v16];
      }
    }
  }

  return v7;
}

- (void)unLoadModel:(VirtANEModel *)model
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var5 classType:objc_opt_class() length:model->var9];
  if (v6)
  {
    aneModelDict = self->_aneModelDict;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var15];
    v9 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = gLogger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient unLoadModel:];
      }

      model->var1 = 0;
      v11 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:model aneModelKey:v6];
      v9 = [_ANEVirtualModel objectWithModel:v11];
    }

    v12 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var23 classType:objc_opt_class() length:model->var24];
    aneClient = self->_aneClient;
    model = [v9 model];
    var22 = model->var22;
    v20[0] = 0;
    LODWORD(aneClient) = [(_ANEClient *)aneClient unloadModel:model options:v12 qos:var22 error:v20];
    v16 = v20[0];
    model->var1 = aneClient;

    [(_ANEVirtualPlatformClient *)self updateErrorValue:model error:v16];
    if ([v9 removeCachedReference])
    {
      v17 = self->_aneModelDict;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var15];
      [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:v18];
    }
  }

  else
  {
    model->var1 = 0;
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient unLoadModel:];
    }

    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (__CFDictionary)unLoadModelDictionary:(__CFDictionary *)dictionary
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"programHandle"];
  if (!v6)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient unLoadModelDictionary:];
    }

    goto LABEL_33;
  }

  v7 = v6;
  aSelector = a2;
  aneModelDict = self->_aneModelDict;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  v10 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v9];

  if (!v10)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient unLoadModelDictionary:];
    }

LABEL_33:
    v10 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_34;
  }

  v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"optionsLength"];
  v12 = v11;
  if (!v11 || (v13 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDOptions"], !v13) || ([(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v13 classType:objc_opt_class() length:v12], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient unLoadModelDictionary:];
    }

    v14 = 0;
  }

  v16 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"qos"];
  aneClient = self->_aneClient;
  model = [v10 model];
  v61 = 0;
  v19 = [(_ANEClient *)aneClient unloadModel:model options:v14 qos:v16 error:&v61];
  v20 = v61;

  removeCachedReference = [v10 removeCachedReference];
  v22 = gLogger;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v49 = NSStringFromSelector(aSelector);
    model2 = [v10 model];
    programHandle = [model2 programHandle];
    *buf = 138412802;
    v63 = v49;
    v64 = 1024;
    *v65 = removeCachedReference;
    *&v65[4] = 2048;
    *&v65[6] = programHandle;
    _os_log_debug_impl(&dword_25DF54000, v22, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient removeCachedReference canBeRemoved %d for programHandle =%llx ", buf, 0x1Cu);
  }

  if ((removeCachedReference & v19) == 1)
  {
    tmpModelFilesPath = [v10 tmpModelFilesPath];
    if (tmpModelFilesPath)
    {
      tmpModelFilesPath2 = [v10 tmpModelFilesPath];
      v25 = [tmpModelFilesPath2 length] == 0;

      if (!v25)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        tmpModelFilesPath3 = [v10 tmpModelFilesPath];
        v28 = [defaultManager fileExistsAtPath:tmpModelFilesPath3];

        if (v28)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          tmpModelFilesPath4 = [v10 tmpModelFilesPath];
          v60 = 0;
          v30 = [defaultManager2 removeItemAtPath:tmpModelFilesPath4 error:&v60];
          v31 = v60;

          if ((v30 & 1) == 0)
          {
            v32 = gLogger;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v57 = NSStringFromSelector(aSelector);
              tmpModelFilesPath5 = [v10 tmpModelFilesPath];
              *buf = 138412802;
              v63 = v57;
              v64 = 2112;
              *v65 = tmpModelFilesPath5;
              *&v65[8] = 2112;
              *&v65[10] = v31;
              _os_log_error_impl(&dword_25DF54000, v32, OS_LOG_TYPE_ERROR, "%@: Could not remove file or directory at path=%@ with error=%@", buf, 0x20u);
            }
          }
        }
      }
    }

    tmpWeightFilesPath = [v10 tmpWeightFilesPath];
    if (tmpWeightFilesPath)
    {
      tmpWeightFilesPath2 = [v10 tmpWeightFilesPath];
      v35 = [tmpWeightFilesPath2 length] == 0;

      if (!v35)
      {
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        tmpWeightFilesPath3 = [v10 tmpWeightFilesPath];
        v38 = [defaultManager3 fileExistsAtPath:tmpWeightFilesPath3];

        if (v38)
        {
          defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
          tmpWeightFilesPath4 = [v10 tmpWeightFilesPath];
          v59 = 0;
          v41 = [defaultManager4 removeItemAtPath:tmpWeightFilesPath4 error:&v59];
          v55 = v59;

          if ((v41 & 1) == 0)
          {
            v42 = gLogger;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v52 = NSStringFromSelector(aSelector);
              tmpWeightFilesPath5 = [v10 tmpWeightFilesPath];
              *buf = 138412802;
              v63 = v52;
              v64 = 2112;
              *v65 = tmpWeightFilesPath5;
              *&v65[8] = 2112;
              *&v65[10] = v55;
              _os_log_error_impl(&dword_25DF54000, v42, OS_LOG_TYPE_ERROR, "%@: Could not remove file or directory at path=%@ with error=%@", buf, 0x20u);
            }
          }
        }
      }
    }

    v43 = self->_aneModelDict;
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    [(NSMutableDictionary *)v43 setObject:0 forKeyedSubscript:v44];
  }

LABEL_34:

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (CFDictionaryContainsKey(dictionary, @"ioSIDErrorValue"))
  {
    Value = CFDictionaryGetValue(dictionary, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", Value);
  }

  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v19]);
  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v20];

  v47 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)evaluateWithModel:(VirtANEModel *)model
{
  v18[6] = *MEMORY[0x277D85DE8];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient evaluateWithModel:];
  }

  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var5 classType:objc_opt_class() length:model->var9];
  if (v7)
  {
    aneModelDict = self->_aneModelDict;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var15];
    v10 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v9];

    v11 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var23 classType:objc_opt_class() length:model->var24];
    v12 = [(_ANEVirtualPlatformClient *)self requestWithVirtualANEModel:model];
    aneClient = self->_aneClient;
    model = [v10 model];
    var22 = model->var22;
    v18[0] = 0;
    LODWORD(aneClient) = [(_ANEClient *)aneClient evaluateWithModel:model options:v11 request:v12 qos:var22 error:v18];
    v16 = v18[0];
    model->var1 = aneClient;

    [(_ANEVirtualPlatformClient *)self updatePerformanceStats:model aneRequest:v12];
    [(_ANEVirtualPlatformClient *)self updateErrorValue:model error:v16];
  }

  else
  {
    model->var1 = 0;
    v16 = gLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient evaluateWithModel:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)evaluateWithModelDictionary:(__CFDictionary *)dictionary
{
  v59 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"programHandle"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  if (unsignedLongLongValue)
  {
    aneModelDict = self->_aneModelDict;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
    v10 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v9];

    if (!v10)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model not found"];
      v14 = [MEMORY[0x277CEE968] programInferenceOtherErrorForMethod:v13];
      [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:dictionaryCopy error:v14];
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
      CFDictionarySetValue(dictionaryCopy, @"success", v15);
      v16 = gLogger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
      }

      goto LABEL_38;
    }

    v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionaryCopy key:@"ioSIDOptions"];
    if (v11)
    {
      v12 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionaryCopy key:@"optionsLength"];
      if (v12)
      {
        v13 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v11 classType:objc_opt_class() length:v12];
        goto LABEL_15;
      }

      v17 = gLogger;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
      }
    }

    else
    {
      v17 = gLogger;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
      }
    }

    v13 = 0;
LABEL_15:
    v15 = [(_ANEVirtualPlatformClient *)self requestWithVirtualANEModelDictionary:dictionaryCopy];
    if (v15)
    {
      v18 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionaryCopy key:@"qos"];
      aneClient = self->_aneClient;
      model = [v10 model];
      v52 = 0;
      v50 = [(_ANEClient *)aneClient evaluateWithModel:model options:v13 request:v15 qos:v18 error:&v52];
      v14 = v52;

      if (v50)
      {
        [(_ANEVirtualPlatformClient *)self updatePerformanceStatsDictionary:dictionaryCopy aneRequest:v15];
      }

      else
      {
        v23 = gLogger;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v42 = NSStringFromSelector(a2);
          model2 = [v10 model];
          *buf = 138412802;
          v54 = v42;
          v55 = 2112;
          v56 = v14;
          v57 = 2112;
          v58 = model2;
          _os_log_error_impl(&dword_25DF54000, v23, OS_LOG_TYPE_ERROR, "%@: ERROR evaluateWithModel failed with error=%@ model=%@", buf, 0x20u);
        }

        v24 = gLogger;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
        }

        v25 = MEMORY[0x277CEE958];
        vm_debugDumpBootArg = [MEMORY[0x277CEE9A8] vm_debugDumpBootArg];
        LODWORD(v25) = [v25 isBoolBootArgSetTrue:vm_debugDumpBootArg];

        if (v25)
        {
          v27 = self->_anebaseDirectory;
          v49 = [(NSString *)v27 stringByAppendingPathComponent:@"dump"];

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v29 = [defaultManager fileExistsAtPath:v49];

          if ((v29 & 1) == 0)
          {
            v30 = gLogger;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
            }

            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v51 = 0;
            [defaultManager2 createDirectoryAtPath:v49 withIntermediateDirectories:1 attributes:0 error:&v51];
            v32 = v51;

            if (v32)
            {
              v33 = gLogger;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v44 = NSStringFromSelector(a2);
                *buf = 138412802;
                v54 = v44;
                v55 = 2112;
                v56 = v49;
                v57 = 2112;
                v58 = v32;
                _os_log_error_impl(&dword_25DF54000, v33, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create directory at path=%@ with error=%@", buf, 0x20u);
              }
            }
          }

          v47 = objc_alloc_init(MEMORY[0x277CCA968]);
          [v47 setDateFormat:@"yyyyMMdd_HHmmss"];
          date = [MEMORY[0x277CBEAA8] date];
          v48 = [v47 stringFromDate:date];

          v35 = [v49 stringByAppendingPathComponent:@"end_model_dump.txt"];
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@.txt", v35, v48];

          model3 = [v10 model];
          v45 = [model3 description];

          [v45 writeToFile:v46 atomically:1 encoding:4 error:0];
          v37 = [v49 stringByAppendingPathComponent:@"end_request_dump.txt"];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@.txt", v37, v48];

          v39 = [v15 description];
          [v39 writeToFile:v38 atomically:1 encoding:4 error:0];

          v40 = gLogger;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
          }
        }
      }

      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v50];
      CFDictionarySetValue(dictionaryCopy, @"success", v16);
      [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:dictionaryCopy error:v14];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to generate aneRequest"];
      v14 = [MEMORY[0x277CEE968] programInferenceOtherErrorForMethod:v16];
      [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:dictionaryCopy error:v14];
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
      CFDictionarySetValue(dictionaryCopy, @"success", v21);
      v22 = gLogger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ProgramHandle not found"];
  v14 = [MEMORY[0x277CEE968] programInferenceOtherErrorForMethod:v10];
  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:dictionaryCopy error:v14];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  CFDictionarySetValue(dictionaryCopy, @"success", v13);
  v15 = gLogger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
  }

LABEL_39:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)mapIOSurfacesWithModel:(VirtANEModel *)model
{
  v15[4] = *MEMORY[0x277D85DE8];
  aneModelDict = self->_aneModelDict;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var15];
  v8 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [(_ANEVirtualPlatformClient *)self requestWithVirtualANEModel:model];
    var18 = model->var18;
    aneClient = self->_aneClient;
    model = [v8 model];
    v15[0] = 0;
    LODWORD(aneClient) = [(_ANEClient *)aneClient mapIOSurfacesWithModel:model request:v9 cacheInference:var18 != 0 error:v15];
    v13 = v15[0];
    model->var1 = aneClient;

    [(_ANEVirtualPlatformClient *)self updatePerformanceStats:model aneRequest:v9];
    [(_ANEVirtualPlatformClient *)self updateErrorValue:model error:v13];
  }

  else
  {
    model->var1 = 0;
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient mapIOSurfacesWithModel:];
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)compiledModelExistsFor:(VirtANEModel *)for
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:for->var5 classType:objc_opt_class() length:for->var9];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualPlatformClient compiledModelExistsFor:];
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else if (!v5)
  {
    goto LABEL_5;
  }

  aneModelDict = [(_ANEVirtualPlatformClient *)self aneModelDict];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:for->var15];
  v8 = [aneModelDict objectForKeyedSubscript:v7];

  if (v8)
  {
LABEL_4:
    model = [v8 model];
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:model virtualANEModel:for];

    aneClient = self->_aneClient;
    model2 = [v8 model];
    for->var1 = [(_ANEClient *)aneClient compiledModelExistsFor:model2];

    model3 = [v8 model];
    [(_ANEVirtualPlatformClient *)self updateVirtualANEModel:for model:model3];

    goto LABEL_5;
  }

  v13 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:for aneModelKey:v5];
  if (v13)
  {
    v8 = [_ANEVirtualModel objectWithModel:v13];
    aneModelDict2 = [(_ANEVirtualPlatformClient *)self aneModelDict];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:for->var15];
    [aneModelDict2 setObject:v8 forKeyedSubscript:v15];

    if (v8)
    {
      goto LABEL_4;
    }

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualPlatformClient compiledModelExistsFor:];
    }
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualPlatformClient compiledModelExistsFor:];
  }

LABEL_5:
}

- (__CFDictionary)compiledModelExistsForDictionary:(__CFDictionary *)dictionary
{
  v5 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:?];
  v6 = [(_ANEVirtualPlatformClient *)self constructANEModel:dictionary modelDirectory:v5];
  getCacheURLIdentifier = [v6 getCacheURLIdentifier];

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v6)
  {
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v6 dictionary:dictionary];
    v9 = [(_ANEClient *)self->_aneClient compiledModelExistsFor:v6];
    if (CFDictionaryContainsKey(dictionary, @"ioSIDModelParameters"))
    {
      Value = CFDictionaryGetValue(dictionary, @"ioSIDModelParameters");
      CFDictionarySetValue(Mutable, @"ioSIDModelParameters", Value);
    }

    if (CFDictionaryContainsKey(dictionary, @"ioSIDModelAttributes"))
    {
      v11 = CFDictionaryGetValue(dictionary, @"ioSIDModelAttributes");
      if (v11)
      {
        CFDictionarySetValue(Mutable, @"ioSIDModelAttributes", v11);
      }
    }

    CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v9]);
    [(_ANEVirtualPlatformClient *)self updateVirtualANEModelDictionary:Mutable model:v6 cacheURLIdentifierToGuest:getCacheURLIdentifier == 0];
  }

  else
  {
    CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:0]);
  }

  return Mutable;
}

- (id)removeAllModelFiles:(id)files
{
  filesCopy = files;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:filesCopy])
  {
    v7 = 0;
    [defaultManager removeItemAtPath:filesCopy error:&v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)purgeCompiledModel:(VirtANEModel *)model
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var5 classType:objc_opt_class() length:model->var9];
  v6 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:model aneModelKey:v5];
  if (v6)
  {
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v6 virtualANEModel:model];
    [(_ANEClient *)self->_aneClient purgeCompiledModel:v6];
    [(_ANEVirtualPlatformClient *)self doRemoveModelFile:model];
    aneModelDict = self->_aneModelDict;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var15];
    [(NSMutableDictionary *)aneModelDict setObject:0 forKeyedSubscript:v8];

    model->var1 = 1;
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient purgeCompiledModel:];
  }
}

- (__CFDictionary)purgeCompiledModelDictionary:(__CFDictionary *)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"programHandle"];
  if (v6 && (aneModelDict = self->_aneModelDict, [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](aneModelDict, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = 0;
  }

  else
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient purgeCompiledModelDictionary:];
    }

    v12 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:dictionary];
    v10 = [(_ANEVirtualPlatformClient *)self constructANEModel:dictionary modelDirectory:v12];
    if (v10)
    {
      [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v10 dictionary:dictionary];
    }

    else
    {
      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient purgeCompiledModelDictionary:];
      }
    }

    if (v12)
    {
      v14 = [(_ANEVirtualPlatformClient *)self removeAllModelFiles:v12];
      if (v14)
      {
        v15 = gLogger;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient purgeCompiledModelDictionary:];
        }
      }
    }

    if (!v10)
    {
      v16 = 0;
      v10 = 0;
      v9 = 0;
      goto LABEL_21;
    }

    v9 = 0;
  }

  [(_ANEClient *)self->_aneClient purgeCompiledModel:v10];
  v16 = 1;
LABEL_21:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v16]);

  v18 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)compiledModelExistsMatchingHash:(VirtANEModel *)hash
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:hash->var44 classType:objc_opt_class() length:hash->var45];
  hash->var1 = [(_ANEClient *)self->_aneClient compiledModelExistsMatchingHash:v5];
  v6 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    var45 = hash->var45;
    var1 = hash->var1;
    v10 = 136315906;
    v11 = "[_ANEVirtualPlatformClient compiledModelExistsMatchingHash:]";
    v12 = 2048;
    v13 = var45;
    v14 = 2112;
    v15 = v5;
    v16 = 2048;
    v17 = var1;
    _os_log_debug_impl(&dword_25DF54000, v6, OS_LOG_TYPE_DEBUG, "%s: length=%llu : HASH=%@ : success=%lld", &v10, 0x2Au);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (__CFDictionary)compiledModelExistsMatchingHashDictionary:(__CFDictionary *)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDHashString"];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"hashStringLength"];
  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v5 classType:objc_opt_class() length:v6];
  v8 = [(_ANEClient *)self->_aneClient compiledModelExistsMatchingHash:v7];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v8]);
  v10 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315906;
    v14 = "[_ANEVirtualPlatformClient compiledModelExistsMatchingHashDictionary:]";
    v15 = 1024;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_debug_impl(&dword_25DF54000, v10, OS_LOG_TYPE_DEBUG, "%s: length=%u : HASH=%@ : success=%lld", &v13, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)purgeCompiledModelMatchingHash:(VirtANEModel *)hash
{
  v4 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:hash->var44 classType:objc_opt_class() length:hash->var45];
  [(_ANEClient *)self->_aneClient purgeCompiledModelMatchingHash:?];
}

- (__CFDictionary)purgeCompiledModelMatchingHashDictionary:(__CFDictionary *)dictionary
{
  v4 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:@"ioSIDHashString" key:?], objc_opt_class(), [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"hashStringLength"]];
  [(_ANEClient *)self->_aneClient purgeCompiledModelMatchingHash:v4];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:1]);

  return Mutable;
}

- (void)validateNetworkCreate:(__CFDictionary *)create
{
  v135 = *MEMORY[0x277D85DE8];
  v4 = gLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    [_ANEVirtualPlatformClient validateNetworkCreate:v5];
  }

  valuePtr = 1;
  [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:@"apiVersion"];
  if ([(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion]<= 0x20400)
  {
    v110 = 0;
  }

  else
  {
    v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:@"ioSIDMilTextData"];
    v7 = v6;
    if (!v6)
    {
      v12 = gLogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient validateNetworkCreate:];
      }

      goto LABEL_61;
    }

    v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:@"milTextDataLength"];
    if (!v8)
    {
      v12 = gLogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient validateNetworkCreate:];
      }

      goto LABEL_61;
    }

    v9 = [(_ANEVirtualPlatformClient *)self getIOSurface:v7];
    v10 = v9;
    if (!v9)
    {
      v12 = gLogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient validateNetworkCreate:];
      }

      goto LABEL_61;
    }

    IOSurfaceLock(v9, 0, 0);
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v10) length:v8];
    IOSurfaceUnlock(v10, 0, 0);
    CFRelease(v10);
    v110 = v11;
    if (!v11)
    {
      v12 = gLogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient validateNetworkCreate:];
      }

LABEL_61:

      v109 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
      CFDictionarySetValue(create, @"success", v109);
      v110 = 0;
      v111 = 0;
      goto LABEL_140;
    }
  }

  v13 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:@"numModelFiles"];
  if (!v13)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v15];
    }

    valuePtr = 0;
  }

  Value = CFDictionaryGetValue(create, @"uuid");
  if (!Value)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v18];
    }

    valuePtr = 0;
  }

  if (!CFDictionaryGetValue(create, @"function"))
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v20];
    }

    valuePtr = 0;
  }

  v21 = CFDictionaryGetValue(create, @"scratchPadPath");
  if (!v21)
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v23];
    }

    valuePtr = 0;
  }

  v24 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:@"ioSIDValidationResultOutput"];
  if (!v24)
  {
    v34 = gLogger;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreate:];
    }

    valuePtr = 0;
    goto LABEL_42;
  }

  if (!valuePtr)
  {
LABEL_42:
    CFDictionaryRemoveAllValues(create);
    v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(create, @"success", v35);
    CFRelease(v35);
    v111 = 0;
    goto LABEL_141;
  }

  v98 = v24;
  v109 = Value;
  v101 = v21;
  v105 = [v101 componentsSeparatedByString:@"/"];
  v102 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF ENDSWITH %@", @".bundle"];
  v107 = [v105 filteredArrayUsingPredicate:?];
  [v105 removeObjectsInArray:v107];
  v25 = [v105 componentsJoinedByString:@"/"];
  if ([v25 hasPrefix:@"/"])
  {
    v26 = [v25 substringFromIndex:1];

    v25 = v26;
  }

  v103 = v25;
  v112 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/", self->_anebaseDirectory, v109, v25];
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  firstObject = [v107 firstObject];
  v108 = [v27 initWithFormat:@"%@%@", v112, firstObject];

  v106 = [v107 componentsJoinedByString:@"/"];
  v106 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v112, v106];
  v29 = gLogger;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v93 = NSStringFromSelector(a2);
    *buf = 138413314;
    v128 = v93;
    v129 = 2112;
    v130 = v112;
    v131 = 2112;
    v132 = v106;
    v133 = 2112;
    *v134 = v103;
    *&v134[8] = 2112;
    *&v134[10] = v108;
    _os_log_debug_impl(&dword_25DF54000, v29, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient validateNetworkCreate directoryPath=%@ constructedScratchPadPath=%@ scratchPadBaseDirectory=%@ bundleDirectoryPath=%@", buf, 0x34u);
  }

  v122 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v31 = [defaultManager fileExistsAtPath:v112 isDirectory:&v122];

  v32 = gLogger;
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
  if (v31)
  {
    if (v33)
    {
      v94 = NSStringFromSelector(a2);
      *buf = 138412802;
      v128 = v94;
      v129 = 2112;
      v130 = v112;
      v131 = 1024;
      LODWORD(v132) = v122;
      _os_log_debug_impl(&dword_25DF54000, v32, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory already exists %@ isDirectory %d", buf, 0x1Cu);
    }

    v111 = 0;
LABEL_38:

    goto LABEL_52;
  }

  if (v33)
  {
    v95 = NSStringFromSelector(a2);
    *buf = 138412802;
    v128 = v95;
    v129 = 2112;
    v130 = v112;
    v131 = 1024;
    LODWORD(v132) = v122;
    _os_log_debug_impl(&dword_25DF54000, v32, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory Does not exists %@ isDirectory %d", buf, 0x1Cu);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v121 = 0;
  v37 = [defaultManager2 createDirectoryAtPath:v112 withIntermediateDirectories:1 attributes:0 error:&v121];
  v111 = v121;
  valuePtr = v37;

  if (!valuePtr)
  {
    v32 = gLogger;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v46];
    }

    goto LABEL_38;
  }

LABEL_52:
  v122 = 0;
  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = [defaultManager3 fileExistsAtPath:v108 isDirectory:&v122];

  v40 = gLogger;
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
  if (v39)
  {
    if (v41)
    {
      v42 = NSStringFromSelector(a2);
      *buf = 138412802;
      v128 = v42;
      v129 = 2112;
      v130 = v108;
      v131 = 1024;
      LODWORD(v132) = v122;
      _os_log_debug_impl(&dword_25DF54000, v40, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory already exists %@ isDirectory %d", buf, 0x1Cu);
    }

LABEL_67:

    goto LABEL_68;
  }

  if (v41)
  {
    v96 = NSStringFromSelector(a2);
    *buf = 138412802;
    v128 = v96;
    v129 = 2112;
    v130 = v108;
    v131 = 1024;
    LODWORD(v132) = v122;
    _os_log_debug_impl(&dword_25DF54000, v40, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory Does not exists %@ isDirectory %d", buf, 0x1Cu);
  }

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  v120 = v111;
  v44 = [defaultManager4 createDirectoryAtPath:v108 withIntermediateDirectories:1 attributes:0 error:&v120];
  v45 = v120;

  valuePtr = v44;
  if (!valuePtr)
  {
    v40 = gLogger;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v47];
    }

    v111 = v45;
    goto LABEL_67;
  }

  v111 = v45;
LABEL_68:
  if (!v13)
  {
    goto LABEL_88;
  }

  v48 = 0;
  while (1)
  {
    v49 = CFStringCreateWithFormat(0, 0, @"fileName%u", v48);
    v50 = CFDictionaryGetValue(create, v49);
    CFRelease(v49);
    if (!CFStringGetLength(v50))
    {
      v56 = gLogger;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient validateNetworkCreate:];
      }

      goto LABEL_79;
    }

    v51 = CFStringCreateWithFormat(0, 0, @"fileLength%u", v48);
    v52 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:v51];
    CFRelease(v51);
    if (!v52)
    {
      v56 = gLogger;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(a2);
        *buf = 138412546;
        v128 = v57;
        v129 = 2112;
        v130 = v50;
        _os_log_error_impl(&dword_25DF54000, v56, OS_LOG_TYPE_ERROR, "%@: ANEVirtualPlatformClient skipping zero-length file %@", buf, 0x16u);
      }

LABEL_79:

      goto LABEL_80;
    }

    v53 = CFStringCreateWithFormat(0, 0, @"fileIOSID%u", v48);
    v54 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:create key:v53];
    CFRelease(v53);
    if (!v54)
    {
      break;
    }

    v55 = [(_ANEVirtualPlatformClient *)self createModelFile:v50 path:v112 ioSID:v54 length:v52];
    valuePtr = v55;
    if (!v55)
    {
      v59 = gLogger;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v97 = NSStringFromSelector(a2);
        *buf = 138413314;
        v128 = v97;
        v129 = 2112;
        v130 = v112;
        v131 = 2112;
        v132 = v50;
        v133 = 1024;
        *v134 = v54;
        *&v134[4] = 2048;
        *&v134[6] = v52;
        _os_log_error_impl(&dword_25DF54000, v59, OS_LOG_TYPE_ERROR, "%@: ANEVirtualPlatformClient failed to create file on host directoryPath:%@ fileName:%@ fileIOSID:%u fileLength=%llu", buf, 0x30u);
      }

      goto LABEL_88;
    }

LABEL_80:
    v48 = (v48 + 1);
    if (v13 == v48)
    {
      goto LABEL_88;
    }
  }

  v58 = gLogger;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient validateNetworkCreate:];
  }

  valuePtr = 0;
LABEL_88:
  if ([(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion]>= 0x20401)
  {
    if (valuePtr)
    {
      goto LABEL_113;
    }

    v66 = 0;
    goto LABEL_137;
  }

  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  v119 = 0;
  v99 = [defaultManager5 contentsOfDirectoryAtPath:v112 error:&v119];
  v100 = v119;

  if (v100 || !v99)
  {
    v62 = gLogger;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v63];
    }

    valuePtr = 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v64 = v99;
  v65 = [v64 countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (!v65)
  {

    goto LABEL_108;
  }

  v66 = 0;
  v67 = *v116;
  do
  {
    for (i = 0; i != v65; ++i)
    {
      if (*v116 != v67)
      {
        objc_enumerationMutation(v64);
      }

      v69 = *(*(&v115 + 1) + 8 * i);
      pathExtension = [v69 pathExtension];
      v71 = [pathExtension isEqualToString:@"mil"];

      if (v71)
      {
        v72 = v69;

        v66 = v72;
      }
    }

    v65 = [v64 countByEnumeratingWithState:&v115 objects:v126 count:16];
  }

  while (v65);

  if (!v66)
  {
LABEL_108:
    v73 = gLogger;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v74];
    }

    v66 = 0;
    valuePtr = 0;
  }

  if (!valuePtr)
  {
    goto LABEL_137;
  }

  if (!v66)
  {
LABEL_113:
    v66 = @"model.mil";
  }

  v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v112, v66];
  v76 = [_ANEVirtualPlatformClient prepareValidationResultForSerialization:ANEValidateNetworkCreateVMHost()];
  if (!v76)
  {
    v80 = gLogger;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreate:];
    }

    goto LABEL_131;
  }

  error = 0;
  v77 = *MEMORY[0x277CBECE8];
  v78 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v76, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  CFRelease(v76);
  if (!v78)
  {
    if (error)
    {
      v81 = CFErrorCopyDescription(error);
      if (v81)
      {
        v82 = CFErrorCopyUserInfo(error);
        v83 = gLogger;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          [_ANEVirtualPlatformClient validateNetworkCreate:];
        }

        CFRelease(v81);
      }

      CFRelease(error);
    }

    v80 = gLogger;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreate:];
    }

LABEL_131:

    valuePtr = 0;
    goto LABEL_136;
  }

  if (CFDataGetLength(v78) <= 0xA00000)
  {
    BytePtr = CFDataGetBytePtr(v78);
    [(_ANEVirtualPlatformClient *)self copyBytesToIOSurface:BytePtr dataLength:CFDataGetLength(v78) ioSID:v98];
    v125[0] = CFDataGetLength(v78);
    v85 = CFNumberCreate(v77, kCFNumberSInt64Type, v125);
    CFDictionarySetValue(create, @"validationResultSize", v85);
    CFRelease(v85);
  }

  else
  {
    v79 = gLogger;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreate:];
    }

    valuePtr = 0;
  }

  v86 = gLogger;
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    CFDataGetLength(v78);
    [_ANEVirtualPlatformClient validateNetworkCreate:];
  }

  CFRelease(v78);
LABEL_136:

LABEL_137:
  v87 = gLogger;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    v88 = NSStringFromSelector(a2);
    [_ANEVirtualPlatformClient validateNetworkCreate:v88];
  }

  CFDictionaryRemoveValue(create, @"success");
  v89 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(create, @"success", v89);
  CFRelease(v89);
  v90 = [(_ANEVirtualPlatformClient *)self removeAllModelFiles:v108];
  v91 = [(_ANEVirtualPlatformClient *)self removeAllModelFiles:v112];

LABEL_140:
LABEL_141:

  v92 = *MEMORY[0x277D85DE8];
}

- (void)echo:(VirtANEModel *)echo
{
  v5 = [(_ANEVirtualPlatformClient *)self getIOSurface:echo->var44];
  if (v5)
  {
    v6 = v5;
    p_var45 = &echo->var45;
    if (echo->var45 <= IOSurfaceGetAllocSize(v5))
    {
      IOSurfaceLock(v6, 0, 0);
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v6) length:*p_var45];
      IOSurfaceUnlock(v6, 0, 0);
      CFRelease(v6);
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      echo->var1 = [(_ANEClient *)self->_aneClient echo:v8];
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualPlatformClient echo:?];
    }
  }
}

- (__CFDictionary)echoDictionary:(__CFDictionary *)dictionary
{
  v5 = [(_ANEVirtualPlatformClient *)self getIOSurface:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDHashString"]];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v5)
  {
    v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"hashStringLength"];
    IOSurfaceLock(v5, 0, 0);
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v5) length:v7];
    IOSurfaceUnlock(v5, 0, 0);
    CFRelease(v5);
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v10 = [(_ANEClient *)self->_aneClient echo:v9];
    CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v10]);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:0]);
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualPlatformClient echoDictionary:];
    }
  }

  return Mutable;
}

- (__CFDictionary)getDeviceInfoDictionary:(__CFDictionary *)dictionary
{
  valuePtr = [MEMORY[0x277CEE958] isInternalBuild];
  numANEs = [MEMORY[0x277CEE958] numANEs];
  numANECores = [MEMORY[0x277CEE958] numANECores];
  aneArchitectureType = [MEMORY[0x277CEE958] aneArchitectureType];
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &numANEs);
  v7 = CFNumberCreate(v4, kCFNumberSInt32Type, &numANECores);
  v8 = CFStringCreateWithCString(0, [aneArchitectureType UTF8String], 0x8000100u);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"ANEDevicePropertyIsInternalBuild", v5);
  CFDictionarySetValue(Mutable, @"ANEDevicePropertyNumANEs", v6);
  CFDictionarySetValue(Mutable, @"ANEDevicePropertyNumANECores", v7);
  CFDictionarySetValue(Mutable, @"ANEDevicePropertyTypeANEArchitectureTypeStr", v8);
  CFRelease(v5);
  CFRelease(v6);
  CFRelease(v7);
  CFRelease(v8);
  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:1]);
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEVirtualPlatformClient *)aneArchitectureType getDeviceInfoDictionary:?];
  }

  return Mutable;
}

- (__CFDictionary)sessionHintWithModel:(__CFDictionary *)model
{
  aSelector = a2;
  v34 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = objc_opt_new();
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"programHandle"];
  [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"intermediateBufferHandle"];
  [_ANEVirtualPlatformClient dictionaryGetInt8ForKey:model key:@"queueDepth"];
  v29 = CFDictionaryGetValue(model, @"sessionHint");
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"ioSIDOptions"];
  if (v6)
  {
    v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"optionsLength"];
    if (v7)
    {
      aSelector = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v6 classType:objc_opt_class() length:v7, aSelector];
      goto LABEL_9;
    }

    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
    }
  }

  else
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
    }
  }

  aSelector = 0;
LABEL_9:
  aneModelDict = self->_aneModelDict;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v5, aSelector}];
  v11 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v10];

  model = [v11 model];
  v13 = [MEMORY[0x277CEE950] controllerWithProgramHandle:v5];
  aneClient = self->_aneClient;
  v32 = 0;
  LODWORD(aneModelDict) = [(_ANEClient *)aneClient sessionHintWithModel:model hint:v29 options:aSelector report:v31 error:&v32];
  v15 = v32;
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:aneModelDict];
  [(__CFDictionary *)Mutable setValue:v16 forKey:@"success"];

  if (aneModelDict)
  {
    v17 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"reportDataLength"];
    v18 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"ioSIDReportData"];
    if (v31)
    {
      *buf = 0;
      if ([(_ANEVirtualPlatformClient *)self writeDictionaryToIOSurfaceID:v18 dict:v31 writtenDataLength:buf ioSurfaceMaxSize:v17])
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*buf];
        [(__CFDictionary *)Mutable setValue:v19 forKey:@"reportDataLength"];
      }
    }
  }

  else if (v15)
  {
    v20 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"ioSIDErrorValue"];
    v21 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:model key:@"errorLength"];
    if (v20)
    {
      [(_ANEVirtualPlatformClient *)self updateErrorValueForIOSID:v20 error:v15 dictToUpdate:Mutable maxIOSurfaceSize:v21];
    }

    else
    {
      v22 = gLogger;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromSelector(aSelectora);
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&dword_25DF54000, v22, OS_LOG_TYPE_INFO, "%@: kVirtANEIOSIDErrorValue not found, cannot update", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (__CFDictionary)validateNetworkCreateMLIR:(__CFDictionary *)r
{
  v17[4] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:r key:@"apiVersion"];
  v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:r key:@"ioSIDValidationParams"];
  if (!v7)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreateMLIR:];
    }

    goto LABEL_13;
  }

  v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:r key:@"validationParamsDataSize"];
  if (!v8)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreateMLIR:];
    }

    goto LABEL_14;
  }

  if (![(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v7 classType:objc_opt_class() length:v8])
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient validateNetworkCreateMLIR:];
    }

LABEL_13:

LABEL_14:
    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v9 = ANEValidateNetworkCreate();
  v10 = v9 != 0;
LABEL_15:
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  [(__CFDictionary *)Mutable setValue:v13 forKey:@"success"];

  if (v10)
  {
    v17[0] = 0;
    if ([(_ANEVirtualPlatformClient *)self writeDictionaryToIOSurfaceID:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:? key:?], v9, v17, [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:r key:@"validationResultSize"]])
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17[0]];
      [(__CFDictionary *)Mutable setValue:v14 forKey:@"validationResultSize"];
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (__CFDictionary)chunkedDataReceived:(__CFDictionary *)received
{
  v48 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:received key:@"chunkSequence"];
    v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:received key:@"genericDataSize"];
    if (v8)
    {
      v9 = v8;
      v10 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:received key:@"ioSIDGenericData"];
      if (v10)
      {
        v43 = 0;
        v40 = [(_ANEVirtualPlatformClient *)self generateExpectedModelFilePathFromDictionary:received error:&v43];
        v11 = v43;
        v12 = gLogger;
        stringByDeletingLastPathComponent = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient chunkedDataReceived:];
          }
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient chunkedDataReceived:];
          }

          stringByDeletingLastPathComponent = [v40 stringByDeletingLastPathComponent];
          if (!stringByDeletingLastPathComponent)
          {
            v23 = gLogger;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient chunkedDataReceived:];
            }

            goto LABEL_44;
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v17 = [defaultManager fileExistsAtPath:v40];

          if (v17)
          {
            v18 = gLogger;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient chunkedDataReceived:];
            }

            if (!v7)
            {
              v19 = gLogger;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                [_ANEVirtualPlatformClient chunkedDataReceived:];
              }

              defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
              v42 = 0;
              [defaultManager2 removeItemAtPath:v40 error:&v42];
              v21 = v42;

              if (v21)
              {
                v22 = gLogger;
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v39 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v45 = v39;
                  v46 = 2112;
                  *v47 = v40;
                  *&v47[8] = 2112;
                  *&v47[10] = v21;
                  _os_log_error_impl(&dword_25DF54000, v22, OS_LOG_TYPE_ERROR, "%@: ERROR failed to remove existing file with the same name at path=%@ with error=%@", buf, 0x20u);
                }

                goto LABEL_44;
              }
            }
          }

          else
          {
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v25 = [defaultManager3 fileExistsAtPath:stringByDeletingLastPathComponent];

            if ((v25 & 1) == 0)
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v37 = NSStringFromSelector(a2);
                *buf = 138412802;
                v45 = v37;
                v46 = 2112;
                *v47 = v40;
                *&v47[8] = 2112;
                *&v47[10] = stringByDeletingLastPathComponent;
                _os_log_debug_impl(&dword_25DF54000, v26, OS_LOG_TYPE_DEBUG, "%@: File NOT found at path=%@, creating directory at path=%@", buf, 0x20u);
              }

              defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
              v41 = 0;
              [defaultManager4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v41];
              v28 = v41;

              if (v28)
              {
                v29 = gLogger;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v38 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v45 = v38;
                  v46 = 2112;
                  *v47 = stringByDeletingLastPathComponent;
                  *&v47[8] = 2112;
                  *&v47[10] = v28;
                  _os_log_error_impl(&dword_25DF54000, v29, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create directory at path=%@ with error=%@", buf, 0x20u);
                }

                goto LABEL_44;
              }
            }
          }

          defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
          v31 = [defaultManager5 fileExistsAtPath:v40];

          LOBYTE(v31) = [(_ANEVirtualPlatformClient *)self createModelFileAtPath:v40 fromIOSID:v10 withDataLength:v9 shouldAppend:v31];
          v32 = gLogger;
          v33 = v32;
          if (v31)
          {
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v36 = NSStringFromSelector(a2);
              *buf = 138412802;
              v45 = v36;
              v46 = 1024;
              *v47 = v7;
              *&v47[4] = 2112;
              *&v47[6] = v40;
              _os_log_debug_impl(&dword_25DF54000, v33, OS_LOG_TYPE_DEBUG, "%@: Successfully appended data chunk with chunkSeq=%u at path=%@", buf, 0x1Cu);
            }

            v15 = 1;
            goto LABEL_45;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient chunkedDataReceived:];
          }
        }

LABEL_44:
        v15 = 0;
LABEL_45:

        goto LABEL_46;
      }

      v11 = gLogger;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient chunkedDataReceived:];
      }
    }

    else
    {
      v11 = gLogger;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient chunkedDataReceived:];
      }
    }

    v15 = 0;
LABEL_46:

    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];
    [(__CFDictionary *)Mutable setValue:v14 forKey:@"success"];
    goto LABEL_47;
  }

  v14 = gLogger;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient chunkedDataReceived:];
  }

LABEL_47:

  v34 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (BOOL)createModelFileAtPath:(id)path fromIOSID:(unsigned int)d withDataLength:(unint64_t)length shouldAppend:(BOOL)append
{
  v53 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }

    goto LABEL_47;
  }

  if (!d)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }

    goto LABEL_47;
  }

  if (!length)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }

    goto LABEL_47;
  }

  v12 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  v13 = v12;
  if (!v12)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v46 = v16;
      v47 = 2112;
      v48 = pathCopy;
      v49 = 1024;
      LODWORD(lengthCopy) = d;
      _os_log_error_impl(&dword_25DF54000, v14, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create model file at path=%@! ioSurface is nil for ioSID=%u", buf, 0x1Cu);
    }

    goto LABEL_47;
  }

  IOSurfaceLock(v12, 0, 0);
  if (IOSurfaceGetAllocSize(v13) < length)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v46 = v15;
      v47 = 2112;
      v48 = pathCopy;
      v49 = 2048;
      lengthCopy = length;
      v51 = 2048;
      AllocSize = IOSurfaceGetAllocSize(v13);
      _os_log_error_impl(&dword_25DF54000, v14, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create model file at path=%@! Passed in dataLength exceeds surface alloc size %llu > %zu", buf, 0x2Au);
    }

    goto LABEL_47;
  }

  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v13) length:length];
  IOSurfaceUnlock(v13, 0, 0);
  CFRelease(v13);
  if (!v14)
  {
    v27 = gLogger;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }

    goto LABEL_26;
  }

  if (!append)
  {
    v44 = 0;
    v28 = [v14 writeToFile:pathCopy options:1 error:&v44];
    v29 = v44;
    v30 = gLogger;
    v31 = v30;
    if ((v28 & 1) == 0)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(a2);
        *buf = 138412802;
        v46 = v37;
        v47 = 2112;
        v48 = pathCopy;
        v49 = 2112;
        lengthCopy = v29;
        _os_log_error_impl(&dword_25DF54000, v31, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create model file at path=%@ with error=%@", buf, 0x20u);
      }

      goto LABEL_47;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }

    goto LABEL_31;
  }

  v17 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:pathCopy];
  v18 = v17;
  if (!v17)
  {
    v27 = gLogger;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }

LABEL_26:

    goto LABEL_47;
  }

  v43 = 0;
  v19 = [v17 seekToEndReturningOffset:0 error:&v43];
  v20 = v43;
  if ((v19 & 1) == 0)
  {
    v33 = gLogger;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412802;
      v46 = v38;
      v47 = 2112;
      v48 = v20;
      v49 = 2112;
      lengthCopy = pathCopy;
      _os_log_error_impl(&dword_25DF54000, v33, OS_LOG_TYPE_ERROR, "%@: ERROR failed to seekToEnd of file with error=%@ at path=%@", buf, 0x20u);
    }

    goto LABEL_47;
  }

  v42 = 0;
  v21 = [v18 writeData:v14 error:&v42];
  v22 = v42;
  if ((v21 & 1) == 0)
  {
    v34 = gLogger;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      *buf = 138412802;
      v46 = v39;
      v47 = 2112;
      v48 = v22;
      v49 = 2112;
      lengthCopy = pathCopy;
      _os_log_error_impl(&dword_25DF54000, v34, OS_LOG_TYPE_ERROR, "%@: ERROR failed to writeData to file with error=%@ at path=%@", buf, 0x20u);
    }

    goto LABEL_47;
  }

  v41 = 0;
  v23 = [v18 closeAndReturnError:&v41];
  v24 = v41;
  v25 = gLogger;
  v26 = v25;
  if (v23)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:];
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v40 = NSStringFromSelector(a2);
    *buf = 138412802;
    v46 = v40;
    v47 = 2112;
    v48 = v24;
    v49 = 2112;
    lengthCopy = pathCopy;
    _os_log_error_impl(&dword_25DF54000, v26, OS_LOG_TYPE_ERROR, "%@: ERROR failed to close file with error=%@ at path=%@", buf, 0x20u);
  }

  if ((v23 & 1) == 0)
  {
LABEL_47:
    v32 = 0;
    goto LABEL_48;
  }

LABEL_31:
  v32 = 1;
LABEL_48:

  v35 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (id)getDataFromIOSurface:(__IOSurface *)surface withSize:(unint64_t)size
{
  v12 = *MEMORY[0x277D85DE8];
  if (!surface)
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualPlatformClient getDataFromIOSurface:withSize:];
    }

    goto LABEL_9;
  }

  if (!size)
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualPlatformClient getDataFromIOSurface:withSize:];
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  IOSurfaceLock(surface, 0, 0);
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(surface) length:size];
  IOSurfaceUnlock(surface, 0, 0);
  if (v7)
  {
    v7 = v7;
    v8 = v7;
  }

  else
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualPlatformClient getDataFromIOSurface:withSize:];
    }

    v8 = 0;
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getObjectFromIOSurfaceID:(unsigned int)d classType:(Class)type length:(unint64_t)AllocSize
{
  v7 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  if (v7)
  {
    v8 = v7;
    IOSurfaceLock(v7, 0, 0);
    if (!AllocSize)
    {
      AllocSize = IOSurfaceGetAllocSize(v8);
    }

    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v8) length:AllocSize];
    IOSurfaceUnlock(v8, 0, 0);
    if (v9)
    {
      v14 = 0;
      v10 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v9 error:&v14];
      v11 = v14;
      if (v11 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualPlatformClient getObjectFromIOSurfaceID:classType:length:];
      }

      v12 = [v10 decodeObjectOfClass:type forKey:*MEMORY[0x277CCA308]];
      CFRelease(v8);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualPlatformClient getObjectFromIOSurfaceID:classType:length:];
      }

      CFRelease(v8);
      v12 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualPlatformClient getObjectFromIOSurfaceID:classType:length:];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)copyDictionaryUsingJSONSerialization:(id)serialization toIOSurfaceWithID:(unsigned int)d withMaxSize:(unint64_t)size outWrittentDataSize:(unint64_t *)dataSize
{
  v34 = *MEMORY[0x277D85DE8];
  serializationCopy = serialization;
  if (serializationCopy)
  {
    if (d)
    {
      if (size)
      {
        v27 = 0;
        v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:serializationCopy options:1 error:&v27];
        v13 = v27;
        v14 = v13;
        if (!v12 || v13)
        {
          v15 = gLogger;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:];
          }
        }

        else
        {
          if ([v12 length] <= size)
          {
            v19 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
            v20 = v19;
            if (v19)
            {
              IOSurfaceLock(v19, 0, 0);
              BaseAddress = IOSurfaceGetBaseAddress(v20);
              if (BaseAddress)
              {
                v22 = v12;
                memcpy(BaseAddress, [v12 bytes], objc_msgSend(v12, "length"));
                CFRelease(v20);
                if (dataSize)
                {
                  *dataSize = [v12 length];
                }

                v16 = 1;
              }

              else
              {
                v24 = gLogger;
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  NSStringFromSelector(a2);
                  objc_claimAutoreleasedReturnValue();
                  [_ANEVirtualPlatformClient copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:];
                }

                IOSurfaceUnlock(v20, 0, 0);
                v16 = 0;
              }

              goto LABEL_21;
            }

            v23 = gLogger;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:];
            }

LABEL_20:
            v16 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v15 = gLogger;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(a2);
            v26 = [v12 length];
            *buf = 138412802;
            v29 = v25;
            v30 = 2048;
            v31 = v26;
            v32 = 2048;
            sizeCopy = size;
            _os_log_error_impl(&dword_25DF54000, v15, OS_LOG_TYPE_ERROR, "%@: ERROR : failed to copy data, dictionaryDataArchive.length %lu > ioSurfaceMaxSize=%llu!", buf, 0x20u);
          }
        }

        goto LABEL_20;
      }

      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:];
      }
    }

    else
    {
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:];
      }
    }
  }

  else
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:];
    }
  }

  v16 = 0;
LABEL_22:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)writeObjectToIOSurfaceID:(unsigned int)d obj:(id)obj writtenDataLength:(unint64_t *)length ioSurfaceMaxSize:(unint64_t)size
{
  v29 = *MEMORY[0x277D85DE8];
  objCopy = obj;
  v12 = objCopy;
  if (!d)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient writeDictionaryToIOSurfaceID:dict:writtenDataLength:ioSurfaceMaxSize:];
    }

    goto LABEL_19;
  }

  if (!objCopy)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient writeObjectToIOSurfaceID:obj:writtenDataLength:ioSurfaceMaxSize:];
    }

    goto LABEL_19;
  }

  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objCopy requiringSecureCoding:1 error:0];
  if (!v13)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient writeObjectToIOSurfaceID:obj:writtenDataLength:ioSurfaceMaxSize:];
    }

    goto LABEL_18;
  }

  v14 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  if (!v14)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient writeObjectToIOSurfaceID:obj:writtenDataLength:ioSurfaceMaxSize:];
    }

LABEL_18:

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v15 = [v13 length];
  if (v15 > size)
  {
    v16 = gLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = 138412802;
      v24 = v22;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      sizeCopy = size;
      _os_log_error_impl(&dword_25DF54000, v16, OS_LOG_TYPE_ERROR, "%@: ERROR : Failed to write data, ioSurface too small : dataSize=%llu ioSurfaceMaxSize=%llu", &v23, 0x20u);
    }

    goto LABEL_19;
  }

  IOSurfaceLock(v14, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v14);
  memcpy(BaseAddress, [v13 bytes], [v13 length]);
  IOSurfaceUnlock(v14, 0, 0);
  CFRelease(v14);
  if (length)
  {
    *length = [v13 length];
  }

  v18 = 1;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)printIOSurfaceDataInBytes:(unsigned int)bytes
{
  v21 = *MEMORY[0x277D85DE8];
  if (bytes)
  {
    v4 = [(_ANEVirtualPlatformClient *)self getIOSurface:bytes];
    if (v4)
    {
      v5 = v4;
      IOSurfaceLock(v4, 0, 0);
      AllocSize = IOSurfaceGetAllocSize(v5);
      v7 = gLogger;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient printIOSurfaceDataInBytes:];
      }

      BaseAddress = IOSurfaceGetBaseAddress(v5);
      if (AllocSize)
      {
        v9 = BaseAddress;
        for (i = 0; i != AllocSize; ++i)
        {
          v11 = gLogger;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = NSStringFromSelector(a2);
            v13 = v9[i];
            *buf = 138412802;
            v16 = v12;
            v17 = 2048;
            v18 = i;
            v19 = 1024;
            v20 = v13;
            _os_log_debug_impl(&dword_25DF54000, v11, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualPlatformClient byte[%llu]=0x%x\n", buf, 0x1Cu);
          }
        }
      }

      IOSurfaceUnlock(v5, 0, 0);
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualPlatformClient printIOSurfaceDataInBytes:];
    }
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient printIOSurfaceDataInBytes:];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)getArrayFromIOSurfaceID:(unsigned int)d localData:(unsigned int *)data localDataLength:(unint64_t)length
{
  v7 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  if (v7)
  {
    v8 = v7;
    IOSurfaceLock(v7, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v8);
    memcpy(data, BaseAddress, 4 * length);
    IOSurfaceUnlock(v8, 0, 0);

    CFRelease(v8);
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient getArrayFromIOSurfaceID:localData:localDataLength:];
  }
}

- (id)doCreateModelFile:(VirtANEModel *)file aneModelKey:(id)key
{
  v106 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!keyCopy)
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    v16 = 0;
    goto LABEL_131;
  }

  guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
  }

  v82 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:file->var52 classType:objc_opt_class() length:file->var53];
  v85 = [MEMORY[0x277CEE970] hexStringForString:?];
  v93 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", guestBuildVersion, v85];
  v84 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", guestBuildVersion, v85];
  v7 = gLogger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v53 = NSStringFromSelector(a2);
    v54 = NSTemporaryDirectory();
    *buf = 138412802;
    v99 = v53;
    v100 = 2112;
    v101 = v54;
    v102 = 2112;
    v103 = v93;
    _os_log_debug_impl(&dword_25DF54000, v7, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient: NSTemporaryDirectory %@ old filePath=%@", buf, 0x20u);
  }

  lastPathComponent = [v82 lastPathComponent];
  v79 = [lastPathComponent componentsSeparatedByString:@"."];
  lastObject = [v79 lastObject];
  v8 = gLogger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
  }

  v9 = v93;
  if ([lastObject isEqual:@"hwx"])
  {
    v10 = [MEMORY[0x277CEE950] controllerWithPrivilegedVM:1];
    if (v10 && os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
      v9 = v93;
    }

    if (file->var6 && file->var7 && file->var8)
    {
      lastPathComponent2 = [v9 lastPathComponent];
      v12 = [v9 stringByReplacingOccurrencesOfString:lastPathComponent2 withString:&stru_286FC4C68];

      v13 = v12;
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v73 = NSStringFromSelector(a2);
        var6 = file->var6;
        var7 = file->var7;
        var8 = file->var8;
        *buf = 138413058;
        v99 = v73;
        v100 = 2048;
        v101 = var6;
        v102 = 2048;
        v103 = var7;
        v104 = 2048;
        v105 = var8;
        _os_log_debug_impl(&dword_25DF54000, v14, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient: modelNetLength=%llu : modelShapeLength=%llu : modelWeightLength=%llu", buf, 0x2Au);
      }

      v93 = v13;
    }

    else
    {
      if (([(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask]& 2) == 0 || !file->var61)
      {
        v23 = gLogger;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v68 = NSStringFromSelector(a2);
          negotiatedCapabilityMask = [(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask];
          var61 = file->var61;
          *buf = 138412802;
          v99 = v68;
          v100 = 2048;
          v101 = negotiatedCapabilityMask & 2;
          v102 = 2048;
          v103 = var61;
          _os_log_debug_impl(&dword_25DF54000, v23, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient: use local hwx : guestPrecompiledBinarySupport=%llu : modelHWXLength=%llu", buf, 0x20u);
        }

        v24 = MEMORY[0x277CEE980];
        v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v82];
        v16 = [v24 modelAtURL:v25 key:keyCopy];

        v81 = 0;
        goto LABEL_130;
      }

      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
      }

      v13 = v84;
    }

    v84 = v13;
  }

  else
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }
  }

  if ([lastObject isEqual:@"net"])
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v84, lastPathComponent];

    v84 = v17;
  }

  if ([lastObject isEqual:@"hwx"] && (-[_ANEVirtualPlatformClient negotiatedCapabilityMask](self, "negotiatedCapabilityMask") & 2) != 0 && file->var61)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    v96 = 0;
    v19 = [defaultManager fileExistsAtPath:v93 isDirectory:&v96];
    v20 = gLogger;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
    if (v19)
    {
      if (v21)
      {
        v77 = NSStringFromSelector(a2);
        *buf = 138412802;
        v99 = v77;
        v100 = 2112;
        v101 = v93;
        v102 = 1024;
        LODWORD(v103) = v96;
        _os_log_debug_impl(&dword_25DF54000, v20, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory already exists %@ isDirectory %d", buf, 0x1Cu);
      }

      v81 = 0;
    }

    else
    {
      if (v21)
      {
        v78 = NSStringFromSelector(a2);
        *buf = 138412802;
        v99 = v78;
        v100 = 2112;
        v101 = v93;
        v102 = 1024;
        LODWORD(v103) = v96;
        _os_log_debug_impl(&dword_25DF54000, v20, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory Does not exists %@ isDirectory %d", buf, 0x1Cu);
      }

      v95 = 0;
      v55 = [defaultManager createDirectoryAtPath:v93 withIntermediateDirectories:1 attributes:0 error:&v95];
      v81 = v95;
      if ((v55 & 1) == 0)
      {
        v63 = gLogger;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
        }

        v64 = gLogger;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
        }

        v65 = MEMORY[0x277CEE980];
        v61 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v82];
        v62 = [v65 modelAtURL:v61 key:keyCopy];
        goto LABEL_120;
      }
    }

    v56 = file->var61;
    v57 = gLogger;
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
    if (v56)
    {
      if (v58)
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
      }

      v57 = v93;
      if (![(_ANEVirtualPlatformClient *)self createModelFile:@"model.hwx" path:v93 ioSID:file->var60 length:file->var61])
      {
        v61 = gLogger;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
        }

        v16 = 0;
        goto LABEL_124;
      }

      v93 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v93, @"model.hwx"];
    }

    else if (v58)
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    v60 = MEMORY[0x277CEE980];
    v61 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v93];
    v62 = [v60 modelAtURL:v61 key:keyCopy];
LABEL_120:
    v16 = v62;
LABEL_124:

    goto LABEL_130;
  }

  if (file->var55)
  {
    v22 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:file->var54 classType:objc_opt_class() length:file->var55];
  }

  else
  {
    v22 = @"model.espresso.net";
  }

  if (file->var57)
  {
    v26 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:file->var56 classType:objc_opt_class() length:file->var57];
  }

  else
  {
    v26 = @"model.espresso.shape";
  }

  if (file->var59)
  {
    v91 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:file->var58 classType:objc_opt_class() length:file->var59];
  }

  else
  {
    v91 = @"model.espresso.weights";
  }

  v27 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.-_"];
  invertedSet = [v27 invertedSet];

  lastPathComponent3 = [(__CFString *)v22 lastPathComponent];
  v29 = [lastPathComponent3 stringByTrimmingCharactersInSet:invertedSet];

  lastPathComponent4 = [(__CFString *)v26 lastPathComponent];
  v31 = [lastPathComponent4 stringByTrimmingCharactersInSet:invertedSet];

  v32 = v31;
  lastPathComponent5 = [(__CFString *)v91 lastPathComponent];
  v34 = [lastPathComponent5 stringByTrimmingCharactersInSet:invertedSet];

  v92 = v34;
  if ([(__CFString *)v29 length]&& ![(__CFString *)v29 hasPrefix:@"."])
  {
    v35 = v29;
  }

  else
  {

    v35 = @"model.espresso.net";
  }

  if (![(__CFString *)v32 length]|| [(__CFString *)v32 hasPrefix:@"."])
  {

    v32 = @"model.espresso.shape";
  }

  if (![(__CFString *)v92 length]|| [(__CFString *)v92 hasPrefix:@"."])
  {

    v92 = @"model.espresso.weights";
  }

  v36 = gLogger;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v59 = NSStringFromSelector(a2);
    *buf = 138413058;
    v99 = v59;
    v100 = 2112;
    v101 = v35;
    v102 = 2112;
    v103 = v32;
    v104 = 2112;
    v105 = v92;
    _os_log_debug_impl(&dword_25DF54000, v36, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient model names: netname=%@ : shapename=%@ : weightname=%@", buf, 0x2Au);
  }

  v97[0] = 0;
  v37 = [defaultManager fileExistsAtPath:v93 isDirectory:v97];
  v38 = gLogger;
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
  if (v37)
  {
    if (v39)
    {
      v66 = NSStringFromSelector(a2);
      *buf = 138412802;
      v99 = v66;
      v100 = 2112;
      v101 = v93;
      v102 = 1024;
      LODWORD(v103) = v97[0];
      _os_log_debug_impl(&dword_25DF54000, v38, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory already exists %@ isDirectory %d", buf, 0x1Cu);
    }

    v81 = 0;
    v40 = v93;
  }

  else
  {
    if (v39)
    {
      v67 = NSStringFromSelector(a2);
      *buf = 138412802;
      v99 = v67;
      v100 = 2112;
      v101 = v93;
      v102 = 1024;
      LODWORD(v103) = v97[0];
      _os_log_debug_impl(&dword_25DF54000, v38, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory Does not exists %@ isDirectory %d", buf, 0x1Cu);
    }

    v94 = 0;
    v40 = v93;
    v41 = [defaultManager createDirectoryAtPath:v93 withIntermediateDirectories:1 attributes:0 error:&v94];
    v81 = v94;
    if ((v41 & 1) == 0)
    {
      v47 = gLogger;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
      }

      goto LABEL_128;
    }
  }

  if (file->var6 && ![(_ANEVirtualPlatformClient *)self createModelFile:v35 path:v40 ioSID:file->var2 length:?])
  {
    v47 = gLogger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    goto LABEL_128;
  }

  if (file->var7 && ![(_ANEVirtualPlatformClient *)self createModelFile:v32 path:v40 ioSID:file->var3 length:?])
  {
    v47 = gLogger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    goto LABEL_128;
  }

  if (file->var8 && ![(_ANEVirtualPlatformClient *)self createModelFile:v92 path:v40 ioSID:file->var4 length:?])
  {
    v47 = gLogger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    goto LABEL_128;
  }

  if (file->var29 && ![(_ANEVirtualPlatformClient *)self createModelFile:@"net.plist" path:v40 ioSID:file->var28 length:?])
  {
    v47 = gLogger;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    goto LABEL_128;
  }

  v42 = 0;
  while (1)
  {
    v43 = file + 8 * v42;
    if (!*(v43 + 72))
    {
LABEL_99:
      v52 = MEMORY[0x277CEE980];
      v47 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v84];
      v16 = [v52 modelAtURL:v47 key:keyCopy];
      goto LABEL_129;
    }

    v44 = &file->var0 + v42;
    v45 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v44[112] classType:objc_opt_class() length:*(v43 + 72)];
    lastPathComponent6 = [v45 lastPathComponent];
    v47 = [lastPathComponent6 stringByTrimmingCharactersInSet:invertedSet];

    if (![v47 length]|| [v47 hasPrefix:@"."])
    {
      v48 = gLogger;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
      }

LABEL_90:

      goto LABEL_91;
    }

    if (*(v43 + 24))
    {
      break;
    }

LABEL_91:

    if (++v42 == 32)
    {
      goto LABEL_99;
    }
  }

  v49 = [(_ANEVirtualPlatformClient *)self createModelFile:v47 path:v93 ioSID:v44[16] length:?];
  v48 = gLogger;
  v50 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
  if (v49)
  {
    if (v50)
    {
      v51 = NSStringFromSelector(a2);
      *buf = 138412546;
      v99 = v51;
      v100 = 2112;
      v101 = v47;
      _os_log_debug_impl(&dword_25DF54000, v48, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Write %@", buf, 0x16u);
    }

    goto LABEL_90;
  }

  if (v50)
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
  }

LABEL_128:
  v16 = 0;
LABEL_129:

LABEL_130:
  v15 = v81;
LABEL_131:

  v71 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (BOOL)isFileModificationTimeStampSame:(id)same timeSince1970:(double)since1970
{
  v24 = *MEMORY[0x277D85DE8];
  sameCopy = same;
  if (sameCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:sameCopy])
    {
      v15 = 0;
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:sameCopy options:0 error:&v15];
      v8 = v15;
      if (v8)
      {
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
        {
          +[_ANEVirtualPlatformClient isFileModificationTimeStampSame:timeSince1970:];
        }

        v9 = 0;
      }

      else
      {
        v10 = v7;
        v11 = *[v7 bytes];
        v9 = v11 == since1970;
        v12 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v17 = "+[_ANEVirtualPlatformClient isFileModificationTimeStampSame:timeSince1970:]";
          v18 = 2048;
          since1970Copy = since1970;
          v20 = 2048;
          v21 = v11;
          v22 = 1024;
          v23 = v11 == since1970;
          _os_log_debug_impl(&dword_25DF54000, v12, OS_LOG_TYPE_DEBUG, "%s timeIntervalSince1970Guest:%f timeIntervalSince1970Host:%f isSame:%u", buf, 0x26u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        +[_ANEVirtualPlatformClient isFileModificationTimeStampSame:timeSince1970:];
      }

      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEVirtualPlatformClient isFileModificationTimeStampSame:timeSince1970:];
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)needToSaveFile:(id)file fileName:(id)name timeSince1970:(double)since1970
{
  fileCopy = file;
  nameCopy = name;
  v9 = nameCopy;
  if (fileCopy && nameCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", fileCopy, v9];
    if ([defaultManager fileExistsAtPath:v11])
    {
      v12 = [v9 stringByAppendingString:@".timestamp"];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", fileCopy, v12];
      v14 = ![_ANEVirtualPlatformClient isFileModificationTimeStampSame:v13 timeSince1970:since1970];
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        +[_ANEVirtualPlatformClient needToSaveFile:fileName:timeSince1970:];
      }

      LOBYTE(v14) = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEVirtualPlatformClient needToSaveFile:fileName:timeSince1970:];
    }

    LOBYTE(v14) = 1;
  }

  return v14;
}

+ (BOOL)createLastModificationTimeStampFile:(id)file fileName:(id)name timeSince1970:(double)since1970
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  nameCopy = name;
  since1970Copy = since1970;
  v9 = gLogger;
  v10 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
  if (fileCopy && nameCopy)
  {
    if (v10)
    {
      *buf = 136315906;
      v20 = "+[_ANEVirtualPlatformClient createLastModificationTimeStampFile:fileName:timeSince1970:]";
      v21 = 2112;
      v22 = fileCopy;
      v23 = 2112;
      v24 = nameCopy;
      v25 = 2048;
      since1970Copy2 = since1970;
      _os_log_debug_impl(&dword_25DF54000, v9, OS_LOG_TYPE_DEBUG, "%s path:%@, name:%@, timeSince1970:%f", buf, 0x2Au);
    }

    nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", fileCopy, nameCopy];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:&since1970Copy length:8];
    v17 = 0;
    v13 = [v12 writeToFile:nameCopy options:1 error:&v17];
    v14 = v17;
    if ((v13 & 1) == 0 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualPlatformClient createLastModificationTimeStampFile:fileName:timeSince1970:];
    }
  }

  else
  {
    if (v10)
    {
      +[_ANEVirtualPlatformClient createLastModificationTimeStampFile:fileName:timeSince1970:];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)getCodeSigningIdentity:(__CFDictionary *)identity
{
  if (CFDictionaryContainsKey(identity, @"csIdentity") && (Value = CFDictionaryGetValue(identity, @"csIdentity")) != 0)
  {
    v5 = Value;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEVirtualPlatformClient getCodeSigningIdentity:];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)createLLIRBundleOnDiskFromIOSurfaceWithID:(unsigned int)d destDirectory:(id)directory llirDataSize:(unint64_t)size
{
  v71 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  if (directoryCopy)
  {
    if (d)
    {
      if (size)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        if (defaultManager)
        {
          v11 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
          v12 = v11;
          if (v11)
          {
            IOSurfaceLock(v11, 0, 0);
            v13 = [MEMORY[0x277CBEA90] dataWithBytes:IOSurfaceGetBaseAddress(v12) length:size];
            IOSurfaceUnlock(v12, 0, 0);
            CFRelease(v12);
            if (v13)
            {
              v64 = 0;
              [v13 getBytes:&v64 range:0, 4];
              if (!v64)
              {
                v40 = gLogger;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  NSStringFromSelector(a2);
                  objc_claimAutoreleasedReturnValue();
                  [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                }

                v38 = 0;
                goto LABEL_73;
              }

              v14 = [v13 subdataWithRange:4];
              v55 = v14;
              if (!v14)
              {
                v41 = gLogger;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  NSStringFromSelector(a2);
                  objc_claimAutoreleasedReturnValue();
                  [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                }

                v38 = 0;
                goto LABEL_72;
              }

              v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
              v15 = [directoryCopy stringByAppendingPathComponent:?];
              v16 = v64;
              v56 = v15;
              if ([defaultManager fileExistsAtPath:v15])
              {
                v63 = 0;
                v17 = [defaultManager removeItemAtPath:v15 error:&v63];
                v18 = v63;
                v19 = gLogger;
                v20 = v19;
                if ((v17 & 1) == 0)
                {
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                  }

                  v38 = 0;
LABEL_71:

                  v41 = v54;
LABEL_72:

                  v40 = v55;
LABEL_73:

                  goto LABEL_74;
                }

                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                {
                  NSStringFromSelector(a2);
                  objc_claimAutoreleasedReturnValue();
                  [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                }

                v15 = v56;
              }

              v62 = 0;
              v21 = [defaultManager createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v62];
              v50 = v62;
              if (v21)
              {
                v22 = v16 + 4;
                while (1)
                {
                  if (v22 >= [v13 length])
                  {
                    v45 = gLogger;
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      NSStringFromSelector(a2);
                      objc_claimAutoreleasedReturnValue();
                      [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                    }

                    v38 = 1;
                    goto LABEL_66;
                  }

                  v61 = 0;
                  [v13 getBytes:&v61 range:v22, 4];
                  if (!v61)
                  {
                    v46 = gLogger;
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                    {
                      NSStringFromSelector(a2);
                      objc_claimAutoreleasedReturnValue();
                      [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                    }

                    goto LABEL_65;
                  }

                  v57 = [v13 subdataWithRange:v22 + 4];
                  if (!v57)
                  {
                    v47 = gLogger;
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                    {
                      NSStringFromSelector(a2);
                      objc_claimAutoreleasedReturnValue();
                      [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                    }

                    goto LABEL_65;
                  }

                  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v57 encoding:4];
                  if (![v23 length])
                  {
                    v48 = gLogger;
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      NSStringFromSelector(a2);
                      objc_claimAutoreleasedReturnValue();
                      [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
                    }

                    goto LABEL_65;
                  }

                  v24 = [v56 stringByAppendingPathComponent:v23];
                  v25 = v22 + 4 + v61;
                  v60 = 0;
                  [v13 getBytes:&v60 range:v25, 8];
                  v22 = v25 + 8;
                  if (v60)
                  {
                    v26 = [v13 subdataWithRange:v25 + 8];
                    if (v26)
                    {
                      v51 = v60;
                      stringByDeletingLastPathComponent = [v24 stringByDeletingLastPathComponent];
                      v58 = 0;
                      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v58];
                      v28 = v58;

                      if (v28)
                      {
                        log = gLogger;
                        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                        {
                          v33 = NSStringFromSelector(a2);
                          stringByDeletingLastPathComponent2 = [v24 stringByDeletingLastPathComponent];
                          *buf = 138412802;
                          v66 = v33;
                          v67 = 2112;
                          v68 = v28;
                          v69 = 2112;
                          v49 = stringByDeletingLastPathComponent2;
                          v70 = stringByDeletingLastPathComponent2;
                          _os_log_error_impl(&dword_25DF54000, log, OS_LOG_TYPE_ERROR, "%@: ERROR : FAILED to create directory %@ at path %@", buf, 0x20u);
                        }

                        v29 = 1;
                      }

                      else
                      {
                        [v26 writeToFile:v24 atomically:1];
                        log = gLogger;
                        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                        {
                          v36 = NSStringFromSelector(a2);
                          *buf = 138412546;
                          v66 = v36;
                          v67 = 2112;
                          v68 = v24;
                          _os_log_error_impl(&dword_25DF54000, log, OS_LOG_TYPE_ERROR, "%@: write file to path=%@", buf, 0x16u);
                        }

                        v29 = 0;
                      }

                      v22 += v51;
                      goto LABEL_38;
                    }

                    v28 = gLogger;
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      v35 = NSStringFromSelector(a2);
                      *buf = 138412546;
                      v66 = v35;
                      v67 = 2048;
                      v68 = v22;
                      _os_log_error_impl(&dword_25DF54000, v28, OS_LOG_TYPE_ERROR, "%@: ERROR : fileData is nil! at offset=%llu", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v59 = 0;
                    [defaultManager createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v59];
                    v26 = v59;
                    v30 = gLogger;
                    v28 = v30;
                    if (!v26)
                    {
                      v29 = 2;
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                      {
                        v37 = NSStringFromSelector(a2);
                        *buf = 138412546;
                        v66 = v37;
                        v67 = 2112;
                        v68 = v24;
                        _os_log_debug_impl(&dword_25DF54000, v28, OS_LOG_TYPE_DEBUG, "%@: CREATED EMPTY DIRECTORY at path=%@", buf, 0x16u);

                        v29 = 2;
                      }

                      goto LABEL_38;
                    }

                    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                    {
                      v31 = NSStringFromSelector(a2);
                      stringByDeletingLastPathComponent3 = [v24 stringByDeletingLastPathComponent];
                      *buf = 138412802;
                      v66 = v31;
                      v67 = 2112;
                      v68 = v26;
                      v69 = 2112;
                      loga = stringByDeletingLastPathComponent3;
                      v70 = stringByDeletingLastPathComponent3;
                      _os_log_error_impl(&dword_25DF54000, v28, OS_LOG_TYPE_ERROR, "%@: ERROR : FAILED to create directory %@ at path %@", buf, 0x20u);
                    }
                  }

                  v29 = 1;
LABEL_38:

                  if ((v29 | 2) != 2)
                  {
                    goto LABEL_65;
                  }
                }
              }

              v42 = gLogger;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
              }

LABEL_65:
              v38 = 0;
LABEL_66:
              v18 = v50;
              goto LABEL_71;
            }

            v39 = gLogger;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
            }
          }

          else
          {
            v13 = gLogger;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
            }
          }
        }

        else
        {
          v13 = gLogger;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
          }
        }

        v38 = 0;
LABEL_74:

        goto LABEL_75;
      }

      defaultManager = gLogger;
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
      }
    }

    else
    {
      defaultManager = gLogger;
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
      }
    }
  }

  else
  {
    defaultManager = gLogger;
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
    }
  }

  v38 = 0;
LABEL_75:

  v43 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)createAllModelFilesOnHost:(__CFDictionary *)host
{
  v72 = *MEMORY[0x277D85DE8];
  if (CFDictionaryContainsKey(host, @"numModelFiles"))
  {
    v61 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"numModelFiles"];
    v4 = gLogger;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }
  }

  else
  {
    v4 = gLogger;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }

    v61 = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v55 = [_ANEVirtualPlatformClient getCodeSigningIdentity:host];
  guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  if (!CFDictionaryContainsKey(host, @"ioSIDModelInputPath") || !CFDictionaryContainsKey(host, @"modelInputPathLength"))
  {
    v54 = gLogger;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }

    v53 = 0;
    v14 = 0;
    goto LABEL_87;
  }

  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"ioSIDModelInputPath"];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"modelInputPathLength"];
  v7 = 0;
  if (v5)
  {
    v8 = v6;
    if (v6)
    {
      v9 = gLogger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v47 = NSStringFromSelector(a2);
        *buf = 138412802;
        v65 = v47;
        v66 = 1024;
        *v67 = v5;
        *&v67[4] = 2048;
        *&v67[6] = v8;
        _os_log_debug_impl(&dword_25DF54000, v9, OS_LOG_TYPE_DEBUG, "%@ modelInputPathIOSID:%u modelInputPathLength:%llu", buf, 0x1Cu);
      }

      v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v5 classType:objc_opt_class() length:v8];
    }
  }

  v54 = v7;
  v52 = [MEMORY[0x277CEE970] hexStringForString:?];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, v55, guestBuildVersion, v52];
  v63 = 0;
  v59 = v10;
  v11 = [defaultManager fileExistsAtPath:? isDirectory:?];
  v12 = gLogger;
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      v48 = NSStringFromSelector(a2);
      *buf = 138412802;
      v65 = v48;
      v66 = 2112;
      *v67 = v59;
      *&v67[8] = 1024;
      *&v67[10] = v63;
      _os_log_debug_impl(&dword_25DF54000, v12, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory already exists %@ isDirectory %d", buf, 0x1Cu);
    }

    v53 = 0;
  }

  else
  {
    if (v13)
    {
      v49 = NSStringFromSelector(a2);
      *buf = 138412802;
      v65 = v49;
      v66 = 2112;
      *v67 = v59;
      *&v67[8] = 1024;
      *&v67[10] = v63;
      _os_log_debug_impl(&dword_25DF54000, v12, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient Directory Does not exists %@ isDirectory %d", buf, 0x1Cu);
    }

    v62 = 0;
    v15 = [defaultManager createDirectoryAtPath:v59 withIntermediateDirectories:1 attributes:0 error:&v62];
    v53 = v62;
    if ((v15 & 1) == 0)
    {
      v21 = gLogger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
      }

      goto LABEL_31;
    }
  }

  v16 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"modelHWXLength"];
  if (!v16)
  {
    v20 = 1;
    goto LABEL_43;
  }

  Value = CFDictionaryGetValue(host, @"hwxFileName");
  value = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v59, Value];
  if ([defaultManager fileExistsAtPath:value])
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }

LABEL_40:
    v20 = 1;
LABEL_41:

    goto LABEL_42;
  }

  if (!CFStringGetLength(Value))
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }

    goto LABEL_40;
  }

  v22 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"ioSIDModelHWX"];
  if (!v22)
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }

    goto LABEL_40;
  }

  if (![(_ANEVirtualPlatformClient *)self createModelFile:Value path:v59 ioSID:v22 length:v16])
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      *buf = 138413314;
      v65 = v51;
      v66 = 2112;
      *v67 = v59;
      *&v67[8] = 2112;
      *&v67[10] = Value;
      v68 = 1024;
      v69 = v22;
      v70 = 2048;
      v71 = v16;
      _os_log_error_impl(&dword_25DF54000, v19, OS_LOG_TYPE_ERROR, "%@: ANEVirtualPlatformClient createAllModelFilesOnHost failed to create file on host directoryPath:%@ fileName:%@ fileIOSID:%u fileLength=%llu", buf, 0x30u);
    }

    v20 = 0;
    goto LABEL_41;
  }

  v20 = 1;
LABEL_42:

LABEL_43:
  v23 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"llirDataSize"];
  if (v23)
  {
    v24 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:@"ioSIDLLIRBundle"];
    if (v24)
    {
      if (![(_ANEVirtualPlatformClient *)self createLLIRBundleOnDiskFromIOSurfaceWithID:v24 destDirectory:v59 llirDataSize:v23])
      {
        v41 = gLogger;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
        }

        goto LABEL_85;
      }

      goto LABEL_46;
    }

    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
    }

LABEL_31:

    goto LABEL_85;
  }

LABEL_46:
  if (!v61)
  {
    goto LABEL_81;
  }

  v25 = 0;
  while (1)
  {
    v26 = CFStringCreateWithFormat(0, 0, @"fileName%u", v25);
    v27 = CFDictionaryGetValue(host, v26);
    CFRelease(v26);
    if (!CFStringGetLength(v27))
    {
      v32 = gLogger;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
      }

      goto LABEL_66;
    }

    v28 = CFStringCreateWithFormat(0, 0, @"fileLength%u", v25);
    v29 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:v28];
    CFRelease(v28);
    if (!v29)
    {
      v32 = gLogger;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(a2);
        *buf = 138412546;
        v65 = v36;
        v66 = 2112;
        *v67 = v27;
        _os_log_error_impl(&dword_25DF54000, v32, OS_LOG_TYPE_ERROR, "%@: ANEVirtualPlatformClient createAllModelFilesOnHost skipping zero-length file %@", buf, 0x16u);
      }

      goto LABEL_66;
    }

    v30 = CFStringCreateWithFormat(0, 0, @"FileLastModificationTimeStamp%u", v25);
    v31 = CFDictionaryGetValue(host, v30);
    CFRelease(v30);
    if (v31)
    {
      v32 = v31;
      [v32 doubleValue];
      v34 = v33;
      v35 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v65 = "[_ANEVirtualPlatformClient createAllModelFilesOnHost:]";
        v66 = 1024;
        *v67 = v25;
        *&v67[4] = 2048;
        *&v67[6] = v34;
        _os_log_debug_impl(&dword_25DF54000, v35, OS_LOG_TYPE_DEBUG, "%s fileCounter:%d timeLastModificationSince1970:%f", buf, 0x1Cu);
      }

      if (![_ANEVirtualPlatformClient needToSaveFile:v59 fileName:v27 timeSince1970:v34])
      {
        v40 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v65 = "[_ANEVirtualPlatformClient createAllModelFilesOnHost:]";
          v66 = 2112;
          *v67 = v59;
          *&v67[8] = 2112;
          *&v67[10] = v27;
          _os_log_debug_impl(&dword_25DF54000, v40, OS_LOG_TYPE_DEBUG, "%s directoryPath: %@ fileName:%@ need not be saved again", buf, 0x20u);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v34 = 0.0;
    }

    v37 = CFStringCreateWithFormat(0, 0, @"fileIOSID%u", v25);
    v38 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:host key:v37];
    CFRelease(v37);
    if (!v38)
    {
      break;
    }

    if (![(_ANEVirtualPlatformClient *)self createModelFile:v27 path:v59 ioSID:v38 length:v29])
    {
      v42 = gLogger;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(a2);
        *buf = 138413314;
        v65 = v50;
        v66 = 2112;
        *v67 = v59;
        *&v67[8] = 2112;
        *&v67[10] = v27;
        v68 = 1024;
        v69 = v38;
        v70 = 2048;
        v71 = v29;
        _os_log_error_impl(&dword_25DF54000, v42, OS_LOG_TYPE_ERROR, "%@: ANEVirtualPlatformClient createAllModelFilesOnHost failed to create file on host directoryPath:%@ fileName:%@ fileIOSID:%u fileLength=%llu", buf, 0x30u);
      }

      goto LABEL_80;
    }

    if (!v31)
    {
      v20 = 1;
      goto LABEL_67;
    }

    v32 = v27;
    v39 = [v32 stringByAppendingString:@".timestamp"];
    [_ANEVirtualPlatformClient createLastModificationTimeStampFile:v59 fileName:v39 timeSince1970:v34];

    v20 = 1;
LABEL_66:

LABEL_67:
    v25 = (v25 + 1);
    if (v61 == v25)
    {
      goto LABEL_81;
    }
  }

  v42 = gLogger;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
  }

LABEL_80:

  v20 = 0;
LABEL_81:
  v43 = gLogger;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient createAllModelFilesOnHost:];
  }

  if (v20)
  {
    v44 = v59;
    v14 = v59;
    goto LABEL_86;
  }

LABEL_85:
  v14 = 0;
  v44 = v59;
LABEL_86:

LABEL_87:
  v45 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)createANEModelInstanceParameters:(__CFDictionary *)parameters modelUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = gLogger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient createANEModelInstanceParameters:modelUUID:];
  }

  if (CFDictionaryContainsKey(parameters, @"modelInstanceParametersData"))
  {
    v6 = [_ANEVirtualPlatformClient dictionaryGetDataBytesForKey:parameters key:@"modelInstanceParametersData"];
    aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::_ANEModelInstanceParametersSerializerDeserializer(v12, v6, gLogger);
  }

  v7 = 0;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)createOptionFilesForCompilation:(VirtANEModel *)compilation aneModelKey:(id)key options:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  optionsCopy = options;
  if (!optionsCopy)
  {
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  v10 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:compilation->var52 classType:objc_opt_class() length:compilation->var53];
  v11 = [MEMORY[0x277CEE970] hexStringForString:v10];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", guestBuildVersion, v11];
  lastPathComponent = [v10 lastPathComponent];
  v14 = [lastPathComponent componentsSeparatedByString:@"."];
  lastObject = [v14 lastObject];
  if ([lastObject isEqual:@"hwx"] && compilation->var6 && compilation->var7 && compilation->var8)
  {
    lastPathComponent2 = [v12 lastPathComponent];
    v22 = [v12 stringByReplacingOccurrencesOfString:lastPathComponent2 withString:&stru_286FC4C68];

    v12 = v22;
  }

  v17 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CEE9C0]];
  if (v17)
  {
    v18 = [(_ANEVirtualPlatformClient *)self createModelFile:v17 path:v12 ioSID:compilation->var26 length:compilation->var27];
    v19 = gLogger;
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  else
  {
    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)createOptionFilesForCompilationDictionary:(__CFDictionary *)dictionary aneModelKey:(id)key options:(id)options modelDirectory:(id)directory
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  optionsCopy = options;
  directoryCopy = directory;
  if (!optionsCopy)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  v15 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CEE9C0]];
  if (v15)
  {
    if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"compilerOptionFileLength"])
    {
      if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDCompilerOptionFile"])
      {
        v16 = [_ANEVirtualPlatformClient createModelFile:"createModelFile:path:ioSID:length:" path:v15 ioSID:directoryCopy length:?];
        v17 = gLogger;
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
        }
      }

      else
      {
        v18 = gLogger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient createOptionFilesForCompilationDictionary:aneModelKey:options:modelDirectory:];
        }
      }
    }

    else
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createOptionFilesForCompilationDictionary:aneModelKey:options:modelDirectory:];
      }
    }
  }

  else
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)doRemoveModelFile:(VirtANEModel *)file
{
  v32 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  v6 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:file->var52 classType:objc_opt_class() length:file->var53];
  v7 = [MEMORY[0x277CEE970] hexStringForString:v6];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", guestBuildVersion, v7];
  lastPathComponent = [v6 lastPathComponent];
  v10 = [lastPathComponent componentsSeparatedByString:@"."];
  lastObject = [v10 lastObject];
  if ([lastObject isEqual:@"hwx"] && file->var6 && file->var7 && file->var8)
  {
    lastPathComponent2 = [v8 lastPathComponent];
    v13 = [v8 stringByReplacingOccurrencesOfString:lastPathComponent2 withString:&stru_286FC4C68];

    v8 = v13;
  }

  v14 = gLogger;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    NSTemporaryDirectory();
    *buf = 138412802;
    v27 = v21;
    v29 = v28 = 2112;
    v30 = 2112;
    v31 = v8;
    v20 = v29;
    _os_log_debug_impl(&dword_25DF54000, v14, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient: NSTemporaryDirectory %@ filePath=%@", buf, 0x20u);
  }

  v25 = 0;
  if ([defaultManager fileExistsAtPath:v8 isDirectory:&v25])
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doRemoveModelFile:];
    }

    v24 = 0;
    v16 = [defaultManager removeItemAtPath:v8 error:&v24];
    v17 = v24;
    if ((v16 & 1) == 0)
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient doRemoveModelFile:];
      }
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateVirtualANEModel:(VirtANEModel *)model model:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (model->var1)
  {
    if (v7)
    {
      modelAttributes = [v7 modelAttributes];

      if (modelAttributes)
      {
        v10 = MEMORY[0x277CCAAA0];
        modelAttributes2 = [v8 modelAttributes];
        v25 = 0;
        v12 = [v10 dataWithJSONObject:modelAttributes2 options:1 error:&v25];
        v13 = v25;

        if (v13)
        {
          v14 = gLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
          }
        }

        model->var15 = [v8 programHandle];
        model->var16 = [v8 intermediateBufferHandle];
        model->var17 = [v8 queueDepth];
        model->var21 = [v8 perfStatsMask];
        model->var25 = [v8 state];
        model->var20 = [v12 length];
        v15 = [(_ANEVirtualPlatformClient *)self getIOSurface:model->var19];
        v16 = v15;
        if (v15)
        {
          IOSurfaceLock(v15, 0, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v16);
          v18 = v12;
          memcpy(BaseAddress, [v12 bytes], objc_msgSend(v12, "length"));
          IOSurfaceUnlock(v16, 0, 0);
          CFRelease(v16);
        }

        else
        {
          v19 = gLogger;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
          }
        }

        v20 = gLogger;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = NSStringFromSelector(a2);
          modelAttributes3 = [v8 modelAttributes];
          v24 = [v12 length];
          *buf = 138412802;
          v27 = v22;
          v28 = 2112;
          v29 = modelAttributes3;
          v30 = 2048;
          v31 = v24;
          _os_log_debug_impl(&dword_25DF54000, v20, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient attribute %@ length %lu", buf, 0x20u);
        }
      }

      else
      {
        v13 = gLogger;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
        }
      }
    }

    else
    {
      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
      }
    }
  }

  else
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateVirtualANEModelDictionary:(__CFDictionary *)dictionary model:(id)model cacheURLIdentifierToGuest:(BOOL)guest
{
  guestCopy = guest;
  v52 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  modelAttributes = [modelCopy modelAttributes];

  if (modelAttributes)
  {
    selfCopy = self;
    v11 = MEMORY[0x277CCAAA0];
    modelAttributes2 = [modelCopy modelAttributes];
    v45 = 0;
    v13 = [v11 dataWithJSONObject:modelAttributes2 options:1 error:&v45];
    v14 = v45;

    if (v14)
    {
      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
      }
    }

    if (guestCopy)
    {
      cacheURLIdentifier = [modelCopy cacheURLIdentifier];
      v17 = cacheURLIdentifier == 0;

      if (!v17)
      {
        cacheURLIdentifier2 = [modelCopy cacheURLIdentifier];

        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
        }

        CFDictionarySetValue(dictionary, @"modelCacheURLIdentifier", cacheURLIdentifier2);
      }
    }

    CFDictionaryRemoveValue(dictionary, @"programHandle");
    valuePtr = [modelCopy programHandle];
    v19 = *MEMORY[0x277CBECE8];
    v20 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(dictionary, @"programHandle", v20);
    CFRelease(v20);
    CFDictionaryRemoveValue(dictionary, @"intermediateBufferHandle");
    intermediateBufferHandle = [modelCopy intermediateBufferHandle];
    v21 = CFNumberCreate(v19, kCFNumberSInt64Type, &intermediateBufferHandle);
    CFDictionarySetValue(dictionary, @"intermediateBufferHandle", v21);
    CFRelease(v21);
    CFDictionaryRemoveValue(dictionary, @"queueDepth");
    queueDepth = [modelCopy queueDepth];
    v22 = CFNumberCreate(v19, kCFNumberSInt8Type, &queueDepth);
    CFDictionarySetValue(dictionary, @"queueDepth", v22);
    CFRelease(v22);
    CFDictionaryRemoveValue(dictionary, @"perfStatsMask");
    perfStatsMask = [modelCopy perfStatsMask];
    v23 = CFNumberCreate(v19, kCFNumberSInt32Type, &perfStatsMask);
    CFDictionarySetValue(dictionary, @"perfStatsMask", v23);
    CFRelease(v23);
    CFDictionaryRemoveValue(dictionary, @"state");
    state = [modelCopy state];
    v24 = CFNumberCreate(v19, kCFNumberSInt32Type, &state);
    CFDictionarySetValue(dictionary, @"state", v24);
    CFRelease(v24);
    getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];
    v26 = gLogger;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
    }

    if (CFDictionaryContainsKey(dictionary, @"ioSIDModelParameters") && getCacheURLIdentifier)
    {
      aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer::_ANEModelParamsSerializerDeserializer(buf, [_ANEVirtualPlatformClient dictionaryGetDataBytesForKey:dictionary key:@"ioSIDModelParameters"]);
    }

    CFDictionaryRemoveValue(dictionary, @"modelAttributeLength");
    v39 = [v13 length];
    v27 = CFNumberCreate(v19, kCFNumberSInt64Type, &v39);
    CFDictionarySetValue(dictionary, @"modelAttributeLength", v27);
    CFRelease(v27);
    if (v39)
    {
      v28 = [(_ANEVirtualPlatformClient *)selfCopy getIOSurface:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDModelAttributes"]];
      v29 = v28;
      if (v28)
      {
        IOSurfaceLock(v28, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(v29);
        v31 = v13;
        memcpy(BaseAddress, [v13 bytes], objc_msgSend(v13, "length"));
        IOSurfaceUnlock(v29, 0, 0);
        CFRelease(v29);
      }

      else
      {
        v33 = gLogger;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
        }
      }

      v32 = gLogger;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v35 = NSStringFromSelector(a2);
        modelAttributes3 = [modelCopy modelAttributes];
        v37 = [v13 length];
        *buf = 138412802;
        v47 = v35;
        v48 = 2112;
        v49 = modelAttributes3;
        v50 = 2048;
        v51 = v37;
        _os_log_debug_impl(&dword_25DF54000, v32, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient attribute %@ dataLength %lu", buf, 0x20u);
      }
    }

    else
    {
      v32 = gLogger;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
      }
    }
  }

  else
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateVirtualANEModel:model:];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)updatePerformanceStats:(VirtANEModel *)stats aneRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  perfStats = [requestCopy perfStats];
  stats->var49 = [perfStats hwExecutionTime];

  perfStats2 = [requestCopy perfStats];
  perfCounterData = [perfStats2 perfCounterData];
  stats->var51 = [perfCounterData length];

  v11 = [(_ANEVirtualPlatformClient *)self getIOSurface:stats->var50];
  v12 = gLogger;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    var49 = stats->var49;
    var51 = stats->var51;
    v24 = 138412802;
    v25 = v21;
    v26 = 2048;
    v27 = var49;
    v28 = 2048;
    v29 = var51;
    _os_log_debug_impl(&dword_25DF54000, v12, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient hwExecutionTime=%lld length=%lld", &v24, 0x20u);
  }

  IOSurfaceLock(v11, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v11);
  perfStats3 = [requestCopy perfStats];
  perfCounterData2 = [perfStats3 perfCounterData];
  v16 = perfCounterData2;
  bytes = [perfCounterData2 bytes];
  perfStats4 = [requestCopy perfStats];
  perfCounterData3 = [perfStats4 perfCounterData];
  memcpy(BaseAddress, bytes, [perfCounterData3 length]);

  IOSurfaceUnlock(v11, 0, 0);
  CFRelease(v11);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updatePerformanceStatsDictionary:(__CFDictionary *)dictionary aneRequest:(id)request
{
  v47 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  CFDictionaryRemoveValue(dictionary, @"hwExecutionTime");
  perfStats = [requestCopy perfStats];
  hwExecutionTime = [perfStats hwExecutionTime];

  valuePtr = hwExecutionTime;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(dictionary, @"hwExecutionTime", v10);
  CFRelease(v10);
  CFDictionaryRemoveValue(dictionary, @"performanceStatsLength");
  perfStats2 = [requestCopy perfStats];
  perfCounterData = [perfStats2 perfCounterData];
  v13 = [perfCounterData length];

  v39 = v13;
  v14 = CFNumberCreate(v9, kCFNumberSInt64Type, &v39);
  CFDictionarySetValue(dictionary, @"performanceStatsLength", v14);
  CFRelease(v14);
  v15 = [(_ANEVirtualPlatformClient *)self getIOSurface:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDPerformanceStatsIndex"]];
  v16 = gLogger;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v37 = NSStringFromSelector(a2);
    *buf = 138412802;
    v42 = v37;
    v43 = 2048;
    v44 = valuePtr;
    v45 = 2048;
    v46 = v39;
    _os_log_debug_impl(&dword_25DF54000, v16, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient hwExecutionTime=%lld length=%lld", buf, 0x20u);
  }

  IOSurfaceLock(v15, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v15);
  perfStats3 = [requestCopy perfStats];
  perfCounterData2 = [perfStats3 perfCounterData];
  v20 = perfCounterData2;
  bytes = [perfCounterData2 bytes];
  perfStats4 = [requestCopy perfStats];
  perfCounterData3 = [perfStats4 perfCounterData];
  memcpy(BaseAddress, bytes, [perfCounterData3 length]);

  IOSurfaceUnlock(v15, 0, 0);
  CFRelease(v15);
  if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDPerformanceStatsRaw"])
  {
    v24 = [(_ANEVirtualPlatformClient *)self getIOSurface:?];
    IOSurfaceLock(v24, 0, 0);
    v25 = IOSurfaceGetBaseAddress(v24);
    perfStats5 = [requestCopy perfStats];
    pStatsRawData = [perfStats5 pStatsRawData];
    v28 = pStatsRawData;
    bytes2 = [pStatsRawData bytes];
    perfStats6 = [requestCopy perfStats];
    pStatsRawData2 = [perfStats6 pStatsRawData];
    memcpy(v25, bytes2, [pStatsRawData2 length]);

    IOSurfaceUnlock(v24, 0, 0);
    CFRelease(v24);
    v32 = MEMORY[0x277CCABB0];
    perfStats7 = [requestCopy perfStats];
    pStatsRawData3 = [perfStats7 pStatsRawData];
    v35 = [v32 numberWithUnsignedLongLong:{objc_msgSend(pStatsRawData3, "length")}];
    [(__CFDictionary *)dictionary setObject:v35 forKey:@"performanceStatsRawLength"];
  }

  else
  {
    perfStats7 = gLogger;
    if (os_log_type_enabled(perfStats7, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updatePerformanceStatsDictionary:aneRequest:];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorValue:(VirtANEModel *)value error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateErrorValue:error:];
    }

    value->var46 = [errorCopy code];
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    v12 = v11;
    if (v10 && v11)
    {
      value->var47 = [v11 length];
      v13 = [(_ANEVirtualPlatformClient *)self getIOSurface:value->var48];
      IOSurfaceLock(v13, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v13);
      v15 = v12;
      memcpy(BaseAddress, [v12 bytes], objc_msgSend(v12, "length"));
      IOSurfaceUnlock(v13, 0, 0);
      CFRelease(v13);
    }

    else
    {
      value->var47 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorValueDictionary:(__CFDictionary *)dictionary error:(id)error
{
  v21[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateErrorValue:error:];
    }

    CFDictionaryRemoveValue(dictionary, @"errorCode");
    valuePtr = [errorCopy code];
    v9 = *MEMORY[0x277CBECE8];
    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(dictionary, @"errorCode", v10);
    CFRelease(v10);
    userInfo = [errorCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDErrorValue"])
    {
      v14 = [(_ANEVirtualPlatformClient *)self getIOSurface:?];
      CFDictionaryRemoveValue(dictionary, @"errorLength");
      if (v14)
      {
        IOSurfaceLock(v14, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(v14);
        v16 = v13;
        memcpy(BaseAddress, [v13 bytes], objc_msgSend(v13, "length"));
        IOSurfaceUnlock(v14, 0, 0);
        CFRelease(v14);
        v21[0] = [v13 length];
      }

      else
      {
        v21[0] = 0;
      }

      v17 = CFNumberCreate(v9, kCFNumberSInt64Type, v21);
      CFDictionarySetValue(dictionary, @"errorLength", v17);
      CFRelease(v17);
    }

    else
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient updateErrorValueDictionary:error:];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)doModelAttributeUpdate:(id)update virtualANEModel:(VirtANEModel *)model
{
  updateCopy = update;
  v6 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:model->var19 classType:objc_opt_class() length:model->var20];
  [updateCopy setPerfStatsMask:model->var21];
  [updateCopy setString_id:model->var14];
  [updateCopy updateModelAttributes:v6 state:model->var25 programHandle:model->var15 intermediateBufferHandle:model->var16 queueDepth:model->var17];
}

- (void)doModelAttributeUpdateDictionary:(id)dictionary dictionary:(__CFDictionary *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"modelAttributeLength"];
  if (!v8)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
    }

    goto LABEL_10;
  }

  v9 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"ioSIDModelAttributes"];
  if (!v9)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doModelAttributeUpdateDictionary:dictionary:];
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  v10 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v9 classType:objc_opt_class() length:v8];
  v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"perfStatsMask"];
  [dictionaryCopy setPerfStatsMask:v11];
  v12 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"string_id"];
  [dictionaryCopy setString_id:v12];
  v13 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"state"];
  v14 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"programHandle"];
  v15 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"intermediateBufferHandle"];
  v16 = [_ANEVirtualPlatformClient dictionaryGetInt8ForKey:a4 key:@"queueDepth"];
  v17 = gLogger;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = NSStringFromSelector(a2);
    v21 = 138413570;
    v22 = v20;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 1024;
    v28 = v13;
    v29 = 2048;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    _os_log_debug_impl(&dword_25DF54000, v17, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient doModelAttributeUpdateDictionary %u %u %u %llu %llu!", &v21, 0x32u);
  }

  [dictionaryCopy updateModelAttributes:v10 state:v13 programHandle:v14 intermediateBufferHandle:v15 queueDepth:v16];
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceInfo:(DeviceInfo *)info
{
  info->var3 = [MEMORY[0x277CEE958] hasANE];
  p_var3 = &info->var3;
  info->var2 = [MEMORY[0x277CEE958] aneBoardType];
  p_var2 = &info->var2;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEVirtualPlatformClient *)p_var3 getDeviceInfo:?];
  }
}

- (void)storeGuestBuildVersion:(BuildVersionInfoLegacy *)version
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:version->var1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:&stru_286FC4C68];
  guestBuildVersion = self->_guestBuildVersion;
  self->_guestBuildVersion = v5;

  self->_negotiatedDataInterfaceVersion = 0x10000;
  self->_negotiatedCapabilityMask = 0;
  v7 = gLogger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
    v10 = 138412802;
    v11 = guestBuildVersion;
    v12 = 1024;
    negotiatedDataInterfaceVersion = [(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion];
    v14 = 2048;
    negotiatedCapabilityMask = [(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask];
    _os_log_debug_impl(&dword_25DF54000, v7, OS_LOG_TYPE_DEBUG, "ANEVirtualPlatformClient Guest used legacy interface guestBuildVersion=%@ : guestDataInterfaceVersion=0x%x : guestCapability=0x%llx", &v10, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)exchangeBuildVersionInfo:(BuildVersionInfo *)info
{
  v42 = *MEMORY[0x277D85DE8];
  if (self->_avpSaveRestoreSupported)
  {
    if (info->var0 <= 0x20300)
    {
      v6 = 6;
    }

    else
    {
      v6 = 14;
    }
  }

  else
  {
    v6 = 6;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:info->var3];
  v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_286FC4C68];
  guestBuildVersion = self->_guestBuildVersion;
  self->_guestBuildVersion = v8;

  var0 = info->var0;
  if (info->var0 >= 0x20406)
  {
    var0 = 132102;
  }

  self->_negotiatedDataInterfaceVersion = var0;
  self->_negotiatedCapabilityMask = info->var2 & v6;
  v11 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    negotiatedDataInterfaceVersion = self->_negotiatedDataInterfaceVersion;
    v24 = self->_guestBuildVersion;
    negotiatedCapabilityMask = self->_negotiatedCapabilityMask;
    v26 = info->var0;
    var2 = info->var2;
    *buf = 138413826;
    v29 = v24;
    v30 = 1024;
    v31 = negotiatedDataInterfaceVersion;
    v32 = 2048;
    v33 = negotiatedCapabilityMask;
    v34 = 1024;
    v35 = v26;
    v36 = 2048;
    v37 = var2;
    v38 = 1024;
    v39 = 132102;
    v40 = 2048;
    v41 = v6;
    _os_log_debug_impl(&dword_25DF54000, v11, OS_LOG_TYPE_DEBUG, "ANEVirtualPlatformClient exchangeBuildVersionInfo Hand-shaking complete: guestBuildVersion=%@ negotiatedDataInterfaceVersion=0x%x negotiatedCapabilityMask=0x%llx guestDataInterfaceVersion=0x%x guestCapabilityMask=0x%llx hostDataInterfaceVersion=0x%x hostCapabilityMask=0x%llx", buf, 0x3Cu);
  }

  productName = [MEMORY[0x277CEE958] productName];
  v13 = productName;
  if (!productName || [productName isEqualToString:&stru_286FC4C68])
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient exchangeBuildVersionInfo:];
    }

    v13 = 0;
  }

  buildVersion = [MEMORY[0x277CEE958] buildVersion];
  v16 = buildVersion;
  if (!buildVersion || [buildVersion isEqualToString:&stru_286FC4C68])
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient exchangeBuildVersionInfo:];
    }

    v16 = 0;
    goto LABEL_20;
  }

  if (!v13)
  {
LABEL_20:
    v18 = @"UnknownBuild";
    goto LABEL_21;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v13, v16];
LABEL_21:
  v19 = v18;
  uTF8String = [(__CFString *)v18 UTF8String];
  v21 = gLogger;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient exchangeBuildVersionInfo:];
  }

  memcpy(info->var3, uTF8String, [(__CFString *)v18 length]);
  info->var4 = [(__CFString *)v18 length];
  info->var0 = 132102;
  info->var2 = v6;
  info->var6 = ANEGetValidateNetworkSupportedVersion();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyBytesToIOSurface:(char *)surface dataLength:(unsigned int)length ioSID:(unsigned int)d
{
  v22 = *MEMORY[0x277D85DE8];
  if (!d)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient copyBytesToIOSurface:dataLength:ioSID:];
    }

    goto LABEL_11;
  }

  v9 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  if (!v9)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient copyBytesToIOSurface:dataLength:ioSID:];
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = v9;
  IOSurfaceLock(v9, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v10);
  memcpy(BaseAddress, surface, length);
  v12 = gLogger;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(a2);
    v16 = 138412802;
    v17 = v15;
    v18 = 2048;
    lengthCopy = length;
    v20 = 1024;
    dCopy = d;
    _os_log_debug_impl(&dword_25DF54000, v12, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient data in bytes %lu IOSID: %u\n", &v16, 0x1Cu);
  }

  IOSurfaceUnlock(v10, 0, 0);
  CFRelease(v10);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)printStruct:(VirtANEModel *)struct
{
  if (struct)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualPlatformClient printStruct:struct];
    }
  }
}

- (void)getBytesFromIOSurfaceID:(unsigned int)d dest:(char *)dest dataLength:(unint64_t)length
{
  v7 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  if (v7)
  {
    v8 = v7;
    IOSurfaceLock(v7, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v8);
    memcpy(dest, BaseAddress, length);
    IOSurfaceUnlock(v8, 0, 0);

    CFRelease(v8);
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient getBytesFromIOSurfaceID:dest:dataLength:];
  }
}

- (void)callCFDictionaryMethod:(AppleVirtIONeuralEngineCFData *)method
{
  errorString[14] = *MEMORY[0x277D85DE8];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient callCFDictionaryMethod:];
  }

  var4 = method->var4;
  v8 = operator new[](var4, MEMORY[0x277D826F0]);
  v9 = v8;
  if (!var4 || v8)
  {
    [(_ANEVirtualPlatformClient *)self getBytesFromIOSurfaceID:method->var2 dest:v8 dataLength:var4];
    errorString[0] = 0;
    v10 = IOCFUnserializeBinary(v9, method->var4, 0, 0, errorString);
    [(_ANEVirtualPlatformClient *)self printDictionary:v10];
    if (v10)
    {
      v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:v10 key:@"command"];
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualPlatformClient callCFDictionaryMethod:];
      }

      switch(v11)
      {
        case 1:
          v12 = [(_ANEVirtualPlatformClient *)self compileModelDictionary:v10];
          goto LABEL_31;
        case 2:
          v12 = [(_ANEVirtualPlatformClient *)self loadModelDictionary:v10];
          goto LABEL_31;
        case 3:
          v12 = [(_ANEVirtualPlatformClient *)self unLoadModelDictionary:v10];
          goto LABEL_31;
        case 4:
          [(_ANEVirtualPlatformClient *)self evaluateWithModelDictionary:v10];
          goto LABEL_33;
        case 5:
          v12 = [(_ANEVirtualPlatformClient *)self compiledModelExistsForDictionary:v10];
          goto LABEL_31;
        case 6:
          v12 = [(_ANEVirtualPlatformClient *)self purgeCompiledModelDictionary:v10];
          goto LABEL_31;
        case 7:
          v12 = [(_ANEVirtualPlatformClient *)self compiledModelExistsMatchingHashDictionary:v10];
          goto LABEL_31;
        case 8:
          v12 = [(_ANEVirtualPlatformClient *)self purgeCompiledModelMatchingHashDictionary:v10];
          goto LABEL_31;
        case 11:
          v12 = [(_ANEVirtualPlatformClient *)self echoDictionary:v10];
          goto LABEL_31;
        case 19:
          [(_ANEVirtualPlatformClient *)self validateNetworkCreate:v10];
          goto LABEL_33;
        case 20:
          v12 = [(_ANEVirtualPlatformClient *)self getDeviceInfoDictionary:v10];
          goto LABEL_31;
        case 21:
          v12 = [(_ANEVirtualPlatformClient *)self loadModelNewInstance:v10];
          goto LABEL_31;
        case 23:
          v12 = [(_ANEVirtualPlatformClient *)self sessionHintWithModel:v10];
          goto LABEL_31;
        case 24:
          v12 = [(_ANEVirtualPlatformClient *)self validateNetworkCreateMLIR:v10];
          goto LABEL_31;
        case 25:
          v12 = [(_ANEVirtualPlatformClient *)self chunkedDataReceived:v10];
LABEL_31:
          v15 = v12;
          if (!v12)
          {
            goto LABEL_33;
          }

          v16 = IOCFSerialize(v12, 0);
          CFRelease(v15);
          break;
        default:
          v14 = gLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualPlatformClient callCFDictionaryMethod:];
          }

          method->var1 = -536870911;
LABEL_33:
          v16 = IOCFSerialize(v10, 0);
          break;
      }

      CFRelease(v10);
      if (v16)
      {
        BytePtr = CFDataGetBytePtr(v16);
        [(_ANEVirtualPlatformClient *)self copyBytesToIOSurface:BytePtr dataLength:CFDataGetLength(v16) ioSID:method->var3];
        method->var5 = CFDataGetLength(v16);
        CFRelease(v16);
      }

      else
      {
        v18 = gLogger;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient callCFDictionaryMethod:];
        }

        method->var5 = 0;
      }

      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient callCFDictionaryMethod:];
      }
    }

    else
    {
      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient callCFDictionaryMethod:];
      }
    }

    if (v9)
    {
      MEMORY[0x25F8A9280](v9, 0x1000C4077774924);
    }
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient callCFDictionaryMethod:?];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)asyncAvpHoldMessageReceived:(AppleVirtIONeuralEngineCFData *)received
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient asyncAvpHoldMessageReceived:];
  }

  self->_negotiatedCapabilityMask &= ~8uLL;
  received->var1 = -536870911;
  v7 = *MEMORY[0x277D85DE8];
}

- (id)requestWithVirtualANEModel:(VirtANEModel *)model
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (!model->var40)
  {
LABEL_5:
    v8 = objc_opt_new();
    if (model->var41)
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:model->var31[v9]];
        [v8 addObject:v10];

        ++v9;
      }

      while (v9 < model->var41);
    }

    v11 = objc_opt_new();
    v31 = v11;
    if (model->var42)
    {
      v12 = 0;
      while (1)
      {
        v13 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:model->var32[v12]];
        if (!v13)
        {
          break;
        }

        [v11 addObject:v13];

        if (++v12 >= model->var42)
        {
          goto LABEL_12;
        }
      }

      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
      }

      v22 = 0;
      goto LABEL_35;
    }

LABEL_12:
    v14 = objc_opt_new();
    if (model->var43)
    {
      v15 = 0;
      do
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:model->var33[v15]];
        [v14 addObject:v16];

        ++v15;
      }

      while (v15 < model->var43);
    }

    v29 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:model->var34];
    if (!v29)
    {
      v17 = gLogger;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
      }
    }

    if (model->var39)
    {
      v32 = objc_opt_new();
      if (model->var39)
      {
        v18 = 0;
        var38 = model->var38;
        while (1)
        {
          v20 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:*(var38 - 64)];
          if (!v20)
          {
            break;
          }

          v21 = [MEMORY[0x277CEE990] objectWithIOSurface:v20 statType:*var38];
          if (!v21)
          {
            v28 = gLogger;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
            }

            v22 = 0;
            v24 = v20;
            goto LABEL_34;
          }

          [v32 addObject:v21];

          ++v18;
          ++var38;
          if (v18 >= model->var39)
          {
            goto LABEL_33;
          }
        }

        v24 = gLogger;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
        }

        v22 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_33:
    v23 = MEMORY[0x277CEE9A0];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var35];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:model->var36];
    v22 = [v23 requestWithInputs:v5 inputIndices:v8 outputs:v31 outputIndices:v14 weightsBuffer:v29 perfStats:v32 procedureIndex:v24 sharedEvents:0 transactionHandle:v25];

LABEL_34:
LABEL_35:

    goto LABEL_36;
  }

  v6 = 0;
  while (1)
  {
    v7 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:model->var30[v6]];
    if (!v7)
    {
      break;
    }

    [v5 addObject:v7];

    if (++v6 >= model->var40)
    {
      goto LABEL_5;
    }
  }

  v8 = gLogger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
  }

  v22 = 0;
LABEL_36:

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)requestWithVirtualANEModelDictionary:(__CFDictionary *)dictionary
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = objc_opt_new();
  v4 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"inputArrayCount"];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = CFStringCreateWithFormat(0, 0, @"inputArray%u", v5);
      v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:v6];
      CFRelease(v6);
      v8 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:v7];
      if (!v8)
      {
        break;
      }

      [v47 addObject:v8];

      v5 = (v5 + 1);
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    v48 = gLogger;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
    }

    v34 = 0;
  }

  else
  {
LABEL_5:
    v48 = objc_opt_new();
    v9 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"inputArrayCount"];
    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = CFStringCreateWithFormat(0, 0, @"inputIndexArray%u", v10);
        v12 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:v11];
        CFRelease(v11);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
        [v48 addObject:v13];

        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }

    v46 = objc_opt_new();
    v14 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"outputArrayCount"];
    if (v14)
    {
      v15 = 0;
      while (1)
      {
        v16 = CFStringCreateWithFormat(0, 0, @"outputArray%u", v15);
        v17 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:v16];
        CFRelease(v16);
        v18 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:v17];
        if (!v18)
        {
          break;
        }

        [v46 addObject:v18];

        v15 = (v15 + 1);
        if (v14 == v15)
        {
          goto LABEL_12;
        }
      }

      v19 = gLogger;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
      }

      v34 = 0;
    }

    else
    {
LABEL_12:
      v19 = objc_opt_new();
      v20 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"outputArrayCount"];
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = CFStringCreateWithFormat(0, 0, @"outputIndexArray%u", v21);
          v23 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:v22];
          CFRelease(v22);
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
          [v19 addObject:v24];

          v21 = (v21 + 1);
        }

        while (v20 != v21);
      }

      v43 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDWeightsBufferIndex"]];
      if (!v43)
      {
        v25 = gLogger;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
        }
      }

      v26 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"perfStatsCount"];
      if (v26)
      {
        v45 = objc_opt_new();
        v27 = 0;
        while (1)
        {
          v28 = CFStringCreateWithFormat(0, 0, @"ioSIDPerfStats%d", v27);
          v29 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:v28];
          CFRelease(v28);
          v30 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:v29];
          if (!v30)
          {
            break;
          }

          v31 = CFStringCreateWithFormat(0, 0, @"perfStatsType%d", v27);
          v32 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:v31];
          CFRelease(v31);
          v33 = [MEMORY[0x277CEE990] objectWithIOSurface:v30 statType:v32];
          if (!v33)
          {
            v40 = gLogger;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
            }

            v34 = 0;
            v38 = v30;
            goto LABEL_39;
          }

          [v45 addObject:v33];

          v27 = (v27 + 1);
          if (v26 == v27)
          {
            goto LABEL_32;
          }
        }

        v38 = gLogger;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualPlatformClient requestWithVirtualANEModel:];
        }

        v34 = 0;
      }

      else
      {
        v45 = 0;
LABEL_32:
        v35 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"procedureIndex"];
        v36 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"transactionHandle"];
        v37 = MEMORY[0x277CEE9A0];
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v35];
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
        v34 = [v37 requestWithInputs:v47 inputIndices:v48 outputs:v46 outputIndices:v19 weightsBuffer:v43 perfStats:v45 procedureIndex:v38 sharedEvents:0 transactionHandle:v39];
      }

LABEL_39:
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (__CFDictionary)prepareValidationResultForSerialization:(__CFDictionary *)serialization
{
  if (!serialization)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(serialization);
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  if (Count >> 61)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * Count;
  }

  v7 = operator new[](v6, MEMORY[0x277D826F0]);
  v8 = v7;
  if (v5 >= 1 && !v7)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualPlatformClient prepareValidationResultForSerialization:];
    }

    return 0;
  }

  v11 = operator new[](v6, MEMORY[0x277D826F0]);
  v12 = v11;
  if (v5 < 1 || v11)
  {
    v13 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, serialization);
    CFRelease(serialization);
    CFDictionaryGetKeysAndValues(MutableCopy, v8, v12);
    if (v5 >= 1)
    {
      v14 = v8;
      v15 = v12;
      do
      {
        v16 = *v14;
        v17 = CFGetTypeID(*v14);
        if (v17 == CFNumberGetTypeID())
        {
          v18 = CFStringCreateWithFormat(v13, 0, @"%@", v16);
          CFDictionaryRemoveValue(MutableCopy, v16);
          CFDictionarySetValue(MutableCopy, v18, *v15);
          CFRelease(v18);
        }

        ++v15;
        ++v14;
        --v5;
      }

      while (v5);
    }

    if (v12)
    {
      MEMORY[0x25F8A9280](v12, 0x80C40B8603338);
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualPlatformClient prepareValidationResultForSerialization:];
    }

    MutableCopy = 0;
  }

  if (v8)
  {
    MEMORY[0x25F8A9280](v8, 0x80C40B8603338);
  }

  return MutableCopy;
}

+ (id)generateExpectedBaseDirectoryWith:(id)with withCSIdentity:(id)identity withVMID:(id)d fileSubDirectory:(id)directory
{
  withCopy = with;
  identityCopy = identity;
  dCopy = d;
  directoryCopy = directory;
  directoryCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", withCopy, identityCopy, dCopy, directoryCopy];

  return directoryCopy;
}

+ (id)generateExpectedPathForFileName:(id)name withANEBaseDirectory:(id)directory withCSIdentity:(id)identity withVMID:(id)d fileSubDirectory:(id)subDirectory
{
  nameCopy = name;
  v12 = [_ANEVirtualPlatformClient generateExpectedBaseDirectoryWith:directory withCSIdentity:identity withVMID:d fileSubDirectory:subDirectory];
  v13 = [v12 stringByAppendingPathComponent:nameCopy];

  return v13;
}

- (id)generatedExpectedBaseDirectoryWithFileType:(unsigned int)type withInputDictionary:(__CFDictionary *)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [_ANEVirtualPlatformClient getCodeSigningIdentity:dictionary];
  v9 = v8;
  if (!v8 || ![v8 length])
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient generatedExpectedBaseDirectoryWithFileType:withInputDictionary:];
    }

    goto LABEL_28;
  }

  if (type == 2)
  {
    v18 = [(__CFDictionary *)dictionary objectForKeyedSubscript:@"uuid"];
    v13 = v18;
    if (v18 && [v18 length])
    {
      anebaseDirectory = self->_anebaseDirectory;
      guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
      v17 = [_ANEVirtualPlatformClient generateExpectedBaseDirectoryWith:anebaseDirectory withCSIdentity:v9 withVMID:guestBuildVersion fileSubDirectory:v13];
      goto LABEL_15;
    }

    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient generatedExpectedBaseDirectoryWithFileType:withInputDictionary:];
    }
  }

  else
  {
    if (type != 1)
    {
      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient generatedExpectedBaseDirectoryWithFileType:withInputDictionary:];
      }

      goto LABEL_28;
    }

    v10 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"ioSIDModelInputPath"];
    if (!v10)
    {
      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient generatedExpectedBaseDirectoryWithFileType:withInputDictionary:];
      }

      goto LABEL_28;
    }

    v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:dictionary key:@"modelInputPathLength"];
    if (!v11)
    {
      v13 = gLogger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient generatedExpectedBaseDirectoryWithFileType:withInputDictionary:];
      }

      goto LABEL_28;
    }

    v12 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v10 classType:objc_opt_class() length:v11];
    v13 = v12;
    if (v12 && [v12 length])
    {
      v14 = self->_anebaseDirectory;
      guestBuildVersion = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
      v16 = [MEMORY[0x277CEE970] hexStringForString:v13];
      v17 = [_ANEVirtualPlatformClient generateExpectedBaseDirectoryWith:v14 withCSIdentity:v9 withVMID:guestBuildVersion fileSubDirectory:v16];

LABEL_15:
      goto LABEL_29;
    }

    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient generatedExpectedBaseDirectoryWithFileType:withInputDictionary:];
    }
  }

LABEL_28:
  v17 = 0;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)generateExpectedModelFilePathFromDictionary:(__CFDictionary *)dictionary error:(id *)error
{
  error = [(__CFDictionary *)dictionary objectForKeyedSubscript:@"genericFileName", error];
  dictionary = [(_ANEVirtualPlatformClient *)self generateExpectedPathForFileName:error withFileType:[_ANEVirtualPlatformClient withInputDictionary:"dictionaryGetUInt64ForKey:key:" dictionaryGetUInt64ForKey:dictionary key:@"fileType"], dictionary];

  return dictionary;
}

+ (id)getPrecompiledModelPath:(id)path error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  aSelector = a2;
  v30 = 0;
  v25 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v30];
  v7 = v30;

  if (v7)
  {
    if (error)
    {
      v8 = v7;
      v9 = 0;
      *error = v7;
      goto LABEL_19;
    }
  }

  else if (v25)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v25;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          pathExtension = [v14 pathExtension];
          v16 = [pathExtension isEqualToString:@"hwx"];

          if (v16)
          {
            v9 = [pathCopy stringByAppendingPathComponent:v14];

            goto LABEL_19;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (error)
    {
      v17 = MEMORY[0x277CEE968];
      v18 = NSStringFromSelector(aSelector);
      *error = [v17 fileNotFoundErrorForMethod:v18];
    }
  }

  else if (error)
  {
    v19 = MEMORY[0x277CEE968];
    v20 = NSStringFromSelector(a2);
    *error = [v19 fileNotFoundErrorForMethod:v20];
  }

  v9 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)objectWithIOSurfaceID:(unsigned int)d
{
  v3 = [(_ANEVirtualPlatformClient *)self getIOSurface:d];
  v4 = MEMORY[0x277CEE978];

  return [v4 objectWithIOSurfaceNoRetain:v3 startOffset:&unk_286FC5EE8];
}

- (void)init:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Cannot create command line Directory %@", v4, v5);
}

- (void)init:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Cannot create command line file %@", v4, v5);
}

- (void)init:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)init:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)init:.cold.5()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_12(v3, 5.778e-34, v1, v4);
  *(v5 + 12) = 2112;
  *(v5 + 14) = v6;
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient filepath:%@ ", v7, v8);
}

+ (void)getCommandInputSize:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)getCommandInputSize:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient  _ANEVirtualPlatformClient getCommandInputSize: %lu", v4, v5);
}

- (void)getANEModelKey:caller:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)getOptionsFromDictionary:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANEIOSIDOptions not found!", v5);
}

- (void)getOptionsFromDictionary:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANEOptionsLength not found!", v5);
}

- (void)constructANEModel:modelDirectory:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to extract UUID, generating new UUID", v5);
}

- (void)constructANEModel:modelDirectory:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@ cacheURLIdentifier=%@", v4, v5);
}

- (void)constructANEModel:modelDirectory:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: cacheURLIdentifierSource:%lld", v4, v5);
}

- (void)constructANEModel:modelDirectory:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: sourceURLPathLen:%llu", v4, v5);
}

- (void)constructANEModel:modelDirectory:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: sourceURLPath=%@", v4, v5);
}

- (void)constructANEModel:modelDirectory:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)compileModelDictionary:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient createAllModelFilesOnHost modelDirectory=%@", v4, v5);
}

- (void)compileModelDictionary:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: FAILED to create model files on host", v5);
}

- (void)loadModelDictionary:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : loadModel FAILED : Precompiled option set but could not get path to precompiled model", v5);
}

- (void)loadModelDictionary:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient ERROR : cannot create model! cacheURLIdenfiers missing AND source models missing", v5);
}

- (void)loadModelNewInstance:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25(v1, v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)loadModelNewInstance:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25(v1, v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)loadModelNewInstance:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to URLs for weight file paths!", v5);
}

- (void)loadModelNewInstance:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: BEGIN clientCall loadModelNewInstance model=%@!", v4, v5);
}

- (void)loadModelNewInstance:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)loadModelNewInstance:.cold.6()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: END clientCall loadModelNewInstance updatedModel=%@!", v4, v5);
}

- (void)loadModelNewInstance:.cold.7()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR could not serialize and write modelAttributes to output ioSurface!", v5);
}

- (void)loadModelNewInstance:.cold.8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR value for key kVirtANEModelAttributeLength not found, cannot determine available space!", v5);
}

- (void)loadModelNewInstance:.cold.9()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR could not get IOSurface to return model!", v5);
}

- (void)loadModelNewInstance:.cold.10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to generate cacheURLIdentifier from cacheURLIdentifierData!", v5);
}

- (void)loadModelNewInstance:.cold.11()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to get cacheURLIdentifierData!", v5);
}

- (void)loadModelNewInstance:.cold.12()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)loadModelNewInstance:.cold.13()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to get modelInstParamsData!", v5);
}

- (void)loadModelNewInstance:.cold.14()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to convert uuidString to NSUUID, model data location unknown!", v5);
}

- (void)loadModelNewInstance:.cold.15()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to read uuidString, model data location unknown!", v5);
}

- (void)loadModelNewInstance:.cold.16()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to create outputDictionary!", v5);
}

- (void)loadModelNewInstanceLegacy:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient cacheURLIdentifier=%@", v4, v5);
}

- (void)loadModelNewInstanceLegacy:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient loadModelNewInstanceDictionary ERROR : cannot create model! cacheURLIdenfiers missing AND source models missing", v5);
}

- (void)loadModelNewInstanceLegacy:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient loadModelDictionary success=%llu", v4, v5);
}

- (void)unLoadModel:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient model does not exist key=%@!", v4, v5);
}

- (void)unLoadModel:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient model key is nil!", v5);
}

- (void)unLoadModelDictionary:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient unLoadModelDictionary could not extract options dictionary from input dictionary", v5);
}

- (void)unLoadModelDictionary:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient unLoadModelDictionary FAILED : model in local cache is nil", v5);
}

- (void)unLoadModelDictionary:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient unLoadModelDictionary FAILED : programHandle cannot be 0", v5);
}

- (void)evaluateWithModel:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 840);
  v5 = OUTLINED_FUNCTION_12(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_23(v5, v6, v7);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient evaluateWithModel programHandle=%llu", v8, v9);
}

- (void)evaluateWithModel:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient evaluate model key is nil!", v5);
}

- (void)evaluateWithModelDictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)evaluateWithModelDictionary:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: No optionsIOSID found", v5);
}

- (void)evaluateWithModelDictionary:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)evaluateWithModelDictionary:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: creating directory at path=%@", v4, v5);
}

- (void)evaluateWithModelDictionary:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)evaluateWithModelDictionary:.cold.6()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: FAILED to generate aneRequest", v5);
}

- (void)evaluateWithModelDictionary:.cold.7()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: FAILED to get model from local cache", v5);
}

- (void)evaluateWithModelDictionary:.cold.8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: FAILED to get programHandle", v5);
}

- (void)mapIOSurfacesWithModel:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient mapIOSurfaces model key is nil!", v5);
}

- (void)compiledModelExistsFor:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)compiledModelExistsFor:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)compiledModelExistsFor:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeCompiledModel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeCompiledModelDictionary:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient purgeCompiledModelDictionary NON-FATAL : Could not find model in local cache", v5);
}

- (void)purgeCompiledModelDictionary:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient purgeCompiledModelDictionary FAILED : could not get model", v5);
}

- (void)purgeCompiledModelDictionary:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient purgeCompiledModelDictionary could not clear out tmp directory!", v5);
}

- (void)validateNetworkCreate:(void *)a1 .cold.1(void *a1)
{
  v1 = OUTLINED_FUNCTION_22(a1);
  OUTLINED_FUNCTION_6(v1, 5.778e-34);
  OUTLINED_FUNCTION_30(&dword_25DF54000, v2, v3, "%@ validateNetworkCreate landed in host dictionary : %@");
}

- (void)validateNetworkCreate:(void *)a1 .cold.2(void *a1)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  OUTLINED_FUNCTION_21(v1, 5.7779e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)validateNetworkCreate:(void *)a1 .cold.3(void *a1)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  OUTLINED_FUNCTION_21(v1, 5.7779e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)validateNetworkCreate:(void *)a1 .cold.4(void *a1)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  OUTLINED_FUNCTION_21(v1, 5.7779e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)validateNetworkCreate:(void *)a1 .cold.5(void *a1)
{
  v1 = OUTLINED_FUNCTION_31(a1);
  OUTLINED_FUNCTION_21(v1, 5.7779e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)validateNetworkCreate:(void *)a1 .cold.6(void *a1)
{
  v1 = OUTLINED_FUNCTION_22(a1);
  OUTLINED_FUNCTION_6(v1, 5.778e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)validateNetworkCreate:.cold.8()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)validateNetworkCreate:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25(v1, v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)validateNetworkCreate:(void *)a1 .cold.10(void *a1)
{
  v1 = OUTLINED_FUNCTION_22(a1);
  OUTLINED_FUNCTION_6(v1, 5.778e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)validateNetworkCreate:(void *)a1 .cold.11(void *a1)
{
  v1 = OUTLINED_FUNCTION_22(a1);
  OUTLINED_FUNCTION_6(v1, 5.778e-34);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)validateNetworkCreate:.cold.12()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ validateNetworkCreate FAILED IOSurface write : serialized result is greater than IOSurface size", v5);
}

- (void)validateNetworkCreate:.cold.13()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12(v1, 5.778e-34, v2, v3);
  *(v4 + 12) = 1024;
  *(v4 + 14) = v5;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);
}

- (void)validateNetworkCreate:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateNetworkCreate:.cold.15()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ validateNetworkCreate FAILED to serialize validation_result", v5);
}

- (void)validateNetworkCreate:.cold.16()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ validateNetworkCreate ERROR validation_result nil", v5);
}

- (void)validateNetworkCreate:(void *)a1 .cold.17(void *a1)
{
  v3 = OUTLINED_FUNCTION_22(a1);
  v4 = *v2;
  OUTLINED_FUNCTION_21(v3, 5.778e-34);
  *(v1 + 12) = 2048;
  *(v1 + 14) = v5;
  OUTLINED_FUNCTION_30(&dword_25DF54000, v6, v7, "%@ validateNetworkCreate success=%lld");
}

- (void)validateNetworkCreate:.cold.18()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ ERROR validationResultOutputIOSID is 0!", v5);
}

- (void)validateNetworkCreate:.cold.19()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ ERROR: Failed to get milTextData!", v5);
}

- (void)validateNetworkCreate:.cold.20()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ ERROR: Failed to get milTextDataIOSurface!", v5);
}

- (void)validateNetworkCreate:.cold.21()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ ERROR: milTextDataLength is 0!", v5);
}

- (void)validateNetworkCreate:.cold.22()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@ ERROR: milTextDataIOSID is 0!", v5);
}

- (void)echo:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)echoDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceInfoDictionary:(uint64_t)a1 .cold.1(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  OUTLINED_FUNCTION_17();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)validateNetworkCreateMLIR:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to get input validationParams!", v5);
}

- (void)validateNetworkCreateMLIR:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)validateNetworkCreateMLIR:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR No validationParamsIOSID found!", v5);
}

- (void)chunkedDataReceived:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to write data, unable to generate a destination filePath from inDictionary data!", v5);
}

- (void)chunkedDataReceived:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Generated expected model file path=%@", v4, v5);
}

- (void)chunkedDataReceived:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: File found at path=%@", v4, v5);
}

- (void)chunkedDataReceived:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Removing existing file with the same name at path=%@", v4, v5);
}

- (void)chunkedDataReceived:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)chunkedDataReceived:.cold.6()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to write data, unable to extract destination directoryPath!", v5);
}

- (void)chunkedDataReceived:.cold.7()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to write data, dataIOSID is 0!", v5);
}

- (void)chunkedDataReceived:.cold.8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to write data, dataSize is 0!", v5);
}

- (void)chunkedDataReceived:.cold.9()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to create outputDictionary!", v5);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Successfully created file with data at path=%@", v4, v5);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Successfully appended data to file at path=%@", v4, v5);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR BAD_ARGUMENT passed in dataLength is 0!", v5);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.6()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR BAD_ARGUMENT passed in ioSID is 0!", v5);
}

- (void)createModelFileAtPath:fromIOSID:withDataLength:shouldAppend:.cold.7()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR BAD_ARGUMENT passed in filePathComplete is nil!", v5);
}

+ (void)getDataFromIOSurface:withSize:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR extracted NSData is nil!", v5);
}

+ (void)getDataFromIOSurface:withSize:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT passed in dataSize is nil!", v5);
}

+ (void)getDataFromIOSurface:withSize:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT passed in ioSurfaceRef is nil!", v5);
}

- (void)getObjectFromIOSurfaceID:classType:length:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getObjectFromIOSurfaceID:classType:length:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getObjectFromIOSurfaceID:classType:length:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeDictionaryToIOSurfaceID:dict:writtenDataLength:ioSurfaceMaxSize:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : failed to serialize dict", v5);
}

- (void)writeDictionaryToIOSurfaceID:dict:writtenDataLength:ioSurfaceMaxSize:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : ioSurfaceMaxSize is 0!", v5);
}

- (void)writeDictionaryToIOSurfaceID:dict:writtenDataLength:ioSurfaceMaxSize:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : dict is nil!", v5);
}

- (void)writeDictionaryToIOSurfaceID:dict:writtenDataLength:ioSurfaceMaxSize:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : ioSID is 0!", v5);
}

- (void)copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in ioSurfaceMaxSize is 0!", v5);
}

- (void)copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in ioSID is 0!", v5);
}

- (void)copyDictionaryUsingJSONSerialization:toIOSurfaceWithID:withMaxSize:outWrittentDataSize:.cold.6()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in dictionary is nil!", v5);
}

- (void)writeObjectToIOSurfaceID:obj:writtenDataLength:ioSurfaceMaxSize:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)writeObjectToIOSurfaceID:obj:writtenDataLength:ioSurfaceMaxSize:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : Failed to create dataArchive for object!", v5);
}

- (void)writeObjectToIOSurfaceID:obj:writtenDataLength:ioSurfaceMaxSize:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : obj is nil!", v5);
}

- (void)printIOSurfaceDataInBytes:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@ ANEVirtualPlatformClient IOSurfaceLength=%llu\n", v4, v5);
}

- (void)printIOSurfaceDataInBytes:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)printIOSurfaceDataInBytes:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getArrayFromIOSurfaceID:localData:localDataLength:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)doCreateModelFile:aneModelKey:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient VMID: %@", v4, v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient: hwxString=%@", v4, v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: hwxString not detected", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: use guest hwx", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.6()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: Checking if hwx target directory already exists", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.7()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doCreateModelFile:aneModelKey:.cold.8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: use local hwx", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.9()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: Creating new model by decoding hwx file", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient write model.hwx failed", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.11()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: modelHWXLength is 0", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.13()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient Write model.net failed", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.14()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient write model.shape failed", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.15()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient write model.weight failed", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.16()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient write net.plist failed", v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.17()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient Write %@ failed", v4, v5);
}

- (void)doCreateModelFile:aneModelKey:.cold.18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25(v1, v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)doCreateModelFile:aneModelKey:.cold.19()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient: anemodelKey is nil!", v5);
}

+ (void)isFileModificationTimeStampSame:timeSince1970:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isFileModificationTimeStampSame:timeSince1970:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isFileModificationTimeStampSame:timeSince1970:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)needToSaveFile:fileName:timeSince1970:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)needToSaveFile:fileName:timeSince1970:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)createLastModificationTimeStampFile:fileName:timeSince1970:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)createLastModificationTimeStampFile:fileName:timeSince1970:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getCodeSigningIdentity:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: Removed files at existing path=%@", v4, v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: WROTE ALL LLIR FILES", v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : bundleNameData is nil!", v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.9()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : bundleNameDataLength is 0!", v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.12()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : FAILED to get NSFileManager object", v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.13()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : llirDataSize is 0! No data to parse", v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.14()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : ioSID is 0! could not find LLIR bundle ioSurface", v5);
}

- (void)createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:.cold.15()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : destDirectory is nil! cannot create LLIR bundle", v5);
}

- (void)createAllModelFilesOnHost:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)createAllModelFilesOnHost:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: fileCount=0, kVirtANENumModelFiles is not set (expecting a hwx or llir bundle) sent with a specific identifier!", v5);
}

- (void)createAllModelFilesOnHost:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createAllModelFilesOnHost:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.7781e-34);
  *(v4 + 22) = 1024;
  *(v4 + 24) = 0;
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

- (void)createAllModelFilesOnHost:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: createAllModelFilesOnHost skipping no-name file", v5);
}

- (void)createAllModelFilesOnHost:.cold.6()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: createAllModelFilesOnHost file %@ already exists in directory, skipping", v4, v5);
}

- (void)createAllModelFilesOnHost:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)createAllModelFilesOnHost:.cold.8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: invalid IOSID=0 for LLIR IOSurface!", v5);
}

- (void)createAllModelFilesOnHost:.cold.9()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)createAllModelFilesOnHost:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25(v1, v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)createAllModelFilesOnHost:.cold.11()
{
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_24(v4, v5, v6);
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x12u);
}

- (void)createAllModelFilesOnHost:.cold.12()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: kVirtANEIOSIDModelInputPath or  kVirtANEModelInputPathLength is not set!", v5);
}

- (void)createANEModelInstanceParameters:modelUUID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient createANEModelInstanceParameters model uuid :%@", v4, v5);
}

- (void)createOptionFilesForCompilation:aneModelKey:options:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient No optional compiler files.", v5);
}

- (void)createOptionFilesForCompilation:aneModelKey:options:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient Write kANEFCompilerOptionsFilenameKey failed", v5);
}

- (void)createOptionFilesForCompilation:aneModelKey:options:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient Write kANEFCompilerOptionsFilenameKey:%@", v4, v5);
}

- (void)createOptionFilesForCompilation:aneModelKey:options:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient No kANEFCompilerOptionsFilenameKey.", v5);
}

- (void)createOptionFilesForCompilationDictionary:aneModelKey:options:modelDirectory:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANEIOSIDCompilerOptionsFile not found!", v5);
}

- (void)createOptionFilesForCompilationDictionary:aneModelKey:options:modelDirectory:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANECompilerOptionsFileLength not found!", v5);
}

- (void)doRemoveModelFile:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient removing %@ ", v4, v5);
}

- (void)doRemoveModelFile:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)updateVirtualANEModel:model:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient keyarchive error %@", v4, v5);
}

- (void)updateVirtualANEModel:model:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  v5 = OUTLINED_FUNCTION_12(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_24(v5, v6, v7);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
}

- (void)updateVirtualANEModel:model:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)updateVirtualANEModel:model:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: model is nil", v5);
}

- (void)updateVirtualANEModel:model:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient Failed to load ANEModel", v5);
}

- (void)updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient Checking ANEIOSIDModelParameters", v5);
}

- (void)updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient Found ANEIOSIDModelParameters %@", v4, v5);
}

- (void)updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient end ANEIOSIDModelParameters %@", v4, v5);
}

- (void)updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:.cold.7()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANEModelAttributeLength not found!", v5);
}

- (void)updatePerformanceStatsDictionary:aneRequest:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@: no ioSIDPerformanceStatsRaw found", v5);
}

- (void)updateErrorValue:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualPlatformClient error=%@", v4, v5);
}

- (void)updateErrorValueForIOSID:error:dictToUpdate:maxIOSurfaceSize:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : failed to write error data to IOSurface", v5);
}

- (void)updateErrorValueForIOSID:error:dictToUpdate:maxIOSurfaceSize:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR : BAD_ARGUMENT : errorIOSurface is nil! cannot update", v5);
}

- (void)updateErrorValueDictionary:error:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANEIOSIDErrorValue not found!", v5);
}

- (void)doModelAttributeUpdateDictionary:dictionary:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualPlatformClient kVirtANEIOSIDModelAttributes not found!", v5);
}

- (void)getDeviceInfo:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_17();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)exchangeBuildVersionInfo:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR productName is emptyString or nil", v5);
}

- (void)exchangeBuildVersionInfo:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR buildVersion is emptyString or nil", v5);
}

- (void)exchangeBuildVersionInfo:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@: ANEVirtualClient exchangeBuildVersionInfo: hostBuildVersion=%@\n", v4, v5);
}

- (void)copyBytesToIOSurface:dataLength:ioSID:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualClient ioSurfaceRef pointer null\n", v5);
}

- (void)copyBytesToIOSurface:dataLength:ioSID:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ANEVirtualClient ioSID invalid\n", v5);
}

+ (void)printStruct:(int *)a1 .cold.1(int *a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v24 = a1[219];
  v26 = *(a1 + 111);
  v28 = a1[225];
  v29 = *(a1 + 113);
  v30 = a1[228];
  v31 = *(a1 + 115);
  v32 = a1[488];
  v33 = *(a1 + 245);
  v34 = *(a1 + 246);
  v36 = a1[623];
  v38 = a1[625];
  v40 = a1[627];
  v12 = a1[7];
  v41 = *(a1 + 314);
  v42 = *(a1 + 315);
  v44 = a1[633];
  v45 = *(a1 + 317);
  v46 = a1[636];
  v47 = *(a1 + 319);
  v48 = a1[640];
  v49 = *(a1 + 321);
  v50 = a1[644];
  v51 = *(a1 + 323);
  v52 = a1[648];
  v53 = *(a1 + 325);
  v54 = a1[652];
  v55 = *(a1 + 327);
  v56 = a1[656];
  v57 = *(a1 + 329);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  v16 = *(a1 + 104);
  v17 = *(a1 + 105);
  v18 = *(a1 + 106);
  v19 = *(a1 + 856);
  v20 = *(a1 + 857);
  v21 = a1[215];
  v22 = *(a1 + 108);
  v23 = a1[218];
  v25 = a1[220];
  v27 = a1[224];
  v35 = a1[622];
  v37 = a1[624];
  v39 = a1[626];
  v43 = a1[632];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getBytesFromIOSurfaceID:dest:dataLength:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)callCFDictionaryMethod:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 16);
  v5 = OUTLINED_FUNCTION_12(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_23(v5, v6, v7);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@:ANEVirtualPlatformClient callCFDictionaryMethod dictionaryDataSize=%llu", v8, v9);
}

- (void)callCFDictionaryMethod:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)callCFDictionaryMethod:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)callCFDictionaryMethod:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)callCFDictionaryMethod:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient callCFDictionaryMethod cfDict FAILED to serialize dictionary\n", v5);
}

- (void)callCFDictionaryMethod:.cold.6()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 24);
  v5 = OUTLINED_FUNCTION_12(v3, 5.778e-34, v1, v4);
  OUTLINED_FUNCTION_23(v5, v6, v7);
  OUTLINED_FUNCTION_13(&dword_25DF54000, "%@:ANEVirtualPlatformClient callCFDictionaryMethod output dictionaryDataSize=%llu ", v8, v9);
}

- (void)callCFDictionaryMethod:.cold.7()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient callCFDictionaryMethod FAILED to get CFDictionary ", v5);
}

- (void)asyncAvpHoldMessageReceived:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = 17;
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)requestWithVirtualANEModel:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient ioSIDInputArray is nil ", v5);
}

- (void)requestWithVirtualANEModel:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient ioSIDOutputArray is nil ", v5);
}

- (void)requestWithVirtualANEModel:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient weightsbuffer is nil ", v5);
}

- (void)requestWithVirtualANEModel:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient _ANEPerformanceStatsIOSurface obj is nil ", v5);
}

- (void)requestWithVirtualANEModel:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_14(&dword_25DF54000, v3, v4, "%@:ANEVirtualPlatformClient PerfStats is nil ", v5);
}

+ (void)prepareValidationResultForSerialization:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)prepareValidationResultForSerialization:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)generatedExpectedBaseDirectoryWithFileType:withInputDictionary:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to generate expected model file path, could not get uuidString from input dictionary!", v5);
}

- (void)generatedExpectedBaseDirectoryWithFileType:withInputDictionary:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to generate expected model file path, could not get srcHashDirectory from modelInputPathIOSID!", v5);
}

- (void)generatedExpectedBaseDirectoryWithFileType:withInputDictionary:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to generate expected model file path, modelInputPathDataSize is 0!", v5);
}

- (void)generatedExpectedBaseDirectoryWithFileType:withInputDictionary:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to generate expected model file path, modelInputPathIOSID is 0!", v5);
}

- (void)generatedExpectedBaseDirectoryWithFileType:withInputDictionary:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)generatedExpectedBaseDirectoryWithFileType:withInputDictionary:.cold.6()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_25DF54000, v3, v4, "%@: ERROR failed to generate expected model file path, csIdentity needed but data not found in input dictionary!", v5);
}

@end