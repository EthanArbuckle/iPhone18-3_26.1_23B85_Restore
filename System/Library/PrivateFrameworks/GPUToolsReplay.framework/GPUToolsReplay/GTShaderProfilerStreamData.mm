@interface GTShaderProfilerStreamData
+ (id)dataForMetadataFromArchivedDataURL:(id)a3;
+ (id)dataFromArchivedDataURL:(id)a3;
+ (id)savedStreamDataFromCaptureArchive:(id)a3;
+ (id)steamDataFromData:(id)a3;
+ (id)streamDataClasses;
- (GTShaderProfilerStreamData)init;
- (GTShaderProfilerStreamData)initWithCoder:(id)a3;
- (GTShaderProfilerStreamData)initWithNewFileFormatV2Support:(BOOL)a3;
- (GTShaderProfilerStreamData)initWithPreSiBundle:(id)a3;
- (NSArray)unarchivedAPSCounterData;
- (NSArray)unarchivedAPSData;
- (NSArray)unarchivedAPSTimelineData;
- (NSArray)unarchivedBatchIdFilteredCounterData;
- (NSArray)unarchivedGPUTimelineData;
- (NSArray)unarchivedShaderProfilerData;
- (NSString)shortDescription;
- (_NSRange)dataSourceCaptureRange;
- (const)GPUCommandInfoFromFunctionIndex:(unsigned int)a3 subCommandIndex:(int)a4;
- (const)encoderInfoFromFunctionIndex:(unsigned int)a3;
- (id)_setupDataPath;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataFromUnarchvedMetadata:(id)a3;
- (id)description;
- (id)encode:(id)a3 error:(id *)a4;
- (void)_writeLocalData:(id)a3 dataPath:(id)a4 to:(id)a5;
- (void)cleanupLocalFiles;
- (void)dealloc;
- (void)debugDump:(id)a3;
- (void)encodeAPSArrayForOldHost:(id)a3 array:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateUnarchivedBatchIdFilteredCounterData:(id)a3;
- (void)enumerateUnarchivedGPUTimelineData:(id)a3;
- (void)enumerateUnarchivedShaderProfilerData:(id)a3;
- (void)patchObjectIds:(id)a3;
- (void)setMetalPluginName:(id)a3;
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
  v4 = [(GTShaderProfilerStreamData *)self shortDescription];
  [v3 appendString:v4];

  v5 = [(GTShaderProfilerStreamData *)self profiledPerformanceState];
  v6 = @"Unknown";
  if (v5 <= 3)
  {
    v6 = off_2796579E0[v5];
  }

  v7 = v6;
  v8 = [(GTShaderProfilerStreamData *)self profiledExecutionMode];
  v9 = @"Serial";
  if (v8 != 1)
  {
    v9 = @"Unknown";
  }

  if (!v8)
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
      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      [v12 setLocale:v13];

      [v12 setDateFormat:@"yyyy-MM-dd HH:mm"];
      v14 = [v12 stringFromDate:v11];
      [v3 appendFormat:@", %@", v14];
    }
  }

  return v3;
}

- (NSString)shortDescription
{
  v3 = [(GTShaderProfilerStreamData *)self deviceInfo];

  if (!v3)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(GTShaderProfilerStreamData *)self metalDeviceName];
    if ([v9 length])
    {
      v10 = [(GTShaderProfilerStreamData *)self metalDeviceName];
      v11 = [v8 stringWithFormat:@"%@", v10];
    }

    else
    {
      v11 = [v8 stringWithFormat:@"%@", @"Unknown Device"];
    }

    goto LABEL_25;
  }

  v4 = [(GTShaderProfilerStreamData *)self deviceInfo];
  v5 = [v4 platform];

  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v6 = 0;
      v7 = @"macOS";
      goto LABEL_17;
    }

    if (v5 == 2)
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

  if (v5 == 4)
  {
    v6 = 0;
    v7 = @"tvOS";
    goto LABEL_17;
  }

  if (v5 == 5)
  {
    v6 = 0;
    v7 = @"watchOS";
    goto LABEL_17;
  }

  if (v5 != 9)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v7 = @"visionOS";
LABEL_17:
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(GTShaderProfilerStreamData *)self metalDeviceName];
  if (v12)
  {
    [v9 addObject:v12];
  }

  if (v6)
  {
    v13 = [(GTShaderProfilerStreamData *)self deviceInfo];
    v14 = [v13 version];
    [v9 addObject:v14];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v13 = [(GTShaderProfilerStreamData *)self deviceInfo];
    v14 = [v13 version];
    v16 = [v15 stringWithFormat:@"%@ %@", v7, v14];
    [v9 addObject:v16];
  }

  if (os_variant_allows_internal_security_policies())
  {
    v17 = [(GTShaderProfilerStreamData *)self deviceInfo];
    v18 = [v17 build];
    [v9 addObject:v18];
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = [(GTShaderProfilerStreamData *)self deviceInfo];
  v21 = [v20 name];
  v22 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v19 stringWithFormat:@"%@ (%@)", v21, v22];

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
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(NSURL *)self->_dataFileURL path];
    [v3 removeItemAtPath:v4 error:0];

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
    v5 = [(GTShaderProfilerStreamData *)self traceName];
    v6 = [v5 stringByDeletingPathExtension];
    v7 = [v6 stringByAppendingString:@"_stream"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_opt_new();
      v9 = [v10 UUIDString];
    }

    v11 = [@"/tmp/com.apple.gputools.profiling" stringByAppendingPathComponent:v9];
    v12 = [v11 stringByAppendingPathExtension:@"gpuprofiler_raw"];

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    [v13 removeItemAtPath:v12 error:0];

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    [v14 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v20];
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

- (void)_writeLocalData:(id)a3 dataPath:(id)a4 to:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v30 = a4;
  v9 = a5;
  if ([(GTShaderProfilerStreamData *)self supportsFileFormatV2])
  {
    v31 = objc_opt_new();
    if ([v8 count])
    {
      v10 = 0;
      v11 = 0;
      v12 = @"APSTraceData";
      v29 = v8;
      do
      {
        v13 = [v8 objectAtIndexedSubscript:v11];
        v14 = [v13 mutableCopy];

        v15 = [v14 objectForKeyedSubscript:v12];
        if (v15)
        {
          v16 = v12;
          v17 = [v14 objectForKeyedSubscript:@"APSTraceDataFile"];
          v18 = [v30 URLByAppendingPathComponent:v17];
          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v20 = [v18 path];
          v21 = [v19 fileExistsAtPath:v20];

          if ((v21 & 1) == 0)
          {
            [v15 writeToURL:v18 atomically:1];
          }

          v12 = v16;
          [v14 setObject:0 forKeyedSubscript:v16];
          [v31 addObject:v14];

          v10 = 1;
          v8 = v29;
        }

        else
        {
          [v31 addObject:v14];
        }

        ++v11;
      }

      while (v11 < [v8 count]);
      if (v10)
      {
        [v9 removeAllObjects];
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
                [v9 addObject:v27];
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

- (id)encode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v36 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v36];
  v9 = v36;
  if (!v9)
  {
    v13 = [(GTShaderProfilerStreamData *)self _setupDataPath];
    if (v13 && [(GTShaderProfilerStreamData *)self supportsFileFormatV2])
    {
      v14 = [v13 URLByAppendingPathComponent:@"streamData"];
      v35 = 0;
      [v8 writeToURL:v14 options:0 error:&v35];
      v10 = v35;

      if (v10)
      {
        if (a4)
        {
LABEL_8:
          v15 = v10;
          v12 = 0;
          *a4 = v10;
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:
        v12 = 0;
        goto LABEL_29;
      }

      v22 = [(GTShaderProfilerStreamData *)self unarchivedAPSData];
      [(GTShaderProfilerStreamData *)self _writeLocalData:v22 dataPath:v13 to:self->_archivedAPSData];

      v23 = [(GTShaderProfilerStreamData *)self unarchivedAPSCounterData];
      [(GTShaderProfilerStreamData *)self _writeLocalData:v23 dataPath:v13 to:self->_archivedAPSCounterData];

      v24 = [(GTShaderProfilerStreamData *)self unarchivedAPSTimelineData];
      [(GTShaderProfilerStreamData *)self _writeLocalData:v24 dataPath:v13 to:self->_archivedAPSTimelineData];

      if (v6 && ([v6 isEqual:v13] & 1) == 0)
      {
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = [v6 path];
        v28 = [v26 fileExistsAtPath:v27];

        if (v28)
        {
          v29 = [MEMORY[0x277CCAA00] defaultManager];
          [v29 removeItemAtURL:v6 error:0];
        }

        v30 = [MEMORY[0x277CCAA00] defaultManager];
        v34 = 0;
        [v30 copyItemAtURL:v13 toURL:v6 error:&v34];
        v10 = v34;

        if (v10)
        {
          if (a4)
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
      if (!v6 || ([v6 isEqual:v13] & 1) != 0)
      {
        v16 = [(GTShaderProfilerStreamData *)self traceName];
        v17 = [v16 stringByDeletingPathExtension];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 stringByAppendingPathExtension:@"gpuprofiler_raw"];
        }

        else
        {
          v20 = objc_opt_new();
          v21 = [v20 UUIDString];
          v19 = [v21 stringByAppendingPathExtension:@"gpuprofiler_raw"];
        }

        v12 = [v13 URLByAppendingPathComponent:v19];
        v32 = 0;
        [v8 writeToURL:v12 options:1 error:&v32];
        v10 = v32;

        goto LABEL_29;
      }

      v33 = 0;
      [v8 writeToURL:v6 options:1 error:&v33];
      v10 = v33;
    }

    if (v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = v13;
    }

    v12 = v25;
    goto LABEL_29;
  }

  v10 = v9;
  if (a4)
  {
    v11 = v9;
    v12 = 0;
    *a4 = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_30:

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (const)encoderInfoFromFunctionIndex:(unsigned int)a3
{
  result = [(GTShaderProfilerStreamData *)self encoderInfoCount];
  if (result)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      result = [(GTShaderProfilerStreamData *)self encoders]+ v6;
      if (result->var2 == a3)
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

- (const)GPUCommandInfoFromFunctionIndex:(unsigned int)a3 subCommandIndex:(int)a4
{
  result = [(GTShaderProfilerStreamData *)self gpuCommandInfoCount];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [(GTShaderProfilerStreamData *)self gpuCommands];
      if (v10[v8].var4 == a3 && v10[v8].var6 == a4)
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

    return &v10[v8];
  }

  return result;
}

- (void)setMetalPluginName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 hasPrefix:@"AGXMetal"])
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

  v8 = [v7 UTF8String];
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
      v11 = *(v8 + v9) - 48;
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

- (void)patchObjectIds:(id)a3
{
  v26 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 BOOLForKey:@"GPUDebugger.ShaderProfiler.DebugObjectIdPatch"];

  if (!self->_dataSourceHasUnusedResources)
  {
    v5 = [(GTShaderProfilerStreamData *)self encoderInfoCount];
    if (v5 == [v26 encoderInfoCount])
    {
      v6 = [(GTShaderProfilerStreamData *)self pipelineStateInfoCount];
      if (v6 == [v26 pipelineStateInfoCount])
      {
        v7 = [(GTShaderProfilerStreamData *)self functionInfoCount];
        if (v7 == [v26 functionInfoCount])
        {
          v8 = [(GTShaderProfilerStreamData *)self commandBufferInfoCount];
          if (v8 == [v26 commandBufferInfoCount])
          {
            v9 = [(GTShaderProfilerStreamData *)self encoders];
            if ([(GTShaderProfilerStreamData *)self encoderInfoCount])
            {
              v10 = 0;
              v11 = 0;
              do
              {
                var2 = v9[v10].var2;
                if (var2 >= *([v26 encoders] + v10 * 40 + 16))
                {
                  v9[v10].var0 = *([v26 encoders] + v10 * 40);
                }

                ++v11;
                ++v10;
              }

              while (v11 < [(GTShaderProfilerStreamData *)self encoderInfoCount]);
            }

            v13 = [(GTShaderProfilerStreamData *)self commandBuffers];
            if ([(GTShaderProfilerStreamData *)self commandBufferInfoCount])
            {
              v14 = 0;
              v15 = 0;
              do
              {
                v16 = v13[v14].var2;
                if (v16 == *([v26 commandBuffers] + v14 * 32 + 16))
                {
                  v13[v14].var0 = *([v26 commandBuffers] + v14 * 32);
                }

                ++v15;
                ++v14;
              }

              while (v15 < [(GTShaderProfilerStreamData *)self commandBufferInfoCount]);
            }

            v17 = [(GTShaderProfilerStreamData *)self pipelineStates];
            if ([(GTShaderProfilerStreamData *)self pipelineStateInfoCount])
            {
              v18 = 0;
              v19 = 0;
              do
              {
                v20 = v17[v18].var2;
                if (v20 == *([v26 pipelineStates] + v18 * 40 + 16))
                {
                  v17[v18].var0 = *([v26 pipelineStates] + v18 * 40);
                }

                ++v19;
                ++v18;
              }

              while (v19 < [(GTShaderProfilerStreamData *)self pipelineStateInfoCount]);
            }

            v21 = [(GTShaderProfilerStreamData *)self functionInfo];
            if ([(GTShaderProfilerStreamData *)self functionInfoCount])
            {
              v22 = 0;
              v23 = 0;
              do
              {
                v24 = &v21[v22];
                var1 = v21[v22].var1;
                if (var1 == *([v26 functionInfo] + v22 * 48 + 8))
                {
                  v24->var0 = *([v26 functionInfo] + v22 * 48);
                  v24->var2 = *([v26 functionInfo] + v22 * 48 + 16);
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

- (void)debugDump:(id)a3
{
  v8 = a3;
  v4 = objc_opt_new();
  if ([(GTShaderProfilerStreamData *)self gpuCommandInfoCount])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [(GTShaderProfilerStreamData *)self gpuCommands];
      [v4 appendFormat:@"I: %d, E: %d, P: %d, F: %llu, S: %d, T: %d\n", v7[v5].var0, v7[v5].var1, v7[v5].var3, v7[v5].var4, v7[v5].var6, v7[v5].var5];
      ++v6;
      ++v5;
    }

    while (v6 < [(GTShaderProfilerStreamData *)self gpuCommandInfoCount]);
  }

  [v4 writeToFile:v8 atomically:0 encoding:4 error:0];
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

      v6 = [objc_opt_class() streamDataClasses];
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
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
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

- (void)enumerateUnarchivedBatchIdFilteredCounterData:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_archivedBatchIdFilteredCounterData count])
  {
    unarchivedBatchIdFilteredCounterData = self->_unarchivedBatchIdFilteredCounterData;
    if (!unarchivedBatchIdFilteredCounterData || ![(NSMutableArray *)unarchivedBatchIdFilteredCounterData count])
    {
      v6 = objc_opt_new();
      v7 = self->_unarchivedBatchIdFilteredCounterData;
      self->_unarchivedBatchIdFilteredCounterData = v6;

      v8 = [objc_opt_class() streamDataClasses];
      if ([(NSMutableArray *)self->_archivedBatchIdFilteredCounterData count])
      {
        v9 = 0;
        do
        {
          v10 = [(NSMutableArray *)self->_archivedBatchIdFilteredCounterData objectAtIndexedSubscript:v9];
          v13 = 0;
          v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v10 error:&v13];
          v12 = v13;
          if (v11)
          {
            [(NSMutableArray *)self->_unarchivedBatchIdFilteredCounterData addObject:v11];
            v4[2](v4, v11);
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

      v6 = [objc_opt_class() streamDataClasses];
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
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
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

      v6 = [objc_opt_class() streamDataClasses];
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
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
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

      v6 = [objc_opt_class() streamDataClasses];
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
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
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

      v6 = [objc_opt_class() streamDataClasses];
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
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
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

- (void)enumerateUnarchivedGPUTimelineData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(GTShaderProfilerStreamData *)self unarchivedGPUTimelineData];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

      v6 = [objc_opt_class() streamDataClasses];
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
            v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v12 error:&v18];
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

- (void)enumerateUnarchivedShaderProfilerData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(GTShaderProfilerStreamData *)self unarchivedShaderProfilerData];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dataFromUnarchvedMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"APSTraceDataFile"];
  v6 = [v4 objectForKeyedSubscript:@"Source"];
  if ([v6 isEqualToString:@"APS_USC"])
  {
    v7 = [v4 objectForKeyedSubscript:@"APSTraceData"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = [(NSURL *)self->_dataFileURL URLByAppendingPathComponent:v5];
      v11 = [v10 path];

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v12 fileExistsAtPath:v11];

      if (v13)
      {
        v17 = 0;
        v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v11 options:1 error:&v17];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(GTShaderProfilerStreamData *)self version];
  *(v5 + 16) = [(GTShaderProfilerStreamData *)self blitCallCount];
  *(v5 + 289) = [(GTShaderProfilerStreamData *)self supportsFileFormatV2];
  v6 = [(GTShaderProfilerStreamData *)self gpuCommandInfoData];
  v7 = [v6 copyWithZone:a3];
  v8 = *(v5 + 24);
  *(v5 + 24) = v7;

  v9 = [(GTShaderProfilerStreamData *)self encoderInfoData];
  v10 = [v9 copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(GTShaderProfilerStreamData *)self pipelineStateInfoData];
  v13 = [v12 copyWithZone:a3];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  v15 = [(GTShaderProfilerStreamData *)self commandBufferInfoData];
  v16 = [v15 copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(GTShaderProfilerStreamData *)self archivedShaderProfilerData];
  v19 = [v18 copyWithZone:a3];
  v20 = *(v5 + 72);
  *(v5 + 72) = v19;

  v21 = [(GTShaderProfilerStreamData *)self archivedGPUTimelineData];
  v22 = [v21 copyWithZone:a3];
  v23 = *(v5 + 64);
  *(v5 + 64) = v22;

  v24 = [(GTShaderProfilerStreamData *)self archivedBatchIdFilteredCounterData];
  v25 = [v24 copyWithZone:a3];
  v26 = *(v5 + 80);
  *(v5 + 80) = v25;

  v27 = [(GTShaderProfilerStreamData *)self archivedAPSData];
  v28 = [v27 copyWithZone:a3];
  v29 = *(v5 + 88);
  *(v5 + 88) = v28;

  v30 = [(GTShaderProfilerStreamData *)self archivedAPSCounterData];
  v31 = [v30 copyWithZone:a3];
  v32 = *(v5 + 104);
  *(v5 + 104) = v31;

  v33 = [(GTShaderProfilerStreamData *)self archivedAPSTimelineData];
  v34 = [v33 copyWithZone:a3];
  v35 = *(v5 + 96);
  *(v5 + 96) = v34;

  v36 = [(GTShaderProfilerStreamData *)self pipelinePerformanceStatistics];
  v37 = [v36 copyWithZone:a3];
  v38 = *(v5 + 232);
  *(v5 + 232) = v37;

  v39 = [(GTShaderProfilerStreamData *)self functionInfoData];
  v40 = [v39 copyWithZone:a3];
  v41 = *(v5 + 56);
  *(v5 + 56) = v40;

  v42 = [(GTShaderProfilerStreamData *)self strings];
  v43 = [v42 copyWithZone:a3];
  v44 = *(v5 + 160);
  *(v5 + 160) = v43;

  *(v5 + 192) = [(GTShaderProfilerStreamData *)self dataSourceHasUnusedResources];
  v45 = [(GTShaderProfilerStreamData *)self batchIdFilterableCounters];
  v46 = [v45 copyWithZone:a3];
  v47 = *(v5 + 200);
  *(v5 + 200) = v46;

  *(v5 + 280) = [(GTShaderProfilerStreamData *)self unixTimestamp];
  v48 = [(GTShaderProfilerStreamData *)self deviceInfo];
  v49 = *(v5 + 296);
  *(v5 + 296) = v48;

  *(v5 + 316) = [(GTShaderProfilerStreamData *)self profiledProfilerMode];
  *(v5 + 320) = [(GTShaderProfilerStreamData *)self profiledExecutionMode];
  *(v5 + 312) = [(GTShaderProfilerStreamData *)self profiledPerformanceState];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  self->_unixTimestamp = time(0);
  [v22 encodeInteger:self->_version forKey:@"version"];
  [(GTShaderProfilerStreamData *)self encodeAPSArrayForOldHost:self->_tempAPSData array:self->_archivedAPSData];
  [(GTShaderProfilerStreamData *)self encodeAPSArrayForOldHost:self->_tempAPSTimelineData array:self->_archivedAPSTimelineData];
  [(GTShaderProfilerStreamData *)self encodeAPSArrayForOldHost:self->_tempAPSCounterData array:self->_archivedAPSCounterData];
  [v22 encodeInteger:32 forKey:@"gpuCommandInfoSize"];
  [v22 encodeInteger:40 forKey:@"encoderInfoSize"];
  [v22 encodeInteger:40 forKey:@"pipelineStateInfoSize"];
  [v22 encodeInteger:32 forKey:@"commandBufferInfoSize"];
  [v22 encodeInteger:48 forKey:@"functionInfoSize"];
  [v22 encodeInteger:-[GTShaderProfilerStreamData blitCallCount](self forKey:{"blitCallCount"), @"numBlitCalls"}];
  [v22 encodeBool:-[GTShaderProfilerStreamData supportsFileFormatV2](self forKey:{"supportsFileFormatV2"), @"supportsSeparateAPSData"}];
  v4 = [(GTShaderProfilerStreamData *)self gpuCommandInfoData];
  [v22 encodeObject:v4 forKey:@"gpuCommandInfoData"];

  v5 = [(GTShaderProfilerStreamData *)self encoderInfoData];
  [v22 encodeObject:v5 forKey:@"encoderInfoData"];

  v6 = [(GTShaderProfilerStreamData *)self pipelineStateInfoData];
  [v22 encodeObject:v6 forKey:@"pipelineStateInfoData"];

  v7 = [(GTShaderProfilerStreamData *)self commandBufferInfoData];
  [v22 encodeObject:v7 forKey:@"commandBufferInfoData"];

  v8 = [(GTShaderProfilerStreamData *)self functionInfoData];
  [v22 encodeObject:v8 forKey:@"functionInfoData"];

  v9 = [(GTShaderProfilerStreamData *)self strings];
  [v22 encodeObject:v9 forKey:@"strings"];

  v10 = [(GTShaderProfilerStreamData *)self batchIdFilterableCounters];
  [v22 encodeObject:v10 forKey:@"batchIdFiterableCounters"];

  v11 = [(GTShaderProfilerStreamData *)self archivedShaderProfilerData];
  [v22 encodeObject:v11 forKey:@"shaderProfilerData"];

  v12 = [(GTShaderProfilerStreamData *)self archivedGPUTimelineData];
  [v22 encodeObject:v12 forKey:@"gpuTimelineData"];

  v13 = [(GTShaderProfilerStreamData *)self archivedBatchIdFilteredCounterData];
  [v22 encodeObject:v13 forKey:@"batchIdFilteredCountersData"];

  v14 = [(GTShaderProfilerStreamData *)self archivedAPSData];
  [v22 encodeObject:v14 forKey:@"APSData"];

  v15 = [(GTShaderProfilerStreamData *)self archivedAPSCounterData];
  [v22 encodeObject:v15 forKey:@"APSCounterData"];

  v16 = [(GTShaderProfilerStreamData *)self archivedAPSTimelineData];
  [v22 encodeObject:v16 forKey:@"APSTimelineData"];

  v17 = [(GTShaderProfilerStreamData *)self pipelinePerformanceStatistics];
  [v22 encodeObject:v17 forKey:@"pipelinePerformanceStatistics"];

  [v22 encodeBool:self->_dataSourceHasUnusedResources forKey:@"dataSourceHasUnusedResources"];
  [v22 encodeInteger:self->_captureRange.location forKey:@"captureRangeLocation"];
  [v22 encodeInteger:self->_captureRange.length forKey:@"captureRangeLength"];
  [v22 encodeInt32:self->_gpuGeneration forKey:@"gpuGeneration"];
  [v22 encodeObject:self->_metalPluginName forKey:@"metalPluginName"];
  [v22 encodeObject:self->_traceName forKey:@"traceName"];
  [v22 encodeInt64:self->_unixTimestamp forKey:@"unixTimestamp"];
  [v22 encodeObject:self->_deviceInfo forKey:@"deviceInfo"];
  metalDeviceName = self->_metalDeviceName;
  if (metalDeviceName)
  {
    [v22 encodeObject:metalDeviceName forKey:@"metalDeviceName"];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_profiledPerformanceState];
  [v22 encodeObject:v19 forKey:@"profiledPerformanceState"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_profiledExecutionMode];
  [v22 encodeObject:v20 forKey:@"profiledExecutionMode"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_profiledProfilerMode];
  [v22 encodeObject:v21 forKey:@"profiledProfilerMode"];
}

- (void)encodeAPSArrayForOldHost:(id)a3 array:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [v7 removeAllObjects];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      v27 = self;
      v28 = v7;
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
              v22 = [v21 path];

              v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v22 options:1 error:0];
              if (v20)
              {
                [v15 setObject:v20 forKeyedSubscript:@"APSTraceData"];
              }

              v8 = v18;
              self = v27;
              v7 = v28;
            }

            v11 = v17;

            v10 = v29;
          }

          v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:{0, v26}];
          if (v23)
          {
            [v7 addObject:v23];
          }

          [v15 removeAllObjects];
          if (v16)
          {
            v24 = [MEMORY[0x277CCAA00] defaultManager];
            [v24 removeItemAtPath:v16 error:0];
          }

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }

    v6 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (GTShaderProfilerStreamData)initWithPreSiBundle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = GTShaderProfilerStreamData;
  v6 = [(GTShaderProfilerStreamData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPreSiData = 1;
    objc_storeStrong(&v6->_preSiBundleURL, a3);
    v7->_version = 5;
    v8 = [v5 lastPathComponent];
    traceName = v7->_traceName;
    v7->_traceName = v8;
  }

  return v7;
}

- (GTShaderProfilerStreamData)initWithCoder:(id)a3
{
  v66[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v65.receiver = self;
  v65.super_class = GTShaderProfilerStreamData;
  v5 = [(GTShaderProfilerStreamData *)&v65 init];
  if (!v5)
  {
LABEL_27:
    v8 = v5;
    goto LABEL_28;
  }

  v6 = [v4 decodeIntForKey:@"version"];
  v7 = v6;
  v5->_version = v6;
  if (v6 > 5)
  {
    v8 = 0;
    goto LABEL_28;
  }

  if (v6 != 1 || (v9 = [v4 decodeIntegerForKey:@"gpuCommandInfoSize"], v10 = objc_msgSend(v4, "decodeIntegerForKey:", @"encoderInfoSize"), v11 = objc_msgSend(v4, "decodeIntegerForKey:", @"pipelineStateInfoSize"), v12 = objc_msgSend(v4, "decodeIntegerForKey:", @"commandBufferInfoSize"), v13 = objc_msgSend(v4, "decodeIntegerForKey:", @"functionInfoSize"), v8 = 0, v9 == 32) && v10 == 40 && v11 == 40 && v12 == 32 && v13 == 48)
  {
    v14 = MEMORY[0x277CBEB98];
    v66[0] = objc_opt_class();
    v66[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [objc_opt_class() streamDataClasses];
    v5->_blitCallCount = [v4 decodeIntegerForKey:@"numBlitCalls"];
    v5->_supportsFileFormatV2 = [v4 decodeBoolForKey:@"supportsSeparateAPSData"];
    v5->_gpuGeneration = [v4 decodeInt32ForKey:@"gpuGeneration"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalPluginName"];
    [(GTShaderProfilerStreamData *)v5 setMetalPluginName:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    traceName = v5->_traceName;
    v5->_traceName = v19;

    v21 = [v4 decodeObjectOfClasses:v16 forKey:@"gpuCommandInfoData"];
    gpuCommandInfoData = v5->_gpuCommandInfoData;
    v5->_gpuCommandInfoData = v21;

    v23 = [v4 decodeObjectOfClasses:v16 forKey:@"encoderInfoData"];
    encoderInfoData = v5->_encoderInfoData;
    v5->_encoderInfoData = v23;

    v25 = [v4 decodeObjectOfClasses:v16 forKey:@"pipelineStateInfoData"];
    pipelineStateInfoData = v5->_pipelineStateInfoData;
    v5->_pipelineStateInfoData = v25;

    v27 = [v4 decodeObjectOfClasses:v16 forKey:@"commandBufferInfoData"];
    commandBufferInfoData = v5->_commandBufferInfoData;
    v5->_commandBufferInfoData = v27;

    v29 = [v4 decodeObjectOfClasses:v16 forKey:@"functionInfoData"];
    functionInfoData = v5->_functionInfoData;
    v5->_functionInfoData = v29;

    v31 = [v4 decodeObjectOfClasses:v17 forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v31;

    v33 = [v4 decodeObjectOfClasses:v17 forKey:@"batchIdFiterableCounters"];
    batchIdFilterableCounters = v5->_batchIdFilterableCounters;
    v5->_batchIdFilterableCounters = v33;

    v35 = [v4 decodeObjectOfClasses:v17 forKey:@"shaderProfilerData"];
    archivedShaderProfilerData = v5->_archivedShaderProfilerData;
    v5->_archivedShaderProfilerData = v35;

    v37 = [v4 decodeObjectOfClasses:v17 forKey:@"gpuTimelineData"];
    archivedGPUTimelineData = v5->_archivedGPUTimelineData;
    v5->_archivedGPUTimelineData = v37;

    v39 = [v4 decodeObjectOfClasses:v17 forKey:@"batchIdFilteredCountersData"];
    archivedBatchIdFilteredCounterData = v5->_archivedBatchIdFilteredCounterData;
    v5->_archivedBatchIdFilteredCounterData = v39;

    if (v7 >= 2)
    {
      v41 = [v4 decodeObjectOfClasses:v17 forKey:@"APSData"];
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
        v45 = [v4 decodeObjectOfClasses:v17 forKey:@"APSCounterData"];
        v46 = [v45 mutableCopy];
        archivedAPSCounterData = v5->_archivedAPSCounterData;
        v5->_archivedAPSCounterData = v46;

        if (v7 >= 4)
        {
          v48 = [v4 decodeObjectOfClasses:v17 forKey:@"APSTimelineData"];
          v49 = [v48 mutableCopy];
          archivedAPSTimelineData = v5->_archivedAPSTimelineData;
          v5->_archivedAPSTimelineData = v49;

          if (v7 == 5)
          {
            v51 = [v4 decodeObjectOfClasses:v17 forKey:@"pipelinePerformanceStatistics"];
            pipelinePerformanceStatistics = v5->_pipelinePerformanceStatistics;
            v5->_pipelinePerformanceStatistics = v51;
          }
        }
      }
    }

    v5->_dataSourceHasUnusedResources = [v4 decodeBoolForKey:@"dataSourceHasUnusedResources"];
    v5->_captureRange.location = [v4 decodeIntegerForKey:@"captureRangeLocation"];
    v5->_captureRange.length = [v4 decodeIntegerForKey:@"captureRangeLength"];
    v5->_unixTimestamp = [v4 decodeInt64ForKey:@"unixTimestamp"];
    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceInfo"];
    deviceInfo = v5->_deviceInfo;
    v5->_deviceInfo = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalDeviceName"];
    metalDeviceName = v5->_metalDeviceName;
    v5->_metalDeviceName = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profiledPerformanceState"];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profiledExecutionMode"];
    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profiledProfilerMode"];
    v60 = v59;
    if (v59)
    {
      LODWORD(v59) = [v59 intValue];
    }

    v5->_profiledProfilerMode = v59;
    if (v58)
    {
      v61 = [v58 intValue];
    }

    else
    {
      v61 = 0;
    }

    v5->_profiledExecutionMode = v61;
    if (v57)
    {
      v62 = [v57 intValue];
    }

    else
    {
      v62 = 2;
    }

    v5->_profiledPerformanceState = v62;
    v5->_isPreSiData = 0;
    v5->_unixTimestamp = [v4 decodeInt64ForKey:@"unixTimestamp"];

    goto LABEL_27;
  }

LABEL_28:

  v63 = *MEMORY[0x277D85DE8];
  return v8;
}

- (GTShaderProfilerStreamData)initWithNewFileFormatV2Support:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GTShaderProfilerStreamData;
  result = [(GTShaderProfilerStreamData *)&v5 init];
  if (result)
  {
    result->_supportsFileFormatV2 = a3;
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

+ (id)steamDataFromData:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v7 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v7];

  return v5;
}

+ (id)savedStreamDataFromCaptureArchive:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 path];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v21 = v3;
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 enumeratorAtPath:v5];

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
            v16 = [v5 stringByAppendingPathComponent:v15];
            v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
            [v4 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v3 = v21;
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

+ (id)dataForMetadataFromArchivedDataURL:(id)a3
{
  v4 = a3;
  v28 = 0;
  v5 = [v4 path];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v4 path];
  v8 = [v7 stringByResolvingSymlinksInPath];
  v9 = [v6 fileExistsAtPath:v8 isDirectory:&v28];
  v10 = v28;

  if (v9 && (v10 & 1) != 0)
  {
    v11 = [v4 path];
    v12 = [v11 stringByAppendingPathComponent:@"streamData"];

    v5 = v12;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:v5];

  if (v14)
  {
    v27 = 0;
    v15 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v27];
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
          objc_storeStrong(v23 + 34, a3);
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

+ (id)dataFromArchivedDataURL:(id)a3
{
  v4 = a3;
  v30 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 path];
  v7 = [v6 stringByResolvingSymlinksInPath];
  v8 = [v5 fileExistsAtPath:v7 isDirectory:&v30];
  v9 = v30;

  if (v8 && (v9 & 1) != 0)
  {
    v10 = [v4 path];
    v11 = [v10 stringByAppendingPathComponent:@"streamData"];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

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
        objc_storeStrong(v21 + 34, a3);
        v21 = v21;
        v17 = v21;
        goto LABEL_16;
      }
    }

    else
    {
      v19 = [v4 path];
      v14 = [v19 stringByAppendingPathComponent:@"profiler.bin"];

      v20 = [v4 path];
      v21 = [v20 stringByAppendingPathComponent:@"shader_map.json"];

      v22 = [MEMORY[0x277CCAA00] defaultManager];
      if ([v22 fileExistsAtPath:v14])
      {
        v23 = [MEMORY[0x277CCAA00] defaultManager];
        v24 = [v23 fileExistsAtPath:v21];

        if (v24)
        {
          v17 = [[GTShaderProfilerStreamData alloc] initWithPreSiBundle:v4];
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
  v11 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v27];
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