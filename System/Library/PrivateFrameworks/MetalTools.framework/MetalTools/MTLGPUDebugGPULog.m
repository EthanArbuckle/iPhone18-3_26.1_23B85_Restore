@interface MTLGPUDebugGPULog
- (NSString)functionDescription;
- (NSString)locationDescription;
- (void)dealloc;
@end

@implementation MTLGPUDebugGPULog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugGPULog;
  [(MTLGPUDebugGPULog *)&v3 dealloc];
}

- (NSString)functionDescription
{
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v7, [(MTLGPUDebugGPULog *)self function], [(MTLGPUDebugGPULog *)self functionType], [(MTLGPUDebugGPULog *)self functionName]);
  v3 = MEMORY[0x277CCACA8];
  v4 = v7[1];
  if ([(MTLGPUDebugGPULog *)self functionName])
  {
    v5 = [(MTLGPUDebugGPULog *)self functionName];
  }

  else
  {
    v5 = @"<unnamed>";
  }

  return [v3 stringWithFormat:@"%@ function: %@", v4, v5];
}

- (NSString)locationDescription
{
  v25 = *MEMORY[0x277D85DE8];
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v19, [(MTLGPUDebugGPULog *)self function], [(MTLGPUDebugGPULog *)self functionType], [(MTLGPUDebugGPULog *)self functionName]);
  v18 = MEMORY[0x277CCACA8];
  v17 = [(MTLGPUDebugGPULog *)self pipelineIdentifier];
  v16 = [(MTLGPUDebugGPULog *)self encoderLabel];
  v3 = v19[2];
  v4 = [(MTLGPUDebugGPULog *)self callIndex];
  v5 = [(MTLGPUDebugGPULog *)self errorStackTrace];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2841C04D0];
    context = objc_autoreleasePoolPush();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([objc_msgSend(v11 "URL")])
          {
            -[__CFString appendFormat:](v6, "appendFormat:", @"\t* frame #%d: %@\n", v8, [v11 description]);
            v8 = (v8 + 1);
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v6 = 0;
  }

  v12 = &stru_2841C04D0;
  if (v6)
  {
    v12 = v6;
  }

  result = [v18 stringWithFormat:@"%@ encoder: %@, %@: %lu\n%@\n", v17, v16, v3, v4, v12];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

@end