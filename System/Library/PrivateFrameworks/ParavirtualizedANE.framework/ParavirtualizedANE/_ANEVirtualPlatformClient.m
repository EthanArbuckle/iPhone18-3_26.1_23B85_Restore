@interface _ANEVirtualPlatformClient
+ (BOOL)createLastModificationTimeStampFile:(id)a3 fileName:(id)a4 timeSince1970:(double)a5;
+ (BOOL)isFileModificationTimeStampSame:(id)a3 timeSince1970:(double)a4;
+ (BOOL)isValidBufferSize:(unint64_t)a3;
+ (BOOL)needToSaveFile:(id)a3 fileName:(id)a4 timeSince1970:(double)a5;
+ (__CFDictionary)prepareValidationResultForSerialization:(__CFDictionary *)a3;
+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)a3 key:(__CFString *)a4;
+ (const)dictionaryGetDataBytesForKey:(__CFDictionary *)a3 key:(__CFString *)a4;
+ (id)generateExpectedBaseDirectoryWith:(id)a3 withCSIdentity:(id)a4 withVMID:(id)a5 fileSubDirectory:(id)a6;
+ (id)generateExpectedPathForFileName:(id)a3 withANEBaseDirectory:(id)a4 withCSIdentity:(id)a5 withVMID:(id)a6 fileSubDirectory:(id)a7;
+ (id)getCodeSigningIdentity:(__CFDictionary *)a3;
+ (id)getDataFromIOSurface:(__IOSurface *)a3 withSize:(unint64_t)a4;
+ (id)getPrecompiledModelPath:(id)a3 error:(id *)a4;
+ (id)sharedConnection:(id)a3;
+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)a3 key:(__CFString *)a4;
+ (unint64_t)getCommandInputSize:(unint64_t)a3;
+ (void)initialize;
+ (void)printStruct:(VirtANEModel *)a3;
- (BOOL)copyDictionaryUsingJSONSerialization:(id)a3 toIOSurfaceWithID:(unsigned int)a4 withMaxSize:(unint64_t)a5 outWrittentDataSize:(unint64_t *)a6;
- (BOOL)createLLIRBundleOnDiskFromIOSurfaceWithID:(unsigned int)a3 destDirectory:(id)a4 llirDataSize:(unint64_t)a5;
- (BOOL)createModelFileAtPath:(id)a3 fromIOSID:(unsigned int)a4 withDataLength:(unint64_t)a5 shouldAppend:(BOOL)a6;
- (BOOL)writeObjectToIOSurfaceID:(unsigned int)a3 obj:(id)a4 writtenDataLength:(unint64_t *)a5 ioSurfaceMaxSize:(unint64_t)a6;
- (__CFDictionary)chunkedDataReceived:(__CFDictionary *)a3;
- (__CFDictionary)compileModelDictionary:(__CFDictionary *)a3;
- (__CFDictionary)compiledModelExistsForDictionary:(__CFDictionary *)a3;
- (__CFDictionary)compiledModelExistsMatchingHashDictionary:(__CFDictionary *)a3;
- (__CFDictionary)echoDictionary:(__CFDictionary *)a3;
- (__CFDictionary)getDeviceInfoDictionary:(__CFDictionary *)a3;
- (__CFDictionary)loadModelDictionary:(__CFDictionary *)a3;
- (__CFDictionary)loadModelNewInstance:(__CFDictionary *)a3;
- (__CFDictionary)loadModelNewInstanceLegacy:(__CFDictionary *)a3;
- (__CFDictionary)purgeCompiledModelDictionary:(__CFDictionary *)a3;
- (__CFDictionary)purgeCompiledModelMatchingHashDictionary:(__CFDictionary *)a3;
- (__CFDictionary)sessionHintWithModel:(__CFDictionary *)a3;
- (__CFDictionary)unLoadModelDictionary:(__CFDictionary *)a3;
- (__CFDictionary)validateNetworkCreateMLIR:(__CFDictionary *)a3;
- (id)constructANEModel:(__CFDictionary *)a3 modelDirectory:(id)a4;
- (id)createANEModelInstanceParameters:(__CFDictionary *)a3 modelUUID:(id)a4;
- (id)createAllModelFilesOnHost:(__CFDictionary *)a3;
- (id)doCreateModelFile:(VirtANEModel *)a3 aneModelKey:(id)a4;
- (id)generateExpectedModelFilePathFromDictionary:(__CFDictionary *)a3 error:(id *)a4;
- (id)generatedExpectedBaseDirectoryWithFileType:(unsigned int)a3 withInputDictionary:(__CFDictionary *)a4;
- (id)getANEModelKey:(__CFDictionary *)a3 caller:(id)a4;
- (id)getObjectFromIOSurfaceID:(unsigned int)a3 classType:(Class)a4 length:(unint64_t)AllocSize;
- (id)getOptionsFromDictionary:(__CFDictionary *)a3;
- (id)init:(id)a3;
- (id)objectWithIOSurfaceID:(unsigned int)a3;
- (id)removeAllModelFiles:(id)a3;
- (id)requestWithVirtualANEModel:(VirtANEModel *)a3;
- (id)requestWithVirtualANEModelDictionary:(__CFDictionary *)a3;
- (id)updateOptions:(id)a3 virtualANEModel:(VirtANEModel *)a4;
- (id)updateOptionsDictionary:(id)a3 directoryPath:(id)a4;
- (void)asyncAvpHoldMessageReceived:(AppleVirtIONeuralEngineCFData *)a3;
- (void)callCFDictionaryMethod:(AppleVirtIONeuralEngineCFData *)a3;
- (void)compileModel:(VirtANEModel *)a3;
- (void)compiledModelExistsFor:(VirtANEModel *)a3;
- (void)compiledModelExistsMatchingHash:(VirtANEModel *)a3;
- (void)copyBytesToIOSurface:(char *)a3 dataLength:(unsigned int)a4 ioSID:(unsigned int)a5;
- (void)createOptionFilesForCompilation:(VirtANEModel *)a3 aneModelKey:(id)a4 options:(id)a5;
- (void)createOptionFilesForCompilationDictionary:(__CFDictionary *)a3 aneModelKey:(id)a4 options:(id)a5 modelDirectory:(id)a6;
- (void)dealloc;
- (void)doModelAttributeUpdate:(id)a3 virtualANEModel:(VirtANEModel *)a4;
- (void)doModelAttributeUpdateDictionary:(id)a3 dictionary:(__CFDictionary *)a4;
- (void)doRemoveModelFile:(VirtANEModel *)a3;
- (void)echo:(VirtANEModel *)a3;
- (void)evaluateWithModel:(VirtANEModel *)a3;
- (void)evaluateWithModelDictionary:(__CFDictionary *)a3;
- (void)exchangeBuildVersionInfo:(BuildVersionInfo *)a3;
- (void)getArrayFromIOSurfaceID:(unsigned int)a3 localData:(unsigned int *)a4 localDataLength:(unint64_t)a5;
- (void)getBytesFromIOSurfaceID:(unsigned int)a3 dest:(char *)a4 dataLength:(unint64_t)a5;
- (void)getDeviceInfo:(DeviceInfo *)a3;
- (void)loadModel:(VirtANEModel *)a3;
- (void)mapIOSurfacesWithModel:(VirtANEModel *)a3;
- (void)modelAction:(unsigned __int16)a3 buffer:(void *)a4 bufferSize:(unint64_t)a5;
- (void)printIOSurfaceDataInBytes:(unsigned int)a3;
- (void)purgeCompiledModel:(VirtANEModel *)a3;
- (void)purgeCompiledModelMatchingHash:(VirtANEModel *)a3;
- (void)storeGuestBuildVersion:(BuildVersionInfoLegacy *)a3;
- (void)unLoadModel:(VirtANEModel *)a3;
- (void)updateErrorValue:(VirtANEModel *)a3 error:(id)a4;
- (void)updateErrorValueDictionary:(__CFDictionary *)a3 error:(id)a4;
- (void)updatePerformanceStats:(VirtANEModel *)a3 aneRequest:(id)a4;
- (void)updatePerformanceStatsDictionary:(__CFDictionary *)a3 aneRequest:(id)a4;
- (void)updateVirtualANEModel:(VirtANEModel *)a3 model:(id)a4;
- (void)updateVirtualANEModelDictionary:(__CFDictionary *)a3 model:(id)a4 cacheURLIdentifierToGuest:(BOOL)a5;
- (void)validateNetworkCreate:(__CFDictionary *)a3;
@end

@implementation _ANEVirtualPlatformClient

+ (void)initialize
{
  gLogger = os_log_create("com.apple.ane", "ANEVirtualPlatformClient");

  MEMORY[0x2821F96F8]();
}

+ (id)sharedConnection:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46___ANEVirtualPlatformClient_sharedConnection___block_invoke;
  v10[3] = &unk_2799FDB30;
  v11 = v4;
  v12 = a2;
  v5 = +[_ANEVirtualPlatformClient sharedConnection:]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[_ANEVirtualPlatformClient sharedConnection:]::onceToken, v10);
  }

  v7 = +[_ANEVirtualPlatformClient sharedConnection:]::client;
  v8 = +[_ANEVirtualPlatformClient sharedConnection:]::client;

  return v7;
}

- (id)init:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v8 = [MEMORY[0x277CEE948] sharedConnection];
  aneClient = v5->_aneClient;
  v5->_aneClient = v8;

  v10 = dispatch_queue_create("com.apple.avp.ane", 0);
  queue = v5->_queue;
  v5->_queue = v10;

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  confstr(65538, v42, 0x400uLL);
  if (v4)
  {
    v13 = [v4 dataUsingEncoding:4];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/com.apple.appleneuralengine", v4, a2];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v42 length:1024];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/com.apple.appleneuralengine", v42, a2];
  }

  p_anebaseDirectory = &v5->_anebaseDirectory;
  anebaseDirectory = v5->_anebaseDirectory;
  v5->_anebaseDirectory = v14;

  if (([v12 fileExistsAtPath:v5->_anebaseDirectory] & 1) != 0 || (v17 = *p_anebaseDirectory, v40 = 0, objc_msgSend(v12, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v17, 1, 0, &v40), (v18 = v40) == 0))
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

  if (v4 != 0 || !v21)
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

  if (([v12 fileExistsAtPath:*p_anebaseDirectory] & 1) != 0 || (v25 = *p_anebaseDirectory, v38 = 0, objc_msgSend(v12, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v25, 1, 0, &v38), (v26 = v38) == 0))
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

+ (BOOL)isValidBufferSize:(unint64_t)a3
{
  result = 0;
  if (a3 <= 287)
  {
    if (a3 != 32 && a3 != 40 && a3 != 192)
    {
      return result;
    }

    return 1;
  }

  if (a3 == 288 || a3 == 2640 || a3 == 2624)
  {
    return 1;
  }

  return result;
}

- (void)modelAction:(unsigned __int16)a3 buffer:(void *)a4 bufferSize:(unint64_t)a5
{
  v10 = [(_ANEVirtualPlatformClient *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___ANEVirtualPlatformClient_modelAction_buffer_bufferSize___block_invoke;
  block[3] = &unk_2799FDB58;
  block[6] = a2;
  block[7] = a5;
  v12 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v10, block);
}

+ (unint64_t)getCommandInputSize:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 >= 0xF)
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
    v4 = *&aP[8 * a3];
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

- (id)getANEModelKey:(__CFDictionary *)a3 caller:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (CFDictionaryContainsKey(a3, @"keyLength"))
  {
    if (CFDictionaryContainsKey(a3, @"ioSIDKey"))
    {
      v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"keyLength"];
      v9 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDKey"];
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

- (void)compileModel:(VirtANEModel *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var5 classType:objc_opt_class() length:a3->var9];
  v6 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:a3 aneModelKey:v5];
  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var23 classType:objc_opt_class() length:a3->var24];
  [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilation:a3 aneModelKey:v5 options:v7];
  [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v6 virtualANEModel:a3];
  aneClient = self->_aneClient;
  var22 = a3->var22;
  v12 = 0;
  v10 = [(_ANEClient *)aneClient compileModel:v6 options:v7 qos:var22 error:&v12];
  v11 = v12;
  a3->var1 = v10;
  [(_ANEVirtualPlatformClient *)self updateErrorValue:a3 error:v11];
  [(_ANEVirtualPlatformClient *)self updateVirtualANEModel:a3 model:v6];
}

+ (const)dictionaryGetDataBytesForKey:(__CFDictionary *)a3 key:(__CFString *)a4
{
  result = CFDictionaryGetValue(a3, a4);
  if (result)
  {

    return CFDataGetBytePtr(result);
  }

  return result;
}

+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)a3 key:(__CFString *)a4
{
  result = CFDictionaryGetValue(a3, a4);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)a3 key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(a3, a4);
  valuePtr = 0;
  if (!Value)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
  return valuePtr;
}

- (id)getOptionsFromDictionary:(__CFDictionary *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"optionsLength"];
  v7 = v6;
  if (v6)
  {
    v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDOptions"];
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

- (id)constructANEModel:(__CFDictionary *)a3 modelDirectory:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = NSStringFromSelector(a2);
  v31 = [(_ANEVirtualPlatformClient *)self getANEModelKey:a3 caller:v8];

  v9 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"uuid"];
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

    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];

    v10 = v13;
  }

  if (CFDictionaryContainsKey(a3, @"modelCacheURLIdentifier") && (Value = CFDictionaryGetValue(a3, @"modelCacheURLIdentifier")) != 0)
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

  if (CFDictionaryContainsKey(a3, @"modelCacheURLIdentifierSource"))
  {
    v17 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"modelCacheURLIdentifierSource"];
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

  if (!CFDictionaryContainsKey(a3, @"sourceURLPathLength"))
  {
    goto LABEL_26;
  }

  v19 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"sourceURLPathLength"];
  v20 = gLogger;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
  }

  if (v19 && CFDictionaryContainsKey(a3, @"ioSIDModelSourceURLPath") && (v21 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDModelSourceURLPath"]) != 0)
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
  if (v7)
  {
    v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
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

  if (v7)
  {
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualPlatformClient constructANEModel:modelDirectory:];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (__CFDictionary)compileModelDictionary:(__CFDictionary *)a3
{
  v32[6] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  [(__CFDictionary *)Mutable setObject:v7 forKey:@"success"];

  if (CFDictionaryContainsKey(a3, @"ioSIDErrorValue"))
  {
    Value = CFDictionaryGetValue(a3, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", Value);
  }

  if (CFDictionaryContainsKey(a3, @"ioSIDModelParameters"))
  {
    v9 = CFDictionaryGetValue(a3, @"ioSIDModelParameters");
    CFDictionarySetValue(Mutable, @"ioSIDModelParameters", v9);
  }

  if (CFDictionaryContainsKey(a3, @"ioSIDModelAttributes"))
  {
    v10 = CFDictionaryGetValue(a3, @"ioSIDModelAttributes");
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"ioSIDModelAttributes", v10);
    }
  }

  v11 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:a3];
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

    v14 = [(_ANEVirtualPlatformClient *)self constructANEModel:a3 modelDirectory:v11];
    v31 = v11;
    v15 = [v14 getCacheURLIdentifier];

    v16 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"optionsLength"];
    v17 = v16;
    if (v16)
    {
      v18 = a2;
      v19 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDOptions"];
      if (v19)
      {
        v20 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v19 classType:objc_opt_class() length:v17];
        [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v14 dictionary:a3];
        v21 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"qos"];
        aneClient = self->_aneClient;
        v32[0] = 0;
        v23 = [(_ANEClient *)aneClient compileModel:v14 options:v20 qos:v21 error:v32];
        v24 = v32[0];
        CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v23]);
        [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v24];
        [(_ANEVirtualPlatformClient *)self updateVirtualANEModelDictionary:Mutable model:v14 cacheURLIdentifierToGuest:v15 == 0];
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

- (void)loadModel:(VirtANEModel *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var5 classType:objc_opt_class() length:a3->var9];
  v6 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:a3 aneModelKey:v5];
  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var23 classType:objc_opt_class() length:a3->var24];
  if (([(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask]& 2) == 0)
  {
    v8 = [(_ANEVirtualPlatformClient *)self updateOptions:v7 virtualANEModel:a3];

    v7 = v8;
  }

  [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilation:a3 aneModelKey:v5 options:v7];
  [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v6 virtualANEModel:a3];
  aneClient = self->_aneClient;
  var22 = a3->var22;
  v19 = 0;
  v11 = [(_ANEClient *)aneClient loadModel:v6 options:v7 qos:var22 error:&v19];
  v12 = v19;
  a3->var1 = v11;
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

  [(_ANEVirtualPlatformClient *)self updateErrorValue:a3 error:v12];
  [(_ANEVirtualPlatformClient *)self updateVirtualANEModel:a3 model:v6];
}

- (__CFDictionary)loadModelDictionary:(__CFDictionary *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"qos"];
  v6 = [(_ANEVirtualPlatformClient *)self getOptionsFromDictionary:a3];
  v43 = [(_ANEVirtualPlatformClient *)self updateOptionsDictionary:v6 directoryPath:0];

  v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"fileDataAlreadySent"];
  if (v7)
  {
    v47 = 0;
    v8 = [(_ANEVirtualPlatformClient *)self generateExpectedModelFilePathFromDictionary:a3 withFileType:1 error:&v47];
    v9 = v47;
    v10 = 0;
    v44 = v8;
  }

  else
  {
    v11 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:a3];
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

  v16 = [(_ANEVirtualPlatformClient *)self constructANEModel:a3 modelDirectory:v44];
  v17 = [v16 getCacheURLIdentifier];
  v42 = v17 == 0;

  if (v16)
  {
    [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilationDictionary:a3 aneModelKey:0 options:v43 modelDirectory:v10];
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v16 dictionary:a3];
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
  if (CFDictionaryContainsKey(a3, @"ioSIDErrorValue"))
  {
    Value = CFDictionaryGetValue(a3, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", Value);
  }

  if (CFDictionaryContainsKey(a3, @"ioSIDModelParameters"))
  {
    v31 = CFDictionaryGetValue(a3, @"ioSIDModelParameters");
    CFDictionarySetValue(Mutable, @"ioSIDModelParameters", v31);
  }

  if (CFDictionaryContainsKey(a3, @"ioSIDModelAttributes"))
  {
    v32 = CFDictionaryGetValue(a3, @"ioSIDModelAttributes");
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

- (__CFDictionary)loadModelNewInstance:(__CFDictionary *)a3
{
  v109 = *MEMORY[0x277D85DE8];
  if ([(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion]<= 0x20405)
  {
    v3 = *MEMORY[0x277D85DE8];

    return [(_ANEVirtualPlatformClient *)self loadModelNewInstanceLegacy:a3];
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
  v78 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"qos"];
  v81 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"uuid"];
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

  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDModelInstParamsData"];
  v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"modelInstParamsDataSize"];
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

  v91 = [(_ANEVirtualPlatformClient *)self generatedExpectedBaseDirectoryWithFileType:2 withInputDictionary:a3];
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
      v89 = [v12 weightArray];
      v13 = [v89 countByEnumeratingWithState:&v94 objects:v107 count:16];
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
            objc_enumerationMutation(v89);
          }

          v16 = *(*(&v94 + 1) + 8 * j);
          v17 = [v16 weightURL];
          v18 = [v17 path];

          v19 = [v18 rangeOfString:@".asset"];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v18 lastPathComponent];
            v21 = gLogger;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = NSStringFromSelector(a2);
              *buf = 138412802;
              v104 = v22;
              v105 = 2112;
              *v106 = v18;
              *&v106[8] = 2112;
              *&v106[10] = v20;
              _os_log_debug_impl(&dword_25DF54000, v21, OS_LOG_TYPE_DEBUG, "%@: could not find .asset directory in path=%@, searching for fileName=%@ only", buf, 0x20u);
            }
          }

          else
          {
            v23 = [v18 rangeOfString:@"/" options:4 range:{0, v19}];
            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v33 = NSStringFromSelector(a2);
                *buf = 138412546;
                v104 = v33;
                v105 = 2112;
                *v106 = v18;
                _os_log_error_impl(&dword_25DF54000, v26, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not get complete name of .asset directory in path=%@!", buf, 0x16u);
              }

              v20 = &stru_286FC4C68;
              goto LABEL_49;
            }

            v24 = [v18 substringFromIndex:v23 + 1];
            v20 = v24;
            if (!v24 || ![(__CFString *)v24 length])
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v32 = NSStringFromSelector(a2);
                *buf = 138412546;
                v104 = v32;
                v105 = 2112;
                *v106 = v18;
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
              *v106 = v18;
              *&v106[8] = 2112;
              *&v106[10] = v20;
              _os_log_debug_impl(&dword_25DF54000, v21, OS_LOG_TYPE_DEBUG, "%@: .asset directory found in path=%@, searching for fileName=%@", buf, 0x20u);
            }
          }

          v25 = [v91 stringByAppendingPathComponent:v20];
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
              *v106 = v18;
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

        v13 = [v89 countByEnumeratingWithState:&v94 objects:v107 count:16];
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
    v37 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDCacheURLIdentifierData", v75];
    v38 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"cacheURLIdentifierDataSize"];
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

    v42 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDOptions"];
    v43 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"optionsLength"];
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
      v74 = [v47 modelAttributes];
      *buf = 138412802;
      v104 = v73;
      v105 = 2048;
      *v106 = v35;
      *&v106[8] = 2112;
      *&v106[10] = v74;
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

    v59 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDModelAttributes"];
    if (v59)
    {
      v60 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"modelAttributeLength"];
      if (v60)
      {
        v92 = 0;
        v61 = [v47 modelAttributes];
        v62 = [(_ANEVirtualPlatformClient *)self copyDictionaryUsingJSONSerialization:v61 toIOSurfaceWithID:v59 withMaxSize:v60 outWrittentDataSize:&v92];

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

- (__CFDictionary)loadModelNewInstanceLegacy:(__CFDictionary *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"qos"];
  v6 = [(_ANEVirtualPlatformClient *)self getOptionsFromDictionary:a3];
  v7 = [(_ANEVirtualPlatformClient *)self updateOptionsDictionary:v6 directoryPath:0];

  v8 = [v7 objectForKey:*MEMORY[0x277CEE9B8]];
  v35 = v7;

  Value = CFDictionaryGetValue(a3, @"modelCacheURLIdentifier");
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
      [(_ANEVirtualPlatformClient *)self createOptionFilesForCompilationDictionary:a3 aneModelKey:0 options:v35 modelDirectory:0];
      [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v13 dictionary:a3];
      v14 = [v13 getUUID];
      v15 = [(_ANEVirtualPlatformClient *)self createANEModelInstanceParameters:a3 modelUUID:v14];

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
  if (CFDictionaryContainsKey(a3, @"ioSIDErrorValue"))
  {
    v26 = CFDictionaryGetValue(a3, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", v26);
  }

  if (CFDictionaryContainsKey(a3, @"ioSIDModelParameters"))
  {
    v27 = CFDictionaryGetValue(a3, @"ioSIDModelParameters");
    CFDictionarySetValue(Mutable, @"ioSIDModelParameters", v27);
  }

  if (CFDictionaryContainsKey(a3, @"ioSIDModelAttributes"))
  {
    v28 = CFDictionaryGetValue(a3, @"ioSIDModelAttributes");
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

- (id)updateOptions:(id)a3 virtualANEModel:(VirtANEModel *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v5];
  if (a4->var6)
  {
    if (a4->var7)
    {
      if (a4->var8)
      {
        v7 = MEMORY[0x277CEE9D0];
        v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEE9D0]];
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

- (id)updateOptionsDictionary:(id)a3 directoryPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v5];
  if (v6)
  {
    v21 = v7;
    v22 = v6;
    v23 = v5;
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v20 enumeratorAtPath:v6];
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = [v8 nextObject];

      if (!v13)
      {
        break;
      }

      v14 = [v13 componentsSeparatedByString:@"."];
      v15 = [v14 lastObject];
      v12 |= [v15 isEqual:@"net"];
      v10 |= [v15 isEqual:@"weights"];
      v9 |= [v15 isEqual:@"shape"];

      v11 = v13;
    }

    v6 = v22;
    v5 = v23;
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

- (void)unLoadModel:(VirtANEModel *)a3
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var5 classType:objc_opt_class() length:a3->var9];
  if (v6)
  {
    aneModelDict = self->_aneModelDict;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
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

      a3->var1 = 0;
      v11 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:a3 aneModelKey:v6];
      v9 = [_ANEVirtualModel objectWithModel:v11];
    }

    v12 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var23 classType:objc_opt_class() length:a3->var24];
    aneClient = self->_aneClient;
    v14 = [v9 model];
    var22 = a3->var22;
    v20[0] = 0;
    LODWORD(aneClient) = [(_ANEClient *)aneClient unloadModel:v14 options:v12 qos:var22 error:v20];
    v16 = v20[0];
    a3->var1 = aneClient;

    [(_ANEVirtualPlatformClient *)self updateErrorValue:a3 error:v16];
    if ([v9 removeCachedReference])
    {
      v17 = self->_aneModelDict;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
      [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:v18];
    }
  }

  else
  {
    a3->var1 = 0;
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

- (__CFDictionary)unLoadModelDictionary:(__CFDictionary *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"programHandle"];
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

  v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"optionsLength"];
  v12 = v11;
  if (!v11 || (v13 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDOptions"], !v13) || ([(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v13 classType:objc_opt_class() length:v12], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
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

  v16 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"qos"];
  aneClient = self->_aneClient;
  v18 = [v10 model];
  v61 = 0;
  v19 = [(_ANEClient *)aneClient unloadModel:v18 options:v14 qos:v16 error:&v61];
  v20 = v61;

  v21 = [v10 removeCachedReference];
  v22 = gLogger;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v49 = NSStringFromSelector(aSelector);
    v56 = [v10 model];
    v50 = [v56 programHandle];
    *buf = 138412802;
    v63 = v49;
    v64 = 1024;
    *v65 = v21;
    *&v65[4] = 2048;
    *&v65[6] = v50;
    _os_log_debug_impl(&dword_25DF54000, v22, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient removeCachedReference canBeRemoved %d for programHandle =%llx ", buf, 0x1Cu);
  }

  if ((v21 & v19) == 1)
  {
    v23 = [v10 tmpModelFilesPath];
    if (v23)
    {
      v24 = [v10 tmpModelFilesPath];
      v25 = [v24 length] == 0;

      if (!v25)
      {
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = [v10 tmpModelFilesPath];
        v28 = [v26 fileExistsAtPath:v27];

        if (v28)
        {
          v54 = [MEMORY[0x277CCAA00] defaultManager];
          v29 = [v10 tmpModelFilesPath];
          v60 = 0;
          v30 = [v54 removeItemAtPath:v29 error:&v60];
          v31 = v60;

          if ((v30 & 1) == 0)
          {
            v32 = gLogger;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v57 = NSStringFromSelector(aSelector);
              v51 = [v10 tmpModelFilesPath];
              *buf = 138412802;
              v63 = v57;
              v64 = 2112;
              *v65 = v51;
              *&v65[8] = 2112;
              *&v65[10] = v31;
              _os_log_error_impl(&dword_25DF54000, v32, OS_LOG_TYPE_ERROR, "%@: Could not remove file or directory at path=%@ with error=%@", buf, 0x20u);
            }
          }
        }
      }
    }

    v33 = [v10 tmpWeightFilesPath];
    if (v33)
    {
      v34 = [v10 tmpWeightFilesPath];
      v35 = [v34 length] == 0;

      if (!v35)
      {
        v36 = [MEMORY[0x277CCAA00] defaultManager];
        v37 = [v10 tmpWeightFilesPath];
        v38 = [v36 fileExistsAtPath:v37];

        if (v38)
        {
          v39 = [MEMORY[0x277CCAA00] defaultManager];
          v40 = [v10 tmpWeightFilesPath];
          v59 = 0;
          v41 = [v39 removeItemAtPath:v40 error:&v59];
          v55 = v59;

          if ((v41 & 1) == 0)
          {
            v42 = gLogger;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v52 = NSStringFromSelector(aSelector);
              v53 = [v10 tmpWeightFilesPath];
              *buf = 138412802;
              v63 = v52;
              v64 = 2112;
              *v65 = v53;
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
  if (CFDictionaryContainsKey(a3, @"ioSIDErrorValue"))
  {
    Value = CFDictionaryGetValue(a3, @"ioSIDErrorValue");
    CFDictionarySetValue(Mutable, @"ioSIDErrorValue", Value);
  }

  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v19]);
  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:Mutable error:v20];

  v47 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)evaluateWithModel:(VirtANEModel *)a3
{
  v18[6] = *MEMORY[0x277D85DE8];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient evaluateWithModel:];
  }

  v7 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var5 classType:objc_opt_class() length:a3->var9];
  if (v7)
  {
    aneModelDict = self->_aneModelDict;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
    v10 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v9];

    v11 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var23 classType:objc_opt_class() length:a3->var24];
    v12 = [(_ANEVirtualPlatformClient *)self requestWithVirtualANEModel:a3];
    aneClient = self->_aneClient;
    v14 = [v10 model];
    var22 = a3->var22;
    v18[0] = 0;
    LODWORD(aneClient) = [(_ANEClient *)aneClient evaluateWithModel:v14 options:v11 request:v12 qos:var22 error:v18];
    v16 = v18[0];
    a3->var1 = aneClient;

    [(_ANEVirtualPlatformClient *)self updatePerformanceStats:a3 aneRequest:v12];
    [(_ANEVirtualPlatformClient *)self updateErrorValue:a3 error:v16];
  }

  else
  {
    a3->var1 = 0;
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

- (void)evaluateWithModelDictionary:(__CFDictionary *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:@"programHandle"];
  v7 = [v6 unsignedLongLongValue];

  if (v7)
  {
    aneModelDict = self->_aneModelDict;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    v10 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v9];

    if (!v10)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model not found"];
      v14 = [MEMORY[0x277CEE968] programInferenceOtherErrorForMethod:v13];
      [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:v5 error:v14];
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
      CFDictionarySetValue(v5, @"success", v15);
      v16 = gLogger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
      }

      goto LABEL_38;
    }

    v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:v5 key:@"ioSIDOptions"];
    if (v11)
    {
      v12 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:v5 key:@"optionsLength"];
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
    v15 = [(_ANEVirtualPlatformClient *)self requestWithVirtualANEModelDictionary:v5];
    if (v15)
    {
      v18 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:v5 key:@"qos"];
      aneClient = self->_aneClient;
      v20 = [v10 model];
      v52 = 0;
      v50 = [(_ANEClient *)aneClient evaluateWithModel:v20 options:v13 request:v15 qos:v18 error:&v52];
      v14 = v52;

      if (v50)
      {
        [(_ANEVirtualPlatformClient *)self updatePerformanceStatsDictionary:v5 aneRequest:v15];
      }

      else
      {
        v23 = gLogger;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v42 = NSStringFromSelector(a2);
          v43 = [v10 model];
          *buf = 138412802;
          v54 = v42;
          v55 = 2112;
          v56 = v14;
          v57 = 2112;
          v58 = v43;
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
        v26 = [MEMORY[0x277CEE9A8] vm_debugDumpBootArg];
        LODWORD(v25) = [v25 isBoolBootArgSetTrue:v26];

        if (v25)
        {
          v27 = self->_anebaseDirectory;
          v49 = [(NSString *)v27 stringByAppendingPathComponent:@"dump"];

          v28 = [MEMORY[0x277CCAA00] defaultManager];
          v29 = [v28 fileExistsAtPath:v49];

          if ((v29 & 1) == 0)
          {
            v30 = gLogger;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualPlatformClient evaluateWithModelDictionary:];
            }

            v31 = [MEMORY[0x277CCAA00] defaultManager];
            v51 = 0;
            [v31 createDirectoryAtPath:v49 withIntermediateDirectories:1 attributes:0 error:&v51];
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
          v34 = [MEMORY[0x277CBEAA8] date];
          v48 = [v47 stringFromDate:v34];

          v35 = [v49 stringByAppendingPathComponent:@"end_model_dump.txt"];
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@.txt", v35, v48];

          v36 = [v10 model];
          v45 = [v36 description];

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
      CFDictionarySetValue(v5, @"success", v16);
      [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:v5 error:v14];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to generate aneRequest"];
      v14 = [MEMORY[0x277CEE968] programInferenceOtherErrorForMethod:v16];
      [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:v5 error:v14];
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
      CFDictionarySetValue(v5, @"success", v21);
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
  [(_ANEVirtualPlatformClient *)self updateErrorValueDictionary:v5 error:v14];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  CFDictionarySetValue(v5, @"success", v13);
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

- (void)mapIOSurfacesWithModel:(VirtANEModel *)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  aneModelDict = self->_aneModelDict;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
  v8 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [(_ANEVirtualPlatformClient *)self requestWithVirtualANEModel:a3];
    var18 = a3->var18;
    aneClient = self->_aneClient;
    v12 = [v8 model];
    v15[0] = 0;
    LODWORD(aneClient) = [(_ANEClient *)aneClient mapIOSurfacesWithModel:v12 request:v9 cacheInference:var18 != 0 error:v15];
    v13 = v15[0];
    a3->var1 = aneClient;

    [(_ANEVirtualPlatformClient *)self updatePerformanceStats:a3 aneRequest:v9];
    [(_ANEVirtualPlatformClient *)self updateErrorValue:a3 error:v13];
  }

  else
  {
    a3->var1 = 0;
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

- (void)compiledModelExistsFor:(VirtANEModel *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var5 classType:objc_opt_class() length:a3->var9];
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

  v6 = [(_ANEVirtualPlatformClient *)self aneModelDict];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
LABEL_4:
    v9 = [v8 model];
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v9 virtualANEModel:a3];

    aneClient = self->_aneClient;
    v11 = [v8 model];
    a3->var1 = [(_ANEClient *)aneClient compiledModelExistsFor:v11];

    v12 = [v8 model];
    [(_ANEVirtualPlatformClient *)self updateVirtualANEModel:a3 model:v12];

    goto LABEL_5;
  }

  v13 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:a3 aneModelKey:v5];
  if (v13)
  {
    v8 = [_ANEVirtualModel objectWithModel:v13];
    v14 = [(_ANEVirtualPlatformClient *)self aneModelDict];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
    [v14 setObject:v8 forKeyedSubscript:v15];

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

- (__CFDictionary)compiledModelExistsForDictionary:(__CFDictionary *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:?];
  v6 = [(_ANEVirtualPlatformClient *)self constructANEModel:a3 modelDirectory:v5];
  v7 = [v6 getCacheURLIdentifier];

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v6)
  {
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v6 dictionary:a3];
    v9 = [(_ANEClient *)self->_aneClient compiledModelExistsFor:v6];
    if (CFDictionaryContainsKey(a3, @"ioSIDModelParameters"))
    {
      Value = CFDictionaryGetValue(a3, @"ioSIDModelParameters");
      CFDictionarySetValue(Mutable, @"ioSIDModelParameters", Value);
    }

    if (CFDictionaryContainsKey(a3, @"ioSIDModelAttributes"))
    {
      v11 = CFDictionaryGetValue(a3, @"ioSIDModelAttributes");
      if (v11)
      {
        CFDictionarySetValue(Mutable, @"ioSIDModelAttributes", v11);
      }
    }

    CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:v9]);
    [(_ANEVirtualPlatformClient *)self updateVirtualANEModelDictionary:Mutable model:v6 cacheURLIdentifierToGuest:v7 == 0];
  }

  else
  {
    CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:0]);
  }

  return Mutable;
}

- (id)removeAllModelFiles:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v7 = 0;
    [v4 removeItemAtPath:v3 error:&v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)purgeCompiledModel:(VirtANEModel *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var5 classType:objc_opt_class() length:a3->var9];
  v6 = [(_ANEVirtualPlatformClient *)self doCreateModelFile:a3 aneModelKey:v5];
  if (v6)
  {
    [(_ANEVirtualPlatformClient *)self doModelAttributeUpdate:v6 virtualANEModel:a3];
    [(_ANEClient *)self->_aneClient purgeCompiledModel:v6];
    [(_ANEVirtualPlatformClient *)self doRemoveModelFile:a3];
    aneModelDict = self->_aneModelDict;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var15];
    [(NSMutableDictionary *)aneModelDict setObject:0 forKeyedSubscript:v8];

    a3->var1 = 1;
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient purgeCompiledModel:];
  }
}

- (__CFDictionary)purgeCompiledModelDictionary:(__CFDictionary *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"programHandle"];
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

    v12 = [(_ANEVirtualPlatformClient *)self createAllModelFilesOnHost:a3];
    v10 = [(_ANEVirtualPlatformClient *)self constructANEModel:a3 modelDirectory:v12];
    if (v10)
    {
      [(_ANEVirtualPlatformClient *)self doModelAttributeUpdateDictionary:v10 dictionary:a3];
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

- (void)compiledModelExistsMatchingHash:(VirtANEModel *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var44 classType:objc_opt_class() length:a3->var45];
  a3->var1 = [(_ANEClient *)self->_aneClient compiledModelExistsMatchingHash:v5];
  v6 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    var45 = a3->var45;
    var1 = a3->var1;
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

- (__CFDictionary)compiledModelExistsMatchingHashDictionary:(__CFDictionary *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDHashString"];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"hashStringLength"];
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

- (void)purgeCompiledModelMatchingHash:(VirtANEModel *)a3
{
  v4 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var44 classType:objc_opt_class() length:a3->var45];
  [(_ANEClient *)self->_aneClient purgeCompiledModelMatchingHash:?];
}

- (__CFDictionary)purgeCompiledModelMatchingHashDictionary:(__CFDictionary *)a3
{
  v4 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:@"ioSIDHashString" key:?], objc_opt_class(), [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"hashStringLength"]];
  [(_ANEClient *)self->_aneClient purgeCompiledModelMatchingHash:v4];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"success", [MEMORY[0x277CCABB0] numberWithLongLong:1]);

  return Mutable;
}

- (void)validateNetworkCreate:(__CFDictionary *)a3
{
  v135 = *MEMORY[0x277D85DE8];
  v4 = gLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    [_ANEVirtualPlatformClient validateNetworkCreate:v5];
  }

  valuePtr = 1;
  [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"apiVersion"];
  if ([(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion]<= 0x20400)
  {
    v110 = 0;
  }

  else
  {
    v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDMilTextData"];
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

    v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"milTextDataLength"];
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
      CFDictionarySetValue(a3, @"success", v109);
      v110 = 0;
      v111 = 0;
      goto LABEL_140;
    }
  }

  v13 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"numModelFiles"];
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

  Value = CFDictionaryGetValue(a3, @"uuid");
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

  if (!CFDictionaryGetValue(a3, @"function"))
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      [_ANEVirtualPlatformClient validateNetworkCreate:v20];
    }

    valuePtr = 0;
  }

  v21 = CFDictionaryGetValue(a3, @"scratchPadPath");
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

  v24 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDValidationResultOutput"];
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
    CFDictionaryRemoveAllValues(a3);
    v35 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(a3, @"success", v35);
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
  v28 = [v107 firstObject];
  v108 = [v27 initWithFormat:@"%@%@", v112, v28];

  v106 = [v107 componentsJoinedByString:@"/"];
  v104 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v112, v106];
  v29 = gLogger;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v93 = NSStringFromSelector(a2);
    *buf = 138413314;
    v128 = v93;
    v129 = 2112;
    v130 = v112;
    v131 = 2112;
    v132 = v104;
    v133 = 2112;
    *v134 = v103;
    *&v134[8] = 2112;
    *&v134[10] = v108;
    _os_log_debug_impl(&dword_25DF54000, v29, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient validateNetworkCreate directoryPath=%@ constructedScratchPadPath=%@ scratchPadBaseDirectory=%@ bundleDirectoryPath=%@", buf, 0x34u);
  }

  v122 = 0;
  v30 = [MEMORY[0x277CCAA00] defaultManager];
  v31 = [v30 fileExistsAtPath:v112 isDirectory:&v122];

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

  v36 = [MEMORY[0x277CCAA00] defaultManager];
  v121 = 0;
  v37 = [v36 createDirectoryAtPath:v112 withIntermediateDirectories:1 attributes:0 error:&v121];
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
  v38 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = [v38 fileExistsAtPath:v108 isDirectory:&v122];

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

  v43 = [MEMORY[0x277CCAA00] defaultManager];
  v120 = v111;
  v44 = [v43 createDirectoryAtPath:v108 withIntermediateDirectories:1 attributes:0 error:&v120];
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
    v50 = CFDictionaryGetValue(a3, v49);
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
    v52 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v51];
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
    v54 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v53];
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

  v61 = [MEMORY[0x277CCAA00] defaultManager];
  v119 = 0;
  v99 = [v61 contentsOfDirectoryAtPath:v112 error:&v119];
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
      v70 = [v69 pathExtension];
      v71 = [v70 isEqualToString:@"mil"];

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
    CFDictionarySetValue(a3, @"validationResultSize", v85);
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

  CFDictionaryRemoveValue(a3, @"success");
  v89 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(a3, @"success", v89);
  CFRelease(v89);
  v90 = [(_ANEVirtualPlatformClient *)self removeAllModelFiles:v108];
  v91 = [(_ANEVirtualPlatformClient *)self removeAllModelFiles:v112];

LABEL_140:
LABEL_141:

  v92 = *MEMORY[0x277D85DE8];
}

- (void)echo:(VirtANEModel *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3->var44];
  if (v5)
  {
    v6 = v5;
    p_var45 = &a3->var45;
    if (a3->var45 <= IOSurfaceGetAllocSize(v5))
    {
      IOSurfaceLock(v6, 0, 0);
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v6) length:*p_var45];
      IOSurfaceUnlock(v6, 0, 0);
      CFRelease(v6);
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      a3->var1 = [(_ANEClient *)self->_aneClient echo:v8];
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualPlatformClient echo:?];
    }
  }
}

- (__CFDictionary)echoDictionary:(__CFDictionary *)a3
{
  v5 = [(_ANEVirtualPlatformClient *)self getIOSurface:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDHashString"]];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v5)
  {
    v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"hashStringLength"];
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

- (__CFDictionary)getDeviceInfoDictionary:(__CFDictionary *)a3
{
  valuePtr = [MEMORY[0x277CEE958] isInternalBuild];
  v12 = [MEMORY[0x277CEE958] numANEs];
  v11 = [MEMORY[0x277CEE958] numANECores];
  v3 = [MEMORY[0x277CEE958] aneArchitectureType];
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &v12);
  v7 = CFNumberCreate(v4, kCFNumberSInt32Type, &v11);
  v8 = CFStringCreateWithCString(0, [v3 UTF8String], 0x8000100u);
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
    [(_ANEVirtualPlatformClient *)v3 getDeviceInfoDictionary:?];
  }

  return Mutable;
}

- (__CFDictionary)sessionHintWithModel:(__CFDictionary *)a3
{
  aSelector = a2;
  v34 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = objc_opt_new();
  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"programHandle"];
  [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"intermediateBufferHandle"];
  [_ANEVirtualPlatformClient dictionaryGetInt8ForKey:a3 key:@"queueDepth"];
  v29 = CFDictionaryGetValue(a3, @"sessionHint");
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDOptions"];
  if (v6)
  {
    v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"optionsLength"];
    if (v7)
    {
      v28 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v6 classType:objc_opt_class() length:v7, aSelector];
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

  v28 = 0;
LABEL_9:
  aneModelDict = self->_aneModelDict;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v5, aSelector}];
  v11 = [(NSMutableDictionary *)aneModelDict objectForKeyedSubscript:v10];

  v12 = [v11 model];
  v13 = [MEMORY[0x277CEE950] controllerWithProgramHandle:v5];
  aneClient = self->_aneClient;
  v32 = 0;
  LODWORD(aneModelDict) = [(_ANEClient *)aneClient sessionHintWithModel:v12 hint:v29 options:v28 report:v31 error:&v32];
  v15 = v32;
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:aneModelDict];
  [(__CFDictionary *)Mutable setValue:v16 forKey:@"success"];

  if (aneModelDict)
  {
    v17 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"reportDataLength"];
    v18 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDReportData"];
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
    v20 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDErrorValue"];
    v21 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"errorLength"];
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

- (__CFDictionary)validateNetworkCreateMLIR:(__CFDictionary *)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"apiVersion"];
  v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDValidationParams"];
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

  v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"validationParamsDataSize"];
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
    if ([(_ANEVirtualPlatformClient *)self writeDictionaryToIOSurfaceID:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:? key:?], v9, v17, [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"validationResultSize"]])
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

- (__CFDictionary)chunkedDataReceived:(__CFDictionary *)a3
{
  v48 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"chunkSequence"];
    v8 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"genericDataSize"];
    if (v8)
    {
      v9 = v8;
      v10 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDGenericData"];
      if (v10)
      {
        v43 = 0;
        v40 = [(_ANEVirtualPlatformClient *)self generateExpectedModelFilePathFromDictionary:a3 error:&v43];
        v11 = v43;
        v12 = gLogger;
        v13 = v12;
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

          v13 = [v40 stringByDeletingLastPathComponent];
          if (!v13)
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

          v16 = [MEMORY[0x277CCAA00] defaultManager];
          v17 = [v16 fileExistsAtPath:v40];

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

              v20 = [MEMORY[0x277CCAA00] defaultManager];
              v42 = 0;
              [v20 removeItemAtPath:v40 error:&v42];
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
            v24 = [MEMORY[0x277CCAA00] defaultManager];
            v25 = [v24 fileExistsAtPath:v13];

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
                *&v47[10] = v13;
                _os_log_debug_impl(&dword_25DF54000, v26, OS_LOG_TYPE_DEBUG, "%@: File NOT found at path=%@, creating directory at path=%@", buf, 0x20u);
              }

              v27 = [MEMORY[0x277CCAA00] defaultManager];
              v41 = 0;
              [v27 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v41];
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
                  *v47 = v13;
                  *&v47[8] = 2112;
                  *&v47[10] = v28;
                  _os_log_error_impl(&dword_25DF54000, v29, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create directory at path=%@ with error=%@", buf, 0x20u);
                }

                goto LABEL_44;
              }
            }
          }

          v30 = [MEMORY[0x277CCAA00] defaultManager];
          v31 = [v30 fileExistsAtPath:v40];

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

- (BOOL)createModelFileAtPath:(id)a3 fromIOSID:(unsigned int)a4 withDataLength:(unint64_t)a5 shouldAppend:(BOOL)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (!v11)
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

  if (!a4)
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

  if (!a5)
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

  v12 = [(_ANEVirtualPlatformClient *)self getIOSurface:a4];
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
      v48 = v11;
      v49 = 1024;
      LODWORD(v50) = a4;
      _os_log_error_impl(&dword_25DF54000, v14, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create model file at path=%@! ioSurface is nil for ioSID=%u", buf, 0x1Cu);
    }

    goto LABEL_47;
  }

  IOSurfaceLock(v12, 0, 0);
  if (IOSurfaceGetAllocSize(v13) < a5)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138413058;
      v46 = v15;
      v47 = 2112;
      v48 = v11;
      v49 = 2048;
      v50 = a5;
      v51 = 2048;
      AllocSize = IOSurfaceGetAllocSize(v13);
      _os_log_error_impl(&dword_25DF54000, v14, OS_LOG_TYPE_ERROR, "%@: ERROR failed to create model file at path=%@! Passed in dataLength exceeds surface alloc size %llu > %zu", buf, 0x2Au);
    }

    goto LABEL_47;
  }

  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(v13) length:a5];
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

  if (!a6)
  {
    v44 = 0;
    v28 = [v14 writeToFile:v11 options:1 error:&v44];
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
        v48 = v11;
        v49 = 2112;
        v50 = v29;
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

  v17 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v11];
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
      v50 = v11;
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
      v50 = v11;
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
    v50 = v11;
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

+ (id)getDataFromIOSurface:(__IOSurface *)a3 withSize:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a3)
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

  if (!a4)
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

  IOSurfaceLock(a3, 0, 0);
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:IOSurfaceGetBaseAddress(a3) length:a4];
  IOSurfaceUnlock(a3, 0, 0);
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

- (id)getObjectFromIOSurfaceID:(unsigned int)a3 classType:(Class)a4 length:(unint64_t)AllocSize
{
  v7 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
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

      v12 = [v10 decodeObjectOfClass:a4 forKey:*MEMORY[0x277CCA308]];
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

- (BOOL)copyDictionaryUsingJSONSerialization:(id)a3 toIOSurfaceWithID:(unsigned int)a4 withMaxSize:(unint64_t)a5 outWrittentDataSize:(unint64_t *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (v11)
  {
    if (a4)
    {
      if (a5)
      {
        v27 = 0;
        v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v27];
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
          if ([v12 length] <= a5)
          {
            v19 = [(_ANEVirtualPlatformClient *)self getIOSurface:a4];
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
                if (a6)
                {
                  *a6 = [v12 length];
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
            v33 = a5;
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

- (BOOL)writeObjectToIOSurfaceID:(unsigned int)a3 obj:(id)a4 writtenDataLength:(unint64_t *)a5 ioSurfaceMaxSize:(unint64_t)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = v11;
  if (!a3)
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

  if (!v11)
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

  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
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

  v14 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
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
  if (v15 > a6)
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
      v28 = a6;
      _os_log_error_impl(&dword_25DF54000, v16, OS_LOG_TYPE_ERROR, "%@: ERROR : Failed to write data, ioSurface too small : dataSize=%llu ioSurfaceMaxSize=%llu", &v23, 0x20u);
    }

    goto LABEL_19;
  }

  IOSurfaceLock(v14, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v14);
  memcpy(BaseAddress, [v13 bytes], [v13 length]);
  IOSurfaceUnlock(v14, 0, 0);
  CFRelease(v14);
  if (a5)
  {
    *a5 = [v13 length];
  }

  v18 = 1;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)printIOSurfaceDataInBytes:(unsigned int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
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

- (void)getArrayFromIOSurfaceID:(unsigned int)a3 localData:(unsigned int *)a4 localDataLength:(unint64_t)a5
{
  v7 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
  if (v7)
  {
    v8 = v7;
    IOSurfaceLock(v7, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v8);
    memcpy(a4, BaseAddress, 4 * a5);
    IOSurfaceUnlock(v8, 0, 0);

    CFRelease(v8);
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient getArrayFromIOSurfaceID:localData:localDataLength:];
  }
}

- (id)doCreateModelFile:(VirtANEModel *)a3 aneModelKey:(id)a4
{
  v106 = *MEMORY[0x277D85DE8];
  v83 = a4;
  v86 = [MEMORY[0x277CCAA00] defaultManager];
  if (!v83)
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

  v88 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
  }

  v82 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var52 classType:objc_opt_class() length:a3->var53];
  v85 = [MEMORY[0x277CEE970] hexStringForString:?];
  v93 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", v88, v85];
  v84 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", v88, v85];
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

  v80 = [v82 lastPathComponent];
  v79 = [v80 componentsSeparatedByString:@"."];
  v90 = [v79 lastObject];
  v8 = gLogger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
  }

  v9 = v93;
  if ([v90 isEqual:@"hwx"])
  {
    v10 = [MEMORY[0x277CEE950] controllerWithPrivilegedVM:1];
    if (v10 && os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
      v9 = v93;
    }

    if (a3->var6 && a3->var7 && a3->var8)
    {
      v11 = [v9 lastPathComponent];
      v12 = [v9 stringByReplacingOccurrencesOfString:v11 withString:&stru_286FC4C68];

      v13 = v12;
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v73 = NSStringFromSelector(a2);
        var6 = a3->var6;
        var7 = a3->var7;
        var8 = a3->var8;
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
      if (([(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask]& 2) == 0 || !a3->var61)
      {
        v23 = gLogger;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v68 = NSStringFromSelector(a2);
          v69 = [(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask];
          var61 = a3->var61;
          *buf = 138412802;
          v99 = v68;
          v100 = 2048;
          v101 = v69 & 2;
          v102 = 2048;
          v103 = var61;
          _os_log_debug_impl(&dword_25DF54000, v23, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualPlatformClient: use local hwx : guestPrecompiledBinarySupport=%llu : modelHWXLength=%llu", buf, 0x20u);
        }

        v24 = MEMORY[0x277CEE980];
        v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v82];
        v16 = [v24 modelAtURL:v25 key:v83];

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

  if ([v90 isEqual:@"net"])
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v84, v80];

    v84 = v17;
  }

  if ([v90 isEqual:@"hwx"] && (-[_ANEVirtualPlatformClient negotiatedCapabilityMask](self, "negotiatedCapabilityMask") & 2) != 0 && a3->var61)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doCreateModelFile:aneModelKey:];
    }

    v96 = 0;
    v19 = [v86 fileExistsAtPath:v93 isDirectory:&v96];
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
      v55 = [v86 createDirectoryAtPath:v93 withIntermediateDirectories:1 attributes:0 error:&v95];
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
        v62 = [v65 modelAtURL:v61 key:v83];
        goto LABEL_120;
      }
    }

    v56 = a3->var61;
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
      if (![(_ANEVirtualPlatformClient *)self createModelFile:@"model.hwx" path:v93 ioSID:a3->var60 length:a3->var61])
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
    v62 = [v60 modelAtURL:v61 key:v83];
LABEL_120:
    v16 = v62;
LABEL_124:

    goto LABEL_130;
  }

  if (a3->var55)
  {
    v22 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var54 classType:objc_opt_class() length:a3->var55];
  }

  else
  {
    v22 = @"model.espresso.net";
  }

  if (a3->var57)
  {
    v26 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var56 classType:objc_opt_class() length:a3->var57];
  }

  else
  {
    v26 = @"model.espresso.shape";
  }

  if (a3->var59)
  {
    v91 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var58 classType:objc_opt_class() length:a3->var59];
  }

  else
  {
    v91 = @"model.espresso.weights";
  }

  v27 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.-_"];
  v89 = [v27 invertedSet];

  v28 = [(__CFString *)v22 lastPathComponent];
  v29 = [v28 stringByTrimmingCharactersInSet:v89];

  v30 = [(__CFString *)v26 lastPathComponent];
  v31 = [v30 stringByTrimmingCharactersInSet:v89];

  v32 = v31;
  v33 = [(__CFString *)v91 lastPathComponent];
  v34 = [v33 stringByTrimmingCharactersInSet:v89];

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
  v37 = [v86 fileExistsAtPath:v93 isDirectory:v97];
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
    v41 = [v86 createDirectoryAtPath:v93 withIntermediateDirectories:1 attributes:0 error:&v94];
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

  if (a3->var6 && ![(_ANEVirtualPlatformClient *)self createModelFile:v35 path:v40 ioSID:a3->var2 length:?])
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

  if (a3->var7 && ![(_ANEVirtualPlatformClient *)self createModelFile:v32 path:v40 ioSID:a3->var3 length:?])
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

  if (a3->var8 && ![(_ANEVirtualPlatformClient *)self createModelFile:v92 path:v40 ioSID:a3->var4 length:?])
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

  if (a3->var29 && ![(_ANEVirtualPlatformClient *)self createModelFile:@"net.plist" path:v40 ioSID:a3->var28 length:?])
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
    v43 = a3 + 8 * v42;
    if (!*(v43 + 72))
    {
LABEL_99:
      v52 = MEMORY[0x277CEE980];
      v47 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v84];
      v16 = [v52 modelAtURL:v47 key:v83];
      goto LABEL_129;
    }

    v44 = &a3->var0 + v42;
    v45 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:v44[112] classType:objc_opt_class() length:*(v43 + 72)];
    v46 = [v45 lastPathComponent];
    v47 = [v46 stringByTrimmingCharactersInSet:v89];

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

+ (BOOL)isFileModificationTimeStampSame:(id)a3 timeSince1970:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v6 fileExistsAtPath:v5])
    {
      v15 = 0;
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v15];
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
        v9 = v11 == a4;
        v12 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v17 = "+[_ANEVirtualPlatformClient isFileModificationTimeStampSame:timeSince1970:]";
          v18 = 2048;
          v19 = a4;
          v20 = 2048;
          v21 = v11;
          v22 = 1024;
          v23 = v11 == a4;
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

+ (BOOL)needToSaveFile:(id)a3 fileName:(id)a4 timeSince1970:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v7, v9];
    if ([v10 fileExistsAtPath:v11])
    {
      v12 = [v9 stringByAppendingString:@".timestamp"];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v7, v12];
      v14 = ![_ANEVirtualPlatformClient isFileModificationTimeStampSame:v13 timeSince1970:a5];
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

+ (BOOL)createLastModificationTimeStampFile:(id)a3 fileName:(id)a4 timeSince1970:(double)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v18 = a5;
  v9 = gLogger;
  v10 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
  if (v7 && v8)
  {
    if (v10)
    {
      *buf = 136315906;
      v20 = "+[_ANEVirtualPlatformClient createLastModificationTimeStampFile:fileName:timeSince1970:]";
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2048;
      v26 = a5;
      _os_log_debug_impl(&dword_25DF54000, v9, OS_LOG_TYPE_DEBUG, "%s path:%@, name:%@, timeSince1970:%f", buf, 0x2Au);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v7, v8];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:8];
    v17 = 0;
    v13 = [v12 writeToFile:v11 options:1 error:&v17];
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

+ (id)getCodeSigningIdentity:(__CFDictionary *)a3
{
  if (CFDictionaryContainsKey(a3, @"csIdentity") && (Value = CFDictionaryGetValue(a3, @"csIdentity")) != 0)
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

- (BOOL)createLLIRBundleOnDiskFromIOSurfaceWithID:(unsigned int)a3 destDirectory:(id)a4 llirDataSize:(unint64_t)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (v9)
  {
    if (a3)
    {
      if (a5)
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        if (v10)
        {
          v11 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
          v12 = v11;
          if (v11)
          {
            IOSurfaceLock(v11, 0, 0);
            v13 = [MEMORY[0x277CBEA90] dataWithBytes:IOSurfaceGetBaseAddress(v12) length:a5];
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
              v15 = [v9 stringByAppendingPathComponent:?];
              v16 = v64;
              v56 = v15;
              if ([v10 fileExistsAtPath:v15])
              {
                v63 = 0;
                v17 = [v10 removeItemAtPath:v15 error:&v63];
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
              v21 = [v10 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v62];
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
                      v27 = [v24 stringByDeletingLastPathComponent];
                      v58 = 0;
                      [v10 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v58];
                      v28 = v58;

                      if (v28)
                      {
                        log = gLogger;
                        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                        {
                          v33 = NSStringFromSelector(a2);
                          v34 = [v24 stringByDeletingLastPathComponent];
                          *buf = 138412802;
                          v66 = v33;
                          v67 = 2112;
                          v68 = v28;
                          v69 = 2112;
                          v49 = v34;
                          v70 = v34;
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
                    [v10 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v59];
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
                      v32 = [v24 stringByDeletingLastPathComponent];
                      *buf = 138412802;
                      v66 = v31;
                      v67 = 2112;
                      v68 = v26;
                      v69 = 2112;
                      loga = v32;
                      v70 = v32;
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

      v10 = gLogger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
      }
    }

    else
    {
      v10 = gLogger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualPlatformClient createLLIRBundleOnDiskFromIOSurfaceWithID:destDirectory:llirDataSize:];
      }
    }
  }

  else
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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

- (id)createAllModelFilesOnHost:(__CFDictionary *)a3
{
  v72 = *MEMORY[0x277D85DE8];
  if (CFDictionaryContainsKey(a3, @"numModelFiles"))
  {
    v61 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"numModelFiles"];
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

  v58 = [MEMORY[0x277CCAA00] defaultManager];
  v55 = [_ANEVirtualPlatformClient getCodeSigningIdentity:a3];
  v56 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  if (!CFDictionaryContainsKey(a3, @"ioSIDModelInputPath") || !CFDictionaryContainsKey(a3, @"modelInputPathLength"))
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

  v5 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDModelInputPath"];
  v6 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"modelInputPathLength"];
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
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, v55, v56, v52];
  v63 = 0;
  v59 = v10;
  v11 = [v58 fileExistsAtPath:? isDirectory:?];
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
    v15 = [v58 createDirectoryAtPath:v59 withIntermediateDirectories:1 attributes:0 error:&v62];
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

  v16 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"modelHWXLength"];
  if (!v16)
  {
    v20 = 1;
    goto LABEL_43;
  }

  Value = CFDictionaryGetValue(a3, @"hwxFileName");
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v59, Value];
  if ([v58 fileExistsAtPath:v18])
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

  v22 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDModelHWX"];
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
  v23 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"llirDataSize"];
  if (v23)
  {
    v24 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDLLIRBundle"];
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
    v27 = CFDictionaryGetValue(a3, v26);
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
    v29 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v28];
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
    v31 = CFDictionaryGetValue(a3, v30);
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
    v38 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v37];
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

- (id)createANEModelInstanceParameters:(__CFDictionary *)a3 modelUUID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v5 = gLogger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient createANEModelInstanceParameters:modelUUID:];
  }

  if (CFDictionaryContainsKey(a3, @"modelInstanceParametersData"))
  {
    v6 = [_ANEVirtualPlatformClient dictionaryGetDataBytesForKey:a3 key:@"modelInstanceParametersData"];
    aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::_ANEModelInstanceParametersSerializerDeserializer(v12, v6, gLogger);
  }

  v7 = 0;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)createOptionFilesForCompilation:(VirtANEModel *)a3 aneModelKey:(id)a4 options:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a4;
  v8 = a5;
  if (!v8)
  {
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  v25 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  v10 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var52 classType:objc_opt_class() length:a3->var53];
  v11 = [MEMORY[0x277CEE970] hexStringForString:v10];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", v25, v11];
  v13 = [v10 lastPathComponent];
  v14 = [v13 componentsSeparatedByString:@"."];
  v15 = [v14 lastObject];
  if ([v15 isEqual:@"hwx"] && a3->var6 && a3->var7 && a3->var8)
  {
    v16 = [v12 lastPathComponent];
    v22 = [v12 stringByReplacingOccurrencesOfString:v16 withString:&stru_286FC4C68];

    v12 = v22;
  }

  v17 = [v8 objectForKeyedSubscript:*MEMORY[0x277CEE9C0]];
  if (v17)
  {
    v18 = [(_ANEVirtualPlatformClient *)self createModelFile:v17 path:v12 ioSID:a3->var26 length:a3->var27];
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

- (void)createOptionFilesForCompilationDictionary:(__CFDictionary *)a3 aneModelKey:(id)a4 options:(id)a5 modelDirectory:(id)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient createOptionFilesForCompilation:aneModelKey:options:];
    }
  }

  v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CEE9C0]];
  if (v15)
  {
    if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"compilerOptionFileLength"])
    {
      if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDCompilerOptionFile"])
      {
        v16 = [_ANEVirtualPlatformClient createModelFile:"createModelFile:path:ioSID:length:" path:v15 ioSID:v13 length:?];
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

- (void)doRemoveModelFile:(VirtANEModel *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
  v6 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a3->var52 classType:objc_opt_class() length:a3->var53];
  v7 = [MEMORY[0x277CEE970] hexStringForString:v6];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", self->_anebaseDirectory, @"tmp", v23, v7];
  v9 = [v6 lastPathComponent];
  v10 = [v9 componentsSeparatedByString:@"."];
  v11 = [v10 lastObject];
  if ([v11 isEqual:@"hwx"] && a3->var6 && a3->var7 && a3->var8)
  {
    v12 = [v8 lastPathComponent];
    v13 = [v8 stringByReplacingOccurrencesOfString:v12 withString:&stru_286FC4C68];

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
  if ([v5 fileExistsAtPath:v8 isDirectory:&v25])
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient doRemoveModelFile:];
    }

    v24 = 0;
    v16 = [v5 removeItemAtPath:v8 error:&v24];
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

- (void)updateVirtualANEModel:(VirtANEModel *)a3 model:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3->var1)
  {
    if (v7)
    {
      v9 = [v7 modelAttributes];

      if (v9)
      {
        v10 = MEMORY[0x277CCAAA0];
        v11 = [v8 modelAttributes];
        v25 = 0;
        v12 = [v10 dataWithJSONObject:v11 options:1 error:&v25];
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

        a3->var15 = [v8 programHandle];
        a3->var16 = [v8 intermediateBufferHandle];
        a3->var17 = [v8 queueDepth];
        a3->var21 = [v8 perfStatsMask];
        a3->var25 = [v8 state];
        a3->var20 = [v12 length];
        v15 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3->var19];
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
          v23 = [v8 modelAttributes];
          v24 = [v12 length];
          *buf = 138412802;
          v27 = v22;
          v28 = 2112;
          v29 = v23;
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

- (void)updateVirtualANEModelDictionary:(__CFDictionary *)a3 model:(id)a4 cacheURLIdentifierToGuest:(BOOL)a5
{
  v5 = a5;
  v52 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = [v9 modelAttributes];

  if (v10)
  {
    v38 = self;
    v11 = MEMORY[0x277CCAAA0];
    v12 = [v9 modelAttributes];
    v45 = 0;
    v13 = [v11 dataWithJSONObject:v12 options:1 error:&v45];
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

    if (v5)
    {
      v16 = [v9 cacheURLIdentifier];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v9 cacheURLIdentifier];

        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
        }

        CFDictionarySetValue(a3, @"modelCacheURLIdentifier", v18);
      }
    }

    CFDictionaryRemoveValue(a3, @"programHandle");
    valuePtr = [v9 programHandle];
    v19 = *MEMORY[0x277CBECE8];
    v20 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(a3, @"programHandle", v20);
    CFRelease(v20);
    CFDictionaryRemoveValue(a3, @"intermediateBufferHandle");
    v43 = [v9 intermediateBufferHandle];
    v21 = CFNumberCreate(v19, kCFNumberSInt64Type, &v43);
    CFDictionarySetValue(a3, @"intermediateBufferHandle", v21);
    CFRelease(v21);
    CFDictionaryRemoveValue(a3, @"queueDepth");
    v42 = [v9 queueDepth];
    v22 = CFNumberCreate(v19, kCFNumberSInt8Type, &v42);
    CFDictionarySetValue(a3, @"queueDepth", v22);
    CFRelease(v22);
    CFDictionaryRemoveValue(a3, @"perfStatsMask");
    v41 = [v9 perfStatsMask];
    v23 = CFNumberCreate(v19, kCFNumberSInt32Type, &v41);
    CFDictionarySetValue(a3, @"perfStatsMask", v23);
    CFRelease(v23);
    CFDictionaryRemoveValue(a3, @"state");
    v40 = [v9 state];
    v24 = CFNumberCreate(v19, kCFNumberSInt32Type, &v40);
    CFDictionarySetValue(a3, @"state", v24);
    CFRelease(v24);
    v25 = [v9 getCacheURLIdentifier];
    v26 = gLogger;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateVirtualANEModelDictionary:model:cacheURLIdentifierToGuest:];
    }

    if (CFDictionaryContainsKey(a3, @"ioSIDModelParameters") && v25)
    {
      aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer::_ANEModelParamsSerializerDeserializer(buf, [_ANEVirtualPlatformClient dictionaryGetDataBytesForKey:a3 key:@"ioSIDModelParameters"]);
    }

    CFDictionaryRemoveValue(a3, @"modelAttributeLength");
    v39 = [v13 length];
    v27 = CFNumberCreate(v19, kCFNumberSInt64Type, &v39);
    CFDictionarySetValue(a3, @"modelAttributeLength", v27);
    CFRelease(v27);
    if (v39)
    {
      v28 = [(_ANEVirtualPlatformClient *)v38 getIOSurface:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDModelAttributes"]];
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
        v36 = [v9 modelAttributes];
        v37 = [v13 length];
        *buf = 138412802;
        v47 = v35;
        v48 = 2112;
        v49 = v36;
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

- (void)updatePerformanceStats:(VirtANEModel *)a3 aneRequest:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [v7 perfStats];
  a3->var49 = [v8 hwExecutionTime];

  v9 = [v7 perfStats];
  v10 = [v9 perfCounterData];
  a3->var51 = [v10 length];

  v11 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3->var50];
  v12 = gLogger;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    var49 = a3->var49;
    var51 = a3->var51;
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
  v14 = [v7 perfStats];
  v15 = [v14 perfCounterData];
  v16 = v15;
  v17 = [v15 bytes];
  v18 = [v7 perfStats];
  v19 = [v18 perfCounterData];
  memcpy(BaseAddress, v17, [v19 length]);

  IOSurfaceUnlock(v11, 0, 0);
  CFRelease(v11);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updatePerformanceStatsDictionary:(__CFDictionary *)a3 aneRequest:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  CFDictionaryRemoveValue(a3, @"hwExecutionTime");
  v7 = [v6 perfStats];
  v8 = [v7 hwExecutionTime];

  valuePtr = v8;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(a3, @"hwExecutionTime", v10);
  CFRelease(v10);
  CFDictionaryRemoveValue(a3, @"performanceStatsLength");
  v11 = [v6 perfStats];
  v12 = [v11 perfCounterData];
  v13 = [v12 length];

  v39 = v13;
  v14 = CFNumberCreate(v9, kCFNumberSInt64Type, &v39);
  CFDictionarySetValue(a3, @"performanceStatsLength", v14);
  CFRelease(v14);
  v15 = [(_ANEVirtualPlatformClient *)self getIOSurface:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDPerformanceStatsIndex"]];
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
  v18 = [v6 perfStats];
  v19 = [v18 perfCounterData];
  v20 = v19;
  v21 = [v19 bytes];
  v22 = [v6 perfStats];
  v23 = [v22 perfCounterData];
  memcpy(BaseAddress, v21, [v23 length]);

  IOSurfaceUnlock(v15, 0, 0);
  CFRelease(v15);
  if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDPerformanceStatsRaw"])
  {
    v24 = [(_ANEVirtualPlatformClient *)self getIOSurface:?];
    IOSurfaceLock(v24, 0, 0);
    v25 = IOSurfaceGetBaseAddress(v24);
    v26 = [v6 perfStats];
    v27 = [v26 pStatsRawData];
    v28 = v27;
    v29 = [v27 bytes];
    v30 = [v6 perfStats];
    v31 = [v30 pStatsRawData];
    memcpy(v25, v29, [v31 length]);

    IOSurfaceUnlock(v24, 0, 0);
    CFRelease(v24);
    v32 = MEMORY[0x277CCABB0];
    v33 = [v6 perfStats];
    v34 = [v33 pStatsRawData];
    v35 = [v32 numberWithUnsignedLongLong:{objc_msgSend(v34, "length")}];
    [(__CFDictionary *)a3 setObject:v35 forKey:@"performanceStatsRawLength"];
  }

  else
  {
    v33 = gLogger;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updatePerformanceStatsDictionary:aneRequest:];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorValue:(VirtANEModel *)a3 error:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateErrorValue:error:];
    }

    a3->var46 = [v7 code];
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    v12 = v11;
    if (v10 && v11)
    {
      a3->var47 = [v11 length];
      v13 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3->var48];
      IOSurfaceLock(v13, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v13);
      v15 = v12;
      memcpy(BaseAddress, [v12 bytes], objc_msgSend(v12, "length"));
      IOSurfaceUnlock(v13, 0, 0);
      CFRelease(v13);
    }

    else
    {
      a3->var47 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorValueDictionary:(__CFDictionary *)a3 error:(id)a4
{
  v21[5] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualPlatformClient updateErrorValue:error:];
    }

    CFDictionaryRemoveValue(a3, @"errorCode");
    valuePtr = [v7 code];
    v9 = *MEMORY[0x277CBECE8];
    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(a3, @"errorCode", v10);
    CFRelease(v10);
    v11 = [v7 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    if ([_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDErrorValue"])
    {
      v14 = [(_ANEVirtualPlatformClient *)self getIOSurface:?];
      CFDictionaryRemoveValue(a3, @"errorLength");
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
      CFDictionarySetValue(a3, @"errorLength", v17);
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

- (void)doModelAttributeUpdate:(id)a3 virtualANEModel:(VirtANEModel *)a4
{
  v7 = a3;
  v6 = [(_ANEVirtualPlatformClient *)self getObjectFromIOSurfaceID:a4->var19 classType:objc_opt_class() length:a4->var20];
  [v7 setPerfStatsMask:a4->var21];
  [v7 setString_id:a4->var14];
  [v7 updateModelAttributes:v6 state:a4->var25 programHandle:a4->var15 intermediateBufferHandle:a4->var16 queueDepth:a4->var17];
}

- (void)doModelAttributeUpdateDictionary:(id)a3 dictionary:(__CFDictionary *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
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
  [v7 setPerfStatsMask:v11];
  v12 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"string_id"];
  [v7 setString_id:v12];
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

  [v7 updateModelAttributes:v10 state:v13 programHandle:v14 intermediateBufferHandle:v15 queueDepth:v16];
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceInfo:(DeviceInfo *)a3
{
  a3->var3 = [MEMORY[0x277CEE958] hasANE];
  p_var3 = &a3->var3;
  a3->var2 = [MEMORY[0x277CEE958] aneBoardType];
  p_var2 = &a3->var2;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [(_ANEVirtualPlatformClient *)p_var3 getDeviceInfo:?];
  }
}

- (void)storeGuestBuildVersion:(BuildVersionInfoLegacy *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->var1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:&stru_286FC4C68];
  guestBuildVersion = self->_guestBuildVersion;
  self->_guestBuildVersion = v5;

  self->_negotiatedDataInterfaceVersion = 0x10000;
  self->_negotiatedCapabilityMask = 0;
  v7 = gLogger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
    v10 = 138412802;
    v11 = v9;
    v12 = 1024;
    v13 = [(_ANEVirtualPlatformClient *)self negotiatedDataInterfaceVersion];
    v14 = 2048;
    v15 = [(_ANEVirtualPlatformClient *)self negotiatedCapabilityMask];
    _os_log_debug_impl(&dword_25DF54000, v7, OS_LOG_TYPE_DEBUG, "ANEVirtualPlatformClient Guest used legacy interface guestBuildVersion=%@ : guestDataInterfaceVersion=0x%x : guestCapability=0x%llx", &v10, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)exchangeBuildVersionInfo:(BuildVersionInfo *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  if (self->_avpSaveRestoreSupported)
  {
    if (a3->var0 <= 0x20300)
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

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->var3];
  v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_286FC4C68];
  guestBuildVersion = self->_guestBuildVersion;
  self->_guestBuildVersion = v8;

  var0 = a3->var0;
  if (a3->var0 >= 0x20406)
  {
    var0 = 132102;
  }

  self->_negotiatedDataInterfaceVersion = var0;
  self->_negotiatedCapabilityMask = a3->var2 & v6;
  v11 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    negotiatedDataInterfaceVersion = self->_negotiatedDataInterfaceVersion;
    v24 = self->_guestBuildVersion;
    negotiatedCapabilityMask = self->_negotiatedCapabilityMask;
    v26 = a3->var0;
    var2 = a3->var2;
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

  v12 = [MEMORY[0x277CEE958] productName];
  v13 = v12;
  if (!v12 || [v12 isEqualToString:&stru_286FC4C68])
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

  v15 = [MEMORY[0x277CEE958] buildVersion];
  v16 = v15;
  if (!v15 || [v15 isEqualToString:&stru_286FC4C68])
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
  v20 = [(__CFString *)v18 UTF8String];
  v21 = gLogger;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient exchangeBuildVersionInfo:];
  }

  memcpy(a3->var3, v20, [(__CFString *)v18 length]);
  a3->var4 = [(__CFString *)v18 length];
  a3->var0 = 132102;
  a3->var2 = v6;
  a3->var6 = ANEGetValidateNetworkSupportedVersion();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyBytesToIOSurface:(char *)a3 dataLength:(unsigned int)a4 ioSID:(unsigned int)a5
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a5)
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

  v9 = [(_ANEVirtualPlatformClient *)self getIOSurface:a5];
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
  memcpy(BaseAddress, a3, a4);
  v12 = gLogger;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = NSStringFromSelector(a2);
    v16 = 138412802;
    v17 = v15;
    v18 = 2048;
    v19 = a4;
    v20 = 1024;
    v21 = a5;
    _os_log_debug_impl(&dword_25DF54000, v12, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient data in bytes %lu IOSID: %u\n", &v16, 0x1Cu);
  }

  IOSurfaceUnlock(v10, 0, 0);
  CFRelease(v10);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)printStruct:(VirtANEModel *)a3
{
  if (a3)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualPlatformClient printStruct:a3];
    }
  }
}

- (void)getBytesFromIOSurfaceID:(unsigned int)a3 dest:(char *)a4 dataLength:(unint64_t)a5
{
  v7 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
  if (v7)
  {
    v8 = v7;
    IOSurfaceLock(v7, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v8);
    memcpy(a4, BaseAddress, a5);
    IOSurfaceUnlock(v8, 0, 0);

    CFRelease(v8);
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualPlatformClient getBytesFromIOSurfaceID:dest:dataLength:];
  }
}

- (void)callCFDictionaryMethod:(AppleVirtIONeuralEngineCFData *)a3
{
  errorString[14] = *MEMORY[0x277D85DE8];
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualPlatformClient callCFDictionaryMethod:];
  }

  var4 = a3->var4;
  v8 = operator new[](var4, MEMORY[0x277D826F0]);
  v9 = v8;
  if (!var4 || v8)
  {
    [(_ANEVirtualPlatformClient *)self getBytesFromIOSurfaceID:a3->var2 dest:v8 dataLength:var4];
    errorString[0] = 0;
    v10 = IOCFUnserializeBinary(v9, a3->var4, 0, 0, errorString);
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

          a3->var1 = -536870911;
LABEL_33:
          v16 = IOCFSerialize(v10, 0);
          break;
      }

      CFRelease(v10);
      if (v16)
      {
        BytePtr = CFDataGetBytePtr(v16);
        [(_ANEVirtualPlatformClient *)self copyBytesToIOSurface:BytePtr dataLength:CFDataGetLength(v16) ioSID:a3->var3];
        a3->var5 = CFDataGetLength(v16);
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

        a3->var5 = 0;
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

- (void)asyncAvpHoldMessageReceived:(AppleVirtIONeuralEngineCFData *)a3
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
  a3->var1 = -536870911;
  v7 = *MEMORY[0x277D85DE8];
}

- (id)requestWithVirtualANEModel:(VirtANEModel *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (!a3->var40)
  {
LABEL_5:
    v8 = objc_opt_new();
    if (a3->var41)
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var31[v9]];
        [v8 addObject:v10];

        ++v9;
      }

      while (v9 < a3->var41);
    }

    v11 = objc_opt_new();
    v31 = v11;
    if (a3->var42)
    {
      v12 = 0;
      while (1)
      {
        v13 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:a3->var32[v12]];
        if (!v13)
        {
          break;
        }

        [v11 addObject:v13];

        if (++v12 >= a3->var42)
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
    if (a3->var43)
    {
      v15 = 0;
      do
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var33[v15]];
        [v14 addObject:v16];

        ++v15;
      }

      while (v15 < a3->var43);
    }

    v29 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:a3->var34];
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

    if (a3->var39)
    {
      v32 = objc_opt_new();
      if (a3->var39)
      {
        v18 = 0;
        var38 = a3->var38;
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
          if (v18 >= a3->var39)
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
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var35];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3->var36];
    v22 = [v23 requestWithInputs:v5 inputIndices:v8 outputs:v31 outputIndices:v14 weightsBuffer:v29 perfStats:v32 procedureIndex:v24 sharedEvents:0 transactionHandle:v25];

LABEL_34:
LABEL_35:

    goto LABEL_36;
  }

  v6 = 0;
  while (1)
  {
    v7 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:a3->var30[v6]];
    if (!v7)
    {
      break;
    }

    [v5 addObject:v7];

    if (++v6 >= a3->var40)
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

- (id)requestWithVirtualANEModelDictionary:(__CFDictionary *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = objc_opt_new();
  v4 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"inputArrayCount"];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = CFStringCreateWithFormat(0, 0, @"inputArray%u", v5);
      v7 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v6];
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
    v9 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"inputArrayCount"];
    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = CFStringCreateWithFormat(0, 0, @"inputIndexArray%u", v10);
        v12 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v11];
        CFRelease(v11);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
        [v48 addObject:v13];

        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }

    v46 = objc_opt_new();
    v14 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"outputArrayCount"];
    if (v14)
    {
      v15 = 0;
      while (1)
      {
        v16 = CFStringCreateWithFormat(0, 0, @"outputArray%u", v15);
        v17 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v16];
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
      v20 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"outputArrayCount"];
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = CFStringCreateWithFormat(0, 0, @"outputIndexArray%u", v21);
          v23 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v22];
          CFRelease(v22);
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
          [v19 addObject:v24];

          v21 = (v21 + 1);
        }

        while (v20 != v21);
      }

      v43 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:[_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"ioSIDWeightsBufferIndex"]];
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

      v26 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"perfStatsCount"];
      if (v26)
      {
        v45 = objc_opt_new();
        v27 = 0;
        while (1)
        {
          v28 = CFStringCreateWithFormat(0, 0, @"ioSIDPerfStats%d", v27);
          v29 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v28];
          CFRelease(v28);
          v30 = [(_ANEVirtualPlatformClient *)self objectWithIOSurfaceID:v29];
          if (!v30)
          {
            break;
          }

          v31 = CFStringCreateWithFormat(0, 0, @"perfStatsType%d", v27);
          v32 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:v31];
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
        v35 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"procedureIndex"];
        v36 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a3 key:@"transactionHandle"];
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

+ (__CFDictionary)prepareValidationResultForSerialization:(__CFDictionary *)a3
{
  if (!a3)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a3);
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
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
    CFRelease(a3);
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

+ (id)generateExpectedBaseDirectoryWith:(id)a3 withCSIdentity:(id)a4 withVMID:(id)a5 fileSubDirectory:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@/%@/", v9, v10, v11, v12];

  return v13;
}

+ (id)generateExpectedPathForFileName:(id)a3 withANEBaseDirectory:(id)a4 withCSIdentity:(id)a5 withVMID:(id)a6 fileSubDirectory:(id)a7
{
  v11 = a3;
  v12 = [_ANEVirtualPlatformClient generateExpectedBaseDirectoryWith:a4 withCSIdentity:a5 withVMID:a6 fileSubDirectory:a7];
  v13 = [v12 stringByAppendingPathComponent:v11];

  return v13;
}

- (id)generatedExpectedBaseDirectoryWithFileType:(unsigned int)a3 withInputDictionary:(__CFDictionary *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [_ANEVirtualPlatformClient getCodeSigningIdentity:a4];
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

  if (a3 == 2)
  {
    v18 = [(__CFDictionary *)a4 objectForKeyedSubscript:@"uuid"];
    v13 = v18;
    if (v18 && [v18 length])
    {
      anebaseDirectory = self->_anebaseDirectory;
      v15 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
      v17 = [_ANEVirtualPlatformClient generateExpectedBaseDirectoryWith:anebaseDirectory withCSIdentity:v9 withVMID:v15 fileSubDirectory:v13];
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
    if (a3 != 1)
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

    v10 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"ioSIDModelInputPath"];
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

    v11 = [_ANEVirtualPlatformClient dictionaryGetUInt64ForKey:a4 key:@"modelInputPathLength"];
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
      v15 = [(_ANEVirtualPlatformClient *)self guestBuildVersion];
      v16 = [MEMORY[0x277CEE970] hexStringForString:v13];
      v17 = [_ANEVirtualPlatformClient generateExpectedBaseDirectoryWith:v14 withCSIdentity:v9 withVMID:v15 fileSubDirectory:v16];

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

- (id)generateExpectedModelFilePathFromDictionary:(__CFDictionary *)a3 error:(id *)a4
{
  v6 = [(__CFDictionary *)a3 objectForKeyedSubscript:@"genericFileName", a4];
  v7 = [(_ANEVirtualPlatformClient *)self generateExpectedPathForFileName:v6 withFileType:[_ANEVirtualPlatformClient withInputDictionary:"dictionaryGetUInt64ForKey:key:" dictionaryGetUInt64ForKey:a3 key:@"fileType"], a3];

  return v7;
}

+ (id)getPrecompiledModelPath:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  aSelector = a2;
  v30 = 0;
  v25 = [v6 contentsOfDirectoryAtPath:v24 error:&v30];
  v7 = v30;

  if (v7)
  {
    if (a4)
    {
      v8 = v7;
      v9 = 0;
      *a4 = v7;
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
          v15 = [v14 pathExtension];
          v16 = [v15 isEqualToString:@"hwx"];

          if (v16)
          {
            v9 = [v24 stringByAppendingPathComponent:v14];

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

    if (a4)
    {
      v17 = MEMORY[0x277CEE968];
      v18 = NSStringFromSelector(aSelector);
      *a4 = [v17 fileNotFoundErrorForMethod:v18];
    }
  }

  else if (a4)
  {
    v19 = MEMORY[0x277CEE968];
    v20 = NSStringFromSelector(a2);
    *a4 = [v19 fileNotFoundErrorForMethod:v20];
  }

  v9 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)objectWithIOSurfaceID:(unsigned int)a3
{
  v3 = [(_ANEVirtualPlatformClient *)self getIOSurface:a3];
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