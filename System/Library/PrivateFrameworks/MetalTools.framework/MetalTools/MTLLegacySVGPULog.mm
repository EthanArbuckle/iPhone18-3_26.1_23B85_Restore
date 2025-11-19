@interface MTLLegacySVGPULog
- (NSString)locationDescription;
- (void)dealloc;
@end

@implementation MTLLegacySVGPULog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVGPULog;
  [(MTLLegacySVGPULog *)&v3 dealloc];
}

- (NSString)locationDescription
{
  v26 = *MEMORY[0x277D85DE8];
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v20, [(MTLLegacySVGPULog *)self function]);
  v18 = v20[1];
  v19 = MEMORY[0x277CCACA8];
  v17 = [(MTLLegacySVGPULog *)self pipelineIdentifier];
  v16 = [(MTLLegacySVGPULog *)self encoderLabel];
  v3 = v20[2];
  v4 = [(MTLLegacySVGPULog *)self callIndex];
  v5 = [(MTLLegacySVGPULog *)self errorStackTrace];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2841C04D0];
    context = objc_autoreleasePoolPush();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([objc_msgSend(v11 "URL")])
          {
            -[__CFString appendFormat:](v6, "appendFormat:", @"\t* frame #%d: %@\n", v8, [v11 description]);
            v8 = (v8 + 1);
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

  result = [v19 stringWithFormat:@"%@ %@ encoder: %@, %@: %lu\n%@\n", v18, v17, v16, v3, v4, v12];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

@end