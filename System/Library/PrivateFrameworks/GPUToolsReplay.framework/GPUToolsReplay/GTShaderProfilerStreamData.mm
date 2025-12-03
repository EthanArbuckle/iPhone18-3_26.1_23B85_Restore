@interface GTShaderProfilerStreamData
+ (id)dataForMetadataFromArchivedDataURL:(id)l;
+ (id)dataFromArchivedDataURL:(id)l;
+ (id)savedStreamDataFromCaptureArchive:(id)archive;
+ (id)steamDataFromData:(id)data;
+ (id)streamDataClasses;
- (GTShaderProfilerStreamData)init;
- (GTShaderProfilerStreamData)initWithCoder:(id)coder;
- (GTShaderProfilerStreamData)initWithNewFileFormatV2Support:(BOOL)support;
- (GTShaderProfilerStreamData)initWithPreSiBundle:(id)bundle;
- (NSArray)unarchivedAPSCounterData;
- (NSArray)unarchivedAPSData;
- (NSArray)unarchivedAPSTimelineData;
- (NSArray)unarchivedBatchIdFilteredCounterData;
- (NSArray)unarchivedGPUTimelineData;
- (NSArray)unarchivedShaderProfilerData;
- (NSString)shortDescription;
- (_NSRange)dataSourceCaptureRange;
- (const)GPUCommandInfoFromFunctionIndex:(unsigned int)index subCommandIndex:(int)commandIndex;
- (const)encoderInfoFromFunctionIndex:(unsigned int)index;
- (id)_setupDataPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataFromUnarchvedMetadata:(id)metadata;
- (id)description;
- (id)encode:(id)encode error:(id *)error;
- (void)_writeLocalData:(id)data dataPath:(id)path to:(id)to;
- (void)cleanupLocalFiles;
- (void)dealloc;
- (void)debugDump:(id)dump;
- (void)encodeAPSArrayForOldHost:(id)host array:(id)array;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateUnarchivedBatchIdFilteredCounterData:(id)data;
- (void)enumerateUnarchivedGPUTimelineData:(id)data;
- (void)enumerateUnarchivedShaderProfilerData:(id)data;
- (void)patchObjectIds:(id)ids;
- (void)setMetalPluginName:(id)name;
@end

@implementation GTShaderProfilerStreamData

- (_NSRange)dataSourceCaptureRange
{
  length = self->_captureRange.length;
  location = self->_captureRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  shortDescription = [(GTShaderProfilerStreamData *)self shortDescription];
  [v3 appendString:shortDescription];

  profiledPerformanceState = [(GTShaderProfilerStreamData *)self profiledPerformanceState];
  v6 = @"Unknown";
  if (profiledPerformanceState <= 3)
  {
    v6 = off_2796579E0[profiledPerformanceState];
  }

  v7 = v6;
  profiledExecutionMode = [(GTShaderProfilerStreamData *)self profiledExecutionMode];
  v9 = @"Serial";
  if (profiledExecutionMode != 1)
  {
    v9 = @"Unknown";
  }

  if (!profiledExecutionMode)
  {
    v9 = @"Overlapping";
  }

  v10 = v9;
  [v3 appendFormat:@", %@, %@", v7, v10];

  if ([(GTShaderProfilerStreamData *)self unixTimestamp]>= 1)
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{-[GTShaderProfilerStreamData unixTimestamp](self, "unixTimestamp")}];
    if (v11)
    {
      v12 = objc_opt_new();
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      [v12 setLocale:currentLocale];

      [v12 setDateFormat:@"yyyy-MM-dd HH:mm"];
      v14 = [v12 stringFromDate:v11];
      [v3 appendFormat:@", %@", v14];
    }
  }

  return v3;
}

- (NSString)shortDescription
{
  deviceInfo = [(GTShaderProfilerStreamData *)self deviceInfo];

  if (!deviceInfo)
  {
    v8 = MEMORY[0x277CCACA8];
    metalDeviceName = [(GTShaderProfilerStreamData *)self metalDeviceName];
    if ([metalDeviceName length])
    {
      metalDeviceName2 = [(GTShaderProfilerStreamData *)self metalDeviceName];
      v11 = [v8 stringWithFormat:@"%@", metalDeviceName2];
    }

    else
    {
      v11 = [v8 stringWithFormat:@"%@", @"Unknown Device"];
    }

    goto LABEL_25;
  }

  deviceInfo2 = [(GTShaderProfilerStreamData *)self deviceInfo];
  platform = [deviceInfo2 platform];

  if (platform <= 3)
  {
    if (platform == 1)
    {
      v6 = 0;
      v7 = @"macOS";
      goto LABEL_17;
    }

    if (platform == 2)
    {
      v6 = 0;
      v7 = @"iOS";
      goto LABEL_17;
    }

LABEL_16:
    v7 = 0;
    v6 = 1;
    goto LABEL_17;
  }

  if (platform == 4)
  {
    v6 = 0;
    v7 = @"tvOS";
    goto LABEL_17;
  }

  if (platform == 5)
  {
    v6 = 0;
    v7 = @"watchOS";
    goto LABEL_17;
  }

  if (platform != 9)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v7 = @"visionOS";
LABEL_17:
  metalDeviceName = objc_alloc_init(MEMORY[0x277CBEB18]);
  metalDeviceName3 = [(GTShaderProfilerStreamData *)self metalDeviceName];
  if (metalDeviceName3)
  {
    [metalDeviceName addObject:metalDeviceName3];
  }

  if (v6)
  {
    deviceInfo3 = [(GTShaderProfilerStreamData *)self deviceInfo];
    version = [deviceInfo3 version];
    [metalDeviceName addObject:version];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    deviceInfo3 = [(GTShaderProfilerStreamData *)self deviceInfo];
    version = [deviceInfo3 version];
    v16 = [v15 stringWithFormat:@"%@ %@", v7, version];
    [metalDeviceName addObject:v16];
  }

  if (os_variant_allows_internal_security_policies())
  {
    deviceInfo4 = [(GTShaderProfilerStreamData *)self deviceInfo];
    build = [deviceInfo4 build];
    [metalDeviceName addObject:build];
  }

  v19 = MEMORY[0x277CCACA8];
  deviceInfo5 = [(GTShaderProfilerStreamData *)self deviceInfo];
  name = [deviceInfo5 name];
  v22 = [metalDeviceName componentsJoinedByString:{@", "}];
  v11 = [v19 stringWithFormat:@"%@ (%@)", name, v22];

LABEL_25:

  return v11;
}

- (void)dealloc
{
  dataFileURL = self->_dataFileURL;
  if (dataFileURL)
  {
    [(NSURL *)dataFileURL stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = GTShaderProfilerStreamData;
  [(GTShaderProfilerStreamData *)&v4 dealloc];
}

- (void)cleanupLocalFiles
{
  if (self->_dataFileURL && self->_isUsingTempDataDir)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)self->_dataFileURL path];
    [defaultManager removeItemAtPath:path error:0];

    dataFileURL = self->_dataFileURL;
    self->_dataFileURL = 0;
  }
}

- (id)_setupDataPath
{
  self->_isUsingTempDataDir = 0;
  dataFileURL = self->_dataFileURL;
  if (dataFileURL)
  {
    v3 = dataFileURL;
  }

  else
  {
    traceName = [(GTShaderProfilerStreamData *)self traceName];
    stringByDeletingPathExtension = [traceName stringByDeletingPathExtension];
    v7 = [stringByDeletingPathExtension stringByAppendingString:@"_stream"];
    v8 = v7;
    if (v7)
    {
      uUIDString = v7;
    }

    else
    {
      v10 = objc_opt_new();
      uUIDString = [v10 UUIDString];
    }

    v11 = [@"/tmp/com.apple.gputools.profiling" stringByAppendingPathComponent:uUIDString];
    v12 = [v11 stringByAppendingPathExtension:@"gpuprofiler_raw"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:v12 error:0];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    [defaultManager2 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v20];
    v15 = v20;

    if (v15)
    {
      [(GTShaderProfilerStreamData *)self setSupportsFileFormatV2:0];
      v16 = self->_dataFileURL;
      self->_dataFileURL = 0;

      v3 = 0;
    }

    else
    {
      self->_isUsingTempDataDir = 1;
      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
      v18 = self->_dataFileURL;
      self->_dataFileURL = v17;

      v3 = self->_dataFileURL;
    }
  }

  return v3;
}

- (void)_writeLocalData:(id)data dataPath:(id)path to:(id)to
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  pathCopy = path;
  toCopy = to;
  if ([(GTShaderProfilerStreamData *)self supportsFileFormatV2])
  {
    v31 = objc_opt_new();
    if ([dataCopy count])
    {
      v10 = 0;
      v11 = 0;
      v12 = @"APSTraceData";
      v29 = dataCopy;
      do
      {
        v13 = [dataCopy objectAtIndexedSubscript:v11];
        v14 = [v13 mutableCopy];

        v15 = [v14 objectForKeyedSubscript:v12];
        if (v15)
        {
          v16 = v12;
          v17 = [v14 objectForKeyedSubscript:@"APSTraceDataFile"];
          v18 = [pathCopy URLByAppendingPathComponent:v17];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          path = [v18 path];
          v21 = [defaultManager fileExistsAtPath:path];

          if ((v21 & 1) == 0)
          {
            [v15 writeToURL:v18 atomically:1];
          }

          v12 = v16;
          [v14 setObject:0 forKeyedSubscript:v16];
          [v31 addObject:v14];

          v10 = 1;
          dataCopy = v29;
        }

        else
        {
          [v31 addObject:v14];
        }

        ++v11;
      }

      while (v11 < [dataCopy count]);
      if (v10)
      {
        [toCopy removeAllObjects];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = v31;
        v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v33;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(*(&v32 + 1) + 8 * i) requiringSecureCoding:1 error:0];
              if (v27)
              {
                [toCopy addObject:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v24);
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)encode:(id)encode error:(id *)error
{
  encodeCopy = encode;
  v7 = objc_autoreleasePoolPush();
  v36 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v36];
  v9 = v36;
  if (!v9)
  {
    _setupDataPath = [(GTShaderProfilerStreamData *)self _setupDataPath];
    if (_setupDataPath && [(GTShaderProfilerStreamData *)self supportsFileFormatV2])
    {
      v14 = [_setupDataPath URLByAppendingPathComponent:@"streamData"];
      v35 = 0;
      [v8 writeToURL:v14 options:0 error:&v35];
      v10 = v35;

      if (v10)
      {
        if (error)
        {
LABEL_8:
          v15 = v10;
          v12 = 0;
          *error = v10;
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:
        v12 = 0;
        goto LABEL_29;
      }

      unarchivedAPSData = [(GTShaderProfilerStreamData *)self unarchivedAPSData];
      [(GTShaderProfilerStreamData *)self _writeLocalData:unarchivedAPSData dataPath:_setupDataPath to:self->_archivedAPSData];

      unarchivedAPSCounterData = [(GTShaderProfilerStreamData *)self unarchivedAPSCounterData];
      [(GTShaderProfilerStreamData *)self _writeLocalData:unarchivedAPSCounterData dataPath:_setupDataPath to:self->_archivedAPSCounterData];

      unarchivedAPSTimelineData = [(GTShaderProfilerStreamData *)self unarchivedAPSTimelineData];
      [(GTShaderProfilerStreamData *)self _writeLocalData:unarchivedAPSTimelineData dataPath:_setupDataPath to:self->_archivedAPSTimelineData];

      if (encodeCopy && ([encodeCopy isEqual:_setupDataPath] & 1) == 0)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path = [encodeCopy path];
        v28 = [defaultManager fileExistsAtPath:path];

        if (v28)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 removeItemAtURL:encodeCopy error:0];
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v34 = 0;
        [defaultManager3 copyItemAtURL:_setupDataPath toURL:encodeCopy error:&v34];
        v10 = v34;

        if (v10)
        {
          if (error)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      if (!encodeCopy || ([encodeCopy isEqual:_setupDataPath] & 1) != 0)
      {
        traceName = [(GTShaderProfilerStreamData *)self traceName];
        stringByDeletingPathExtension = [traceName stringByDeletingPathExtension];
        v18 = stringByDeletingPathExtension;
        if (stringByDeletingPathExtension)
        {
          v19 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"gpuprofiler_raw"];
        }

        else
        {
          v20 = objc_opt_new();
          uUIDString = [v20 UUIDString];
          v19 = [uUIDString stringByAppendingPathExtension:@"gpuprofiler_raw"];
        }

        v12 = [_setupDataPath URLByAppendingPathComponent:v19];
        v32 = 0;
        [v8 writeToURL:v12 options:1 error:&v32];
        v10 = v32;

        goto LABEL_29;
      }

      v33 = 0;
      [v8 writeToURL:encodeCopy options:1 error:&v33];
      v10 = v33;
    }

    if (encodeCopy)
    {
      v25 = encodeCopy;
    }

    else
    {
      v25 = _setupDataPath;
    }

    v12 = v25;
    goto LABEL_29;
  }

  v10 = v9;
  if (error)
  {
    v11 = v9;
    v12 = 0;
    *error = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_30:

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (const)encoderInfoFromFunctionIndex:(unsigned int)index
{
  result = [(GTShaderProfilerStreamData *)self encoderInfoCount];
  if (result)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      result = [(GTShaderProfilerStreamData *)self encoders]+ v6;
      if (result->var2 == index)
      {
        break;
      }

      ++v7;
      v6 += 40;
      if (v7 >= [(GTShaderProfilerStreamData *)self encoderInfoCount])
      {
        return 0;
      }
    }
  }

  return result;
}

- (const)GPUCommandInfoFromFunctionIndex:(unsigned int)index subCommandIndex:(int)commandIndex
{
  result = [(GTShaderProfilerStreamData *)self gpuCommandInfoCount];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      gpuCommands = [(GTShaderProfilerStreamData *)self gpuCommands];
      if (gpuCommands[v8].var4 == index && gpuCommands[v8].var6 == commandIndex)
      {
        break;
      }

      ++v9;
      ++v8;
      if (v9 >= [(GTShaderProfilerStreamData *)self gpuCommandInfoCount])
      {
        return 0;
      }
    }

    return &gpuCommands[v8];
  }

  return result;
}

- (void)setMetalPluginName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy || ![nameCopy hasPrefix:@"AGXMetal"])
  {
    goto LABEL_17;
  }

  v6 = [v5 substringFromIndex:{objc_msgSend(@"AGXMetal", "length")}];
  v7 = v6;
  if (!v6 || ([v6 hasPrefix:@"G"] & 1) == 0 && (objc_msgSend(v7, "hasPrefix:", @"A") & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"1"))
  {

LABEL_17:
    goto LABEL_18;
  }

  uTF8String = [v7 UTF8String];
  v9 = [v7 hasPrefix:@"1"] ^ 1;
  if ([v7 length] <= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *(uTF8String + v9) - 48;
      if (v11 > 9)
      {
        break;
      }

      v10 = v11 + 10 * v10;
      ++v9;
    }

    while (v9 < [v7 length]);
    if (v10 == 15)
    {
      if (v9 < [v7 length] && objc_msgSend(v7, "characterAtIndex:", v9) == 95 || v9 == objc_msgSend(v7, "length"))
      {
        v10 = 14;
      }

      else
      {
        v10 = 15;
      }
    }
  }

  if ([v7 hasPrefix:@"A"])
  {
    v14 = -11;
  }

  else
  {
    v14 = -10;
  }

  v15 = v14 + v10;
  if (v14 + v10 < 0)
  {
    v16 = -1;
  }

  else
  {
    v16 = v14 + v10;
  }

  if ((v16 - 0x7FFFFFFF) < 2)
  {
    v12 = 0;
    goto LABEL_19;
  }

  if (v15 < 5 || v15 == 5 && (([v5 hasSuffix:@"M"] & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"P") & 1) != 0))
  {
LABEL_18:
    v12 = 1;
    goto LABEL_19;
  }

  v12 = 2;
LABEL_19:
  self->_gpuGeneration = v12;
  metalPluginName = self->_metalPluginName;
  self->_metalPluginName = v5;
}

- (void)patchObjectIds:(id)ids
{
  idsCopy = ids;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults BOOLForKey:@"GPUDebugger.ShaderProfiler.DebugObjectIdPatch"];

  if (!self->_dataSourceHasUnusedResources)
  {
    encoderInfoCount = [(GTShaderProfilerStreamData *)self encoderInfoCount];
    if (encoderInfoCount == [idsCopy encoderInfoCount])
    {
      pipelineStateInfoCount = [(GTShaderProfilerStreamData *)self pipelineStateInfoCount];
      if (pipelineStateInfoCount == [idsCopy pipelineStateInfoCount])
      {
        functionInfoCount = [(GTShaderProfilerStreamData *)self functionInfoCount];
        if (functionInfoCount == [idsCopy functionInfoCount])
        {
          commandBufferInfoCount = [(GTShaderProfilerStreamData *)self commandBufferInfoCount];
          if (commandBufferInfoCount == [idsCopy commandBufferInfoCount])
          {
            encoders = [(GTShaderProfilerStreamData *)self encoders];
            if ([(GTShaderProfilerStreamData *)self encoderInfoCount])
            {
              v10 = 0;
              v11 = 0;
              do
              {
                var2 = encoders[v10].var2;
                if (var2 >= *([idsCopy encoders] + v10 * 40 + 16))
                {
                  encoders[v10].var0 = *([idsCopy encoders] + v10 * 40);
                }

                ++v11;
                ++v10;
              }

              while (v11 < [(GTShaderProfilerStreamData *)self encoderInfoCount]);
            }

            commandBuffers = [(GTShaderProfilerStreamData *)self commandBuffers];
            if ([(GTShaderProfilerStreamData *)self commandBufferInfoCount])
            {
              v14 = 0;
              v15 = 0;
              do
              {
                v16 = commandBuffers[v14].var2;
                if (v16 == *([idsCopy commandBuffers] + v14 * 32 + 16))
                {
                  commandBuffers[v14].var0 = *([idsCopy commandBuffers] + v14 * 32);
                }

                ++v15;
                ++v14;
              }

              while (v15 < [(GTShaderProfilerStreamData *)self commandBufferInfoCount]);
            }

            pipelineStates = [(GTShaderProfilerStreamData *)self pipelineStates];
            if ([(GTShaderProfilerStreamData *)self pipelineStateInfoCount])
            {
              v18 = 0;
              v19 = 0;
              do
              {
                v20 = pipelineStates[v18].var2;
                if (v20 == *([idsCopy pipelineStates] + v18 * 40 + 16))
                {
                  pipelineStates[v18].var0 = *([idsCopy pipelineStates] + v18 * 40);
                }

                ++v19;
                ++v18;
              }

              while (v19 < [(GTShaderProfilerStreamData *)self pipelineStateInfoCount]);
            }

            functionInfo = [(GTShaderProfilerStreamData *)self functionInfo];
            if ([(GTShaderProfilerStreamData *)self functionInfoCount])
            {
              v22 = 0;
              v23 = 0;
              do
              {
                v24 = &functionInfo[v22];
                var1 = functionInfo[v22].var1;
                if (var1 == *([idsCopy functionInfo] + v22 * 48 + 8))
                {
                  v24->var0 = *([idsCopy functionInfo] + v22 * 48);
                  v24->var2 = *([idsCopy functionInfo] + v22 * 48 + 16);
                }

                ++v23;
                ++v22;
              }

              while (v23 < [(GTShaderProfilerStreamData *)self functionInfoCount]);
            }
          }
        }
      }
    }
  }
}

- (void)debugDump:(id)dump
{
  dumpCopy = dump;
  v4 = objc_opt_new();
  if ([(GTShaderProfilerStreamData *)self gpuCommandInfoCount])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      gpuCommands = [(GTShaderProfilerStreamData *)self gpuCommands];
      [v4 appendFormat:@"I: %d, E: %d, P: %d, F: %llu, S: %d, T: %d\n", gpuCommands[v5].var0, gpuCommands[v5].var1, gpuCommands[v5].var3, gpuCommands[v5].var4, gpuCommands[v5].var6, gpuCommands[v5].var5];
      ++v6;
      ++v5;
    }

    while (v6 < [(GTShaderProfilerStreamData *)self gpuCommandInfoCount]);
  }

  [v4 writeToFile:dumpCopy atomically:0 encoding:4 error:0];
}

- (NSArray)unarchivedBatchIdFilteredCounterData
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_archivedBatchIdFilteredCounterData count])
  {
    unarchivedBatchIdFilteredCounterData = self->_unarchivedBatchIdFilteredCounterData;
    if (!unarchivedBatchIdFilteredCounterData || ![(NSMutableArray *)unarchivedBatchIdFilteredCounterData count])
    {
      v4 = objc_opt_new();
      v5 = self->_unarchivedBatchIdFilteredCounterData;
      self->_unarchivedBatchIdFilteredCounterData = v4;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_archivedBatchIdFilteredCounterData;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v18 = 0;
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v12 error:&v18];
            v14 = v18;
            if (v13)
            {
              [(NSMutableArray *)self->_unarchivedBatchIdFilteredCounterData addObject:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = self->_unarchivedBatchIdFilteredCounterData;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)enumerateUnarchivedBatchIdFilteredCounterData:(id)data
{
  dataCopy = data;
  if ([(NSMutableArray *)self->_archivedBatchIdFilteredCounterData count])
  {
    unarchivedBatchIdFilteredCounterData = self->_unarchivedBatchIdFilteredCounterData;
    if (!unarchivedBatchIdFilteredCounterData || ![(NSMutableArray *)unarchivedBatchIdFilteredCounterData count])
    {
      v6 = objc_opt_new();
      v7 = self->_unarchivedBatchIdFilteredCounterData;
      self->_unarchivedBatchIdFilteredCounterData = v6;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      if ([(NSMutableArray *)self->_archivedBatchIdFilteredCounterData count])
      {
        v9 = 0;
        do
        {
          v10 = [(NSMutableArray *)self->_archivedBatchIdFilteredCounterData objectAtIndexedSubscript:v9];
          v13 = 0;
          v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v10 error:&v13];
          v12 = v13;
          if (v11)
          {
            [(NSMutableArray *)self->_unarchivedBatchIdFilteredCounterData addObject:v11];
            dataCopy[2](dataCopy, v11);
          }

          ++v9;
        }

        while (v9 < [(NSMutableArray *)self->_archivedBatchIdFilteredCounterData count]);
      }
    }
  }
}

- (NSArray)unarchivedAPSTimelineData
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_archivedAPSTimelineData count])
  {
    unarchivedAPSTimelineData = self->_unarchivedAPSTimelineData;
    if (!unarchivedAPSTimelineData || ![(NSMutableArray *)unarchivedAPSTimelineData count])
    {
      v4 = objc_opt_new();
      v5 = self->_unarchivedAPSTimelineData;
      self->_unarchivedAPSTimelineData = v4;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_archivedAPSTimelineData;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v18 = 0;
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v12 error:&v18];
            v14 = v18;
            if (v13)
            {
              [(NSMutableArray *)self->_unarchivedAPSTimelineData addObject:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = self->_unarchivedAPSTimelineData;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSArray)unarchivedAPSCounterData
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_archivedAPSCounterData count])
  {
    unarchivedAPSCounterData = self->_unarchivedAPSCounterData;
    if (!unarchivedAPSCounterData || ![(NSMutableArray *)unarchivedAPSCounterData count])
    {
      v4 = objc_opt_new();
      v5 = self->_unarchivedAPSCounterData;
      self->_unarchivedAPSCounterData = v4;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_archivedAPSCounterData;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v18 = 0;
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v12 error:&v18];
            v14 = v18;
            if (v13)
            {
              [(NSMutableArray *)self->_unarchivedAPSCounterData addObject:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = self->_unarchivedAPSCounterData;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSArray)unarchivedAPSData
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_archivedAPSData count])
  {
    unarchivedAPSData = self->_unarchivedAPSData;
    if (!unarchivedAPSData || ![(NSMutableArray *)unarchivedAPSData count])
    {
      v4 = objc_opt_new();
      v5 = self->_unarchivedAPSData;
      self->_unarchivedAPSData = v4;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_archivedAPSData;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v18 = 0;
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v12 error:&v18];
            v14 = v18;
            if (v13)
            {
              [(NSMutableArray *)self->_unarchivedAPSData addObject:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = self->_unarchivedAPSData;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSArray)unarchivedGPUTimelineData
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_archivedGPUTimelineData count])
  {
    unarchivedGPUTimelineData = self->_unarchivedGPUTimelineData;
    if (!unarchivedGPUTimelineData || ![(NSMutableArray *)unarchivedGPUTimelineData count])
    {
      v4 = objc_opt_new();
      v5 = self->_unarchivedGPUTimelineData;
      self->_unarchivedGPUTimelineData = v4;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_archivedGPUTimelineData;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v18 = 0;
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v12 error:&v18];
            v14 = v18;
            if (v13)
            {
              [(NSMutableArray *)self->_unarchivedGPUTimelineData addObject:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = self->_unarchivedGPUTimelineData;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)enumerateUnarchivedGPUTimelineData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  unarchivedGPUTimelineData = [(GTShaderProfilerStreamData *)self unarchivedGPUTimelineData];
  v6 = [unarchivedGPUTimelineData countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(unarchivedGPUTimelineData);
        }

        dataCopy[2](dataCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [unarchivedGPUTimelineData countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)unarchivedShaderProfilerData
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_archivedShaderProfilerData count])
  {
    unarchivedShaderProfilerData = self->_unarchivedShaderProfilerData;
    if (!unarchivedShaderProfilerData || ![(NSMutableArray *)unarchivedShaderProfilerData count])
    {
      v4 = objc_opt_new();
      v5 = self->_unarchivedShaderProfilerData;
      self->_unarchivedShaderProfilerData = v4;

      streamDataClasses = [objc_opt_class() streamDataClasses];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_archivedShaderProfilerData;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            v18 = 0;
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:streamDataClasses fromData:v12 error:&v18];
            v14 = v18;
            if (v13)
            {
              [(NSMutableArray *)self->_unarchivedShaderProfilerData addObject:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = self->_unarchivedShaderProfilerData;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)enumerateUnarchivedShaderProfilerData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  unarchivedShaderProfilerData = [(GTShaderProfilerStreamData *)self unarchivedShaderProfilerData];
  v6 = [unarchivedShaderProfilerData countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(unarchivedShaderProfilerData);
        }

        dataCopy[2](dataCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [unarchivedShaderProfilerData countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dataFromUnarchvedMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [metadataCopy objectForKeyedSubscript:@"APSTraceDataFile"];
  v6 = [metadataCopy objectForKeyedSubscript:@"Source"];
  if ([v6 isEqualToString:@"APS_USC"])
  {
    v7 = [metadataCopy objectForKeyedSubscript:@"APSTraceData"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = [(NSURL *)self->_dataFileURL URLByAppendingPathComponent:v5];
      path = [v10 path];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [defaultManager fileExistsAtPath:path];

      if (v13)
      {
        v17 = 0;
        v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path options:1 error:&v17];
        v15 = v14;
        v9 = 0;
        if (!v17)
        {
          v9 = v14;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(GTShaderProfilerStreamData *)self version];
  *(v5 + 16) = [(GTShaderProfilerStreamData *)self blitCallCount];
  *(v5 + 289) = [(GTShaderProfilerStreamData *)self supportsFileFormatV2];
  gpuCommandInfoData = [(GTShaderProfilerStreamData *)self gpuCommandInfoData];
  v7 = [gpuCommandInfoData copyWithZone:zone];
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  encoderInfoData = [(GTShaderProfilerStreamData *)self encoderInfoData];
  v10 = [encoderInfoData copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  pipelineStateInfoData = [(GTShaderProfilerStreamData *)self pipelineStateInfoData];
  v13 = [pipelineStateInfoData copyWithZone:zone];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  commandBufferInfoData = [(GTShaderProfilerStreamData *)self commandBufferInfoData];
  v16 = [commandBufferInfoData copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  archivedShaderProfilerData = [(GTShaderProfilerStreamData *)self archivedShaderProfilerData];
  v19 = [archivedShaderProfilerData copyWithZone:zone];
  v20 = *(v5 + 72);
  *(v5 + 72) = v19;

  archivedGPUTimelineData = [(GTShaderProfilerStreamData *)self archivedGPUTimelineData];
  v22 = [archivedGPUTimelineData copyWithZone:zone];
  v23 = *(v5 + 64);
  *(v5 + 64) = v22;

  archivedBatchIdFilteredCounterData = [(GTShaderProfilerStreamData *)self archivedBatchIdFilteredCounterData];
  v25 = [archivedBatchIdFilteredCounterData copyWithZone:zone];
  v26 = *(v5 + 80);
  *(v5 + 80) = v25;

  archivedAPSData = [(GTShaderProfilerStreamData *)self archivedAPSData];
  v28 = [archivedAPSData copyWithZone:zone];
  v29 = *(v5 + 88);
  *(v5 + 88) = v28;

  archivedAPSCounterData = [(GTShaderProfilerStreamData *)self archivedAPSCounterData];
  v31 = [archivedAPSCounterData copyWithZone:zone];
  v32 = *(v5 + 104);
  *(v5 + 104) = v31;

  archivedAPSTimelineData = [(GTShaderProfilerStreamData *)self archivedAPSTimelineData];
  v34 = [archivedAPSTimelineData copyWithZone:zone];
  v35 = *(v5 + 96);
  *(v5 + 96) = v34;

  pipelinePerformanceStatistics = [(GTShaderProfilerStreamData *)self pipelinePerformanceStatistics];
  v37 = [pipelinePerformanceStatistics copyWithZone:zone];
  v38 = *(v5 + 232);
  *(v5 + 232) = v37;

  functionInfoData = [(GTShaderProfilerStreamData *)self functionInfoData];
  v40 = [functionInfoData copyWithZone:zone];
  v41 = *(v5 + 56);
  *(v5 + 56) = v40;

  strings = [(GTShaderProfilerStreamData *)self strings];
  v43 = [strings copyWithZone:zone];
  v44 = *(v5 + 160);
  *(v5 + 160) = v43;

  *(v5 + 192) = [(GTShaderProfilerStreamData *)self dataSourceHasUnusedResources];
  batchIdFilterableCounters = [(GTShaderProfilerStreamData *)self batchIdFilterableCounters];
  v46 = [batchIdFilterableCounters copyWithZone:zone];
  v47 = *(v5 + 200);
  *(v5 + 200) = v46;

  *(v5 + 280) = [(GTShaderProfilerStreamData *)self unixTimestamp];
  deviceInfo = [(GTShaderProfilerStreamData *)self deviceInfo];
  v49 = *(v5 + 296);
  *(v5 + 296) = deviceInfo;

  *(v5 + 316) = [(GTShaderProfilerStreamData *)self profiledProfilerMode];
  *(v5 + 320) = [(GTShaderProfilerStreamData *)self profiledExecutionMode];
  *(v5 + 312) = [(GTShaderProfilerStreamData *)self profiledPerformanceState];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  self->_unixTimestamp = time(0);
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [(GTShaderProfilerStreamData *)self encodeAPSArrayForOldHost:self->_tempAPSData array:self->_archivedAPSData];
  [(GTShaderProfilerStreamData *)self encodeAPSArrayForOldHost:self->_tempAPSTimelineData array:self->_archivedAPSTimelineData];
  [(GTShaderProfilerStreamData *)self encodeAPSArrayForOldHost:self->_tempAPSCounterData array:self->_archivedAPSCounterData];
  [coderCopy encodeInteger:32 forKey:@"gpuCommandInfoSize"];
  [coderCopy encodeInteger:40 forKey:@"encoderInfoSize"];
  [coderCopy encodeInteger:40 forKey:@"pipelineStateInfoSize"];
  [coderCopy encodeInteger:32 forKey:@"commandBufferInfoSize"];
  [coderCopy encodeInteger:48 forKey:@"functionInfoSize"];
  [coderCopy encodeInteger:-[GTShaderProfilerStreamData blitCallCount](self forKey:{"blitCallCount"), @"numBlitCalls"}];
  [coderCopy encodeBool:-[GTShaderProfilerStreamData supportsFileFormatV2](self forKey:{"supportsFileFormatV2"), @"supportsSeparateAPSData"}];
  gpuCommandInfoData = [(GTShaderProfilerStreamData *)self gpuCommandInfoData];
  [coderCopy encodeObject:gpuCommandInfoData forKey:@"gpuCommandInfoData"];

  encoderInfoData = [(GTShaderProfilerStreamData *)self encoderInfoData];
  [coderCopy encodeObject:encoderInfoData forKey:@"encoderInfoData"];

  pipelineStateInfoData = [(GTShaderProfilerStreamData *)self pipelineStateInfoData];
  [coderCopy encodeObject:pipelineStateInfoData forKey:@"pipelineStateInfoData"];

  commandBufferInfoData = [(GTShaderProfilerStreamData *)self commandBufferInfoData];
  [coderCopy encodeObject:commandBufferInfoData forKey:@"commandBufferInfoData"];

  functionInfoData = [(GTShaderProfilerStreamData *)self functionInfoData];
  [coderCopy encodeObject:functionInfoData forKey:@"functionInfoData"];

  strings = [(GTShaderProfilerStreamData *)self strings];
  [coderCopy encodeObject:strings forKey:@"strings"];

  batchIdFilterableCounters = [(GTShaderProfilerStreamData *)self batchIdFilterableCounters];
  [coderCopy encodeObject:batchIdFilterableCounters forKey:@"batchIdFiterableCounters"];

  archivedShaderProfilerData = [(GTShaderProfilerStreamData *)self archivedShaderProfilerData];
  [coderCopy encodeObject:archivedShaderProfilerData forKey:@"shaderProfilerData"];

  archivedGPUTimelineData = [(GTShaderProfilerStreamData *)self archivedGPUTimelineData];
  [coderCopy encodeObject:archivedGPUTimelineData forKey:@"gpuTimelineData"];

  archivedBatchIdFilteredCounterData = [(GTShaderProfilerStreamData *)self archivedBatchIdFilteredCounterData];
  [coderCopy encodeObject:archivedBatchIdFilteredCounterData forKey:@"batchIdFilteredCountersData"];

  archivedAPSData = [(GTShaderProfilerStreamData *)self archivedAPSData];
  [coderCopy encodeObject:archivedAPSData forKey:@"APSData"];

  archivedAPSCounterData = [(GTShaderProfilerStreamData *)self archivedAPSCounterData];
  [coderCopy encodeObject:archivedAPSCounterData forKey:@"APSCounterData"];

  archivedAPSTimelineData = [(GTShaderProfilerStreamData *)self archivedAPSTimelineData];
  [coderCopy encodeObject:archivedAPSTimelineData forKey:@"APSTimelineData"];

  pipelinePerformanceStatistics = [(GTShaderProfilerStreamData *)self pipelinePerformanceStatistics];
  [coderCopy encodeObject:pipelinePerformanceStatistics forKey:@"pipelinePerformanceStatistics"];

  [coderCopy encodeBool:self->_dataSourceHasUnusedResources forKey:@"dataSourceHasUnusedResources"];
  [coderCopy encodeInteger:self->_captureRange.location forKey:@"captureRangeLocation"];
  [coderCopy encodeInteger:self->_captureRange.length forKey:@"captureRangeLength"];
  [coderCopy encodeInt32:self->_gpuGeneration forKey:@"gpuGeneration"];
  [coderCopy encodeObject:self->_metalPluginName forKey:@"metalPluginName"];
  [coderCopy encodeObject:self->_traceName forKey:@"traceName"];
  [coderCopy encodeInt64:self->_unixTimestamp forKey:@"unixTimestamp"];
  [coderCopy encodeObject:self->_deviceInfo forKey:@"deviceInfo"];
  metalDeviceName = self->_metalDeviceName;
  if (metalDeviceName)
  {
    [coderCopy encodeObject:metalDeviceName forKey:@"metalDeviceName"];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_profiledPerformanceState];
  [coderCopy encodeObject:v19 forKey:@"profiledPerformanceState"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_profiledExecutionMode];
  [coderCopy encodeObject:v20 forKey:@"profiledExecutionMode"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_profiledProfilerMode];
  [coderCopy encodeObject:v21 forKey:@"profiledProfilerMode"];
}

- (void)encodeAPSArrayForOldHost:(id)host array:(id)array
{
  v35 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  arrayCopy = array;
  if ([hostCopy count])
  {
    [arrayCopy removeAllObjects];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = hostCopy;
    v8 = hostCopy;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      selfCopy = self;
      v28 = arrayCopy;
      do
      {
        v12 = 0;
        v29 = v10;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 mutableCopy];
          v16 = [v15 objectForKeyedSubscript:@"APSTraceDataFile"];
          if (v16 && !self->_supportsFileFormatV2)
          {
            v17 = v11;
            v18 = v8;
            v19 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v16 options:1 error:0];
            if (v19)
            {
              v20 = v19;
              [v15 setObject:v19 forKeyedSubscript:@"APSTraceData"];
            }

            else
            {
              v21 = [(NSURL *)self->_dataFileURL URLByAppendingPathComponent:v16];
              path = [v21 path];

              v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path options:1 error:0];
              if (v20)
              {
                [v15 setObject:v20 forKeyedSubscript:@"APSTraceData"];
              }

              v8 = v18;
              self = selfCopy;
              arrayCopy = v28;
            }

            v11 = v17;

            v10 = v29;
          }

          v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:{0, v26}];
          if (v23)
          {
            [arrayCopy addObject:v23];
          }

          [v15 removeAllObjects];
          if (v16)
          {
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager removeItemAtPath:v16 error:0];
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    hostCopy = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (GTShaderProfilerStreamData)initWithPreSiBundle:(id)bundle
{
  bundleCopy = bundle;
  v11.receiver = self;
  v11.super_class = GTShaderProfilerStreamData;
  v6 = [(GTShaderProfilerStreamData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPreSiData = 1;
    objc_storeStrong(&v6->_preSiBundleURL, bundle);
    v7->_version = 5;
    lastPathComponent = [bundleCopy lastPathComponent];
    traceName = v7->_traceName;
    v7->_traceName = lastPathComponent;
  }

  return v7;
}

- (GTShaderProfilerStreamData)initWithCoder:(id)coder
{
  v66[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v65.receiver = self;
  v65.super_class = GTShaderProfilerStreamData;
  v5 = [(GTShaderProfilerStreamData *)&v65 init];
  if (!v5)
  {
LABEL_27:
    v8 = v5;
    goto LABEL_28;
  }

  v6 = [coderCopy decodeIntForKey:@"version"];
  v7 = v6;
  v5->_version = v6;
  if (v6 > 5)
  {
    v8 = 0;
    goto LABEL_28;
  }

  if (v6 != 1 || (v9 = [coderCopy decodeIntegerForKey:@"gpuCommandInfoSize"], v10 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"encoderInfoSize"), v11 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"pipelineStateInfoSize"), v12 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"commandBufferInfoSize"), v13 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"functionInfoSize"), v8 = 0, v9 == 32) && v10 == 40 && v11 == 40 && v12 == 32 && v13 == 48)
  {
    v14 = MEMORY[0x277CBEB98];
    v66[0] = objc_opt_class();
    v66[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    v16 = [v14 setWithArray:v15];

    streamDataClasses = [objc_opt_class() streamDataClasses];
    v5->_blitCallCount = [coderCopy decodeIntegerForKey:@"numBlitCalls"];
    v5->_supportsFileFormatV2 = [coderCopy decodeBoolForKey:@"supportsSeparateAPSData"];
    v5->_gpuGeneration = [coderCopy decodeInt32ForKey:@"gpuGeneration"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalPluginName"];
    [(GTShaderProfilerStreamData *)v5 setMetalPluginName:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    traceName = v5->_traceName;
    v5->_traceName = v19;

    v21 = [coderCopy decodeObjectOfClasses:v16 forKey:@"gpuCommandInfoData"];
    gpuCommandInfoData = v5->_gpuCommandInfoData;
    v5->_gpuCommandInfoData = v21;

    v23 = [coderCopy decodeObjectOfClasses:v16 forKey:@"encoderInfoData"];
    encoderInfoData = v5->_encoderInfoData;
    v5->_encoderInfoData = v23;

    v25 = [coderCopy decodeObjectOfClasses:v16 forKey:@"pipelineStateInfoData"];
    pipelineStateInfoData = v5->_pipelineStateInfoData;
    v5->_pipelineStateInfoData = v25;

    v27 = [coderCopy decodeObjectOfClasses:v16 forKey:@"commandBufferInfoData"];
    commandBufferInfoData = v5->_commandBufferInfoData;
    v5->_commandBufferInfoData = v27;

    v29 = [coderCopy decodeObjectOfClasses:v16 forKey:@"functionInfoData"];
    functionInfoData = v5->_functionInfoData;
    v5->_functionInfoData = v29;

    v31 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v31;

    v33 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"batchIdFiterableCounters"];
    batchIdFilterableCounters = v5->_batchIdFilterableCounters;
    v5->_batchIdFilterableCounters = v33;

    v35 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"shaderProfilerData"];
    archivedShaderProfilerData = v5->_archivedShaderProfilerData;
    v5->_archivedShaderProfilerData = v35;

    v37 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"gpuTimelineData"];
    archivedGPUTimelineData = v5->_archivedGPUTimelineData;
    v5->_archivedGPUTimelineData = v37;

    v39 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"batchIdFilteredCountersData"];
    archivedBatchIdFilteredCounterData = v5->_archivedBatchIdFilteredCounterData;
    v5->_archivedBatchIdFilteredCounterData = v39;

    if (v7 >= 2)
    {
      v41 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"APSData"];
      v42 = [v41 mutableCopy];
      archivedAPSData = v5->_archivedAPSData;
      v5->_archivedAPSData = v42;

      v44 = v5->_archivedAPSData;
      if (v44 && [(NSMutableArray *)v44 count])
      {
        v5->_gpuGeneration = 2;
      }

      if (v7 != 2)
      {
        v45 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"APSCounterData"];
        v46 = [v45 mutableCopy];
        archivedAPSCounterData = v5->_archivedAPSCounterData;
        v5->_archivedAPSCounterData = v46;

        if (v7 >= 4)
        {
          v48 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"APSTimelineData"];
          v49 = [v48 mutableCopy];
          archivedAPSTimelineData = v5->_archivedAPSTimelineData;
          v5->_archivedAPSTimelineData = v49;

          if (v7 == 5)
          {
            v51 = [coderCopy decodeObjectOfClasses:streamDataClasses forKey:@"pipelinePerformanceStatistics"];
            pipelinePerformanceStatistics = v5->_pipelinePerformanceStatistics;
            v5->_pipelinePerformanceStatistics = v51;
          }
        }
      }
    }

    v5->_dataSourceHasUnusedResources = [coderCopy decodeBoolForKey:@"dataSourceHasUnusedResources"];
    v5->_captureRange.location = [coderCopy decodeIntegerForKey:@"captureRangeLocation"];
    v5->_captureRange.length = [coderCopy decodeIntegerForKey:@"captureRangeLength"];
    v5->_unixTimestamp = [coderCopy decodeInt64ForKey:@"unixTimestamp"];
    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceInfo"];
    deviceInfo = v5->_deviceInfo;
    v5->_deviceInfo = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalDeviceName"];
    metalDeviceName = v5->_metalDeviceName;
    v5->_metalDeviceName = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profiledPerformanceState"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profiledExecutionMode"];
    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profiledProfilerMode"];
    v60 = v59;
    if (v59)
    {
      LODWORD(v59) = [v59 intValue];
    }

    v5->_profiledProfilerMode = v59;
    if (v58)
    {
      intValue = [v58 intValue];
    }

    else
    {
      intValue = 0;
    }

    v5->_profiledExecutionMode = intValue;
    if (v57)
    {
      intValue2 = [v57 intValue];
    }

    else
    {
      intValue2 = 2;
    }

    v5->_profiledPerformanceState = intValue2;
    v5->_isPreSiData = 0;
    v5->_unixTimestamp = [coderCopy decodeInt64ForKey:@"unixTimestamp"];

    goto LABEL_27;
  }

LABEL_28:

  v63 = *MEMORY[0x277D85DE8];
  return v8;
}

- (GTShaderProfilerStreamData)initWithNewFileFormatV2Support:(BOOL)support
{
  v5.receiver = self;
  v5.super_class = GTShaderProfilerStreamData;
  result = [(GTShaderProfilerStreamData *)&v5 init];
  if (result)
  {
    result->_supportsFileFormatV2 = support;
    result->_version = 5;
  }

  return result;
}

- (GTShaderProfilerStreamData)init
{
  v3.receiver = self;
  v3.super_class = GTShaderProfilerStreamData;
  result = [(GTShaderProfilerStreamData *)&v3 init];
  if (result)
  {
    result->_supportsFileFormatV2 = 0;
    result->_version = 5;
  }

  return result;
}

+ (id)steamDataFromData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v7 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v7];

  return v5;
}

+ (id)savedStreamDataFromCaptureArchive:(id)archive
{
  v27 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  v4 = objc_opt_new();
  path = [archiveCopy path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v21 = archiveCopy;
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager2 enumeratorAtPath:path];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 hasSuffix:@".gpuprofiler_raw"])
          {
            v16 = [path stringByAppendingPathComponent:v15];
            v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
            [v4 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    archiveCopy = v21;
  }

  v18 = [v4 sortedArrayUsingComparator:&__block_literal_global];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __64__GTShaderProfilerStreamData_savedStreamDataFromCaptureArchive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = a2;
  v7 = [v4 defaultManager];
  v8 = [v6 path];

  v9 = [v7 attributesOfItemAtPath:v8 error:0];
  v10 = *MEMORY[0x277CCA108];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA108]];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v5 path];

  v14 = [v12 attributesOfItemAtPath:v13 error:0];
  v15 = [v14 objectForKeyedSubscript:v10];

  v16 = [v11 compare:v15];
  return v16;
}

+ (id)dataForMetadataFromArchivedDataURL:(id)l
{
  lCopy = l;
  v28 = 0;
  path = [lCopy path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path2 = [lCopy path];
  stringByResolvingSymlinksInPath = [path2 stringByResolvingSymlinksInPath];
  v9 = [defaultManager fileExistsAtPath:stringByResolvingSymlinksInPath isDirectory:&v28];
  v10 = v28;

  if (v9 && (v10 & 1) != 0)
  {
    path3 = [lCopy path];
    v12 = [path3 stringByAppendingPathComponent:@"streamData"];

    path = v12;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager2 fileExistsAtPath:path];

  if (v14)
  {
    v27 = 0;
    v15 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path options:0 error:&v27];
    v16 = v27;
    if (v16)
    {
      v17 = v16;
      v18 = 0;
    }

    else
    {
      v26 = 0;
      v19 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v15 error:&v26];
      v20 = v26;
      if (v20)
      {
        v17 = v20;
        v18 = 0;
      }

      else
      {
        [v19 setClass:objc_opt_class() forClassName:@"GTShaderProfilerStreamData"];
        [v19 setClass:objc_opt_class() forClassName:@"GTMutableShaderProfilerStreamData"];
        v21 = objc_opt_class();
        v22 = *MEMORY[0x277CCA308];
        v25 = 0;
        v23 = [v19 decodeTopLevelObjectOfClass:v21 forKey:v22 error:&v25];
        v17 = v25;
        v18 = 0;
        if (!v17)
        {
          objc_storeStrong(v23 + 34, l);
          v18 = v23;
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)dataFromArchivedDataURL:(id)l
{
  lCopy = l;
  v30 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  stringByResolvingSymlinksInPath = [path stringByResolvingSymlinksInPath];
  v8 = [defaultManager fileExistsAtPath:stringByResolvingSymlinksInPath isDirectory:&v30];
  v9 = v30;

  if (v8 && (v9 & 1) != 0)
  {
    path2 = [lCopy path];
    v11 = [path2 stringByAppendingPathComponent:@"streamData"];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager2 fileExistsAtPath:v11];

    if (v13)
    {
      v29 = 0;
      v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v11 options:0 error:&v29];
      v15 = v29;
      if (v15)
      {
        v16 = v15;
        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v28 = 0;
      v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v28];
      v16 = v28;
      if (!v16)
      {
        objc_storeStrong(v21 + 34, l);
        v21 = v21;
        v17 = v21;
        goto LABEL_16;
      }
    }

    else
    {
      path3 = [lCopy path];
      v14 = [path3 stringByAppendingPathComponent:@"profiler.bin"];

      path4 = [lCopy path];
      v21 = [path4 stringByAppendingPathComponent:@"shader_map.json"];

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      if ([defaultManager3 fileExistsAtPath:v14])
      {
        defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
        v24 = [defaultManager4 fileExistsAtPath:v21];

        if (v24)
        {
          v17 = [[GTShaderProfilerStreamData alloc] initWithPreSiBundle:lCopy];
          v16 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v16 = 0;
    }

    v17 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:0 error:&v27];
  v18 = v27;
  if (v18)
  {
    v16 = v18;
    v17 = 0;
  }

  else
  {
    v26 = 0;
    v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v26];
    v16 = v26;
  }

LABEL_18:

  return v17;
}

+ (id)streamDataClasses
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:9];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10, v11, v12, v13, v14}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end