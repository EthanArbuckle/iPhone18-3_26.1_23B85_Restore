@interface GTMTLReplayClient
@end

@implementation GTMTLReplayClient

void __GTMTLReplayClient_streamShaderProfilingData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  v52 = v1;
  v2 = [*(v1 + 64) objectForKeyedSubscript:@"useOverlap"];
  v53 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  HIBYTE(word_27F09C590) = v4;
  v51 = v1 + 48;
  GTUSCSamplingStreamingManagerHelper::InitQueryShaderInfo((v1 + 48), v3);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = ___ZN35GTUSCSamplingStreamingManagerHelper21StartSampleCollectionEv_block_invoke;
  v61[3] = &__block_descriptor_40_e5_v8__0l;
  v61[4] = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v54 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v61];
  [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v54];
  v5 = [v54 waitUntilFinished];
  v6 = atomic_load(byte_27F09C804);
  if ((v6 & 1) == 0)
  {
    v7 = objc_opt_new();
    [v7 setObject:*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 56) forKeyedSubscript:@"MetalPluginName"];
    v8 = MEMORY[0x277CCA8C8];
    v74 = MEMORY[0x277D85DD0];
    v75 = 3221225472;
    v76 = ___ZN35GTUSCSamplingStreamingManagerHelper23StreamHarvestedBinariesEv_block_invoke;
    v77 = &unk_279658AD8;
    v79 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
    v9 = v7;
    v78 = v9;
    v10 = [v8 blockOperationWithBlock:&v74];
    [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v10];
    [v10 waitUntilFinished];
    (*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 32) + 16))();
  }

  v11 = atomic_load(byte_27F09C804);
  if ((v11 & 1) == 0)
  {
    v49 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16);
    v12 = [v49 objectForKeyedSubscript:@"perEncoderDrawCallCount"];
    [v12 count];

    v13 = [v49 objectForKeyedSubscript:@"perCommandBufferEncoderCount"];
    [v13 count];

    v14 = objc_opt_new();
    v15 = [*(&xmmword_27F09BCF8 + 1) count];
    if (v15)
    {
      GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(v15);
      v74 = 0;
      v75 = &v74;
      v76 = 0x4812000000;
      v77 = __Block_byref_object_copy__486;
      v78 = __Block_byref_object_dispose__487;
      v79 = &unk_24DB95716;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      operator new();
    }
  }

  v16 = atomic_load(byte_27F09C804);
  if ((v16 & 1) == 0)
  {
    v68 = 0u;
    *__n = 0u;
    LODWORD(v70) = 1065353216;
    v65 = 0u;
    *v66 = 0u;
    LODWORD(v67) = 1065353216;
    v57 = objc_opt_new();
    v58 = objc_opt_new();
    v59 = objc_opt_new();
    v60 = objc_opt_new();
    v46 = GTUSCSamplingStreamingManagerHelper::GatherFrameMiscEncoderPostProcessedData(0, v57, v59, &v68, 0);
    v47 = GTUSCSamplingStreamingManagerHelper::GatherFrameMiscEncoderPostProcessedData(1, v58, v60, &v65, v46);
    [v47 waitUntilFinished];
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:__n[1]];
    memset(&v64, 0, sizeof(v64));
    std::vector<unsigned int>::reserve(&v64, __n[1]);
    for (i = __n[0]; i; i = *i)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 28)];
      v86.__begin_ = v19;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 32)];
      v86.__end_ = v20;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 36)];
      v86.__end_cap_.__value_ = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:3];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 16)];
      [v17 setObject:v22 forKeyedSubscript:v23];

      std::vector<unsigned int>::push_back[abi:nn200100](&v64, (i + 16));
    }

    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v66[1]];
    v84 = 0uLL;
    v85 = 0;
    std::vector<unsigned int>::reserve(&v64, v66[1]);
    v25 = v66[0];
    if (v66[0])
    {
      do
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 28)];
        v83[0] = v26;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 32)];
        v83[1] = v27;
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 36)];
        v83[2] = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v25 + 16)];
        [v24 setObject:v29 forKeyedSubscript:v30];

        std::vector<unsigned int>::push_back[abi:nn200100](&v84, (v25 + 16));
        v25 = *v25;
      }

      while (v25);
      v31 = v84;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    begin = v64.__begin_;
    v56 = [MEMORY[0x277CBEA90] dataWithBytes:v64.__begin_ length:v64.__end_ - v64.__begin_];
    v55 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:*(&v84 + 1) - v32];
    v63 = 0;
    v48 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v63];
    v34 = v63;
    v62 = v34;
    v50 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v62];
    v45 = v62;

    v35 = MEMORY[0x277CBEB38];
    v73[0] = @"Blit Encoder Frame Data";
    v73[1] = @"Blit Encoder Info";
    v74 = v57;
    v75 = v56;
    v73[2] = @"Blit Split Encoder Frame Data";
    v73[3] = @"Blit Split Encoder Info";
    v76 = v58;
    v77 = v55;
    v73[4] = @"Blit Encoder Indices";
    v36 = [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16) objectForKeyedSubscript:@"blitEncoderIndices"];
    v78 = v36;
    v73[5] = @"Encoder Draw Call Count";
    v37 = [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16) objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
    v79 = v37;
    v73[6] = @"Source Sample Marker";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:qword_27F09BD08];
    v80 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:v73 count:7];
    v40 = [v35 dictionaryWithDictionary:v39];

    if (dword_27F09C54C && dword_27F09C548)
    {
      v72[0] = @"Blit TraceId to Sample Index";
      v72[1] = @"Blit Encoder Time Data";
      v71[0] = v48;
      v71[1] = v59;
      v72[2] = @"Blit Split TraceId to Sample Index";
      v72[3] = @"Blit Split Encoder Time Data";
      v71[2] = v50;
      v71[3] = v60;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v72 count:4];
      [v40 addEntriesFromDictionary:v41];
    }

    (*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 32) + 16))();
    NSLog(&cfstr_SentBlitMiscDa.isa);

    if (v32)
    {
      operator delete(v32);
    }

    if (begin)
    {
      operator delete(begin);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v65);
    v5 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v68);
  }

  GTUSCSamplingStreamingManagerHelper::StreamShaderProfilingData(v5);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v42);
  dispatch_semaphore_signal(xmmword_27F09C6C8);

  (*(*(v52 + 80) + 16))();
  v43 = atomic_load(&xmmword_27F09C7D8);
  if (v43 == v51)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __GTMTLReplayClient_streamDerivedCounterData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  GTUSCSamplingStreamingManagerHelper::Init((v1 + 48), v2);
  GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v3);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v5 = qword_27F09C4B0;
  qword_27F09C4B0 = v4;

  v6 = qword_27F09C4B8;
  qword_27F09C4B8 = 0;

  for (i = 0; i != 7; ++i)
  {
    v8 = qword_27F09C4B0;
    v9 = MEMORY[0x277D0AF28];
    v10 = [&unk_2860D5A20 objectAtIndexedSubscript:i];
    v11 = [v9 selectWithName:v10 options:0];
    [v8 addObject:v11];
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v13 = qword_27F09C4F8;
  qword_27F09C4F8 = v12;

  v14 = qword_27F09C4F8;
  v15 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v14 addObject:v15];

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v17 = qword_27F09C4F0;
  qword_27F09C4F0 = v16;

  v18 = qword_27F09C4F0;
  v19 = [MEMORY[0x277D0AF30] selectWithName:@"TimerNClock" options:&unk_2860D5D18];
  [v18 addObject:v19];

  GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(v20);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v21);
  (*(*(v1 + 80) + 16))();
  dispatch_semaphore_signal(xmmword_27F09C6C8);
  v22 = atomic_load(&xmmword_27F09C7D8);
  if (v22 == v1 + 48)
  {

    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void __GTMTLReplayClient_streamBatchFilteredData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v36 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  GTUSCSamplingStreamingManagerHelper::Init((v36 + 48), v1);
  v2 = dispatch_semaphore_signal(xmmword_27F09C6C8);
  GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v2);
  if (qword_27F09C588 != -1)
  {
    GTAGXProfilingSupportHelper::Initialize(qword_27F09C4A8, v3);
  }

  v4 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"encoderBatchPriorityList"];
  v5 = [[GTBatchedCounterManager alloc] initWithEncoderBatchPriorityList:v4];
  v6 = *(&xmmword_27F09C594 + 4);
  *(&xmmword_27F09C594 + 4) = v5;

  v7 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"pause"];

  if (!v7)
  {
    [*(&xmmword_27F09C594 + 4) resume];
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v9 = qword_27F09C4B0;
  qword_27F09C4B0 = v8;

  for (i = 0; i != 7; ++i)
  {
    v11 = qword_27F09C4B0;
    v12 = MEMORY[0x277D0AF28];
    v13 = [&unk_2860D5A20 objectAtIndexedSubscript:i];
    v14 = [v12 selectWithName:v13 options:0];
    [v11 addObject:v14];
  }

  v15 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v16 = [v15 count];

  v17 = [v4 count];
  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = 2 * v18;
  v20 = qword_27F09C5A8;
  v21 = 0xAAAAAAAAAAAAAAABLL * ((qword_27F09C5A8 - *(&xmmword_27F09C594 + 12)) >> 3);
  v22 = v19 - v21;
  if (v19 > v21)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((unk_27F09C5B0 - qword_27F09C5A8) >> 3) < v22)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        v38 = (&xmmword_27F09C594 + 12);
        if (0x5555555555555556 * ((unk_27F09C5B0 - *(&xmmword_27F09C594 + 12)) >> 3) > v19)
        {
          v19 = 0x5555555555555556 * ((unk_27F09C5B0 - *(&xmmword_27F09C594 + 12)) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((unk_27F09C5B0 - *(&xmmword_27F09C594 + 12)) >> 3) >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v19;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(v23);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    bzero(qword_27F09C5A8, 24 * ((24 * v22 - 24) / 0x18) + 24);
    v24 = v20 + 24 * ((24 * v22 - 24) / 0x18) + 24;
LABEL_27:
    qword_27F09C5A8 = v24;
    goto LABEL_29;
  }

  if (v19 < v21)
  {
    v24 = *(&xmmword_27F09C594 + 12) + 24 * v19;
    if (qword_27F09C5A8 != v24)
    {
      v25 = qword_27F09C5A8;
      do
      {
        v27 = *(v25 - 24);
        v25 -= 24;
        v26 = v27;
        if (v27)
        {
          *(v20 - 16) = v26;
          operator delete(v26);
        }

        v20 = v25;
      }

      while (v25 != v24);
    }

    goto LABEL_27;
  }

  v24 = qword_27F09C5A8;
LABEL_29:
  v28 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *(&xmmword_27F09C594 + 12)) >> 3);
  if (v28 > (qword_27F09C5C8 - xmmword_27F09C5B8) >> 3)
  {
    if (!(v28 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v28);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = ___ZN35GTUSCSamplingStreamingManagerHelper20InitBatchIdFilteringEP29GTUSCSamplingStreamingManager_block_invoke;
  v37[3] = &__block_descriptor_40_e5_v8__0l;
  v38 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v29 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v37];
  [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v29];
  [v29 waitUntilFinished];
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v31 = qword_27F09C4F8;
  qword_27F09C4F8 = v30;

  v32 = qword_27F09C4F8;
  v33 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v32 addObject:v33];

  GTUSCSamplingStreamingManagerHelper::StreamBatchIdFilteredCounters(v34);
  (*(*(v36 + 80) + 16))();
  v35 = atomic_load(&xmmword_27F09C7D8);
  if (v35 == v36 + 48)
  {

    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }
}

void __GTMTLReplayClient_collectGPUShaderTimelineData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  v2 = [*(v1 + 64) objectForKeyedSubscript:@"useOverlap"];
  v9 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  HIBYTE(word_27F09C590) = v4;
  GTUSCSamplingStreamingManagerHelper::InitQueryShaderInfo((v1 + 48), v3);
  HIDWORD(qword_27F09C588) = 1;
  GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(v5);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN35GTUSCSamplingStreamingManagerHelper17StreamGPUTimelineEv_block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v7 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v10];
  GTUSCSamplingStreamingManagerHelper::StreamShaderProfilingData([**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v7]);

  dispatch_semaphore_signal(xmmword_27F09C6C8);
  v8 = atomic_load(&xmmword_27F09C7D8);
  if (v8 == v1 + 48)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }

  (*(*(v1 + 80) + 16))();
}

void __GTMTLReplayClient_collectAPSData_block_invoke(GTUSCSamplingStreamingManagerHelper *a1)
{
  v201 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 4) + 8);
  GTUSCSamplingStreamingManagerHelper::Instance(a1);
  v179 = v1;
  v177 = [*(v1 + 64) objectForKeyedSubscript:@"apsProfilingConfig"];
  if (v177)
  {
    v2 = v177;
    v3 = [v2 objectForKeyedSubscript:@"usingMinimumTracingMode"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLValue];
      v6 = 2;
      if (!v5)
      {
        v6 = 0;
      }

      qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFFFDLL | v6;
      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [v7 BOOLForKey:@"GPUDebugger.ShaderProfiler.ForceMinTracingMode"];

      if (v8)
      {
        qword_27F09C9B0 |= 2uLL;
      }
    }

    v9 = [v2 objectForKeyedSubscript:@"usedCoreMasks"];
    v10 = v9;
    if (v9 && [v9 count])
    {
      std::vector<BOOL>::resize(&xmmword_27F09C9B8, [v10 count]);
      v183 = v4;
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v191 objects:&v199 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = *v192;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v192 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v191 + 1) + 8 * i) BOOLValue];
            v17 = v13 >> 6;
            v18 = 1 << v13;
            if (v16)
            {
              v19 = *(xmmword_27F09C9B8 + 8 * v17) | v18;
            }

            else
            {
              v19 = *(xmmword_27F09C9B8 + 8 * v17) & ~v18;
            }

            *(xmmword_27F09C9B8 + 8 * v17) = v19;
            ++v13;
          }

          v12 = [v11 countByEnumeratingWithState:&v191 objects:&v199 count:16];
        }

        while (v12);
      }

      v4 = v183;
    }

    v20 = [v2 objectForKeyedSubscript:@"overriddenCoreMasks"];
    v21 = v20;
    if (v20 && [v20 count])
    {
      std::vector<BOOL>::resize(&xmmword_27F09C9C8 + 8, [v21 count]);
      v184 = v4;
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v187 objects:&v195 count:16];
      if (v23)
      {
        v24 = 0;
        v25 = *v188;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v188 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v187 + 1) + 8 * j) BOOLValue];
            v28 = v24 >> 6;
            v29 = 1 << v24;
            if (v27)
            {
              v30 = *(*(&xmmword_27F09C9C8 + 1) + 8 * v28) | v29;
            }

            else
            {
              v30 = *(*(&xmmword_27F09C9C8 + 1) + 8 * v28) & ~v29;
            }

            *(*(&xmmword_27F09C9C8 + 1) + 8 * v28) = v30;
            ++v24;
          }

          v23 = [v22 countByEnumeratingWithState:&v187 objects:&v195 count:16];
        }

        while (v23);
      }

      v4 = v184;
    }

    v31 = [v2 objectForKeyedSubscript:@"numPossibleCoresPerMGPU"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 unsignedLongLongValue];
      qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFF07 | (8 * (v33 & 0x1F));
    }

    v34 = [v2 objectForKeyedSubscript:@"emitsPositionForOverriddenCores"];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 unsignedLongLongValue];
      qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFEFFLL | ((v36 & 1) << 8);
    }

    v37 = [v2 objectForKeyedSubscript:@"useOverlap"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 BOOLValue];
    }

    else
    {
      v39 = 1;
    }

    qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFFFELL | v39;
  }

  v176 = [*(v179 + 64) objectForKeyedSubscript:@"useOverlap"];
  if (v176)
  {
    v40 = [v176 BOOLValue];
    qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFFFELL | v40;
    HIBYTE(word_27F09C590) = v40;
  }

  LODWORD(xmmword_27F09C594) = 0;
  *&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] = v179 + 48;
  v178 = (v179 + 48);
  v41 = [*(*(v179 + 48) + 8) defaultDevice];
  v42 = DEVICEOBJECT(v41);
  v43 = GTProfilerConfigurationVariables([v42 acceleratorPort]);
  v44 = qword_27F09C4A8;
  qword_27F09C4A8 = v43;

  v45 = qword_27F09C4A8;
  if (!*(&xmmword_27F09C9B8 + 1))
  {
    v174 = v45;
    v46 = [v45 objectForKeyedSubscript:@"num_cores"];
    v47 = [v46 unsignedIntValue];

    v48 = [v174 objectForKeyedSubscript:@"core_mask_list"];
    v49 = [v48 count];
    if (v49 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v49;
    }

    qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFF07 | (8 * ((v47 / v50) & 0x1F));
    v51 = [v48 count];
    if (v51 > (qword_27F09C9F8 - xmmword_27F09C9E8) >> 1)
    {
      if ((v51 & 0x8000000000000000) == 0)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(v51);
      }

LABEL_177:
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    std::vector<BOOL>::resize(&xmmword_27F09C9B8, v47);
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v52 = v48;
    v53 = [v52 countByEnumeratingWithState:&v195 objects:&v199 count:16];
    if (v53)
    {
      v54 = 0;
      v185 = *v196;
      v180 = v52;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v196 != v185)
          {
            objc_enumerationMutation(v52);
          }

          v56 = [*(*(&v195 + 1) + 8 * k) unsignedShortValue];
          v57 = v56;
          v58 = *(&xmmword_27F09C9E8 + 1);
          if (*(&xmmword_27F09C9E8 + 1) >= qword_27F09C9F8)
          {
            v60 = xmmword_27F09C9E8;
            v61 = *(&xmmword_27F09C9E8 + 1) - xmmword_27F09C9E8;
            v62 = (*(&xmmword_27F09C9E8 + 1) - xmmword_27F09C9E8) >> 1;
            if (v62 <= -2)
            {
              goto LABEL_177;
            }

            if (qword_27F09C9F8 - xmmword_27F09C9E8 <= (v62 + 1))
            {
              v63 = v62 + 1;
            }

            else
            {
              v63 = qword_27F09C9F8 - xmmword_27F09C9E8;
            }

            if ((qword_27F09C9F8 - xmmword_27F09C9E8) >= 0x7FFFFFFFFFFFFFFELL)
            {
              v64 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v64 = v63;
            }

            if (v64)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(v64);
            }

            *(2 * v62) = v57;
            v59 = 2 * v62 + 2;
            memcpy(0, v60, v61);
            v65 = xmmword_27F09C9E8;
            *&xmmword_27F09C9E8 = 0;
            *(&xmmword_27F09C9E8 + 1) = v59;
            qword_27F09C9F8 = 0;
            if (v65)
            {
              operator delete(v65);
            }

            v52 = v180;
          }

          else
          {
            **(&xmmword_27F09C9E8 + 1) = v56;
            v59 = v58 + 2;
          }

          *(&xmmword_27F09C9E8 + 1) = v59;
          if (v57)
          {
            v66 = xmmword_27F09C9B8;
            do
            {
              v67 = (v57 & -v57);
              v68 = __clz(__rbit32(v67));
              *(v66 + (((v68 + (qword_27F09C9B0 >> 3) * v54) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v68 + (qword_27F09C9B0 >> 3) * v54);
              v111 = v67 == v57;
              v57 ^= v57 & -v57;
            }

            while (!v111);
          }

          ++v54;
        }

        v53 = [v52 countByEnumeratingWithState:&v195 objects:&v199 count:16];
      }

      while (v53);
    }

    v45 = v174;
  }

  v181 = [*(v179 + 64) objectForKeyedSubscript:@"PhysicalMemory"];
  v175 = [*(v179 + 64) objectForKeyedSubscript:@"DataExpansionFactor"];
  if (v181)
  {
    v173 = [v181 unsignedLongLongValue];
    [v175 doubleValue];
    v72 = v71;
    v74 = *(&xmmword_27F09C9B8 + 1);
    v73 = xmmword_27F09C9B8;
    if (*(&xmmword_27F09C9B8 + 1) < 0x40uLL)
    {
      v75 = 0;
      if (!*(&xmmword_27F09C9B8 + 1))
      {
        goto LABEL_82;
      }
    }

    else
    {
      v75 = 0;
      do
      {
        v76 = *v73++;
        v77 = vcnt_s8(v76);
        v77.i16[0] = vaddlv_u8(v77);
        v75 += v77.u32[0];
        v74 -= 64;
      }

      while (v74 > 0x3F);
      if (!v74)
      {
LABEL_82:
        v79 = xmmword_27F09C9E8;
        if (*(*(***&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 136) + 12) / 100000.0 >= 1.0)
        {
          v80 = *(*(***&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 136) + 12) / 100000.0;
        }

        else
        {
          v80 = 1.0;
        }

        qword_27F09C9B0 |= 4uLL;
        LODWORD(xmmword_27F09C594) = 0;
        GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0], v70);
        GTUSCSamplingStreamingManagerHelper::StreamAPS(v81);
        (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
        v82 = (*(&v79 + 1) - v79) >> 1;
        qword_27F09C9B0 &= ~4uLL;
        dispatch_semaphore_signal(xmmword_27F09C6C8);
        v83 = 126 - 2 * __clz((*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3);
        if (*(&xmmword_27F09C990 + 1) == xmmword_27F09C990)
        {
          v84 = 0;
        }

        else
        {
          v84 = v83;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(xmmword_27F09C990, *(&xmmword_27F09C990 + 1), v84, 1);
        v85 = xmmword_27F09C990;
        v86 = (*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3;
        if (v86 >= v82)
        {
          v86 = (*(&v79 + 1) - v79) >> 1;
        }

        v87 = (xmmword_27F09C990 + 8 * v86);
        v88 = 0;
        if (v86)
        {
          do
          {
            v89 = *v85++;
            v88 += v89;
          }

          while (v85 != v87);
        }

        v90 = v80 * v72;
        v186 = (*(&v79 + 1) - v79) >> 1;
        for (m = 0; v87 != *(&xmmword_27F09C990 + 1); m += v92)
        {
          v92 = *v87++;
        }

        v93 = v75 - v86;
        if (!v93)
        {
          v93 = 1;
        }

        if (v93 > m)
        {
          v94 = 1;
        }

        else
        {
          v94 = m / v93;
        }

        if (v82 > v88)
        {
          v95 = 1;
        }

        else
        {
          v95 = v88 / v82;
        }

        v96 = vcvtpd_u64_f64(v173 / (v90 * v95));
        if (v75 <= v96)
        {
          v122 = [[GTGPUAPSConfig alloc] initForProfiling];
          v123 = *(&xmmword_27F09C520 + 1);
          *(&xmmword_27F09C520 + 1) = v122;

          v121 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"apsProfilingConfig"];
          [*(&xmmword_27F09C520 + 1) readConfig:v121];
        }

        else
        {
          [*(&xmmword_27F09C520 + 1) setUscNumPerMGPU:0];
          [*(&xmmword_27F09C520 + 1) setMGPUMask:0];
          v182 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v82];
          std::vector<BOOL>::resize(&xmmword_27F09C9C8 + 8, *(&xmmword_27F09C9B8 + 1));
          v97 = 0;
          v98 = 0;
          v99 = v90 * v94;
          v100 = (*(&v79 + 1) - v79) >> 1;
          v101 = v96 / v82;
          v102 = v96 % v186;
          do
          {
            v103 = *(xmmword_27F09C9E8 + 2 * v97);
            v104 = *(xmmword_27F09C9E8 + 2 * v97) != 0;
            v105 = 0;
            if (v103)
            {
              v106 = v100 > v96;
            }

            else
            {
              v106 = 1;
            }

            if (!v106)
            {
              v107 = *(&xmmword_27F09C9C8 + 1);
              v108 = 1;
              do
              {
                v109 = v103 & -v103;
                v110 = (v103 & -v103);
                v105 |= v109;
                v111 = v110 == v103;
                v103 ^= v109;
                v112 = __clz(__rbit32(v110)) + (qword_27F09C9B0 >> 3) * v98;
                *(v107 + ((v112 >> 3) & 0x1FFFFFF8)) |= 1 << v112;
                v104 = !v111;
                if (v111)
                {
                  break;
                }
              }

              while (v108++ < v101);
            }

            if (v102 && v104)
            {
              v114 = v103 & -v103;
              v105 |= v114;
              --v102;
              v115 = __clz(__rbit32(v114)) + (qword_27F09C9B0 >> 3) * v98;
              *(*(&xmmword_27F09C9C8 + 1) + ((v115 >> 3) & 0x1FFFFFF8)) |= 1 << v115;
            }

            v116 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v105];
            v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v98];
            [v182 setObject:v116 forKeyedSubscript:v117];

            v97 = (v98 + 1);
            v98 = v97;
            v100 = (*(&v79 + 1) - v79) >> 1;
          }

          while (v186 > v97);
          v118 = [v182 copy];
          [*(&xmmword_27F09C520 + 1) setUscMaskPerMGPU:v118];

          v119 = v75 - v96;
          if (v75 < v96)
          {
            v119 = 0;
          }

          v120 = (v99 * v119);
          [*(&xmmword_27F09C520 + 1) setEmitPos:v173 >= v120];
          qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFEFFLL | ((v173 >= v120) << 8);
          v121 = v182;
        }

        qword_27F09C9B0 |= 4uLL;
        LODWORD(xmmword_27F09C594) = 2;
        GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0], v124);
        GTUSCSamplingStreamingManagerHelper::StreamAPS(v125);
        (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
        v126 = (*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3;
        v127 = 126 - 2 * __clz(v126);
        qword_27F09C9B0 &= ~4uLL;
        if (*(&xmmword_27F09C990 + 1) == xmmword_27F09C990)
        {
          v128 = 0;
        }

        else
        {
          v128 = v127;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(xmmword_27F09C990, *(&xmmword_27F09C990 + 1), v128, 1);
        v129 = xmmword_27F09C990;
        v130 = (*(&xmmword_27F09C990 + 1) - xmmword_27F09C990) >> 3;
        if (v130 >= v186)
        {
          v130 = (*(&v79 + 1) - v79) >> 1;
        }

        v131 = (xmmword_27F09C990 + 8 * v130);
        if (*(&xmmword_27F09C990 + 1) == xmmword_27F09C990)
        {
          v134 = 0;
        }

        else
        {
          v132 = 0;
          do
          {
            v133 = *v129;
            v129 += 2;
            v132 += v133;
          }

          while (v129 != v131);
          v134 = v132;
        }

        if (v131 == *(&xmmword_27F09C990 + 1))
        {
          v135 = 0;
        }

        else
        {
          v136 = 0;
          do
          {
            v137 = *v131;
            v131 += 2;
            v136 += v137;
          }

          while (v131 != *(&xmmword_27F09C990 + 1));
          v135 = v136;
        }

        v138 = [[GTGPUAPSConfig alloc] initForTimeline];
        v139 = qword_27F09C530;
        qword_27F09C530 = v138;

        v140 = [[GTGPUAPSConfig alloc] initForCounters];
        v141 = qword_27F09C538;
        qword_27F09C538 = v140;

        v142 = v126;
        if (v173 < (v90 * (v134 / v186) * v126))
        {
          if (v126 == v186)
          {
            v143 = 1;
          }

          else
          {
            v143 = v126 - v186;
          }

          v144 = [qword_27F09C530 countPeriod];
          v145 = [qword_27F09C530 pulsePeriod];
          v146 = (v90 * (v135 / v143) * v142) / v173;
          if (v146 > 1.0)
          {
            v146 = 1.0;
          }

          v147 = vcvtd_n_u64_f64(v146, 0xFuLL);
          while (v144 < v147)
          {
            v144 *= 2;
            v145 *= 2;
          }

          if (v144 > [qword_27F09C530 countPeriod])
          {
            [qword_27F09C530 setEmitThreadControlFlow:0];
          }

          if (v144 >= 0x8000)
          {
            v148 = 0x8000;
          }

          else
          {
            v148 = v144;
          }

          [qword_27F09C530 setCountPeriod:v148];
          [qword_27F09C538 setCountPeriod:v148];
          if (v145 >= 0x800)
          {
            v149 = 2048;
          }

          else
          {
            v149 = v145;
          }

          [qword_27F09C530 setPulsePeriod:v149];
          [qword_27F09C538 setPulsePeriod:v149];
        }

        goto LABEL_158;
      }
    }

    v78 = vcnt_s8((*v73 & (0xFFFFFFFFFFFFFFFFLL >> -v74)));
    v78.i16[0] = vaddlv_u8(v78);
    v75 += v78.u32[0];
    goto LABEL_82;
  }

LABEL_158:
  LODWORD(xmmword_27F09C594) = 0;
  for (n = 4; ; --n)
  {
    GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(v178, v69);
    v152 = GTUSCSamplingStreamingManagerHelper::StreamAPS(v151);
    if (v152)
    {
      break;
    }

    v152 = (*(*(v179 + 80) + 16))();
    if (!n)
    {
      break;
    }

    dispatch_semaphore_signal(xmmword_27F09C6C8);
  }

  v153 = 5;
  LODWORD(xmmword_27F09C594) = 1;
  do
  {
    GTUSCSamplingStreamingManagerHelper::CleanupForAPSStreaming(v152);
    if (xmmword_27F09C9D8 >= 1)
    {
      v199 = *(&xmmword_27F09C9C8 + 1);
      v200 = 0;
      std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v199, xmmword_27F09C9D8);
    }

    qword_27F09C9B0 &= ~0x100uLL;
    v154 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
    qword_27F09C478 = [qword_27F09C498 mutableBytes];
    v155 = [[ProgramAddressTableCollector alloc] initForHarvestingBinaries];
    v156 = xmmword_27F09C480;
    *&xmmword_27F09C480 = v155;

    if (qword_27F09C588 != -1)
    {
      GTUSCSamplingStreamingManagerHelper::SetupBuffersForAPSSource(v157);
      v158 = [qword_27F09C538 grcOptions];
      v159 = xmmword_27F09C500;
      *&xmmword_27F09C500 = v158;

      v160 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v161 = *(&xmmword_27F09C500 + 1);
      *(&xmmword_27F09C500 + 1) = v160;

      v162 = *(&xmmword_27F09C500 + 1);
      v163 = MEMORY[0x277D0AF30];
      v164 = [qword_27F09C538 grcTrigger];
      v165 = [v163 selectWithName:@"KickAndStateTracing" options:v164];
      [v162 addObject:v165];

      v166 = (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
      GTUSCSamplingStreamingManagerHelper::InitRDELimiterCounters(v166);
    }

    if (GTUSCSamplingStreamingManagerHelper::StreamAPS(v157))
    {
      break;
    }

    v152 = (*(*(v179 + 80) + 16))();
    --v153;
  }

  while (v153);
  GTUSCSamplingStreamingManager::InitDerivedCountersInfo(v178);
  GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(v167);
  LODWORD(xmmword_27F09C594) = 2;
  v169 = 5;
  do
  {
    GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(v178, v168);
    if (GTUSCSamplingStreamingManagerHelper::StreamAPS(v170))
    {
      break;
    }

    (*(*(v179 + 80) + 16))();
    --v169;
  }

  while (v169);
  (*(*(v179 + 80) + 16))();
  dispatch_semaphore_signal(xmmword_27F09C6C8);
  v171 = atomic_load(&xmmword_27F09C7D8);
  if (v171 == v178)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }

  v172 = *MEMORY[0x277D85DE8];
}

void __GTMTLReplayClient_harvestTexture_block_invoke(uint64_t a1)
{
  v2 = ([*(a1 + 32) contents] + *(a1 + 40));
  v3 = malloc_type_malloc(*(a1 + 136), 0x8C9C1B83uLL);
  v4 = v3;
  if (*(a1 + 80) >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 72);
    v7 = *(a1 + 80) & 0x7FFFFFFFLL;
    v8 = v2;
    do
    {
      if (v6 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *&vorr_s8(vshl_n_s32(__PAIR64__(v9, v5), 8uLL), vand_s8(__PAIR64__(v9, v5), 0xFFFF0000FFFFLL)) & 0xFF00FF00FF00FFLL;
          v11 = *&vorr_s8(vshl_n_s32(v10, 4uLL), v10) & 0xFF0FFF0FFF0FFF0FLL;
          v12 = vand_s8(vorr_s8(vshl_n_s32(v11, 2uLL), v11), 0x3333333333333333);
          v13 = vshl_u32(v12, 0x200000001);
          v12.i32[1] *= 2;
          v14 = vand_s8(vorr_s8(v13, v12), 0xAAAAAAAA55555555);
          *(v3 + vorr_s8(v14, vdup_lane_s32(v14, 1)).i32[0]) = *&v8[8 * v9++];
        }

        while (v6 != v9);
      }

      ++v5;
      v8 += 8 * v6;
    }

    while (v5 != v7);
  }

  memcpy(v2, v3, *(a1 + 136));

  free(v4);
}

void __GTMTLReplayClient_createNewTransport_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    MessageRemoteRoutingInfoGet();
    memset(v6, 0, sizeof(v6));
    v5 = [objc_alloc(MEMORY[0x277D0B540]) initWithConnection:WeakRetained routingInfo:v6];
    [WeakRetained dispatchMessage:v3 replyConnection:v5];
  }
}

void __GTMTLReplayClient_queryShaderInfo_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPerfState:?];
  }

  v2 = [*(*(a1 + 72) + 8) defaultCommandQueue];
  [v2 setStatEnabled:1];
  if (g_runningInCI == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"QueryShaderInfo - subdividing counter list"];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v4 UTF8String]);
  }

  v5 = [v2 subdivideCounterList:*(a1 + 48)];
  validateSubdividedCounterLists(*(a1 + 48), v5);
  [v2 setStatEnabled:0];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v26 = *(a1 + 56);
  v27 = v2;
  v11 = *(*(*(a1 + 64) + 8) + 40);
  v12 = *(a1 + 48);
  v13 = v11;
  v14 = *(v10 + 8);
  v15 = v5;
  [v14 defaultDevice];

  v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v25 = CollectFrameCounters(v10, v9, v12, v15, 41493, v16);
  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v18 = CollectFrameCounters(v10, v9, v12, v15, 63, v17);

  v19 = MEMORY[0x277CCA8C8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __ProfileFrame_block_invoke;
  v28[3] = &unk_279658850;
  v29 = v13;
  v30 = v16;
  v31 = v17;
  v32 = v12;
  v20 = v13;
  v21 = v16;
  v22 = v17;
  v23 = v12;
  v24 = [v19 blockOperationWithBlock:v28];
  [v24 addDependency:v25];
  [v24 addDependency:v18];
  [v9[1] addOperation:v24];

  [v26 addDependency:v24];
  [*(*(a1 + 80) + 8) addOperation:*(a1 + 56)];
}

void __GTMTLReplayClient_queryShaderInfo_block_invoke_2(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  info = 0;
  mach_timebase_info(&info);
  v64 = *(v1 + 8);
  v2 = *v1;
  v61 = *(*v1 + 16);
  v3 = *(*v1 + 120);
  v4 = *(v3 + 12);
  if (v4 < 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = 0;
    v5 = *(v3 + 24);
    do
    {
      if (GTFenum_isBeginCommandBuffer(v5[5]))
      {
        v6 = v2[13];
        if (v6 <= *v5 && v2[14] + v6 > *v5)
        {
          v8 = v58 + 1;
        }

        else
        {
          v8 = v58;
        }

        v58 = v8;
      }

      v5 += 6;
      --v4;
    }

    while (v4);
  }

  v63 = malloc_type_calloc(32 * v58, 0x10uLL, 0x1000040451B5BE8uLL);
  v62 = objc_opt_new();
  GTMTLReplayController_prePlayForProfiling(v1);
  v9 = *(v1 + 22560);
  v10 = *v1;
  while (v10[14] + v10[13] > v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(v10[16] + 24) + (*(v1 + 22560) << 6);
    if (GTFenum_isBeginCommandBuffer(*(v12 + 8)))
    {
      v13 = GTMTLReplayController_restoreCommandBuffer(v1, v12);
      GTMTLReplayController_updateCommandEncoder(v1, v12);
      GTMTLReplayController_defaultDispatchFunction(v1, v12);
      if (v13)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v1 + 22560)];
        [v62 addObject:v14];
      }
    }

    else
    {
      GTMTLReplayController_updateCommandEncoder(v1, v12);
      GTMTLReplayController_defaultDispatchFunction(v1, v12);
    }

    objc_autoreleasePoolPop(v11);
    v9 = (*(v1 + 22560) + 1);
    *(v1 + 22560) = v9;
  }

  v15 = [v64 defaultDevice];
  v65 = [v15 newEvent];

  v57 = mach_absolute_time();
  v16 = 0;
  LODWORD(v17) = 0;
  v18 = 1;
  do
  {
    v19 = v18;
    v60 = v17;
    [g_activityLog enterPerformFrameTimingForIndex:?];
    v20 = g_signpostLog;
    if (os_signpost_enabled(g_signpostLog))
    {
      *buf = 67109120;
      *&buf[4] = v60;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "performFrameTiming %d", buf, 8u);
    }

    GTMTLReplayController_prePlayForProfiling(v1);
    v59 = v19;
    for (i = *(v1 + 22560); v2[14] + v2[13] > i; *(v1 + 22560) = i)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(v1 + 22560);
      v24 = *(v2[16] + 24) + (v23 << 6);
      isBeginCommandBuffer = GTFenum_isBeginCommandBuffer(*(v24 + 8));
      if (isBeginCommandBuffer)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
        v27 = [v62 containsObject:v26];

        if (v27)
        {
          v28 = [v64 defaultCommandQueue];
          v29 = [v28 commandBuffer];

          ++performFrameTimingDesktop_signalCounter;
          [v29 encodeSignalEvent:v65 value:?];
          [v29 encodeWaitForEvent:v65 value:performFrameTimingDesktop_signalCounter];
          [v29 commit];
        }

        v30 = GTMTLReplayController_restoreCommandBuffer(v1, v24);
      }

      else
      {
        v30 = 0;
      }

      GTMTLReplayController_updateCommandEncoder(v1, v24);
      GTMTLReplayController_defaultDispatchFunction(v1, v24);
      if (isBeginCommandBuffer)
      {
        v31 = [v64 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v24, *(v24 + 13), *(*v1 + 16)) + 1)}];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __performFrameTimingDesktop_block_invoke;
        v66[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v66[4] = &v63[2 * v16];
        [v31 addCompletedHandler:v66];

        ++v16;
      }

      if (v30)
      {
        v32 = [v64 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v24, *(v24 + 13), v61) + 1)}];
        ++performFrameTimingDesktop_signalCounter;
        [v32 encodeSignalEvent:v65 value:?];
        [v32 encodeWaitForEvent:v65 value:performFrameTimingDesktop_signalCounter];
      }

      objc_autoreleasePoolPop(v22);
      i = (*(v1 + 22560) + 1);
    }

    v33 = mach_absolute_time();
    v34 = g_signpostLog;
    if (os_signpost_enabled(g_signpostLog))
    {
      *buf = 67109120;
      *&buf[4] = v60;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "performFrameTiming %d", buf, 8u);
    }

    v35 = (v33 - v57) * info.numer / info.denom < 0x3B9ACA00;
    [g_activityLog leaveActivity];
    v18 = v59 + 1;
    v17 = v60 + 1;
  }

  while (v60 < 0x1F && v35);
  v36 = [*(v1 + 8) defaultCommandQueue];
  [v36 finish];

  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:v60 + 1];
  v38 = 0;
  v39 = v63 + 1;
  do
  {
    qsort(&v63[2 * v38 * v58], v58, 0x10uLL, CommandBufferTimeInfo_compare);
    if (v58 <= 0)
    {
      v45 = 0;
    }

    else
    {
      v40 = 0.0;
      v41 = v39;
      v42 = v58;
      v43 = 0.0;
      do
      {
        v44 = *v41;
        if (v40 < *(v41 - 1))
        {
          v40 = *(v41 - 1);
        }

        if (v44 > v40)
        {
          v43 = v43 + v44 - v40;
          v40 = *v41;
        }

        v41 += 2;
        --v42;
      }

      while (v42);
      v45 = (v43 * 1000000000.0);
    }

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
    [v37 addObject:v46];

    ++v38;
    v39 += 2 * v58;
  }

  while (v38 != v59);
  free(v63);
  [v37 sortUsingComparator:&__block_literal_global_424];
  if ([v37 count])
  {
    v47 = [v37 objectAtIndexedSubscript:{objc_msgSend(v37, "count") >> 1}];
  }

  else
  {
    v47 = &unk_2860D6908;
  }

  if (g_runningInCI == 1)
  {
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPU Time = %@", v47];
    v49 = [v48 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v50 = *MEMORY[0x277D85E08];
    v51 = v49;
    fprintf(v50, "#CI-INFO# %s\n", [v49 UTF8String]);
  }

  v68[0] = @"frametime";
  v68[1] = @"frameGPUTime";
  *buf = v37;
  v70 = v47;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v68 count:2];

  v53 = *(*(a1 + 32) + 8);
  v54 = *(v53 + 40);
  *(v53 + 40) = v52;

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __GTMTLReplayClient_queryShaderInfo_block_invoke_3(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = [*(result + 40) getStateOccupancy];
    *(*(*(v1 + 48) + 8) + 24) = v2;
  }

  return result;
}

void __GTMTLReplayClient_queryShaderInfo_block_invoke_4(uint64_t a1)
{
  v5 = [*(*(a1 + 40) + 8) defaultDevice];
  v2 = DYMTLReplayFrameProfiler_loadAnalysis(v5);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end