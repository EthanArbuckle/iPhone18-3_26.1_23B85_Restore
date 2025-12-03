@interface MTLCountersCommandQueue
- (MTLCountersCommandQueue)initWithCommandQueue:(id)queue device:(id)device;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
- (id)commandBufferWithUnretainedReferences;
@end

@implementation MTLCountersCommandQueue

- (MTLCountersCommandQueue)initWithCommandQueue:(id)queue device:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = MTLCountersCommandQueue;
  v5 = [(MTLToolsCommandQueue *)&v34 initWithBaseObject:queue parent:?];
  if (v5)
  {
    v6 = getenv("MTL_XML_DUMP_COUNTERS");
    if (!v6)
    {
      v6 = "1";
    }

    v7 = strtol(v6, 0, 0);
    v8 = getenv("MTL_XML_SYNC_BEFORE_SAMPLE");
    if (!v8)
    {
      v8 = "0";
    }

    v9 = strtol(v8, 0, 0);
    v10 = objc_autoreleasePoolPush();
    v11 = MEMORY[0x277CCACA8];
    v12 = getenv("MTL_XML_TRACE_PATH");
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = "";
    }

    v14 = [v11 stringWithUTF8String:v13];
    v5->_tracePath = [objc_msgSend(v14 "stringByStandardizingPath")];
    objc_autoreleasePoolPop(v10);
    v33 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      NSLog(&cfstr_ErrorCreatingD.isa, v5->_tracePath, [v33 localizedDescription]);
    }

    if (v7)
    {
      [(MTLToolsCommandQueue *)v5 setStatEnabled:1];
      v15 = MEMORY[0x277CCACA8];
      v16 = getenv("MTL_XML_COUNTER_NAMES");
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = "MTLStat_nSec";
      }

      v18 = [objc_msgSend(v15 stringWithUTF8String:{v17), "componentsSeparatedByString:", @", "}];
      availableCounters = [(MTLToolsCommandQueue *)v5 availableCounters];
      v20 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v29 + 1) + 8 * i);
            if ([availableCounters containsObject:v25])
            {
              [v20 addObject:v25];
            }

            else
            {
              NSLog(&cfstr_UnsupportedCou.isa, v25);
            }
          }

          v22 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v22);
      }

      if ([(MTLToolsCommandQueue *)v5 requestCounters:v20])
      {
        NSLog(&cfstr_FailedToReques.isa);
      }

      [(MTLToolsCommandQueue *)v5 setStatLocations:63];
      if (v9)
      {
        [(MTLToolsCommandQueue *)v5 setStatOptions:1];
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__MTLCountersCommandQueue_initWithCommandQueue_device___block_invoke;
      v28[3] = &unk_2787B3A70;
      v28[4] = v20;
      [(MTLToolsCommandQueue *)v5 addPerfSampleHandler:v28];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __55__MTLCountersCommandQueue_initWithCommandQueue_device___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [a2 traceBuffer];
  v8 = [a3 bytes];
  v9 = 8 * a4 * [*(a1 + 32) count];

  return [v7 appendSamples:v8 length:v9];
}

- (id)commandBuffer
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLCountersCommandBuffer alloc] initWithCommandBuffer:v4 commandQueue:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)commandBufferWithUnretainedReferences
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLCountersCommandBuffer alloc] initWithCommandBuffer:v4 commandQueue:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)commandBufferWithDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersCommandBuffer alloc] initWithCommandBuffer:v6 commandQueue:self descriptor:descriptor];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

@end