@interface DTKPKperfConfiguration
- (DTKPKDebugCodeSet)queryCodeSet;
- (DTKPKperfConfiguration)init;
- (NSArray)triggers;
- (id).cxx_construct;
- (id)_reinitializeKperf;
- (id)_validateConfigLocked;
- (id)allTriggerTime;
- (id)apply;
- (id)counterAllocator;
- (id)createTriggerKDebug:(id *)a3;
- (id)createTriggerPMI:(id *)a3;
- (id)createTriggerTime:(id *)a3;
- (id)firstTriggerTime;
- (id)generateConfigWords;
- (id)reset;
- (id)triggerKDebug;
- (id)triggerPMI;
- (unsigned)enabledKPCClasses;
- (void)_enableKdebugCodes;
- (void)addCodeSet:(id)a3;
- (void)clearAllTriggerTime;
- (void)clearTriggerKDebug;
- (void)clearTriggerPMI;
- (void)clearTriggerTimeAtIndex:(unint64_t)a3;
- (void)setBufferSize:(unint64_t)a3;
- (void)setRecountConfiguration:(id)a3;
@end

@implementation DTKPKperfConfiguration

- (DTKPKperfConfiguration)init
{
  v7.receiver = self;
  v7.super_class = DTKPKperfConfiguration;
  v2 = [(DTKPKperfConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(DTKPKperfConfiguration *)v2 setCollectionMode:2];
    v4 = objc_opt_new();
    v5 = *(v3 + 4);
    *(v3 + 4) = v4;
  }

  return v3;
}

- (id)apply
{
  v47 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 56));
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_247F80CA8;
  v44 = sub_247F80CB8;
  v45 = 0;
  v3 = [(DTKPKperfConfiguration *)self _validateConfigLocked];
  v4 = v41[5];
  v41[5] = v3;

  v5 = v41[5];
  if (v5)
  {
    goto LABEL_3;
  }

  v6 = [(DTKPKperfConfiguration *)self _reinitializeKperf];
  v7 = v41[5];
  v41[5] = v6;

  v5 = v41[5];
  if (v5)
  {
    goto LABEL_3;
  }

  [(DTKPKperfConfiguration *)self bufferSize];
  *(self + 17) = kperf_logging_set_size() << 6;
  if ([(DTKPKperfConfiguration *)self collectionMode]- 1 <= 2)
  {
    kperf_logging_set_wrap();
  }

  [(DTKPKperfConfiguration *)self _enableKdebugCodes];
  if ([*(self + 15) pmcEventCount])
  {
    v11 = *(self + 15);
    v12 = v41;
    v39 = v41[5];
    [v11 forceCounters:&v39];
    objc_storeStrong(v12 + 5, v39);
    v13 = v41 + 5;
    v5 = v41[5];
    if (v5 || (v14 = *(self + 15), v38 = 0, [v14 configureHardwareCounters:&v38], objc_storeStrong(v13, v38), (v5 = v41[5]) != 0))
    {
LABEL_3:
      v8 = v5;
      goto LABEL_4;
    }
  }

  if (*(self + 6) && ![XRBottlenecksAnalysisModeManager applyWithConfig:?]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = [*(self + 6) countingMode];
    sub_24802CBD8(v15, buf);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_247F80CA8;
  v36 = sub_247F80CB8;
  v37 = [MEMORY[0x277CBEB18] array];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_247F80CC0;
  v30 = sub_247F80CEC;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247F80CF4;
  aBlock[3] = &unk_278EF1C78;
  aBlock[4] = &v32;
  v31 = _Block_copy(aBlock);
  v16 = *(self + 2);
  if (v16)
  {
    v17 = v41;
    obj = v41[5];
    [v16 start:&obj];
    objc_storeStrong(v17 + 5, obj);
    [v33[5] addObject:*(self + 2)];
    if (v41[5])
    {
      goto LABEL_20;
    }
  }

  v18 = *(self + 3);
  if (v18 && (v19 = v41, v23 = v41[5], [v18 start:&v23], objc_storeStrong(v19 + 5, v23), objc_msgSend(v33[5], "addObject:", *(self + 3)), v41[5]))
  {
LABEL_20:
    (*(v27[5] + 16))();
    v20 = v41[5];
  }

  else
  {
    if (![*(self + 4) count])
    {
      goto LABEL_24;
    }

    v21 = *(self + 4);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_247F80D10;
    v22[3] = &unk_278EF1CA0;
    v22[4] = &v40;
    v22[5] = &v32;
    v22[6] = &v26;
    [v21 enumerateObjectsUsingBlock:v22];
    v20 = v41[5];
    if (!v20)
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }
  }

  v8 = v20;
LABEL_25:
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
LABEL_4:
  _Block_object_dispose(&v40, 8);

  std::mutex::unlock((self + 56));
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)reset
{
  std::mutex::lock((self + 56));
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_247F80CA8;
  v19 = sub_247F80CB8;
  v20 = 0;
  v3 = *(self + 15);
  obj = 0;
  [v3 unforceCounters:&obj];
  objc_storeStrong(&v20, obj);
  v4 = *(self + 4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F80F68;
  v13[3] = &unk_278EF1CC8;
  v13[4] = &v15;
  [v4 enumerateObjectsUsingBlock:v13];
  v5 = *(self + 3);
  if (v5)
  {
    v6 = (v16 + 5);
    v12 = v16[5];
    [v5 stop:&v12];
    objc_storeStrong(v6, v12);
  }

  v7 = *(self + 2);
  if (v7)
  {
    v8 = (v16 + 5);
    v11 = v16[5];
    [v7 stop:&v11];
    objc_storeStrong(v8, v11);
  }

  [(DTKPKperfConfiguration *)self _disableKdebugCodes];
  kperf_reset();
  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  std::mutex::unlock((self + 56));

  return v9;
}

- (NSArray)triggers
{
  v3 = *(self + 5);
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = *(self + 5);
    *(self + 5) = v4;

    if (*(self + 4))
    {
      [*(self + 5) addObjectsFromArray:?];
    }

    if (*(self + 3))
    {
      [*(self + 5) addObject:?];
    }

    v3 = *(self + 5);
    if (*(self + 2))
    {
      [v3 addObject:?];
      v3 = *(self + 5);
    }
  }

  return v3;
}

- (unsigned)enabledKPCClasses
{
  std::mutex::lock((self + 56));
  v3 = *(self + 15);
  if (v3)
  {
    v4 = [v3 kpcClasses];
  }

  else
  {
    v4 = 0;
  }

  std::mutex::unlock((self + 56));
  return v4;
}

- (id)counterAllocator
{
  v3 = *(self + 15);
  if (!v3)
  {
    v11 = 0;
    v4 = [DTKPCPU localCPU:&v11];
    v5 = v11;
    if (v4)
    {
      v10 = v5;
      v6 = [[DTKPCPUCounterAllocator alloc] initWithCPU:v4 error:&v10];
      v7 = v10;

      v8 = *(self + 15);
      *(self + 15) = v6;

      v5 = v7;
    }

    v3 = *(self + 15);
  }

  return v3;
}

- (void)addCodeSet:(id)a3
{
  v5 = a3;
  v8 = *(self + 1);
  v7 = (self + 8);
  v6 = v8;
  v9 = v5;
  if (v8)
  {
    [v6 addCodeSet:?];
  }

  else
  {
    objc_storeStrong(v7, a3);
  }
}

- (void)_enableKdebugCodes
{
  if (*(self + 1))
  {
    kperf_logging_set_kdebug();
    v4 = [*(self + 1) createFilterMask:0];
    kperf_logging_set_typefilter();

    [DTKPKDebugCodeSet releaseFilterMask:v4];
  }

  else
  {

    kperf_logging_set_kdebug();
  }
}

- (DTKPKDebugCodeSet)queryCodeSet
{
  v2 = *(self + 1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)createTriggerKDebug:(id *)a3
{
  std::mutex::lock((self + 56));
  v5 = *(self + 2);
  if (v5)
  {
    if (a3)
    {
      *a3 = sub_247F813AC(@"A kdebug trigger already exists. DTKPKperfConfiguration doesn't support creation of multiple kdebug triggers.", -510);
      v5 = *(self + 2);
    }

    v6 = v5;
  }

  else
  {
    v6 = [[DTKPTriggerKDebug alloc] initWithCounterAllocatorProvider:self recountConfiguration:*(self + 6)];
    objc_storeStrong(self + 2, v6);
  }

  std::mutex::unlock((self + 56));

  return v6;
}

- (id)createTriggerPMI:(id *)a3
{
  std::mutex::lock((self + 56));
  v5 = *(self + 3);
  if (v5)
  {
    if (a3)
    {
      *a3 = sub_247F813AC(@"A PMI trigger already exists. DTKPKperfConfiguration doesn't support creation of multiple PMI triggers.", -510);
      v5 = *(self + 3);
    }

    v6 = v5;
  }

  else
  {
    v6 = [[DTKPTriggerPMI alloc] initWithCounterAllocatorProvider:self recountConfiguration:*(self + 6)];
    objc_storeStrong(self + 3, v6);
  }

  std::mutex::unlock((self + 56));

  return v6;
}

- (id)createTriggerTime:(id *)a3
{
  std::mutex::lock((self + 56));
  v4 = [[DTKPTriggerTime alloc] initWithCounterAllocatorProvider:self recountConfiguration:*(self + 6)];
  if (v4)
  {
    [*(self + 4) addObject:v4];
  }

  std::mutex::unlock((self + 56));

  return v4;
}

- (void)clearTriggerKDebug
{
  std::mutex::lock((self + 56));
  v3 = *(self + 2);
  *(self + 2) = 0;

  std::mutex::unlock((self + 56));
}

- (void)clearTriggerPMI
{
  std::mutex::lock((self + 56));
  v3 = *(self + 3);
  *(self + 3) = 0;

  std::mutex::unlock((self + 56));
}

- (void)clearTriggerTimeAtIndex:(unint64_t)a3
{
  std::mutex::lock((self + 56));
  if ([*(self + 4) count] > a3)
  {
    [*(self + 4) removeObjectAtIndex:a3];
  }

  std::mutex::unlock((self + 56));
}

- (void)clearAllTriggerTime
{
  std::mutex::lock((self + 56));
  v3 = objc_opt_new();
  v4 = *(self + 4);
  *(self + 4) = v3;

  std::mutex::unlock((self + 56));
}

- (void)setRecountConfiguration:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 56));
  v5 = *(self + 6);
  *(self + 6) = v4;

  std::mutex::unlock((self + 56));
}

- (id)triggerKDebug
{
  std::mutex::lock((self + 56));
  v3 = *(self + 2);
  std::mutex::unlock((self + 56));

  return v3;
}

- (id)triggerPMI
{
  std::mutex::lock((self + 56));
  v3 = *(self + 3);
  std::mutex::unlock((self + 56));

  return v3;
}

- (id)firstTriggerTime
{
  std::mutex::lock((self + 56));
  v3 = [*(self + 4) firstObject];
  std::mutex::unlock((self + 56));

  return v3;
}

- (id)allTriggerTime
{
  std::mutex::lock((self + 56));
  v3 = [*(self + 4) copy];
  std::mutex::unlock((self + 56));

  return v3;
}

- (void)setBufferSize:(unint64_t)a3
{
  std::mutex::lock((self + 56));
  *(self + 17) = kperf_logging_query_size() << 6;

  std::mutex::unlock((self + 56));
}

- (id)generateConfigWords
{
  std::mutex::lock((self + 56));
  v3 = malloc_type_calloc(0x14uLL, 8uLL, 0x100004000313F17uLL);
  *v3 = 256;
  v3[1] = [(DTKPKperfConfiguration *)self collectionMode];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = *(self + 4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247F81BEC;
  v15[3] = &unk_278EF1CC8;
  v15[4] = &v16;
  [v4 enumerateObjectsUsingBlock:v15];
  v3[2] = *(v17 + 24);
  v3[3] = *(self + 2) != 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = *(self + 3);
  if (v5 && [v5 pmcEventCount])
  {
    v6 = [*(self + 3) _recordConfigWordsIntoBuffer:&v3[v12[3] + 4]];
    v12[3] += v6;
  }

  v7 = *(self + 4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F81C30;
  v10[3] = &unk_278EF1CF0;
  v10[4] = &v11;
  v10[5] = v3;
  [v7 enumerateObjectsUsingBlock:v10];
  v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:((v12[3] << 32) + 0x400000000) >> 29 freeWhenDone:1];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v16, 8);
  std::mutex::unlock((self + 56));

  return v8;
}

- (id)_reinitializeKperf
{
  if (kperf_reset())
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = __error();
    v4 = [v2 stringWithFormat:@"Could not reset kperf (%s).", strerror(*v3)];
    v5 = sub_247F813AC(v4, -6);
  }

  else
  {
    v9 = 0;
    [DTKPTrigger reinitializeKperf:&v9];
    v6 = v9;
    if (!v6)
    {
      v8 = 0;
      [DTKPTriggerTime reinitializeKperf:&v8];
      v6 = v8;
    }

    v5 = v6;
  }

  return v5;
}

- (id)_validateConfigLocked
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_247F80CA8;
  v18 = sub_247F80CB8;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v3 = *(self + 4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_247F81F9C;
  v11[3] = &unk_278EF1D18;
  v11[4] = v12;
  v11[5] = &v14;
  [v3 enumerateObjectsUsingBlock:v11];
  v4 = v15[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = [*(self + 3) requestsPMCSampling];
    v6 = *(self + 4);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247F82050;
    v8[3] = &unk_278EF1D18;
    v8[4] = v9;
    v8[5] = &v14;
    [v6 enumerateObjectsUsingBlock:v8];
    v5 = v15[5];
    _Block_object_dispose(v9, 8);
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v5;
}

- (id).cxx_construct
{
  *(self + 7) = 850045863;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 14) = 0;
  return self;
}

@end