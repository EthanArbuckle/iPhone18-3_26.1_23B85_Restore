void GTUSCSamplingStreamingManagerHelper::SetupSourceForFrameTime(id *this, uint64_t a2, int a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = [this[2] firstObject];
  if ([this[3] count])
  {
    if (!GTAGXPerfStateControl::IsGPUPerformanceStateInduced((this + 5)))
    {
      v7 = *(*this + 18);
      if (v7)
      {
        GTAGXPerfStateControl::EnableConsistentGPUPerfState((this + 5), v7);
        v8 = GTApplePMPPerfStateControl::EnableConsistentPerfState((this + 8), *(*this + 18) - 1);
        v9 = this[262];
        this[262] = v8;
      }

      else
      {
        v10 = GTApplePMPPerfStateControl::EnableConsistentPerfState((this + 8), 1u);
        v11 = this[262];
        this[262] = v10;

        v20 = @"LockGPUPerfState";
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
        v21[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        [v6 setOptions:v13];
      }
    }

    v14 = [this[3] lastObject];
    v15 = v14;
    if (!a3)
    {
      goto LABEL_7;
    }

    if (([v14 requestTriggers:this[258] firstErrorIndex:0] & 1) == 0)
    {
      v18 = [v15 name];
      NSLog(&cfstr_FailErrorWhile.isa, v18);
    }

    [v15 setOptions:0];
    if ([v15 requestCounters:this[249] firstErrorIndex:0])
    {
LABEL_7:
      if ([v15 setEnabled:1])
      {
LABEL_10:

        goto LABEL_11;
      }

      v16 = [v15 name];
      NSLog(&cfstr_FailErrorWhile_1.isa, v16);
    }

    else
    {
      v19 = [this[249] count];
      v16 = [v15 name];
      NSLog(&cfstr_FailErrorWhile_0.isa, v19, v16);
    }

    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

id GTUSCSamplingStreamingManagerHelper::DrainRawFrameData(id *this)
{
  if ([this[3] count])
  {
    v2 = MEMORY[0x277CBEB18];
    v3 = [this[3] firstObject];
    v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "ringBufferNum")}];

    v5 = [this[3] lastObject];
    if ([v5 isEnabled])
    {
      for (i = 0; ; i = (i + 1))
      {
        if (i >= [v5 ringBufferNum])
        {
          v13 = v4;
          goto LABEL_16;
        }

        v17 = 0;
        v18 = 0;
        v16 = 0;
        if (([v5 ringBufferInfoAtIndex:i base:&v18 size:&v17 + 4 dataOffset:&v17 dataSize:&v16] & 1) == 0)
        {
          break;
        }

        v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v16];
        v8 = v7;
        v9 = v16;
        if (v16 + v17 <= HIDWORD(v17))
        {
          [v7 appendBytes:v18 + v17 length:v16];
        }

        else
        {
          v10 = HIDWORD(v17) - v17;
          [v7 appendBytes:v18 + v17 length:(HIDWORD(v17) - v17)];
          [v8 appendBytes:v18 length:v9 - v10];
        }

        v11 = [v5 drainRingBufferAtIndex:i dataSize:v16];
        if (v11 != v16)
        {
          v12 = [v5 name];
          NSLog(&cfstr_FailUnexpected.isa, v12);
        }

        [v4 addObject:v8];
      }

      v14 = [v5 name];
      NSLog(&cfstr_FailUnableToRe.isa, v14);
    }

    v13 = 0;
LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id GTUSCSamplingStreamingManagerHelper::PostProcessFrameData(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    GTUSCSamplingStreamingManagerHelper::ResetSourceForPostProcessing(a1);
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [a1[3] lastObject];
    for (i = 0; ; ++i)
    {
      if (i >= [v3 count])
      {
        v12 = v4;
        goto LABEL_11;
      }

      v7 = [v3 objectAtIndexedSubscript:i];
      v8 = [v7 length];
      v15 = 0;
      v16 = 0;
      v9 = 4 * [v7 length];
      if (v9 <= 0x4000)
      {
        v9 = 0x4000;
      }

      v10 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
      v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
      LOBYTE(v14) = 1;
      if (([v5 postProcessRawDataWithRingBufferIndex:i source:objc_msgSend(v7 sourceSize:"bytes") sourceRead:v8 + 8 sourceWrite:&v16 output:v8 outputSize:objc_msgSend(v11 outputRead:"mutableBytes") outputWrite:v10 isLast:{0, &v15, v14}] & 1) == 0)
      {
        break;
      }

      [v11 setLength:v15];
      [v4 addObject:v11];
    }

    v12 = 0;
LABEL_11:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

__n128 __Block_byref_object_copy__486(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper19StreamFrameTimeDataEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  GTMTLReplayController_prePlayForProfiling(**v2);
  GTUSCSamplingStreamingManagerHelper::SetupSourceForFrameTime(v2, *(a1 + 56), *(a1 + 60) == 0);
  DisableComputeEncoderCoalescing(**v2, 1);
  v3 = [v2[2] firstObject];
  [v3 startSampling];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 60);
  v6 = *(*(*(a1 + 40) + 8) + 48);
  v43 = **v2;
  v7 = v43;
  v44 = 0;
  v42 = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  v8 = *(**v2 + 8);
  v39 = ***v2;
  v32 = *(v39 + 16);
  v36 = v8;
  v9 = [v8 defaultDevice];
  v38 = [v9 newCommandQueue];

  v10 = [v8 defaultDevice];
  v33 = v4;
  v37 = v2;
  v11 = [v10 newEvent];

  v41 = 0;
  v12 = *(*v43 + 128);
  v40 = *(v12 + 12);
  if (v43[5640] < v40)
  {
    v34 = v11;
    v35 = (v6 + 40 * v5);
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(v12 + 24) + (*(v7 + 22560) << 6);
      if (GTFenum_getConstructorType(*(v14 + 8)) == 25)
      {
        v15 = GTMTLReplayController_restoreCommandBuffer(v7, v14);
      }

      else
      {
        v15 = 0;
      }

      GTMTLReplayController_updateCommandEncoder(v7, v14);
      DispatchFunction(v7, v14, &v41);
      if (GTFenum_getConstructorType(*(v14 + 8)) == 21)
      {
        v25 = *(GTTraceFunc_argumentBytesWithMap(v14, *(v14 + 13), v32) + 1);
        if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v35, [v8 globalTraceIdForEncoder:v25 ofType:0]))
        {
          v31 = [v8 blitCommandEncoderForKey:v25];
          [v31 endEncoding];
          v30 = [v8 commandBufferForKey:{GTTraceFunc_targetContext(v14, *(v39 + 16))}];
          v26 = [v30 computeCommandEncoder];
          [v26 endEncoding];
          DispatchFunction(v7, v14, &v41);
        }
      }

      if (v15)
      {
        v16 = [v8 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v14, *(v14 + 13), *(v39 + 16)) + 1)}];
        ++GTUSCSamplingStreamingManagerHelper::ReplayForTimingCounters(std::unordered_map<unsigned int,GTEncoderSampleIndexInfo> &)::signalCounter;
        [v16 encodeSignalEvent:v11 value:?];
        v17 = [v38 commandBuffer];
        [v17 encodeWaitForEvent:v11 value:{GTUSCSamplingStreamingManagerHelper::ReplayForTimingCounters(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &)::signalCounter++}];
        [v17 encodeSignalEvent:v11 value:?];
        [v17 commit];
        [v16 encodeWaitForEvent:v11 value:{GTUSCSamplingStreamingManagerHelper::ReplayForTimingCounters(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &)::signalCounter}];
      }

      else
      {
        v18 = *(v14 + 8);
        if (!GTMTLReplayHost_IsFuncEnumSampledEncoder(v18, 1, 0))
        {
          goto LABEL_13;
        }

        ConstructorType = GTFenum_getConstructorType(v18);
        v20 = v41;
        if (v41 != (ConstructorType == 65))
        {
          goto LABEL_13;
        }

        v21 = v12;
        v22 = ConstructorType == 65;
        v23 = *(GTTraceFunc_argumentBytesWithMap(v14, *(v14 + 13), *(v39 + 16)) + 1);
        LODWORD(v22) = [v8 globalTraceIdForEncoder:v23 ofType:v22];
        v16 = [v8 encoderForKey:v23 ofType:v20];
        GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v37, v35, v14, v22, v16, v35[3], 0, 0);
        v8 = v36;
        v12 = v21;
        v11 = v34;
      }

LABEL_13:
      objc_autoreleasePoolPop(v13);
      v24 = *(v7 + 22560) + 1;
      *(v7 + 22560) = v24;
    }

    while (v24 < v40);
  }

  *(v7 + 22564) = 0;
  v27 = [*(v7 + 8) defaultCommandQueue];
  [v27 finish];

  ScopedReplayConfiguration::~ScopedReplayConfiguration(&v42);
  v28 = GTUSCSamplingStreamingManagerHelper::DrainRawFrameData(v37);
  if (v28)
  {
    [*(a1 + 32) setArray:v28];
  }

  objc_autoreleasePoolPop(v33);
  v29 = [v37[2] firstObject];
  [v29 stopSampling];

  DisableComputeEncoderCoalescing(**v37, 0);
  GTAGXPerfStateControl::DisableConsistentGPUPerfState((v37 + 5));

  GTApplePMPPerfStateControl::DisableConsistentPerfState((v37 + 8));
}

void sub_24D88ADEC(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  ScopedReplayConfiguration::~ScopedReplayConfiguration(va);
  _Unwind_Resume(a1);
}

void ___ZN35GTUSCSamplingStreamingManagerHelper19StreamFrameTimeDataEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = GTSampleBufferManager::ResolveSampleBuffers((v2 + 267));
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
    [v4 setData:v5];

    v3 = v5;
  }

  v2[273] = 0;
  v2[271] = v2[270];
}

void ___ZN35GTUSCSamplingStreamingManagerHelper19StreamFrameTimeDataEv_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_autoreleasePoolPush();
  v4 = GTUSCSamplingStreamingManagerHelper::PostProcessFrameData(v2, *(a1 + 32));
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(__n);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<std::unordered_map<unsigned int,GTEncoderSampleIndexInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void GTUSCSamplingStreamingManagerHelper::InitAPSStreaming(GTUSCSamplingStreamingManagerHelper *this, GTUSCSamplingStreamingManager *a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (xmmword_27F09C594 == 2)
  {
    GTUSCSamplingStreamingManagerHelper::CleanupForAPSStreaming(this);
    GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v2);
  }

  else
  {
    GTUSCSamplingStreamingManagerHelper::Init(this, a2);
    GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v3);
    GTAGXProfilingSupportHelper::Initialize(qword_27F09C4A8, v4);
  }

  v5 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  qword_27F09C478 = [qword_27F09C498 mutableBytes];
  v6 = [[ProgramAddressTableCollector alloc] initForHarvestingBinaries];
  v7 = xmmword_27F09C480;
  *&xmmword_27F09C480 = v6;

  if (qword_27F09C588 == -1)
  {
    goto LABEL_16;
  }

  GTUSCSamplingStreamingManagerHelper::SetupBuffersForAPSSource(v8);
  v9 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:qword_27F09C588];
  if ((qword_27F09C9B0 & 4) != 0)
  {
    if (!xmmword_27F09C594)
    {
      v28 = [[GTGPUAPSConfig alloc] initForProfilingConfigurationDetermination];
      v29 = *(&xmmword_27F09C520 + 1);
      *(&xmmword_27F09C520 + 1) = v28;

      v13 = *(&xmmword_27F09C520 + 1);
      v30 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"apsProfilingConfig"];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 objectForKeyedSubscript:@"KickAndStateTracing"];
        v33 = [v32 objectForKeyedSubscript:@"PulsePeriod"];

        if (v33)
        {
          v34 = [v33 unsignedIntegerValue];
          [*(&xmmword_27F09C520 + 1) setOverridePulsePeriod:v34];
        }

        v35 = [v31 objectForKeyedSubscript:@"KickAndStateTracing"];
        v36 = [v35 objectForKeyedSubscript:@"CountPeriod"];

        if (v36)
        {
          v37 = [v36 unsignedIntegerValue];
          [*(&xmmword_27F09C520 + 1) setOverrideCountPeriod:v37];
        }
      }

      goto LABEL_12;
    }

    v11 = [[GTGPUAPSConfig alloc] initForTimelineConfigurationDetermination];
    v12 = qword_27F09C530;
    qword_27F09C530 = v11;

    v10 = qword_27F09C530;
  }

  else if (xmmword_27F09C594 == 2)
  {
    v10 = qword_27F09C530;
  }

  else
  {
    v10 = *(&xmmword_27F09C520 + 1);
  }

  v13 = v10;
LABEL_12:
  v14 = [v13 grcOptions];
  v15 = xmmword_27F09C500;
  *&xmmword_27F09C500 = v14;

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v17 = *(&xmmword_27F09C500 + 1);
  *(&xmmword_27F09C500 + 1) = v16;

  v18 = *(&xmmword_27F09C500 + 1);
  v19 = MEMORY[0x277D0AF30];
  v20 = [v13 grcTrigger];
  v21 = [v19 selectWithName:@"KickAndStateTracing" options:v20];
  [v18 addObject:v21];

  if (xmmword_27F09C594 == 2)
  {
    v22 = @"Timeline";
  }

  else
  {
    v22 = @"Profiling";
  }

  v23 = v22;
  v24 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32);
  v38 = @"Streaming APS Profiling";
  v39[0] = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  (*(v24 + 16))(v24, v25);

  GTUSCSamplingStreamingManagerHelper::InitRDELimiterCounters(v26);
LABEL_16:
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t GTUSCSamplingStreamingManagerHelper::StreamAPS(GTUSCSamplingStreamingManagerHelper *this)
{
  v1 = atomic_load(byte_27F09C804);
  if ((v1 & 1) == 0 && qword_27F09C588 != -1)
  {
    [*(**&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) defaultCommandQueue];
    [objc_claimAutoreleasedReturnValue() finish];
    GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }

  return 1;
}

void sub_24D88BE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::thread a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a28, 8);

  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);

  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  v72 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v72;
    operator delete(v72);
  }

  _Block_object_dispose(&STACK[0x248], 8);
  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::~__hash_table(&STACK[0x278]);
  _Block_object_dispose((v70 - 192), 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v70 - 144);

  _Unwind_Resume(a1);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = vdupq_n_s64(1uLL);
  v8 = xmmword_24DA8B910;
  v9 = vdupq_n_s64(2uLL);
  v188 = v7;
  v187 = v9;
  while (2)
  {
    v10 = v6;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v6 = v10;
          v11 = a2 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v129 = v10[1];
                v130 = *(a2 - 1);
                if (v129 <= v130)
                {
                  v131 = *(a2 - 1);
                }

                else
                {
                  v131 = v10[1];
                }

                if (v129 >= v130)
                {
                  v129 = *(a2 - 1);
                }

                *(a2 - 1) = v129;
                v10[1] = v131;
                v132 = *(a2 - 1);
                if (v132 <= *v10)
                {
                  v133 = *v10;
                }

                else
                {
                  v133 = *(a2 - 1);
                }

                if (v132 >= *v10)
                {
                  v132 = *v10;
                }

                *(a2 - 1) = v132;
                v135 = *v10;
                v134 = v10[1];
                if (v133 <= v134)
                {
                  v135 = v10[1];
                }

                if (v133 < v134)
                {
                  v134 = v133;
                }

                *v10 = v135;
                v10[1] = v134;
                return result;
              case 4:
                v137 = v10[1];
                v136 = v10[2];
                if (*v10 <= v136)
                {
                  v138 = v10[2];
                }

                else
                {
                  v138 = *v10;
                }

                if (*v10 < v136)
                {
                  v136 = *v10;
                }

                v10[2] = v136;
                *v10 = v138;
                v139 = *(a2 - 1);
                if (v137 <= v139)
                {
                  v140 = *(a2 - 1);
                }

                else
                {
                  v140 = v137;
                }

                if (v137 < v139)
                {
                  v139 = v137;
                }

                *(a2 - 1) = v139;
                v141 = *v10;
                if (*v10 <= v140)
                {
                  v142 = v140;
                }

                else
                {
                  v142 = *v10;
                }

                if (*v10 >= v140)
                {
                  v141 = v140;
                }

                *v10 = v142;
                v10[1] = v141;
                v143 = v10[2];
                v144 = *(a2 - 1);
                if (v143 <= v144)
                {
                  v145 = *(a2 - 1);
                }

                else
                {
                  v145 = v10[2];
                }

                if (v143 >= v144)
                {
                  v143 = *(a2 - 1);
                }

                *(a2 - 1) = v143;
                v146 = v10[1];
                if (v146 <= v145)
                {
                  v147 = v145;
                }

                else
                {
                  v147 = v10[1];
                }

                if (v146 >= v145)
                {
                  v146 = v145;
                }

                v10[1] = v147;
                v10[2] = v146;
                return result;
              case 5:
                v107 = *v10;
                v108 = v10[1];
                if (*v10 <= v108)
                {
                  v109 = v10[1];
                }

                else
                {
                  v109 = *v10;
                }

                if (*v10 >= v108)
                {
                  v107 = v10[1];
                }

                *v10 = v109;
                v10[1] = v107;
                v110 = v10[3];
                v111 = *(a2 - 1);
                if (v110 <= v111)
                {
                  v112 = *(a2 - 1);
                }

                else
                {
                  v112 = v10[3];
                }

                if (v110 >= v111)
                {
                  v110 = *(a2 - 1);
                }

                *(a2 - 1) = v110;
                v10[3] = v112;
                v113 = *(a2 - 1);
                v114 = v10[2];
                if (v113 <= v114)
                {
                  v115 = v10[2];
                }

                else
                {
                  v115 = *(a2 - 1);
                }

                if (v113 >= v114)
                {
                  v113 = v10[2];
                }

                *(a2 - 1) = v113;
                v117 = v10[2];
                v116 = v10[3];
                v118 = v10[1];
                if (v115 <= v116)
                {
                  v117 = v10[3];
                }

                if (v115 < v116)
                {
                  v116 = v115;
                }

                v10[2] = v117;
                v10[3] = v116;
                v119 = *(a2 - 1);
                if (v118 <= v119)
                {
                  v120 = *(a2 - 1);
                }

                else
                {
                  v120 = v118;
                }

                if (v118 < v119)
                {
                  v119 = v118;
                }

                *(a2 - 1) = v119;
                v121 = *v10;
                v123 = v10[2];
                v122 = v10[3];
                if (v122 <= *v10)
                {
                  v124 = *v10;
                }

                else
                {
                  v124 = v10[3];
                }

                if (v122 >= *v10)
                {
                  v122 = *v10;
                }

                if (v124 <= v123)
                {
                  v121 = v10[2];
                }

                if (v124 < v123)
                {
                  v123 = v124;
                }

                if (v122 <= v120)
                {
                  v125 = v120;
                }

                else
                {
                  v125 = v122;
                }

                if (v122 >= v120)
                {
                  v122 = v120;
                }

                if (v125 <= v123)
                {
                  v120 = v123;
                }

                *v10 = v121;
                v10[1] = v120;
                if (v125 >= v123)
                {
                  v126 = v123;
                }

                else
                {
                  v126 = v125;
                }

                v10[2] = v126;
                v10[3] = v122;
                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v127 = *(a2 - 1);
              v128 = *v10;
              if (v127 > *v10)
              {
                *v10 = v127;
                *(a2 - 1) = v128;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v148 = v10 + 1;
            v150 = v10 == a2 || v148 == a2;
            if (a4)
            {
              if (!v150)
              {
                v151 = 8;
                v152 = v10;
                do
                {
                  v154 = *v152;
                  v153 = v152[1];
                  v152 = v148;
                  if (v153 > v154)
                  {
                    v155 = v151;
                    while (1)
                    {
                      *(v10 + v155) = v154;
                      v156 = v155 - 8;
                      if (v155 == 8)
                      {
                        break;
                      }

                      v154 = *(v10 + v155 - 16);
                      v155 -= 8;
                      if (v153 <= v154)
                      {
                        v157 = (v10 + v156);
                        goto LABEL_285;
                      }
                    }

                    v157 = v10;
LABEL_285:
                    *v157 = v153;
                  }

                  v148 = v152 + 1;
                  v151 += 8;
                }

                while (v152 + 1 != a2);
              }
            }

            else if (!v150)
            {
              do
              {
                v186 = *v6;
                v185 = v6[1];
                v6 = v148;
                if (v185 > v186)
                {
                  do
                  {
                    *v148 = v186;
                    v186 = *(v148 - 2);
                    --v148;
                  }

                  while (v185 > v186);
                  *v148 = v185;
                }

                v148 = v6 + 1;
              }

              while (v6 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v158 = (v11 - 2) >> 1;
              v159 = v158;
              do
              {
                v160 = v159;
                if (v158 >= v159)
                {
                  v161 = (2 * v159) | 1;
                  v162 = &v10[v161];
                  if (2 * v160 + 2 >= v11)
                  {
                    v163 = *v162;
                  }

                  else
                  {
                    v163 = v162[1];
                    v164 = *v162 > v163;
                    if (*v162 < v163)
                    {
                      v163 = *v162;
                    }

                    if (v164)
                    {
                      ++v162;
                      v161 = 2 * v160 + 2;
                    }
                  }

                  v165 = &v10[v160];
                  v166 = *v165;
                  if (v163 <= *v165)
                  {
                    do
                    {
                      *v165 = v163;
                      v165 = v162;
                      if (v158 < v161)
                      {
                        break;
                      }

                      v167 = (2 * v161) | 1;
                      v162 = &v10[v167];
                      v161 = 2 * v161 + 2;
                      if (v161 >= v11)
                      {
                        v163 = *v162;
                        v161 = v167;
                      }

                      else
                      {
                        v163 = *v162;
                        result = v162[1];
                        if (*v162 >= result)
                        {
                          v163 = v162[1];
                        }

                        if (*v162 <= result)
                        {
                          v161 = v167;
                        }

                        else
                        {
                          ++v162;
                        }
                      }
                    }

                    while (v163 <= v166);
                    *v165 = v166;
                  }
                }

                v159 = v160 - 1;
              }

              while (v160);
              do
              {
                v168 = 0;
                v169 = *v10;
                v170 = v10;
                do
                {
                  v171 = &v170[v168];
                  v172 = v171 + 1;
                  v173 = (2 * v168) | 1;
                  v168 = 2 * v168 + 2;
                  if (v168 >= v11)
                  {
                    v174 = *v172;
                    v168 = v173;
                  }

                  else
                  {
                    v176 = v171[2];
                    v175 = v171 + 2;
                    v174 = v176;
                    v177 = *(v175 - 1);
                    v178 = v177 > v176;
                    if (v177 < v176)
                    {
                      v174 = *(v175 - 1);
                    }

                    if (v178)
                    {
                      v172 = v175;
                    }

                    else
                    {
                      v168 = v173;
                    }
                  }

                  *v170 = v174;
                  v170 = v172;
                }

                while (v168 <= ((v11 - 2) >> 1));
                if (v172 == --a2)
                {
                  *v172 = v169;
                }

                else
                {
                  *v172 = *a2;
                  *a2 = v169;
                  v179 = (v172 - v10 + 8) >> 3;
                  v20 = v179 < 2;
                  v180 = v179 - 2;
                  if (!v20)
                  {
                    v181 = v180 >> 1;
                    v182 = &v10[v181];
                    v183 = *v182;
                    v184 = *v172;
                    if (*v182 > *v172)
                    {
                      do
                      {
                        *v172 = v183;
                        v172 = v182;
                        if (!v181)
                        {
                          break;
                        }

                        v181 = (v181 - 1) >> 1;
                        v182 = &v10[v181];
                        v183 = *v182;
                      }

                      while (*v182 > v184);
                      *v172 = v184;
                    }
                  }
                }

                v20 = v11-- <= 2;
              }

              while (!v20);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = *(a2 - 1);
          if (v11 < 0x81)
          {
            v47 = *v10;
            if (*v10 <= v13)
            {
              v48 = *(a2 - 1);
            }

            else
            {
              v48 = *v10;
            }

            if (*v10 >= v13)
            {
              v47 = *(a2 - 1);
            }

            *(a2 - 1) = v47;
            *v10 = v48;
            v49 = *(a2 - 1);
            v50 = v10[v12];
            if (v49 <= v50)
            {
              v51 = v10[v12];
            }

            else
            {
              v51 = *(a2 - 1);
            }

            if (v49 >= v50)
            {
              v49 = v10[v12];
            }

            *(a2 - 1) = v49;
            v52 = *v10;
            v53 = v51 > *v10;
            if (v51 > *v10)
            {
              v52 = v10[v12];
            }

            v10[v12] = v52;
            v46 = *v10;
            if (!v53)
            {
              v46 = v51;
            }

            *v10 = v46;
          }

          else
          {
            v14 = &v10[v12];
            v15 = *v14;
            if (*v14 <= v13)
            {
              v16 = *(a2 - 1);
            }

            else
            {
              v16 = *v14;
            }

            if (*v14 >= v13)
            {
              v15 = *(a2 - 1);
            }

            *(a2 - 1) = v15;
            *v14 = v16;
            v17 = *(a2 - 1);
            if (v17 <= *v10)
            {
              v18 = *v10;
            }

            else
            {
              v18 = *(a2 - 1);
            }

            if (v17 >= *v10)
            {
              v17 = *v10;
            }

            *(a2 - 1) = v17;
            v19 = *v14;
            v20 = v18 > *v14;
            if (v18 > *v14)
            {
              v19 = *v10;
            }

            *v10 = v19;
            v22 = *(v14 - 1);
            v21 = *v14;
            if (!v20)
            {
              v21 = v18;
            }

            *v14 = v21;
            v23 = *(a2 - 2);
            if (v22 <= v23)
            {
              v24 = *(a2 - 2);
            }

            else
            {
              v24 = v22;
            }

            if (v22 < v23)
            {
              v23 = v22;
            }

            *(a2 - 2) = v23;
            *(v14 - 1) = v24;
            v25 = *(a2 - 2);
            v26 = v10[1];
            if (v25 <= v26)
            {
              v27 = v10[1];
            }

            else
            {
              v27 = *(a2 - 2);
            }

            if (v25 >= v26)
            {
              v25 = v10[1];
            }

            *(a2 - 2) = v25;
            v28 = *(v14 - 1);
            v29 = v27 > v28;
            if (v27 > v28)
            {
              v28 = v10[1];
            }

            v10[1] = v28;
            v30 = *(v14 - 1);
            if (!v29)
            {
              v30 = v27;
            }

            *(v14 - 1) = v30;
            v31 = v14[1];
            v32 = *(a2 - 3);
            if (v31 <= v32)
            {
              v33 = *(a2 - 3);
            }

            else
            {
              v33 = v14[1];
            }

            if (v31 >= v32)
            {
              v31 = *(a2 - 3);
            }

            *(a2 - 3) = v31;
            v14[1] = v33;
            v34 = *(a2 - 3);
            v35 = v10[2];
            if (v34 <= v35)
            {
              v36 = v10[2];
            }

            else
            {
              v36 = *(a2 - 3);
            }

            if (v34 >= v35)
            {
              v34 = v10[2];
            }

            *(a2 - 3) = v34;
            v37 = v14[1];
            v38 = v36 > v37;
            if (v36 > v37)
            {
              v37 = v10[2];
            }

            v10[2] = v37;
            v40 = *v14;
            v39 = v14[1];
            if (!v38)
            {
              v39 = v36;
            }

            v41 = *(v14 - 1);
            if (v40 <= v39)
            {
              v42 = v39;
            }

            else
            {
              v42 = *v14;
            }

            if (v40 < v39)
            {
              v39 = *v14;
            }

            if (v39 <= v41)
            {
              v43 = *(v14 - 1);
            }

            else
            {
              v43 = v39;
            }

            if (v39 >= v41)
            {
              v39 = *(v14 - 1);
            }

            v14[1] = v39;
            if (v41 <= v42)
            {
              v44 = v42;
            }

            else
            {
              v44 = v41;
            }

            if (v41 > v42)
            {
              v43 = v42;
            }

            *(v14 - 1) = v44;
            *v14 = v43;
            v45 = *v10;
            *v10 = v43;
            *v14 = v45;
            v46 = *v10;
          }

          --a3;
          if ((a4 & 1) == 0 && *(v10 - 1) <= v46)
          {
            if (v46 <= *(a2 - 1))
            {
              v99 = v10 + 1;
              do
              {
                v10 = v99;
                if (v99 >= a2)
                {
                  break;
                }

                ++v99;
              }

              while (v46 <= *v10);
            }

            else
            {
              do
              {
                v98 = v10[1];
                ++v10;
              }

              while (v46 <= v98);
            }

            v100 = a2;
            if (v10 < a2)
            {
              v100 = a2;
              do
              {
                v101 = *--v100;
              }

              while (v46 > v101);
            }

            if (v10 < v100)
            {
              v102 = *v10;
              v103 = *v100;
              do
              {
                *v10 = v103;
                *v100 = v102;
                do
                {
                  v104 = v10[1];
                  ++v10;
                  v102 = v104;
                }

                while (v46 <= v104);
                do
                {
                  v105 = *--v100;
                  v103 = v105;
                }

                while (v46 > v105);
              }

              while (v10 < v100);
            }

            v106 = v10 - 1;
            if (v10 - 1 != v6)
            {
              *v6 = *v106;
            }

            a4 = 0;
            *v106 = v46;
            continue;
          }

          break;
        }

        if (v46 <= *(a2 - 1))
        {
          v56 = v10 + 1;
          do
          {
            v54 = v56;
            if (v56 >= a2)
            {
              break;
            }

            ++v56;
          }

          while (v46 <= *v54);
        }

        else
        {
          v54 = v10;
          do
          {
            v55 = v54[1];
            ++v54;
          }

          while (v46 <= v55);
        }

        v57 = a2;
        if (v54 < a2)
        {
          v57 = a2;
          do
          {
            v58 = *--v57;
          }

          while (v46 > v58);
        }

        v59 = v54;
        if (v54 < v57)
        {
          v60 = *v54;
          *v54 = *v57;
          v59 = v54 + 1;
          *v57 = v60;
        }

        v61 = v57 - 1;
        v62 = (v57 - 1) - v59;
        if (v62 < 1009)
        {
          v63 = 0;
          v76 = v62 >> 3;
          v74 = 1;
LABEL_124:
          v80 = v76 + 1;
          v77 = (v76 + 1) / 2;
          v78 = v80 - v80 / 2;
          goto LABEL_125;
        }

        v63 = 0;
        v64 = 0;
        v65 = vdupq_n_s64(v46);
        do
        {
          if (v64)
          {
            if (v63)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v66 = 0uLL;
            v67 = v8;
            do
            {
              v66 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(v65, *(v59 + v64)), v7), v67), v66);
              v67 = vaddq_s64(v67, v9);
              v64 += 16;
            }

            while (v64 != 512);
            v64 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
            if (v63)
            {
LABEL_104:
              if (!v64)
              {
                goto LABEL_115;
              }

              goto LABEL_112;
            }
          }

          v68 = 0uLL;
          v69 = 0x1FFFFFFFFFFFFFFFLL;
          v70 = v8;
          do
          {
            v68 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(vextq_s8(*&v61[v69], *&v61[v69], 8uLL), v65), vdupq_n_s64(1uLL)), v70), v68);
            v70 = vaddq_s64(v70, vdupq_n_s64(2uLL));
            v69 -= 2;
          }

          while (v69 != -65);
          v63 = vorr_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
          if (!v64)
          {
            goto LABEL_115;
          }

LABEL_112:
          if (v63)
          {
            do
            {
              v71 = __clz(__rbit64(v64));
              v64 &= v64 - 1;
              v72 = &v61[-__clz(__rbit64(v63))];
              v73 = v59[v71];
              v59[v71] = *v72;
              *v72 = v73;
              v63 &= v63 - 1;
            }

            while (v63 && v64);
          }

LABEL_115:
          v59 += 64 * (v64 == 0);
          v74 = v63 == 0;
          if (v63)
          {
            v75 = 0;
          }

          else
          {
            v75 = -512;
          }

          v61 = (v61 + v75);
        }

        while (v61 - v59 > 1008);
        v76 = v61 - v59;
        if (!(v64 | v63))
        {
          goto LABEL_124;
        }

        v77 = v76 - 63;
        v78 = 64;
        v79 = 64;
        if (v64)
        {
          if (v63)
          {
            goto LABEL_134;
          }

LABEL_131:
          if (v77 >= 1)
          {
            v82 = 0;
            v63 = 0;
            v83 = v61;
            do
            {
              v84 = *v83--;
              v63 |= (v84 > v46) << v82++;
            }

            while (v77 != v82);
            goto LABEL_134;
          }

          if (v64)
          {
            v92 = 0;
          }

          else
          {
            v92 = v79;
          }

          v10 = &v59[v92];
LABEL_151:
          if (v64)
          {
            v61 -= v77;
            goto LABEL_153;
          }

          goto LABEL_157;
        }

LABEL_125:
        if (v77 < 1)
        {
          v64 = 0;
        }

        else
        {
          v81 = 0;
          v64 = 0;
          do
          {
            v64 |= (v59[v81] <= v46) << v81;
            ++v81;
          }

          while (v77 != v81);
        }

        v79 = v77;
        v77 = v78;
        if (v74)
        {
          goto LABEL_131;
        }

LABEL_134:
        if (v64 && v63)
        {
          do
          {
            v85 = __clz(__rbit64(v64));
            v64 &= v64 - 1;
            v86 = &v61[-__clz(__rbit64(v63))];
            v87 = v59[v85];
            v59[v85] = *v86;
            *v86 = v87;
            v63 &= v63 - 1;
          }

          while (v63 && v64);
        }

        if (v64)
        {
          v88 = 0;
        }

        else
        {
          v88 = v79;
        }

        v10 = &v59[v88];
        if (!v63)
        {
          goto LABEL_151;
        }

        if (v64)
        {
          do
          {
LABEL_153:
            v93 = __clz(v64) ^ 0x3F;
            v94 = &v10[v93];
            if (v61 != v94)
            {
              v95 = *v94;
              *v94 = *v61;
              *v61 = v95;
            }

            v64 &= ~(-1 << v93);
            --v61;
          }

          while (v64);
          v10 = v61 + 1;
        }

        else
        {
          do
          {
            v89 = __clz(v63) ^ 0x3F;
            v90 = &v61[-v89];
            if (v10 != v90)
            {
              v91 = *v90;
              *v90 = *v10;
              *v10 = v91;
            }

            v63 &= ~(-1 << v89);
            ++v10;
          }

          while (v63);
        }

LABEL_157:
        v96 = v10 - 1;
        if (v10 - 1 != v6)
        {
          *v6 = *v96;
        }

        *v96 = v46;
        if (v54 < v57)
        {
LABEL_162:
          result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(v6, v10 - 1, a3, a4 & 1);
          v9 = v187;
          v8 = xmmword_24DA8B910;
          v7 = v188;
          a4 = 0;
          continue;
        }

        break;
      }

      v97 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v6, v10 - 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v10, a2);
      if (!result)
      {
        v8 = xmmword_24DA8B910;
        v7 = v188;
        v9 = v187;
        if (!v97)
        {
          goto LABEL_162;
        }

        continue;
      }

      break;
    }

    a2 = v10 - 1;
    v8 = xmmword_24DA8B910;
    v7 = v188;
    v9 = v187;
    if (!v97)
    {
      continue;
    }

    return result;
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = v5 << 6;
    if (v5 << 6 < v4 || v3 > (v5 << 6) - v4)
    {
      __dst = 0;
      v17 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v8 = v5 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v6 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v9);
      v10 = *a1;
      v11 = *(a1 + 8);
      *&v17 = v11 + v4;
      v12 = __dst;
      if (v11 < 1)
      {
        LODWORD(v15) = 0;
        v14 = __dst;
      }

      else
      {
        v13 = v11 >> 6;
        if (v11 >= 0x40)
        {
          memmove(__dst, v10, 8 * v13);
        }

        v14 = &v12[8 * v13];
        v15 = v11 & 0x3F;
        if (v15)
        {
          *v14 = *v14 & ~(0xFFFFFFFFFFFFFFFFLL >> -v15) | *(v10 + v13) & (0xFFFFFFFFFFFFFFFFLL >> -v15);
        }

        v10 = *a1;
      }

      *a1 = v12;
      *(a1 + 8) = v17;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v14 = (*a1 + 8 * (v3 >> 6));
      v15 = *(a1 + 8) & 0x3FLL;
      *(a1 + 8) = a2;
    }

    __dst = v14;
    LODWORD(v17) = v15;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&__dst, v4);
  }
}

void sub_24D88CCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:nn200100](&v2, a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_24D88CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__n128 __Block_byref_object_copy__700(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper9StreamAPSEv_block_invoke(void *a1)
{
  v127[2] = *MEMORY[0x277D85DE8];
  v2 = atomic_load((a1[12] + 2844));
  if (v2)
  {
    goto LABEL_79;
  }

  v110 = a1[12];
  v115 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
  v114 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
  v112 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = 126 - 2 * __clz(&v6[-v5] >> 4);
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v5, v6, v8, 1);
  v111 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)) >> 4];
  v108 = [MEMORY[0x277CBEB28] dataWithCapacity:*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)];
  [v108 appendBytes:*(*(a1[6] + 8) + 48) length:*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v12 = 126 - 2 * __clz(&v11[-v10] >> 4);
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v10, v11, v13, 1);
  v14 = a1[6];
  v15 = *(v14 + 8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 56);
  if (v16 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v16 + 8);
  }

  if ((v17 - v16) >= 0x11)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v18 < *(v16 + v19 + 16))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
        v127[0] = v21;
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1[6] + 8) + 48) + v19 + 16) - 1];
        v127[1] = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
        [v111 addObject:v23];

        v14 = a1[6];
      }

      v24 = *(v14 + 8);
      v16 = *(v24 + 48);
      v25 = *(v24 + 56);
      if (v18 <= *(v16 + v19 + 24))
      {
        v18 = *(v16 + v19 + 24);
      }

      ++v20;
      v19 += 16;
    }

    while (v20 < (v25 - v16) >> 4);
  }

  v26 = *(*(a1[5] + 8) + 64);
  if (v26)
  {
    v1 = 0x277CCA000uLL;
    do
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 6)];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 4)];
      [v115 setObject:v27 forKeyedSubscript:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 7)];
      v126[0] = v29;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 8)];
      v126[1] = v30;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 9)];
      v126[2] = v31;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26[5]];
      v126[3] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 4)];
      [v114 setObject:v33 forKeyedSubscript:v34];

      if (*(v26 + 12))
      {
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        v125[0] = v35;
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 13)];
        v125[1] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v26 + 4)];
        [v112 setObject:v37 forKeyedSubscript:v38];
      }

      v26 = *v26;
    }

    while (v26);
  }

  v113 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[7] + 8) + 72)];
  for (i = *(*(a1[7] + 8) + 64); i; i = *i)
  {
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:(i[4] - i[3]) >> 4];
    v1 = i[3];
    v41 = i[4];
    while (v1 != v41)
    {
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v1];
      v124[0] = v42;
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v1 + 8)];
      v124[1] = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
      [v40 addObject:v44];

      v1 += 16;
    }

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 4)];
    [v113 setObject:v40 forKeyedSubscript:v45];
  }

  v120 = 0;
  v105 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v115 requiringSecureCoding:1 error:&v120];
  v46 = v120;
  v119 = v46;
  v104 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v114 requiringSecureCoding:1 error:&v119];
  v47 = v119;

  v118 = v47;
  v103 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v112 requiringSecureCoding:1 error:&v118];
  v48 = v118;

  v117 = v48;
  v102 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v113 requiringSecureCoding:1 error:&v117];
  v98 = v117;

  v49 = [*(v110 + 1944) mappings];
  if (v49)
  {
    v106 = [*(v110 + 1944) mappings];
  }

  else
  {
    v106 = MEMORY[0x277CBEBF8];
  }

  v50 = [*(v110 + 1944) binaries];
  v51 = MEMORY[0x277CBEC10];
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = MEMORY[0x277CBEC10];
  }

  v107 = v52;
  v53 = *(v110 + 2220);
  if (v53)
  {
    if (v53 == 1)
    {
      v99 = 0;
      goto LABEL_40;
    }

    LOBYTE(v54) = 1;
  }

  else
  {
    v54 = *(v110 + 3272);
  }

  v99 = v54;
LABEL_40:
  v109 = objc_opt_new();
  [v109 setObject:&unk_2860D6890 forKeyedSubscript:@"version"];
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(*(v110 + 3272) >> 1) & 1];
  [v109 setObject:v55 forKeyedSubscript:@"usingMinimumTracingMode"];

  v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v110 + 3288)];
  v57 = *(v110 + 3280);
  v58 = *(v110 + 3288);
  v59 = v58 & 0x3F;
  if (v58 > 0x3F || (v58 & 0x3F) != 0)
  {
    LODWORD(v1) = 0;
    v60 = &v57[v58 >> 6];
    do
    {
      v61 = [MEMORY[0x277CCABB0] numberWithBool:(*v57 >> v1) & 1];
      [v56 addObject:v61];

      v57 += v1 == 63;
      if (v1 == 63)
      {
        v1 = 0;
      }

      else
      {
        v1 = (v1 + 1);
      }
    }

    while (v57 != v60 || v1 != v59);
  }

  v63 = [v56 copy];
  [v109 setObject:v63 forKeyedSubscript:@"usedCoreMasks"];

  v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(v110 + 3312)];
  v65 = *(v110 + 3304);
  v66 = *(v110 + 3312);
  v67 = v66 & 0x3F;
  if (v66 > 0x3F || (v66 & 0x3F) != 0)
  {
    LODWORD(v1) = 0;
    v68 = &v65[v66 >> 6];
    do
    {
      v69 = [MEMORY[0x277CCABB0] numberWithBool:(*v65 >> v1) & 1];
      [v64 addObject:v69];

      v65 += v1 == 63;
      if (v1 == 63)
      {
        v1 = 0;
      }

      else
      {
        v1 = (v1 + 1);
      }
    }

    while (v65 != v68 || v1 != v67);
  }

  if ([v64 count])
  {
    v71 = [v64 copy];
    [v109 setObject:v71 forKeyedSubscript:@"overriddenCoreMasks"];
  }

  v72 = *(v110 + 3272);
  if (v72 >> 3)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v109 setObject:v73 forKeyedSubscript:@"numPossibleCoresPerMGPU"];

    v72 = *(v110 + 3272);
  }

  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v72 >> 8) & 1];
  [v109 setObject:v74 forKeyedSubscript:@"emitsPositionForOverriddenCores"];

  info = 0;
  mach_timebase_info(&info);
  v75 = *(v110 + 2096);
  if (!v75)
  {
    v75 = v51;
  }

  v101 = v75;
  v122[0] = @"Program Address Mappings";
  v122[1] = @"TraceId to BatchId";
  v123[0] = v106;
  v123[1] = v105;
  v122[2] = @"Source Sample Marker";
  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v110 + 32)];
  v77 = a1[4];
  v97 = v76;
  v123[2] = v76;
  v123[3] = v77;
  v122[3] = @"Frame Encoder Time Data";
  v122[4] = @"TraceId to SampleIndex";
  v123[4] = v104;
  v123[5] = v103;
  v122[5] = @"TraceId to Tile Info";
  v122[6] = @"MTLFX TraceIds";
  v78 = [*(*(a1[8] + 8) + 40) mtlfxTracingInfo];
  v96 = v78;
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v51;
  }

  v123[6] = v79;
  v122[7] = @"Frame Consistent Perf Info";
  v123[7] = *(*(a1[9] + 8) + 40);
  v123[8] = v111;
  v122[8] = @"Restore Timestamps";
  v122[9] = @"Command Buffer Timestamps";
  v123[9] = v108;
  v123[10] = v102;
  v122[10] = @"TraceId to Coalesced BatchId";
  v122[11] = @"Configuration Variables";
  v123[11] = *(v110 + 1984);
  v122[12] = @"useOverlap";
  v95 = [MEMORY[0x277CCABB0] numberWithBool:v99 & 1];
  v123[12] = v95;
  v123[13] = v107;
  v122[13] = @"Binaries";
  v122[14] = @"Streaming Counters";
  v94 = [MEMORY[0x277CCABB0] numberWithBool:*(v110 + 2220) == 1];
  v123[14] = v94;
  v122[15] = @"Kick State Trigger Options";
  v100 = [*(v110 + 2080) firstObject];
  v80 = [v100 options];
  v81 = MEMORY[0x277CBEC10];
  if (v80)
  {
    v1 = [*(v110 + 2080) firstObject];
    v82 = [v1 options];
  }

  else
  {
    v82 = MEMORY[0x277CBEC10];
  }

  v83 = *(v110 + 2072);
  if (!v83)
  {
    v83 = v81;
  }

  v123[15] = v82;
  v123[16] = v83;
  v122[16] = @"APS Options";
  v122[17] = @"Continuous Time";
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(*(a1[10] + 8) + 24), v82}];
  v123[17] = v84;
  v122[18] = @"Absolute Time";
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1[11] + 8) + 24)];
  v123[18] = v85;
  v122[19] = @"Timebase";
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.numer];
  v121[0] = v86;
  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:info.denom];
  v121[1] = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:2];
  v123[19] = v88;
  v123[20] = v109;
  v122[20] = @"apsProfilingConfig";
  v122[21] = @"Perf Info";
  v123[21] = v101;
  v122[22] = @"PState";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*v110 + 68)];
  v123[22] = v89;
  v122[23] = @"ReplayerGPUTime";
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:*(v110 + 3264)];
  v123[23] = v90;
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:24];

  if (v80)
  {
  }

  (*(*(*v110 + 32) + 16))();
LABEL_79:
  v92 = *MEMORY[0x277D85DE8];
}

void ___ZN35GTUSCSamplingStreamingManagerHelper9StreamAPSEv_block_invoke_2(uint64_t a1)
{
  v147 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 112);
  v2 = atomic_load(v1 + 2843);
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(v1 + 2844);
    if ((v3 & 1) == 0)
    {
      atomic_store(0, v1 + 2840);
      if (*(v1 + 552) != -1)
      {
        v131 = [v1[2] firstObject];
        v4 = *(v1 + 555);
        v5 = v4 == 1 || (v4 | v1[409] & 1) == 0;
        if (GTAGXPerfStateControl::IsGPUPerformanceStateInduced((v1 + 5)))
        {
          v137 = @"DisableOverlap";
          v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
          v142 = v6;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v137 count:1];
          v8 = [v1[2] firstObject];
          [v8 setOptions:v7];
        }

        else
        {
          v9 = *(*v1 + 18);
          if (v9)
          {
            GTAGXPerfStateControl::EnableConsistentGPUPerfState((v1 + 5), v9);
            v10 = GTApplePMPPerfStateControl::EnableConsistentPerfState((v1 + 8), *(*v1 + 18) - 1);
            v11 = v1[262];
            v1[262] = v10;

            v137 = @"DisableOverlap";
            v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
            v142 = v6;
            v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v137 count:1];
            v8 = [v1[2] firstObject];
            [v8 setOptions:v7];
          }

          else
          {
            v12 = GTApplePMPPerfStateControl::EnableConsistentPerfState((v1 + 8), 1u);
            v13 = v1[262];
            v1[262] = v12;

            v137 = @"DisableOverlap";
            v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
            v142 = v6;
            v138 = @"LockGPUPerfState";
            v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*v1 + 17)];
            v143 = v7;
            v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v137 count:2];
            v14 = [v1[2] firstObject];
            [v14 setOptions:v8];
          }
        }

        v15 = [v1[3] objectAtIndexedSubscript:*(v1 + 552)];
        [v15 setOptions:v1[259]];
        [v15 requestTriggers:v1[260] firstErrorIndex:0];
        __lk.__m_ = 0;
        v16 = [v1[251] objectAtIndexedSubscript:*(v1 + 552)];
        v17 = [v15 requestCounters:v16 firstErrorIndex:&__lk];

        if (v17)
        {
          v18 = [v15 setEnabled:1];

          if (v18)
          {
            v19 = *(v1 + 408);
            v20 = [v1[3] count];
            if (v20)
            {
              v21 = 0;
              v22 = 1;
              do
              {
                v23 = [v1[251] objectAtIndexedSubscript:v21];
                [v23 count];

                v21 = v22;
              }

              while (v20 > v22++);
            }

            v25 = 0;
            v26 = (fmax(v19 + v19, 1.0) * 10240.0);
            while ([v1[3] count] > v25)
            {
              v27 = [v1[251] objectAtIndexedSubscript:v25];
              if ([v27 count])
              {
                v28 = v25 == *(v1 + 552);

                if (!v28)
                {
                  v15 = [v1[3] objectAtIndexedSubscript:v25];
                  v136 = @"RingBufferSizeInKB";
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
                  __lk.__m_ = v29;
                  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&__lk forKeys:&v136 count:1];
                  [v15 setOptions:v30];

                  v31 = [v15 name];
                  v32 = [v31 isEqualToString:@"Firmware"];
                  v33 = 257;
                  if (v32)
                  {
                    v33 = 258;
                  }

                  v34 = v1[v33];

                  [v15 requestTriggers:v34 firstErrorIndex:0];
                  v135 = 0;
                  v35 = [v1[251] objectAtIndexedSubscript:v25];
                  v36 = [v15 requestCounters:v35 firstErrorIndex:&v135];

                  if ((v36 & 1) == 0)
                  {

                    goto LABEL_29;
                  }

                  v37 = [v15 setEnabled:1];

                  if (!v37)
                  {
                    break;
                  }
                }
              }

              else
              {
              }

              ++v25;
            }
          }
        }

        else
        {
LABEL_29:
        }
      }

      v38 = *(v1 + 555);
      v39 = @"T";
      if (!v38)
      {
        v39 = @"P";
      }

      if (v38 == 1)
      {
        v40 = @"C";
      }

      else
      {
        v40 = v39;
      }

      v132 = [@"/tmp/com.apple.gputools.profiling" stringByAppendingPathComponent:v40];
      if (*(v1 + 552) != -1)
      {
        v41 = [MEMORY[0x277CCAA00] defaultManager];
        [v41 removeItemAtPath:v132 error:0];
        [v41 createDirectoryAtPath:v132 withIntermediateDirectories:1 attributes:0 error:0];
        v42 = [v1[3] objectAtIndexedSubscript:*(v1 + 552)];
        v43 = [v42 ringBufferNum];

        v44 = v41;
        if (v43)
        {
          v45 = [v1[3] objectAtIndexedSubscript:*(v1 + 552)];
          v46 = [v45 ringBufferNum];

          v44 = v41;
          if (v46)
          {
            v47 = 0;
            do
            {
              v48 = v1[403];
              v49 = v1[404];
              if (v48 >= v49)
              {
                v51 = v1[402];
                v52 = (v48 - v51) >> 5;
                v53 = v52 + 1;
                if ((v52 + 1) >> 59)
                {
                  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
                }

                v54 = v49 - v51;
                if (v54 >> 4 > v53)
                {
                  v53 = v54 >> 4;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v55 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  if (!(v55 >> 59))
                  {
                    operator new();
                  }

                  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
                }

                v56 = (32 * v52);
                *v56 = 0u;
                v56[1] = 0u;
                v57 = &v56[-2 * ((v48 - v51) >> 5)];
                if (v51 != v48)
                {
                  v58 = v51;
                  v59 = &v56[-2 * ((v48 - v51) >> 5)];
                  do
                  {
                    v60 = *v58;
                    *v58 = 0;
                    *v59 = v60;
                    v61 = *(v58 + 1);
                    *(v59 + 3) = v58[3];
                    *(v59 + 8) = v61;
                    v58 += 4;
                    v59 += 2;
                  }

                  while (v58 != v48);
                  do
                  {

                    v51 += 4;
                  }

                  while (v51 != v48);
                  v51 = v1[402];
                }

                v1[402] = v57;
                v50 = (v56 + 2);
                v1[403] = (v56 + 2);
                v1[404] = 0;
                if (v51)
                {
                  operator delete(v51);
                }
              }

              else
              {
                v50 = (v48 + 32);
                *v48 = 0u;
                *(v48 + 1) = 0u;
              }

              v1[403] = v50;
              v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"f_%u.raw", v47, v125, v126, v127];
              v63 = [v132 stringByAppendingPathComponent:v62];
              v64 = *(v50 - 4);
              *(v50 - 4) = v63;

              *(v50 - 2) = *(v1 + 552);
              *(v50 - 1) = v47;
              v44 = v41;
              v65 = fopen([(GTMTLReplayController *)*(v50 - 4) UTF8String], "wb");
              *(v50 - 3) = v65;
              if (!v65)
              {
                v68 = "";
                if (g_runningInCI)
                {
                  v68 = "#CI_ERROR# ";
                }

                v126 = 7040;
                v127 = *(v50 - 4);
                v125 = "void GTUSCSamplingStreamingManagerHelper::SetupAPSDataFiles(NSString *__strong)";
                GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "SetupAPSDataFiles", 7040, 1, "%s%s %u: Error, fail to open file %@\n", v66, v67, v68);
              }

              v47 = (v47 + 1);
            }

            while (v47 != v46);
          }
        }
      }

      GTMTLReplayController_prePlayForProfiling(**v1);
      v69 = a1;
      v70 = *(*(a1 + 40) + 8);
      v71 = *(*(a1 + 48) + 8);
      v72 = *(*(a1 + 56) + 8);
      mach_get_times();
      v73 = **v1;
      v128 = *(v73 + 1);
      atomic_store(0, v1 + 707);
      [*(v69 + 32) mapShaderSampleBufferWithBuffer:0 capacity:0 size:0];
      v130 = [*(v73 + 1) defaultCommandQueue];
      v74 = objc_autoreleasePoolPush();
      v143 = v73;
      LOBYTE(v144) = 0;
      v142 = [g_commandBufferDescriptor errorOptions];
      [g_commandBufferDescriptor setErrorOptions:0];
      if (*(v1 + 555) == 1)
      {
        DisableComputeEncoderCoalescing(**v1, 1);
      }

      v75 = *(*(a1 + 64) + 8);
      v76 = *(*(a1 + 72) + 8);
      v77 = *(*(a1 + 80) + 8);
      v78 = *(*(*(a1 + 88) + 8) + 40);
      GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling();
      if (*(v1 + 555) == 1)
      {
        DisableComputeEncoderCoalescing(**v1, 0);
      }

      [v130 finish];
      ScopedReplayConfiguration::~ScopedReplayConfiguration(&v142);
      objc_autoreleasePoolPop(v74);
      [*(a1 + 32) unmapShaderSampleBuffer];
      usleep(0x7530u);
      atomic_store(1u, v1 + 2840);
      atomic_fetch_add(v1 + 709, 1u);
      v79 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel((v1 + 5), 0);
      v129 = v79;
      if (v79)
      {
        [*(*(*(a1 + 96) + 8) + 40) setDictionary:v79];
      }

      GTUSCSamplingStreamingManagerHelper::DrainAllSourceBuffers(v1[307], v1[308]);
      __lk.__m_ = (v1 + 362);
      __lk.__owns_ = 1;
      std::mutex::lock((v1 + 362));
      while (1)
      {
        v80 = *(v1 + 549);
        v81 = atomic_load(v1 + 707);
        if (v80 == v81)
        {
          break;
        }

        std::condition_variable::wait((v1 + 356), &__lk);
      }

      atomic_store(0, v1 + 2841);
      v82 = [v1[2] firstObject];
      [v82 stopSampling];

      GTAGXPerfStateControl::DisableConsistentGPUPerfState((v1 + 5));
      GTApplePMPPerfStateControl::DisableConsistentPerfState((v1 + 8));
      dispatch_semaphore_signal(v1[317]);
      dispatch_semaphore_wait(v1[318], 0xFFFFFFFFFFFFFFFFLL);
      v83 = v1[402];
      v84 = v1[403];
      if (v83 == v84)
      {
        *(*(*(a1 + 104) + 8) + 24) = 0;
      }

      else
      {
        v85 = 0;
        v86 = a1;
        do
        {
          v87 = v83[1];
          if (v87)
          {
            fseek(v87, 0, 2);
            v83[2] = MEMORY[0x253033850](v83[1]);
            fclose(v83[1]);
            if (v85)
            {
              v85 = 1;
            }

            else
            {
              v88 = fopen([*v83 UTF8String], "rb");
              v89 = v83[2];
              if (v89 <= 0x200000)
              {
                if (v89 < 0x1000)
                {
LABEL_85:
                  v85 = 0;
                }

                else
                {
                  v90 = 0;
                  v91 = v89 >> 12;
                  v92 = 1;
                  v93 = v89 >> 12;
                  v85 = 1;
                  while (1)
                  {
                    fseek(v88, v90, 0);
                    MEMORY[0x253033850](v88);
                    v94 = fgetc(v88);
                    if (v94 != 15 && v94 != -1)
                    {
                      break;
                    }

                    v85 = v92++ < v91;
                    v90 += 4096;
                    if (!--v93)
                    {
                      goto LABEL_85;
                    }
                  }
                }

                fseek(v88, 0, 2);
              }

              else
              {
                v85 = 1;
              }

              fclose(v88);
            }

            v83[1] = 0;
            v86 = a1;
          }

          v83 += 4;
        }

        while (v83 != v84);
        *(*(*(v86 + 104) + 8) + 24) = v85;
        if (v85)
        {
          v95 = v1[405];
          v1[406] = v95;
          v96 = (v1[403] - v1[402]) >> 5;
          if (v96 > v1[407] - v95)
          {
            if (!(v96 >> 61))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v96);
            }

LABEL_120:
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v97 = [MEMORY[0x277CCAA00] defaultManager];
          v98 = v1[402];
          v99 = v1[403];
          while (v98 != v99)
          {
            if ([v97 fileExistsAtPath:*v98] && v98[2])
            {
              v100 = [v1[3] objectAtIndexedSubscript:*(v98 + 6)];
              v137 = @"APSTraceDataFile";
              v142 = *v98;
              v138 = @"Source";
              v101 = [v100 name];
              v143 = v101;
              v139 = @"SourceIndex";
              v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 6)];
              v144 = v102;
              v140 = @"RingBufferIndex";
              v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 7)];
              v145 = v103;
              v141 = @"Serial";
              ++GTUSCSamplingStreamingManagerHelper::StreamAPSDataFiles(void)::serial;
              v104 = [MEMORY[0x277CCABB0] numberWithInt:?];
              v146 = v104;
              v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v137 count:5];

              v106 = v98[2];
              v107 = v1[406];
              v108 = v1[407];
              if (v107 >= v108)
              {
                v110 = v1[405];
                v111 = v107 - v110;
                v112 = (v107 - v110) >> 3;
                v113 = v112 + 1;
                if ((v112 + 1) >> 61)
                {
                  goto LABEL_120;
                }

                v114 = v108 - v110;
                if (v114 >> 2 > v113)
                {
                  v113 = v114 >> 2;
                }

                if (v114 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v115 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v115 = v113;
                }

                if (v115)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v115);
                }

                v116 = (v107 - v110) >> 3;
                v117 = (8 * v112);
                v118 = (8 * v112 - 8 * v116);
                *v117 = v106;
                v109 = (v117 + 1);
                memcpy(v118, v110, v111);
                v119 = v1[405];
                v1[405] = v118;
                v1[406] = v109;
                v1[407] = 0;
                if (v119)
                {
                  operator delete(v119);
                }
              }

              else
              {
                *v107 = v106;
                v109 = (v107 + 8);
              }

              v1[406] = v109;
              (*((*v1)[4] + 2))();
              [v97 removeItemAtPath:*v98 error:0];
            }

            v98 += 4;
          }

          v135 = @"Post Processing Frame Marker";
          v120 = MEMORY[0x277CCABB0];
          v121 = atomic_load(v1 + 709);
          v122 = [v120 numberWithUnsignedInt:v121];
          v136 = v122;
          v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];

          (*((*v1)[4] + 2))();
        }
      }

      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
      }
    }
  }

  v124 = *MEMORY[0x277D85DE8];
}

intptr_t ___ZN35GTUSCSamplingStreamingManagerHelper9StreamAPSEv_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(v1 + 16) firstObject];
  [v2 startSampling];

  result = GTUSCSamplingStreamingManagerHelper::WaitForPreSampling(v1);
  atomic_store(1u, (v1 + 2841));
  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StreamAPS(void)::$_2>>(uint64_t *a1)
{
  v22 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v22[1];
  do
  {
    v5 = atomic_load((v4 + 2843));
    if (v5)
    {
      break;
    }

    v6 = atomic_load((v4 + 2844));
    if (v6)
    {
      break;
    }

    v7 = *(v4 + 2536);
    v8 = dispatch_time(0, 250000);
    v9 = dispatch_semaphore_wait(v7, v8);
    v10 = *(v4 + 3224);
    v11 = *(v4 + 3216);
    if (v10 != v11)
    {
      v12 = 0;
      do
      {
        v13 = v11 + 32 * v12;
        v14 = *(v13 + 8);
        if (v14)
        {
          v15 = *(v4 + 2408) + 48 * *(v13 + 28);
          os_unfair_lock_lock((v15 + 16));
          if (v9)
          {
            v16 = *(v15 + 8);
          }

          else
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 32) - *(v15 + 24)) >> 3);
          }

          os_unfair_lock_unlock((v15 + 16));
          v17 = *v15;
          if (v16 > *v15)
          {
            v18 = v16 - *v15 == 0;
            *v15;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            do
            {
              v19 = *(v15 + 24) + 24 * v17;
              v20 = fileno(v14);
              write(v20, *v19, *(v19 + 8));
              v17 = *v15 + 1;
              *v15 = v17;
              if (*v19)
              {
                free(*v19);
                *v19 = 0;
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                v17 = *v15;
              }
            }

            while (v17 < v16);
            if (!v9)
            {
              *(v15 + 32) = *(v15 + 24);
              *v15 = 0;
              *(v15 + 8) = 0;
            }
          }

          v10 = *(v4 + 3224);
          v11 = *(v4 + 3216);
        }

        ++v12;
      }

      while (v12 < (v10 - v11) >> 5);
    }
  }

  while (v9);
  dispatch_semaphore_signal(*(v4 + 2544));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](&v22);
  return 0;
}

void sub_24D88F520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StreamAPS(void)::$_1>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  GTUSCSamplingStreamingManagerHelper::PostProcessRawData(v5[1], *(v5 + 4), *(v5 + 5));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void sub_24D88F594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StreamAPS(void)::$_0>>(uint64_t *a1)
{
  v37 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v37[1];
  if (*(v4 + 2208) >= 1)
  {
    v5 = *(v37 + 4);
    v6 = *(v37 + 5);
    if (v5)
    {
      GTUSCSamplingStreamingManagerHelper::PollAndDrainSourceRingBuffer(v37[1], v5, *(v37 + 5));
    }

    else
    {
      v7 = [*(v4 + 24) objectAtIndexedSubscript:?];
      v34 = (v4 + 2832);
      atomic_fetch_add((v4 + 2832), 1u);
      v8 = atomic_load((v4 + 2843));
      if ((v8 & 1) == 0)
      {
        v9 = v6 + 1;
        v35 = v6;
        do
        {
          v10 = atomic_load((v4 + 2844));
          if (v10)
          {
            break;
          }

          v11 = *(**(v4 + 2456) + 8 * v6);
          v12 = dispatch_time(0, 500000);
          v36 = dispatch_semaphore_wait(v11, v12);
          v13 = atomic_load((v4 + 2841));
          if (v13)
          {
            v14 = *(v4 + 3352);
            v15 = (v14 * v6);
            v16 = *(v4 + 3216);
            v17 = v14 * v9;
            if (v17 >= ((*(v4 + 3224) - v16) >> 5))
            {
              v17 = (*(v4 + 3224) - v16) >> 5;
            }

            if (v15 < v17)
            {
              v18 = 48 * v15;
              v19 = (32 * v15) | 0x1C;
              do
              {
                if ([v7 isEnabled])
                {
                  v39 = 0;
                  memset(v38, 0, sizeof(v38));
                  if ([v7 ringBufferInfoAtIndex:*(v16 + v19) base:&v39 size:&v38[2] dataOffset:&v38[1] dataSize:v38])
                  {
                    v20 = v38[0];
                    if (v38[0] >> 13 || (v21 = atomic_load((v4 + 2840)), (v21 & 1) != 0) && (v20 = v38[0]) != 0)
                    {
                      v22 = *(v4 + 2408);
                      v23 = v39;
                      v24 = (v38[1] + v20 - v38[2]);
                      if (v38[1] + v20 <= v38[2])
                      {
                        DynamicBuffer::AddBuffer2((v22 + v18), &v39[v38[1]], v20);
                      }

                      else
                      {
                        DynamicBuffer::AddBuffer2((v22 + v18), &v39[v38[1]], (v38[2] - v38[1]));
                        DynamicBuffer::AddBuffer2((v22 + v18), v23, v24);
                      }

                      if ([v7 drainRingBufferAtIndex:*(v16 + v19) dataSize:v38[0]] || !v38[0])
                      {
                        atomic_fetch_add((v4 + 2820), 1u);
                        atomic_fetch_add((v4 + 2824), 1u);
                      }
                    }
                  }
                }

                ++v15;
                v16 = *(v4 + 3216);
                v25 = (*(v4 + 3224) - v16) >> 5;
                v26 = *(v4 + 3352) * v9;
                if (v26 >= v25)
                {
                  v25 = v25;
                }

                else
                {
                  v25 = v26;
                }

                v18 += 48;
                v19 += 32;
              }

              while (v15 < v25);
            }

            v6 = v35;
            if (!v36 || (v27 = atomic_load((v4 + 2840)), (v27 & 1) != 0))
            {
              v29 = (v4 + 2828);
              v30 = 3352;
              if (*(v4 + 3356) == v35)
              {
                v30 = 3360;
              }

              atomic_fetch_add(v29, *(v4 + v30));
              v31 = atomic_load(v29);
              if (v31 == *(v4 + 2196))
              {
                std::condition_variable::notify_all((v4 + 2848));
              }

              break;
            }
          }

          v28 = atomic_load((v4 + 2843));
        }

        while ((v28 & 1) == 0);
      }

      atomic_fetch_add(v34, 0xFFFFFFFF);
      if (!atomic_load(v34))
      {
        std::condition_variable::notify_all((v4 + 3072));
      }
    }
  }

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](&v37);
  return 0;
}

void sub_24D88F878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void GTUSCSamplingStreamingManagerHelper::CleanupForAPSStreaming(GTUSCSamplingStreamingManagerHelper *this)
{
  atomic_store(0, byte_27F09C800);
  atomic_store(0, &byte_27F09C800[1]);
  atomic_store(0, &unk_27F09C803);
  *(&xmmword_27F09C468 + 1) = 0;
  dword_27F09C57C = 0;
  qword_27F09C580 = 1;
  v2 = *(&xmmword_27F09C638 + 1);
  v1 = xmmword_27F09C638;
  while (v2 != v1)
  {
    v2 -= 3;
    v17 = v2;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *(&xmmword_27F09C638 + 1) = v1;
  v3 = qword_27F09C620;
  v4 = xmmword_27F09C628;
  while (v4 != v3)
  {
    v4 -= 3;
    v17 = v4;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *&xmmword_27F09C628 = v3;
  v6 = *(&xmmword_27F09C668 + 1);
  v5 = xmmword_27F09C668;
  while (v6 != v5)
  {
    v6 -= 3;
    v17 = v6;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *(&xmmword_27F09C668 + 1) = v5;
  v7 = qword_27F09C680;
  v8 = xmmword_27F09C688;
  while (v8 != v7)
  {
    v8 -= 3;
    v17 = v8;
    std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *&xmmword_27F09C688 = v7;
  v10 = *(&xmmword_27F09C698 + 1);
  v9 = xmmword_27F09C698;
  while (v10 != v9)
  {
    v10 -= 3;
    v17 = v10;
    std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v17);
  }

  *(&xmmword_27F09C698 + 1) = v9;
  v11 = qword_27F09C6B0;
  for (i = xmmword_27F09C6B8; i != v11; i -= 8)
  {
    v13 = *(i - 8);
  }

  *&xmmword_27F09C6B8 = v11;
  v14 = qword_27F09C980;
  v15 = *(&xmmword_27F09C970 + 1);
  while (v14 != v15)
  {
    v16 = *(v14 - 32);
    v14 -= 32;
  }

  qword_27F09C980 = v15;
  atomic_store(0, &xmmword_27F09C7E8 + 1);
  atomic_store(0, &xmmword_27F09C7E8 + 2);
}

void GTUSCSamplingStreamingManagerHelper::InitRDELimiterCounters(GTUSCSamplingStreamingManagerHelper *this)
{
  v113 = *MEMORY[0x277D85DE8];
  v1 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) objectForKeyedSubscript:@"profileCounters"];
  v89 = [v1 mutableCopy];

  v2 = MEMORY[0x277CBEB98];
  v3 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) objectForKeyedSubscript:@"profileCounters32"];
  v86 = [v2 setWithArray:v3];

  if (xmmword_27F09C594)
  {
    v4 = 0;
  }

  else
  {
    v4 = 6;
  }

  v108 = 0;
  v107 = 0u;
  if (xmmword_27F09C594 && xmmword_27F09C768 != qword_27F09C760)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((xmmword_27F09C768 - qword_27F09C760) >> 3);
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v5);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  memset(v105, 0, sizeof(v105));
  v106 = 1065353216;
  v6 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[v4 + 163];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[v4 + 163] + 1) - *v6) >> 3)];
  v8 = xmmword_27F09C4C0;
  *&xmmword_27F09C4C0 = v7;

  v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v89, "count")}];
  v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v89, "count")}];
  v10 = *v6;
  v11 = *(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[v4 + 163] + 1);
  if (*v6 != v11)
  {
    do
    {
      v12 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(*&v105[0], *(&v105[0] + 1), v10);
      v13 = MEMORY[0x277D0AF28];
      v14 = *(v10 + 23);
      v15 = v10;
      if (v12)
      {
        if (v14 < 0)
        {
          v15 = *v10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v15, v86}];
        v17 = [v13 selectWithName:v16 options:&unk_2860D5DE0];
        [v92 addObject:v17];
      }

      else
      {
        if (v14 < 0)
        {
          v15 = *v10;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v15, v86}];
        v17 = [v13 selectWithName:v16 options:&unk_2860D5E08];
        [v92 addObject:v17];
      }

      v18 = v10;
      if (*(v10 + 23) < 0)
      {
        v18 = *v10;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
      [v9 addObject:v19];

      v10 += 24;
    }

    while (v10 != v11);
  }

  if (xmmword_27F09C594 == 1)
  {
    v21 = *(&xmmword_27F09C748 + 1);
    for (i = xmmword_27F09C748; i != v21; i += 3)
    {
      v22 = i;
      if (*(i + 23) < 0)
      {
        v22 = *i;
      }

      v23 = MEMORY[0x277D0AF28];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v22, v86}];
      v25 = [v23 selectWithName:v24 options:&unk_2860D5E30];
      [v92 addObject:v25];

      v26 = i;
      if (*(i + 23) < 0)
      {
        v26 = *i;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
      [v9 addObject:v27];
    }
  }

  v28 = qword_27F09C790;
  for (j = xmmword_27F09C798; v28 != j; v28 += 24)
  {
    v30 = v28;
    if (*(v28 + 23) < 0)
    {
      v30 = *v28;
    }

    v31 = MEMORY[0x277D0AF28];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v30, v86}];
    v33 = [v31 selectWithName:v32 options:&unk_2860D5E58];
    [v92 addObject:v33];

    v34 = v28;
    if (*(v28 + 23) < 0)
    {
      v34 = *v28;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
    [v9 addObject:v35];
  }

  v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{0xAAAAAAAAAAAAAAABLL * ((*(v6 + 1) - *v6) >> 3), v86}];
  for (k = 0; k < [*(&xmmword_27F09BCF8 + 1) count]; ++k)
  {
    v93 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:?];
    v37 = [v93 availableCounters];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v101 objects:v112 count:16];
    if (v39)
    {
      v40 = *v102;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v102 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v101 + 1) + 8 * m);
          v43 = [v42 name];
          v44 = [v9 containsObject:v43];

          if (v44)
          {
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "counterValueType")}];
            v46 = [v42 name];
            [v36 setObject:v45 forKeyedSubscript:v46];
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v101 objects:v112 count:16];
      }

      while (v39);
    }
  }

  v47 = qword_27F09C4B8;
  qword_27F09C4B8 = 0;

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_2860D5A20, "count")}];
  v49 = qword_27F09C4B0;
  qword_27F09C4B0 = v48;

  for (n = 0; n != 7; ++n)
  {
    v51 = qword_27F09C4B0;
    v52 = MEMORY[0x277D0AF28];
    v53 = [&unk_2860D5A20 objectAtIndexedSubscript:n];
    v54 = [v52 selectWithName:v53 options:0];
    [v51 addObject:v54];
  }

  v88 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(v92);
  v55 = [v88 objectForKeyedSubscript:@"passList"];
  v94 = [v55 objectAtIndexedSubscript:0];

  v90 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v92, "count")}];
  v91 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v88, "count")}];
  for (ii = 0; ii < [v94 count]; ++ii)
  {
    v96 = [v94 objectAtIndexedSubscript:ii];
    if ([v96 count])
    {
      v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v96, "count")}];
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v58 = v96;
      v59 = [v58 countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (v59)
      {
        v60 = *v98;
        do
        {
          for (jj = 0; jj != v59; ++jj)
          {
            if (*v98 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v62 = [*(*(&v97 + 1) + 8 * jj) name];
            [v57 addObject:v62];
          }

          v59 = [v58 countByEnumeratingWithState:&v97 objects:v111 count:16];
        }

        while (v59);
      }

      v63 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:ii];
      v64 = [v63 name];
      [v91 setObject:v57 forKeyedSubscript:v64];

      [v90 addObjectsFromArray:v57];
      v65 = MEMORY[0x277CBEB18];
      if (ii == qword_27F09C588)
      {
        v66 = objc_opt_new();
      }

      else
      {
        v68 = [qword_27F09C4B0 copy];
        v66 = [v65 arrayWithArray:v68];
      }

      [v66 addObjectsFromArray:v58];
      [xmmword_27F09C4C0 addObject:v66];
    }

    else
    {
      v67 = xmmword_27F09C4C0;
      v57 = objc_opt_new();
      [v67 addObject:v57];
    }
  }

  v69 = v90;

  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v69 forKeyedSubscript:@"limiter sample counters"];
  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v36 forKeyedSubscript:@"Counter Info"];
  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v91 forKeyedSubscript:@"Limiter Counter List Map"];
  v70 = [MEMORY[0x277CCABB0] numberWithBool:byte_27F09C7D0];
  [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v70 forKeyedSubscript:@"Uarch Enabled"];

  if (xmmword_27F09C594 == 2)
  {
    v72 = GTAGXProfilingSupportHelper::RemappedCSV(v71);
    if (v72)
    {
      [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40) setObject:v72 forKeyedSubscript:@"CSV"];
    }
  }

  v73 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 40);
  (*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32) + 16))();
  v74 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v75 = qword_27F09C4F8;
  qword_27F09C4F8 = v74;

  v76 = qword_27F09C4F8;
  v77 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v76 addObject:v77];

  v78 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v79 = qword_27F09C4F0;
  qword_27F09C4F0 = v78;

  v80 = qword_27F09C4F0;
  v81 = MEMORY[0x277D0AF30];
  v109 = @"Period";
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:240];
  v110 = v82;
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
  v84 = [v81 selectWithName:@"TimerNClock" options:v83];
  [v80 addObject:v84];

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v105);
  *&v105[0] = &v107;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v105);

  v85 = *MEMORY[0x277D85DE8];
}

void sub_24D89059C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a33);
  a33 = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a33);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  if (!a2)
  {
    return 0;
  }

  v10 = v9;
  v11 = vcnt_s8(a2);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= a2)
    {
      v13 = v9 % a2;
    }
  }

  else
  {
    v13 = (a2 - 1) & v9;
  }

  v14 = *(a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  v15 = *v14;
  if (*v14)
  {
    do
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a3))
        {
          return v15;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v16 >= a2)
          {
            v16 %= a2;
          }
        }

        else
        {
          v16 &= a2 - 1;
        }

        if (v16 != v13)
        {
          return 0;
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  return v15;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(__int128 *a1, __int128 *a2, std::string *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        this->__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&this->__r_.__value_.__l.__data_ = v6;
      }

      v5 = (v5 + 24);
      ++this;
    }

    while (v5 != a2);
  }

  return this;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

id GTUSCSamplingStreamingManagerHelper::GatherFrameMiscEncoderPostProcessedData(char a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v25 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = MEMORY[0x277CCA8C8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke;
  v33[3] = &unk_2796573E0;
  v35 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v36 = a4;
  v37 = a1;
  v12 = v10;
  v34 = v12;
  v13 = [v11 blockOperationWithBlock:v33];
  v14 = v13;
  if (v9)
  {
    [v13 addDependency:{v9, v23, v25}];
  }

  [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:{v14, v23}];
  v15 = objc_opt_new();
  if (dword_27F09C54C && dword_27F09C548)
  {
    v16 = MEMORY[0x277CCA8C8];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_2;
    v30[3] = &unk_279658AD8;
    v32 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
    v31 = v25;
    v17 = [v16 blockOperationWithBlock:v30];
    [v17 addDependency:v14];
    [v15 addDependency:v17];
    [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v17];
  }

  v18 = MEMORY[0x277CCA8C8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_3;
  v26[3] = &unk_279658B00;
  v29 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v19 = v12;
  v27 = v19;
  v20 = v24;
  v28 = v20;
  v21 = [v18 blockOperationWithBlock:v26];
  [v21 addDependency:v14];
  [v15 addDependency:v21];
  [*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) + 8) addOperation:v21];
  [*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) + 8) addOperation:v15];

  return v15;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  GTMTLReplayController_prePlayForProfiling(**v2);
  GTUSCSamplingStreamingManagerHelper::SetupSourceForFrameTime(v2, *(*v2 + 68), 0);
  v62 = v2;
  v3 = [*(v2 + 16) firstObject];
  v4 = [v3 startSampling];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v60 = *(a1 + 48);
    v63 = *(a1 + 56);
    v6 = **v62;
    v66[1] = v6;
    v67 = 0;
    v66[0] = [g_commandBufferDescriptor errorOptions];
    [g_commandBufferDescriptor setErrorOptions:0];
    v7 = *(**v62 + 8);
    v8 = ***v62;
    v55 = v8[16];
    v56 = v8[15];
    v9 = [v7 defaultDevice];
    v10 = [v9 newEvent];

    v11 = [v7 defaultCommandQueue];
    v12 = [v11 commandBuffer];
    v50 = v5;
    v52 = a1;

    v57 = v10;
    [v12 encodeSignalEvent:v10 value:{GTUSCSamplingStreamingManagerHelper::ReplayFrameWithMiscEncoderSyncEvents(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, BOOL)::signalCounter}];
    [v12 commit];
    v54 = v12;
    v13 = &unk_27F09B000;
    if (v8[14] + v8[13] > *(**v62 + 22560))
    {
      v59 = 0;
      v64 = 0;
      v14 = 0;
      v15 = 0;
      v61 = v7;
      do
      {
        context = objc_autoreleasePoolPush();
        v16 = *(v8[16] + 24) + (*(v6 + 22560) << 6);
        ConstructorType = GTFenum_getConstructorType(*(v16 + 8));
        if (ConstructorType == 25)
        {
          GTMTLReplayController_restoreCommandBuffer(v6, v16);
          v59 = *(GTTraceFunc_argumentBytesWithMap(v16, *(v16 + 13), v8[2]) + 1);
          ConstructorType = GTFenum_getConstructorType(*(v16 + 8));
        }

        if ((ConstructorType | 4) == 0x15)
        {
          v18 = [v7 commandBufferForKey:v59];
          [v18 encodeWaitForEvent:v57 value:v13[409]++];
          [v18 encodeSignalEvent:v57 value:?];
          v64 = *(GTTraceFunc_argumentBytesWithMap(v16, *(v16 + 13), v8[2]) + 1);
          if (v63)
          {
            InclusiveRange = GroupBuilder_findInclusiveRange(*(v56 + 12), *(v56 + 24), *(v6 + 22560));
            v20 = *InclusiveRange;
            v21 = InclusiveRange[1];
            if (v20 >= v21)
            {
              v15 = v14;
            }

            else
            {
              v22 = (*(v55 + 24) + (v20 << 6) + 8);
              v15 = v14;
              do
              {
                v24 = *v22;
                v22 += 16;
                v23 = v24;
                if (GTFenum_isSampledBlitCall(v24) || GTFenum_isSampledBlitCallAGX(v23))
                {
                  ++v15;
                }

                ++v20;
                v14 = v15;
              }

              while (v20 < v21);
            }
          }

          v25 = v15;
          v7 = v61;
          v13 = &unk_27F09B000;
        }

        else
        {
          v25 = v15;
        }

        GTMTLReplayController_updateCommandEncoder(v6, v16);
        if (v63)
        {
          v26 = *(v16 + 8);
          if (GTFenum_isSampledBlitCall(v26) || GTFenum_isSampledBlitCallAGX(v26))
          {
            v15 = v25 - 1;
            v13 = &unk_27F09B000;
            if (!v25 || v14 == v25)
            {
              goto LABEL_29;
            }

            v27 = [v7 blitCommandEncoderForKey:v64];
            [v27 endEncoding];
            v28 = [v7 commandBufferForKey:v59];
            [v28 encodeWaitForEvent:v57 value:{GTUSCSamplingStreamingManagerHelper::ReplayFrameWithMiscEncoderSyncEvents(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, BOOL)::signalCounter++}];
            [v28 encodeSignalEvent:v57 value:?];
            v29 = [v28 blitCommandEncoder];
            if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v60, [v29 globalTraceObjectID]))
            {
              [v29 endEncoding];
              v30 = [v28 computeCommandEncoder];
              [v30 endEncoding];
              v31 = [v28 blitCommandEncoder];

              v29 = v31;
            }

            [v61 setBlitCommandEncoder:v29 forKey:{v64, v50, v52}];
            v32 = [v61 globalTraceIdForEncoder:v64 ofType:0];
            memset(v68, 0, sizeof(v68));
            DWORD2(v68[0]) = -16354;
            GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v62, v60, v68, v32, v29, v60[3], 0, 0);

            v7 = v61;
          }

          else
          {
            v15 = v25;
          }

          v13 = &unk_27F09B000;
        }

        else
        {
          v15 = v25;
        }

LABEL_29:
        GTMTLReplayController_defaultDispatchFunction(v6, v16);
        v33 = *(v16 + 8);
        if (GTFenum_getConstructorType(v33) == 21)
        {
          v34 = [v7 globalTraceIdForEncoder:v64 ofType:0];
          v35 = [v7 blitCommandEncoderForKey:v64];
          if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v60, v34))
          {
            [v35 endEncoding];
            v36 = [v7 commandBufferForKey:{GTTraceFunc_targetContext(v16, v8[2])}];
            v37 = [v36 computeCommandEncoder];
            [v37 endEncoding];
            GTMTLReplayController_defaultDispatchFunction(v6, v16);
            v34 = [v61 globalTraceIdForEncoder:v64 ofType:0];

            v7 = v61;
          }

          GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v62, v60, v16, v34, v35, v60[3], 0, 0);

          v33 = *(v16 + 8);
        }

        if ((v63 & 1) == 0 && v33 == -16376)
        {
          v38 = [v7 commandBufferForKey:v59];
          [v38 encodeWaitForEvent:v57 value:v13[409]++];
          [v38 encodeSignalEvent:v57 value:?];

          v33 = *(v16 + 8);
        }

        if (GTFenum_getConstructorType(v33) == 17)
        {
          v39 = [v7 globalTraceIdForEncoder:v64 ofType:0];
          v40 = [v7 accelerationStructureCommandEncoderForKey:v64];
          if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(v60, v39))
          {
            [v40 endEncoding];
            v41 = [v7 commandBufferForKey:{GTTraceFunc_targetContext(v16, v8[2])}];
            v42 = [v41 computeCommandEncoder];
            [v42 endEncoding];
            GTMTLReplayController_defaultDispatchFunction(v6, v16);
            v39 = [v61 globalTraceIdForEncoder:v64 ofType:0];

            v7 = v61;
          }

          GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v62, v60, v16, v39, v40, v60[3], 0, 0);

          v33 = *(v16 + 8);
        }

        if (v33 == -15642)
        {
          v43 = [v7 commandBufferForKey:v59];
          [v43 encodeWaitForEvent:v57 value:v13[409]++];
          [v43 encodeSignalEvent:v57 value:?];
        }

        objc_autoreleasePoolPop(context);
        v44 = **v62;
        v45 = (*(v44 + 22560) + 1);
        *(v44 + 22560) = v45;
      }

      while (v8[14] + v8[13] > v45);
    }

    v46 = [*(v6 + 8) defaultCommandQueue];
    [v46 finish];

    ScopedReplayConfiguration::~ScopedReplayConfiguration(v66);
    v47 = GTUSCSamplingStreamingManagerHelper::DrainRawFrameData(v62);
    if (v47)
    {
      [*(v53 + 32) setArray:v47];
    }

    objc_autoreleasePoolPop(v51);
    v65 = [*(v62 + 2) firstObject];
    [v65 stopSampling];
    v48 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v49 = *MEMORY[0x277D85DE8];
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = GTSampleBufferManager::ResolveSampleBuffers((v2 + 267));
  if (v3)
  {
    [*(a1 + 32) setData:v3];
  }

  v2[273] = 0;
  v2[271] = v2[270];
}

void ___ZN35GTUSCSamplingStreamingManagerHelper39GatherFrameMiscEncoderPostProcessedDataEbP14NSMutableArrayIP6NSDataEP13NSMutableDataRNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS7_4hashIjEENS7_8equal_toIjEENS7_9allocatorINS7_4pairIKjS9_EEEEEEP11NSOperation_block_invoke_3(uint64_t a1)
{
  v2 = GTUSCSamplingStreamingManagerHelper::PostProcessFrameData(*(a1 + 48), *(a1 + 32));
  if (v2)
  {
    [*(a1 + 40) setArray:v2];
  }
}

void GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(GTUSCSamplingStreamingManagerHelper *this)
{
  v310 = *MEMORY[0x277D85DE8];
  v1 = atomic_load(byte_27F09C804);
  if (v1)
  {
    goto LABEL_196;
  }

  v169 = [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 48) objectForKeyedSubscript:@"DerivedCounterDictionary"];
  if (qword_27F09C588 == -1)
  {
    v9 = [v169 objectForKeyedSubscript:@"DerivedCounters"];
    v10 = [v9 mutableCopy];

    v197 = v10;
    v11 = [v10 objectForKeyedSubscript:@"CSInvocation"];
    v177 = [v11 objectForKeyedSubscript:@"counters"];

    goto LABEL_13;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "CSInvocation");
  CountersForDerivedCounter = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(&__p);
  v3 = CountersForDerivedCounter;
  if (SHIBYTE(v263) < 0)
  {
    operator delete(__p);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v197 = 0;
    v177 = 0;
    goto LABEL_13;
  }

  if (!CountersForDerivedCounter)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (v3[1] - *v3)];
  v5 = *v3;
  v6 = v3[1];
  if (*v3 != v6)
  {
    do
    {
      v7 = v5;
      if (*(v5 + 23) < 0)
      {
        v7 = *v5;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      [v4 addObject:v8];

      v5 += 3;
    }

    while (v5 != v6);
  }

  v177 = [v4 copy];

  v197 = 0;
LABEL_13:
  v183 = [MEMORY[0x277CBEB98] setWithArray:v177];
  v196 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(&unk_2860D5A68, "count")}];
  if (qword_27F09C588 == -1)
  {
    v294 = 0u;
    v293 = 0u;
    v292 = 0u;
    v291 = 0u;
    v12 = [&unk_2860D5A68 countByEnumeratingWithState:&v291 objects:v309 count:16];
    if (v12)
    {
      v13 = *v292;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v292 != v13)
          {
            objc_enumerationMutation(&unk_2860D5A68);
          }

          v15 = [v197 objectForKeyedSubscript:*(*(&v291 + 1) + 8 * i)];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 objectForKeyedSubscript:@"counters"];
            if (v17)
            {
              [v196 addObjectsFromArray:v17];
            }
          }
        }

        v12 = [&unk_2860D5A68 countByEnumeratingWithState:&v291 objects:v309 count:16];
      }

      while (v12);
    }
  }

  if (qword_27F09C4A8)
  {
    v18 = [qword_27F09C4A8 objectForKeyedSubscript:@"num_cores"];
    v19 = [v18 unsignedIntValue];

    v20 = [qword_27F09C4A8 objectForKeyedSubscript:@"num_mgpus"];
    v21 = [v20 unsignedIntValue];

    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = v19 / v22 > 4;
  }

  else
  {
    v23 = 1;
  }

  v192 = v23;
  v200 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v177, "count")}];
  if (v192)
  {
    v290 = 0u;
    v289 = 0u;
    v288 = 0u;
    v287 = 0u;
    v24 = v177;
    v25 = [v24 countByEnumeratingWithState:&v287 objects:v308 count:16];
    if (v25)
    {
      v26 = *v288;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v288 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [MEMORY[0x277D0AF28] selectWithName:*(*(&v287 + 1) + 8 * j) options:0];
          [v200 addObject:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v287 objects:v308 count:16];
      }

      while (v25);
    }
  }

  if (qword_27F09C588 == -1)
  {
    v306 = @"FRGTicks";
    v31 = [v197 objectForKeyedSubscript:?];
    v307 = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
    v30 = GTMTLReplayHost_rawCounters(v32);

LABEL_51:
    goto LABEL_52;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "FRGTicks");
  v29 = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(&__p);
  v30 = v29;
  if ((SHIBYTE(v263) & 0x80000000) == 0)
  {
    if (!v29)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

  operator delete(__p);
  if (v30)
  {
LABEL_46:
    v31 = objc_opt_new();
    v33 = *v30;
    v34 = v30[1];
    if (*v30 != v34)
    {
      do
      {
        v35 = v33;
        if (*(v33 + 23) < 0)
        {
          v35 = *v33;
        }

        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];
        [v31 addObject:v36];

        v33 += 3;
      }

      while (v33 != v34);
    }

    v30 = [v31 copy];
    goto LABEL_51;
  }

LABEL_52:
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
  v38 = qword_27F09C4B8;
  qword_27F09C4B8 = v37;

  v286 = 0u;
  v285 = 0u;
  v284 = 0u;
  v283 = 0u;
  obj = v30;
  v39 = [obj countByEnumeratingWithState:&v283 objects:v305 count:16];
  if (v39)
  {
    v40 = *v284;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v284 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = [MEMORY[0x277D0AF28] selectWithName:*(*(&v283 + 1) + 8 * k) options:&unk_2860D5D90];
        [qword_27F09C4B8 addObject:v42];
      }

      v39 = [obj countByEnumeratingWithState:&v283 objects:v305 count:16];
    }

    while (v39);
  }

  if (qword_27F09C588 == -1)
  {
    v47 = GTMTLReplayHost_rawCounters(v197);
    v178 = [v47 copy];
  }

  else
  {
    v178 = objc_opt_new();
    v43 = qword_27F09C730;
    for (m = xmmword_27F09C738; v43 != m; v43 += 24)
    {
      v45 = v43;
      if (*(v43 + 23) < 0)
      {
        v45 = *v43;
      }

      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v45];
      [v178 addObject:v46];
    }
  }

  v48 = [MEMORY[0x277CBEB58] setWithArray:v178];
  v49 = obj;
  [v48 addObjectsFromArray:&unk_2860D5A20];
  if (v177)
  {
    [v48 addObjectsFromArray:v177];
  }

  [v48 addObjectsFromArray:obj];
  v50 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4096];
  for (n = 0; n < [*(&xmmword_27F09BCF8 + 1) count]; ++n)
  {
    v190 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:?];
    v51 = [v190 availableCounters];
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v52 = v51;
    v53 = [v52 countByEnumeratingWithState:&v279 objects:v304 count:16];
    if (v53)
    {
      v54 = *v280;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v280 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v279 + 1) + 8 * ii);
          v57 = [v56 name];
          v58 = [v48 containsObject:v57];

          if (v58)
          {
            v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v56, "counterValueType")}];
            v60 = [v56 name];
            [v50 setObject:v59 forKeyedSubscript:v60];
          }
        }

        v53 = [v52 countByEnumeratingWithState:&v279 objects:v304 count:16];
      }

      while (v53);
    }

    v49 = obj;
  }

  v61 = MEMORY[0x277CBEB18];
  v62 = [v178 count];
  v191 = [v61 arrayWithCapacity:{objc_msgSend(qword_27F09C4B0, "count") + v62}];
  [v191 addObjectsFromArray:qword_27F09C4B0];
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v199 = v178;
  v63 = [v199 countByEnumeratingWithState:&v275 objects:v303 count:16];
  if (v63)
  {
    v64 = *v276;
    do
    {
      for (jj = 0; jj != v63; ++jj)
      {
        if (*v276 != v64)
        {
          objc_enumerationMutation(v199);
        }

        v66 = *(*(&v275 + 1) + 8 * jj);
        if (([v66 isEqualToString:@"MTLStat_nSec"] & 1) == 0 && (objc_msgSend(v49, "containsObject:", v66) & 1) == 0 && (!v192 || (objc_msgSend(v183, "containsObject:", v66) & 1) == 0))
        {
          if ([v196 containsObject:v66])
          {
            v67 = &unk_2860D5DB8;
          }

          else
          {
            v67 = 0;
          }

          v68 = v67;
          v69 = [MEMORY[0x277D0AF28] selectWithName:v66 options:v68];
          [v191 addObject:v69];

          v49 = obj;
        }
      }

      v63 = [v199 countByEnumeratingWithState:&v275 objects:v303 count:16];
    }

    while (v63);
  }

  if (qword_27F09C4B8)
  {
    v168 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(qword_27F09C4B8);
  }

  else
  {
    v168 = 0;
  }

  v165 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(v191);
  v70 = DeepMutableCopy(v165);
  v71 = v70;
  if (v70)
  {
    v175 = v70;
    if ([(GTUSCSamplingStreamingManagerHelper *)v70 count])
    {
      v72 = [(GTUSCSamplingStreamingManagerHelper *)v71 objectForKeyedSubscript:@"passNum"];
      v186 = [v72 unsignedIntValue];

      if (v168)
      {
        v73 = [v168 objectForKeyedSubscript:@"passNum"];
        v74 = [v73 unsignedIntValue] == 1;

        if (v74)
        {
          GTUSCSamplingStreamingManagerHelper::SetupBumperCounters(v175, v75);
          v76 = [v168 objectForKeyedSubscript:@"passList"];
          v77 = [v76 objectAtIndexedSubscript:0];

          if (v186)
          {
            for (kk = 0; kk != v186; ++kk)
            {
              v79 = [(GTUSCSamplingStreamingManagerHelper *)v175 objectForKeyedSubscript:@"passList"];
              v80 = [v79 objectAtIndexedSubscript:kk];

              for (mm = 0; mm < [v80 count]; ++mm)
              {
                v82 = [v77 objectAtIndexedSubscript:mm];
                v83 = [v82 count] == 0;

                if (!v83)
                {
                  v84 = [v80 objectAtIndexedSubscript:mm];
                  v85 = [v77 objectAtIndexedSubscript:mm];
                  [v84 addObjectsFromArray:v85];
                }
              }
            }
          }

          if ([v200 count])
          {
            ++v186;
            v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
            [(GTUSCSamplingStreamingManagerHelper *)v175 setObject:v86 forKeyedSubscript:@"passNum"];
          }

          if ([v200 count])
          {
            v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(&xmmword_27F09BCF8 + 1), "count")}];
            for (nn = 0; nn < [*(&xmmword_27F09BCF8 + 1) count]; ++nn)
            {
              v89 = objc_opt_new();
              [v87 addObject:v89];

              v90 = [v77 objectAtIndexedSubscript:nn];
              v91 = [v90 count] == 0;

              if (!v91)
              {
                v92 = [v87 objectAtIndexedSubscript:nn];
                v93 = [qword_27F09C4B0 arrayByAddingObjectsFromArray:v200];
                [v92 addObjectsFromArray:v93];
              }
            }

            v94 = [(GTUSCSamplingStreamingManagerHelper *)v175 objectForKeyedSubscript:@"passList"];
            [v94 addObject:v87];
          }
        }
      }

      v95 = objc_autoreleasePoolPush();
      v96 = objc_opt_new();
      objc_autoreleasePoolPop(v95);
      v172 = v96;
      v269 = 0;
      v270 = &v269;
      v271 = 0x3032000000;
      v272 = __Block_byref_object_copy_;
      v273 = __Block_byref_object_dispose_;
      v274 = objc_opt_new();
      __p = 0;
      p_p = &__p;
      v263 = 0x5812000000;
      v264 = __Block_byref_object_copy__307;
      v265 = __Block_byref_object_dispose__308;
      v266 = &unk_24DB95716;
      memset(v267, 0, sizeof(v267));
      v268 = 1065353216;
      v258[0] = 0;
      v258[1] = v258;
      v258[2] = 0x5812000000;
      v258[3] = __Block_byref_object_copy__307;
      v258[4] = __Block_byref_object_dispose__308;
      v258[5] = &unk_24DB95716;
      memset(v259, 0, sizeof(v259));
      v260 = 1065353216;
      v251 = 0;
      v252 = &v251;
      v253 = 0x4812000000;
      v254 = __Block_byref_object_copy__310;
      v255 = __Block_byref_object_dispose__311;
      v256 = &unk_24DB95716;
      memset(v257, 0, sizeof(v257));
      v242 = 0;
      v243 = &v242;
      v244 = 0x4812000000;
      v245 = __Block_byref_object_copy__313;
      v246 = __Block_byref_object_dispose__314;
      v247 = &unk_24DB95716;
      v250 = 0;
      v248 = 0;
      v249 = 0;
      v166 = v186;
      std::vector<std::vector<DYMTLEncoderInfo>>::resize(v257, v186);
      v160 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16);
      v97 = [v160 objectForKeyedSubscript:@"perEncoderDrawCallCount"];
      v163 = [v97 count];

      v174 = objc_opt_new();
      v176 = objc_opt_new();
      if (v186)
      {
        v98 = 0;
        for (i1 = 0; i1 != v186; ++i1)
        {
          std::vector<std::vector<DYMTLEncoderInfo>>::reserve(v252 + 6, 2 * v163);
          v100 = objc_opt_new();
          v101 = MEMORY[0x277CCA8C8];
          v229[0] = MEMORY[0x277D85DD0];
          v229[1] = 3221225472;
          v229[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke;
          v229[3] = &unk_279657408;
          v238 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
          v230 = v175;
          v239 = i1;
          v241 = v192;
          v102 = v177;
          v240 = v186;
          v231 = v102;
          v233 = &v251;
          v234 = &v242;
          v235 = &__p;
          v236 = v258;
          v237 = &v269;
          v103 = v100;
          v232 = v103;
          v104 = [v101 blockOperationWithBlock:v229];
          v105 = v104;
          if (v98)
          {
            [v104 addDependency:v98];
          }

          [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v105];
          v106 = MEMORY[0x277CCA8C8];
          v225[0] = MEMORY[0x277D85DD0];
          v225[1] = 3221225472;
          v225[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_2;
          v225[3] = &unk_279658B00;
          v228 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
          v107 = v103;
          v226 = v107;
          v227 = v174;
          v108 = [v106 blockOperationWithBlock:v225];
          [v108 addDependency:v105];
          [*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) + 8) addOperation:v108];
          [v176 addDependency:v108];
          v109 = v108;

          if (!i1 && dword_27F09C54C && dword_27F09C548)
          {
            v110 = MEMORY[0x277CCA8C8];
            v222[0] = MEMORY[0x277D85DD0];
            v222[1] = 3221225472;
            v222[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_3;
            v222[3] = &unk_279658AD8;
            v224 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
            v223 = v172;
            v111 = [v110 blockOperationWithBlock:v222];
            [v111 addDependency:v109];
            [v176 addDependency:v111];
            [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v111];
          }

          v98 = v109;
        }
      }

      else
      {
        v109 = 0;
      }

      v161 = v109;
      [*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) + 8) addOperation:v176];
      [v176 waitUntilFinished];
      v173 = [MEMORY[0x277CBEB18] arrayWithCapacity:v186];
      if (v186)
      {
        v112 = 0;
        do
        {
          v113 = [MEMORY[0x277CBEA90] dataWithBytes:*(v252[6] + v112) length:*(v252[6] + v112 + 8) - *(v252[6] + v112)];
          [v173 addObject:v113];

          v112 += 24;
        }

        while (24 * v186 != v112);
      }

      v162 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[GTUSCSamplingStreamingManagerHelper count](v175, "count")}];
      v114 = [v162 objectForKeyedSubscript:@"passNum"];
      [v162 setObject:v114 forKeyedSubscript:@"passNum"];

      v164 = [MEMORY[0x277CBEB18] arrayWithCapacity:v186];
      v115 = v175;
      if (v186)
      {
        v170 = 0;
        do
        {
          v116 = [(GTUSCSamplingStreamingManagerHelper *)v115 objectForKeyedSubscript:@"passList"];
          v179 = [v116 objectAtIndexedSubscript:v170];

          v187 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v179, "count")}];
          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v180 = v179;
          v117 = [v180 countByEnumeratingWithState:&v218 objects:v302 count:16];
          if (v117)
          {
            v184 = *v219;
            do
            {
              v193 = v117;
              for (i2 = 0; i2 != v193; i2 = i2 + 1)
              {
                if (*v219 != v184)
                {
                  objc_enumerationMutation(v180);
                }

                v119 = *(*(&v218 + 1) + 8 * i2);
                v120 = [qword_27F09C4B0 arrayByAddingObjectsFromArray:v119];
                v121 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v120, "count")}];
                v216 = 0u;
                v217 = 0u;
                v214 = 0u;
                v215 = 0u;
                v122 = v119;
                v123 = [v122 countByEnumeratingWithState:&v214 objects:v301 count:16];
                if (v123)
                {
                  v124 = *v215;
                  do
                  {
                    for (i3 = 0; i3 != v123; ++i3)
                    {
                      if (*v215 != v124)
                      {
                        objc_enumerationMutation(v122);
                      }

                      v126 = [*(*(&v214 + 1) + 8 * i3) name];
                      [v121 addObject:v126];
                    }

                    v123 = [v122 countByEnumeratingWithState:&v214 objects:v301 count:16];
                  }

                  while (v123);
                }

                [v187 addObject:v121];
              }

              v117 = [v180 countByEnumeratingWithState:&v218 objects:v302 count:16];
            }

            while (v117);
          }

          [v164 addObject:v187];
          ++v170;
          v115 = v175;
        }

        while (v170 != v166);
      }

      v127 = p_p[9];
      if (v127)
      {
        if (!(v127 >> 60))
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      for (i4 = p_p[8]; i4; i4 = *i4)
      {
        v129 = *(i4 + 6);
      }

      if (!dword_27F09BCD4)
      {
        mach_timebase_info(&GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(void)::timebaseInfo);
      }

      v158 = [MEMORY[0x277CBEB28] dataWithBytes:0 length:0];
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v171 = v174;
      v130 = 0;
      v131 = [v171 countByEnumeratingWithState:&v210 objects:v300 count:16];
      if (v131)
      {
        v132 = 0;
        v167 = *v211;
        do
        {
          v133 = 0;
          v159 = v131;
          do
          {
            if (*v211 != v167)
            {
              objc_enumerationMutation(v171);
            }

            v134 = *(*(&v210 + 1) + 8 * v133);
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
            v209 = 0u;
            v194 = v134;
            v135 = [v194 countByEnumeratingWithState:&v206 objects:v299 count:16];
            v181 = v133;
            v185 = v130;
            v188 = v132;
            v136 = 0;
            if (v135)
            {
              v137 = *v207;
              do
              {
                for (i5 = 0; i5 != v135; ++i5)
                {
                  if (*v207 != v137)
                  {
                    objc_enumerationMutation(v194);
                  }

                  v139 = *(*(&v206 + 1) + 8 * i5);
                  v202 = 0u;
                  v203 = 0u;
                  v204 = 0u;
                  v205 = 0u;
                  v140 = v139;
                  v141 = [v140 countByEnumeratingWithState:&v202 objects:v298 count:16];
                  if (v141)
                  {
                    v142 = *v203;
                    do
                    {
                      for (i6 = 0; i6 != v141; ++i6)
                      {
                        if (*v203 != v142)
                        {
                          objc_enumerationMutation(v140);
                        }

                        v136 += [*(*(&v202 + 1) + 8 * i6) length];
                      }

                      v141 = [v140 countByEnumeratingWithState:&v202 objects:v298 count:16];
                    }

                    while (v141);
                  }
                }

                v135 = [v194 countByEnumeratingWithState:&v206 objects:v299 count:16];
              }

              while (v135);
            }

            NSLog(&cfstr_TotalRdeCounte.isa, v188, v136 >> 10);
            v130 = v136 + v185;
            v132 = (v188 + 1);
            v133 = v181 + 1;
          }

          while (v181 + 1 != v159);
          v131 = [v171 countByEnumeratingWithState:&v210 objects:v300 count:16];
        }

        while (v131);
        v130 >>= 10;
      }

      v144 = qword_27F09C518;
      v145 = MEMORY[0x277CBEC10];
      if (!qword_27F09C518)
      {
        v144 = MEMORY[0x277CBEC10];
      }

      v146 = v144;
      NSLog(&cfstr_TotalRdeCounte_0.isa, v130);
      [v162 setObject:v164 forKeyedSubscript:@"passList"];
      v296[0] = @"Derived Counter Sample Data";
      v296[1] = @"Subdivided Dictionary";
      v297[0] = v171;
      v297[1] = v162;
      v297[2] = v173;
      v296[2] = @"Encoder Infos";
      v296[3] = @"Encoder Tile Info";
      v147 = [MEMORY[0x277CBEA90] dataWithBytes:v243[6] length:v243[7] - v243[6]];
      v195 = v146;
      v297[3] = v147;
      v296[4] = @"MTLFX TraceIds";
      v148 = [v270[5] mtlfxTracingInfo];
      v182 = v148;
      if (v148)
      {
        v149 = v148;
      }

      else
      {
        v149 = v145;
      }

      v297[4] = v149;
      v297[5] = v50;
      v296[5] = @"Counter Info";
      v296[6] = @"Num Encoders";
      v189 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
      v297[6] = v189;
      v297[7] = v172;
      v296[7] = @"Encoder Time Sample Data";
      v296[8] = @"Encoder Sample Index Data";
      v297[8] = v158;
      v296[9] = @"Timebase";
      v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:GTUSCSamplingStreamingManagerHelper::StreamEncoderDerivedCounterData(void)::timebaseInfo];
      v295[0] = v150;
      v151 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:dword_27F09BCD4];
      v295[1] = v151;
      v152 = [MEMORY[0x277CBEA60] arrayWithObjects:v295 count:2];
      v297[9] = v152;
      v296[10] = @"Source Sample Marker";
      v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:qword_27F09BD08];
      v297[10] = v153;
      v296[11] = @"Derived Counters Info Data";
      v154 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 48);
      if (!v154)
      {
        v154 = v145;
      }

      v297[11] = v154;
      v297[12] = v195;
      v296[12] = @"Perf Info";
      v296[13] = @"Fragment Counter";
      if (obj)
      {
        v155 = [obj firstObject];
      }

      else
      {
        v155 = &stru_2860BD438;
      }

      v297[13] = v155;
      v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v297 forKeys:v296 count:14];
      if (obj)
      {
      }

      (*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 32) + 16))();
      _Block_object_dispose(&v242, 8);
      if (v248)
      {
        v249 = v248;
        operator delete(v248);
      }

      _Block_object_dispose(&v251, 8);
      v242 = v257;
      std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&v242);
      _Block_object_dispose(v258, 8);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v259);
      _Block_object_dispose(&__p, 8);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v267);
      _Block_object_dispose(&v269, 8);

      v71 = v175;
    }
  }

LABEL_196:
  v157 = *MEMORY[0x277D85DE8];
}

void sub_24D893504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, _Unwind_Exception *exception_objecta, uint64_t a35, void *a36, uint64_t a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&STACK[0x330], 8);
  v44 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v44;
    operator delete(v44);
  }

  _Block_object_dispose(&STACK[0x378], 8);
  STACK[0x330] = a14;
  std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x330]);
  _Block_object_dispose(&STACK[0x3C0], 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x3F0]);
  _Block_object_dispose(&STACK[0x418], 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x448]);
  _Block_object_dispose(&STACK[0x470], 8);

  _Unwind_Resume(a1);
}

id DeepMutableCopy(NSDictionary *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](v1, "count")}];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZL15DeepMutableCopyP12NSDictionary_block_invoke;
    v6[3] = &unk_2796574A8;
    v4 = v3;
    v7 = v4;
    [(NSDictionary *)v2 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  GTMTLReplayController_prePlayForProfiling(**v2);
  DisableComputeEncoderCoalescing(**v2, 1);
  v3 = *(a1 + 32);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112) == 1 && [*(a1 + 40) count] && *(a1 + 104) + 1 == *(a1 + 108);
  if (GTUSCSamplingStreamingManagerHelper::SetupSourceForDerivedCounters(v2, v3, v4, 0, v5))
  {
    v6 = [*(v2 + 16) firstObject];
    v7 = [v6 startSampling];

    if (v7)
    {
      if (!*(*v2 + 72))
      {
        usleep(0x30D40u);
        GTUSCSamplingStreamingManagerHelper::ForceDrainAllSourceBuffers(*(v2 + 24));
      }

      GTUSCSamplingStreamingManagerHelper::ResetSourceForPostProcessing(v2);
      v8 = *(a1 + 104);
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = a1 + 80;
      }

      else
      {
        v9 = *(*(a1 + 64) + 8) + 48;
        v11 = a1 + 72;
        v10 = *(*(*(a1 + 88) + 8) + 40);
      }

      GTUSCSamplingStreamingManagerHelper::ReplayForDerivedCounters(v2, *(*(*(a1 + 56) + 8) + 48) + 24 * v8, v9, 0, (*(*v11 + 8) + 48), v10);
      v12 = objc_autoreleasePoolPush();
      v13 = GTUSCSamplingStreamingManagerHelper::DrainRawDerivedCounterData(v2);
      if (v13)
      {
        [*(a1 + 48) setArray:v13];
      }

      objc_autoreleasePoolPop(v12);
      v14 = [*(v2 + 16) firstObject];
      [v14 stopSampling];

      DisableComputeEncoderCoalescing(**v2, 0);
      if (*(a1 + 104) + 1 == *(a1 + 108))
      {
        GTAGXPerfStateControl::DisableConsistentGPUPerfState((v2 + 40));

        GTApplePMPPerfStateControl::DisableConsistentPerfState((v2 + 64));
      }
    }
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_2(uint64_t a1)
{
  v2 = GTUSCSamplingStreamingManagerHelper::PostProcessRawDerivedCounterData(*(a1 + 48), *(a1 + 32));
  if (v2)
  {
    [*(a1 + 40) addObject:v2];
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31StreamEncoderDerivedCounterDataEv_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = GTSampleBufferManager::ResolveSampleBuffers((v2 + 267));
  if (v3)
  {
    [*(a1 + 32) setData:v3];
  }

  v2[273] = 0;
  v2[271] = v2[270];
}

void ___ZL15DeepMutableCopyP12NSDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = DeepMutableCopy(v5);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = DeepMutableCopy(v5);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    goto LABEL_5;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
LABEL_7:
}

id DeepMutableCopy(NSArray *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v1, "count")}];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZL15DeepMutableCopyP7NSArray_block_invoke;
    v6[3] = &unk_2796574D0;
    v4 = v3;
    v7 = v4;
    [(NSArray *)v2 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZL15DeepMutableCopyP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = DeepMutableCopy(v7);
    [v3 addObject:v4];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    v4 = DeepMutableCopy(v7);
    [v6 addObject:v4];
    goto LABEL_5;
  }

  [*(a1 + 32) addObject:v7];
LABEL_7:
}

void ___ZN35GTUSCSamplingStreamingManagerHelper23StreamHarvestedBinariesEv_block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  GTMTLReplayController_prePlayForProfiling(**v1);
  v65 = v1;
  v2 = **v1;
  v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1024];
  *&v79 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  *(&v79 + 1) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  v80 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  v63 = v78;
  v81 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  v58 = *(v2 + 8);
  memset(v76, 0, sizeof(v76));
  v77 = 1065353216;
  memset(v74, 0, sizeof(v74));
  v75 = 1065353216;
  __p = 0;
  v72 = 0;
  v73 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [[ProgramAddressTableCollector alloc] initForHarvestingBinaries];
  v5 = v65[243];
  v65[243] = v4;

  v6 = objc_opt_new();
  v7 = v65[244];
  v65[244] = v6;

  v65[245] = 0;
  objc_autoreleasePoolPop(v3);
  v60 = [*(v2 + 8) defaultDevice];
  v59 = [*(v2 + 8) defaultCommandQueue];
  [v60 mapShaderSampleBufferWithBuffer:0 capacity:0 size:0];
  v8 = objc_autoreleasePoolPush();
  v86[1] = v2;
  v87 = 0;
  v86[0] = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling();
  [v59 finish];
  ScopedReplayConfiguration::~ScopedReplayConfiguration(v86);
  objc_autoreleasePoolPop(v8);
  [v60 unmapShaderSampleBuffer];
  v56 = [v65[243] mappings];
  v61 = [v65[243] binaries];
  v64 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v56;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
  if (v9)
  {
    v10 = *v68;
    do
    {
      v11 = 0;
      do
      {
        if (*v68 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v67 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:@"encID"];
        [v13 unsignedIntValue];

        v14 = [v12 objectForKeyedSubscript:@"encIndex"];
        v15 = [v14 unsignedIntValue];

        v16 = [v12 objectForKeyedSubscript:@"drawCallIndex"];
        v17 = [v16 unsignedIntValue];

        v18 = [v12 objectForKeyedSubscript:@"index"];
        v19 = [v18 unsignedIntValue];

        v20 = [v12 objectForKeyedSubscript:@"mappedSize"];
        v21 = [v20 unsignedLongLongValue];

        v22 = [v12 objectForKeyedSubscript:@"type"];
        v23 = [v12 objectForKeyedSubscript:@"binaryUniqueId"];
        if (([v22 isEqualToString:@"AccelerationStructure"] & 1) == 0)
        {
          v24 = GTShaderProfilerGenerateComputedKey(v15, v17, v21, v22);
          v25 = [v65[244] objectForKeyedSubscript:v24];
          v26 = v25 == 0;

          if (!v26)
          {
            v27 = [v64 objectForKeyedSubscript:v24];
            v28 = [v27 unsignedIntValue];

            v29 = (v28 + 1);
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", v24, v29];

            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
            [v64 setObject:v31 forKeyedSubscript:v30];

            v24 = v30;
          }

          [v65[244] setObject:v23 forKeyedSubscript:v24];
          if (v19 != -1)
          {
            v32 = [v63 count];
            v33 = v78;
            if (v32 == v17)
            {
              v34 = objc_opt_new();
              [v33 addObject:v34];
            }

            v63 = v33;
            v35 = [v33 objectAtIndexedSubscript:v17];
            v36 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
            v37 = v36 == 0;

            if (v37)
            {
              v38 = objc_opt_new();
              [v35 setObject:v38 forKeyedSubscript:@"mutiple binary keys"];
            }

            v39 = [v61 objectForKeyedSubscript:v23];
            if ([v22 isEqualToString:@"vertex"])
            {
              v41 = AddShaderBinary(v79, v39, v23, v23, 0, v22, v40);
              [v35 setObject:v41 forKeyedSubscript:@"vertex shader key"];

              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v81, v39, v23, v23, 0, v22, v43);
              [v42 addObject:v44];
              goto LABEL_21;
            }

            if ([v22 isEqualToString:@"fragment"])
            {
              v46 = AddShaderBinary(*(&v79 + 1), v39, v23, v23, 0, v22, v45);
              [v35 setObject:v46 forKeyedSubscript:@"fragment shader key"];

              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v81, v39, v23, v23, 0, v22, v47);
              [v42 addObject:v44];
              goto LABEL_21;
            }

            if (([v22 isEqualToString:@"compute"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"tile"))
            {
              v49 = AddShaderBinary(v80, v39, v23, v23, 0, v22, v48);
              [v35 setObject:v49 forKeyedSubscript:@"compute kernel key"];

              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v81, v39, v23, v23, 0, v22, v50);
              [v42 addObject:v44];
              goto LABEL_21;
            }

            if ([v22 containsString:@"dynamic-libraries"])
            {
              v42 = [v35 objectForKeyedSubscript:@"mutiple binary keys"];
              v44 = AddShaderBinary(v81, v39, v23, v23, 1, v22, v51);
              [v42 addObject:v44];
LABEL_21:
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v52 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
      v9 = v52;
    }

    while (v52);
  }

  v65[245] = v65[241];
  v65[241] = 0;
  v53 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(v65);
  v82[0] = @"draw call info";
  v82[1] = @"mutiple binary info";
  v83[0] = v63;
  v83[1] = v81;
  v82[2] = @"internal binary keys";
  v82[3] = @"vertex fetch shader info";
  v83[2] = MEMORY[0x277CBEBF8];
  v83[3] = MEMORY[0x277CBEC10];
  v84 = v79;
  v82[4] = @"vertex shader info";
  v82[5] = @"fragment shader info";
  v82[6] = @"compute kernel info";
  v85 = v80;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:7];

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::~__hash_table(v74);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v76);

  v54 = *(a1 + 32);
  if (v54)
  {
    [v54 setObject:v66 forKeyedSubscript:@"Havested Binaries"];
  }

  v55 = *MEMORY[0x277D85DE8];
}

void ___ZN29GTUSCSamplingStreamingManagerC2EP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryU13block_pointerFvS5_E_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = [*(v1 + 16) objectForKeyedSubscript:@"GPUState"];
  v12 = v3;
  if (v3 && (v4 = [v3 unsignedIntValue], *(v1 + 72) = v4, v5 = v12, v4))
  {
    *(v1 + 64) = vdup_n_s32(0x12Cu);
  }

  else
  {
    *(v1 + 72) = 0;
    v6 = ExpectedState(v2);
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9.f64[0] = floor(v8);
      v9.f64[1] = ceil(v8);
      v10 = v8 - v9.f64[0];
      v11 = vmovn_s64(vcvtq_u64_f64(vmulq_f64(v9, vdupq_n_s64(0x4059000000000000uLL))));
      *(v1 + 64) = v11;
      *(v1 + 24) = v10;
      if (v10 <= 2.22044605e-16)
      {
        *(v1 + 68) = v11.i32[0];
      }
    }

    else
    {
      *(v1 + 64) = vdup_n_s32(0x12Cu);
    }

    v5 = v12;
  }
}

uint64_t GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(uint64_t a1, uint64_t a2, id *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  *a1 = a2;
  *(a1 + 8) = a3;
  v10 = v9;
  *(a1 + 16) = v10;
  v11 = MEMORY[0x253033CF0](a5);
  *(a1 + 40) = 0;
  *(a1 + 32) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 76) = 0x7FFFFFFF;
  v12 = objc_opt_new();
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;

  v14 = objc_opt_new();
  v15 = *(a1 + 48);
  *(a1 + 48) = v14;

  *(a1 + 24) = 0x3FF0000000000000;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN29GTUSCSamplingStreamingManagerC2EP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryU13block_pointerFvS5_E_block_invoke;
  v18[3] = &__block_descriptor_40_e5_v8__0l;
  v18[4] = a1;
  v16 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v18];
  [v16 setQueuePriority:8];
  [*a3 addOperation:v16];
  [v16 waitUntilFinished];

  return a1;
}

void GTUSCSamplingStreamingManager::InitTargetIndex(id *this)
{
  v2 = [this[2] objectForKeyedSubscript:@"MetalPluginName"];
  v3 = this[7];
  this[7] = v2;

  if (this[7])
  {
    v4 = [this[2] objectForKeyedSubscript:@"gpuTarget"];
    v5 = v4;
    if (v4)
    {
      *(this + 19) = [v4 intValue];
    }
  }

  else
  {
    IOAccelerator = GetIOAccelerator();
    v7 = GetMetalPluginName(IOAccelerator, this + 19);
    v5 = this[7];
    this[7] = v7;
  }

  if (*(this + 19) == 0x7FFFFFFF)
  {
    *(this + 19) = MetalPluginTarget(this[7]);
  }
}

void GTUSCSamplingStreamingManager::InitDerivedCountersInfo(id *this)
{
  GTUSCSamplingStreamingManager::InitTargetIndex(this);
  v2 = [this[2] objectForKeyedSubscript:@"derivedCounterInfo"];
  v3 = this[6];
  this[6] = v2;
}

void GTUSCSamplingStreamingManagerHelper::Instance(GTUSCSamplingStreamingManagerHelper *this)
{
  {
    if (v1)
    {
      GTUSCSamplingStreamingManagerHelper::GTUSCSamplingStreamingManagerHelper(v1);
      __cxa_atexit(GTUSCSamplingStreamingManagerHelper::~GTUSCSamplingStreamingManagerHelper, &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance, &dword_24D764000);
    }
  }
}

void GTUSCSamplingStreamingManagerHelper::GTUSCSamplingStreamingManagerHelper(GTUSCSamplingStreamingManagerHelper *this)
{
  byte_27F09BD18 = 0;
  xmmword_27F09BCF8 = 0u;
  *&qword_27F09BD08 = 0u;
  GTUSCSamplingStreamingManagerHelper::Instance(void)::instance = 0u;
  qword_27F09BD20 = 0;
  qword_27F09BD28 = 0;
  qword_27F09BD30[0] = 0x300000000;
  bzero(&unk_27F09BD38, 0x70CuLL);
  xmmword_27F09C468 = 0u;
  xmmword_27F09C458 = 0u;
  xmmword_27F09C480 = 0u;
  unk_27F09C490 = 0u;
  unk_27F09C4A0 = 0u;
  *&qword_27F09C4B0 = 0u;
  xmmword_27F09C4C0 = 0u;
  unk_27F09C4D0 = 0u;
  unk_27F09C4E0 = 0u;
  *&qword_27F09C4F0 = 0u;
  xmmword_27F09C500 = 0u;
  *&qword_27F09C510 = 0u;
  xmmword_27F09C520 = 0u;
  *&qword_27F09C530 = 0u;
  unk_27F09C540 = 0u;
  unk_27F09C550 = 0u;
  xmmword_27F09C560 = 0u;
  unk_27F09C570 = 0u;
  qword_27F09C580 = 0;
  qword_27F09C588 = 0xFFFFFFFFLL;
  word_27F09C590 = 257;
  xmmword_27F09C594 = 0u;
  *algn_27F09C5A4 = 0u;
  xmmword_27F09C5B4 = 0u;
  unk_27F09C5C4 = 0u;
  xmmword_27F09C5D4 = 0u;
  *(&xmmword_27F09C5D4 + 12) = 0u;
  dword_27F09C5F0 = 1065353216;
  xmmword_27F09C5F8 = 0u;
  xmmword_27F09C608 = 0u;
  unk_27F09C618 = 0u;
  xmmword_27F09C628 = 0u;
  xmmword_27F09C638 = 0u;
  unk_27F09C648 = 0u;
  xmmword_27F09C658 = 0u;
  xmmword_27F09C668 = 0u;
  unk_27F09C678 = 0u;
  xmmword_27F09C688 = 0u;
  xmmword_27F09C698 = 0u;
  unk_27F09C6A8 = 0u;
  xmmword_27F09C6B8 = 0u;
  xmmword_27F09C6C8 = 0u;
  xmmword_27F09C6D8 = 0u;
  xmmword_27F09C6E8 = 0u;
  unk_27F09C6F8 = 0u;
  qword_27F09C708 = 0;
  dword_27F09C710 = 1065353216;
  xmmword_27F09C718 = 0u;
  unk_27F09C728 = 0u;
  xmmword_27F09C738 = 0u;
  xmmword_27F09C748 = 0u;
  unk_27F09C758 = 0u;
  xmmword_27F09C768 = 0u;
  xmmword_27F09C778 = 0u;
  unk_27F09C788 = 0u;
  xmmword_27F09C798 = 0u;
  xmmword_27F09C7A8 = 0u;
  xmmword_27F09C7B8 = 0u;
  dword_27F09C7C8 = 1065353216;
  byte_27F09C7D0 = 0;
  xmmword_27F09C7D8 = 0u;
  xmmword_27F09C7E8 = 0u;
  *(&xmmword_27F09C7E8 + 13) = 0u;
  qword_27F09C808 = 1018212795;
  qword_27F09C830 = 0;
  xmmword_27F09C810 = 0u;
  unk_27F09C820 = 0u;
  qword_27F09C838 = 850045863;
  xmmword_27F09C840 = 0u;
  *algn_27F09C850 = 0u;
  xmmword_27F09C860 = 0u;
  qword_27F09C870 = 0;
  qword_27F09C878 = 1018212795;
  xmmword_27F09C880 = 0u;
  *algn_27F09C890 = 0u;
  qword_27F09C8A0 = 0;
  qword_27F09C8A8 = 850045863;
  xmmword_27F09C8B0 = 0u;
  unk_27F09C8C0 = 0u;
  xmmword_27F09C8D0 = 0u;
  qword_27F09C8E0 = 0;
  qword_27F09C8E8 = 1018212795;
  qword_27F09C910 = 0;
  xmmword_27F09C8F0 = 0u;
  unk_27F09C900 = 0u;
  qword_27F09C918 = 850045863;
  qword_27F09C950 = 0;
  xmmword_27F09C930 = 0u;
  unk_27F09C940 = 0u;
  xmmword_27F09C920 = 0u;
  qword_27F09C968 = -1;
  *(&xmmword_27F09C958 + 1) = -1;
  *&xmmword_27F09C958 = -1;
  xmmword_27F09C990 = 0u;
  unk_27F09C9A0 = 0u;
  xmmword_27F09C970 = 0u;
  *&qword_27F09C980 = 0u;
  qword_27F09C9B0 = qword_27F09C9B0 & 0xFFFFFFFFFFFFFE00 | 1;
  xmmword_27F09C9B8 = 0u;
  xmmword_27F09C9C8 = 0u;
  xmmword_27F09C9D8 = 0u;
  xmmword_27F09C9E8 = 0u;
  qword_27F09C9F8 = 0;
  qword_27F09CA00 = 4;
  dword_27F09CA08 = 0;
}

void GTUSCSamplingStreamingManagerHelper::~GTUSCSamplingStreamingManagerHelper(GTUSCSamplingStreamingManagerHelper *this)
{
  dispatch_semaphore_signal(*(this + 316));
  GTUSCSamplingStreamingManagerHelper::CleanUp(this);
  v2 = *(this + 416);
  if (v2)
  {
    *(this + 417) = v2;
    operator delete(v2);
  }

  v3 = *(this + 413);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 410);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 405);
  if (v5)
  {
    *(this + 406) = v5;
    operator delete(v5);
  }

  v9 = (this + 3216);
  std::vector<SourceFileInfo>::__destroy_vector::operator()[abi:nn200100](&v9);

  std::mutex::~mutex((this + 3120));
  std::condition_variable::~condition_variable(this + 64);
  std::mutex::~mutex(this + 47);
  std::condition_variable::~condition_variable((this + 2960));
  std::mutex::~mutex((this + 2896));
  std::condition_variable::~condition_variable((this + 2848));
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 2752);
  for (i = 2728; i != 2584; i -= 24)
  {
    v9 = (this + i);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v9);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 2568);

  v9 = (this + 2504);
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2480);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2456);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2432);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2408);
  std::vector<DynamicBuffer>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2384);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&v9);
  v9 = (this + 2360);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&v9);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 2280);
  v7 = *(this + 282);
  if (v7)
  {
    *(this + 283) = v7;
    operator delete(v7);
  }

  v9 = (this + 2232);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&v9);

  GTSampleBufferManager::~GTSampleBufferManager(this + 267);
  v8 = *(this + 238);
  if (v8)
  {
    *(this + 239) = v8;
    operator delete(v8);
  }

  GTApplePMPPerfStateControl::~GTApplePMPPerfStateControl((this + 64));
  GTAGXPerfStateControl::~GTAGXPerfStateControl(this + 5);
}

void sub_24D895868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  GTGPUAPSProfilingConfig::~GTGPUAPSProfilingConfig((v10 + 3272));
  v12 = *(v10 + 3240);
  if (v12)
  {
    *(v10 + 3248) = v12;
    operator delete(v12);
  }

  a10 = (v10 + 3216);
  std::vector<SourceFileInfo>::__destroy_vector::operator()[abi:nn200100](&a10);

  std::mutex::~mutex((v10 + 3120));
  std::condition_variable::~condition_variable((v10 + 3072));
  std::mutex::~mutex((v10 + 3008));
  std::condition_variable::~condition_variable((v10 + 2960));
  std::mutex::~mutex((v10 + 2896));
  std::condition_variable::~condition_variable((v10 + 2848));
  GTAGXProfilingSupportHelper::~GTAGXProfilingSupportHelper((v10 + 2568));

  a10 = (v10 + 2504);
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2480);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2456);
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2432);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2408);
  std::vector<DynamicBuffer>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2384);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 2360);
  std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](&a10);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10 + 2280);
  v13 = *(v10 + 2256);
  if (v13)
  {
    *(v10 + 2264) = v13;
    operator delete(v13);
  }

  a10 = (v10 + 2232);
  std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](&a10);

  GTSampleBufferManager::~GTSampleBufferManager((v10 + 2136));
  v14 = *(v10 + 1904);
  if (v14)
  {
    *(v10 + 1912) = v14;
    operator delete(v14);
  }

  GTApplePMPPerfStateControl::~GTApplePMPPerfStateControl((v10 + 64));
  GTAGXPerfStateControl::~GTAGXPerfStateControl((v10 + 40));
  GPURawCounterSetupParams::~GPURawCounterSetupParams((v10 + 16));

  _Unwind_Resume(a1);
}

void std::vector<SourceFileInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<GTMMappedBuffer>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<DynamicBuffer>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DynamicBuffer>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void GTSampleBufferManager::~GTSampleBufferManager(id *this)
{
  [this[2] removeAllObjects];
  v2 = *this;
  *this = 0;

  v3 = this[3];
  if (v3)
  {
    this[4] = v3;
    operator delete(v3);
  }
}

void sub_24D895DBC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void GTApplePMPPerfStateControl::~GTApplePMPPerfStateControl(GTApplePMPPerfStateControl *this)
{
  GTApplePMPPerfStateControl::Close(this);
  for (i = 1752; i != -40; i -= 56)
  {
  }
}

void sub_24D895E30(_Unwind_Exception *a1)
{
  for (i = 1752; i != -40; i -= 56)
  {
  }

  _Unwind_Resume(a1);
}

void GTAGXPerfStateControl::~GTAGXPerfStateControl(id *this)
{
  v2 = *this;
  if (v2)
  {
    IOServiceClose(v2);
    *this = 0;
  }
}

void GTGPUAPSProfilingConfig::~GTGPUAPSProfilingConfig(GTGPUAPSProfilingConfig *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    operator delete(v4);
  }
}

void GTAGXProfilingSupportHelper::~GTAGXProfilingSupportHelper(GTAGXProfilingSupportHelper *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this + 184);
  for (i = 160; i != 16; i -= 24)
  {
    v3 = (this + i);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(this);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

float64_t GetTextureRendererUniform(uint64_t a1, float64_t *a2, int a3, uint64_t a4, uint64_t a5, float64x2_t a6, float64_t a7, float64x2_t a8, float64_t a9, float64x2_t a10, float64_t a11, double a12, double a13, double a14, double a15)
{
  v17.f64[0] = a2[8];
  v18.f64[0] = a2[9];
  v17.f64[1] = a2[12];
  v19.f64[0] = *a2;
  v20.f64[0] = a2[1];
  v19.f64[1] = a2[4];
  v18.f64[1] = a2[13];
  v20.f64[1] = a2[5];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v17);
  *(a1 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v18);
  v17.f64[0] = a2[10];
  v18.f64[0] = a2[11];
  v22.f64[1] = a2[14];
  v19.f64[0] = a2[2];
  v20.f64[0] = a2[3];
  v19.f64[1] = a2[6];
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v22);
  v18.f64[1] = a2[15];
  v20.f64[1] = a2[7];
  v22.f64[0] = a14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 32) = v21;
  *(a1 + 48) = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v18);
  if (a3)
  {
    v23.i64[0] = a4;
    v23.i64[1] = a5;
    v24 = vcvtq_f64_u64(v23);
    v25 = a14 / v24.f64[0];
    if (a14 / v24.f64[0] >= a15 / v24.f64[1])
    {
      v25 = a15 / v24.f64[1];
    }

    v22.f64[1] = a15;
    v26 = vcvt_f32_f64(vmulq_n_f64(v24, v25 / a12));
    __asm { FMOV            V4.2D, #0.5 }

    a8 = vmulq_f64(vsubq_f64(vdivq_f64(v22, vdupq_lane_s64(*&a12, 0)), vcvtq_f64_f32(v26)), _Q4);
  }

  else
  {
    a8.f64[1] = a9;
    a10.f64[1] = a11;
    v26 = vcvt_f32_f64(a10);
    v22.f64[1] = a15;
  }

  *(a1 + 64) = vcvt_f32_f64(a8);
  *(a1 + 72) = v26;
  a6.f64[1] = a7;
  *&a6.f64[0] = vcvt_f32_f64(a6);
  v33 = a12;
  *(a1 + 96) = v33;
  *(a1 + 80) = vcvt_f32_f64(v22);
  *(a1 + 88) = a6.f64[0];
  return a6.f64[0];
}

id GTMTLShaderDebugger_generateTrace()
{
  v0 = MEMORY[0x28223BE20]();
  v487 = v1;
  v494 = v0;
  v560 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v533 = 0;
  p = 0;
  v516 = 0;
  v531 = 0u;
  v532 = 0;
  v522 = 0u;
  v521 = 0;
  v517 = 0u;
  v518 = 0u;
  v519 = 0u;
  v520 = 0u;
  v523 = objc_alloc_init(MEMORY[0x277CBEAC0]);

  v524 = 0u;
  v525 = 0u;

  v526 = 0;
  v527 = 0x7FFFFFFFFFFFFFFFLL;
  v528 = 0;

  v529 = 2;
  v530 = 0u;

  *&v531 = 0;
  apr_pool_create_ex(&p, 0, 0, v4);
  v5 = v3;
  v488 = v5;
  if (!v5)
  {
    if (v487)
    {
      v71 = GTShaderDebuggerMakeError(1u, @"Internal error: nil request", 0, 0, 0);
LABEL_58:
      v72 = 0;
      v61 = 0;
LABEL_81:
      v94 = 0;
      *v487 = v71;
      goto LABEL_84;
    }

LABEL_59:
    v72 = 0;
    v61 = 0;
LABEL_83:
    v94 = 0;
    goto LABEL_84;
  }

  v6 = [v5 objectForKeyedSubscript:@"ProtocolVersion"];
  v7 = [v6 intValue];

  v8 = v488;
  if (v7)
  {
    goto LABEL_38;
  }

LABEL_8:
  v18 = v8;
  v19 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerFunctionIndex"];
  v20 = [v19 unsignedIntegerValue];

  v21 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerSubCommandIndex"];
  v512 = [v21 unsignedIntegerValue];

  if (v20)
  {
    v22 = *v494;
    v23 = *(*(*v494 + 128) + 24);
    v24 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerFunctionId"];
    v25 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerLibraryId"];
    v26 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerLibraryType"];
    v507 = v20 - 1;
    if ([v26 isEqualToString:@"Online"])
    {
      v27 = (v23 + (v507 << 6));
      AliasStream = GetAliasStream(*(v22 + 24), [v25 unsignedLongLongValue], *v27);
      if (AliasStream)
      {
        v29 = *AliasStream;
      }

      else
      {
        v29 = 0;
      }

      Function = GTMTLSMContext_lastFunction(**(v22 + 40), v29, *v27);
      if (!Function || *(Function + 177) != 2)
      {
        v17 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v30 = StringFromArchive(*v22, v494[23], *(Function + 112));
      v34 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerInstrumentFunctions"];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      v36 = [v35 stringValue];
      v37 = [v34 objectForKeyedSubscript:v36];

      v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v38 setObject:v30 forKeyedSubscript:@"Code"];
      if ([v37 count])
      {
        [v38 setObject:v37 forKeyedSubscript:@"SelectFunctions"];
      }

      v540 = v25;
      v39 = [v38 copy];
      v541 = v39;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v541 forKeys:&v540 count:1];

      v32 = @"SourceLibs";
    }

    else
    {
      v30 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerInstrumentedMetallib"];
      v540 = v25;
      v541 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v541 forKeys:&v540 count:1];
      v32 = @"MetalLibs";
    }

    v537 = v24;
    v538[0] = v32;
    v538[1] = @"FunctionUIDs";
    v539[0] = v31;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v537 count:1];
    v539[1] = v40;
    v502 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v539 forKeys:v538 count:2];

    v41 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerTraceBufferSize"];
    v42 = [v41 unsignedIntegerValue];

    v43 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerPipelineCreationTimeout"];
    v44 = [v43 unsignedIntegerValue];

    v536[0] = @"TraceBufferSize";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    v551 = v45;
    v536[1] = @"PSOCompileTimeout";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44];
    v536[2] = @"SkipMetadataGen";
    v552 = v46;
    v553 = MEMORY[0x277CBEC28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v551 forKeys:v536 count:3];

    v26 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIType"];
    v47 = [v26 unsignedIntegerValue];
    if (v47 > 1)
    {
      if (v47 != 2)
      {
        if (v47 == 3)
        {
          v498 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIInstanceId"];
          v50 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIAmplificationId"];
          v51 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIPatchIds"];
          *&v543 = @"Type";
          *(&v543 + 1) = @"InstanceID";
          *__dst = &unk_2860D69B0;
          *&__dst[8] = v498;
          *&v544 = @"AmplificationID";
          *(&v544 + 1) = @"PatchIDs";
          *&__dst[16] = v50;
          *&__dst[24] = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v543 count:4];
          goto LABEL_28;
        }

LABEL_29:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "_UpgradeRequest_to_StarSkyE_from_StarSky", 802, 4, "Unknown region of interest type", v48, v49, v462);
        v17 = 0;
LABEL_34:
        v24 = v502;
        goto LABEL_35;
      }

      v498 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionX"];
      v50 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionY"];
      v51 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionX"];
      obj = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionY"];
      v54 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinSampleId"];
      v55 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxSampleId"];
      v56 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIRenderTargetArrayIndex"];
      *&v543 = @"Type";
      *(&v543 + 1) = @"MinPositionX";
      *__dst = &unk_2860D6980;
      *&__dst[8] = v498;
      *&v544 = @"MinPositionY";
      *(&v544 + 1) = @"MaxPositionX";
      *&__dst[16] = v50;
      *&__dst[24] = v51;
      *&v545 = @"MaxPositionY";
      *(&v545 + 1) = @"MinSampleID";
      *&__dst[32] = obj;
      *&__dst[40] = v54;
      *&v546 = @"MaxSampleID";
      *(&v546 + 1) = @"RenderTargetArrayIndex";
      *&__dst[48] = v55;
      *&__dst[56] = v56;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v543 count:8];
    }

    else
    {
      if (v47)
      {
        if (v47 == 1)
        {
          v498 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIInstanceId"];
          v50 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIAmplificationId"];
          v51 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIVertexIds"];
          *&v543 = @"Type";
          *(&v543 + 1) = @"InstanceID";
          *__dst = &unk_2860D6968;
          *&__dst[8] = v498;
          *&v544 = @"AmplificationID";
          *(&v544 + 1) = @"VertexIDs";
          *&__dst[16] = v50;
          *&__dst[24] = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v543 count:4];
LABEL_28:
          v53 = v52;
LABEL_33:

          *&v556 = &unk_2860D6980;
          *&v547 = @"ProtocolVersion";
          *(&v547 + 1) = @"FunctionIndex";
          v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v507];
          *(&v556 + 1) = v57;
          *&v548 = @"SubCommandIndex";
          v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v512];
          *&v557 = v58;
          *(&v557 + 1) = v502;
          *(&v548 + 1) = @"Program";
          *&v549 = @"ROI";
          *(&v549 + 1) = @"Options";
          *&v558 = v53;
          *(&v558 + 1) = v25;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v556 forKeys:&v547 count:6];

          goto LABEL_34;
        }

        goto LABEL_29;
      }

      v498 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionX"];
      v50 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionY"];
      v51 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMinPositionZ"];
      obj = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionX"];
      v54 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionY"];
      v55 = [v18 objectForKeyedSubscript:@"DYMTLShaderDebuggerROIMaxPositionZ"];
      *&v543 = @"Type";
      *(&v543 + 1) = @"MinPositionX";
      *__dst = &unk_2860D6998;
      *&__dst[8] = v498;
      *&v544 = @"MinPositionY";
      *(&v544 + 1) = @"MinPositionZ";
      *&__dst[16] = v50;
      *&__dst[24] = v51;
      *&v545 = @"MaxPositionX";
      *(&v545 + 1) = @"MaxPositionY";
      *&__dst[32] = obj;
      *&__dst[40] = v54;
      *&v546 = @"MaxPositionZ";
      *&__dst[48] = v55;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v543 count:7];
    }

    goto LABEL_33;
  }

  v17 = 0;
LABEL_36:

  while (1)
  {
    v59 = v17;

    v60 = [v59 objectForKeyedSubscript:@"ProtocolVersion"];

    v7 = [v60 intValue];
    v8 = v59;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_38:
    if (v7 != 2)
    {
      break;
    }

    v9 = v8;
    v10 = [v9 objectForKeyedSubscript:@"Program"];
    v11 = [v10 mutableCopy];

    v12 = [v11 objectForKeyedSubscript:@"UseGlobalRelocation"];
    if ([v12 BOOLValue])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    [v11 setObject:v14 forKeyedSubscript:@"TraceBufferBindingType"];

    v15 = [v9 mutableCopy];
    v16 = [v11 copy];
    [v15 setObject:v16 forKeyedSubscript:@"Program"];

    [v15 setObject:&unk_2860D6998 forKeyedSubscript:@"ProtocolVersion"];
    v17 = [v15 copy];
  }

  if (v7 != 3)
  {
      ;
    }
  }

  if (!v8)
  {
    if (v487)
    {
      v71 = GTShaderDebuggerMakeError(1u, @"Internal error: Unexpected request: Upgrade failure", 0, 0, 0);
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v61 = v8;
  v556 = 0u;
  v557 = 0u;
  v558 = 0u;
  v559 = 0u;
  v62 = [&unk_2860D5BD0 countByEnumeratingWithState:&v556 objects:__dst count:16];
  if (v62)
  {
    v63 = *v557;
    while (2)
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v557 != v63)
        {
          objc_enumerationMutation(&unk_2860D5BD0);
        }

        v65 = [v61 objectForKeyedSubscript:*(*(&v556 + 1) + 8 * i)];
        v66 = v65 == 0;

        if (v66)
        {

          goto LABEL_79;
        }
      }

      v62 = [&unk_2860D5BD0 countByEnumeratingWithState:&v556 objects:__dst count:16];
      if (v62)
      {
        continue;
      }

      break;
    }
  }

  v67 = [v61 objectForKeyedSubscript:@"Program"];
  v68 = [v67 objectForKeyedSubscript:@"FunctionUIDs"];
  v69 = v68 == 0;

  if (v69)
  {
    goto LABEL_78;
  }

  v70 = [v67 objectForKeyedSubscript:@"MetalLibs"];
  if (!v70)
  {
    v73 = [v67 objectForKeyedSubscript:@"SourceLibs"];
    v74 = v73 == 0;

    if (!v74)
    {
      goto LABEL_61;
    }

LABEL_78:

    goto LABEL_79;
  }

LABEL_61:
  v75 = [v61 objectForKeyedSubscript:@"ROI"];
  v76 = [v75 objectForKeyedSubscript:@"Type"];
  v77 = v76;
  if (!v76 || (v78 = [v76 unsignedIntegerValue] - 1, v78 > 5))
  {
LABEL_77:

LABEL_79:
    if (v487)
    {
      v71 = GTShaderDebuggerMakeError(1u, @"Internal error: Invalid request", 0, 0, 0);
      v72 = 0;
      goto LABEL_81;
    }

    v72 = 0;
    goto LABEL_83;
  }

  v79 = qword_279658A10[v78];
  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v547 = 0u;
  v80 = [v79 countByEnumeratingWithState:&v547 objects:&v543 count:16];
  if (v80)
  {
    v81 = *v548;
LABEL_65:
    v82 = 0;
    while (1)
    {
      if (*v548 != v81)
      {
        objc_enumerationMutation(v79);
      }

      v83 = [v75 objectForKeyedSubscript:*(*(&v547 + 1) + 8 * v82)];
      v84 = v83 == 0;

      if (v84)
      {
        goto LABEL_77;
      }

      if (v80 == ++v82)
      {
        v80 = [v79 countByEnumeratingWithState:&v547 objects:&v543 count:16];
        if (v80)
        {
          goto LABEL_65;
        }

        break;
      }
    }
  }

  v85 = [v61 objectForKeyedSubscript:@"Options"];
  v86 = [v85 objectForKeyedSubscript:@"SkipMetadataGen"];

  v87 = [v86 BOOLValue];
  v88 = [v61 objectForKeyedSubscript:@"Options"];
  v89 = [v88 objectForKeyedSubscript:@"SaveTempsDir"];

  if ([v89 length])
  {
    v90 = v87 ^ 1u | 8;
  }

  else
  {
    v90 = v87 ^ 1u;
  }

  v91 = [v61 objectForKeyedSubscript:@"Program"];
  v92 = [v91 objectForKeyedSubscript:@"TraceBufferBindingType"];

  v93 = [v92 integerValue];
  if (v93 == 2)
  {
    v90 |= 4uLL;
  }

  else if (v93 == 1)
  {
    v90 |= 2uLL;
  }

  v173 = [v494[1] defaultDevice];
  v174 = [v173 supportsFamily:1001];

  if (v174)
  {
    v72 = v90;
  }

  else
  {
    v72 = v90 | 0x10;
  }

  v61 = v61;
  v94 = v61;
LABEL_84:

  if (!v94)
  {
LABEL_144:

    goto LABEL_145;
  }

  v95 = [v94 objectForKeyedSubscript:@"FunctionIndex"];
  v96 = [v95 unsignedIntValue];

  v97 = *(*(*v494 + 128) + 24);
  if (v72)
  {
    if (_IsLLVMDylibLoaded_onceToken != -1)
    {
      dispatch_once(&_IsLLVMDylibLoaded_onceToken, &__block_literal_global_7592);
    }

    if ((_IsLLVMDylibLoaded_llvmLoaded & 1) == 0)
    {
      v103 = [MEMORY[0x277CCA8D8] mainBundle];
      v101 = [v103 infoDictionary];

      v104 = [v101 objectForKeyedSubscript:@"DTPlatformName"];
      v105 = [v101 objectForKeyedSubscript:@"DTPlatformVersion"];
      if ([v104 length] && objc_msgSend(v105, "length"))
      {
        v106 = [&unk_2860D62B8 objectForKeyedSubscript:v104];
        v107 = v106;
        if (v106)
        {
          v108 = [v106 stringByAppendingString:v105];
          v109 = [v108 stringByAppendingString:@" or later"];
        }

        else
        {
          v109 = 0;
        }
      }

      else
      {
        v109 = 0;
      }

      if (v109)
      {
        v156 = v109;
      }

      else
      {
        v156 = @"the latest version available";
      }

      v157 = [@"Please update your target OS to " stringByAppendingString:v156];
      if (v487)
      {
        *v487 = GTShaderDebuggerMakeError(4u, @"Debugging information not available from the target OS", v157, 0, 0);
      }

      goto LABEL_143;
    }
  }

  if ((v72 & 4) == 0)
  {
    goto LABEL_90;
  }

  v101 = [v494[1] defaultDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v101 supportsTLS] || ((objc_opt_respondsToSelector() & 1) == 0 ? (v102 = 1) : (v102 = objc_msgSend(v101, "supportsGlobalVariableRelocationCompute") ^ 1), (objc_opt_respondsToSelector() & 1) == 0 ? (v154 = 1) : (v154 = objc_msgSend(v101, "supportsGlobalVariableRelocationRender") ^ 1), !GTFenum_isComputeCall(*(v97 + (v96 << 6) + 8)) ? (v155 = v154) : (v155 = v102), v155 == 1))
  {
    if (v487)
    {
      *v487 = GTShaderDebuggerMakeError(4u, @"The metal device does not support debugging shaders in pipelines created with multiple metal libraries", 0, 0, 0);
    }

LABEL_143:

    goto LABEL_144;
  }

LABEL_90:
  v98 = [v488 objectForKeyedSubscript:@"Options"];
  v99 = [v98 objectForKeyedSubscript:@"SaveTempsDir"];

  if ([v99 length])
  {
    v100 = v99;
  }

  else
  {
    v100 = NSTemporaryDirectory();
  }

  v110 = v100;
  v111 = [v100 stringByAppendingPathComponent:@"GTMTLReplay_ShaderDebugger"];
  v112 = [MEMORY[0x277CCAA00] defaultManager];
  v535 = 0;
  v113 = [v112 createDirectoryAtPath:v111 withIntermediateDirectories:1 attributes:0 error:&v535];
  v114 = v535;

  if (v113)
  {
    v516 = v494;
    objc_storeStrong(&v531 + 1, v94);
    objc_storeStrong(&v532, v111);
    v533 = v72;
  }

  else if (v487)
  {
    *v487 = GTShaderDebuggerMakeError(1u, @"Internal error", 0, v114, 0);
  }

  if ((v113 & 1) == 0)
  {
    goto LABEL_145;
  }

  v115 = [*(&v531 + 1) objectForKeyedSubscript:@"FunctionIndex"];
  v116 = [v115 unsignedIntValue];

  v117 = [*(&v531 + 1) objectForKeyedSubscript:@"SubCommandIndex"];
  v118 = [v117 unsignedIntValue];

  v119 = v516;
  v120 = v116 + 1;
  GTMTLReplayController_debugSubCommandResume(v516, v120, v118);
  v121 = *(v516 + 2840);
  if (v121 != 28 && v121 != 70)
  {
    v141 = v121 - 1;
    if (v141 > 0x6D)
    {
      v142 = "Unknown";
    }

    else
    {
      v142 = off_2796593E8[v141];
    }

    v161 = MEMORY[0x277CCACA8];
    v162 = [MEMORY[0x277CCACA8] stringWithUTF8String:v142];
    v163 = [v161 stringWithFormat:@"Unsupported encoder: %@", v162];

    if (v487)
    {
      *v487 = GTShaderDebuggerMakeError(4u, v163, 0, 0, 0);
    }

    goto LABEL_145;
  }

  *(v516 + 5640) = v120;
  *(v119 + 5641) = v118;
  v122 = v516;
  v123 = v516 + 2560;
  v124 = *(v516 + 5640);
  v125 = *(*(*v516 + 128) + 24);
  v126 = [*(&v531 + 1) objectForKeyedSubscript:@"ROI"];
  v127 = [v126 objectForKeyedSubscript:@"Type"];
  v484 = [v127 integerValue];

  v128 = v125 + ((v124 - 1) << 6);
  if (*(v128 + 8) >> 2 != 1073737833)
  {
    v130 = 0;
    goto LABEL_119;
  }

  v129 = apr_palloc(p, 0x148uLL);
  v130 = v129;
  if (v129)
  {
    v129[40] = 0;
    *(v129 + 18) = 0u;
    *(v129 + 19) = 0u;
    *(v129 + 16) = 0u;
    *(v129 + 17) = 0u;
    *(v129 + 14) = 0u;
    *(v129 + 15) = 0u;
    *(v129 + 12) = 0u;
    *(v129 + 13) = 0u;
    *(v129 + 10) = 0u;
    *(v129 + 11) = 0u;
    *(v129 + 8) = 0u;
    *(v129 + 9) = 0u;
    *(v129 + 6) = 0u;
    *(v129 + 7) = 0u;
    *(v129 + 4) = 0u;
    *(v129 + 5) = 0u;
    *(v129 + 2) = 0u;
    *(v129 + 3) = 0u;
    *v129 = 0u;
    *(v129 + 1) = 0u;
  }

  v131 = *v122;
  GTMTLSMContext_indirectCommandBufferResources(__dst, *(*v122 + 5), *v128, p);
  v132 = *&__dst[64];
  v133 = *&__dst[80];
  v134 = *&__dst[32];
  *(v130 + 264) = *&__dst[48];
  *(v130 + 280) = v132;
  *(v130 + 296) = v133;
  v135 = *&__dst[16];
  *(v130 + 216) = *__dst;
  *(v130 + 232) = v135;
  *(v130 + 312) = *&__dst[96];
  *(v130 + 248) = v134;
  *&v545 = 0;
  v544 = 0u;
  v543 = 0u;
  GetExecuteCommandsInBufferArgs(&v543, v128, *(v131 + 2));
  Object = GTMTLSMContext_getObject(**(v131 + 5), v543, *v128);
  GTMTLCreateIndirectCommandEncoder(v130, Object[14]);
  v137 = *(&v544 + 1) + *(v130 + 208) * *(v123 + 521);
  *(v130 + 320) = v137;
  if (*(v516 + 2840) == 70)
  {
    memcpy(__dst, v122 + 31, sizeof(__dst));
    if (GTMTLSMRenderCommandEncoder_loadIndirectCommand((v122 + 31), v130, *(v130 + 320), (v130 + 216)))
    {
      v138 = v122[1];
      v139 = v138;
      if (*(v516 + 2840))
      {
        v140 = v516[25];
      }

      else
      {
        v140 = 0;
      }

      v172 = [v138 renderCommandEncoderForKey:v140];
      GTMTLReplayController_restoreRenderCommandEncoder(v172, __dst, (v122 + 31), v139);

      goto LABEL_119;
    }

LABEL_157:
    if (!v487)
    {
      goto LABEL_145;
    }

    v167 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to decode ICB", 0, 0, 0);
    goto LABEL_159;
  }

  if ((GT_SUPPORT_0 & 0x10) == 0)
  {
    goto LABEL_157;
  }

  memcpy(__dst, v122 + 31, 0x8D0uLL);
  if ((GTMTLSMComputeCommandEncoder_loadIndirectCommand((v122 + 31), v130, v137, (v130 + 216)) & 1) == 0)
  {
    goto LABEL_157;
  }

  v164 = v122[1];
  v165 = v164;
  if (*(v516 + 2840))
  {
    v166 = v516[25];
  }

  else
  {
    v166 = 0;
  }

  v175 = [v164 computeCommandEncoderForKey:v166];
  GTMTLReplayController_restoreComputeCommandEncoder(v175, __dst, (v122 + 31), v165);

LABEL_119:
  v143 = *v128;
  v144 = *(v516 + 2840);
  *&v479 = v130;
  *(&v479 + 1) = v128;
  if (v144 == 70)
  {
    v168 = GTMTLSMContext_getObject(**(*v516 + 40), v516[1099], v143);
    if (!v168)
    {
      goto LABEL_182;
    }

    v171 = v168[7];
    if (!v171)
    {
      goto LABEL_182;
    }

    if (v484 > 3)
    {
      if (v484 != 4)
      {
        if (v484 == 5)
        {
          v147 = (v171 + 40);
          v148 = (v171 + 204);
          v149 = 510;
          v150 = 478;
          v151 = 669;
          v152 = 541;
          v153 = 479;
          goto LABEL_457;
        }

        if (v484 == 6)
        {
          v147 = (v171 + 48);
          v148 = (v171 + 206);
          v149 = 717;
          v150 = 685;
          v151 = 876;
          v152 = 748;
          v153 = 686;
          goto LABEL_457;
        }

LABEL_181:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "_SetCurrentEncoderResourceBindings", 976, 4, "Unreachable", v169, v170, v462);
LABEL_182:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v499 = 0;
        v503 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 1;
        goto LABEL_183;
      }
    }

    else if (v484 != 1)
    {
      if (v484 == 2)
      {
        v147 = (v171 + 32);
        v148 = (v171 + 200);
        v149 = 303;
        v150 = 271;
        v151 = 462;
        v152 = 334;
        v153 = 272;
        goto LABEL_457;
      }

      if (v484 == 3)
      {
        v147 = (v171 + 56);
        v148 = (v171 + 202);
        v149 = 924;
        v150 = 892;
        v151 = 1083;
        v152 = 955;
        v153 = 893;
        goto LABEL_457;
      }

      goto LABEL_181;
    }

    v147 = (v171 + 24);
    v148 = (v171 + 198);
    v149 = 65;
    v150 = 32;
    v151 = 255;
    v152 = 127;
    v153 = 34;
    goto LABEL_457;
  }

  if (v144 != 28)
  {
    goto LABEL_182;
  }

  v145 = GTMTLSMContext_getObject(**(*v516 + 40), v516[32], v143);
  if (!v145)
  {
    goto LABEL_182;
  }

  v146 = v145[8];
  if (!v146)
  {
    goto LABEL_182;
  }

  v147 = (v146 + 32);
  v148 = (v146 + 94);
  v149 = 66;
  v150 = 33;
  v151 = 256;
  v152 = 128;
  v153 = 35;
LABEL_457:
  v182 = 0;
  v417 = *v148;
  v176 = &v516[v153];
  v177 = &v516[v152];
  v178 = &v516[v151];
  v499 = &v516[v149];
  v503 = &v516[v150];
  v181 = 16;
  v180 = 128;
  v179 = 31;
  if (*v148)
  {
    v418 = *v147;
    if (*v147)
    {
      v495 = objc_alloc_init(MEMORY[0x277CBEB38]);
      obja = objc_alloc_init(MEMORY[0x277CBEB38]);
      v513 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v508 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v419 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v478 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v420 = (v418 + 18);
      while (1)
      {
        v421 = *(v420 - 2);
        if (v421 > 2)
        {
          if (v421 == 3)
          {
            v422 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v178[*v420]];
            v423 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v420];
            [v508 setObject:v422 forKeyedSubscript:v423];
            goto LABEL_471;
          }

          if (v421 == 24)
          {
            v422 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v176[*v420]];
            v423 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v420];
            [v419 setObject:v422 forKeyedSubscript:v423];
            goto LABEL_471;
          }
        }

        else
        {
          if (!*(v420 - 2))
          {
            v424 = *v420;
            v425 = v176[v424];
            if ((*(v503 + ((v424 >> 3) & 0x18)) >> v424))
            {
              v426 = v499[v424];
              v422 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v425];
              *__dst = v422;
              v423 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v426];
              *&__dst[8] = v423;
              v427 = [MEMORY[0x277CBEA60] arrayWithObjects:__dst count:2];
              v428 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v420];
              [v495 setObject:v427 forKeyedSubscript:v428];
            }

            else
            {
              v422 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v425];
              v423 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v420];
              [obja setObject:v422 forKeyedSubscript:v423];
            }

            goto LABEL_471;
          }

          if (v421 == 2)
          {
            v422 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v177[*v420]];
            v423 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v420];
            [v513 setObject:v422 forKeyedSubscript:v423];
LABEL_471:
          }
        }

        v420 += 56;
        if (!--v417)
        {
          v429 = [v495 copy];
          v430 = v518;
          *&v518 = v429;

          v431 = [obja copy];
          v432 = *(&v518 + 1);
          *(&v518 + 1) = v431;

          v433 = [v513 copy];
          v434 = v519;
          *&v519 = v433;

          v435 = [v508 copy];
          v436 = *(&v519 + 1);
          *(&v519 + 1) = v435;

          v437 = [v419 copy];
          v438 = v520;
          *&v520 = v437;

          v439 = [v478 copy];
          v440 = *(&v520 + 1);
          *(&v520 + 1) = v439;

          v500 = 0;
          goto LABEL_200;
        }
      }
    }
  }

LABEL_183:
  v495 = objc_alloc_init(MEMORY[0x277CBEB38]);
  obja = objc_alloc_init(MEMORY[0x277CBEB38]);
  v513 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v508 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ((v182 & 1) == 0)
  {
    v183 = 0;
    do
    {
      if (v177[v183])
      {
        v184 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v185 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v183];
        [v513 setObject:v184 forKeyedSubscript:v185];
      }

      ++v183;
    }

    while (v180 != v183);
    v186 = 0;
    do
    {
      if (v178[v186])
      {
        v187 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v188 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v186];
        [v508 setObject:v187 forKeyedSubscript:v188];
      }

      ++v186;
    }

    while (v181 != v186);
    v189 = 0;
    do
    {
      if (v176[v189])
      {
        if ((v503[v189 >> 6] >> v189))
        {
          v190 = v499[v189];
          v191 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
          *__dst = v191;
          v192 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v190];
          *&__dst[8] = v192;
          v193 = [MEMORY[0x277CBEA60] arrayWithObjects:__dst count:2];
          v194 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v189];
          [v495 setObject:v193 forKeyedSubscript:v194];
        }

        else
        {
          v191 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
          v192 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v189];
          [obja setObject:v191 forKeyedSubscript:v192];
        }
      }

      ++v189;
    }

    while (v179 != v189);
  }

  v195 = [v495 copy];
  v196 = v518;
  *&v518 = v195;

  v197 = [obja copy];
  v198 = *(&v518 + 1);
  *(&v518 + 1) = v197;

  v199 = [v513 copy];
  v200 = v519;
  *&v519 = v199;

  v201 = [v508 copy];
  v202 = *(&v519 + 1);
  *(&v519 + 1) = v201;

  v203 = v520;
  v204 = MEMORY[0x277CBEC10];
  *&v520 = MEMORY[0x277CBEC10];

  v205 = *(&v520 + 1);
  *(&v520 + 1) = v204;

  v500 = [obja count] != 0;
LABEL_200:

  v206 = *v516;
  InclusiveRange = GroupBuilder_findInclusiveRange(*(*(*v516 + 120) + 12), *(*(*v516 + 120) + 24), *(v516 + 5640));
  if (InclusiveRange)
  {
    while (1)
    {
      ConstructorType = GTFenum_getConstructorType(InclusiveRange[5]);
      isMTLCommandEncoder = GTFenum_isMTLCommandEncoder(ConstructorType);
      if (isMTLCommandEncoder)
      {
        break;
      }

      v210 = InclusiveRange[2];
      if (v210)
      {
        InclusiveRange -= 6 * v210;
      }

      else
      {
        InclusiveRange = 0;
      }

      if (!v210)
      {
        InclusiveRange = 0;
        break;
      }
    }

    v211 = !isMTLCommandEncoder;
  }

  else
  {
    v211 = 1;
  }

  v504 = v206;
  if (v500)
  {
    v509 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objb = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  else
  {
    objb = 0;
    v509 = 0;
  }

  v212 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v514 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ((v211 & 1) == 0)
  {
    v213 = *InclusiveRange;
    v214 = v213 + 1;
    if (v213 + 1 < InclusiveRange[1])
    {
      v496 = 0;
      v215 = (0x10080104020100uLL >> (8 * v484)) & 0x1F;
      if (v484 >= 7)
      {
        v215 = 0;
      }

      v475 = v215;
      while (1)
      {
        v216 = *(*(v504 + 128) + 24) + (v214 << 6);
        v217 = *(v216 + 8);
        if (v217 <= -16043)
        {
          if (v217 <= -16046)
          {
            if (v217 == -16047)
            {
LABEL_229:
              v223 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16)) + 1)}];
              [v212 addObject:v223];

              goto LABEL_258;
            }

            if (v217 == -16046)
            {
              v224 = GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16));
              v225 = GTTraceFunc_argumentBytesWithMap(v216, v224[24], *(v504 + 16));
              if (*(v224 + 1))
              {
                v226 = v225;
                v227 = 0;
                do
                {
                  v228 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v226[8 * v227]];
                  [v212 addObject:v228];

                  ++v227;
                }

                while (v227 < *(v224 + 1));
              }
            }
          }

          else
          {
            if (v217 == -16045)
            {
LABEL_245:
              v234 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*(GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16)) + 1)}];
              [v514 addObject:v234];

              goto LABEL_258;
            }

            if (v217 != -16044)
            {
              goto LABEL_229;
            }

            v229 = GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16));
            v230 = GTTraceFunc_argumentBytesWithMap(v216, v229[16], *(v504 + 16));
            if (*(v229 + 1))
            {
              v231 = v230;
              v232 = 0;
              do
              {
                v233 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v231[8 * v232]];
                [v514 addObject:v233];

                ++v232;
              }

              while (v232 < *(v229 + 1));
            }
          }
        }

        else if (v217 > -15820)
        {
          switch(v217)
          {
            case -15819:
              v246 = GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16));
              if ((*(v246 + 3) & v475) != 0)
              {
                v247 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v246 + 1)];
                [v212 addObject:v247];
              }

              break;
            case -15818:
              v235 = GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16));
              if ((*(v235 + 3) & v475) != 0)
              {
                v236 = v235;
                v237 = GTTraceFunc_argumentBytesWithMap(v216, v235[32], *(v504 + 16));
                if (*(v236 + 1))
                {
                  v238 = v237;
                  v239 = 0;
                  do
                  {
                    v240 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v238[8 * v239]];
                    [v212 addObject:v240];

                    ++v239;
                  }

                  while (v239 < *(v236 + 1));
                }
              }

              break;
            case -15732:
              v496 = *(GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16)) + 2) != 0;
              break;
          }
        }

        else
        {
          switch(v217)
          {
            case -16042:
              v241 = GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16));
              v242 = GTTraceFunc_argumentBytesWithMap(v216, v241[24], *(v504 + 16));
              if (*(v241 + 1))
              {
                v243 = v242;
                v244 = 0;
                do
                {
                  v245 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v243[8 * v244]];
                  [v212 addObject:v245];

                  ++v244;
                }

                while (v244 < *(v241 + 1));
              }

              break;
            case -16041:
              goto LABEL_245;
            case -16040:
              v218 = GTTraceFunc_argumentBytesWithMap((*(*(v504 + 128) + 24) + (v214 << 6)), *(v216 + 13), *(v504 + 16));
              v219 = GTTraceFunc_argumentBytesWithMap(v216, v218[16], *(v504 + 16));
              if (*(v218 + 1))
              {
                v220 = v219;
                v221 = 0;
                do
                {
                  v222 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v220[8 * v221]];
                  [v514 addObject:v222];

                  ++v221;
                }

                while (v221 < *(v218 + 1));
              }

              break;
          }
        }

LABEL_258:
        if (v500)
        {
          v248 = *(v216 + 8);
          if (v248 > -15452)
          {
            if (v248 <= -15447)
            {
              if (v248 == -15451)
              {
LABEL_275:
                if (v484 != 3)
                {
                  goto LABEL_295;
                }
              }

              else
              {
                if (v248 != -15450 || v484 != 3)
                {
                  goto LABEL_295;
                }

                v257 = GTTraceFunc_argumentBytesWithMap(v216, *(v216 + 13), *(v504 + 16));
                v258 = GTTraceFunc_argumentBytesWithMap(v216, v257[24], *(v504 + 16));
                v259 = *(v257 + 2);
                if (v259)
                {
                  v260 = v258;
                  v261 = *(v257 + 1);
                  do
                  {
                    v262 = *v260;
                    v260 += 8;
                    v263 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v262];
                    v264 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v261];
                    [v509 setObject:v263 forKeyedSubscript:v264];

                    ++v261;
                    --v259;
                  }

                  while (v259);
                  goto LABEL_275;
                }
              }

LABEL_294:
              v281 = GTTraceFunc_argumentBytesWithMap(v216, *(v216 + 13), *(v504 + 16));
              v282 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v281 + 1)];
              v283 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v281 + 2)];
              [v509 setObject:v282 forKeyedSubscript:v283];

              goto LABEL_295;
            }

            if (v248 != -15446)
            {
              if (v248 == -15445 && v484 == 1)
              {
                v273 = GTTraceFunc_argumentBytesWithMap(v216, *(v216 + 13), *(v504 + 16));
                v274 = GTTraceFunc_argumentBytesWithMap(v216, v273[24], *(v504 + 16));
                v275 = *(v273 + 2);
                if (v275)
                {
                  v276 = v274;
                  v277 = *(v273 + 1);
                  do
                  {
                    v278 = *v276;
                    v276 += 8;
                    v279 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v278];
                    v280 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v277];
                    [v509 setObject:v279 forKeyedSubscript:v280];

                    ++v277;
                    --v275;
                  }

                  while (v275);
                }
              }

              goto LABEL_295;
            }

            if (v484 == 1)
            {
              goto LABEL_294;
            }
          }

          else
          {
            if (v248 <= -15457)
            {
              if (v248 != -15581)
              {
                if (v248 == -15580 && v484 == 3)
                {
                  v249 = GTTraceFunc_argumentBytesWithMap(v216, *(v216 + 13), *(v504 + 16));
                  v250 = GTTraceFunc_argumentBytesWithMap(v216, v249[24], *(v504 + 16));
                  v251 = *(v249 + 2);
                  if (v251)
                  {
                    v252 = v250;
                    v253 = *(v249 + 1);
                    do
                    {
                      v254 = *v252;
                      v252 += 8;
                      v255 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v254];
                      v256 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v253];
                      [v509 setObject:v255 forKeyedSubscript:v256];

                      ++v253;
                      --v251;
                    }

                    while (v251);
                  }
                }

                goto LABEL_295;
              }

              goto LABEL_275;
            }

            if (v248 != -15456)
            {
              if (v248 == -15455 && v484 == 2)
              {
                v265 = GTTraceFunc_argumentBytesWithMap(v216, *(v216 + 13), *(v504 + 16));
                v266 = GTTraceFunc_argumentBytesWithMap(v216, v265[24], *(v504 + 16));
                v267 = *(v265 + 2);
                if (v267)
                {
                  v268 = v266;
                  v269 = *(v265 + 1);
                  do
                  {
                    v270 = *v268;
                    v268 += 8;
                    v271 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v270];
                    v272 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v269];
                    [v509 setObject:v271 forKeyedSubscript:v272];

                    ++v269;
                    --v267;
                  }

                  while (v267);
                }
              }

              goto LABEL_295;
            }

            if (v484 == 2)
            {
              goto LABEL_294;
            }
          }
        }

LABEL_295:
        if (++v214 >= InclusiveRange[1])
        {
          goto LABEL_298;
        }
      }
    }
  }

  v496 = 0;
LABEL_298:
  if (v500 && ([v509 count] || objc_msgSend(objb, "count")))
  {
    v284 = [*(&v518 + 1) mutableCopy];
    v558 = 0u;
    v559 = 0u;
    v556 = 0u;
    v557 = 0u;
    v285 = v509;
    v286 = [v285 countByEnumeratingWithState:&v556 objects:__dst count:16];
    if (v286)
    {
      v287 = *v557;
      do
      {
        for (j = 0; j != v286; ++j)
        {
          if (*v557 != v287)
          {
            objc_enumerationMutation(v285);
          }

          [v284 removeObjectForKey:*(*(&v556 + 1) + 8 * j)];
        }

        v286 = [v285 countByEnumeratingWithState:&v556 objects:__dst count:16];
      }

      while (v286);
    }

    v550 = 0u;
    v549 = 0u;
    v548 = 0u;
    v547 = 0u;
    v289 = objb;
    v290 = [v289 countByEnumeratingWithState:&v547 objects:&v543 count:16];
    if (v290)
    {
      v291 = *v548;
      do
      {
        for (k = 0; k != v290; ++k)
        {
          if (*v548 != v291)
          {
            objc_enumerationMutation(v289);
          }

          [v284 removeObjectForKey:*(*(&v547 + 1) + 8 * k)];
        }

        v290 = [v289 countByEnumeratingWithState:&v547 objects:&v543 count:16];
      }

      while (v290);
    }

    v293 = [v284 copy];
    v294 = *(&v518 + 1);
    *(&v518 + 1) = v293;

    v295 = [v285 copy];
    v296 = v520;
    *&v520 = v295;

    v297 = [v289 copy];
    v298 = *(&v520 + 1);
    *(&v520 + 1) = v297;
  }

  v299 = [v514 array];
  v300 = v517;
  *&v517 = v299;

  v301 = [v212 array];
  v302 = *(&v517 + 1);
  *(&v517 + 1) = v301;

  v521 = v521 & 0xFE | v496;
  v522 = v479;
  v501 = [*(&v531 + 1) objectForKeyedSubscript:@"Program"];
  v497 = [v501 objectForKeyedSubscript:@"Stitching"];
  if ([v497 count])
  {
    v515 = v497;
    v505 = [v523 copy];
    v510 = [v515 objectForKeyedSubscript:@"DAGMetalLibs"];
    if ((GTShaderDebuggerMakeRuntimeLibrariesFromMetallibs(&v516, v510, v487) & 1) == 0)
    {
      v325 = [v505 copy];
      v326 = v523;
      v523 = v325;

      goto LABEL_447;
    }

    v485 = [v515 objectForKeyedSubscript:@"DAGFunctionUIDs"];
    if ((GTShaderDebuggerMakeRuntimeFunctions(&v516, v485, v487) & 1) == 0)
    {
      v327 = [v505 copy];
      v328 = v523;
      v523 = v327;

      goto LABEL_447;
    }

    v303 = [v523 copy];
    v304 = [v505 allKeys];
    v305 = [v303 allKeys];
    v306 = [v305 mutableCopy];

    [v306 removeObjectsInArray:v304];
    v476 = [v306 copy];

    v307 = [v515 objectForKeyedSubscript:@"LibraryUIDs"];
    v480 = [v523 mutableCopy];
    v482 = [v516[1] defaultDevice];
    v308 = *(*v516 + 40);
    v309 = **(&v522 + 1);
    v543 = 0u;
    v544 = 0u;
    v545 = 0u;
    v546 = 0u;
    objc = v307;
    v310 = [objc countByEnumeratingWithState:&v543 objects:__dst count:16];
    if (v310)
    {
      v311 = *v544;
LABEL_321:
      v312 = 0;
      while (1)
      {
        if (*v544 != v311)
        {
          objc_enumerationMutation(objc);
        }

        v313 = *(*(&v543 + 1) + 8 * v312);
        v314 = _ObjectUIDsWithAliasID(&v516, [v313 unsignedLongLongValue]);
        if (![v314 count])
        {
          v462 = v313;
          v329 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Library '%@' not found"];
          if (v487)
          {
            *v487 = GTShaderDebuggerMakeError(1u, v329, 0, 0, 0);
          }

          goto LABEL_346;
        }

        v315 = [v314 firstObject];
        v316 = GTMTLSMContext_lastFunction(*v308, [v315 unsignedLongLongValue], v309);

        if (!v316)
        {
          break;
        }

        if (*(v316 + 177) != 6)
        {
          v462 = *(v316 + 177);
          v329 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Unexpected library data type (%d)"];
          if (v487)
          {
            *v487 = GTShaderDebuggerMakeError(1u, v329, 0, 0, 0);
          }

LABEL_346:

LABEL_355:
LABEL_356:
          v324 = 0;
          v323 = objc;
          goto LABEL_357;
        }

        v317 = *(v316 + 88);
        if (!v317)
        {
          if (v487)
          {
            v330 = *(v316 + 96);
            if (v330)
            {
              v331 = @"[MTLDevice newLibraryWithDAG:functions:error:] is not supported";
            }

            else
            {
              v331 = @"Internal error: Failed to read stitched library descriptor";
            }

            if (v330)
            {
              v332 = 4;
            }

            else
            {
              v332 = 1;
            }

            *v487 = GTShaderDebuggerMakeError(v332, v331, 0, 0, 0);
          }

          goto LABEL_355;
        }

        v318 = MakeMTLStitchedLibraryDescriptor(v317, v523);
        *&v556 = 0;
        v319 = [v482 newLibraryWithStitchedDescriptor:v318 error:&v556];
        v320 = v556;
        if (v319)
        {
          v321 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v316 + 8)];
          [v480 setObject:v319 forKeyedSubscript:v321];
        }

        else if (v487)
        {
          *v487 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up runtime stitched library", 0, v320, 0);
        }

        if (!v319)
        {
          goto LABEL_356;
        }

        if (v310 == ++v312)
        {
          v310 = [objc countByEnumeratingWithState:&v543 objects:__dst count:16];
          if (v310)
          {
            goto LABEL_321;
          }

          goto LABEL_335;
        }
      }

      v462 = v313;
      v329 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Library '%@' not found"];
      if (v487)
      {
        *v487 = GTShaderDebuggerMakeError(1u, v329, 0, 0, 0);
      }

      goto LABEL_346;
    }

LABEL_335:

    v322 = [v480 copy];
    v323 = v523;
    v523 = v322;
    v324 = 1;
LABEL_357:

    v333 = [v523 mutableCopy];
    [v333 removeObjectsForKeys:v476];
    v334 = [v333 copy];
    v335 = v523;
    v523 = v334;

    if (!v324)
    {
      goto LABEL_448;
    }
  }

  v473 = [v501 objectForKeyedSubscript:@"SourceLibs"];
  if ([v473 count])
  {
    v515 = v473;
    v483 = [v515 count];
    if (!v483)
    {
      if (v487)
      {
        *v487 = GTShaderDebuggerMakeError(4u, @"No source", 0, 0, 0);
      }

      goto LABEL_447;
    }

    v463 = v516[1];
    v477 = [v463 defaultDevice];
    v472 = [v477 argumentBuffersSupport];
    v465 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v466 = [v523 mutableCopy];
    v336 = [v463 dynamicLibraries];
    v469 = [v336 mutableCopy];

    v474 = v483 - 1;
    v337 = (v533 >> 2) & 1;
    if (v483 != 1)
    {
      LODWORD(v337) = 1;
    }

    v471 = v337;
    v338 = *(&v522 + 1);
    v339 = *(*v516 + 40);
    v481 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v515, "count")}];
    v486 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v515, "count")}];
    v558 = 0u;
    v559 = 0u;
    v556 = 0u;
    v557 = 0u;
    v515 = v515;
    v340 = [v515 countByEnumeratingWithState:&v556 objects:__dst count:16];
    if (v340)
    {
      v341 = *v557;
LABEL_364:
      v342 = 0;
      while (1)
      {
        if (*v557 != v341)
        {
          objc_enumerationMutation(v515);
        }

        v343 = *(*(&v556 + 1) + 8 * v342);
        v344 = MEMORY[0x277CCABB0];
        v345 = [v343 unsignedIntegerValue];
        v346 = GetAliasStream(*(*v516 + 24), v345, **(&v522 + 1));
        v347 = v346 ? *v346 : 0;
        v348 = [v344 numberWithUnsignedLongLong:v347];
        v349 = GTMTLSMContext_lastFunction(*v339, [v348 unsignedLongLongValue], *v338);
        if (!v349 || *(v349 + 177) != 2)
        {
          break;
        }

        v350 = [MEMORY[0x277CCAE60] valueWithPointer:v349];
        [v481 setObject:v350 forKeyedSubscript:v348];

        [v486 setObject:v343 forKeyedSubscript:v348];
        if (v340 == ++v342)
        {
          v340 = [v515 countByEnumeratingWithState:&v556 objects:__dst count:16];
          if (!v340)
          {
            goto LABEL_374;
          }

          goto LABEL_364;
        }
      }

      v399 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid library %@: Expected library with source", v348];
      if (v487)
      {
        *v487 = GTShaderDebuggerMakeError(4u, v399, 0, 0, 0);
      }

      v364 = 0;
      v400 = 0;
      v401 = v515;
LABEL_436:

      if (v400)
      {
        goto LABEL_437;
      }

LABEL_447:

LABEL_448:
      goto LABEL_145;
    }

LABEL_374:

    v351 = [v481 allKeys];
    v551 = MEMORY[0x277D85DD0];
    v552 = 3221225472;
    v553 = __GTShaderDebuggerMakeRuntimeLibrariesFromSources_block_invoke;
    v554 = &unk_2796589A0;
    v468 = v481;
    v555 = v468;
    v352 = [v351 sortedArrayUsingComparator:&v551];

    v550 = 0u;
    v549 = 0u;
    v548 = 0u;
    v547 = 0u;
    v464 = v352;
    v470 = [v464 countByEnumeratingWithState:&v547 objects:&v543 count:16];
    if (!v470)
    {
      v511 = 0;
LABEL_433:

      v403 = [v466 copy];
      v404 = v523;
      v523 = v403;

      v405 = [v465 copy];
      v402 = v524;
      *&v524 = v405;
      v400 = 1;
LABEL_434:
      v364 = v511;
LABEL_435:

      v401 = v555;
      goto LABEL_436;
    }

    v511 = 0;
    v467 = *v548;
LABEL_376:
    v353 = 0;
    while (1)
    {
      if (*v548 != v467)
      {
        objc_enumerationMutation(v464);
      }

      v354 = *(*(&v547 + 1) + 8 * v353);
      objd = [v486 objectForKeyedSubscript:v354];
      v355 = [v468 objectForKeyedSubscript:v354];
      v356 = [v355 pointerValue];

      v506 = [v515 objectForKeyedSubscript:objd];
      v357 = [v506 objectForKeyedSubscript:@"Code"];
      if (v483 == 1)
      {
        [v465 setObject:v357 forKeyedSubscript:@"/program_source"];
        goto LABEL_388;
      }

      v358 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v359 = [v357 rangeOfCharacterFromSet:v358];

      if (v359 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_381;
      }

      v363 = [v357 substringToIndex:v359];
      if (([v363 containsString:@"#line"] & 1) == 0 && (objc_msgSend(v363, "containsString:", @"# line") & 1) == 0)
      {
        break;
      }

      v364 = v511;
LABEL_387:

      v511 = v364;
LABEL_388:
      v367 = *(v356 + 120);
      if (v367)
      {
        v368 = MakeMTLCompileOptions(v367, v469);
      }

      else
      {
        v368 = objc_alloc_init(MEMORY[0x277CD6D10]);
      }

      v369 = v368;
      v370 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v371 = [v369 additionalCompilerArguments];
      v372 = [v371 length];

      if (v372)
      {
        v373 = [v369 additionalCompilerArguments];
        [v370 addObject:v373];
      }

      if (v483 == 1)
      {
        [v370 addObject:@"-fno-tracepoint-instrument-line-markers"];
      }

      v374 = [v506 objectForKeyedSubscript:@"SelectFunctions"];
      if (v374)
      {
        [v370 addObject:@"-fno-tracepoint-default-instrument"];
        v375 = [v374 componentsJoinedByString:{@", "}];
        v376 = [@"-ftracepoint-instrument-functions=" stringByAppendingString:v375];
        [v370 addObject:v376];
      }

      if (!v472)
      {
        [v370 addObject:@"-fno-tracepoint-instrument-argument-buffers"];
      }

      if (v471)
      {
        [v370 addObject:@"-dynamic-libtracepoint"];
        [v370 addObject:{@"-Wl, -mllvm"}];
        [v370 addObject:{@"-Wl, -disable-legacy-trace-buffer"}];
        [v370 addObject:@"-fexternally-initialized"];
        [v370 addObject:{@"-Wl, -mllvm"}];
        [v370 addObject:{@"-Wl, -external-initialization"}];
        [v370 addObject:{@"-Wl, -mllvm"}];
        v377 = [MEMORY[0x277CCABB0] numberWithInteger:v474];
        v378 = [v377 stringValue];
        v379 = [@"-Wl __trace.base_id="];
        [v370 addObject:v379];

        --v474;
      }

      [v369 setTracingEnabled:1];
      v380 = [v370 componentsJoinedByString:@" "];
      [v369 setAdditionalCompilerArguments:v380];

      if (*(v356 + 176) == 1)
      {
        [v369 setLibraryType:1];
        v381 = v532;
        v382 = [v354 stringValue];
        v383 = [v382 stringByAppendingPathExtension:@"metallib"];
        v384 = [v381 stringByAppendingPathComponent:v383];
        [v369 setInstallName:v384];
      }

      v539[0] = v511;
      v385 = [v477 newLibraryWithSource:v357 options:v369 error:v539];
      v386 = v539[0];

      if (!v385)
      {
        if (v487)
        {
          GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up main function", 0, v386, 0);
          *v487 = v395 = 0;
        }

        else
        {
          v395 = 0;
        }

        goto LABEL_412;
      }

      if (*(v356 + 176) != 1)
      {
        v396 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v356 + 8)];
        [v466 setObject:v385 forKeyedSubscript:v396];

        v395 = 1;
LABEL_412:
        v511 = v386;
        goto LABEL_413;
      }

      v538[0] = v386;
      v387 = [v477 newDynamicLibrary:v385 error:v538];
      v511 = v538[0];

      if (v387)
      {
        DylibObjectIDForParentLibrary = _FindDylibObjectIDForParentLibrary(&v516, v356, v388, v389);
        if (!DylibObjectIDForParentLibrary)
        {
          v462 = v354;
          v397 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to resolve dynamic library %@"];
          if (v487)
          {
            *v487 = GTShaderDebuggerMakeError(1u, v397, 0, 0, 0);
          }

LABEL_421:
          v395 = 0;
          goto LABEL_413;
        }

        v391 = DylibObjectIDForParentLibrary;
        v392 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:DylibObjectIDForParentLibrary];
        [v466 setObject:v387 forKeyedSubscript:v392];

        v393 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v356 + 8)];
        [v466 setObject:v385 forKeyedSubscript:v393];

        v394 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v391];
        [v469 setObject:v387 forKeyedSubscript:v394];

        v395 = 1;
      }

      else
      {
        if (!v487)
        {
          goto LABEL_421;
        }

        GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up dynamic library", 0, v511, 0);
        *v487 = v395 = 0;
      }

LABEL_413:

      if (!v395)
      {
        v400 = 0;
        v402 = v464;
        goto LABEL_434;
      }

      if (v470 == ++v353)
      {
        v398 = [v464 countByEnumeratingWithState:&v547 objects:&v543 count:16];
        v470 = v398;
        if (v398)
        {
          goto LABEL_376;
        }

        goto LABEL_433;
      }
    }

LABEL_381:
    v360 = v532;
    v361 = [v354 stringValue];
    v362 = [v361 stringByAppendingPathExtension:@"metal"];
    v363 = [v360 stringByAppendingPathComponent:v362];

    v536[0] = v511;
    LODWORD(v361) = [v357 writeToFile:v363 atomically:1 encoding:4 error:v536];
    v364 = v536[0];

    if (!v361)
    {

      if (v487)
      {
        *v487 = GTShaderDebuggerMakeError(1u, @"Internal error trying to disambiguate libraries", 0, v364, 0);
      }

      v400 = 0;
      v402 = v464;
      goto LABEL_435;
    }

    v462 = v363;
    v365 = [MEMORY[0x277CCACA8] stringWithFormat:@"#line 1 %@\n"];
    v366 = [v365 stringByAppendingString:v357];

    v357 = v366;
    goto LABEL_387;
  }

LABEL_437:
  v406 = [v501 objectForKeyedSubscript:@"MetalLibs"];
  if ([v406 count] && !GTShaderDebuggerMakeRuntimeLibrariesFromMetallibs(&v516, v406, v487))
  {
    goto LABEL_446;
  }

  v407 = [v501 objectForKeyedSubscript:@"DependentLibs"];
  if ([v407 count] && !GTShaderDebuggerMakeRuntimeLibrariesFromDependentLibs(&v516, v407, v487))
  {
LABEL_445:

LABEL_446:
    v515 = v473;
    goto LABEL_447;
  }

  v408 = [v501 objectForKeyedSubscript:@"FunctionUIDs"];
  if (!GTShaderDebuggerMakeRuntimeFunctions(&v516, v408, v487))
  {

    goto LABEL_445;
  }

  if (v406)
  {
    [v406 allKeys];
  }

  else
  {
    [v473 allKeys];
  }
  v409 = ;
  DebugMetadata = GTShaderDebuggerMakeDebugMetadata(&v516, v408, v409, v487);

  if ((DebugMetadata & 1) == 0 || !GTShaderDebuggerMakeTraceBuffer(&v516, v487))
  {
    goto LABEL_145;
  }

  v415 = *(v516 + 2840);
  if (v415 != 70)
  {
    if (v415 == 28)
    {
      PSOCompute = GTShaderDebuggerMakePSOCompute(&v516, v487, v411, v412);
      goto LABEL_478;
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger.m", "GTMTLShaderDebugger_makePipelineState", 140, 4, "Unreachable", v413, v414, v462);
    if (!v487)
    {
      goto LABEL_145;
    }

    v167 = GTShaderDebuggerMakeError(1u, @"Internal error: Unknown encoder", 0, 0, 0);
LABEL_159:
    *v487 = v167;
    goto LABEL_145;
  }

  PSOCompute = GTShaderDebuggerMakePSORender(&v516, v487);
LABEL_478:
  if (!PSOCompute)
  {
    goto LABEL_145;
  }

  GTShaderDebuggerJITResources(&v516);
  v441 = v516;
  v442 = *(v516 + 2840);
  if (v442 == 28)
  {
    if (GTShaderDebuggerEncodeResourcesCompute(&v516, v487))
    {
      goto LABEL_486;
    }

LABEL_145:
    GTShaderDebuggerContextDeinit(&v516);
    v158 = 0;
    goto LABEL_146;
  }

  if (v442 == 70 && (GTShaderDebuggerEncodeResourcesRender(&v516, v487) & 1) == 0)
  {
    goto LABEL_145;
  }

LABEL_486:
  if (!GTShaderDebuggerExecuteEncoder(&v516, v487))
  {
    goto LABEL_145;
  }

  v443 = v441[1];
  *&v556 = 0;
  *(&v556 + 1) = &v556;
  *&v557 = 0x2020000000;
  BYTE8(v557) = 0;
  *__dst = 0;
  *&__dst[8] = __dst;
  *&__dst[16] = 0x3032000000;
  *&__dst[24] = __Block_byref_object_copy__454;
  *&__dst[32] = __Block_byref_object_dispose__455;
  *&__dst[40] = 0;
  v444 = [v443 commandBufferForKey:v441[29]];
  *&v543 = MEMORY[0x277D85DD0];
  *(&v543 + 1) = 3221225472;
  *&v544 = __GTMTLShaderDebugger_executeCommandEncoder_block_invoke;
  *(&v544 + 1) = &unk_2796574F8;
  *&v545 = __dst;
  *(&v545 + 1) = &v556;
  [v444 addCompletedHandler:&v543];

  [v443 commitCommandBuffers];
  v445 = [v441[1] defaultCommandQueue];
  [v445 finish];

  if (*(*(&v556 + 1) + 24) == 1)
  {
    v446 = [*(*&__dst[8] + 40) code];
    if (v446 != 9 && v446 != 3 || GTShaderDebuggerValidateUserEncoderBindings(&v516, v487))
    {
      v447 = [*(*&__dst[8] + 40) localizedDescription];
      v448 = [@"Internal error: Problem encountered during execution: " stringByAppendingString:v447];

      if (v487)
      {
        if ((v533 & 0x10) != 0)
        {
          v449 = 4;
        }

        else
        {
          v449 = 3;
        }

        *v487 = GTShaderDebuggerMakeError(v449, v448, 0, *(*&__dst[8] + 40), 0);
      }
    }

    _Block_object_dispose(__dst, 8);

    _Block_object_dispose(&v556, 8);
    goto LABEL_145;
  }

  _Block_object_dispose(__dst, 8);

  _Block_object_dispose(&v556, 8);
  v450 = v488;
  *&v556 = 0;
  v451 = GTShaderDebuggerMakeTraceData(&v516, &v556);
  v452 = v556;
  v453 = v452;
  if (v451)
  {
    v454 = MEMORY[0x277CBEB38];
    *__dst = v451;
    *&v543 = @"TraceData";
    *(&v543 + 1) = @"ResourceMapping";
    v455 = GTShaderDebuggerMakeResourceMappings(&v516);
    *&__dst[8] = v455;
    v456 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:&v543 count:2];
    v457 = [v454 dictionaryWithDictionary:v456];

    v458 = v528;
    if (v458)
    {
      [v457 setObject:v458 forKeyedSubscript:@"TraceMetadata"];
    }

    v158 = GTShaderDebuggerSanitizeResponse(v457, v450, v516, v487);

    goto LABEL_510;
  }

  if ([v452 code] == 3)
  {
    v459 = GTShaderDebuggerValidateUserComputeDispatch(&v516, v487);
    if (v487)
    {
      v460 = v459;
    }

    else
    {
      v460 = 0;
    }

    if ((v460 & 1) == 0)
    {
      goto LABEL_507;
    }

LABEL_509:
    v461 = v453;
    v158 = 0;
    *v487 = v453;
    goto LABEL_510;
  }

  if (v487)
  {
    goto LABEL_509;
  }

LABEL_507:
  v158 = 0;
LABEL_510:

  GTShaderDebuggerContextDeinit(&v516);
LABEL_146:
  __destructor_8_S_S_s8_s16_S_s24_s32_s40_s48_s56_s64_S_s96_s104_s112_s120_S_s128_s136_S_s152_S_s168_s176_s184_s192_s200(&v516);

  v159 = *MEMORY[0x277D85DE8];

  return v158;
}