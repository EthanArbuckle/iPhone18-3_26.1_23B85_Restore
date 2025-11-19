void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::__emplace_unique_key_args<unsigned int,unsigned int &,GTEncoderSampleIndexInfo>(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

id GTSampleBufferManager::CurrentSampleBuffer(GTSampleBufferManager *this)
{
  v2 = *(this + 12);
  v3 = (v2 + 3) / (*(this + 2) >> 3);
  v5 = *(this + 3);
  v4 = *(this + 4);
  v6 = v4 - v5;
  if (v6 <= v3)
  {
    if (v5 != v4)
    {
      *(v4 - 1) = v2;
    }

    v7 = *(this + 5);
    if (v4 >= v7)
    {
      v8 = v7 - v5;
      if (v8 >> 2 <= v6 + 1)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = v8 >> 2;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v10);
    }

    *v4 = 0;
    *(this + 4) = v4 + 1;
    v11 = *(this + 13) + *(this + 12);
    *(this + 12) = 0;
    *(this + 13) = v11;
    if ([*(this + 2) count] <= v3)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *this;
      v14 = *(this + 2);
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"GTMTLReplayer_StreamingManager_Buffer_%u", v3];
      v16 = [v13 newCounterSampleBufferWithLength:v14 label:v15 error:0];

      if (v16)
      {
        [*(this + 2) addObject:v16];
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  if ([*(this + 2) count] <= v3)
  {
    v17 = 0;
  }

  else
  {
    v17 = [*(this + 2) objectAtIndexedSubscript:v3];
  }

  return v17;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void GTUSCSamplingStreamingManagerHelper::InitQueryShaderInfo(GTUSCSamplingStreamingManagerHelper *this, GTUSCSamplingStreamingManager *a2)
{
  v133[1] = *MEMORY[0x277D85DE8];
  GTUSCSamplingStreamingManagerHelper::Init(this, a2);
  GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(v2);
  v3 = [*(&xmmword_27F09BCF8 + 1) count];
  if (v3)
  {
    v4 = v3;
    v5 = v3 != 1;
    v6 = (v3 - 1) <= 1 ? 1 : v3 - 1;
    std::vector<std::vector<GTMMappedBuffer>>::reserve(&xmmword_27F09C638, v6);
    std::vector<std::vector<GTMMappedBuffer>>::reserve(&qword_27F09C620, v6);
    std::vector<std::vector<GTMMappedBuffer>>::reserve(&xmmword_27F09C668, v6);
    std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::reserve(&qword_27F09C680, v6);
    std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::reserve(&xmmword_27F09C698, v6);
    std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::reserve(&qword_27F09C6B0, v6);
    if (v4 > v5)
    {
      do
      {
        GTUSCSamplingStreamingManagerHelper::SetupBufferForSourceAtIndex(v5++, 1);
      }

      while (v4 != v5);
    }
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v8 = qword_27F09C4B0;
  qword_27F09C4B0 = v7;

  for (i = 0; i != 7; ++i)
  {
    v10 = qword_27F09C4B0;
    v11 = MEMORY[0x277D0AF28];
    v12 = [&unk_2860D5A20 objectAtIndexedSubscript:i];
    v13 = [v11 selectWithName:v12 options:0];
    [v10 addObject:v13];
  }

  v14 = [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 40) objectForKeyedSubscript:@"profileCounters"];
  v113 = [v14 mutableCopy];

  v15 = MEMORY[0x277CBEB98];
  v16 = [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 40) objectForKeyedSubscript:@"profileCounters32"];
  v108 = [v15 setWithArray:v16];

  v17 = [qword_27F09C4D8 count];
  v18 = HIDWORD(qword_27F09C580) > 1;
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(&xmmword_27F09BCF8 + 1), "count")}];
  v20 = xmmword_27F09C4C0;
  *&xmmword_27F09C4C0 = v19;

  v117 = v17 >> v18;
  v109 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v113, "count") + (v17 >> v18)}];
  v21 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v113, "count")}];
  for (j = 0; [v113 count] > j; ++j)
  {
    v23 = [v113 objectAtIndexedSubscript:j];
    v24 = [v108 containsObject:v23];

    v25 = MEMORY[0x277D0AF28];
    v26 = [v113 objectAtIndexedSubscript:j];
    if (v24)
    {
      v27 = 32;
    }

    else
    {
      v27 = 16;
    }

    v132 = @"Width";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
    v133[0] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:&v132 count:1];
    v30 = [v25 selectWithName:v26 options:v29];
    [v109 addObject:v30];

    v31 = [v113 objectAtIndexedSubscript:j];
    [v21 addObject:v31];
  }

  v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v113, "count")}];
  for (k = 0; k < [*(&xmmword_27F09BCF8 + 1) count]; ++k)
  {
    v33 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:?];
    v34 = [v33 availableCounters];
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v35 = v34;
    v36 = [v35 countByEnumeratingWithState:&v122 objects:v131 count:16];
    if (v36)
    {
      v37 = *v123;
      do
      {
        for (m = 0; m != v36; ++m)
        {
          if (*v123 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v122 + 1) + 8 * m);
          v40 = [v39 name];
          v41 = [v21 containsObject:v40];

          if (v41)
          {
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v39, "counterValueType")}];
            v43 = [v39 name];
            [v32 setObject:v42 forKeyedSubscript:v43];
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v122 objects:v131 count:16];
      }

      while (v36);
    }
  }

  v105 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(v109);
  v44 = [v105 objectForKeyedSubscript:@"passList"];
  v110 = [v44 objectAtIndexedSubscript:0];

  v104 = [MEMORY[0x277CBEB18] arrayWithCapacity:{4 * objc_msgSend(qword_27F09C4D8, "count") + 7}];
  v106 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v109, "count")}];
  v107 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v105, "count")}];
  v45 = 0;
  v114 = 0;
  v116 = 0;
  while (v45 < [v110 count])
  {
    v111 = [v110 objectAtIndexedSubscript:v45];
    v112 = v45;
    if ([v111 count])
    {
      v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v111, "count")}];
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v47 = v111;
      v48 = [v47 countByEnumeratingWithState:&v118 objects:v130 count:16];
      if (v48)
      {
        v49 = *v119;
        do
        {
          for (n = 0; n != v48; ++n)
          {
            if (*v119 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = [*(*(&v118 + 1) + 8 * n) name];
            [v46 addObject:v51];
          }

          v48 = [v47 countByEnumeratingWithState:&v118 objects:v130 count:16];
        }

        while (v48);
      }

      v52 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:v112];
      v53 = [v52 name];
      [v107 setObject:v46 forKeyedSubscript:v53];

      [v106 addObjectsFromArray:v46];
      v54 = MEMORY[0x277CBEB18];
      v55 = [qword_27F09C4B0 copy];
      v56 = [v54 arrayWithArray:v55];

      [v56 addObjectsFromArray:v47];
      [xmmword_27F09C4C0 addObject:v56];
      v57 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:v112];
      v58 = [v57 name];
      if ([v58 isEqualToString:@"RDE_0"])
      {

        goto LABEL_45;
      }

      v64 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:v112];
      v65 = [v64 name];
      v66 = [v65 isEqualToString:@"RDE"];

      if (v66)
      {
LABEL_45:
        v116 = v112;
      }

      goto LABEL_47;
    }

    if (HIDWORD(qword_27F09C580) >= 2 && [qword_27F09C4D8 count] && (objc_msgSend(*(&xmmword_27F09BCF8 + 1), "objectAtIndexedSubscript:", v45), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "name"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqualToString:", @"RDE_1"), v60, v59, v61))
    {
      v62 = xmmword_27F09C4C0;
      v46 = [qword_27F09C4B0 mutableCopy];
      [v62 addObject:v46];
      v114 = v112;
    }

    else
    {
      v63 = xmmword_27F09C4C0;
      v46 = objc_opt_new();
      [v63 addObject:v46];
    }

LABEL_47:

    v45 = v112 + 1;
  }

  v67 = v106;

  if (HIDWORD(qword_27F09C580) <= 1)
  {
    v68 = [qword_27F09C4D8 count];
  }

  else
  {
    v68 = ([qword_27F09C4D8 count] + 1) >> 1;
  }

  v69 = 8 * v68;
  v70 = 224 - [xmmword_27F09C4C0 count];
  if (v70 >= 8 * v68)
  {
    v71 = 0;
    do
    {
      if (v117)
      {
        for (ii = 0; ii != v117; ++ii)
        {
          v73 = [xmmword_27F09C4C0 objectAtIndexedSubscript:v116];
          v74 = MEMORY[0x277D0AF28];
          v75 = [qword_27F09C4D8 objectAtIndexedSubscript:ii];
          v76 = [v74 selectWithName:v75 options:0];
          [v73 addObject:v76];
        }
      }

      v77 = v117;
      if (HIDWORD(qword_27F09C580) >= 2)
      {
        while (v77 < [qword_27F09C4D8 count])
        {
          v78 = [xmmword_27F09C4C0 objectAtIndexedSubscript:v114];
          v79 = MEMORY[0x277D0AF28];
          v80 = [qword_27F09C4D8 objectAtIndexedSubscript:v77];
          v81 = [v79 selectWithName:v80 options:0];
          [v78 addObject:v81];

          ++v77;
        }
      }

      if (v71 > 2)
      {
        break;
      }

      ++v71;
      v70 -= v69;
    }

    while (v70 >= v69);
  }

  v82 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v83 = qword_27F09C4E8;
  qword_27F09C4E8 = v82;

  v84 = qword_27F09C4E8;
  v85 = [MEMORY[0x277D0AF30] selectWithName:@"TimerNClock" options:&unk_2860D5CC8];
  [v84 addObject:v85];

  v86 = qword_27F09C4E8;
  v87 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v86 addObject:v87];

  v88 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v89 = qword_27F09C4F0;
  qword_27F09C4F0 = v88;

  v90 = qword_27F09C4F0;
  v91 = [MEMORY[0x277D0AF30] selectWithName:@"TimerNClock" options:&unk_2860D5CF0];
  [v90 addObject:v91];

  v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v93 = qword_27F09C4F8;
  qword_27F09C4F8 = v92;

  v94 = qword_27F09C4F8;
  v95 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
  [v94 addObject:v95];

  if (v117)
  {
    v128[0] = @"BufferSizeInKB";
    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20480];
    v128[1] = @"RingBufferSizeInKB";
    v129[0] = v96;
    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20480];
    v129[1] = v97;
    v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:2];
    v99 = qword_27F09C510;
    qword_27F09C510 = v98;
  }

  else
  {
    v126[1] = @"BufferSizeInKB";
    v127[0] = &unk_2860D6410;
    v126[0] = @"ShaderProfiler";
    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20480 * qword_27F09C580];
    v127[1] = v96;
    v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:2];
    v97 = qword_27F09C510;
    qword_27F09C510 = v100;
  }

  v101 = GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  qword_27F09C478 = [qword_27F09C498 mutableBytes];
  [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 40) setObject:v67 forKeyedSubscript:@"limiter sample counters"];
  [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 40) setObject:v32 forKeyedSubscript:@"Counter Info"];
  [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 40) setObject:v107 forKeyedSubscript:@"Limiter Counter List Map"];
  v102 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 40);
  (*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 32) + 16))();
  HIDWORD(qword_27F09C588) = 12;
  [*(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 1) setup];

  v103 = *MEMORY[0x277D85DE8];
}

void GTUSCSamplingStreamingManagerHelper::Init(GTUSCSamplingStreamingManagerHelper *this, GTUSCSamplingStreamingManager *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  if (GTUSCSamplingStreamingManagerHelper::Instance(void)::instance)
  {
    GTUSCSamplingStreamingManagerHelper::CleanUp(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  }

  else
  {
    ClearCaches();
  }

  if (!xmmword_27F09C6C8)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = xmmword_27F09C6C8;
    *&xmmword_27F09C6C8 = v3;
  }

  *&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance = this;
  atomic_store(this, &xmmword_27F09C7D8);
  v5 = [*(*this + 8) defaultDevice];
  GTAGXPerfStateControl::InitWithDevice(&unk_27F09BD10, v5);

  qword_27F09BD28 = 30;
  v6 = *MEMORY[0x277CD28A0];
  v7 = IOServiceMatching("ApplePMP");
  MatchingService = IOServiceGetMatchingService(v6, v7);
  if (MatchingService)
  {
    v9 = 2;
    if (!dword_27F09C440)
    {
      v9 = 13;
    }
  }

  else
  {
    v10 = IOServiceMatching("ApplePMPv2");
    MatchingService = IOServiceGetMatchingService(v6, v10);
    if (!MatchingService)
    {
      goto LABEL_26;
    }

    dword_27F09C440 = 1;
    v9 = 2;
  }

  v11 = xmmword_24DA8B910;
  v12 = &dword_27F09C448;
  v13 = 6;
  v14 = vdupq_n_s64(5uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v14, v11)).u8[0])
    {
      *(v12 - 1) = v9;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v11)).i32[1])
    {
      *v12 = v9 + 1;
    }

    v11 = vaddq_s64(v11, v15);
    v9 += 2;
    v12 += 2;
    v13 -= 2;
  }

  while (v13);
  v16 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, qword_27F09BD30);
  if (v16)
  {
    if (g_runningInCI)
    {
      v17 = "#CI_ERROR# ";
    }

    else
    {
      v17 = "";
    }

    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v16)];
    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "Open", 182, 2, "%s%s %u: IOServiceOpen (0x%x - %@)\n", v18, v19, v17);
  }

  else if (LODWORD(qword_27F09BD30[0]) && (memset(output, 0, sizeof(output)), outputCnt[0] = 1, !IOConnectCallMethod(qword_27F09BD30[0], dword_27F09C444, 0, 0, 0, 0, output, outputCnt, 0, 0)))
  {
    qword_27F09C438 = *&output[0];
    if (*&output[0])
    {
      v40 = 0;
      while (LODWORD(qword_27F09BD30[0]))
      {
        *&output[0] = v40;
        v41 = 16;
        if (!dword_27F09C440)
        {
          v41 = 10;
        }

        outputStructCnt = v41;
        v42 = IOConnectCallMethod(qword_27F09BD30[0], dword_27F09C44C, output, 1u, 0, 0, 0, 0, outputCnt, &outputStructCnt);
        if (v42)
        {
          if (g_runningInCI)
          {
            v43 = "#CI_ERROR# ";
          }

          else
          {
            v43 = "";
          }

          v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v42)];
          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "GetDVFSDomainName", 266, 2, "%s%s %u: _getDVFSDomainName (0x%x - %@)\n", v44, v45, v43);
        }

        if (outputStructCnt)
        {
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:outputCnt];
          if (!v46)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v46 = &stru_2860BD438;
        }

        if (![(__CFString *)v46 length])
        {
          goto LABEL_73;
        }

        v47 = [(__CFString *)v46 copy];
        v48 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 56 * v40;
        v50 = *(v48 + 10);
        v49 = v48 + 80;
        *v49 = v47;

        if (!LODWORD(qword_27F09BD30[0]))
        {
          goto LABEL_73;
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        memset(outputCnt, 0, sizeof(outputCnt));
        *&output[0] = v40;
        LODWORD(outputStructCnt) = 3;
        v51 = IOConnectCallMethod(qword_27F09BD30[0], dword_27F09C448, output, 1u, 0, 0, outputCnt, &outputStructCnt, 0, 0);
        if (v51)
        {
          if (g_runningInCI)
          {
            v52 = "#CI_ERROR# ";
          }

          else
          {
            v52 = "";
          }

          v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v51)];
          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "GetNumDVFSStates", 228, 2, "%s%s %u: _getNumDVFSStates (0x%x - %@)\n", v53, v54, v52);
        }

        v55 = *outputCnt;
        if (!*outputCnt)
        {
          goto LABEL_73;
        }

        v56 = 0;
        *(v49 + 40) = *&outputCnt[2];
        while (v56 < [&unk_2860D5B28 count])
        {
          v57 = [&unk_2860D5B28 objectAtIndexedSubscript:v56];
          if ([(__CFString *)v46 hasPrefix:v57])
          {
            v58 = [v57 length];
            if (v58 + 1 >= [(__CFString *)v46 length])
            {
              v59 = [v57 hasPrefix:@"DCS"];
              v60 = v55 - 1;
              *(v49 + 2) = (v55 - 1) >> (v59 ^ 1u);
              *(v49 + 3) = v55 - 1;
              if (!v59)
              {
                v60 = 0;
              }

              *(v49 + 1) = v60;

              break;
            }
          }

          ++v56;
        }

        if (++v40 >= qword_27F09C438)
        {
          goto LABEL_26;
        }
      }

      v46 = 0;
LABEL_73:
    }
  }

  else
  {
    qword_27F09C438 = 0;
  }

LABEL_26:
  v20 = [*(*this + 8) defaultDevice];
  v21 = DEVICEOBJECT(v20);
  v22 = [v21 acceleratorPort];

  v23 = GTProfilerConfigurationVariables(v22);
  v24 = qword_27F09C4A8;
  qword_27F09C4A8 = v23;

  v25 = [GTPerfStatsHelper alloc];
  v26 = [(GTPerfStatsHelper *)v25 initWithConfigurationVariables:qword_27F09C4A8];
  v27 = *(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 1);
  *(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 1) = v26;

  [*(&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 1) setup];
  v28 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel(&unk_27F09BD10, 0);
  v29 = xmmword_27F09C520;
  *&xmmword_27F09C520 = v28;

  if (xmmword_27F09C520)
  {
    v30 = [xmmword_27F09C520 objectForKeyedSubscript:@"mapped state"];
    if (v30)
    {
      v64 = v30;
      v31 = [v30 count] == 3;
      v30 = v64;
      if (v31)
      {
        v32 = [*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16) objectForKeyedSubscript:@"GPUState"];
        if (v32 && ([*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16) objectForKeyedSubscript:@"GPUState"], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "unsignedIntValue"), v33, v32, v34) && objc_msgSend(v64, "count") >= v34)
        {
          v35 = [v64 objectAtIndexedSubscript:v34 - 1];
          v36 = [v35 unsignedIntValue];
        }

        else
        {
          v35 = [v64 objectAtIndexedSubscript:1];
          v36 = [v35 unsignedIntValue];
        }

        v37 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
        *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 64) = 100 * v36;
        *(v37 + 68) = 100 * v36;

        v30 = v64;
      }
    }

    v38 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v39 = *MEMORY[0x277D85DE8];
  }
}

id GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v2 = MEMORY[0x277CCA8C8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZNK35GTUSCSamplingStreamingManagerHelper27SubDividedCounterDictionaryEP14NSMutableArrayIP19GPURawCounterSelectE_block_invoke;
  v7[3] = &unk_279658938;
  v9 = &v11;
  v10 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
  v3 = v1;
  v8 = v3;
  v4 = [v2 blockOperationWithBlock:v7];
  [v4 setQueuePriority:8];
  [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v4];
  [v4 waitUntilFinished];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_24D87CAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZNK35GTUSCSamplingStreamingManagerHelper27SubDividedCounterDictionaryEP14NSMutableArrayIP19GPURawCounterSelectE_block_invoke(void *a1)
{
  v5 = [*(a1[6] + 16) firstObject];
  v2 = [v5 subDivideCounterList:a1[4] withOptions:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void *std::vector<std::vector<GTMMappedBuffer>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void GTUSCSamplingStreamingManagerHelper::SetupBufferForSourceAtIndex(GTUSCSamplingStreamingManagerHelper *this, int a2)
{
  v3 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:this];
  v36 = 0;
  v37 = 0;
  *&v38 = 0;
  std::vector<std::vector<GTMMappedBuffer>>::push_back[abi:nn200100](&xmmword_27F09C638, &v36);
  v35 = &v36;
  std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v35);
  std::vector<GTMMappedBuffer>::reserve((*(&xmmword_27F09C638 + 1) - 24), [v3 ringBufferNum]);
  if ((a2 & 1) == 0)
  {
    v4 = [v3 ringBufferNum];
    v5 = xmmword_27F09C658;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((xmmword_27F09C658 - qword_27F09C650) >> 4);
    if (v4 > v6)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(&xmmword_27F09C658 + 1) - xmmword_27F09C658) >> 4) < v4 - v6)
      {
        v39 = &qword_27F09C650;
        v7 = 0x5555555555555556 * ((*(&xmmword_27F09C658 + 1) - qword_27F09C650) >> 4);
        if (v7 <= v4)
        {
          v7 = v4;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&xmmword_27F09C658 + 1) - qword_27F09C650) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v8 = 0x555555555555555;
        }

        else
        {
          v8 = v7;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<DynamicBuffer>>(v8);
      }

      DynamicBuffer::DynamicBuffer(xmmword_27F09C658);
    }

    if (v4 < v6)
    {
      v9 = qword_27F09C650 + 48 * v4;
      while (v5 != v9)
      {
        v10 = *(v5 - 24);
        if (v10)
        {
          *(v5 - 16) = v10;
          operator delete(v10);
        }

        v5 -= 48;
      }

      *&xmmword_27F09C658 = v9;
    }
  }

  v36 = 0;
  v37 = 0;
  *&v38 = 0;
  std::vector<std::vector<GTMMappedBuffer>>::push_back[abi:nn200100](&qword_27F09C620, &v36);
  v35 = &v36;
  std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v35);
  std::vector<GTMMappedBuffer>::reserve((xmmword_27F09C628 - 24), [v3 ringBufferNum]);
  v36 = 0;
  v37 = 0;
  *&v38 = 0;
  std::vector<std::vector<GTMMappedBuffer>>::push_back[abi:nn200100](&xmmword_27F09C668, &v36);
  v35 = &v36;
  std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v35);
  std::vector<GTMMappedBuffer>::reserve((*(&xmmword_27F09C668 + 1) - 24), [v3 ringBufferNum]);
  v36 = 0;
  v37 = 0;
  *&v38 = 0;
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::push_back[abi:nn200100](&qword_27F09C680, &v36);
  v35 = &v36;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v35);
  std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::reserve((xmmword_27F09C688 - 24), [v3 ringBufferNum]);
  v36 = 0;
  v37 = 0;
  *&v38 = 0;
  std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::push_back[abi:nn200100](&xmmword_27F09C698, &v36);
  v35 = &v36;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v35);
  std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::reserve((*(&xmmword_27F09C698 + 1) - 24), [v3 ringBufferNum]);
  v34 = dispatch_semaphore_create(1);
  std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::push_back[abi:nn200100](&qword_27F09C6B0, &v34);

  v11 = [v3 ringBufferNum];
  dword_27F09C57C += v11;
  v12 = [v3 ringBufferNum];
  v13 = 0;
  v14 = qword_27F09C580;
  if (qword_27F09C580 <= v12)
  {
    v14 = v12;
  }

  LODWORD(qword_27F09C580) = v14;
  while (v13 < [v3 ringBufferNum])
  {
    if (a2)
    {
      v15 = *(&xmmword_27F09C638 + 1);
      v35 = 0x1000000;
      v36 = 0x8000000;
      v16 = *(*(&xmmword_27F09C638 + 1) - 16);
      if (v16 >= *(*(&xmmword_27F09C638 + 1) - 8))
      {
        v17 = std::vector<GTMMappedBuffer>::__emplace_back_slow_path<unsigned long long,unsigned long long>(*(&xmmword_27F09C638 + 1) - 24, &v36, &v35);
      }

      else
      {
        GTMMappedBuffer::GTMMappedBuffer(*(*(&xmmword_27F09C638 + 1) - 16), 0x8000000uLL, 0x1000000u);
        v17 = v16 + 120;
        *(v15 - 16) = v16 + 120;
      }

      *(v15 - 16) = v17;
      v21 = *(&xmmword_27F09C668 + 1);
      v35 = 0x2000000;
      v36 = 0x8000000;
      v22 = *(*(&xmmword_27F09C668 + 1) - 16);
      if (v22 >= *(*(&xmmword_27F09C668 + 1) - 8))
      {
        v23 = std::vector<GTMMappedBuffer>::__emplace_back_slow_path<unsigned long long,unsigned long long>(*(&xmmword_27F09C668 + 1) - 24, &v36, &v35);
      }

      else
      {
        GTMMappedBuffer::GTMMappedBuffer(*(*(&xmmword_27F09C668 + 1) - 16), 0x8000000uLL, 0x2000000u);
        v23 = v22 + 120;
        *(v21 - 16) = v22 + 120;
      }

      *(v21 - 16) = v23;
      v27 = xmmword_27F09C628;
      v35 = 0x100000;
      v36 = 0x100000;
      v28 = *(xmmword_27F09C628 - 16);
      if (v28 < *(xmmword_27F09C628 - 8))
      {
        GTMMappedBuffer::GTMMappedBuffer(*(xmmword_27F09C628 - 16), 0x100000uLL, 0x100000u);
LABEL_39:
        v29 = v28 + 120;
        *(v27 - 16) = v28 + 120;
        goto LABEL_41;
      }
    }

    else
    {
      v18 = *(&xmmword_27F09C668 + 1);
      v35 = 0x4000;
      v36 = 0x4000;
      v19 = *(*(&xmmword_27F09C668 + 1) - 16);
      if (v19 >= *(*(&xmmword_27F09C668 + 1) - 8))
      {
        v20 = std::vector<GTMMappedBuffer>::__emplace_back_slow_path<unsigned long long,unsigned long long>(*(&xmmword_27F09C668 + 1) - 24, &v36, &v35);
      }

      else
      {
        GTMMappedBuffer::GTMMappedBuffer(*(*(&xmmword_27F09C668 + 1) - 16), 0x4000uLL, 0x4000u);
        v20 = v19 + 120;
        *(v18 - 16) = v19 + 120;
      }

      *(v18 - 16) = v20;
      v24 = *(&xmmword_27F09C638 + 1);
      v35 = 0x4000;
      v36 = 0x4000;
      v25 = *(*(&xmmword_27F09C638 + 1) - 16);
      if (v25 >= *(*(&xmmword_27F09C638 + 1) - 8))
      {
        v26 = std::vector<GTMMappedBuffer>::__emplace_back_slow_path<unsigned long long,unsigned long long>(*(&xmmword_27F09C638 + 1) - 24, &v36, &v35);
      }

      else
      {
        GTMMappedBuffer::GTMMappedBuffer(*(*(&xmmword_27F09C638 + 1) - 16), 0x4000uLL, 0x4000u);
        v26 = v25 + 120;
        *(v24 - 16) = v25 + 120;
      }

      *(v24 - 16) = v26;
      v27 = xmmword_27F09C628;
      v35 = 0x4000;
      v36 = 0x4000;
      v28 = *(xmmword_27F09C628 - 16);
      if (v28 < *(xmmword_27F09C628 - 8))
      {
        GTMMappedBuffer::GTMMappedBuffer(*(xmmword_27F09C628 - 16), 0x4000uLL, 0x4000u);
        goto LABEL_39;
      }
    }

    v29 = std::vector<GTMMappedBuffer>::__emplace_back_slow_path<unsigned long long,unsigned long long>(xmmword_27F09C628 - 24, &v36, &v35);
LABEL_41:
    *(v27 - 16) = v29;
    v30 = (xmmword_27F09C688 - 24);
    v33 = dispatch_semaphore_create(0);
    std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::push_back[abi:nn200100](v30, &v33);

    v31 = (*(&xmmword_27F09C698 + 1) - 24);
    v32 = dispatch_semaphore_create(0);
    std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::push_back[abi:nn200100](v31, &v32);

    ++v13;
  }
}

size_t *std::vector<std::vector<GTMMappedBuffer>>::push_back[abi:nn200100](size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::vector<GTMMappedBuffer>>::~__split_buffer(v15);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  v2[1] = v5;
  return result;
}

void std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        GTMMappedBuffer::~GTMMappedBuffer((v4 - 120));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<GTMMappedBuffer>::reserve(void *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 3) < a2)
  {
    v2 = result[1] - *result;
    v3 = result;
    std::__allocate_at_least[abi:nn200100]<std::allocator<GTMMappedBuffer>>(a2);
  }

  return result;
}

void sub_24D87D6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<GTMMappedBuffer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

size_t *std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::push_back[abi:nn200100](size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::~__split_buffer(v15);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  v2[1] = v5;
  return result;
}

void *std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::push_back[abi:nn200100](void *result, uint64_t *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v12[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(v10);
    }

    v12[0] = 0;
    v12[1] = 8 * v7;
    v12[3] = 0;
    v11 = *a2;
    *a2 = 0;
    *(8 * v7) = v11;
    v12[2] = 8 * v7 + 8;
    std::vector<NSString * {__strong}>::__swap_out_circular_buffer(v2, v12);
    v6 = *(v2 + 8);
    result = std::__split_buffer<NSString * {__strong}>::~__split_buffer(v12);
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(v2 + 8) = v6;
  return result;
}

void GTMMappedBuffer::GTMMappedBuffer(GTMMappedBuffer *this, unint64_t a2, unsigned int a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = a3;
  *(this + 3) = 0u;
  v4 = a3;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  if (a3 <= a2)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:@"/tmp/com.apple.gputools.profiling"];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 createDirectoryAtPath:@"/tmp/com.apple.gputools.profiling" withIntermediateDirectories:1 attributes:0 error:0];
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 stringWithFormat:@"%@/Temp_%@_%d.mmapbuffer", @"/tmp/com.apple.gputools.profiling", v11, rand()];
    v13 = *(this + 3);
    *(this + 3) = v12;

    v14 = open([*(this + 3) UTF8String], 1538, 438);
    *(this + 8) = v14;
    if (v14 < 0)
    {
      v44 = __error();
      strerror(*v44);
      if (g_runningInCI)
      {
        v47 = "#CI_ERROR# ";
      }

      else
      {
        v47 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "GTMMappedBuffer", 981, 1, "%s%s %u: %s\n", v45, v46, v47);
    }

    else
    {
      lseek(v14, a2, 0);
      write(*(this + 8), "A", 1uLL);
      v15 = 0;
      v16 = a2 / v4;
      do
      {
        v17 = mmap(0, *(this + 10), 3, 2, *(this + 8), v15 * *(this + 10));
        v18 = v17;
        if (v17 == -1)
        {
          if (g_runningInCI)
          {
            v26 = "#CI_ERROR# ";
          }

          else
          {
            v26 = "";
          }

          v27 = __error();
          strerror(*v27);
          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "GTMMappedBuffer", 991, 1, "%s%s %u: %s\n", v28, v29, v26);
        }

        else
        {
          v19 = *(this + 12);
          v20 = *(this + 13);
          v21 = v20 - v19;
          v22 = (v20 - v19) >> 5;
          v23 = *(this + 14);
          if (v20 >= v23)
          {
            v30 = v22 + 1;
            if ((v22 + 1) >> 59)
            {
              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            v31 = v23 - v19;
            if (v31 >> 4 > v30)
            {
              v30 = v31 >> 4;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFE0)
            {
              v32 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<GTMMappedBufferBlock>>(v32);
            }

            v33 = v22;
            v34 = *(this + 10);
            v35 = 32 * v22;
            *v35 = v22;
            *(v35 + 8) = v18;
            *(v35 + 20) = 0;
            *(v35 + 24) = 0;
            *(v35 + 16) = v34;
            v25 = 32 * v22 + 32;
            v36 = (v35 - 32 * v33);
            memcpy(v36, v19, v21);
            v37 = *(this + 12);
            *(this + 12) = v36;
            *(this + 13) = v25;
            *(this + 14) = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            v24 = *(this + 10);
            *v20 = v22;
            *(v20 + 8) = v17;
            *(v20 + 20) = 0;
            *(v20 + 24) = 0;
            *(v20 + 16) = v24;
            v25 = v20 + 32;
          }

          *(this + 13) = v25;
        }

        ++v15;
      }

      while (v15 < v16);
      *(this + 9) = a2;
      v38 = objc_opt_new();
      v39 = *(this + 2);
      *(this + 2) = v38;

      v40 = dispatch_semaphore_create(1);
      v41 = *this;
      *this = v40;

      v42 = dispatch_semaphore_create(1);
      v43 = *(this + 1);
      *(this + 1) = v42;
    }
  }
}

void sub_24D87DC98(_Unwind_Exception *a1)
{
  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](v3);

  _Unwind_Resume(a1);
}

uint64_t std::vector<GTMMappedBuffer>::__emplace_back_slow_path<unsigned long long,unsigned long long>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x222222222222222)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<GTMMappedBuffer>>(v6);
  }

  v13 = 0;
  v14 = 120 * v3;
  v15 = 120 * v3;
  GTMMappedBuffer::GTMMappedBuffer((120 * v3), *a2, *a3);
  *&v15 = 120 * v3 + 120;
  v7 = *(a1 + 8);
  v8 = 120 * v3 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<GTMMappedBuffer>,GTMMappedBuffer*>(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<GTMMappedBuffer>::~__split_buffer(&v13);
  return v12;
}

void sub_24D87DE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<GTMMappedBuffer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTMMappedBuffer>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<GTMMappedBuffer>,GTMMappedBuffer*>(GTMMappedBuffer *a1, GTMMappedBuffer *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 1);
      *(a3 + 16) = *(v5 + 2);
      *(a3 + 24) = *(v5 + 3);
      v6 = *(v5 + 2);
      *(a3 + 48) = 0u;
      *(a3 + 32) = v6;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      v7 = *(v5 + 7);
      if (*(v5 + 8) != v7)
      {
        v8 = *(v5 + 10);
        v9 = v8 / 0xAA;
        v10 = *(v7 + 8 * (v8 / 0xAA));
        v11 = v10 - 4080 * (v8 / 0xAA) + 24 * v8;
        v12 = *(v5 + 11) + v8;
        v13 = v12 / 0xAA;
        v14 = *(v7 + 8 * (v12 / 0xAA));
        v15 = v14 - 4080 * (v12 / 0xAA) + 24 * v12;
        if (v15 != v11)
        {
          v16 = 170 * ((8 * v13 - 8 * v9) >> 3) - 0x5555555555555555 * ((v15 - v14) >> 3) + 0x5555555555555555 * ((v11 - v10) >> 3);
          if (v16)
          {
            v17 = (v16 + 1) / 0xAAuLL;
            if ((v16 ^ (-170 * v17)) == 0xFFFFFFFFFFFFFFFFLL)
            {
              v18 = (v16 + 1) / 0xAAuLL;
            }

            else
            {
              v18 = v17 + 1;
            }

            std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v18);
          }
        }
      }

      *(a3 + 96) = 0;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      v20 = *(v5 + 12);
      v19 = *(v5 + 13);
      v21 = v19 - v20;
      if (v19 != v20)
      {
        if (!((v21 >> 5) >> 59))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<GTMMappedBufferBlock>>(v21 >> 5);
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v5 = (v5 + 120);
      a3 += 120;
    }

    while (v5 != a2);
    do
    {
      GTMMappedBuffer::~GTMMappedBuffer(v4);
      v4 = (v4 + 120);
    }

    while (v4 != a2);
  }
}

void sub_24D87E280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(v12);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<GTMMappedBuffer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    GTMMappedBuffer::~GTMMappedBuffer((i - 120));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void GTMMappedBuffer::~GTMMappedBuffer(GTMMappedBuffer *this)
{
  v2 = *(this + 12);
  v3 = *(this + 13);
  if (v2 != v3 && *(this + 9))
  {
    do
    {
      munmap(*(v3 - 24), *(this + 10));
      v4 = *(this + 12);
      v3 = *(this + 13) - 32;
      *(this + 13) = v3;
    }

    while (v4 != v3);
    close(*(this + 8));
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 removeItemAtPath:*(this + 3) error:0];

    v2 = *(this + 12);
  }

  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](this + 6);
}

void sub_24D87E3EC(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 96);
  if (v5)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100]((v1 + 48));

  _Unwind_Resume(a1);
}

uint64_t std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTMMappedBufferBlock>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void *std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_back<GTMMappedBuffer::UsedBlock *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_front<GTMMappedBuffer::UsedBlock *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void DynamicBuffer::DynamicBuffer(DynamicBuffer *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  operator new();
}

void sub_24D87E8E0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<DynamicBuffer>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<DynamicBuffer>,DynamicBuffer*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *(v5 + 16);
      *a3 = *v5;
      *(a3 + 16) = v6;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      v7 = *(v4 + 24);
      if (v7)
      {
        *(v4 + 32) = v7;
        operator delete(v7);
      }

      v4 += 48;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<DynamicBuffer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 48;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::vector<GTMMappedBuffer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void GTUSCSamplingStreamingManagerHelper::CleanUp(GTUSCSamplingStreamingManagerHelper *this)
{
  os_unfair_lock_lock(&GTUSCSamplingStreamingManagerHelper::CleanUp(void)::localSpinLock);
  if (atomic_load(this + 350))
  {
    atomic_store(0, this + 350);
    atomic_store(1u, this + 2844);
    dispatch_semaphore_wait(*(this + 316), 0xFFFFFFFFFFFFFFFFLL);
    v3 = *(this + 278);
    if (v3)
    {
      [v3 cleanup];
      v4 = *(this + 278);
      *(this + 278) = 0;
    }

    if (*this)
    {
      *this = 0;
    }

    GTUSCSamplingStreamingManagerHelper::CleanupGPURawCounters(this);
    ClearCaches();
    v5 = *(this + 1);
    *(this + 1) = 0;

    GTApplePMPPerfStateControl::Close((this + 64));
    if (*(this + 288))
    {
      v6 = *(this + 287);
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      *(this + 287) = 0;
      v8 = *(this + 286);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*(this + 285) + 8 * i) = 0;
        }
      }

      *(this + 288) = 0;
    }

    v10 = *(this + 299);
    v11 = *(this + 298);
    while (v10 != v11)
    {
      v10 -= 3;
      v55 = v10;
      std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v55);
    }

    *(this + 299) = v11;
    std::vector<std::vector<GTMMappedBuffer>>::shrink_to_fit(this + 2384);
    v12 = *(this + 296);
    v13 = *(this + 295);
    while (v12 != v13)
    {
      v12 -= 3;
      v55 = v12;
      std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v55);
    }

    *(this + 296) = v13;
    std::vector<std::vector<GTMMappedBuffer>>::shrink_to_fit(this + 2360);
    v14 = *(this + 305);
    v15 = *(this + 304);
    while (v14 != v15)
    {
      v14 -= 3;
      v55 = v14;
      std::vector<GTMMappedBuffer>::__destroy_vector::operator()[abi:nn200100](&v55);
    }

    *(this + 305) = v15;
    std::vector<std::vector<GTMMappedBuffer>>::shrink_to_fit(this + 2432);
    v16 = *(this + 308);
    v17 = *(this + 307);
    while (v16 != v17)
    {
      v16 -= 3;
      v55 = v16;
      std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v55);
    }

    *(this + 308) = v17;
    std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::shrink_to_fit(this + 2456);
    v18 = *(this + 311);
    v19 = *(this + 310);
    while (v18 != v19)
    {
      v18 -= 3;
      v55 = v18;
      std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v55);
    }

    *(this + 311) = v19;
    std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::shrink_to_fit(this + 2480);
    v20 = *(this + 314);
    v21 = *(this + 313);
    if (v20 != v21)
    {
      do
      {
        v22 = *(v20 - 8);
        v20 -= 8;
      }

      while (v20 != v21);
      v20 = *(this + 313);
    }

    *(this + 314) = v21;
    v23 = *(this + 315) - v20;
    if (v23 > (v21 - v20))
    {
      v24 = (v21 - v20) >> 3;
      v58 = this + 2504;
      if (v21 != v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>((v21 - v20) >> 3);
      }

      v55 = 0;
      v56 = 8 * v24;
      v57 = (8 * v24);
      if (v23 >> 3)
      {
        std::vector<NSString * {__strong}>::__swap_out_circular_buffer(this + 2504, &v55);
      }

      std::__split_buffer<NSString * {__strong}>::~__split_buffer(&v55);
    }

    std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::clear[abi:nn200100](this + 279);
    v25 = *(this + 279);
    v26 = *(this + 281) - v25;
    v27 = *(this + 280);
    if (v26 > (v27 - v25))
    {
      v58 = this + 2232;
      if (v27 != v25)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(0xAAAAAAAAAAAAAAABLL * ((v27 - v25) >> 3));
      }

      v28 = 8 * ((v27 - v25) >> 3);
      v55 = 0;
      v56 = v28;
      v57 = v28;
      if (0xAAAAAAAAAAAAAAABLL * (v26 >> 3))
      {
        v29 = *(this + 280) - v25;
        v30 = v28 - v29;
        memcpy((v28 - v29), v25, v29);
        v31 = *(this + 279);
        *(this + 279) = v30;
        *(this + 280) = v28;
        v32 = *(this + 281);
        *(this + 281) = 0;
        *&v57 = v31;
        *(&v57 + 1) = v32;
        v55 = v31;
        v56 = v31;
      }

      std::__split_buffer<std::vector<std::pair<unsigned int,unsigned int>>>::~__split_buffer(&v55);
    }

    v33 = *(this + 282);
    *(this + 283) = v33;
    if (*(this + 284) != v33)
    {
      *(this + 282) = 0;
      *(this + 283) = 0;
      *(this + 284) = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    std::vector<DynamicBuffer>::clear[abi:nn200100](this + 301);
    v34 = *(this + 301);
    v35 = *(this + 303) - v34;
    v36 = *(this + 302);
    if (v35 > (v36 - v34))
    {
      v58 = this + 2408;
      if (v36 != v34)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<DynamicBuffer>>(0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 4));
      }

      v37 = 16 * ((v36 - v34) >> 4);
      v55 = 0;
      v56 = v37;
      v57 = v37;
      if (0xAAAAAAAAAAAAAAABLL * (v35 >> 4))
      {
        v38 = *(this + 302);
        v39 = v37 + v34 - v38;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<DynamicBuffer>,DynamicBuffer*>(v34, v38, v39);
        v40 = *(this + 301);
        *(this + 301) = v39;
        v41 = *(this + 303);
        *(this + 151) = v57;
        *&v57 = v40;
        *(&v57 + 1) = v41;
        v55 = v40;
        v56 = v40;
      }

      std::__split_buffer<DynamicBuffer>::~__split_buffer(&v55);
    }

    v42 = *(this + 318);
    *(this + 318) = 0;

    v43 = *(this + 317);
    *(this + 317) = 0;

    v44 = *(this + 319);
    *(this + 319) = 0;

    v45 = *(this + 320);
    *(this + 320) = 0;

    *(this + 2216) = 1;
    *(this + 549) = 0;
    *(this + 275) = 1;
    *(this + 241) = 0;
    v46 = *(this + 246);
    *(this + 246) = 0;

    *(this + 247) = 0;
    *(this + 273) = 0;
    *(this + 271) = *(this + 270);
    v47 = *(this + 278);
    *(this + 278) = 0;

    v48 = *(this + 290);
    *(this + 290) = 0;

    v49 = *(this + 291);
    *(this + 291) = 0;

    v50 = *(this + 293);
    *(this + 293) = 0;

    v51 = *(this + 294);
    *(this + 294) = 0;

    atomic_store(0, this + 704);
    atomic_store(0, this + 705);
    atomic_store(0, this + 706);
    atomic_store(0, this + 707);
    atomic_store(0, this + 708);
    atomic_store(0, this + 351);
    atomic_store(0, this + 709);
    atomic_store(0, this + 2840);
    atomic_store(0, this + 2841);
    atomic_store(0, this + 2843);
    atomic_store(0, this + 2844);
    v52 = *(this + 403);
    v53 = *(this + 402);
    while (v52 != v53)
    {
      v54 = *(v52 - 32);
      v52 -= 32;
    }

    *(this + 403) = v53;
  }

  os_unfair_lock_unlock(&GTUSCSamplingStreamingManagerHelper::CleanUp(void)::localSpinLock);
}

void ClearCaches(void)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v11 fileExistsAtPath:@"/tmp/com.apple.gputools.profiling"])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0;
    v0 = [v11 contentsOfDirectoryAtPath:@"/tmp/com.apple.gputools.profiling" error:&v13];
    v1 = v13;
    v2 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v2)
    {
      v3 = *v15;
      do
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v15 != v3)
          {
            objc_enumerationMutation(v0);
          }

          v5 = *(*(&v14 + 1) + 8 * i);
          v6 = [v5 pathExtension];
          v7 = [v6 caseInsensitiveCompare:@"mmapbuffer"] == 0;

          if (v7)
          {
            v8 = [@"/tmp/com.apple.gputools.profiling" stringByAppendingPathComponent:v5];
            v12 = v1;
            [v11 removeItemAtPath:v8 error:&v12];
            v9 = v12;

            v1 = v9;
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v2);
    }
  }

  else
  {
    [v11 createDirectoryAtPath:@"/tmp/com.apple.gputools.profiling" withIntermediateDirectories:1 attributes:0 error:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<std::vector<GTMMappedBuffer>>::shrink_to_fit(uint64_t result)
{
  v3 = *(result + 8);
  v4 = *result;
  v5 = *(result + 16) - *result;
  v6 = v3 - *result;
  if (v5 > v6)
  {
    v18 = v1;
    v19 = v2;
    v7 = result;
    v17 = result;
    if (v3 != v4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(0xAAAAAAAAAAAAAAABLL * (v6 >> 3));
    }

    v8 = 8 * (v6 >> 3);
    v13 = 0;
    v14 = v8;
    v15 = v8;
    v16 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3))
    {
      v9 = *(result + 8) - v4;
      v10 = v8 - v9;
      memcpy((v8 - v9), v4, v9);
      v11 = *v7;
      *v7 = v10;
      v7[1] = v8;
      v12 = v7[2];
      v7[2] = 0;
      v15 = v11;
      v16 = v12;
      v13 = v11;
      v14 = v11;
    }

    return std::__split_buffer<std::vector<GTMMappedBuffer>>::~__split_buffer(&v13);
  }

  return result;
}

uint64_t std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::shrink_to_fit(uint64_t result)
{
  v3 = *(result + 8);
  v4 = *result;
  v5 = *(result + 16) - *result;
  v6 = v3 - *result;
  if (v5 > v6)
  {
    v18 = v1;
    v19 = v2;
    v7 = result;
    v17 = result;
    if (v3 != v4)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>>(0xAAAAAAAAAAAAAAABLL * (v6 >> 3));
    }

    v8 = 8 * (v6 >> 3);
    v13 = 0;
    v14 = v8;
    v15 = v8;
    v16 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3))
    {
      v9 = *(result + 8) - v4;
      v10 = v8 - v9;
      memcpy((v8 - v9), v4, v9);
      v11 = *v7;
      *v7 = v10;
      v7[1] = v8;
      v12 = v7[2];
      v7[2] = 0;
      v15 = v11;
      v16 = v12;
      v13 = v11;
      v14 = v11;
    }

    return std::__split_buffer<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::~__split_buffer(&v13);
  }

  return result;
}

void std::vector<std::vector<std::pair<unsigned int,unsigned int>>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<DynamicBuffer>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<std::pair<unsigned int,unsigned int>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void GTUSCSamplingStreamingManagerHelper::SetupMTLCounterAPIBuffer(GTUSCSamplingStreamingManagerHelper *this)
{
  v4 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 16);
  v1 = [*(*GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) defaultDevice];
  v2 = DEVICEOBJECT(v1);

  if (v2)
  {
    v3 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 76);
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper20InitBatchIdFilteringEP29GTUSCSamplingStreamingManager_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  GTMTLReplayController_prePlayForProfiling(**v1);
  v51 = [(*v1)[2] objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v48 = v1;
  v2 = **v1;
  v3 = *(v2 + 8);
  v4 = *v2;
  v49 = v3;
  v50 = *(*v2 + 16);
  v47 = [*(v2 + 8) defaultCommandQueue];
  v57 = 0;
  if (v4[14] + v4[13] > *(v2 + 22560))
  {
    v52 = v4;
    v53 = 0;
    v5 = 0;
    v46 = (v1 + 282);
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(v4[16] + 24) + (*(v2 + 22560) << 6);
      v8 = *(v7 + 8);
      ConstructorType = GTFenum_getConstructorType(v8);
      if (ConstructorType == 25)
      {
        GTMTLReplayController_restoreCommandBuffer(v2, v7);
        v8 = *(v7 + 8);
      }

      v10 = GTFenum_isGPUCommandCall(v8);
      if (v57 == 1)
      {
        isEndEncoding = v8 == -16285;
      }

      else
      {
        isEndEncoding = GTFenum_isEndEncoding(v8);
      }

      context = v6;
      v12 = (v10 | isEndEncoding) & v5;
      if (v12 != 1)
      {
        goto LABEL_18;
      }

      v13 = GTTraceFunc_targetContext(v7, v4[2]);
      v14 = 0;
      v15 = *(v2 + 11360);
      if (v15 > 64)
      {
        if (v15 == 65)
        {
          goto LABEL_17;
        }

        if (v15 == 70)
        {
          v17 = [v3 renderCommandEncoderForKey:v13];
          v14 = DEVICEOBJECT(v17);

          v3 = v49;
          if (!v14)
          {
            if (*(v7 + 8) == -16285)
            {
LABEL_17:
              v16 = [v3 parallelRenderCommandEncoderForKey:v13];
              goto LABEL_20;
            }

LABEL_18:
            v14 = 0;
          }
        }
      }

      else
      {
        if (v15 == 21)
        {
          v16 = [v3 blitCommandEncoderForKey:v13];
          goto LABEL_20;
        }

        if (v15 == 28)
        {
          v16 = [v3 computeCommandEncoderForKey:v13];
LABEL_20:
          v18 = v16;
          v14 = DEVICEOBJECT(v16);

          v3 = v49;
        }
      }

      GTMTLReplayController_updateCommandEncoder(v2, v7);
      if (*(v7 + 8) >> 2 == 1073737833)
      {
        GTUSCSamplingStreamingManagerHelper::DispatchExpandedIndirectCommand();
      }

      else
      {
        DispatchFunction(v2, v7, &v57);
      }

      v5 &= isEndEncoding ^ 1;
      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(*(v7 + 8), 1, 0))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v2 + 22560)];
        v20 = [v51 objectForKeyedSubscript:v19];

        v5 |= v20 != 0;
        v21 = v53;
        if (v20)
        {
          v21 = v53 + 1;
        }

        v53 = v21;
      }

      else if (v12)
      {
        v55 = 0;
        v56 = 0;
        if (v14)
        {
          if (v10)
          {
            [v14 commandBatchIdRangeMin:&v56 max:&v55];
            v22 = v48[283];
            v23 = v48[284];
            if (v22 >= v23)
            {
              v35 = *v46;
              v36 = v22 - *v46;
              v37 = v36 >> 3;
              v38 = (v36 >> 3) + 1;
              if (v38 >> 61)
              {
                std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
              }

              v39 = v23 - v35;
              if (v39 >> 2 > v38)
              {
                v38 = v39 >> 2;
              }

              if (v39 >= 0x7FFFFFFFFFFFFFF8)
              {
                v40 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v38;
              }

              if (v40)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v40);
              }

              v41 = (8 * v37);
              *v41 = v56;
              v41[1] = v55;
              v24 = 8 * v37 + 8;
              memcpy(0, v35, v36);
              v42 = v48[282];
              v48[282] = 0;
              v48[283] = v24;
              v48[284] = 0;
              if (v42)
              {
                operator delete(v42);
              }
            }

            else
            {
              *v22 = v56;
              *(v22 + 1) = v55;
              v24 = (v22 + 8);
            }

            v48[283] = v24;
            v3 = v49;
          }

          else if (isEndEncoding && v48[282] != v48[283])
          {
            v25 = [v14 commandBatchIdOffset];
            v26 = v48[282];
            v27 = v48[283];
            if (v26 != v27)
            {
              v28 = vdup_n_s32(v25);
              v29 = v48[282];
              do
              {
                *v29 = vsub_s32(*v29, v28);
                ++v29;
              }

              while (v29 != v27);
            }

            if (v53)
            {
              v30 = v48[279];
              if (v53 <= 0xAAAAAAAAAAAAAAABLL * (v48[280] - v30))
              {
                v31 = &v30[3 * v53];
                v32 = *(v31 - 3);
                *(v31 - 3) = v26;
                v48[282] = v32;
                v33 = *(v31 - 2);
                *(v31 - 2) = v48[283];
                v48[283] = v33;
                v34 = *(v31 - 1);
                *(v31 - 1) = v48[284];
                v48[284] = v34;
              }
            }
          }
        }
      }

      if (ConstructorType == 25)
      {
        v43 = [v3 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v7, *(v7 + 13), v50) + 1)}];
        v44 = DEVICEOBJECT(v43);

        [v44 setDisableDeferredEndEncoding:1];
      }

      objc_autoreleasePoolPop(context);
      v45 = (*(v2 + 22560) + 1);
      *(v2 + 22560) = v45;
      v4 = v52;
    }

    while (v52[14] + v52[13] > v45);
  }

  [v47 finish];
}

void DispatchFunction(id *a1, uint64_t a2, _BYTE *a3)
{
  v15 = a1[1];
  v6 = *(*a1 + 2);
  v7 = *(a2 + 8);
  if (v7 <= -16286)
  {
    if (v7 == -16351)
    {
      *a3 = 1;
      v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v11 = GTTraceFunc_argumentBytesWithMap(a2, v10[16], v6);
      v9 = [v15 commandBufferForKey:*v10];
      v12 = [v15 renderPassDescriptorMap];
      v13 = MakeMTLRenderPassDescriptor(v11, v12);

      v14 = [v9 renderCommandEncoderWithDescriptor:v13];
      [v15 setParallelRenderCommandEncoder:v14 forKey:*(v10 + 1)];

      goto LABEL_12;
    }

    if (v7 == -16286)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(*a1 + 2));
      v9 = [v15 parallelRenderCommandEncoderForKey:*v8];
      [v15 setRenderCommandEncoder:v9 forKey:*(v8 + 1)];
LABEL_12:

      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v7 == -16285)
  {
    *a3 = 0;
  }

  else
  {
    if (v7 != -16246)
    {
LABEL_9:
      if (v7 >> 2 == 1073737833)
      {
        GTMTLReplayController_executeCommandsInBuffer(a1, a2, 0, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (*a3 == 1)
    {
      [v15 removeRenderCommandEncoderForKey:{*GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(*a1 + 2))}];
      goto LABEL_15;
    }
  }

LABEL_14:
  GTMTLReplayController_defaultDispatchFunction(a1, a2);
LABEL_15:
}

{
  v15 = a1[1];
  v6 = *(*a1 + 2);
  v7 = *(a2 + 8);
  if (v7 > -16286)
  {
    if (v7 == -16285)
    {
      *a3 = 0;
    }

    else if (v7 == -16246 && *a3 == 1)
    {
      [v15 removeRenderCommandEncoderForKey:{*GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(*a1 + 2))}];
      goto LABEL_13;
    }
  }

  else
  {
    if (v7 == -16351)
    {
      *a3 = 1;
      v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      RenderPassDescriptor = GetRenderPassDescriptor();
      v9 = [v15 commandBufferForKey:*v10];
      v12 = [v15 renderPassDescriptorMap];
      v13 = MakeMTLRenderPassDescriptor(RenderPassDescriptor, v12);

      v14 = [v9 renderCommandEncoderWithDescriptor:v13];
      [v15 setParallelRenderCommandEncoder:v14 forKey:*(v10 + 1)];

      goto LABEL_10;
    }

    if (v7 == -16286)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(*a1 + 2));
      v9 = [v15 parallelRenderCommandEncoderForKey:*v8];
      [v15 setRenderCommandEncoder:v9 forKey:*(v8 + 1)];
LABEL_10:

      goto LABEL_13;
    }
  }

  GTMTLReplayController_defaultDispatchFunction(a1, a2);
LABEL_13:
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

BOOL std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

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

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t GTUSCSamplingStreamingManagerHelper::SetupBumperCounters(GTUSCSamplingStreamingManagerHelper *this, NSDictionary *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = [(GTUSCSamplingStreamingManagerHelper *)v2 objectForKeyedSubscript:@"passNum"];
  v19 = [v3 unsignedIntValue];

  v20 = [*(&xmmword_27F09BCF8 + 1) count];
  v4 = 0;
  v21 = [*(&xmmword_27F09BCF8 + 1) count];
  while (v4 < [*(&xmmword_27F09BCF8 + 1) count])
  {
    v5 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:v4];
    for (i = 0; i < [&unk_2860D5A38 count]; ++i)
    {
      v7 = [v5 name];
      v8 = [&unk_2860D5A38 objectAtIndexedSubscript:i];
      v9 = [v7 isEqualToString:v8];

      if (v9)
      {
        *(&v20 + i) = v4;
      }
    }

    ++v4;
  }

  if (v19)
  {
    v10 = 0;
    v11 = v20;
    v12 = v21;
    do
    {
      v13 = [(GTUSCSamplingStreamingManagerHelper *)v2 objectForKeyedSubscript:@"passList"];
      v14 = [v13 objectAtIndexedSubscript:v10];

      if (v11 < [v14 count] && v12 < objc_msgSend(v14, "count"))
      {
        v15 = [v14 objectAtIndexedSubscript:v12];
        v16 = [v14 objectAtIndexedSubscript:v11];
        [v14 setObject:v16 atIndexedSubscript:v12];

        [v14 setObject:v15 atIndexedSubscript:v11];
      }

      ++v10;
    }

    while (v19 != v10);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v19;
}

void GTUSCSamplingStreamingManagerHelper::StreamBatchIdFilteredCounters(GTUSCSamplingStreamingManagerHelper *this)
{
  v219[10] = *MEMORY[0x277D85DE8];
  v1 = atomic_load(byte_27F09C804);
  if (v1)
  {
    goto LABEL_148;
  }

  v134 = objc_opt_new();
  if (qword_27F09C588 == -1)
  {
    v10 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 48) objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v11 = [v10 objectForKeyedSubscript:@"DerivedCounters"];
    v12 = [v11 objectForKeyedSubscript:@"CSInvocation"];
    v141 = [v12 objectForKeyedSubscript:@"counters"];
  }

  else
  {
    v2 = std::string::basic_string[abi:nn200100]<0>(&v213, "CSInvocation");
    CountersForDerivedCounter = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(v2);
    v4 = CountersForDerivedCounter;
    if (SHIBYTE(v215) < 0)
    {
      operator delete(v213);
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else if (CountersForDerivedCounter)
    {
LABEL_5:
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * (v4[1] - *v4)];
      v6 = *v4;
      v7 = v4[1];
      if (*v4 != v7)
      {
        do
        {
          v8 = v6;
          if (*(v6 + 23) < 0)
          {
            v8 = *v6;
          }

          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
          [v5 addObject:v9];

          v6 += 3;
        }

        while (v6 != v7);
      }

      v141 = [v5 copy];

      goto LABEL_13;
    }

    v141 = 0;
  }

  if (!qword_27F09C4A8)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = [qword_27F09C4A8 objectForKeyedSubscript:@"num_cores"];
  v14 = [v13 unsignedIntValue];

  v15 = [qword_27F09C4A8 objectForKeyedSubscript:@"num_mgpus"];
  v16 = [v15 unsignedIntValue];

  v17 = v16 <= 1 ? 1 : v16;
  if (v14 / v17 >= 5)
  {
    v140 = [v141 count] == 4;
  }

  else
  {
LABEL_19:
    v140 = 0;
  }

  obj = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"profileCounters"];
  v18 = 0x277CBE000;
  if (qword_27F09C588 == -1)
  {
    goto LABEL_62;
  }

  v177 = 0u;
  v178 = 0u;
  LODWORD(v179) = 1065353216;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = obj;
  v19 = [obj countByEnumeratingWithState:&v185 objects:&v204 count:16];
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = *v186;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v186 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = std::string::basic_string[abi:nn200100]<0>(&v213, [*(*(&v185 + 1) + 8 * i) UTF8String]);
      v23 = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(v22);
      v24 = v23;
      if (SHIBYTE(v215) < 0)
      {
        operator delete(v213);
        if (!v24)
        {
          continue;
        }
      }

      else if (!v23)
      {
        continue;
      }

      v25 = *v24;
      v26 = v24[1];
      while (v25 != v26)
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v177, v25);
        v25 += 24;
      }
    }

    v19 = [obj countByEnumeratingWithState:&v185 objects:&v204 count:16];
  }

  while (v19);
LABEL_35:

  v27 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"batchFilteredDerivedCounters"];
  if (v27)
  {
    v138 = v27;
    v136 = v27;
    v143 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v136, "count")}];
    v195 = 0u;
    v196 = 0u;
    LODWORD(v197) = 1065353216;
    *__p = 0u;
    v200 = 0u;
    v201 = 0u;
    v202[0] = 0u;
    v151 = v136;
    if ([v151 countByEnumeratingWithState:__p objects:&v213 count:16])
    {
      *v200;
      *v200;
      [*__p[1] UTF8String];
      operator new();
    }

    for (j = qword_27F09C700; j; j = *j)
    {
      v29 = (j + 16);
      if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v195, *(&v195 + 1), j + 16))
      {
        if (*(j + 39) < 0)
        {
          v29 = *v29;
        }

        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:v29];
        [v143 addObject:v30];
      }
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v195);

    v31 = xmmword_27F09C970;
    *&xmmword_27F09C970 = v143;

    v32 = objc_opt_new();
    v33 = objc_opt_new();
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v34 = xmmword_27F09C970;
    v35 = [v34 countByEnumeratingWithState:&v181 objects:&v213 count:16];
    if (v35)
    {
      v36 = *v182;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v182 != v36)
          {
            objc_enumerationMutation(v34);
          }

          std::string::basic_string[abi:nn200100]<0>(__p, [*(*(&v181 + 1) + 8 * k) UTF8String]);
          v38 = GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(__p);
          v39 = v38;
          if (SBYTE7(v200) < 0)
          {
            operator delete(__p[0]);
            if (!v39)
            {
              continue;
            }
          }

          else if (!v38)
          {
            continue;
          }

          v40 = *v39;
          v41 = v39[1];
          while (v40 != v41)
          {
            v42 = v40;
            if (*(v40 + 23) < 0)
            {
              v42 = *v40;
            }

            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v42];
            [v33 addObject:v43];

            v40 += 3;
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v181 objects:&v213 count:16];
      }

      while (v35);
    }

    v44 = [v33 allObjects];

    obj = v44;
    v27 = v138;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v177);
  v18 = 0x277CBE000uLL;
LABEL_62:
  v45 = [*(v18 + 2904) setWithArray:obj];
  [v45 addObjectsFromArray:&unk_2860D5A20];
  v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4096];
  for (m = 0; m < [*(&xmmword_27F09BCF8 + 1) count]; ++m)
  {
    v152 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:?];
    v47 = [v152 availableCounters];
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v177 objects:__p count:16];
    if (v49)
    {
      v50 = *v178;
      do
      {
        for (n = 0; n != v49; ++n)
        {
          if (*v178 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v177 + 1) + 8 * n);
          v53 = [v52 name];
          v54 = [v45 containsObject:v53];

          if (v54)
          {
            v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v52, "counterValueType")}];
            v56 = [v52 name];
            [v46 setObject:v55 forKeyedSubscript:v56];
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v177 objects:__p count:16];
      }

      while (v49);
    }
  }

  [v134 setDictionary:v46];
  v57 = MEMORY[0x277CBEB18];
  v58 = [obj count];
  v157 = [v57 arrayWithCapacity:{objc_msgSend(qword_27F09C4B0, "count") + v58}];
  [v157 addObjectsFromArray:qword_27F09C4B0];
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v153 = obj;
  v59 = [v153 countByEnumeratingWithState:&v173 objects:&v195 count:16];
  if (v59)
  {
    v60 = *v174;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v174 != v60)
        {
          objc_enumerationMutation(v153);
        }

        v62 = *(*(&v173 + 1) + 8 * ii);
        if ([v62 isEqualToString:@"MTLStat_nSec"])
        {
          v63 = 0;
        }

        else
        {
          if (![v62 isEqualToString:@"MTLStatTotalGPUCycles"])
          {
            goto LABEL_84;
          }

          v63 = 1;
        }

        v64 = [&unk_2860D5A20 objectAtIndexedSubscript:v63];

        v62 = v64;
LABEL_84:
        v65 = [MEMORY[0x277D0AF28] selectWithName:v62 options:0];
        [v157 addObject:v65];
      }

      v59 = [v153 countByEnumeratingWithState:&v173 objects:&v195 count:16];
    }

    while (v59);
  }

  v66 = GTUSCSamplingStreamingManagerHelper::SubDividedCounterDictionary(v157);
  v67 = v66;
  if (!v66)
  {
    goto LABEL_147;
  }

  v130 = v66;
  v68 = [(GTUSCSamplingStreamingManagerHelper *)v66 count];
  v67 = v130;
  if (!v68)
  {
    goto LABEL_147;
  }

  __p[0] = 0;
  __p[1] = __p;
  *&v200 = 0x5812000000;
  *(&v200 + 1) = __Block_byref_object_copy__307;
  *&v201 = __Block_byref_object_dispose__308;
  *(&v201 + 1) = &unk_24DB95716;
  memset(v202, 0, sizeof(v202));
  v203 = 1065353216;
  v144 = GTUSCSamplingStreamingManagerHelper::SetupBumperCounters(v130, v69);
  v142 = v130;
  v129 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[GTUSCSamplingStreamingManagerHelper count](v142, "count")}];
  v70 = [v129 objectForKeyedSubscript:@"passNum"];
  [v129 setObject:v70 forKeyedSubscript:@"passNum"];

  v71 = [(GTUSCSamplingStreamingManagerHelper *)v142 objectForKeyedSubscript:@"passNum"];
  LODWORD(v70) = [v71 unsignedIntValue];

  v135 = v70;
  v137 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  if (v70)
  {
    v139 = 0;
    do
    {
      v72 = [(GTUSCSamplingStreamingManagerHelper *)v142 objectForKeyedSubscript:@"passList"];
      v145 = [v72 objectAtIndexedSubscript:v139];

      v154 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v145, "count")}];
      v197 = 0u;
      v198 = 0u;
      v195 = 0u;
      v196 = 0u;
      v146 = v145;
      v73 = [v146 countByEnumeratingWithState:&v195 objects:&v213 count:16];
      if (v73)
      {
        obja = *v196;
        do
        {
          for (jj = 0; jj != v73; ++jj)
          {
            if (*v196 != obja)
            {
              objc_enumerationMutation(v146);
            }

            v75 = *(*(&v195 + 1) + 8 * jj);
            v76 = [qword_27F09C4B0 arrayByAddingObjectsFromArray:v75];
            v77 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v76, "count")}];
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v78 = v75;
            v79 = [v78 countByEnumeratingWithState:&v185 objects:&v204 count:16];
            if (v79)
            {
              v80 = *v186;
              do
              {
                for (kk = 0; kk != v79; ++kk)
                {
                  if (*v186 != v80)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v82 = [*(*(&v185 + 1) + 8 * kk) name];
                  [v77 addObject:v82];
                }

                v79 = [v78 countByEnumeratingWithState:&v185 objects:&v204 count:16];
              }

              while (v79);
            }

            [v154 addObject:v77];
          }

          v73 = [v146 countByEnumeratingWithState:&v195 objects:&v213 count:16];
        }

        while (v73);
      }

      [v137 addObject:v154];
      ++v139;
    }

    while (v139 != v135);
  }

  [v129 setObject:v137 forKeyedSubscript:@"passList"];

  v83 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v127 = [v83 count];

  v132 = objc_opt_new();
  GTUSCSamplingStreamingManagerHelper::CleanupGPURawCounters(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  v84 = atomic_load(byte_27F09C804);
  if (v84)
  {
    goto LABEL_146;
  }

  objb = 0;
  v128 = 0;
  while (2)
  {
    v85 = [*(&xmmword_27F09C594 + 4) nextPerEncoderBatchList:v132];

    if (v85)
    {
      dispatch_semaphore_wait(xmmword_27F09C6C8, 0xFFFFFFFFFFFFFFFFLL);
      context = objc_autoreleasePoolPush();
      GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(context);
      objb = v85;
      v86 = [*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 16) objectForKeyedSubscript:@"perEncoderIndexDrawCallCount"];
      v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v86, "count")}];
      v88 = 0;
      v89 = 0;
      while (v88 < [v86 count])
      {
        v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88];
        v91 = [v86 objectForKeyedSubscript:v90];
        v92 = [v91 unsignedIntegerValue] == 0;

        if (v92)
        {
          [v87 addObject:&unk_2860D6428];
        }

        else
        {
          v93 = [objb objectAtIndexedSubscript:v89];
          [v87 addObject:v93];

          ++v89;
        }

        ++v88;
      }

      v133 = [v132 copy];
      v147 = objc_opt_new();
      v213 = 0;
      v214 = &v213;
      v215 = 0x4812000000;
      v216 = __Block_byref_object_copy__310;
      v217 = __Block_byref_object_dispose__311;
      v218 = &unk_24DB95716;
      memset(v219, 0, 24);
      v204 = 0;
      v205 = &v204;
      v206 = 0x4812000000;
      v207 = __Block_byref_object_copy__313;
      v208 = __Block_byref_object_dispose__314;
      v209 = &unk_24DB95716;
      v211 = 0;
      v212 = 0;
      v210 = 0;
      std::vector<std::vector<DYMTLEncoderInfo>>::resize(v219, v144);
      v155 = objc_opt_new();
      if (v144)
      {
        v94 = 0;
        for (mm = 0; mm != v144; ++mm)
        {
          std::vector<std::vector<DYMTLEncoderInfo>>::reserve(v214 + 6, 2 * v127);
          v96 = objc_opt_new();
          v97 = MEMORY[0x277CCA8C8];
          v162[0] = MEMORY[0x277D85DD0];
          v162[1] = 3221225472;
          v162[2] = ___ZN35GTUSCSamplingStreamingManagerHelper29StreamBatchIdFilteredCountersEv_block_invoke;
          v162[3] = &unk_279657320;
          v169 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
          v98 = v142;
          v170 = mm;
          v172 = v140;
          v163 = v98;
          v166 = &v213;
          v167 = &v204;
          v164 = v87;
          v168 = __p;
          v99 = v96;
          v165 = v99;
          v171 = v144;
          v100 = [v97 blockOperationWithBlock:v162];
          v101 = v100;
          if (v94)
          {
            [v100 addDependency:v94];
          }

          [**(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) addOperation:v101];
          v102 = MEMORY[0x277CCA8C8];
          v158[0] = MEMORY[0x277D85DD0];
          v158[1] = 3221225472;
          v158[2] = ___ZN35GTUSCSamplingStreamingManagerHelper29StreamBatchIdFilteredCountersEv_block_invoke_2;
          v158[3] = &unk_279658B00;
          v161 = GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
          v103 = v99;
          v159 = v103;
          v160 = v147;
          v104 = [v102 blockOperationWithBlock:v158];
          [v104 addDependency:v101];
          [*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) + 8) addOperation:v104];
          [v155 addDependency:v104];

          v94 = v104;
        }
      }

      else
      {
        v104 = 0;
      }

      [*(*(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 8) + 8) addOperation:v155];
      [v155 waitUntilFinished];
      GTUSCSamplingStreamingManagerHelper::CleanupGPURawCounters(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
      v105 = atomic_load(byte_27F09C804);
      if ((v105 & 1) == 0)
      {
        v106 = [MEMORY[0x277CBEB18] arrayWithCapacity:v144];
        if (v144)
        {
          v107 = 0;
          do
          {
            v108 = [MEMORY[0x277CBEA90] dataWithBytes:*(v214[6] + v107) length:*(v214[6] + v107 + 8) - *(v214[6] + v107)];
            [v106 addObject:v108];

            v107 += 24;
          }

          while (24 * v144 != v107);
        }

        v109 = MEMORY[0x277CBEB38];
        v193[0] = @"Derived Counter Sample Data";
        v193[1] = @"Subdivided Dictionary";
        v194[0] = v147;
        v194[1] = v129;
        v194[2] = v106;
        v193[2] = @"Encoder Infos";
        v193[3] = @"Encoder Tile Info";
        v110 = [MEMORY[0x277CBEA90] dataWithBytes:v205[6] length:v205[7] - v205[6]];
        v194[3] = v110;
        v194[4] = v87;
        v193[4] = @"BatchInfos";
        v193[5] = @"Counter Info";
        v194[5] = v134;
        v193[6] = @"Num Encoders";
        v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v127];
        v194[6] = v111;
        v193[7] = @"Source Sample Marker";
        v112 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:qword_27F09BD08];
        v194[7] = v112;
        v194[8] = MEMORY[0x277CBEC38];
        v193[8] = @"Batch Filtered Counters";
        v193[9] = @"Derived Counters Info Data";
        v113 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 48);
        v114 = v113;
        if (!v113)
        {
          v126 = objc_opt_new();
          v114 = v126;
        }

        v193[10] = @"HighPriorityBatchInfo";
        v194[9] = v114;
        v194[10] = v133;
        v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:{11, v126}];
        v116 = [v109 dictionaryWithDictionary:v115];

        if (!v113)
        {
        }

        if (v128)
        {
LABEL_135:
          v128 = 1;
        }

        else
        {
          if (qword_27F09C588 != -1)
          {
            v118 = GTAGXProfilingSupportHelper::RemappedCSV(v117);
            v119 = v118;
            if (v118 && [v118 length])
            {
              [v116 setObject:v119 forKeyedSubscript:@"csv"];
            }

            goto LABEL_135;
          }

          v128 = 0;
        }

        if (xmmword_27F09C970)
        {
          v191[0] = @"DerivedCounterDictionary";
          v189 = @"DerivedCounters";
          v190 = xmmword_27F09C970;
          v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
          v191[1] = @"DerivedCounterConfigurationVariables";
          v192[0] = v120;
          v192[1] = qword_27F09C4A8;
          v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:2];
          [v116 setObject:v121 forKeyedSubscript:@"Derived Counters Info Data"];
        }

        v122 = *(*&GTUSCSamplingStreamingManagerHelper::Instance(void)::instance[0] + 32);
        v123 = [v116 copy];
        (*(v122 + 16))(v122, v123);
      }

      _Block_object_dispose(&v204, 8);
      if (v210)
      {
        v211 = v210;
        operator delete(v210);
      }

      _Block_object_dispose(&v213, 8);
      v204 = v219;
      std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&v204);

      objc_autoreleasePoolPop(context);
      dispatch_semaphore_signal(xmmword_27F09C6C8);
      v124 = atomic_load(byte_27F09C804);
      if (v124)
      {
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  objb = 0;
LABEL_145:

LABEL_146:
  _Block_object_dispose(__p, 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v202);
  v67 = v130;
LABEL_147:

LABEL_148:
  v125 = *MEMORY[0x277D85DE8];
}

void sub_24D882230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _Unwind_Exception *exception_objecta, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  _Block_object_dispose(&STACK[0x3D0], 8);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&STACK[0x400]);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__307(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__310(__n128 *a1, __n128 *a2)
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

__n128 __Block_byref_object_copy__313(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__314(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<std::vector<DYMTLEncoderInfo>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v16 = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(v10);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v15 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v15);
    a1[1] = v4 + v15;
  }
}

void *std::vector<std::vector<DYMTLEncoderInfo>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<std::pair<unsigned int,unsigned int>>>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper29StreamBatchIdFilteredCountersEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = atomic_load((v1 + 2844));
  if ((v2 & 1) == 0)
  {
    GTMTLReplayController_prePlayForProfiling(**v1);
    DisableComputeEncoderCoalescing(**v1, 1);
    if (GTUSCSamplingStreamingManagerHelper::SetupSourceForDerivedCounters(v1, *(a1 + 32), *(a1 + 88), 1, (*(a1 + 88) == 0) & *(a1 + 96)))
    {
      v4 = [*(v1 + 16) firstObject];
      v5 = [v4 startSampling];

      if (v5)
      {
        v6 = *(a1 + 88);
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(*(a1 + 64) + 8) + 48;
        }

        GTUSCSamplingStreamingManagerHelper::ReplayForDerivedCounters(v1, *(*(*(a1 + 56) + 8) + 48) + 24 * v6, v7, *(a1 + 40), (*(*(a1 + 72) + 8) + 48), 0);
        v8 = objc_autoreleasePoolPush();
        v9 = GTUSCSamplingStreamingManagerHelper::DrainRawDerivedCounterData(v1);
        if (v9)
        {
          [*(a1 + 48) setArray:v9];
        }

        objc_autoreleasePoolPop(v8);
        v10 = [*(v1 + 16) firstObject];
        [v10 stopSampling];

        DisableComputeEncoderCoalescing(**v1, 0);
        if (*(a1 + 88) + 1 == *(a1 + 92))
        {
          GTAGXPerfStateControl::DisableConsistentGPUPerfState((v1 + 40));

          GTApplePMPPerfStateControl::DisableConsistentPerfState((v1 + 64));
        }
      }
    }
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper29StreamBatchIdFilteredCountersEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = atomic_load((v1 + 2844));
  if ((v2 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = GTUSCSamplingStreamingManagerHelper::PostProcessRawDerivedCounterData(v1, *(a1 + 32));
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id GTUSCSamplingStreamingManagerHelper::PostProcessRawDerivedCounterData(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 24) count] && objc_msgSend(v3, "count"))
  {
    v4 = 0x277CBE000uLL;
    v20 = v3;
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = 0;
    v18 = a1;
LABEL_4:
    if (v5 >= [v3 count])
    {
      v15 = v21;
    }

    else
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [*(v4 + 2840) arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v19 = v5;
      v8 = [*(a1 + 24) objectAtIndexedSubscript:v5];
      for (i = 0; ; ++i)
      {
        if (i >= [v6 count])
        {
          [v21 addObject:v7];

          v3 = v20;
          v5 = v19 + 1;
          a1 = v18;
          v4 = 0x277CBE000;
          goto LABEL_4;
        }

        v10 = [v6 objectAtIndexedSubscript:i];
        v11 = [v10 length];
        v22 = 0;
        v23 = 0;
        v12 = 4 * [v10 length];
        if (v12 <= 0x4000)
        {
          v12 = 0x4000;
        }

        v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
        v14 = [MEMORY[0x277CBEB28] dataWithLength:v13];
        LOBYTE(v17) = 1;
        if (([v8 postProcessRawDataWithRingBufferIndex:i source:objc_msgSend(v10 sourceSize:"bytes") sourceRead:v11 + 8 sourceWrite:&v23 output:v11 outputSize:objc_msgSend(v14 outputRead:"mutableBytes") outputWrite:v13 isLast:{0, &v22, v17}] & 1) == 0)
        {
          break;
        }

        [v14 setLength:v22];
        [v7 addObject:v14];
      }

      NSLog(&cfstr_FailedToPostPr.isa, i, v11 + 8, v23, v11, v13, v22);

      v15 = 0;
      v3 = v20;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void DisableComputeEncoderCoalescing(GTMTLReplayController *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      v4 = [v2 defaultDevice];
      v5 = DEVICEOBJECT(v4);

      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 setDisableComputeEncoderCoalescing:a2];
      }
    }
  }
}

void GTUSCSamplingStreamingManagerHelper::ReplayForDerivedCounters(id ***a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v8 = a4;
  v139 = a6;
  v131 = [(*a1)[2] objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v9 = **a1;
  v144[1] = v9;
  v145 = v8 == 0;
  if (!v8)
  {
    v10 = [v9[1] defaultCommandQueue];
    [v10 setGPUPriority:0];
  }

  v144[0] = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  v136 = v8;
  v135 = v9[1];
  v11 = *v9;
  v124 = [v9[1] defaultCommandQueue];
  v141 = v9;
  v12 = v9 + 2560;
  if (a5)
  {
    a1[273] = 0;
    a1[271] = a1[270];
  }

  v143 = 0;
  a1[241] = -1;
  v142 = -1;
  if (v11[14] + v11[13] > *(v9 + 5640))
  {
    v127 = 0;
    v130 = a1;
    v140 = v9 + 2560;
    do
    {
      context = objc_autoreleasePoolPush();
      v13 = *(v11[16] + 24) + (*(v12 + 520) << 6);
      ConstructorType = GTFenum_getConstructorType(*(v13 + 8));
      if (ConstructorType == 25)
      {
        GTMTLReplayController_restoreCommandBuffer(v141, v13);
      }

      GTMTLReplayController_updateCommandEncoder(v141, v13);
      v14 = v140[260];
      v15 = *(v13 + 8);
      if (v15 == -20474)
      {
        if (v139)
        {
          goto LABEL_14;
        }
      }

      else if (v139 && v15 == -20457)
      {
LABEL_14:
        v16 = GTTraceFunc_targetContext(v13, v11[2]);
        v17 = 0;
        v18 = *(v13 + 8);
        if (v18 > -20446)
        {
          if (v18 == -20445)
          {
            v19 = [v135 frameInterpolatorForKey:v16];
          }

          else
          {
            if (v18 != -20420)
            {
              goto LABEL_24;
            }

            v19 = [v135 temporalDenoisedScalerForKey:v16];
          }
        }

        else
        {
          if (v18 != -20474)
          {
            if (v18 == -20457)
            {
              v19 = [v135 temporalScalerForKey:v16];
              goto LABEL_23;
            }

LABEL_24:
            [v17 setTracingDelegate:v139];
            [v139 setFunctionIndex:v14];

            goto LABEL_25;
          }

          v19 = [v135 spatialScalerForKey:v16];
        }

LABEL_23:
        v20 = v19;
        v17 = DEVICEOBJECT(v19);

        goto LABEL_24;
      }

LABEL_25:
      v134 = v14;
      v21 = **a1;
      v22 = v21[1];
      v23 = *v21;
      v24 = *(*v21 + 2);
      if (v136)
      {
        v25 = *(v13 + 8);
        if ((GTFenum_isDrawCall(v25) & 1) != 0 || (v25 > -15298 ? (v26 = v25 == -15059, v27 = -15297) : (v26 = v25 == -16137, v27 = -15486), !v26 ? (v28 = v25 == v27) : (v28 = 1), v28))
        {
          v29 = v142;
          if (v142 == -1)
          {
            v30 = 0;
          }

          else
          {
            --v142;
            v30 = v29 == 0;
          }

          v31 = [v22 renderCommandEncoderForKey:{GTTraceFunc_targetContext(v13, v24)}];
          v32 = v21 + 24;
          v33 = *(v21 + 2840);
          if (v33 - 95) <= 0xA && ((0x409u >> (v33 - 95)))
          {
            v34 = 14;
            goto LABEL_43;
          }

          if (v33)
          {
            v34 = 1075;
LABEL_43:
            v35 = v32[v34];
          }

          else
          {
            v35 = 0;
          }

          v36 = [v22 renderPipelineStateForKey:v35];
          if (v30)
          {
            v37 = *(v21 + 2840);
            if (v37 - 95) <= 0xA && ((0x409u >> (v37 - 95)))
            {
              v38 = 14;
              goto LABEL_51;
            }

            if (v37)
            {
              v38 = 1075;
LABEL_51:
              v40 = v32[v38];
            }

            else
            {
              v40 = 0;
            }

            v39 = GTUSCSamplingStreamingManagerHelper::RenderDummyDrawCall(a1, v21, v31, 0, v40, v13);
            [v31 setRenderPipelineState:v36];
          }

          else
          {
            v39 = 0;
          }

          GTMTLReplayController_defaultDispatchFunction(v21, v13);
          if (v30)
          {
            v41 = *(v21 + 2840);
            if (v41 - 95) <= 0xA && ((0x409u >> (v41 - 95)))
            {
              v42 = 14;
              goto LABEL_59;
            }

            if (v41)
            {
              v42 = 1075;
LABEL_59:
              v43 = v32[v42];
            }

            else
            {
              v43 = 0;
            }

            v44 = GTUSCSamplingStreamingManagerHelper::RenderDummyDrawCall(a1, v21, v31, v39, v43, v13);
            [v31 setRenderPipelineState:v36];
          }

LABEL_67:

          goto LABEL_68;
        }

        if (v25 >> 2 == 1073737833)
        {
          GTUSCSamplingStreamingManagerHelper::DispatchExpandedIndirectCommand();
          goto LABEL_68;
        }
      }

      DispatchFunction(v21, v13, &v143);
      if (GTFenum_getConstructorType(*(v13 + 8)) == 21)
      {
        v45 = *(GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v24) + 1);
        if (std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(a5, [v22 globalTraceIdForEncoder:v45 ofType:0]))
        {
          v31 = [v22 blitCommandEncoderForKey:v45];
          [v31 endEncoding];
          v36 = [v22 commandBufferForKey:{GTTraceFunc_targetContext(v13, v23[2])}];
          v39 = [v36 computeCommandEncoder];
          [v39 endEncoding];
          GTMTLReplayController_defaultDispatchFunction(v21, v13);
          goto LABEL_67;
        }
      }

LABEL_68:

      if (!GTMTLReplayHost_IsFuncEnumSampledEncoder(*(v13 + 8), 1, 0))
      {
        goto LABEL_151;
      }

      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v140 + 520)];
      v47 = [v131 objectForKeyedSubscript:v46];

      if (v47)
      {
        v48 = *(GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v11[2]) + 1);
        v49 = [v135 commandBufferForKey:{GTTraceFunc_targetContext(v13, v11[2])}];
        v50 = [v49 globalTraceObjectID];
        v51 = a3;
        v52 = v50;
        if (v143)
        {
          v53 = 11368;
        }

        else
        {
          v53 = 192;
        }

        if (a3)
        {
          v54 = *(a3 + 8);
          v55 = *(a3 + 16);
          if (v54 >= v55)
          {
            v125 = v47;
            v57 = v50;
            v128 = v49;
            v58 = *a3;
            v59 = v54 - *a3;
            v60 = v59 >> 3;
            v61 = (v59 >> 3) + 1;
            if (v61 >> 61)
            {
              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            v62 = v55 - v58;
            if (v62 >> 2 > v61)
            {
              v61 = v62 >> 2;
            }

            if (v62 >= 0x7FFFFFFFFFFFFFF8)
            {
              v63 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = v61;
            }

            if (v63)
            {
              if (!(v63 >> 61))
              {
                operator new();
              }

LABEL_157:
              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            *(8 * v60) = 0;
            v56 = 8 * v60 + 8;
            memcpy(0, v58, v59);
            *a3 = 0;
            *(a3 + 8) = v56;
            *(a3 + 16) = 0;
            if (v58)
            {
              operator delete(v58);
            }

            v49 = v128;
            a1 = v130;
            v52 = v57;
            v47 = v125;
          }

          else
          {
            *v54 = 0;
            v56 = (v54 + 1);
          }

          *(a3 + 8) = v56;
          v51 = a3;
        }

        v64 = *(v141 + v53);
        if (v64 <= 27)
        {
          if (v64 == 17)
          {
            v82 = [v135 accelerationStructureCommandEncoderForKey:v48];
            v83 = DEVICEOBJECT(v82);

            v71 = v83;
            v66 = v71;
            if (!a5)
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (v64 != 21)
            {
              goto LABEL_150;
            }

            v69 = [v135 blitCommandEncoderForKey:v48];
            v70 = DEVICEOBJECT(v69);

            v71 = v70;
            v66 = v71;
            if (!a5)
            {
              goto LABEL_116;
            }
          }

          v84 = [v71 globalTraceObjectID];
          v85 = a1[241];
          a1[241] = (v85 + 1);
          GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(a1, a5, v13, v84, v66, v85 + 1, v134, 0);
        }

        else
        {
          if (v64 != 70)
          {
            if (v64 != 65)
            {
              if (v64 == 28)
              {
                v65 = [v135 computeCommandEncoderForKey:v48];
                v66 = DEVICEOBJECT(v65);

                if (a5)
                {
                  v67 = [v66 globalTraceObjectID];
                  v68 = a1[241];
                  a1[241] = (v68 + 1);
                  GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(a1, a5, v13, v67, v66, v68 + 1, v134, 0);
                }

                goto LABEL_112;
              }

              goto LABEL_150;
            }

            v77 = v52;
            v78 = *(GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v11[2]) + 1);
            v79 = [v135 parallelRenderCommandEncoderForKey:v48];
            v66 = DEVICEOBJECT(v79);

            if (a5)
            {
              v80 = [v135 globalTraceIdForEncoder:v78 ofType:1];
              v81 = a1[241];
              a1[241] = (v81 + 1);
              GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(a1, a5, v13, v80, v66, v81 + 1, v134, 0);
            }

            if (v51 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              *(*(v51 + 8) - 8) = [v66 tileWidth];
              *(*(v51 + 8) - 4) = [v66 tileHeight];
            }

            v52 = v77;
LABEL_112:
            if (!v66)
            {
LABEL_150:

LABEL_151:
              if (ConstructorType == 25)
              {
                v112 = *(GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v11[2]) + 1);
                if (v136)
                {
                  v113 = [v135 commandBufferForKey:v112];
                  v114 = DEVICEOBJECT(v113);

                  [v114 setDisableDeferredEndEncoding:1];
                }

                v115 = [*(v141 + 8) defaultDevice];
                v116 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:16 height:16 mipmapped:0];
                [v116 setUsage:4];
                v117 = [v115 newTextureWithDescriptor:v116];
                v118 = [MEMORY[0x277CD6F48] renderPassDescriptor];
                v119 = objc_opt_new();
                [v119 setTexture:v117];
                [v119 setLoadAction:2];
                [v119 setStoreAction:1];
                [v119 setClearColor:{0.0, 0.0, 0.0, 1.0}];
                v120 = [v118 colorAttachments];
                [v120 setObject:v119 atIndexedSubscript:0];

                v121 = [*(v141 + 8) commandBufferForKey:v112];
                v122 = [v121 renderCommandEncoderWithDescriptor:v118];
                [v122 setLabel:@"GPUToolsCounterProfilingEmptyRender"];
                [v122 endEncoding];

                a1 = v130;
              }

              goto LABEL_155;
            }

LABEL_117:
            v86 = v136;
            v87 = v66;
            if (v136)
            {
              v88 = v127;
              if (v127 < [v86 count])
              {
                v89 = [v86 objectAtIndexedSubscript:v127];
                v142 = [v89 unsignedIntValue];

                v90 = v142;
                if (v142 != -1)
                {
                  v91 = a1[279];
                  if (v127 < 0xAAAAAAAAAAAAAAABLL * (a1[280] - v91))
                  {
                    v92 = &v91[3 * v127];
                    v93 = *v92;
                    v94 = v142 >= (v92[1] - *v92);
                    v95 = v142;
                    if (!v94)
                    {
                      v96 = &v93[v142];
                      v95 = *v96;
                      v90 = v96[1];
                    }

                    v97 = *(v13 + 8);
                    v98 = v97 == -16353 || v97 == -16351;
                    if (v98)
                    {
                      v99 = v95 + 1;
                    }

                    else
                    {
                      v99 = v95;
                    }

                    if (v98)
                    {
                      v100 = v90 + 1;
                    }

                    else
                    {
                      v100 = v90;
                    }

                    [v87 filterCounterRangeWithFirstBatch:v99 lastBatch:v100 filterIndex:0];
                  }
                }

                v88 = v127 + 1;
              }
            }

            else
            {
              v88 = v127;
            }

            v127 = v88;

            v101 = v52 | ([v87 globalTraceObjectID] << 32);
            v102 = a2;
            v104 = *(a2 + 8);
            v103 = *(a2 + 16);
            if (v104 >= v103)
            {
              v129 = v49;
              v106 = *a2;
              v107 = v104 - *a2;
              v108 = v107 >> 3;
              v109 = (v107 >> 3) + 1;
              if (v109 >> 61)
              {
                std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
              }

              v110 = v103 - v106;
              if (v110 >> 2 > v109)
              {
                v109 = v110 >> 2;
              }

              if (v110 >= 0x7FFFFFFFFFFFFFF8)
              {
                v111 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v111 = v109;
              }

              if (v111)
              {
                if (!(v111 >> 61))
                {
                  operator new();
                }

                goto LABEL_157;
              }

              *(8 * v108) = v101;
              v105 = 8 * v108 + 8;
              memcpy(0, v106, v107);
              *a2 = 0;
              *(a2 + 8) = v105;
              *(a2 + 16) = 0;
              if (v106)
              {
                operator delete(v106);
              }

              v102 = a2;
              v49 = v129;
              a1 = v130;
            }

            else
            {
              *v104 = v101;
              v105 = (v104 + 1);
            }

            *(v102 + 8) = v105;

            goto LABEL_150;
          }

          v72 = [v135 renderCommandEncoderForKey:v48];
          v73 = DEVICEOBJECT(v72);

          v74 = v73;
          v66 = v74;
          if (a5)
          {
            v75 = [v74 globalTraceObjectID];
            v76 = a1[241];
            a1[241] = (v76 + 1);
            GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(a1, a5, v13, v75, v66, v76 + 1, v134, 0);
          }

          if (v51 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            *(*(v51 + 8) - 8) = [v66 tileWidth];
            *(*(v51 + 8) - 4) = [v66 tileHeight];
          }
        }

LABEL_116:

        if (!v66)
        {
          goto LABEL_150;
        }

        goto LABEL_117;
      }

LABEL_155:
      objc_autoreleasePoolPop(context);
      v12 = v140;
      v123 = (*(v140 + 520) + 1);
      *(v140 + 520) = v123;
    }

    while (v11[14] + v11[13] > v123);
  }

  [v124 finish];

  ScopedReplayConfiguration::~ScopedReplayConfiguration(v144);
}

void sub_24D883F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  ScopedReplayConfiguration::~ScopedReplayConfiguration((v29 - 112));

  _Unwind_Resume(a1);
}

id GTUSCSamplingStreamingManagerHelper::DrainRawDerivedCounterData(id *this)
{
  if ([this[3] count])
  {
    v2 = 0x277CBE000uLL;
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(this[3], "count")}];
    for (i = 0; ; ++i)
    {
      if (i >= [this[3] count])
      {
        v14 = v16;
        goto LABEL_17;
      }

      v4 = [this[3] objectAtIndexedSubscript:i];
      v5 = [*(v2 + 2840) arrayWithCapacity:{objc_msgSend(v4, "ringBufferNum")}];
      if ([v4 isEnabled])
      {
        break;
      }

LABEL_15:
    }

    for (j = 0; ; j = (j + 1))
    {
      if (j >= [v4 ringBufferNum])
      {
        [v16 addObject:v5];
        v2 = 0x277CBE000;
        goto LABEL_15;
      }

      v18 = 0;
      v19 = 0;
      v17 = 0;
      if (([v4 ringBufferInfoAtIndex:j base:&v19 size:&v18 + 4 dataOffset:&v18 dataSize:&v17] & 1) == 0)
      {
        break;
      }

      v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v17];
      v8 = v7;
      v9 = v17;
      if (v17 + v18 <= HIDWORD(v18))
      {
        [v7 appendBytes:v19 + v18 length:v17];
      }

      else
      {
        v10 = HIDWORD(v18) - v18;
        [v7 appendBytes:v19 + v18 length:(HIDWORD(v18) - v18)];
        [v8 appendBytes:v19 length:v9 - v10];
      }

      v11 = [v4 drainRingBufferAtIndex:j dataSize:v17];
      if (v11 != v17)
      {
        v12 = [v4 name];
        NSLog(&cfstr_FailUnexpected.isa, v12);
      }

      [v5 addObject:v8];
    }

    v13 = [v4 name];
    NSLog(&cfstr_FailUnableToRe.isa, v13);

    v14 = 0;
LABEL_17:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void GTUSCSamplingStreamingManagerHelper::GatherCommandBufferRestoreInfo(uint64_t **this)
{
  GTMTLReplayController_prePlayForProfiling(**this);
  v2 = **this;
  v3 = *v2;
  if (*(*v2 + 112) + *(*v2 + 104) > *(v2 + 22560))
  {
    while (1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(v3[16] + 24) + (*(v2 + 22560) << 6);
      v6 = GTFenum_getConstructorType(*(v5 + 8)) == 25 ? GTMTLReplayController_restoreCommandBuffer(v2, v5) : 0;
      GTMTLReplayController_updateCommandEncoder(v2, v5);
      if (*(v5 + 8) >> 2 == 1073737833)
      {
        break;
      }

      GTMTLReplayController_defaultDispatchFunction(**this, v5);
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_10:
      objc_autoreleasePoolPop(v4);
      v7 = (*(v2 + 22560) + 1);
      *(v2 + 22560) = v7;
      if (v3[14] + v3[13] <= v7)
      {
        v2 = **this;
        goto LABEL_12;
      }
    }

    GTMTLReplayController_executeCommandsInBuffer(v2, v5, 0, 0xFFFFFFFFFFFFFFFFLL);
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(this + 285, *(v2 + 22560));
    goto LABEL_10;
  }

LABEL_12:
  *(v2 + 22564) = 0;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void GTUSCSamplingStreamingManagerHelper::SetupBuffersForAPSSource(GTUSCSamplingStreamingManagerHelper *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (qword_27F09C588 != -1)
  {
    [*(&xmmword_27F09BCF8 + 1) count];
    if ([*(&xmmword_27F09BCF8 + 1) count])
    {
      v1 = 0;
      v2 = 0;
      do
      {
        v3 = [*(&xmmword_27F09BCF8 + 1) objectAtIndexedSubscript:v2];
        for (i = 0; i < [&unk_2860D5A50 count]; ++i)
        {
          v5 = [v3 name];
          v6 = [&unk_2860D5A50 objectAtIndexedSubscript:i];
          v7 = [v5 isEqualToString:v6];

          if (v7)
          {
            v8 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8 * v1++;
            *(v8 + 398) = v2;
          }
        }

        ++v2;
      }

      while (v2 < [*(&xmmword_27F09BCF8 + 1) count]);
      v9 = v1 + 1;
    }

    else
    {
      v9 = 1;
    }

    std::vector<std::vector<GTMMappedBuffer>>::reserve(&xmmword_27F09C638, v9);
    std::vector<std::vector<GTMMappedBuffer>>::reserve(&qword_27F09C620, v9);
    std::vector<std::vector<GTMMappedBuffer>>::reserve(&xmmword_27F09C668, v9);
    std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::reserve(&qword_27F09C680, v9);
    std::vector<std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>>::reserve(&xmmword_27F09C698, v9);
    std::vector<NSObject  {objcproto21OS_dispatch_semaphore}* {__strong}>::reserve(&qword_27F09C6B0, v9);
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(4uLL);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_24D8849B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void GTUSCSamplingStreamingManagerHelper::ForceDrainAllSourceBuffers(GTUSCSamplingStreamingManagerHelper *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = this;
  v2 = [(GTUSCSamplingStreamingManagerHelper *)v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    do
    {
      v4 = 0;
      do
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = 0;
        v6 = *(*(&v8 + 1) + 8 * v4);
        while (v5 < [v6 ringBufferNum])
        {
          if ([v6 isEnabled])
          {
            [v6 drainRingBufferAtIndex:v5 dataSize:0x40000000];
          }

          v5 = (v5 + 1);
        }

        ++v4;
      }

      while (v4 != v2);
      v2 = [(GTUSCSamplingStreamingManagerHelper *)v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

intptr_t GTUSCSamplingStreamingManagerHelper::DrainAllSourceBuffers(intptr_t this, uint64_t a2)
{
  if (this != a2)
  {
    v3 = this;
    do
    {
      v4 = *v3;
      v5 = *(v3 + 8);
      while (v4 != v5)
      {
        v6 = *v4++;
        this = dispatch_semaphore_signal(v6);
      }

      v3 += 24;
    }

    while (v3 != a2);
  }

  return this;
}

void GTUSCSamplingStreamingManagerHelper::PollAndDrainSourceRingBuffer(GTUSCSamplingStreamingManagerHelper *this, unsigned int a2, uint64_t a3)
{
  atomic_fetch_add(this + 708, 1u);
  if ([*(this + 3) count] == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 + 1;
  }

  if (*(this + 552) != -1 && a2 - 1 <= 2)
  {
    v6 = *(this + 2 * a2 + 794);
  }

  v7 = atomic_load(this + 2843);
  if ((v7 & 1) == 0)
  {
    v9 = a2;
    v10 = v6;
    while (1)
    {
      v11 = atomic_load(this + 2844);
      if (v11)
      {
        goto LABEL_8;
      }

      v12 = *(*(*(this + 307) + 24 * v9) + 8 * a3);
      v13 = dispatch_time(0, 30000000);
      v14 = dispatch_semaphore_wait(v12, v13);
      v15 = atomic_load(this + 2841);
      if (v15)
      {
        v16 = v14;
        v17 = atomic_load(this + 2840);
        if ((v17 & 1) == 0 || !v14)
        {
          break;
        }
      }

LABEL_31:
      v28 = atomic_load(this + 2843);
      if (v28)
      {
        goto LABEL_8;
      }
    }

    v18 = *(*(this + 298) + 24 * v9);
    v19 = [*(this + 3) objectAtIndexedSubscript:v10];
    v20 = atomic_load(this + 2840);
    v21 = v19;
    if (![v21 isEnabled])
    {
      goto LABEL_24;
    }

    v30 = 0;
    v31 = 0;
    v29 = 0;
    if (([v21 ringBufferInfoAtIndex:a3 base:&v31 size:&v30 + 4 dataOffset:&v30 dataSize:&v29] & 1) == 0 || !v29 || !(((v29 & 0xFFFFE000) != 0) | v20 & 1))
    {
      goto LABEL_24;
    }

    v22 = (v18 + 120 * a3);
    if (v30 + v29 <= HIDWORD(v30))
    {
      GTMMappedBuffer::MemcpyFromSourceBuffer(v22, &v31[v30], v29, 0, 0);
    }

    else
    {
      GTMMappedBuffer::MemcpyFromSourceBuffer(v22, &v31[v30], HIDWORD(v30) - v30, v31, v29 - (HIDWORD(v30) - v30));
    }

    v23 = [v21 drainRingBufferAtIndex:a3 dataSize:v29];
    v24 = v29;
    if (v23 || !v29)
    {

      if (v24)
      {
        atomic_fetch_add(this + 705, 1u);
        goto LABEL_27;
      }
    }

    else
    {
LABEL_24:
    }

    v25 = atomic_load(this + 2840);
    if ((v25 & 1) == 0 || (v26 = atomic_load(this + 705), v27 = atomic_load(this + 706), v26 != v27))
    {
LABEL_28:
      if (!v16 && atomic_fetch_add(this + 707, 1u) + 1 == *(this + 549))
      {
        std::condition_variable::notify_all((this + 2848));
      }

      goto LABEL_31;
    }

LABEL_27:
    dispatch_semaphore_signal(*(*(*(this + 310) + 24 * v9) + 8 * a3));
    goto LABEL_28;
  }

LABEL_8:
  atomic_fetch_add(this + 708, 0xFFFFFFFF);
  if (!atomic_load(this + 708))
  {

    std::condition_variable::notify_all(this + 64);
  }
}

void *DynamicBuffer::AddBuffer2(DynamicBuffer *this, char *__src, const unsigned __int8 *a3)
{
  while (1)
  {
    v6 = *(this + 1);
    v8 = *(this + 3);
    v7 = *(this + 4);
    v9 = v7 - v8;
    if (v6 == 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3))
    {
      v10 = *(this + 5);
      if (v7 >= v10)
      {
        v12 = v6 + 1;
        if ((v6 + 1) > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (v14 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v15 = 24 * v6;
        *v15 = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0x1000000;
        v11 = 24 * v6 + 24;
        v16 = 24 * v6 - v9;
        memcpy((v15 - v9), v8, v9);
        *(this + 3) = v16;
        *(this + 4) = v11;
        *(this + 5) = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 1) = 0;
        v11 = (v7 + 24);
        *(v7 + 2) = 0x1000000;
      }

      *(this + 4) = v11;
      if (a3 <= 0x1000000)
      {
        v17 = 0x1000000;
      }

      else
      {
        v17 = a3;
      }

      *(v11 - 8) = v17;
      *(v11 - 24) = malloc_type_malloc(v17, 0x100004077774924uLL);
      *(v11 - 16) = 0;
      v6 = *(this + 1);
      v8 = *(this + 3);
    }

    v18 = &v8[24 * v6];
    v19 = v18[1];
    v20 = 0x1000000 - v19;
    v21 = 0x1000000 - v19 >= a3 ? a3 : 0x1000000 - v19;
    result = memcpy((*v18 + v19), __src, v21);
    v18[1] += v21;
    if (v20 >= a3)
    {
      break;
    }

    os_unfair_lock_lock(this + 4);
    ++*(this + 1);
    os_unfair_lock_unlock(this + 4);
    __src += v21;
    a3 -= v21;
  }

  return result;
}

void *GTMMappedBuffer::MemcpyFromSourceBuffer(GTMMappedBuffer *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v10 = a5 + a3;
  result = GTMMappedBuffer::Allocate(this, a5 + a3);
  if (result)
  {
    v12 = result;
    v13 = result + 4096;
    memcpy(result + 4096, a2, a3);
    memcpy(v13 + a3, a4, a5);
    dispatch_semaphore_wait(*this, 0xFFFFFFFFFFFFFFFFLL);
    v14 = *(this + 56);
    v15 = *(this + 8);
    v16 = *(this + 7);
    v17 = v15 - v16;
    if (v15 == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = 170 * ((v15 - v16) >> 3) - 1;
    }

    v19 = *(this + 10);
    v20 = *(this + 11) + v19;
    if (v18 == v20)
    {
      if (v19 < 0xAA)
      {
        v21 = *(this + 9);
        v22 = *(this + 6);
        if (v17 < v21 - v22)
        {
          if (v21 != v15)
          {
            operator new();
          }

          operator new();
        }

        if (v21 == v22)
        {
          v23 = 1;
        }

        else
        {
          v23 = (v21 - v22) >> 2;
        }

        v27 = this + 48;
        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v23);
      }

      *(this + 10) = v19 - 170;
      *&v26 = *v16;
      *(this + 7) = v16 + 8;
      std::__split_buffer<GTMMappedBuffer::UsedBlock *>::emplace_back<GTMMappedBuffer::UsedBlock *&>(this + 6, &v26);
      v16 = *(this + 7);
      v20 = *(this + 11) + *(this + 10);
    }

    v24 = *&v16[8 * (v20 / 0xAA)] - 4080 * (v20 / 0xAA) + 24 * v20;
    *v24 = v12;
    *(v24 + 8) = v13;
    *(v24 + 16) = v10;
    ++*(this + 11);
    v25 = *this;

    return dispatch_semaphore_signal(v25);
  }

  return result;
}

void sub_24D8852B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *GTMMappedBuffer::Allocate(dispatch_semaphore_t *this, unsigned int a2)
{
  dispatch_semaphore_wait(this[1], 0xFFFFFFFFFFFFFFFFLL);
  v4 = this[12];
  v5 = this[13];
  if (v4 == v5)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    v6 = a2;
    while (1)
    {
      isa = v4[3].isa;
      if (HIDWORD(v4[2].isa) == isa)
      {
        isa = 0;
        HIDWORD(v4[2].isa) = 0;
        LODWORD(v4[3].isa) = 0;
      }

      if (a2 + 32776 < LODWORD(v4[2].isa) - isa)
      {
        break;
      }

      v4 += 4;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v9 = a2 + 8;
    v10 = (v4[1].isa + isa);
    *v10 = (v6 + 8) | 0xCADDAC0000000000 | (v4->isa << 32);
    v8 = v10 + 1;
    LODWORD(v4[3].isa) += v9;
  }

  dispatch_semaphore_signal(this[1]);
  return v8;
}

void GTUSCSamplingStreamingManagerHelper::PostProcessRawData(GTUSCSamplingStreamingManagerHelper *this, unsigned int a2, unsigned int a3)
{
  v130[4] = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 708, 1u);
  if ([*(this + 3) count] == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 + 1;
  }

  v106 = a2;
  if (*(this + 552) != -1 && a2 - 1 <= 2)
  {
    v5 = *(this + 2 * a2 + 794);
  }

  v108 = this;
  v105 = [*(this + 3) objectAtIndexedSubscript:v5];
  v6 = this;
  v7 = atomic_load(this + 2843);
  if ((v7 & 1) == 0)
  {
    v96 = a2;
    v95 = 3 * a2;
    v100 = 120 * a3;
    do
    {
      v10 = atomic_load(v6 + 2844);
      if (v10)
      {
        break;
      }

      dispatch_semaphore_wait(*(*(*(v6 + 310) + 24 * v96) + 8 * a3), 0xFFFFFFFFFFFFFFFFLL);
      v11 = atomic_load(v6 + 2843);
      if (v11)
      {
        break;
      }

      v12 = atomic_load(v6 + 2844);
      if (v12)
      {
        break;
      }

      dispatch_semaphore_wait(*(*(v6 + 313) + 8 * v106), 0xFFFFFFFFFFFFFFFFLL);
      v13 = *(*(v6 + 298) + 8 * v95) + v100;
      v99 = *(*(v6 + 304) + 8 * v95);
      v14 = *(*(v6 + 295) + 8 * v95);
      dispatch_semaphore_wait(*v13, 0xFFFFFFFFFFFFFFFFLL);
      v120 = *(v13 + 48);
      *(v13 + 48) = 0u;
      v121 = *(v13 + 64);
      *(v13 + 64) = 0u;
      v122 = *(v13 + 80);
      *(v13 + 80) = 0u;
      v102 = v13;
      dispatch_semaphore_signal(*v13);
      memset(v119, 0, sizeof(v119));
      if (*(&v122 + 1))
      {
        if (*(&v122 + 1) <= 0xAAAAAAAAAAAAAAAuLL)
        {
          *&v118 = v119;
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>>(*(&v122 + 1));
        }

LABEL_99:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v15 = v14 + v100;
      v16 = atomic_load(v6 + 2840);
      if ((v16 & 1) == 0)
      {
        goto LABEL_28;
      }

      if (v121 == *(&v120 + 1))
      {
        goto LABEL_28;
      }

      v17 = (*(&v120 + 1) + 8 * (v122 / 0xAA));
      v18 = *v17;
      v19 = *v17 - 4080 * (v122 / 0xAA) + 24 * v122;
      v20 = *(*(&v120 + 1) + 8 * ((*(&v122 + 1) + v122) / 0xAAuLL)) - 4080 * ((*(&v122 + 1) + v122) / 0xAAuLL) + 24 * (*(&v122 + 1) + v122);
      if (v19 == v20)
      {
        goto LABEL_28;
      }

      v21 = 0;
      do
      {
        if (*(v19 + 16))
        {
          ++v21;
        }

        v19 += 24;
        if (v19 - v18 == 4080)
        {
          v22 = v17[1];
          ++v17;
          v18 = v22;
          v19 = v22;
        }
      }

      while (v19 != v20);
      if (!v21)
      {
LABEL_28:
        v23 = atomic_load(v6 + 2840);
        if (v23)
        {
          dispatch_semaphore_wait(*v15, 0xFFFFFFFFFFFFFFFFLL);
          v116 = *(v15 + 48);
          *(v15 + 48) = 0u;
          v117 = *(v15 + 64);
          *(v15 + 64) = 0u;
          v118 = *(v15 + 80);
          *(v15 + 80) = 0u;
          dispatch_semaphore_signal(*v15);
          if (*(&v118 + 1))
          {
            v24 = *(*(&v116 + 1) + 8 * (v118 / 0xAA)) - 4080 * (v118 / 0xAA) + 24 * v118;
            v25 = *v24;
            v26 = *(v24 + 8);
            v27 = *(v24 + 16);
            v28 = objc_autoreleasePoolPush();
            v29 = [MEMORY[0x277CBEB28] dataWithBytes:v26 length:v27];
            objc_autoreleasePoolPop(v28);
            GTMMappedBuffer::Deallocate(v15, v25);
            v115 = 0;
            v30 = v29;
            v31 = v108;
            v32 = [v29 bytes];
            v33 = [v29 length];
            v34 = atomic_load(v108 + 2840);
            GTMMappedBuffer::PostProcessRawDataFromSource(&v112, (v99 + v100), v105, v32, v33, &v115, a3, v34 & 1);
            v35 = v113;
            if (v113 && v35 <= [v29 length])
            {
              v36 = v29;
              v31 = v108;
              GTMMappedBuffer::MemcpyFromSourceBuffer(v15, ([v29 bytes] + objc_msgSend(v29, "length") - v35), v35, 0, 0);
            }

            v37 = v112;
            if (v115 && v112)
            {
              v38 = v119[1];
              if (v119[1] >= v119[2])
              {
                v40 = 0xAAAAAAAAAAAAAAABLL * ((v119[1] - v119[0]) >> 3) + 1;
                if (v40 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_99;
                }

                if (0x5555555555555556 * ((v119[2] - v119[0]) >> 3) > v40)
                {
                  v40 = 0x5555555555555556 * ((v119[2] - v119[0]) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v119[2] - v119[0]) >> 3) >= 0x555555555555555)
                {
                  v41 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v41 = v40;
                }

                v126 = v119;
                if (v41)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>>(v41);
                }

                v42 = (8 * ((v119[1] - v119[0]) >> 3));
                v123 = 0;
                v124 = v42;
                *(&v125 + 1) = 0;
                *v42 = v115;
                v42[1] = v37;
                v42[2] = v114;
                *&v125 = v42 + 3;
                v43 = v42 + v119[0] - v119[1];
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>,std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>*>(v119[0], v119[1], v43);
                v44 = v119[0];
                v45 = v119[2];
                v119[0] = v43;
                v103 = v125;
                *&v119[1] = v125;
                *&v125 = v44;
                *(&v125 + 1) = v45;
                v123 = v44;
                v124 = v44;
                std::__split_buffer<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>::~__split_buffer(&v123);
                v39 = v103;
                v37 = v112;
              }

              else
              {
                *v119[1] = v115;
                *(v38 + 8) = v37;
                *(v38 + 16) = v114;
                v39 = v38 + 24;
              }

              v119[1] = v39;
            }

            atomic_fetch_add(v31 + 351, v37);
          }

          std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](&v116);
        }

        v21 = 0;
      }

      v98 = v21;
      if (v121 != *(&v120 + 1))
      {
        v104 = (*(&v120 + 1) + 8 * (v122 / 0xAA));
        v46 = *v104 - 4080 * (v122 / 0xAA) + 24 * v122;
        v101 = *(*(&v120 + 1) + 8 * ((*(&v122 + 1) + v122) / 0xAAuLL)) - 4080 * ((*(&v122 + 1) + v122) / 0xAAuLL) + 24 * (*(&v122 + 1) + v122);
        if (v46 != v101)
        {
          v47 = 0;
          do
          {
            v112 = 0;
            if (*(v46 + 16))
            {
              dispatch_semaphore_wait(*v15, 0xFFFFFFFFFFFFFFFFLL);
              v116 = *(v15 + 48);
              *(v15 + 48) = 0u;
              v117 = *(v15 + 64);
              *(v15 + 64) = 0u;
              v118 = *(v15 + 80);
              *(v15 + 80) = 0u;
              dispatch_semaphore_signal(*v15);
              if (*(&v118 + 1))
              {
                v48 = *(*(&v116 + 1) + 8 * (v118 / 0xAA)) - 4080 * (v118 / 0xAA) + 24 * v118;
                v50 = *v48;
                v49 = *(v48 + 8);
                v51 = *(v48 + 16);
                if (v51 > 0x8000)
                {
                  v58 = objc_autoreleasePoolPush();
                  v53 = [MEMORY[0x277CBEB28] dataWithCapacity:(*(v46 + 16) + v51)];
                  [v53 appendBytes:v49 length:v51];
                  [v53 appendBytes:*(v46 + 8) length:*(v46 + 16)];
                  v59 = v53;
                  v52 = [v53 bytes];
                  v54 = [v53 length];
                  objc_autoreleasePoolPop(v58);
                }

                else
                {
                  v52 = (*v46 - v51 + 0x8000);
                  memcpy(v52, v49, v51);
                  v53 = 0;
                  v54 = *(v46 + 16) + v51;
                }

                GTMMappedBuffer::Deallocate(v15, v50);
              }

              else
              {
                v53 = 0;
                v52 = *(v46 + 8);
                v54 = *(v46 + 16);
              }

              GTMMappedBuffer::PostProcessRawDataFromSource(&v123, (v99 + v100), v105, v52, v54, &v112, a3, ++v47 == v98);
              v56 = v123;
              if (v124)
              {
                v60 = *(v46 + 16);
                v61 = v60 >= v124;
                v62 = v60 - v124;
                if (v61)
                {
                  GTMMappedBuffer::MemcpyFromSourceBuffer(v15, (*(v46 + 8) + v62), v124, 0, 0);
                }
              }

              atomic_fetch_add(v108 + 351, v56);
              v57 = v125;

              std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](&v116);
              v55 = v112;
            }

            else
            {
              v55 = 0;
              v56 = 0;
              v57 = 0;
            }

            GTMMappedBuffer::Deallocate(v102, *v46);
            if (v55 && v56)
            {
              v63 = v119[1];
              if (v119[1] >= v119[2])
              {
                v65 = 0xAAAAAAAAAAAAAAABLL * ((v119[1] - v119[0]) >> 3) + 1;
                if (v65 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_99;
                }

                if (0x5555555555555556 * ((v119[2] - v119[0]) >> 3) > v65)
                {
                  v65 = 0x5555555555555556 * ((v119[2] - v119[0]) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v119[2] - v119[0]) >> 3) >= 0x555555555555555)
                {
                  v66 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v66 = v65;
                }

                *&v118 = v119;
                if (v66)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>>(v66);
                }

                v67 = (8 * ((v119[1] - v119[0]) >> 3));
                *&v116 = 0;
                *(&v116 + 1) = v67;
                *(&v117 + 1) = 0;
                *v67 = v55;
                v67[1] = v56;
                v67[2] = v57;
                *&v117 = v67 + 3;
                v68 = v67 + v119[0] - v119[1];
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>,std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>*>(v119[0], v119[1], v68);
                v69 = v119[0];
                v70 = v119[2];
                v119[0] = v68;
                v97 = v117;
                *&v119[1] = v117;
                *&v117 = v69;
                *(&v117 + 1) = v70;
                *&v116 = v69;
                *(&v116 + 1) = v69;
                std::__split_buffer<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>::~__split_buffer(&v116);
                v64 = v97;
              }

              else
              {
                *v119[1] = v55;
                *(v63 + 8) = v56;
                *(v63 + 16) = v57;
                v64 = v63 + 24;
              }

              v119[1] = v64;
            }

            v46 += 24;
            if (v46 - *v104 == 4080)
            {
              v46 = v104[1];
              ++v104;
            }
          }

          while (v46 != v101);
        }
      }

      dispatch_semaphore_signal(*(*(v108 + 313) + 8 * v106));
      v71 = v119[0];
      v72 = v119[1];
      while (v71 != v72)
      {
        v73 = objc_autoreleasePoolPush();
        v74 = *(v71 + 16);
        v75 = v74;
        if (v74)
        {
          v79 = v74;
        }

        else
        {
          v76 = objc_alloc(MEMORY[0x277CBEA90]);
          v77 = *v71;
          v78 = *(v71 + 8);
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = ___ZN35GTUSCSamplingStreamingManagerHelper18PostProcessRawDataEjj_block_invoke;
          v109[3] = &__block_descriptor_48_e12_v24__0_v8Q16l;
          v109[4] = v108;
          v110 = v106;
          v111 = a3;
          v79 = [v76 initWithBytesNoCopy:v77 length:v78 deallocator:v109];
        }

        v80 = v79;
        v130[0] = v79;
        v129[0] = @"ShaderProfilerData";
        v129[1] = @"Source";
        v81 = [v105 name];
        v130[1] = v81;
        v129[2] = @"SourceIndex";
        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v106];
        v130[2] = v82;
        v129[3] = @"RingBufferIndex";
        v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
        v130[3] = v83;
        v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:4];

        (*(*(*v108 + 32) + 16))();
        objc_autoreleasePoolPop(v73);
        v71 += 24;
      }

      v6 = v108;
      if (*(&v122 + 1))
      {
        atomic_fetch_add(v108 + 706, DWORD2(v122));
      }

      v85 = atomic_load(v108 + 2840);
      if (v85)
      {
        v86 = atomic_load(v108 + 707);
        if (v86 == *(v108 + 549))
        {
          v87 = atomic_load(v108 + 705);
          v88 = atomic_load(v108 + 706);
          if (v87 == v88)
          {
            v127 = @"Post Processing Frame Marker";
            v89 = MEMORY[0x277CCABB0];
            v90 = atomic_load(v108 + 709);
            v91 = [v89 numberWithUnsignedInt:v90];
            v128 = v91;
            v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];

            (*(*(*v108 + 32) + 16))();
            v93 = atomic_load(v108 + 2841);
            if (v93)
            {
              std::condition_variable::notify_all((v108 + 2848));
            }

            std::condition_variable::notify_all((v108 + 2960));

            v6 = v108;
          }
        }
      }

      *&v116 = v119;
      std::vector<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v116);
      std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](&v120);
      v94 = atomic_load(v6 + 2843);
    }

    while ((v94 & 1) == 0);
  }

  atomic_fetch_add(v6 + 708, 0xFFFFFFFF);
  if (!atomic_load(v6 + 708))
  {
    std::condition_variable::notify_all(v6 + 64);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24D885F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  a33 = &a44;
  std::vector<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a33);
  std::deque<GTMMappedBuffer::UsedBlock>::~deque[abi:nn200100](&a47);

  _Unwind_Resume(a1);
}

uint64_t GTMMappedBuffer::Deallocate(uint64_t this, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = this;
    if (*(this + 96) != *(this + 104))
    {
      if (*(this + 36))
      {
        this = dispatch_semaphore_wait(*(this + 8), 0xFFFFFFFFFFFFFFFFLL);
        v6 = *(a2 - 1);
        v5 = a2 - 8;
        v4 = v6;
        if (v6 >> 40 == 13295020)
        {
          v7 = v2[12];
          if (BYTE4(v4) < ((v2[13] - v7) >> 5))
          {
            v8 = v7 + 32 * BYTE4(v4);
            v9 = &v5[-*(v8 + 8)];
            if (v9 >= 0 && *(v8 + 16) > v9)
            {
              *(v8 + 20) += v4;
            }

            v10 = v2[1];

            return dispatch_semaphore_signal(v10);
          }
        }
      }
    }
  }

  return this;
}

void GTMMappedBuffer::PostProcessRawDataFromSource(void *a1, dispatch_semaphore_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8)
{
  v15 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (a5)
  {
    if ((8 * a5) >= 0x13FDD)
    {
      v16 = (8 * a5 / 5uLL + 7) & 0x7FFFFFFFFFFFFFF8;
    }

    else
    {
      v16 = 0x4000;
    }

    v17 = GTMMappedBuffer::Allocate(a2, v16);
    *a6 = v17;
    if (v17)
    {
      v18 = v17;
LABEL_9:
      v23 = 0;
      v24 = 0;
      LOBYTE(v21) = a8;
      [v15 postProcessRawDataWithRingBufferIndex:a7 source:a4 sourceSize:a5 + 8 sourceRead:&v24 sourceWrite:a5 output:v18 outputSize:v16 outputRead:0 outputWrite:&v23 isLast:v21];
      v20 = (a5 + 8 + v24) / (a5 + 8) * (a5 + 8) - (v24 + 8);
      *a1 = v23;
      a1[1] = v20;
      goto LABEL_10;
    }

    context = objc_autoreleasePoolPush();
    v19 = [MEMORY[0x277CBEB28] dataWithLength:v16];
    a1[2] = v19;
    objc_autoreleasePoolPop(context);
    if (v19)
    {
      v18 = [v19 mutableBytes];
      *a6 = v18;
      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t ___ZN35GTUSCSamplingStreamingManagerHelper18PostProcessRawDataEjj_block_invoke(uint64_t result, unsigned __int8 *a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 2432);
  v4 = *(v2 + 2440);
  if (v3 != v4)
  {
    v5 = *(result + 40);
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) > v5)
    {
      v6 = *(result + 44);
      v8 = (v3 + 24 * v5);
      v7 = *v8;
      if (0xEEEEEEEEEEEEEEEFLL * ((v8[1] - *v8) >> 3) < v6)
      {
        return GTMMappedBuffer::Deallocate(v7 + 120 * v6, a2);
      }
    }
  }

  return result;
}

void std::vector<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 3;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>,std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(a3 + 16) = v6;
      v5 += 24;
      a3 += 24;
    }

    while (v5 != a2);
    do
    {

      v4 += 24;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<std::tuple<unsigned char *,unsigned long long,NSMutableData * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void GTUSCSamplingStreamingManagerHelper::SignalAndWaitForAllThreadsToTerminate(GTUSCSamplingStreamingManagerHelper *this)
{
  v1 = qword_27F09C680;
  v2 = xmmword_27F09C688;
  while (v1 != v2)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    while (v3 != v4)
    {
      v5 = *v3++;
      dispatch_semaphore_signal(v5);
    }

    v1 += 24;
  }

  v7 = *(&xmmword_27F09C698 + 1);
  for (i = xmmword_27F09C698; i != v7; i += 3)
  {
    v8 = *i;
    v9 = i[1];
    while (v8 != v9)
    {
      v10 = *v8++;
      dispatch_semaphore_signal(v10);
    }
  }

  v12.__m_ = &qword_27F09C8A8;
  v12.__owns_ = 1;
  std::mutex::lock(&qword_27F09C8A8);
  while (atomic_load(&unk_27F09C7F8))
  {
    std::condition_variable::wait(&qword_27F09C8E8, &v12);
  }

  if (v12.__owns_)
  {
    std::mutex::unlock(v12.__m_);
  }
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x2530332C0](v3, 0x1020C4062D53EE8);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x253033100]();
    MEMORY[0x2530332C0](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_1>>(uint64_t *a1)
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

void sub_24D8866BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  GTUSCSamplingStreamingManagerHelper::PollAndDrainSourceRingBuffer(v5[1], *(v5 + 4), *(v5 + 5));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](&v5);
  return 0;
}

void sub_24D88672C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::StartBackgroundProcessingThreads(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(GTUSCSamplingStreamingManagerHelper *this)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(this + 319);
  *(this + 319) = v2;

  v4 = dispatch_semaphore_create(0);
  v5 = *(this + 320);
  *(this + 320) = v4;

  operator new();
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x2530332C0](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>(uint64_t *a1)
{
  v11 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v11[1];
  while (1)
  {
    v5 = atomic_load((v4 + 2841));
    if (v5)
    {
      break;
    }

    v6 = atomic_load((v4 + 2844));
    if (v6)
    {
      break;
    }

    v7 = *(v4 + 2552);
    v8 = dispatch_time(0, 250000);
    if (!dispatch_semaphore_wait(v7, v8))
    {
      break;
    }

    v9 = atomic_load((v4 + 2842));
    if (v9)
    {
      GTUSCSamplingStreamingManagerHelper::ForceDrainAllSourceBuffers(*(v4 + 24));
    }
  }

  atomic_store(0, (v4 + 2842));
  dispatch_semaphore_signal(*(v4 + 2560));
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](&v11);
  return 0;
}

void sub_24D88699C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(void)::$_0>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

intptr_t GTUSCSamplingStreamingManagerHelper::WaitForPreSampling(GTUSCSamplingStreamingManagerHelper *this)
{
  atomic_store(1u, this + 2842);
  usleep(0x30D40u);
  dispatch_semaphore_signal(*(this + 319));
  v2 = *(this + 320);

  return dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

void GTUSCSamplingStreamingManagerHelper::StreamShaderProfilingData(GTUSCSamplingStreamingManagerHelper *this)
{
  v72[2] = *MEMORY[0x277D85DE8];
  v1 = atomic_load(byte_27F09C804);
  if ((v1 & 1) == 0)
  {
    v2 = -1431655765 * ((*(&xmmword_27F09C638 + 1) - xmmword_27F09C638) >> 3);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (-286331153 * ((*(xmmword_27F09C638 + 24 * i + 8) - *(xmmword_27F09C638 + 24 * i)) >> 3))
        {
          operator new();
        }
      }
    }

    v22 = *GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
    v4 = [*(*GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) defaultDevice];
    v23 = v4;
    if (v4)
    {
      atomic_store(HIDWORD(qword_27F09C588), &xmmword_27F09C7E8);
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x2020000000;
      v70[3] = 0;
      v5 = atomic_load(&unk_27F09C803);
      if ((v5 & 1) == 0)
      {
        do
        {
          v6 = atomic_load(byte_27F09C804);
          if (v6)
          {
            break;
          }

          v24 = objc_opt_new();
          v7 = 0;
          v25 = 3;
          do
          {
            v64 = 0;
            v65 = &v64;
            v66 = 0x3032000000;
            v67 = __Block_byref_object_copy_;
            v68 = __Block_byref_object_dispose_;
            v69 = objc_opt_new();
            v61[0] = 0;
            v61[1] = v61;
            v61[2] = 0x5812000000;
            v61[3] = __Block_byref_object_copy__307;
            v61[4] = __Block_byref_object_dispose__308;
            v61[5] = &unk_24DB95716;
            memset(v62, 0, sizeof(v62));
            v63 = 1065353216;
            v58[0] = 0;
            v58[1] = v58;
            v58[2] = 0x5812000000;
            v58[3] = __Block_byref_object_copy__417;
            v58[4] = __Block_byref_object_dispose__418;
            v58[5] = &unk_24DB95716;
            memset(v59, 0, sizeof(v59));
            v60 = 1065353216;
            v54[0] = 0;
            v54[1] = v54;
            v54[2] = 0x4812000000;
            v54[3] = __Block_byref_object_copy__420;
            v54[4] = __Block_byref_object_dispose__421;
            v54[5] = &unk_24DB95716;
            v56 = 0;
            v57 = 0;
            __p = 0;
            v52[0] = 0;
            v52[1] = v52;
            v52[2] = 0x3032000000;
            v52[3] = __Block_byref_object_copy_;
            v52[4] = __Block_byref_object_dispose_;
            v53 = 0;
            v8 = objc_autoreleasePoolPush();
            v9 = objc_opt_new();
            objc_autoreleasePoolPop(v8);
            v50[0] = 0;
            v50[1] = v50;
            v50[2] = 0x3032000000;
            v50[3] = __Block_byref_object_copy_;
            v50[4] = __Block_byref_object_dispose_;
            v51 = objc_opt_new();
            v10 = MEMORY[0x277CCA8C8];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = ___ZN35GTUSCSamplingStreamingManagerHelper25StreamShaderProfilingDataEv_block_invoke;
            v40[3] = &unk_279657430;
            v49 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
            v42 = v61;
            v43 = v54;
            v44 = v58;
            v45 = v70;
            v26 = v9;
            v41 = v26;
            v46 = &v64;
            v47 = v50;
            v48 = v52;
            v11 = [v10 blockOperationWithBlock:v40];
            v12 = MEMORY[0x277CCA8C8];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = ___ZN35GTUSCSamplingStreamingManagerHelper25StreamShaderProfilingDataEv_block_invoke_2;
            v30[3] = &unk_279657368;
            v38 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
            v39 = v22;
            v31 = v23;
            v32 = v61;
            v33 = v58;
            v34 = v54;
            v35 = &v64;
            v36 = v50;
            v37 = v52;
            v13 = [v12 blockOperationWithBlock:v30];
            v14 = v13;
            if (v7)
            {
              [v13 addDependency:v7];
            }

            [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v14];
            if (dword_27F09C54C && dword_27F09C548)
            {
              v15 = MEMORY[0x277CCA8C8];
              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = ___ZN35GTUSCSamplingStreamingManagerHelper25StreamShaderProfilingDataEv_block_invoke_3;
              v27[3] = &unk_279658AD8;
              v29 = &GTUSCSamplingStreamingManagerHelper::Instance(void)::instance;
              v28 = v26;
              v16 = [v15 blockOperationWithBlock:v27];
              [v16 addDependency:v14];
              [v11 addDependency:v16];
              [**(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) addOperation:v16];
            }

            else
            {
              [v11 addDependency:v14];
            }

            [*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) + 8) addOperation:v11];
            [v24 addDependency:v11];

            _Block_object_dispose(v50, 8);
            _Block_object_dispose(v52, 8);

            _Block_object_dispose(v54, 8);
            if (__p)
            {
              v56 = __p;
              operator delete(__p);
            }

            _Block_object_dispose(v58, 8);
            std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::~__hash_table(v59);
            _Block_object_dispose(v61, 8);
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v62);
            _Block_object_dispose(&v64, 8);

            v7 = v11;
            --v25;
          }

          while (v25);
          [*(*(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 8) + 8) addOperation:v24];
          [v24 waitUntilFinished];

          v17 = atomic_load(&unk_27F09C803);
        }

        while ((v17 & 1) == 0);
      }

      GTUSCSamplingStreamingManagerHelper::SignalAndWaitForAllThreadsToTerminate(v4);
      v18 = *(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance + 32);
      v71[0] = @"usc sampling address mappings";
      v19 = [xmmword_27F09C480 mappings];
      v71[1] = @"usc sampling address data";
      v72[0] = v19;
      v72[1] = qword_27F09C498;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
      (*(v18 + 16))(v18, v20);

      _Block_object_dispose(v70, 8);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_24D887330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  _Block_object_dispose((v28 - 192), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__417(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__420(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__421(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN35GTUSCSamplingStreamingManagerHelper25StreamShaderProfilingDataEv_block_invoke(void *a1)
{
  v120 = *MEMORY[0x277D85DE8];
  v2 = a1[12];
  v3 = atomic_load((v2 + 2843));
  if (v3 & 1) == 0 || (v4 = atomic_load((v2 + 2844)), (v4))
  {
    __lk.__m_ = (v2 + 3008);
    __lk.__owns_ = 1;
    std::mutex::lock((v2 + 3008));
    v5 = (v2 + 2824);
    v6 = atomic_load((v2 + 2820));
    while (1)
    {
      v7 = atomic_load(v5);
      if (v6 == v7)
      {
        break;
      }

      std::condition_variable::wait((v2 + 2960), &__lk);
      v6 = atomic_load((v2 + 2820));
      v5 = (v2 + 2824);
    }

    [*(v2 + 8) gatherStats];
    v100 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
    v99 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(a1[5] + 8) + 72)];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    v11 = 126 - 2 * __clz(&v10[-v9] >> 4);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v9, v10, v12, 1);
    v96 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)) >> 4];
    v95 = [MEMORY[0x277CBEB28] dataWithCapacity:*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)];
    [v95 appendBytes:*(*(a1[6] + 8) + 48) length:*(*(a1[6] + 8) + 56) - *(*(a1[6] + 8) + 48)];
    v13 = a1[6];
    v14 = *(v13 + 8);
    v15 = *(v14 + 48);
    v16 = *(v14 + 56);
    v97 = a1;
    if (v15 == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v15 + 8);
    }

    v105 = v2;
    if ((v16 - v15) >= 0x11)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        if (v17 < *(v15 + v18 + 16))
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
          v118[0] = v20;
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(v97[6] + 8) + 48) + v18 + 16) - 1];
          v118[1] = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
          [v96 addObject:v22];

          v13 = v97[6];
        }

        v23 = *(v13 + 8);
        v15 = *(v23 + 48);
        v24 = *(v23 + 56);
        if (v17 <= *(v15 + v18 + 24))
        {
          v17 = *(v15 + v18 + 24);
        }

        ++v19;
        v18 += 16;
      }

      while (v19 < (v24 - v15) >> 4);
    }

    for (i = *(*(v97[5] + 8) + 64); i; i = *i)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 6)];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 4)];
      [v100 setObject:v26 forKeyedSubscript:v27];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 7)];
      v117[0] = v28;
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 8)];
      v117[1] = v29;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 9)];
      v117[2] = v30;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:i[5]];
      v117[3] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:4];
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 4)];
      [v99 setObject:v32 forKeyedSubscript:v33];
    }

    v98 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*(v97[7] + 8) + 72)];
    for (j = *(*(v97[7] + 8) + 64); j; j = *j)
    {
      v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:(j[4] - j[3]) >> 4];
      v36 = j[3];
      v37 = j[4];
      while (v36 != v37)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v36];
        v116[0] = v38;
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v36 + 1)];
        v116[1] = v39;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
        [v35 addObject:v40];

        v36 += 4;
      }

      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(j + 4)];
      [v98 setObject:v35 forKeyedSubscript:v41];
    }

    v108 = 0;
    v91 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v100 requiringSecureCoding:1 error:&v108];
    v42 = v108;
    v43 = [*(v105 + 1968) mutableBytes];
    v44 = *(*(v97[8] + 8) + 24);
    v92 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v43 + v44 length:*(v105 + 1976) - v44 freeWhenDone:0];
    v107 = v42;
    v93 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v99 requiringSecureCoding:1 error:&v107];
    v45 = v107;

    v106 = v45;
    v94 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v98 requiringSecureCoding:1 error:&v106];
    v90 = v106;

    v46 = v105;
    v47 = *(v105 + 1944);
    if (*(v105 + 2212) >= 2)
    {
      v89 = [v47 mappings];
      v103 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v89, "count")}];
      v104 = objc_opt_new();
      v49 = objc_opt_new();
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      obj = v89;
      v50 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
      if (v50)
      {
        v102 = *v111;
        do
        {
          for (k = 0; k != v50; ++k)
          {
            if (*v111 != v102)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v110 + 1) + 8 * k);
            v53 = [v52 mutableCopy];
            v54 = [v52 objectForKeyedSubscript:@"encIndex"];
            v55 = [v54 unsignedIntValue];

            v56 = *(v105 + 1960);
            v57 = [v52 objectForKeyedSubscript:@"drawCallIndex"];
            v58 = [v57 unsignedIntValue];

            v59 = [v52 objectForKeyedSubscript:@"mappedSize"];
            v60 = [v59 unsignedLongLongValue];

            v61 = [v52 objectForKeyedSubscript:@"type"];
            v62 = [v52 objectForKeyedSubscript:@"binaryUniqueId"];
            v63 = GTShaderProfilerGenerateComputedKey(v55 % v56, v58, v60, v61);
            v64 = [v49 objectForKeyedSubscript:v63];
            LOBYTE(v60) = v64 == 0;

            if ((v60 & 1) == 0)
            {
              v65 = [v104 objectForKeyedSubscript:v63];
              v66 = [v65 unsignedIntValue];

              v67 = (v66 + 1);
              v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", v63, v67];

              v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v67];
              [v104 setObject:v69 forKeyedSubscript:v68];

              v63 = v68;
            }

            [v49 setObject:v62 forKeyedSubscript:v63];
            v70 = [*(v105 + 1952) objectForKeyedSubscript:v63];
            [v53 setObject:v70 forKeyedSubscript:@"binaryUniqueId"];

            [v103 addObject:v53];
          }

          v50 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
        }

        while (v50);
      }

      v48 = [v103 copy];
      v46 = v105;
    }

    else
    {
      v48 = [v47 mappings];
    }

    v71 = objc_alloc_init(ProgramAddressTableCollector);
    v72 = *(v46 + 1944);
    *(v46 + 1944) = v71;

    v114[0] = @"Frame Index";
    v73 = MEMORY[0x277CCABB0];
    v74 = v105;
    v75 = atomic_load((v105 + 2836));
    v76 = [v73 numberWithUnsignedInt:v75];
    v115[0] = v76;
    v115[1] = v92;
    v114[1] = @"Program Address Buffer";
    v114[2] = @"Program Address Mappings";
    v115[2] = v48;
    v115[3] = v91;
    v114[3] = @"TraceId to BatchId";
    v114[4] = @"Source Sample Marker";
    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v74 + 32)];
    v78 = v97[4];
    v115[4] = v77;
    v115[5] = v78;
    v114[5] = @"Frame Encoder Time Data";
    v114[6] = @"TraceId to SampleIndex";
    v115[6] = v93;
    v114[7] = @"MTLFX TraceIds";
    v79 = [*(*(v97[9] + 8) + 40) mtlfxTracingInfo];
    v80 = v79;
    if (v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = MEMORY[0x277CBEC10];
    }

    v115[7] = v81;
    v114[8] = @"Frame Consistent Perf Info";
    v82 = v97[11];
    v115[8] = *(*(v97[10] + 8) + 40);
    v115[9] = v96;
    v114[9] = @"Restore Timestamps";
    v114[10] = @"Command Buffer Timestamps";
    v115[10] = v95;
    v114[11] = @"PState Info Data";
    if (*(*(v82 + 8) + 40))
    {
      v83 = *(*(v82 + 8) + 40);
    }

    else
    {
      v83 = MEMORY[0x277CBEC10];
    }

    v115[11] = v83;
    v115[12] = v94;
    v114[12] = @"TraceId to Coalesced BatchId";
    v114[13] = @"PState non-consistent";
    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*v105 + 68)];
    v115[13] = v84;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:14];

    (*(*(*v105 + 32) + 16))();
    *(*(v97[8] + 8) + 24) = *(v105 + 1976);
    atomic_fetch_add((v105 + 2816), 0xFFFFFFFF);
    v86 = atomic_load((v105 + 2808));
    if (v86 > 0x3000000 || (v87 = atomic_load((v105 + 2816)), v87 <= 0))
    {
      atomic_store(1u, (v105 + 2843));
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  v88 = *MEMORY[0x277D85DE8];
}

void sub_24D8880F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::mutex *a31, char a32)
{
  if (a32 == 1)
  {
    std::mutex::unlock(a31);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN35GTUSCSamplingStreamingManagerHelper25StreamShaderProfilingDataEv_block_invoke_2(uint64_t result)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(result + 88);
  v2 = atomic_load(v1 + 2843);
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(v1 + 2844);
    if ((v3 & 1) == 0)
    {
      atomic_store(0, v1 + 2840);
      GTUSCSamplingStreamingManagerHelper::InitForPreSamplingWait(v1);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper25StreamShaderProfilingDataEv_block_invoke_3(uint64_t a1)
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

id GTSampleBufferManager::ResolveSampleBuffers(GTSampleBufferManager *this)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (*(this + 3) == v1)
  {
    v7 = 0;
  }

  else
  {
    v3 = *(this + 12);
    *(this + 13) += v3;
    *(v1 - 4) = v3;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(this + 2), "count")}];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v5 = *(this + 2);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN21GTSampleBufferManager20ResolveSampleBuffersEv_block_invoke;
    v18[3] = &unk_279657480;
    v20 = &v22;
    v21 = this;
    v6 = v4;
    v19 = v6;
    [v5 enumerateObjectsUsingBlock:v18];
    v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v23[3]];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v26 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendData:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v26 count:16];
      }

      while (v9);
    }

    _Block_object_dispose(&v22, 8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_24D888F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN21GTSampleBufferManager20ResolveSampleBuffersEv_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = (*(*(a1 + 48) + 24) + 8 * a3);
  v8 = v5;
  v7 = [v5 resolveCounterRange:{*v6, v6[1]}];
  *(*(*(a1 + 40) + 8) + 24) += [v7 length];
  [*(a1 + 32) addObject:v7];
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 16);
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 4;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v9, v9 + 2, a2 - 2);
              case 4:
                result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v9, v9 + 2, v9 + 4);
                v107 = v9[4];
                v108 = -1;
                if (*v8 >= v107)
                {
                  v108 = 1;
                }

                if (*v8 == v107)
                {
                  v109 = *(a2 - 1);
                  v110 = v9[5];
                  v104 = v109 >= v110;
                  v111 = v109 == v110;
                  v108 = -1;
                  if (v104)
                  {
                    v108 = 1;
                  }

                  if (v111)
                  {
                    v108 = 0;
                  }
                }

                if (v108 < 0)
                {
                  v9[4] = *v8;
                  *(a2 - 2) = v107;
                  v112 = v9[5];
                  v9[5] = *(a2 - 1);
                  *(a2 - 1) = v112;
                  v113 = v9[4];
                  v114 = v9[2];
                  v115 = -1;
                  if (v113 >= v114)
                  {
                    v115 = 1;
                  }

                  if (v113 == v114)
                  {
                    v116 = v9[5];
                    v117 = v9[3];
                    v104 = v116 >= v117;
                    v118 = v116 == v117;
                    v115 = -1;
                    if (v104)
                    {
                      v115 = 1;
                    }

                    if (v118)
                    {
                      v115 = 0;
                    }
                  }

                  if (v115 < 0)
                  {
                    v119 = v9[3];
                    v120 = v9[5];
                    v9[2] = v113;
                    v9[3] = v120;
                    v9[4] = v114;
                    v9[5] = v119;
                    v121 = *v9;
                    v122 = -1;
                    if (v113 >= *v9)
                    {
                      v122 = 1;
                    }

                    if (v113 == *v9)
                    {
                      v123 = v9[1];
                      v104 = v120 >= v123;
                      v124 = v120 == v123;
                      v122 = -1;
                      if (v104)
                      {
                        v122 = 1;
                      }

                      if (v124)
                      {
                        v122 = 0;
                      }
                    }

                    if (v122 < 0)
                    {
                      v125 = v9[1];
                      *v9 = v113;
                      v9[1] = v120;
                      v9[2] = v121;
                      v9[3] = v125;
                    }
                  }
                }

                return result;
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v100 = *v9;
              v101 = -1;
              if (*v8 >= *v9)
              {
                v101 = 1;
              }

              if (*v8 == *v9)
              {
                v102 = *(a2 - 1);
                v103 = v9[1];
                v104 = v102 >= v103;
                v105 = v102 == v103;
                v101 = -1;
                if (v104)
                {
                  v101 = 1;
                }

                if (v105)
                {
                  v101 = 0;
                }
              }

              if (v101 < 0)
              {
                *v9 = *v8;
                *(a2 - 2) = v100;
                v106 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v106;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v126 = (v9 + 2);
            v128 = v9 == a2 || v126 == a2;
            if (a4)
            {
              if (!v128)
              {
                v129 = 0;
                v130 = v9;
                do
                {
                  v131 = v126;
                  v132 = v130[2];
                  v133 = *v130;
                  if (v132 >= *v130)
                  {
                    v134 = 1;
                  }

                  else
                  {
                    v134 = -1;
                  }

                  if (v132 == *v130)
                  {
                    v135 = v130[3];
                    v136 = v130[1];
                    v137 = v135 == v136;
                    v134 = v135 >= v136 ? 1 : -1;
                    if (v137)
                    {
                      v134 = 0;
                    }
                  }

                  if (v134 < 0)
                  {
                    v138 = v130[3];
                    v139 = v129;
                    while (1)
                    {
                      v140 = v9 + v139;
                      v141 = *(v9 + v139 + 8);
                      *(v140 + 2) = v133;
                      *(v140 + 3) = v141;
                      if (!v139)
                      {
                        break;
                      }

                      v133 = *(v140 - 2);
                      if (v132 >= v133)
                      {
                        v142 = 1;
                      }

                      else
                      {
                        v142 = -1;
                      }

                      if (v132 == v133)
                      {
                        v143 = *(v9 + v139 - 8);
                        v144 = v138 == v143;
                        v142 = v138 >= v143 ? 1 : -1;
                        if (v144)
                        {
                          v142 = 0;
                        }
                      }

                      v139 -= 16;
                      if ((v142 & 0x80) == 0)
                      {
                        v145 = (v9 + v139 + 16);
                        goto LABEL_263;
                      }
                    }

                    v145 = v9;
LABEL_263:
                    *v145 = v132;
                    v145[1] = v138;
                  }

                  v126 = v131 + 16;
                  v129 += 16;
                  v130 = v131;
                }

                while (v131 + 16 != a2);
              }
            }

            else if (!v128)
            {
              v206 = v9 + 3;
              do
              {
                v207 = v126;
                v208 = v7[2];
                v209 = *v7;
                if (v208 >= *v7)
                {
                  v210 = 1;
                }

                else
                {
                  v210 = -1;
                }

                if (v208 == *v7)
                {
                  v211 = v7[3];
                  v212 = v7[1];
                  v213 = v211 == v212;
                  v210 = v211 >= v212 ? 1 : -1;
                  if (v213)
                  {
                    v210 = 0;
                  }
                }

                if (v210 < 0)
                {
                  v214 = v7[3];
                  v215 = v206;
                  do
                  {
                    v216 = *(v215 - 2);
                    *(v215 - 1) = v209;
                    *v215 = v216;
                    v209 = *(v215 - 5);
                    if (v208 >= v209)
                    {
                      v217 = 1;
                    }

                    else
                    {
                      v217 = -1;
                    }

                    if (v208 == v209)
                    {
                      v218 = *(v215 - 4);
                      v219 = v214 == v218;
                      v217 = v214 >= v218 ? 1 : -1;
                      if (v219)
                      {
                        v217 = 0;
                      }
                    }

                    v215 -= 2;
                  }

                  while (v217 < 0);
                  *(v215 - 1) = v208;
                  *v215 = v214;
                }

                v126 = v207 + 16;
                v206 += 2;
                v7 = v207;
              }

              while (v207 + 16 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v146 = (v10 - 2) >> 1;
              v147 = v146;
              do
              {
                v148 = v147;
                if (v146 >= v147)
                {
                  v149 = (2 * v147) | 1;
                  v150 = &v9[2 * v149];
                  if (2 * v148 + 2 < v10)
                  {
                    v151 = v150[2];
                    v152 = *v150 == v151;
                    if (*v150 >= v151)
                    {
                      v153 = 1;
                    }

                    else
                    {
                      v153 = -1;
                    }

                    if (v152)
                    {
                      v154 = v150[1];
                      v155 = v150[3];
                      v156 = v154 == v155;
                      v153 = v154 >= v155 ? 1 : -1;
                      if (v156)
                      {
                        v153 = 0;
                      }
                    }

                    if (v153 < 0)
                    {
                      v150 += 2;
                      v149 = 2 * v148 + 2;
                    }
                  }

                  v157 = &v9[2 * v148];
                  v158 = *v150;
                  v159 = *v157;
                  if (*v150 >= *v157)
                  {
                    v160 = 1;
                  }

                  else
                  {
                    v160 = -1;
                  }

                  if (*v150 == *v157)
                  {
                    v161 = v150[1];
                    v162 = v157[1];
                    v163 = v161 == v162;
                    v160 = v161 >= v162 ? 1 : -1;
                    if (v163)
                    {
                      v160 = 0;
                    }
                  }

                  if ((v160 & 0x80) == 0)
                  {
                    v164 = v157[1];
                    do
                    {
                      v165 = v157;
                      v157 = v150;
                      *v165 = v158;
                      v165[1] = v150[1];
                      if (v146 < v149)
                      {
                        break;
                      }

                      v166 = (2 * v149) | 1;
                      v150 = &v9[2 * v166];
                      v149 = 2 * v149 + 2;
                      if (v149 >= v10)
                      {
                        v149 = v166;
                      }

                      else
                      {
                        v167 = v150[2];
                        v168 = *v150 == v167;
                        if (*v150 >= v167)
                        {
                          v169 = 1;
                        }

                        else
                        {
                          v169 = -1;
                        }

                        if (v168)
                        {
                          v170 = v150[1];
                          v171 = v150[3];
                          v172 = v170 == v171;
                          v169 = v170 >= v171 ? 1 : -1;
                          if (v172)
                          {
                            v169 = 0;
                          }
                        }

                        if (v169 < 0)
                        {
                          v150 += 2;
                        }

                        else
                        {
                          v149 = v166;
                        }
                      }

                      v158 = *v150;
                      if (*v150 >= v159)
                      {
                        v173 = 1;
                      }

                      else
                      {
                        v173 = -1;
                      }

                      if (*v150 == v159)
                      {
                        v174 = v150[1];
                        v175 = v174 == v164;
                        v173 = v174 >= v164 ? 1 : -1;
                        if (v175)
                        {
                          v173 = 0;
                        }
                      }
                    }

                    while ((v173 & 0x80) == 0);
                    *v157 = v159;
                    v157[1] = v164;
                  }
                }

                v147 = v148 - 1;
              }

              while (v148);
              do
              {
                v176 = 0;
                v177 = *v9;
                v178 = v9[1];
                v179 = v9;
                do
                {
                  result = &v179[2 * v176];
                  v180 = (result + 16);
                  v181 = (2 * v176) | 1;
                  v176 = 2 * v176 + 2;
                  if (v176 >= v10)
                  {
                    v176 = v181;
                  }

                  else
                  {
                    v183 = (result + 32);
                    v182 = *(result + 32);
                    v184 = *(result + 16);
                    v185 = v184 == v182;
                    if (v184 >= v182)
                    {
                      v186 = 1;
                    }

                    else
                    {
                      v186 = -1;
                    }

                    if (v185)
                    {
                      v187 = *(result + 24);
                      v188 = *(result + 40);
                      v189 = v187 == v188;
                      if (v187 >= v188)
                      {
                        result = 1;
                      }

                      else
                      {
                        result = 255;
                      }

                      if (v189)
                      {
                        v186 = 0;
                      }

                      else
                      {
                        v186 = result;
                      }
                    }

                    if (v186 < 0)
                    {
                      v180 = v183;
                    }

                    else
                    {
                      v176 = v181;
                    }
                  }

                  *v179 = *v180;
                  v179[1] = v180[1];
                  v179 = v180;
                }

                while (v176 <= (v10 - 2) / 2);
                if (v180 == (a2 - 16))
                {
                  *v180 = v177;
                  v180[1] = v178;
                }

                else
                {
                  *v180 = *(a2 - 2);
                  v180[1] = *(a2 - 1);
                  *(a2 - 2) = v177;
                  *(a2 - 1) = v178;
                  v190 = (v180 - v9 + 16) >> 4;
                  v191 = v190 < 2;
                  v192 = v190 - 2;
                  if (!v191)
                  {
                    v193 = v192 >> 1;
                    v194 = &v9[2 * v193];
                    v195 = *v194;
                    v196 = *v180;
                    if (*v194 >= *v180)
                    {
                      v197 = 1;
                    }

                    else
                    {
                      v197 = -1;
                    }

                    if (*v194 == *v180)
                    {
                      v198 = v194[1];
                      v199 = v180[1];
                      v200 = v198 == v199;
                      v197 = v198 >= v199 ? 1 : -1;
                      if (v200)
                      {
                        v197 = 0;
                      }
                    }

                    if (v197 < 0)
                    {
                      v201 = v180[1];
                      do
                      {
                        v202 = v180;
                        v180 = v194;
                        *v202 = v195;
                        v202[1] = v194[1];
                        if (!v193)
                        {
                          break;
                        }

                        v193 = (v193 - 1) >> 1;
                        v194 = &v9[2 * v193];
                        v195 = *v194;
                        if (*v194 >= v196)
                        {
                          v203 = 1;
                        }

                        else
                        {
                          v203 = -1;
                        }

                        if (*v194 == v196)
                        {
                          v204 = v194[1];
                          v205 = v204 == v201;
                          v203 = v204 >= v201 ? 1 : -1;
                          if (v205)
                          {
                            v203 = 0;
                          }
                        }
                      }

                      while (v203 < 0);
                      *v180 = v196;
                      v180[1] = v201;
                    }
                  }
                }

                a2 -= 16;
                v191 = v10-- <= 2;
              }

              while (!v191);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = &v9[2 * (v10 >> 1)];
          if (v10 < 0x81)
          {
            result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(&v7[2 * (v10 >> 1)], v7, a2 - 2);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v7, &v7[2 * (v10 >> 1)], a2 - 2);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v7 + 2, v12 - 2, a2 - 4);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v7 + 4, &v7[2 * v11 + 2], a2 - 6);
            result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(v12 - 2, v12, &v7[2 * v11 + 2]);
            v13 = *v7;
            *v7 = *v12;
            *v12 = v13;
          }

          --a3;
          v14 = *v7;
          if (a4)
          {
            break;
          }

          v15 = *(v7 - 2);
          v16 = v15 == v14;
          if (v15 >= v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v16)
          {
            v18 = *(v7 - 1);
            v19 = v7[1];
            v20 = v18 == v19;
            v17 = v18 >= v19 ? 1 : -1;
            if (v20)
            {
              v17 = 0;
            }
          }

          if (v17 < 0)
          {
            break;
          }

          v61 = v7[1];
          if (v14 >= *v8)
          {
            v62 = 1;
          }

          else
          {
            v62 = -1;
          }

          if (v14 == *v8)
          {
            v63 = *(a2 - 1);
            v64 = v61 == v63;
            if (v61 >= v63)
            {
              v65 = 1;
            }

            else
            {
              v65 = -1;
            }

            if (v64)
            {
              v62 = 0;
            }

            else
            {
              v62 = v65;
            }
          }

          v66 = v7;
          if (v62 < 0)
          {
            do
            {
              v9 = v66 + 2;
              v71 = v66[2];
              v72 = v14 == v71;
              if (v14 >= v71)
              {
                v73 = 1;
              }

              else
              {
                v73 = -1;
              }

              if (v72)
              {
                v74 = v66[3];
                v75 = v61 == v74;
                if (v61 >= v74)
                {
                  v76 = 1;
                }

                else
                {
                  v76 = -1;
                }

                if (v75)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = v76;
                }
              }

              v66 = v9;
            }

            while ((v73 & 0x80) == 0);
          }

          else
          {
            v67 = v7 + 2;
            do
            {
              v9 = v67;
              if (v67 >= a2)
              {
                break;
              }

              if (v14 >= *v67)
              {
                v68 = 1;
              }

              else
              {
                v68 = -1;
              }

              if (v14 == *v67)
              {
                v69 = v67[1];
                v70 = v61 == v69;
                v68 = v61 >= v69 ? 1 : -1;
                if (v70)
                {
                  v68 = 0;
                }
              }

              v67 += 2;
            }

            while ((v68 & 0x80) == 0);
          }

          v77 = a2;
          if (v9 < a2)
          {
            v78 = a2;
            v77 = a2;
            do
            {
              v79 = *(v77 - 2);
              v77 -= 2;
              v80 = v14 == v79;
              if (v14 >= v79)
              {
                v81 = 1;
              }

              else
              {
                v81 = -1;
              }

              if (v80)
              {
                v82 = *(v78 - 1);
                v83 = v61 == v82;
                if (v61 >= v82)
                {
                  v84 = 1;
                }

                else
                {
                  v84 = -1;
                }

                if (v83)
                {
                  v81 = 0;
                }

                else
                {
                  v81 = v84;
                }
              }

              v78 = v77;
            }

            while (v81 < 0);
          }

          if (v9 < v77)
          {
            v85 = *v9;
            v86 = *v77;
            do
            {
              *v9 = v86;
              *v77 = v85;
              v87 = v9[1];
              v9[1] = v77[1];
              v77[1] = v87;
              v88 = v9;
              do
              {
                v89 = v9[2];
                v9 += 2;
                v85 = v89;
                v90 = v14 == v89;
                if (v14 >= v89)
                {
                  v91 = 1;
                }

                else
                {
                  v91 = -1;
                }

                if (v90)
                {
                  v92 = v88[3];
                  v93 = v61 == v92;
                  v91 = v61 >= v92 ? 1 : -1;
                  if (v93)
                  {
                    v91 = 0;
                  }
                }

                v88 = v9;
              }

              while ((v91 & 0x80) == 0);
              v94 = v77;
              do
              {
                v95 = *(v77 - 2);
                v77 -= 2;
                v86 = v95;
                v96 = v14 == v95;
                if (v14 >= v95)
                {
                  v97 = 1;
                }

                else
                {
                  v97 = -1;
                }

                if (v96)
                {
                  v98 = *(v94 - 1);
                  v99 = v61 == v98;
                  v97 = v61 >= v98 ? 1 : -1;
                  if (v99)
                  {
                    v97 = 0;
                  }
                }

                v94 = v77;
              }

              while (v97 < 0);
            }

            while (v9 < v77);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 2) = v14;
          *(v9 - 1) = v61;
        }

        v21 = v7[1];
        v22 = v7;
        v23 = v7;
        do
        {
          v25 = v23[2];
          v23 += 2;
          v24 = v25;
          v26 = v25 == v14;
          if (v25 >= v14)
          {
            v27 = 1;
          }

          else
          {
            v27 = -1;
          }

          if (v26)
          {
            v28 = v22[3];
            v29 = v28 == v21;
            v27 = v28 >= v21 ? 1 : -1;
            if (v29)
            {
              v27 = 0;
            }
          }

          v22 = v23;
        }

        while (v27 < 0);
        v30 = a2;
        if (v23 - 2 == v7)
        {
          v38 = a2;
          while (v23 < v38)
          {
            v31 = v38 - 16;
            v39 = *(v38 - 2);
            v40 = v39 == v14;
            if (v39 >= v14)
            {
              v41 = 1;
            }

            else
            {
              v41 = -1;
            }

            if (v40)
            {
              v42 = *(v38 - 1);
              v43 = v42 == v21;
              if (v42 >= v21)
              {
                v44 = 1;
              }

              else
              {
                v44 = -1;
              }

              if (v43)
              {
                v41 = 0;
              }

              else
              {
                v41 = v44;
              }
            }

            v38 = v31;
            if (v41 < 0)
            {
              goto LABEL_69;
            }
          }

          v31 = v38;
        }

        else
        {
          do
          {
            v31 = v30 - 16;
            v32 = *(v30 - 2);
            v33 = v32 == v14;
            if (v32 >= v14)
            {
              v34 = 1;
            }

            else
            {
              v34 = -1;
            }

            if (v33)
            {
              v35 = *(v30 - 1);
              v36 = v35 == v21;
              if (v35 >= v21)
              {
                v37 = 1;
              }

              else
              {
                v37 = -1;
              }

              if (v36)
              {
                v34 = 0;
              }

              else
              {
                v34 = v37;
              }
            }

            v30 = v31;
          }

          while ((v34 & 0x80) == 0);
        }

LABEL_69:
        if (v23 >= v31)
        {
          v9 = v23;
        }

        else
        {
          v45 = *v31;
          v9 = v23;
          v46 = v31;
          do
          {
            *v9 = v45;
            *v46 = v24;
            v47 = v9[1];
            v9[1] = v46[1];
            v46[1] = v47;
            v48 = v9;
            do
            {
              v49 = v9[2];
              v9 += 2;
              v24 = v49;
              v50 = v49 == v14;
              if (v49 >= v14)
              {
                v51 = 1;
              }

              else
              {
                v51 = -1;
              }

              if (v50)
              {
                v52 = v48[3];
                v53 = v52 == v21;
                v51 = v52 >= v21 ? 1 : -1;
                if (v53)
                {
                  v51 = 0;
                }
              }

              v48 = v9;
            }

            while (v51 < 0);
            v54 = v46;
            do
            {
              v55 = *(v46 - 2);
              v46 -= 2;
              v45 = v55;
              v56 = v55 == v14;
              if (v55 >= v14)
              {
                v57 = 1;
              }

              else
              {
                v57 = -1;
              }

              if (v56)
              {
                v58 = *(v54 - 1);
                v59 = v58 == v21;
                v57 = v58 >= v21 ? 1 : -1;
                if (v59)
                {
                  v57 = 0;
                }
              }

              v54 = v46;
            }

            while ((v57 & 0x80) == 0);
          }

          while (v9 < v46);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 2) = v14;
        *(v9 - 1) = v21;
        if (v23 >= v31)
        {
          break;
        }

LABEL_103:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,false>(v7, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v60 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *>(v7, v9 - 16);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v60)
      {
        goto LABEL_103;
      }
    }

    a2 = (v9 - 2);
    if (!v60)
    {
      continue;
    }

    return result;
  }
}

unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(unint64_t *result, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 >= *result)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *result)
  {
    v6 = a2[1];
    v7 = result[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v22 = a3[1];
      v23 = a2[1];
      v8 = v22 >= v23;
      v24 = v22 == v23;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v24)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *result++ = v11;
      *a3 = v4;
      v31 = (a3 + 1);
    }

    else
    {
      *result = v3;
      *a2 = v4;
      v25 = result[1];
      result[1] = a2[1];
      a2[1] = v25;
      v26 = *a2;
      v27 = -1;
      if (*a3 >= *a2)
      {
        v27 = 1;
      }

      if (*a3 == *a2)
      {
        v28 = a3[1];
        v8 = v28 >= v25;
        v29 = v28 == v25;
        v30 = -1;
        if (v8)
        {
          v30 = 1;
        }

        if (v29)
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }
      }

      if ((v27 & 0x80) == 0)
      {
        return result;
      }

      *a2 = *a3;
      *a3 = v26;
      v31 = (a3 + 1);
      result = a2 + 1;
    }

    v17 = v31;
    goto LABEL_51;
  }

  if (v11 == v3)
  {
    v13 = a3[1];
    v14 = a2[1];
    v8 = v13 >= v14;
    v15 = v13 == v14;
    v16 = -1;
    if (v8)
    {
      v16 = 1;
    }

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v3;
    v17 = a2 + 1;
    v18 = a2[1];
    a2[1] = a3[1];
    a3[1] = v18;
    v19 = *result;
    v20 = -1;
    if (*a2 >= *result)
    {
      v20 = 1;
    }

    if (*a2 == *result)
    {
      v21 = result[1];
      v20 = -1;
      if (*v17 >= v21)
      {
        v20 = 1;
      }

      if (*v17 == v21)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      *result++ = *a2;
      *a2 = v19;
LABEL_51:
      v32 = *result;
      *result = *v17;
      *v17 = v32;
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    v18 = *a2;
    v19 = -1;
    if (*a3 >= *a2)
    {
      v19 = 1;
    }

    if (*a3 == *a2)
    {
      v20 = a3[1];
      v21 = a2[1];
      v15 = v20 >= v21;
      v22 = v20 == v21;
      v19 = -1;
      if (v15)
      {
        v19 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      *a2 = *a3;
      *a3 = v18;
      v23 = a2[1];
      a2[1] = a3[1];
      a3[1] = v23;
      v24 = *a1;
      v25 = -1;
      if (*a2 >= *a1)
      {
        v25 = 1;
      }

      if (*a2 == *a1)
      {
        v26 = a2[1];
        v27 = a1[1];
        v15 = v26 >= v27;
        v28 = v26 == v27;
        v25 = -1;
        if (v15)
        {
          v25 = 1;
        }

        if (v28)
        {
          v25 = 0;
        }
      }

      if (v25 < 0)
      {
        *a1 = *a2;
        *a2 = v24;
        v29 = a1[1];
        a1[1] = a2[1];
        a2[1] = v29;
      }
    }
  }

  v30 = *a4;
  v31 = -1;
  if (*a5 >= *a4)
  {
    v31 = 1;
  }

  if (*a5 == *a4)
  {
    v32 = a5[1];
    v33 = a4[1];
    v15 = v32 >= v33;
    v34 = v32 == v33;
    v31 = -1;
    if (v15)
    {
      v31 = 1;
    }

    if (v34)
    {
      v31 = 0;
    }
  }

  if (v31 < 0)
  {
    *a4 = *a5;
    *a5 = v30;
    v35 = a4[1];
    a4[1] = a5[1];
    a5[1] = v35;
    v36 = *a3;
    v37 = -1;
    if (*a4 >= *a3)
    {
      v37 = 1;
    }

    if (*a4 == *a3)
    {
      v38 = a4[1];
      v39 = a3[1];
      v15 = v38 >= v39;
      v40 = v38 == v39;
      v37 = -1;
      if (v15)
      {
        v37 = 1;
      }

      if (v40)
      {
        v37 = 0;
      }
    }

    if (v37 < 0)
    {
      *a3 = *a4;
      *a4 = v36;
      v41 = a3[1];
      a3[1] = a4[1];
      a4[1] = v41;
      v42 = *a2;
      v43 = -1;
      if (*a3 >= *a2)
      {
        v43 = 1;
      }

      if (*a3 == *a2)
      {
        v44 = a3[1];
        v45 = a2[1];
        v15 = v44 >= v45;
        v46 = v44 == v45;
        v43 = -1;
        if (v15)
        {
          v43 = 1;
        }

        if (v46)
        {
          v43 = 0;
        }
      }

      if (v43 < 0)
      {
        *a2 = *a3;
        *a3 = v42;
        v47 = a2[1];
        a2[1] = a3[1];
        a3[1] = v47;
        v48 = *a1;
        v49 = -1;
        if (*a2 >= *a1)
        {
          v49 = 1;
        }

        if (*a2 == *a1)
        {
          v50 = a2[1];
          v51 = a1[1];
          v15 = v50 >= v51;
          v52 = v50 == v51;
          v49 = -1;
          if (v15)
          {
            v49 = 1;
          }

          if (v52)
          {
            v49 = 0;
          }
        }

        if (v49 < 0)
        {
          *a1 = *a2;
          *a2 = v48;
          v53 = a1[1];
          a1[1] = a2[1];
          a2[1] = v53;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *>(unint64_t *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a1 + 2, a1 + 4);
        v31 = *(a2 - 2);
        v32 = a1[4];
        v33 = -1;
        if (v31 >= v32)
        {
          v33 = 1;
        }

        if (v31 == v32)
        {
          v34 = *(a2 - 1);
          v35 = a1[5];
          v10 = v34 >= v35;
          v36 = v34 == v35;
          v33 = -1;
          if (v10)
          {
            v33 = 1;
          }

          if (v36)
          {
            v33 = 0;
          }
        }

        if (v33 < 0)
        {
          a1[4] = v31;
          *(a2 - 2) = v32;
          v37 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v37;
          v38 = a1[4];
          v39 = a1[2];
          v40 = -1;
          if (v38 >= v39)
          {
            v40 = 1;
          }

          if (v38 == v39)
          {
            v41 = a1[5];
            v42 = a1[3];
            v10 = v41 >= v42;
            v43 = v41 == v42;
            v40 = -1;
            if (v10)
            {
              v40 = 1;
            }

            if (v43)
            {
              v40 = 0;
            }
          }

          if (v40 < 0)
          {
            v44 = a1[3];
            v45 = a1[5];
            a1[2] = v38;
            a1[3] = v45;
            a1[4] = v39;
            a1[5] = v44;
            v46 = *a1;
            v47 = -1;
            if (v38 >= *a1)
            {
              v47 = 1;
            }

            if (v38 == *a1)
            {
              v48 = a1[1];
              v10 = v45 >= v48;
              v49 = v45 == v48;
              v47 = -1;
              if (v10)
              {
                v47 = 1;
              }

              if (v49)
              {
                v47 = 0;
              }
            }

            if (v47 < 0)
            {
              v50 = a1[1];
              *a1 = v38;
              a1[1] = v45;
              a1[2] = v46;
              a1[3] = v50;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = (a1 + 4);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,unsigned long long> *,0>(a1, a1 + 2, a1 + 4);
  v14 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = *v13;
    if (*v14 >= *v13)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (*v14 == *v13)
    {
      v20 = *(v14 + 1);
      v21 = *(v13 + 1);
      v22 = v20 == v21;
      v19 = v20 >= v21 ? 1 : -1;
      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      v23 = *(v14 + 1);
      v24 = v15;
      while (1)
      {
        v25 = (a1 + v24);
        v26 = *(a1 + v24 + 40);
        v25[6] = v18;
        v25[7] = v26;
        if (v24 == -32)
        {
          break;
        }

        v18 = v25[2];
        if (v17 >= v18)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v17 == v18)
        {
          v28 = *(a1 + v24 + 24);
          v29 = v23 == v28;
          v27 = v23 >= v28 ? 1 : -1;
          if (v29)
          {
            v27 = 0;
          }
        }

        v24 -= 16;
        if ((v27 & 0x80) == 0)
        {
          v30 = (a1 + v24 + 48);
          goto LABEL_45;
        }
      }

      v30 = a1;
LABEL_45:
      *v30 = v17;
      v30[1] = v23;
      if (++v16 == 8)
      {
        return v14 + 16 == a2;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 16;
    if (v14 == a2)
    {
      return 1;
    }
  }
}