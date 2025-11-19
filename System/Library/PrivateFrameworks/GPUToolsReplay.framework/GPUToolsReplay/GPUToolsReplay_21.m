void std::vector<unsigned long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v11);
    }

    v12 = (8 * (v8 >> 3));
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

void std::vector<GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::CounterValueData,std::allocator<GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::CounterValueData>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<std::vector<GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::CounterValueData,std::allocator<GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::CounterValueData>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 < result[1];
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = a3[1];
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (!v9)
  {
    v8 = v10;
  }

  if (v6)
  {
    v11 = *result;
    if (v8)
    {
      *result = *a3;
      *a3 = v11;
      v7 = HIDWORD(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      LODWORD(v7) = a3[1];
      v14 = *a3 < v11;
      if (*a3 == v11)
      {
        v14 = v7 < HIDWORD(v11);
      }

      if (v14)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = HIDWORD(v11);
      }
    }
  }

  else if (v8)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = a2[1] < result[1];
    }

    if (v13)
    {
      v7 = *result;
      *result = *a2;
      *a2 = v7;
      LODWORD(v7) = a3[1];
    }

    else
    {
      v7 = HIDWORD(v12);
    }
  }

  v15 = a4[1] < v7;
  if (*a4 != *a3)
  {
    v15 = *a4 < *a3;
  }

  if (v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = a3[1] < a2[1];
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a2 < *result;
      if (*a2 == *result)
      {
        v19 = a2[1] < result[1];
      }

      if (v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = a1->u32[2];
        v23 = a1->u32[3];
        v24 = v22 < a1->i32[0];
        if (v22 == a1->i32[0])
        {
          v24 = v23 < a1->i32[1];
        }

        v25 = a2[-1].u32[2];
        v26 = a2[-1].i32[3] < v23;
        v6 = v25 == v22;
        v27 = v25 < v22;
        if (!v6)
        {
          v26 = v27;
        }

        if (!v24)
        {
          if (v26)
          {
            v39 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v39;
            LODWORD(v39) = a1->i32[2];
            v6 = v39 == a1->i32[0];
            v40 = v39 < a1->i32[0];
            if (v6)
            {
              v40 = a1->i32[3] < a1->i32[1];
            }

            if (v40)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v8 = a1->i64[0];
        if (!v26)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v8;
          v46 = a2[-1].u32[2];
          v6 = v46 == v8;
          v47 = v46 < v8;
          if (v6)
          {
            v47 = a2[-1].i32[3] < HIDWORD(v8);
          }

          if (!v47)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_31;
        }

LABEL_30:
        a1->i64[0] = a2[-1].i64[1];
LABEL_31:
        a2[-1].i64[1] = v8;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,0>(a1, &a1->u32[2], &a1[1], &a2[-1].u32[2]);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,0>(a1, &a1->u32[2], &a1[1], &a1[1].u32[2]);
        v9 = a2[-1].u32[2];
        v10 = a1[1].u32[2];
        v6 = v9 == v10;
        v11 = v9 < v10;
        if (v6)
        {
          v11 = a2[-1].i32[3] < a1[1].i32[3];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          LODWORD(v12) = a1[1].i32[2];
          v13 = a1[1].u32[0];
          v6 = v12 == v13;
          v14 = v12 < v13;
          if (v6)
          {
            v14 = a1[1].i32[3] < a1[1].i32[1];
          }

          if (v14)
          {
            v16 = a1[1].i64[0];
            v15 = a1[1].i64[1];
            a1[1].i64[0] = v15;
            a1[1].i64[1] = v16;
            v17 = a1->u32[2];
            v6 = v17 == v15;
            v18 = v17 > v15;
            if (v6)
            {
              v18 = a1->i32[3] > HIDWORD(v15);
            }

            if (v18)
            {
              v19 = a1->i64[1];
              a1->i64[1] = v15;
              a1[1].i64[0] = v19;
              v20 = a1->i32[1] > HIDWORD(v15);
              if (a1->i32[0] != v15)
              {
                v20 = a1->i32[0] > v15;
              }

              if (v20)
              {
                v21 = a1->i64[0];
                a1->i64[0] = v15;
                a1->i64[1] = v21;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].u32[2];
      v6 = v5 == a1->i32[0];
      v7 = v5 < a1->i32[0];
      if (v6)
      {
        v7 = a2[-1].i32[3] < a1->i32[1];
      }

      if (!v7)
      {
        return 1;
      }

      v8 = a1->i64[0];
      goto LABEL_30;
    }
  }

  v28 = a1 + 1;
  v29 = a1[1].u32[0];
  v30 = a1->u32[2];
  v31 = a1->u32[3];
  v32 = a1->i32[0];
  v33 = a1->u32[1];
  v34 = v30 < a1->i32[0];
  if (v30 == a1->i32[0])
  {
    v34 = v31 < v33;
  }

  v35 = a1[1].u32[1];
  v36 = v35 < v31;
  v6 = v29 == v30;
  v37 = v29 < v30;
  if (v6)
  {
    v37 = v36;
  }

  if (v34)
  {
    v38 = a1->i64[0];
    if (v37)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_58:
      a1[1].i64[0] = v38;
      goto LABEL_59;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v38;
    v6 = v29 == v38;
    v48 = v29 < v38;
    if (v6)
    {
      v48 = v35 < HIDWORD(v38);
    }

    if (v48)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_58;
    }
  }

  else if (v37)
  {
    v42 = a1->i64[1];
    v41 = a1[1].i64[0];
    a1->i64[1] = v41;
    a1[1].i64[0] = v42;
    v43 = v33 > HIDWORD(v41);
    v6 = v32 == v41;
    v44 = v32 > v41;
    if (v6)
    {
      v44 = v43;
    }

    if (v44)
    {
      v45 = a1->i64[0];
      a1->i64[0] = v41;
      a1->i64[1] = v45;
    }
  }

LABEL_59:
  v49 = &a1[1].i32[2];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v28->i32[0];
    v53 = v49[1] < v28->i32[1];
    if (*v49 != v52)
    {
      v53 = *v49 < v52;
    }

    if (v53)
    {
      v54 = *v49;
      v55 = HIDWORD(*v49);
      v56 = v50;
      while (1)
      {
        v57 = &a1->i8[v56];
        *(&a1[1].i64[1] + v56) = *(a1[1].i64 + v56);
        if (v56 == -16)
        {
          break;
        }

        v58 = *(v57 + 2);
        v59 = *(v57 + 3) > v55;
        v6 = v58 == v54;
        v60 = v58 > v54;
        if (!v6)
        {
          v59 = v60;
        }

        v56 -= 8;
        if (!v59)
        {
          v61 = (&a1[1].i64[1] + v56);
          goto LABEL_71;
        }
      }

      v61 = a1;
LABEL_71:
      *v61 = v54;
      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v28 = v49;
    v50 += 8;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

void ___ZNK7GRCInfo27SubDividedCounterDictionaryEP14NSMutableArrayIP19GPURawCounterSelectEP26GTMTLReplayOperationQueues_block_invoke(void *a1)
{
  v5 = [*(a1[6] + 16) firstObject];
  v2 = [v5 subDivideCounterList:a1[4] withOptions:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL18DerivedCounterDataP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayP19NSMutableDictionaryjP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 56) + 8) defaultCommandQueue];
  [v5 setStatEnabled:1];
  v2 = [v5 subdivideCounterList:*(a1 + 32)];
  [v5 setStatEnabled:0];
  v3 = CollectCounters(*(a1 + 56), *(a1 + 64), *(a1 + 32), v2, *(a1 + 40), 0, 0, *(a1 + 72), v4);
  [*(a1 + 48) addDependency:v3];
  [*(*(a1 + 64) + 8) addOperation:*(a1 + 48)];
}

void GTMTLReplayClient_streamShaderProfilingData(uint64_t a1, id *a2, void *a3, void *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v46 = v7;
  if (v7)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x8012000000;
    v56 = __Block_byref_object_copy__1525;
    v57 = __Block_byref_object_dispose__1526;
    v58 = "!0 3";
    v43 = a2;
    v44 = v8;
    GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(v59, a1, a2, v7, v8);
    v9 = v54;
    GTUSCSamplingStreamingManager::InitTargetIndex(v54 + 6);
    v10 = v9[6];
    v11 = v9[12];
    v12 = *(v9 + 31);
    v47 = v9[11];
    v48 = v11;
    v13 = [v10[1] defaultDevice];
    v14 = DYMTLReplayFrameProfiler_loadAnalysis(v13);
    [v48 addEntriesFromDictionary:v14];

    v45 = [v48 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v50 = objc_opt_new();
    v15 = [v45 objectForKeyedSubscript:@"DerivedCounters"];
    if (v12)
    {
      v16 = 0;
      v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_2860D5AB0];
    }

    else
    {
      v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2860D5A80];
      v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_2860D5A98];
      v16 = v18;
    }

    v51 = v16;
    v49 = objc_opt_new();
    v19 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v21)
    {
      v22 = *v61;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v61 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v60 + 1) + 8 * i);
          if ([v17 containsObject:v24])
          {
            v25 = [v20 objectForKeyedSubscript:v24];
            [v50 setObject:v25 forKeyedSubscript:v24];
          }

          if ([v51 containsObject:v24])
          {
            v26 = [v20 objectForKeyedSubscript:v24];
            [v49 setObject:v26 forKeyedSubscript:v24];
          }

          if ([v24 isEqualToString:@"FRGTicks"])
          {
            v66 = v24;
            v27 = [v20 objectForKeyedSubscript:v24];
            v67 = v27;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v29 = GTMTLReplayHost_rawCounters(v28);

            v19 = v29;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v21);
    }

    v30 = MEMORY[0x277CBEB18];
    v31 = GTMTLReplayHost_rawCounters(v50);
    v32 = [v30 arrayWithArray:v31];

    v33 = GTMTLReplayHost_rawCounters(v49);
    if (![v19 count])
    {

      v19 = &unk_2860D5AC8;
    }

    [v32 addObjectsFromArray:v19];
    [v47 setObject:v32 forKeyedSubscript:@"profileCounters"];
    if ([v33 count])
    {
      [v47 setObject:v33 forKeyedSubscript:@"profileCounters32"];
    }

    v34 = [v48 objectForKeyedSubscript:@"DerivedCounterConfigurationVariables"];
    v35 = v34 == 0;

    if (!v35)
    {
      v36 = [v48 objectForKeyedSubscript:@"DerivedCounterConfigurationVariables"];
      [v47 setObject:v36 forKeyedSubscript:@"DerivedCounterConfigurationVariables"];
    }

    v64 = @"DerivedCounters";
    v65 = v50;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [v47 setObject:v37 forKeyedSubscript:@"DerivedCounterDictionary"];

    v38 = [v48 objectForKeyedSubscript:@"DerivedCounterScript"];
    [v47 setObject:v38 forKeyedSubscript:@"DerivedCounterScript"];

    v39 = [v48 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
    [v47 setObject:v39 forKeyedSubscript:@"DerivedCounterAnalysis"];

    v40 = [v48 objectForKeyedSubscript:@"DerivedCounterAnalysisFunctions"];
    [v47 setObject:v40 forKeyedSubscript:@"DerivedCounterAnalysisFunctions"];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __GTMTLReplayClient_streamShaderProfilingData_block_invoke;
    v52[3] = &unk_279657A08;
    v52[4] = &v53;
    v41 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v52];
    [v43[1] addOperation:v41];

    _Block_object_dispose(&v53, 8);
    GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(v59);
    v8 = v44;
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_24D8BD0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a25, 8);
  GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(&a31);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1525(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = MEMORY[0x253033CF0](*(a2 + 80));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  result = *(a2 + 112);
  *(a1 + 112) = result;
  return result;
}

void sub_24D8BE3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, _Unwind_Exception *exception_objecta, id a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  v48 = *(v47 - 160);
  if (v48)
  {
    operator delete(v48);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a35);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a43);

  _Unwind_Resume(a1);
}

void GTMTLReplayClient_streamDerivedCounterData(uint64_t a1, id *a2, void *a3)
{
  v5 = a3;
  v6 = &__block_literal_global_257;
  if (v5)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x8012000000;
    v12 = __Block_byref_object_copy__1525;
    v13 = __Block_byref_object_dispose__1526;
    v14 = "!0 3";
    GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(v15, a1, a2, v5, &__block_literal_global_257);
    GTUSCSamplingStreamingManager::InitDerivedCountersInfo(v10 + 6);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __GTMTLReplayClient_streamDerivedCounterData_block_invoke;
    v8[3] = &unk_279657A08;
    v8[4] = &v9;
    v7 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8];
    [a2[1] addOperation:v7];

    _Block_object_dispose(&v9, 8);
    GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(v15);
  }
}

void sub_24D8BE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager((v9 + 48));

  _Unwind_Resume(a1);
}

BOOL GTMTLReplayClient_streamBatchFilteredData(uint64_t a1, id *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x8012000000;
    v15 = __Block_byref_object_copy__1525;
    v16 = __Block_byref_object_dispose__1526;
    v17 = "!0 3";
    GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(v18, a1, a2, v7, v8);
    GTUSCSamplingStreamingManager::InitDerivedCountersInfo(v13 + 6);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __GTMTLReplayClient_streamBatchFilteredData_block_invoke;
    v11[3] = &unk_279657A08;
    v11[4] = &v12;
    v9 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v11];
    [a2[1] addOperation:v9];

    _Block_object_dispose(&v12, 8);
    GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(v18);
  }

  return v7 != 0;
}

void sub_24D8BED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager((v10 + 48));

  _Unwind_Resume(a1);
}

void GTMTLReplayClient_collectGPUShaderTimelineData(uint64_t a1, id *a2, void *a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v58 = v7;
  if (v7)
  {
    v65 = 0;
    v66 = &v65;
    v67 = 0x8012000000;
    v68 = __Block_byref_object_copy__1525;
    v69 = __Block_byref_object_dispose__1526;
    v70 = "!0 3";
    v52 = a2;
    v53 = v8;
    GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(v71, a1, a2, v7, v8);
    v9 = v66;
    GTUSCSamplingStreamingManager::InitTargetIndex(v66 + 6);
    v10 = v9[6];
    v11 = v9[11];
    v12 = v9[12];
    v59 = v11;
    v60 = v12;
    v13 = [*(v10 + 8) defaultDevice];
    v14 = DYMTLReplayFrameProfiler_loadAnalysis(v13);
    [v60 addEntriesFromDictionary:v14];

    v55 = [v60 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v54 = [v55 objectForKeyedSubscript:@"Instruments"];
    v15 = [v54 objectForKeyedSubscript:@"Profiles"];
    v56 = [v15 objectForKeyedSubscript:@"Set1"];

    v51 = [v56 objectForKeyedSubscript:@"DerivedCounters"];
    v16 = [v56 objectForKeyedSubscript:@"RawCounterWidth"];
    v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v51, "count")}];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v51;
    v18 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v18)
    {
      v19 = *v81;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v81 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [*(*(&v80 + 1) + 8 * i) objectForKeyedSubscript:@"Name"];
          if (v21)
          {
            [v17 addObject:v21];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v18);
    }

    v50 = [v55 objectForKeyedSubscript:@"DerivedCounters"];
    v62 = objc_opt_new();
    v61 = objc_opt_new();
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v22 = v50;
    v23 = [v22 countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v23)
    {
      v24 = *v77;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v77 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v76 + 1) + 8 * j);
          if ([v17 containsObject:v26])
          {
            v27 = [v22 objectForKeyedSubscript:v26];
            [v62 setObject:v27 forKeyedSubscript:v26];
          }

          if ([v26 isEqualToString:@"FRGTicks"])
          {
            v87 = v26;
            v28 = [v22 objectForKeyedSubscript:v26];
            v88 = v28;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v30 = GTMTLReplayHost_rawCounters(v29);
            [v61 setArray:v30];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v23);
    }

    v31 = MEMORY[0x277CBEB18];
    v32 = GTMTLReplayHost_rawCounters(v62);
    v57 = [v31 arrayWithArray:v32];

    [v57 addObjectsFromArray:v61];
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v57, "count")}];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v34 = v57;
    v35 = [v34 countByEnumeratingWithState:&v72 objects:v86 count:16];
    if (v35)
    {
      v36 = *v73;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v73 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v72 + 1) + 8 * k);
          v39 = [v16 objectForKeyedSubscript:v38];
          v40 = v39;
          if (!v39 || [v39 integerValue] == 32)
          {
            [v33 addObject:v38];
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v72 objects:v86 count:16];
      }

      while (v35);
    }

    [v59 setObject:v34 forKeyedSubscript:@"profileCounters"];
    [v59 setObject:v33 forKeyedSubscript:@"profileCounters32"];
    v41 = [v60 objectForKeyedSubscript:@"DerivedCounterConfigurationVariables"];
    v42 = v41 == 0;

    if (!v42)
    {
      v43 = [v60 objectForKeyedSubscript:@"DerivedCounterConfigurationVariables"];
      [v59 setObject:v43 forKeyedSubscript:@"DerivedCounterConfigurationVariables"];
    }

    v84 = @"DerivedCounters";
    v85 = v62;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    [v59 setObject:v44 forKeyedSubscript:@"DerivedCounterDictionary"];

    v45 = [v60 objectForKeyedSubscript:@"DerivedCounterScript"];
    [v59 setObject:v45 forKeyedSubscript:@"DerivedCounterScript"];

    v46 = [v60 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
    [v59 setObject:v46 forKeyedSubscript:@"DerivedCounterAnalysis"];

    v47 = [v60 objectForKeyedSubscript:@"DerivedCounterAnalysisFunctions"];
    [v59 setObject:v47 forKeyedSubscript:@"DerivedCounterAnalysisFunctions"];

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __GTMTLReplayClient_collectGPUShaderTimelineData_block_invoke;
    v64[3] = &unk_279657A08;
    v64[4] = &v65;
    v48 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v64];
    [v52[1] addOperation:v48];

    _Block_object_dispose(&v65, 8);
    GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(v71);
    v8 = v53;
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_24D8BFA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a29, 8);
  GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(&a35);

  _Unwind_Resume(a1);
}

void GTMTLReplayClient_addBatchFilteringRequest(void *a1)
{
  v1 = a1;
  GTUSCSamplingStreamingManagerHelper::Instance(v1);
  v9 = v1;
  v2 = [(GTUSCSamplingStreamingManagerHelper *)v9 objectForKeyedSubscript:@"highPriorityBatches"];
  if (v2)
  {
    v3 = *(&xmmword_27F09C594 + 4);
    v4 = [(GTUSCSamplingStreamingManagerHelper *)v9 objectForKeyedSubscript:@"HighPriorityBatchInfo"];
    [v3 nextPerEncoderBatchListForHighPriorityBatches:v2 withHighPriorityInfo:v4];
  }

  else
  {
    v5 = [(GTUSCSamplingStreamingManagerHelper *)v9 objectForKeyedSubscript:@"pause"];

    if (v5)
    {
      [*(&xmmword_27F09C594 + 4) pause];
    }

    else
    {
      v6 = [(GTUSCSamplingStreamingManagerHelper *)v9 objectForKeyedSubscript:@"resume"];

      if (v6)
      {
        [*(&xmmword_27F09C594 + 4) resume];
      }

      else
      {
        v7 = [(GTUSCSamplingStreamingManagerHelper *)v9 objectForKeyedSubscript:@"cancel"];
        if (v7)
        {
          v8 = *(&xmmword_27F09C594 + 4);

          if (v8)
          {
            [*(&xmmword_27F09C594 + 4) cleanup];
          }
        }
      }
    }
  }
}

void sub_24D8BFF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void GTMTLReplayClient_collectAPSData(uint64_t a1, id *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x8012000000;
    v14 = __Block_byref_object_copy__1525;
    v15 = __Block_byref_object_dispose__1526;
    v16 = "!0 3";
    GTUSCSamplingStreamingManager::GTUSCSamplingStreamingManager(v17, a1, a2, v7, v8);
    GTUSCSamplingStreamingManager::InitTargetIndex(v12 + 6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __GTMTLReplayClient_collectAPSData_block_invoke;
    v10[3] = &unk_279657A08;
    v10[4] = &v11;
    v9 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v10];
    [a2[1] addOperation:v9];

    _Block_object_dispose(&v11, 8);
    GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager(v17);
  }
}

void sub_24D8C00DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  GTUSCSamplingStreamingManager::~GTUSCSamplingStreamingManager((v10 + 48));

  _Unwind_Resume(a1);
}

uint64_t GTCoreOperationControl_getOperation(uint64_t a1)
{
  v4 = a1;
  pthread_mutex_lock((control + 8));
  entry = find_entry(*control, &v4, 8uLL, 0);
  if (*entry)
  {
    v2 = *(*entry + 32);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock((control + 8));
  return v2;
}

void sub_24D8C1624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t GTCoreOperationControl_addOperation(uint64_t a1)
{
  pthread_mutex_lock((control + 8));
  v2 = apr_palloc(**control, 0x20uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = a1;
  *(v2 + 24) = 0;
  apr_hash_set(*control, v2, 8, v2);
  v3 = (control + 8);

  return pthread_mutex_unlock(v3);
}

uint64_t GTCoreOperationControl_removeOperation(uint64_t a1)
{
  v4 = a1;
  pthread_mutex_lock((control + 8));
  entry = find_entry(*control, &v4, 8uLL, 0);
  if (*entry)
  {
    v2 = *(*entry + 32);
    if (v2)
    {
      apr_hash_set(*control, v2, 8, 0);
    }
  }

  return pthread_mutex_unlock((control + 8));
}

uint64_t DYMTLDrawRenderCommandEncoder(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  v11 = *(a3 + *(a2 + 8));
  v12 = 1;
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 0:
        v12 = 0;
        break;
      case 1:
        [v9 drawPrimitives:*(a3 + *(a2 + 200)) vertexStart:*(a3 + *(a2 + 200) + 8) vertexCount:*(a3 + *(a2 + 200) + 16) instanceCount:*(a3 + *(a2 + 200) + 24) baseInstance:*(a3 + *(a2 + 200) + 32)];
        break;
      case 2:
        v18 = (a3 + *(a2 + 200));
        v19 = v18[3];
        v20 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v19);
        if (v20)
        {
          v21 = v19 - *v20;
          v22 = v20[2];
        }

        else
        {
          v22 = 0;
          v21 = 0;
        }

        v36 = GetObjectForKey(v10, v22);
        v12 = v36 != 0;
        if (v36)
        {
          v46 = v18[5];
          [v9 drawIndexedPrimitives:*v18 indexCount:v18[1] indexType:v18[2] indexBuffer:v36 indexBufferOffset:v21 instanceCount:v18[4] baseVertex:v46 baseInstance:v18[6]];
        }

        goto LABEL_36;
    }
  }

  else
  {
    if (v11 <= 127)
    {
      if (v11 != 4)
      {
        if (v11 == 8)
        {
          v13 = (a3 + *(a2 + 200));
          v14 = v13[6];
          v15 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v14);
          if (v15)
          {
            v16 = v14 - *v15;
            v17 = v15[2];
          }

          else
          {
            v17 = 0;
            v16 = 0;
          }

          v39 = GetObjectForKey(v10, v17);
          v40 = (v39 == 0) ^ (v17 != 0);
          v41 = v13[7];
          v42 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v41);
          if (v42)
          {
            v43 = v41 - *v42;
            v44 = v42[2];
          }

          else
          {
            v44 = 0;
            v43 = 0;
          }

          v45 = GetObjectForKey(v10, v44);
          if (v45)
          {
            v12 = v40;
          }

          else
          {
            v12 = 0;
          }

          if (v12 == 1)
          {
            [v9 drawIndexedPatches:v13[3] patchStart:v13[4] patchCount:v13[5] patchIndexBuffer:v39 patchIndexBufferOffset:v16 controlPointIndexBuffer:v45 controlPointIndexBufferOffset:v43 instanceCount:v13[8] baseInstance:v13[9]];
          }
        }

        goto LABEL_37;
      }

      v27 = (a3 + *(a2 + 200));
      v28 = v27[6];
      v29 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v28);
      if (v29)
      {
        v30 = v28 - *v29;
        v31 = v29[2];
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v36 = GetObjectForKey(v10, v31);
      v37 = v36 == 0;
      v38 = v31 != 0;
      v12 = v37 ^ v38;
      if (v37 != v38)
      {
        [v9 drawPatches:v27[3] patchStart:v27[4] patchCount:v27[5] patchIndexBuffer:v36 patchIndexBufferOffset:v30 instanceCount:v27[7] baseInstance:v27[8]];
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v11 == 128)
    {
      v32 = (a3 + *(a2 + 200));
      v33 = *(v32 + 2);
      v52 = *v32;
      v53 = v33;
      v34 = *(v32 + 5);
      v50 = *(v32 + 24);
      v51 = v34;
      v35 = *(v32 + 8);
      v48 = v32[3];
      v49 = v35;
      [v9 drawMeshThreadgroups:&v52 threadsPerObjectThreadgroup:&v50 threadsPerMeshThreadgroup:&v48];
    }

    else if (v11 == 256)
    {
      v23 = (a3 + *(a2 + 200));
      v24 = *(v23 + 2);
      v52 = *v23;
      v53 = v24;
      v25 = *(v23 + 5);
      v50 = *(v23 + 24);
      v51 = v25;
      v26 = *(v23 + 8);
      v48 = v23[3];
      v49 = v26;
      [v9 drawMeshThreads:&v52 threadsPerObjectThreadgroup:&v50 threadsPerMeshThreadgroup:&v48];
    }
  }

LABEL_37:

  return v12;
}

id GetObjectForKey(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedLongLong:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

uint64_t DYMTLDispatchComputeCommandEncoder(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a3 + *(a2 + 8));
  if (v7 == 64)
  {
    v11 = a3 + *(a2 + 200);
    v12 = *(v11 + 88);
    v18 = *(v11 + 72);
    v19 = v12;
    v13 = *(v11 + 112);
    v16 = *(v11 + 96);
    v17 = v13;
    [v5 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
  }

  else
  {
    if (v7 != 32)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v8 = a3 + *(a2 + 200);
    v9 = *(v8 + 88);
    v18 = *(v8 + 72);
    v19 = v9;
    v10 = *(v8 + 112);
    v16 = *(v8 + 96);
    v17 = v10;
    [v5 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  }

  v14 = 1;
LABEL_7:

  return v14;
}

void GTMTLEncodeIndirectCommandBufferWithRange(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v12 = a1;
  v13 = a7;
  v172 = 0;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v159 = 0u;
  GTMTLCreateIndirectCommandEncoder(&v159, a4);
  v14 = *(a4 + 16);
  if ((v14 & 0xFE70) == 0)
  {
    v138 = v12;
    v145 = v12;
    v137 = v13;
    v151 = v13;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, v44);
    v143 = a2 + a3;
    if (a2 >= a2 + a3)
    {
LABEL_146:
      apr_pool_destroy(newpool);
LABEL_147:
      v13 = v137;

      v12 = v138;
      goto LABEL_148;
    }

    v45 = v172;
    v46 = a5 + a2 * v172;
    v47 = v46 + 16;
    v150 = a5;
    v139 = v172;
    while (1)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = [v145 indirectRenderCommandAtIndex:a2];
      v54 = v49;
      v55 = a5 + v45 * a2;
      v56 = *(v55 + *(&v159 + 1));
      v155 = a2;
      if (v56 > 3)
      {
        break;
      }

      if (v56)
      {
        v157 = v47;
        v153 = v48;
        if (v56 == 1)
        {
          [v49 drawPrimitives:*(v55 + *(&v171 + 1)) vertexStart:*(v55 + *(&v171 + 1) + 8) vertexCount:*(v55 + *(&v171 + 1) + 16) instanceCount:*(v55 + *(&v171 + 1) + 24) baseInstance:*(v55 + *(&v171 + 1) + 32)];
        }

        else if (v56 == 2)
        {
          v62 = (v55 + *(&v171 + 1));
          v63 = *(v55 + *(&v171 + 1) + 24);
          v64 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v63);
          if (v64)
          {
            v65 = v63 - *v64;
            v66 = v64[2];
          }

          else
          {
            v66 = 0;
            v65 = 0;
          }

          v89 = GetObjectForKey(v151, v66);
          if (v89)
          {
            v90 = v62[5];
            [v54 drawIndexedPrimitives:*v62 indexCount:v62[1] indexType:v62[2] indexBuffer:v89 indexBufferOffset:v65 instanceCount:v62[4] baseVertex:v90 baseInstance:v62[6]];
          }

          else
          {
            [v54 reset];
          }
        }

        goto LABEL_88;
      }

      [v49 reset];
LABEL_145:

      objc_autoreleasePoolPop(v48);
      ++a2;
      v46 += v45;
      v47 += v45;
      if (a2 == v143)
      {
        goto LABEL_146;
      }
    }

    v157 = v47;
    v153 = v48;
    if (v56 > 127)
    {
      if (v56 == 128)
      {
        v74 = *(v55 + *(&v171 + 1) + 16);
        v176 = *(v55 + *(&v171 + 1));
        *&v177 = v74;
        v75 = *(v55 + *(&v171 + 1) + 40);
        v179 = *(v55 + *(&v171 + 1) + 24);
        v180 = v75;
        v76 = *(v55 + *(&v171 + 1) + 64);
        v173 = *(v55 + *(&v171 + 1) + 48);
        v174 = v76;
        [v49 drawMeshThreadgroups:&v176 threadsPerObjectThreadgroup:&v179 threadsPerMeshThreadgroup:&v173];
      }

      else if (v56 == 256)
      {
        v67 = *(v55 + *(&v171 + 1) + 16);
        v176 = *(v55 + *(&v171 + 1));
        *&v177 = v67;
        v68 = *(v55 + *(&v171 + 1) + 40);
        v179 = *(v55 + *(&v171 + 1) + 24);
        v180 = v68;
        v69 = *(v55 + *(&v171 + 1) + 64);
        v173 = *(v55 + *(&v171 + 1) + 48);
        v174 = v69;
        [v49 drawMeshThreads:&v176 threadsPerObjectThreadgroup:&v179 threadsPerMeshThreadgroup:&v173];
      }
    }

    else if (v56 == 4)
    {
      v70 = (v55 + *(&v171 + 1));
      v71 = *(v55 + *(&v171 + 1) + 48);
      v72 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v71);
      if (v72)
      {
        v147 = v71 - *v72;
        v73 = v72[2];
      }

      else
      {
        v73 = 0;
        v147 = 0;
      }

      v77 = GetObjectForKey(v151, v73);
      v78 = v73 != 0;
      v79 = *v70;
      v80 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *v70);
      if (v80)
      {
        v81 = v79 - *v80;
        v82 = v80[2];
      }

      else
      {
        v82 = 0;
        v81 = 0;
      }

      v91 = GetObjectForKey(v151, v82);
      v92 = v91;
      v93 = (v77 == 0) ^ v78;
      if (!v91)
      {
        v93 = 0;
      }

      if (v93 == 1)
      {
        [v54 drawPatches:v70[3] patchStart:v70[4] patchCount:v70[5] patchIndexBuffer:v77 patchIndexBufferOffset:v147 instanceCount:v70[7] baseInstance:v70[8] tessellationFactorBuffer:v91 tessellationFactorBufferOffset:v81 tessellationFactorBufferInstanceStride:v70[1]];
      }

      else
      {
        [v54 reset];
      }

      v45 = v139;

      a5 = v150;
    }

    else if (v56 == 8)
    {
      v57 = (v55 + *(&v171 + 1));
      v58 = *(v55 + *(&v171 + 1) + 48);
      v59 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v58);
      if (v59)
      {
        v60 = v58 - *v59;
        v61 = v59[2];
      }

      else
      {
        v61 = 0;
        v60 = 0;
      }

      v83 = GetObjectForKey(v151, v61);
      v148 = v46;
      v84 = v61 != 0;
      v85 = v57[7];
      v86 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), v85);
      if (v86)
      {
        v87 = v85 - *v86;
        v88 = v86[2];
      }

      else
      {
        v88 = 0;
        v87 = 0;
      }

      v94 = v60;
      v95 = GetObjectForKey(v151, v88);
      if (v95)
      {
        v96 = (v83 == 0) ^ v84;
      }

      else
      {
        v96 = 0;
      }

      v97 = *v57;
      v98 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *v57);
      if (v98)
      {
        v99 = v97 - *v98;
        v100 = v98[2];
      }

      else
      {
        v100 = 0;
        v99 = 0;
      }

      v101 = GetObjectForKey(v151, v100);
      v102 = v101;
      if (v101)
      {
        v103 = v96;
      }

      else
      {
        v103 = 0;
      }

      if (v103 == 1)
      {
        [v54 drawIndexedPatches:v57[3] patchStart:v57[4] patchCount:v57[5] patchIndexBuffer:v83 patchIndexBufferOffset:v94 controlPointIndexBuffer:v95 controlPointIndexBufferOffset:v87 instanceCount:v57[8] baseInstance:v57[9] tessellationFactorBuffer:v101 tessellationFactorBufferOffset:v99 tessellationFactorBufferInstanceStride:v57[1]];
      }

      else
      {
        [v54 reset];
      }

      v46 = v148;
      v45 = v139;

      a5 = v150;
    }

LABEL_88:
    v104 = v159;
    if (!*(v159 + 26))
    {
      v105 = *(v55 + v160);
      if (v105)
      {
        v106 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a6[5], v105);
        v107 = GetObjectForKey(v151, v106);
        if (v107)
        {
          [v54 setRenderPipelineState:v107];
        }
      }
    }

    v108 = v55;
    if (v104[40])
    {
      v109 = v55 + v164;
    }

    else
    {
      v109 = 0;
    }

    if (!v104[19])
    {
      v141 = v108;
      v149 = v46;
      v110 = *(&v160 + 1);
      v111 = v104[38];
      v112 = v54;
      v113 = v151;
      if (v111)
      {
        v114 = 0;
        v115 = v46 + v110;
        do
        {
          v116 = *(v115 + 8 * v114);
          if (v116)
          {
            v117 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *(v115 + 8 * v114));
            if (v117)
            {
              v118 = v116 - *v117;
              v119 = v117[2];
            }

            else
            {
              v119 = 0;
              v118 = 0;
            }

            v120 = GetObjectForKey(v113, v119);
            if (v120)
            {
              if (v109)
              {
                [v112 setVertexBuffer:v120 offset:v118 attributeStride:*(v109 + 8 * v114) atIndex:v114];
              }

              else
              {
                [v112 setVertexBuffer:v120 offset:v118 atIndex:v114];
              }
            }
          }

          ++v114;
        }

        while (v111 != v114);
      }

      v108 = v141;
      GTMTLEncodeIndirectBufferBindings(v112, v141 + v161, v104[31], 2, a6, v113);
      v46 = v149;
      a5 = v150;
      v45 = v139;
      GTMTLEncodeIndirectBufferBindings(v112, v141 + *(&v161 + 1), v104[35], 8, a6, v113);
      GTMTLEncodeIndirectBufferBindings(v112, v141 + v162, v104[34], 16, a6, v113);
    }

    v121 = v108;
    if (!v104[23])
    {
      v122 = *(v108 + v165);
      if (v122)
      {
        v123 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a6[3], v122);
        v124 = GetObjectForKey(v151, v123);
        if (v124)
        {
          [v54 setDepthStencilState:v124];
        }
      }
    }

    if (!v104[22])
    {
      [v54 setDepthClipMode:*(v108 + *(&v165 + 1))];
    }

    if (!v104[20])
    {
      [v54 setCullMode:*(v108 + v166)];
    }

    a2 = v155;
    if (!v104[25])
    {
      [v54 setFrontFacingWinding:*(v108 + *(&v166 + 1))];
    }

    if (!v104[29])
    {
      [v54 setTriangleFillMode:*(v108 + v167)];
    }

    if (!v104[21])
    {
      LODWORD(v50) = *(v108 + *(&v167 + 1));
      LODWORD(v51) = *(v108 + *(&v167 + 1) + 4);
      LODWORD(v52) = *(v108 + *(&v167 + 1) + 8);
      [v54 setDepthBias:v50 slopeScale:v51 clamp:v52];
    }

    if (!v104[28])
    {
      [v54 setStencilFrontReferenceValue:*(v108 + v168) backReferenceValue:*(v108 + v168 + 4)];
    }

    if (!v104[24])
    {
      LODWORD(v50) = *(v108 + *(&v168 + 1));
      LODWORD(v51) = *(v108 + *(&v168 + 1) + 4);
      [v54 setDepthTestMinBound:v50 maxBound:v51];
    }

    if (!v104[27])
    {
      v125 = *(v108 + v169);
      if (v125)
      {
        v126 = apr_palloc(newpool, 32 * v125);
        v127 = (v157 + *(&v169 + 1));
        v128 = 16;
        v129 = v125;
        do
        {
          v130 = &v126[v128];
          *v130 = *v127;
          *(v130 - 1) = *(v127 - 1);
          v127 += 2;
          v128 += 32;
          --v129;
        }

        while (v129);
        [v54 setScissorRects:v126 count:v125];
      }
    }

    if (!v104[30])
    {
      v131 = *(v108 + v170);
      if (v131)
      {
        v132 = apr_palloc(newpool, 48 * v131);
        v133 = (v108 + *(&v170 + 1));
        v134 = *(v108 + *(&v170 + 1) + 32);
        v132[1] = *(v108 + *(&v170 + 1) + 16);
        *v132 = *v133;
        v132[2] = v134;
        [v54 setViewports:v132 count:v131];
      }
    }

    if (!v104[18])
    {
      LODWORD(v50) = *(v108 + v171);
      LODWORD(v51) = *(v108 + v171 + 4);
      LODWORD(v52) = *(v108 + v171 + 8);
      LODWORD(v53) = *(v108 + v171 + 12);
      [v54 setBlendColorRed:v50 green:v51 blue:v52 alpha:v53];
    }

    if (v104[36])
    {
      v135 = 0;
      v136 = v46 + v163;
      do
      {
        [v54 setObjectThreadgroupMemoryLength:*(v136 + 8 * v135) atIndex:v135];
        ++v135;
      }

      while (v135 < v104[36]);
    }

    v47 = v157;
    v48 = v153;
    if (v104[42] && *(v121 + *(&v164 + 1)))
    {
      [v54 setBarrier];
    }

    goto LABEL_145;
  }

  if ((v14 & 0xFFFFFF9F) == 0)
  {
    v138 = v12;
    v154 = v12;
    v137 = v13;
    v15 = v13;
    v152 = a2 + a3;
    if (a2 < a2 + a3)
    {
      v16 = v15;
      v17 = v172;
      v18 = v159;
      v140 = v160;
      v142 = *(&v171 + 1);
      v144 = v164;
      v146 = v172;
      v19 = a5 + *(&v162 + 1) + a2 * v172;
      v20 = a5 + *(&v163 + 1) + a2 * v172;
      while (1)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = a5 + v17 * a2;
        v23 = *(v22 + *(&v18 + 1));
        v24 = [v154 indirectComputeCommandAtIndex:a2];
        v25 = v24;
        if (v23 == 64)
        {
          break;
        }

        if (v23 == 32)
        {
          v26 = *(v22 + v142 + 88);
          v176 = *(v22 + v142 + 72);
          *&v177 = v26;
          v27 = *(v22 + v142 + 112);
          v179 = *(v22 + v142 + 96);
          v180 = v27;
          [v24 concurrentDispatchThreadgroups:&v176 threadsPerThreadgroup:&v179];
          v28 = *(v22 + v142 + 16);
          v176 = *(v22 + v142);
          v177 = v28;
          v178 = *(v22 + v142 + 32);
          [v25 setStageInRegion:&v176];
          if (*(v22 + v142 + 64))
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        }

        if (v23)
        {
          goto LABEL_11;
        }

        [v24 reset];
LABEL_31:

        objc_autoreleasePoolPop(v21);
        ++a2;
        v19 += v17;
        v20 += v17;
        if (a2 == v152)
        {
          goto LABEL_147;
        }
      }

      v41 = *(v22 + v142 + 88);
      v176 = *(v22 + v142 + 72);
      *&v177 = v41;
      v42 = *(v22 + v142 + 112);
      v179 = *(v22 + v142 + 96);
      v180 = v42;
      [v24 concurrentDispatchThreads:&v176 threadsPerThreadgroup:&v179];
      v43 = *(v22 + v142 + 16);
      v176 = *(v22 + v142);
      v177 = v43;
      v178 = *(v22 + v142 + 32);
      [v25 setStageInRegion:&v176];
      if (*(v22 + v142 + 64) == 1)
      {
LABEL_10:
        [v25 setBarrier];
      }

LABEL_11:
      v156 = v21;
      v29 = a2;
      if (!*(v18 + 26))
      {
        v30 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a6[6], *(v22 + v140));
        v31 = GetObjectForKey(v16, v30);
        [v25 setComputePipelineState:v31];
      }

      if (*(v18 + 40))
      {
        v32 = v22 + v144;
      }

      else
      {
        v32 = 0;
      }

      if (!*(v18 + 19))
      {
        v33 = *(v18 + 32);
        if (v33)
        {
          for (i = 0; i < v33; ++i)
          {
            v35 = *(v19 + 8 * i);
            if (v35)
            {
              v36 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a6 + 24), *(*a6 + 12), *(v19 + 8 * i));
              if (v36)
              {
                v37 = v35 - *v36;
                v38 = v36[2];
              }

              else
              {
                v38 = 0;
                v37 = 0;
              }

              v39 = GetObjectForKey(v16, v38);
              if (v32)
              {
                [v25 setKernelBuffer:v39 offset:v37 attributeStride:*(v32 + 8 * i) atIndex:i];
              }

              else
              {
                [v25 setKernelBuffer:v39 offset:v37 atIndex:i];
              }

              v33 = *(v18 + 32);
            }
          }
        }
      }

      a2 = v29;
      v17 = v146;
      v21 = v156;
      if (*(v18 + 33))
      {
        v40 = 0;
        do
        {
          [v25 setThreadgroupMemoryLength:*(v20 + 8 * v40) atIndex:v40];
          ++v40;
        }

        while (v40 < *(v18 + 33));
      }

      goto LABEL_31;
    }

    goto LABEL_147;
  }

LABEL_148:
}

void GTMTLEncodeIndirectBufferBindings(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a1;
  v11 = a6;
  if (a3)
  {
    v12 = 0;
    do
    {
      v13 = *(a2 + 8 * v12);
      if (v13)
      {
        v14 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a5 + 24), *(*a5 + 12), *(a2 + 8 * v12));
        if (v14)
        {
          v15 = v13 - *v14;
          v16 = v14[2];
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        v17 = GetObjectForKey(v11, v16);
        if (v17)
        {
          switch(a4)
          {
            case 16:
              [v18 setMeshBuffer:v17 offset:v15 atIndex:v12];
              break;
            case 8:
              [v18 setObjectBuffer:v17 offset:v15 atIndex:v12];
              break;
            case 2:
              [v18 setFragmentBuffer:v17 offset:v15 atIndex:v12];
              break;
          }
        }
      }

      ++v12;
    }

    while (a3 != v12);
  }
}

__CFString *_StringForError(uint64_t a1)
{
  if (a1 > 255)
  {
    if (a1 > 1535)
    {
      if (a1 > 4351)
      {
        if (a1 <= 4609)
        {
          if (a1 > 4607)
          {
            if (a1 == 4608)
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find the specified username and host (%ld)", 4608];
            }

            else
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Specified remote machine is not available. Please make sure to login with specified user (%ld)", 4609];
            }
          }

          if (a1 == 4352)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"Shader profiler failed due to an internal error (%ld)", 4352];
          }

          if (a1 == 4353)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"Shader profiler does not support multi-context captures (%ld)", 4353];
          }
        }

        else
        {
          if (a1 <= 4611)
          {
            if (a1 == 4610)
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find the target path provided (%ld)", 4610];
            }

            else
            {
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot authenticate SSH, make sure the authentication is done right (%ld)", 4611];
            }
          }

          switch(a1)
          {
            case 4612:
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find Xcode.app on the remote machine. Please make sure that Xcode.app is in the Applications folder (%ld)", 4612];
            case 4613:
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Metal.framework is not available on the remote machine (%ld)", 4613];
            case 4614:
              return [MEMORY[0x277CCACA8] stringWithFormat:@"Missing environment variables, please make sure all the required environment variables are enabled (%ld)", 4614];
          }
        }
      }

      else if (a1 <= 2048)
      {
        if (a1 > 1792)
        {
          if (a1 == 1793)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"guest app session error (%ld)", 1793];
          }

          if (a1 == 2048)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"already replaying (%ld)", 2048];
          }
        }

        else
        {
          if (a1 == 1536)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"position does not exist in archive (%ld)", 1536];
          }

          if (a1 == 1792)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"no data (%ld)", 1792];
          }
        }
      }

      else if (a1 <= 2304)
      {
        if (a1 == 2049)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"no loaded archives (%ld)", 2049];
        }

        if (a1 == 2304)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"no resource streamer (%ld)", 2304];
        }
      }

      else
      {
        switch(a1)
        {
          case 2305:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"no archive data (%ld)", 2305];
          case 2306:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"no thumbnail support (%ld)", 2306];
          case 4096:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"failed to create core symbolicator (%ld)", 4096];
        }
      }
    }

    else if (a1 > 514)
    {
      if (a1 <= 518)
      {
        if (a1 > 516)
        {
          if (a1 == 517)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"GL dispatch table mismatch (%ld)", 517];
          }

          else
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"inferior and host session ids mismatch (%ld)", 518];
          }
        }

        else if (a1 == 515)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"capture session activation failed (%ld)", 515];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"inferior already running (%ld)", 516];
        }
      }

      if (a1 <= 1024)
      {
        if (a1 == 519)
        {
          return @"Device connection lost.";
        }

        if (a1 == 1024)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"truncated data (%ld)", 1024];
        }
      }

      else
      {
        switch(a1)
        {
          case 1025:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid transport message payload (%ld)", 1025];
          case 1026:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"unexpected transport message (%ld)", 1026];
          case 1280:
            return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid function stream header (%ld)", 1280];
        }
      }
    }

    else
    {
      if (a1 <= 259)
      {
        if (a1 > 257)
        {
          if (a1 == 258)
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"transport source cancelled (%ld)", 258];
          }

          else
          {
            return [MEMORY[0x277CCACA8] stringWithFormat:@"corrupt transport message header (%ld)", 259];
          }
        }

        else if (a1 == 256)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid socket descriptor (%ld)", 256];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid socket url (%ld)", 257];
        }
      }

      if (a1 > 511)
      {
        if (a1 == 512)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"guest app crashed (%ld)", 512];
        }

        if (a1 == 513)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"another capture session is active (%ld)", 513];
        }

        return [MEMORY[0x277CCACA8] stringWithFormat:@"capture session is already active (%ld)", 514];
      }

      if (a1 == 260)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"corrupt transport message attributes (%ld)", 260];
      }

      if (a1 == 261)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"message too large (%ld)", 261];
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"invalid filename (%ld)", 1];
    case 2:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"data is too large (%ld)", 2];
    case 3:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"IO failure (%ld)", 3];
    case 4:
      return [MEMORY[0x277CCACA8] stringWithFormat:@"out of memory (%ld)", 4];
    case 5:
      v2 = MEMORY[0x277CCACA8];
      v3 = 5;
      goto LABEL_90;
    case 6:
      v2 = MEMORY[0x277CCACA8];
      v3 = 6;
LABEL_90:
      result = [v2 stringWithFormat:@"Unable to connect to the device. (%ld)", v3];
      break;
    case 7:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"read-only capture archive (%ld)", 7];
      break;
    case 8:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"truncated capture archive store (%ld)", 8];
      break;
    case 9:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"truncated capture archive index (%ld)", 9];
      break;
    case 10:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid capture archive index (%ld)", 10];
      break;
    case 11:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown capture archive index version (%ld)", 11];
      break;
    case 12:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"file exists in capture archive (%ld)", 12];
      break;
    case 13:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"file does not exists in capture archive (%ld)", 13];
      break;
    case 14:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"capture archive does not exist (%ld)", 14];
      break;
    case 15:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"missing capture archive index (%ld)", 15];
      break;
    case 16:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid capture archive metadata (%ld)", 16];
      break;
    case 18:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"corrupted capture archive store (%ld)", 18];
      break;
    case 19:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"could not write capture archive metadata (%ld)", 19];
      break;
    case 20:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"capture archive has been closed (%ld)", 20];
      break;
    case 21:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"already tried to launch guest app (%ld)", 21];
      break;
    case 22:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid launch dictionary (%ld)", 22];
      break;
    case 23:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app not found (%ld)", 23];
      break;
    case 24:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app launch timed out (%ld)", 24];
      break;
    case 25:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid guest app session (%ld)", 25];
      break;
    case 26:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app has not been launched yet (%ld)", 26];
      break;
    case 28:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"did not find interpose dylib (%ld)", 28];
      break;
    case 29:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to launch guest app (%ld)", 29];
      break;
    case 30:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"guest app terminated (%ld)", 30];
      break;
    case 31:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"lost transport connection (%ld)", 31];
      break;
    case 32:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid transport (%ld)", 32];
      break;
    case 33:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"transport is not connected (%ld)", 33];
      break;
    case 34:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"message has already been sent (%ld)", 34];
      break;
    case 35:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"in-reply-to message has not been sent (%ld)", 35];
      break;
    case 36:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to encode message attributes (%ld)", 36];
      break;
    case 37:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"connect timed out (%ld)", 37];
      break;
    case 38:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"undefined socket path (%ld)", 38];
      break;
    case 39:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"socket path is too long (%ld)", 39];
      break;
    case 40:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"message originated from this transport (%ld)", 40];
      break;
    case 41:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"initialized function stream with immutable data but swapping is required (%ld)", 41];
      break;
    case 42:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"transfer refused (%ld)", 42];
      break;
    case 43:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"protocol error (%ld)", 43];
      break;
    case 44:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"path outside destination root (%ld)", 44];
      break;
    case 45:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"transfer aborted (%ld)", 45];
      break;
    case 46:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown item type (%ld)", 46];
      break;
    default:
      return 0;
  }

  return result;
}

void sub_24D8C45F4(_Unwind_Exception *a1)
{
  v4 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v2);
  MEMORY[0x2530332C0](v4, v1);
  _Unwind_Resume(a1);
}

void sub_24D8C63F0(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      *(v2 + 40) = 0;
      objc_end_catch();
    }

    JUMPOUT(0x24D8C634CLL);
  }

  JUMPOUT(0x24D8C63E0);
}

void sub_24D8C8DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GPUTools::VMBuffer::_alloc(GPUTools::VMBuffer *this, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  address = 0;
  v4 = MEMORY[0x277D85FA0];
  if (3 * *MEMORY[0x277D85FA0] <= a2)
  {
    v5 = (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  }

  else
  {
    v5 = 3 * *MEMORY[0x277D85FA0];
  }

  v6 = v5 + v5 * a3;
  v7 = MEMORY[0x277D85F48];
  do
  {
    v8 = *v7;
    v9 = *v4 + v6;
    if (!vm_allocate(*v7, &address, v9, 1))
    {
      v10 = address;
      target_address = address + v5;
      v11 = a3;
      if (a3)
      {
        while (!MEMORY[0x253034350](v8))
        {
          cur_protection = 0;
          if (vm_remap(v8, &target_address, v5, 0, 0, v8, address, 0, &cur_protection + 1, &cur_protection, 2u))
          {
            break;
          }

          target_address += v5;
          if (!--v11)
          {
            v10 = address;
            goto LABEL_11;
          }
        }

        v4 = MEMORY[0x277D85FA0];
      }

      else
      {
LABEL_11:
        v4 = MEMORY[0x277D85FA0];
        if (!MEMORY[0x253034370](v8, v10 + v9 - *MEMORY[0x277D85FA0], *MEMORY[0x277D85FA0], 0, 0))
        {
          *this = address;
          *(this + 1) = v5;
          *(this + 2) = a3;
          return 1;
        }
      }
    }

    MEMORY[0x253034350](*v7, address, *v4 + v6);
    ++v3;
  }

  while (v3 != 5);
  return 0;
}

void *GPUTools::VMBuffer::_dealloc(void *this)
{
  if (*this)
  {
    v1 = this;
    this = MEMORY[0x253034350](*MEMORY[0x277D85F48], *this, *MEMORY[0x277D85FA0] + this[1] + this[1] * this[2]);
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
  }

  return this;
}

void sub_24D8CBC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t smt_poll_thread_entry(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  snprintf(__str, 0x40uLL, "gputools.smt_poll.%p", a1);
  pthread_setname_np(__str);
  if ((a1[3] & 1) == 0)
  {
    do
    {
      dispatch_sync(v2, v3);
      usleep(0x1F40u);
    }

    while (*(a1 + 24) != 1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24D8CCDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(mach_port_t a1, void *inputStruct, void *outputStruct, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  outputStructCnt = 8;
  v5 = IOConnectCallStructMethod(a1, 0x41u, inputStruct, 8uLL, outputStruct, &outputStructCnt);
  v6 = v5 == 0;
  if (v5 && g_runningInCI == 1)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOConnectCallStructMethod method:%u for:%s failed (0x%x - %s)", 65, a4, v5, mach_error_string(v5)];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v8 UTF8String]);
  }

  return v6;
}

uint64_t RecommendedState(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    [v1 doubleValue];
    operator new();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void std::vector<double>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void GTAGXPerfStateControl::InitWithDevice(uint64_t a1, void *a2)
{
  v3 = a2;
  obj = DEVICEOBJECT(v3);

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    objc_storeStrong((a1 + 16), obj);
    goto LABEL_11;
  }

  IOAccelerator = GetIOAccelerator();
  if (IOServiceOpen(IOAccelerator, *MEMORY[0x277D85F48], 1u, a1))
  {
    v5 = 2;
LABEL_10:
    *(a1 + 4) = v5;
    goto LABEL_11;
  }

  outputStruct = 258;
  if (CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(*a1, &outputStruct, &outputStruct, "ConsistentPerfState_Get"))
  {
    v5 = 1;
    goto LABEL_10;
  }

  if (g_runningInCI == 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf status!\n"];
    v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v7 UTF8String]);
  }

  *(a1 + 4) = 2;
  if (*a1)
  {
    IOServiceClose(*a1);
    *a1 = 0;
  }

LABEL_11:
}

void GTAGXPerfStateControl::EnableConsistentGPUPerfState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    if ([v4 enableConsistentPerfState:a2])
    {

      usleep(0x186A0u);
    }

    else if (g_runningInCI == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to set consistent perf state to level = %u!\n", a2];
      v7 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v7 UTF8String]);
    }

    return;
  }

  v5 = *a1;
  if (!*a1)
  {
    return;
  }

  outputStruct = 256;
  v6 = CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(v5, &outputStruct, &outputStruct, "ConsistentPerfState_Lock");
  *(a1 + 8) = v6;
  if (!v6)
  {
    if (g_runningInCI != 1)
    {
      return;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to acquire consistent perf state SPI access!\n"];
    v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

    v10 = *MEMORY[0x277D85E08];
    v11 = v9;
    v12 = [v9 UTF8String];
    goto LABEL_18;
  }

  outputStruct = 1;
  BYTE1(outputStruct) = a2;
  if (CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(*a1, &outputStruct, &outputStruct, "ConsistentPerfState_Set"))
  {
    usleep(0x30D40u);
    return;
  }

  if (g_runningInCI == 1)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to set consistent perf state to level = %u!\n", a2];
    v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

    v10 = *MEMORY[0x277D85E08];
    v11 = v14;
    v12 = [v14 UTF8String];
LABEL_18:
    fprintf(v10, "#CI-ERROR# %s\n", v12);
  }
}

void GTAGXPerfStateControl::DisableConsistentGPUPerfState(GTAGXPerfStateControl *this)
{
  v2 = *(this + 2);
  if (v2)
  {

    [v2 disableConsistentPerfState];
  }

  else
  {
    v3 = *this;
    if (*this)
    {
      if (*(this + 8) == 1)
      {
        outputStruct = 0;
        if (!CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(v3, &outputStruct, &outputStruct, "ConsistentPerfState_Unlock") && g_runningInCI == 1)
        {
          v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to release consistent perf state SPI access!\n"];
          v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

          fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v5 UTF8String]);
        }
      }
    }
  }
}

id GTAGXPerfStateControl::ConsistentGPUPerfStateLevel(GTAGXPerfStateControl *this, NSNumber *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(this + 2);
  v58 = v3;
  if (v4)
  {
    v5 = [v4 getConsistentPerfStateInfoAndReset:1];
    if (!v5)
    {
      if (g_runningInCI == 1)
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf state status!\n"];
        v44 = [v43 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

        fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v44 UTF8String]);
      }

      v6 = &unk_2860D6128;
      goto LABEL_30;
    }

    v6 = objc_opt_new();
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"supported"];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v5 objectForKeyedSubscript:@"is_enabled"];
    v9 = [v7 numberWithBool:{objc_msgSend(v8, "BOOLValue")}];
    [v6 setObject:v9 forKeyedSubscript:@"enabled"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v5 objectForKeyedSubscript:@"was_consistent"];
    v12 = [v10 numberWithBool:{objc_msgSend(v11, "BOOLValue")}];
    [v6 setObject:v12 forKeyedSubscript:@"consistent"];

    v13 = MEMORY[0x277CCABB0];
    v14 = [v5 objectForKeyedSubscript:@"level"];
    v15 = [v13 numberWithUnsignedInt:{objc_msgSend(v14, "unsignedIntValue")}];
    [v6 setObject:v15 forKeyedSubscript:@"level"];

    v16 = [*(this + 2) getConsistentPerfStateMappingTable];
    v17 = v16;
    if (!v16)
    {
      if (g_runningInCI == 1)
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf mapping table!\n"];
        v46 = [v45 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

        fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v46 UTF8String]);
      }

      goto LABEL_29;
    }

    v18 = [v16 objectForKeyedSubscript:@"min_pstate"];
    v19 = [v18 unsignedIntValue];
    v20 = [v17 objectForKeyedSubscript:@"mid_pstate"];
    v21 = [v20 unsignedIntValue];
    v22 = [v17 objectForKeyedSubscript:@"max_pstate"];
    v23 = [v22 unsignedIntValue];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:RecommendedState(v58)];
    [v6 setObject:v24 forKeyedSubscript:@"recommended"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    v60[0] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
    v60[1] = v26;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
    v60[2] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
    [v6 setObject:v28 forKeyedSubscript:@"mapped state"];

    v29 = [v5 objectForKeyedSubscript:@"level"];
    v30 = [v29 unsignedIntValue];

    switch(v30)
    {
      case 1:
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
        [v6 setObject:v31 forKeyedSubscript:@"mapping"];
        break;
      case 2:
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
        [v6 setObject:v31 forKeyedSubscript:@"mapping"];
        break;
      case 3:
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
        [v6 setObject:v31 forKeyedSubscript:@"mapping"];
        break;
      default:
LABEL_29:

LABEL_30:
        goto LABEL_39;
    }

    goto LABEL_29;
  }

  v32 = v3;
  if (*this)
  {
    v33 = objc_opt_new();
    v34 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 1) == 1];
    [v33 setObject:v34 forKeyedSubscript:@"supported"];

    outputStruct = 258;
    if (!CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(*this, &outputStruct, &outputStruct, "ConsistentPerfState_Get"))
    {
      if (g_runningInCI == 1)
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf mapping table!\n"];
        v49 = [v48 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

        v50 = *MEMORY[0x277D85E08];
        v51 = v49;
        fprintf(v50, "#CI-ERROR# %s\n", [v49 UTF8String]);
      }

      v64 = MEMORY[0x277CBEC28];
      v61 = @"enabled";
      v62 = @"supported";
      v52 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 1) == 1];
      v65 = v52;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v61 count:2];

      goto LABEL_38;
    }

    v61 = @"enabled";
    v35 = [MEMORY[0x277CCABB0] numberWithBool:BYTE2(outputStruct) == 1];
    v64 = v35;
    v62 = @"consistent";
    v36 = [MEMORY[0x277CCABB0] numberWithBool:BYTE3(outputStruct) == 1];
    v65 = v36;
    v63 = @"level";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(outputStruct)];
    v66 = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v61 count:3];
    [v33 addEntriesFromDictionary:v38];

    outputStruct = 3;
    if (CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(*this, &outputStruct, &outputStruct, "ConsistentPerfState_GetMappingTable"))
    {
      if (v32)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:RecommendedState(v32)];
        [v33 setObject:v39 forKeyedSubscript:@"recommended"];
      }

      v40 = [v33 objectForKeyedSubscript:@"level"];
      v41 = [v40 unsignedIntValue];

      switch(v41)
      {
        case 1:
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(outputStruct)];
          [v33 setObject:v42 forKeyedSubscript:@"mapping"];
          goto LABEL_35;
        case 2:
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(outputStruct)];
          [v33 setObject:v42 forKeyedSubscript:@"mapping"];
          goto LABEL_35;
        case 3:
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(outputStruct)];
          [v33 setObject:v42 forKeyedSubscript:@"mapping"];
LABEL_35:

          break;
      }
    }

    else if (g_runningInCI == 1)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf state status!\n"];
      v42 = [v53 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

      v54 = *MEMORY[0x277D85E08];
      v55 = v42;
      fprintf(v54, "#CI-ERROR# %s\n", [v42 UTF8String]);
      goto LABEL_35;
    }

    v47 = v33;
    v33 = v47;
    goto LABEL_37;
  }

  v64 = MEMORY[0x277CBEC28];
  v61 = @"enabled";
  v62 = @"supported";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 1) == 1];
  v65 = v33;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v61 count:2];
LABEL_37:
  v6 = v47;
LABEL_38:

LABEL_39:
  v56 = *MEMORY[0x277D85DE8];

  return v6;
}

BOOL GTAGXPerfStateControl::IsGPUPerformanceStateInduced(GTAGXPerfStateControl *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = [v2 getConsistentPerfStateInfoAndReset:1];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"is_enabled"];
      v6 = [v5 BOOLValue];
    }

    else
    {
      if (g_runningInCI != 1)
      {
        v6 = 0;
        goto LABEL_10;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf state status!\n"];
      v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

      v5 = v9;
      fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v9 UTF8String]);
      v6 = 0;
    }

LABEL_10:
    return v6;
  }

  v7 = *this;
  if (!*this)
  {
    return 0;
  }

  outputStruct = 258;
  if (!CallIO<AGXConsistentPerfStateControlRec,AGXConsistentPerfStateControlRec>(v7, &outputStruct, &outputStruct, "ConsistentPerfState_Get"))
  {
    if (g_runningInCI == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error, fail to get consistent perf state status!\n"];
      v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-ERROR# %s\n", [v11 UTF8String]);
    }

    return 0;
  }

  return BYTE2(outputStruct) == 1;
}

void *GTMTLIndirectResources_remap(__n128 *a1, void *a2, apr_pool_t *a3)
{
  v5 = a2;
  v6 = apr_palloc(a3, 0x68uLL);
  v7 = v6;
  if (v6)
  {
    v6[12] = 0;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
  }

  v37 = a1[2];
  v39 = a1[1];
  v35 = *a1;
  v36 = a1[3];
  v8 = apr_hash_make(a3);
  v9 = apr_hash_make(a3);
  v10 = apr_hash_make(a3);
  v11 = a1[6].n128_i8[0];
  v12 = v35;
  *v7 = v35;
  *(v7 + 1) = v39;
  *(v7 + 2) = v37;
  *(v7 + 3) = v36;
  v7[8] = v8;
  v7[9] = v9;
  v7[10] = v10;
  v7[11] = 0;
  *(v7 + 96) = v11;
  *(v7 + 97) = 0;
  *(v7 + 25) = 0;
  v13 = v35.n128_u64[0];
  v14 = *(v35.n128_u64[0] + 12);
  if (v14 >= 1)
  {
    v38 = a1;
    v40 = a3;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *(v13 + 24);
      if ((qword_27F09CF90 & 0x1400) == 0)
      {
        v18 = [v5 unusedResourceKeys];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v17 + v15 + 16)];
        v20 = [v18 containsObject:v19];

        if (v20)
        {
          goto LABEL_24;
        }
      }

      v21 = *(v17 + v15 + 24);
      if (v21 > 6)
      {
        if (v21 == 7)
        {
          v22 = [v5 visibleFunctionTableForKey:*(v17 + v15 + 16)];
          v28 = [v22 gpuAddress];
LABEL_18:
          *(v17 + v15) = v28;
          goto LABEL_23;
        }

        if (v21 == 9)
        {
          v22 = [v5 accelerationStructureForKey:*(v17 + v15 + 16)];
          v23 = [v22 heap];
          v24 = [v22 buffer];
          v25 = v24;
          if (v23)
          {
            v26 = [v23 gpuAddress];
            v27 = [v22 heapOffset];
            goto LABEL_21;
          }

          if (v24)
          {
            v26 = [v24 gpuAddress];
            v27 = [v22 bufferOffset];
LABEL_21:
            *(v17 + v15) = v27 + v26;
          }

          *(v17 + v15 + 8) = [v22 allocatedSize];

LABEL_23:
        }
      }

      else if (*(v17 + v15 + 24))
      {
        if (v21 == 2)
        {
          v22 = [v5 textureForKey:*(v17 + v15 + 16)];
          *(v17 + v15) = [v22 gpuAddress];
          *(v17 + v15 + 8) = [v22 allocatedSize];
          goto LABEL_23;
        }
      }

      else if ((GT_SUPPORT_0 & 0x80000) == 0)
      {
        v22 = [v5 bufferForKey:*(v17 + v15 + 16)];
        v28 = [v22 gpuAddress];
        goto LABEL_18;
      }

LABEL_24:
      ++v16;
      v13 = *v7;
      v14 = *(*v7 + 12);
      v15 += 32;
      if (v16 >= v14)
      {
        v29 = v14;
        a3 = v40;
        a1 = v38;
        goto LABEL_27;
      }
    }
  }

  v29 = v14;
LABEL_27:
  v30 = *(v13 + 24);
  v41 = CompareGTMTLGPUAddressResource;
  v31 = 126 - 2 * __clz(v29);
  if (v14)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*,false>(v30, (v30 + 32 * v29), &v41, v32, 1, v12);
  v33 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 1) == 0)
  {
    v7[1] = RemapHashmap(a1->n128_i64[1], v5, sel_textureForKey_, *(v7 + 96), a3);
    v33 = g_enableIndexedResourceType;
  }

  if ((v33 & 2) == 0)
  {
    v7[4] = RemapHashmap(a1[2].n128_i64[0], v5, sel_samplerStateForKey_, *(v7 + 96), a3);
    v33 = g_enableIndexedResourceType;
  }

  if ((v33 & 0x10) == 0)
  {
    v7[5] = RemapHashmap(a1[2].n128_i64[1], v5, sel_renderPipelineStateForKey_, *(v7 + 96), a3);
    v7[6] = RemapHashmap(a1[3].n128_i64[0], v5, sel_computePipelineStateForKey_, *(v7 + 96), a3);
  }

  v7[7] = RemapHashmap(a1[3].n128_i64[1], v5, sel_indirectCommandBufferForKey_, *(v7 + 96), a3);
  v7[8] = RemapHashmap(a1[4].n128_i64[0], v5, sel_visibleFunctionTableForKey_, *(v7 + 96), a3);
  v7[9] = RemapHashmap(a1[4].n128_i64[1], v5, sel_intersectionFunctionTableForKey_, *(v7 + 96), a3);
  v7[10] = RemapHashmap(a1[5].n128_i64[0], v5, sel_accelerationStructureForKey_, *(v7 + 96), a3);
  v7[2] = RemapHashmap(a1[1].n128_i64[0], v5, sel_tensorForKey_, *(v7 + 96), a3);

  return v7;
}

double std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*,false>(unint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = a2 - 2;
    v218 = a2 - 6;
    v219 = a2 - 4;
    n128_u64 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = n128_u64;
          v12 = (a2 - n128_u64) >> 5;
          v13 = v12 - 2;
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v12 == 2)
            {
              if (!(*a3)(a2 - 2, n128_u64))
              {
                return a6.n128_f64[0];
              }

LABEL_107:
              v127 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v127;
              v128 = a2[-1];
              *n128_u64 = *v10;
              *(n128_u64 + 16) = v128;
              a6 = v224;
              v129 = v225;
              goto LABEL_108;
            }

            goto LABEL_9;
          }

          switch(v12)
          {
            case 3uLL:
              v125 = (*a3)((n128_u64 + 32), n128_u64);
              v126 = (*a3)(a2 - 2, (n128_u64 + 32));
              if (v125)
              {
                if (v126)
                {
                  goto LABEL_107;
                }

                v198 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v198;
                v199 = *(n128_u64 + 48);
                *n128_u64 = *(n128_u64 + 32);
                *(n128_u64 + 16) = v199;
                v200 = v225;
                *(n128_u64 + 32) = v224;
                *(n128_u64 + 48) = v200;
                if (!(*a3)(a2 - 2, (n128_u64 + 32)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(n128_u64 + 32);
                v129 = *(n128_u64 + 48);
                v224 = a6;
                v225 = v129;
                v201 = a2[-1];
                *(n128_u64 + 32) = *v10;
                *(n128_u64 + 48) = v201;
LABEL_108:
                *v10 = a6;
                a2[-1] = v129;
                return a6.n128_f64[0];
              }

              if (!v126)
              {
                return a6.n128_f64[0];
              }

              v183 = *(n128_u64 + 48);
              v224 = *(n128_u64 + 32);
              v182 = v224;
              v225 = v183;
              v184 = a2[-1];
              *(n128_u64 + 32) = *v10;
              *(n128_u64 + 48) = v184;
              *v10 = v182;
              a2[-1] = v183;
              goto LABEL_181;
            case 4uLL:
              v130 = (*a3)((n128_u64 + 32), n128_u64);
              v131 = (*a3)((n128_u64 + 64), (n128_u64 + 32));
              if (v130)
              {
                if (v131)
                {
                  v132 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v132;
                  v133 = *(n128_u64 + 80);
                  *n128_u64 = *(n128_u64 + 64);
                  *(n128_u64 + 16) = v133;
                  v134 = v225;
                  *(n128_u64 + 64) = v224;
                  *(n128_u64 + 80) = v134;
                }

                else
                {
                  v202 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v202;
                  v203 = *(n128_u64 + 48);
                  *n128_u64 = *(n128_u64 + 32);
                  *(n128_u64 + 16) = v203;
                  v204 = v225;
                  *(n128_u64 + 32) = v224;
                  *(n128_u64 + 48) = v204;
                  if ((*a3)((n128_u64 + 64), (n128_u64 + 32)))
                  {
                    v206 = *(n128_u64 + 32);
                    v205 = *(n128_u64 + 48);
                    v207 = *(n128_u64 + 80);
                    *(n128_u64 + 32) = *(n128_u64 + 64);
                    *(n128_u64 + 48) = v207;
                    *(n128_u64 + 64) = v206;
                    *(n128_u64 + 80) = v205;
                  }
                }
              }

              else if (v131)
              {
                v186 = *(n128_u64 + 32);
                v185 = *(n128_u64 + 48);
                v187 = *(n128_u64 + 80);
                *(n128_u64 + 32) = *(n128_u64 + 64);
                *(n128_u64 + 48) = v187;
                *(n128_u64 + 64) = v186;
                *(n128_u64 + 80) = v185;
                if ((*a3)((n128_u64 + 32), n128_u64))
                {
                  v188 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v188;
                  v189 = *(n128_u64 + 48);
                  *n128_u64 = *(n128_u64 + 32);
                  *(n128_u64 + 16) = v189;
                  v190 = v225;
                  *(n128_u64 + 32) = v224;
                  *(n128_u64 + 48) = v190;
                }
              }

              if (!(*a3)(a2 - 2, (n128_u64 + 64)))
              {
                return a6.n128_f64[0];
              }

              v209 = *(n128_u64 + 80);
              v224 = *(n128_u64 + 64);
              v208 = v224;
              v225 = v209;
              v210 = a2[-1];
              *(n128_u64 + 64) = *v10;
              *(n128_u64 + 80) = v210;
              *v10 = v208;
              a2[-1] = v209;
              if (!(*a3)((n128_u64 + 64), (n128_u64 + 32)))
              {
                return a6.n128_f64[0];
              }

              v212 = *(n128_u64 + 32);
              v211 = *(n128_u64 + 48);
              v213 = *(n128_u64 + 80);
              *(n128_u64 + 32) = *(n128_u64 + 64);
              *(n128_u64 + 48) = v213;
              *(n128_u64 + 64) = v212;
              *(n128_u64 + 80) = v211;
LABEL_181:
              if ((*a3)((n128_u64 + 32), n128_u64))
              {
                v214 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v214;
                v215 = *(n128_u64 + 48);
                *n128_u64 = *(n128_u64 + 32);
                *(n128_u64 + 16) = v215;
                a6.n128_u64[0] = v224.n128_u64[0];
                v216 = v225;
                *(n128_u64 + 32) = v224;
                *(n128_u64 + 48) = v216;
              }

              return a6.n128_f64[0];
            case 5uLL:

              a6.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*,0>(n128_u64, (n128_u64 + 32), (n128_u64 + 64), (n128_u64 + 96), a2 - 2, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v12 <= 23)
          {
            v135 = (n128_u64 + 32);
            v137 = n128_u64 == a2 || v135 == a2;
            if (a5)
            {
              if (!v137)
              {
                v138 = 0;
                v139 = n128_u64;
                do
                {
                  v140 = v139;
                  v139 = v135;
                  if ((*a3)(v135, v140))
                  {
                    v141 = v139[1];
                    v224 = *v139;
                    v225 = v141;
                    v142 = v138;
                    while (1)
                    {
                      v143 = n128_u64 + v142;
                      v144 = *(n128_u64 + v142 + 16);
                      *(v143 + 32) = *(n128_u64 + v142);
                      *(v143 + 48) = v144;
                      if (!v142)
                      {
                        break;
                      }

                      v142 -= 32;
                      if (((*a3)(&v224, (v142 + n128_u64)) & 1) == 0)
                      {
                        v145 = (n128_u64 + v142 + 32);
                        goto LABEL_127;
                      }
                    }

                    v145 = n128_u64;
LABEL_127:
                    a6.n128_u64[0] = v224.n128_u64[0];
                    v146 = v225;
                    *v145 = v224;
                    v145[1] = v146;
                  }

                  v135 = v139 + 2;
                  v138 += 32;
                }

                while (&v139[2] != a2);
              }
            }

            else if (!v137)
            {
              do
              {
                v191 = a1;
                a1 = v135;
                if ((*a3)(v135, v191))
                {
                  v192 = *(a1 + 16);
                  v224 = *a1;
                  v225 = v192;
                  v193 = a1;
                  do
                  {
                    v194 = v193 - 2;
                    v195 = v193[-1];
                    *v193 = v193[-2];
                    v193[1] = v195;
                    v196 = (*a3)(&v224, v193 - 4);
                    v193 = v194;
                  }

                  while ((v196 & 1) != 0);
                  a6.n128_u64[0] = v224.n128_u64[0];
                  v197 = v225;
                  *v194 = v224;
                  v194[1] = v197;
                }

                v135 = (a1 + 32);
              }

              while ((a1 + 32) != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (n128_u64 != a2)
            {
              v221 = a2;
              v147 = v13 >> 1;
              v148 = v13 >> 1;
              do
              {
                v149 = v148;
                if (v147 >= v148)
                {
                  v150 = (2 * v148) | 1;
                  v151 = (a1 + 32 * v150);
                  if (2 * v148 + 2 < v12 && (*a3)((a1 + 32 * v150), v151 + 2))
                  {
                    v151 += 2;
                    v150 = 2 * v149 + 2;
                  }

                  v152 = (a1 + 32 * v149);
                  if (((*a3)(v151, v152) & 1) == 0)
                  {
                    v153 = v152[1];
                    v224 = *v152;
                    v225 = v153;
                    do
                    {
                      v154 = v151;
                      v155 = v151[1];
                      *v152 = *v151;
                      v152[1] = v155;
                      if (v147 < v150)
                      {
                        break;
                      }

                      v156 = (2 * v150) | 1;
                      v151 = (a1 + 32 * v156);
                      v157 = 2 * v150 + 2;
                      if (v157 < v12 && (*a3)((a1 + 32 * v156), v151 + 2))
                      {
                        v151 += 2;
                        v156 = v157;
                      }

                      v152 = v154;
                      v150 = v156;
                    }

                    while (!(*a3)(v151, &v224));
                    v158 = v225;
                    *v154 = v224;
                    v154[1] = v158;
                  }
                }

                v148 = v149 - 1;
              }

              while (v149);
              v159 = v221;
              do
              {
                v160 = v159;
                v161 = 0;
                v162 = *(a1 + 16);
                v222 = *a1;
                v223 = v162;
                v163 = a1;
                do
                {
                  v164 = &v163[2 * v161];
                  v165 = v164 + 2;
                  v166 = (2 * v161) | 1;
                  v167 = 2 * v161 + 2;
                  if (v167 < v12)
                  {
                    v168 = v164 + 4;
                    if ((*a3)(v164 + 2, v164 + 4))
                    {
                      v165 = v168;
                      v166 = v167;
                    }
                  }

                  v169 = v165[1];
                  *v163 = *v165;
                  v163[1] = v169;
                  v163 = v165;
                  v161 = v166;
                }

                while (v166 <= ((v12 - 2) >> 1));
                v159 = v160 - 2;
                if (v165 == &v160[-2])
                {
                  a6.n128_u64[0] = v222.n128_u64[0];
                  v181 = v223;
                  *v165 = v222;
                  v165[1] = v181;
                }

                else
                {
                  v170 = v160[-1];
                  *v165 = *v159;
                  v165[1] = v170;
                  a6.n128_u64[0] = v222.n128_u64[0];
                  v171 = v223;
                  *v159 = v222;
                  v160[-1] = v171;
                  v172 = (&v165[2] - a1) >> 5;
                  v173 = v172 < 2;
                  v174 = v172 - 2;
                  if (!v173)
                  {
                    v175 = v174 >> 1;
                    v176 = (a1 + 32 * (v174 >> 1));
                    if ((*a3)(v176, v165))
                    {
                      v177 = v165[1];
                      v224 = *v165;
                      v225 = v177;
                      do
                      {
                        v178 = v176;
                        v179 = v176[1];
                        *v165 = *v176;
                        v165[1] = v179;
                        if (!v175)
                        {
                          break;
                        }

                        v175 = (v175 - 1) >> 1;
                        v176 = (a1 + 32 * v175);
                        v165 = v178;
                      }

                      while (((*a3)(v176, &v224) & 1) != 0);
                      a6.n128_u64[0] = v224.n128_u64[0];
                      v180 = v225;
                      *v178 = v224;
                      v178[1] = v180;
                    }
                  }
                }

                v173 = v12-- <= 2;
              }

              while (!v173);
            }

            return a6.n128_f64[0];
          }

          v14 = (n128_u64 + 32 * (v12 >> 1));
          v15 = *a3;
          if (v12 >= 0x81)
          {
            v16 = v15((n128_u64 + 32 * (v12 >> 1)), n128_u64);
            v17 = (*a3)(a2 - 2, (n128_u64 + 32 * (v12 >> 1)));
            if (v16)
            {
              if (v17)
              {
                v18 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v18;
                v19 = a2[-1];
                *n128_u64 = *v10;
                *(n128_u64 + 16) = v19;
                goto LABEL_26;
              }

              v36 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v36;
              v37 = v14[1];
              *n128_u64 = *v14;
              *(n128_u64 + 16) = v37;
              v38 = v225;
              *v14 = v224;
              v14[1] = v38;
              if ((*a3)(a2 - 2, (n128_u64 + 32 * (v12 >> 1))))
              {
                v39 = v14[1];
                v224 = *v14;
                v225 = v39;
                v40 = a2[-1];
                *v14 = *v10;
                v14[1] = v40;
LABEL_26:
                v41 = v225;
                *v10 = v224;
                a2[-1] = v41;
              }
            }

            else if (v17)
            {
              v24 = v14[1];
              v224 = *v14;
              v225 = v24;
              v25 = a2[-1];
              *v14 = *v10;
              v14[1] = v25;
              v26 = v225;
              *v10 = v224;
              a2[-1] = v26;
              if ((*a3)((n128_u64 + 32 * (v12 >> 1)), n128_u64))
              {
                v27 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v27;
                v28 = v14[1];
                *n128_u64 = *v14;
                *(n128_u64 + 16) = v28;
                v29 = v225;
                *v14 = v224;
                v14[1] = v29;
              }
            }

            v42 = v14 - 2;
            v43 = (*a3)(v14 - 2, (a1 + 32));
            v44 = (*a3)(v219, v14 - 2);
            if (v43)
            {
              if (v44)
              {
                v45 = *(a1 + 32);
                v46 = *(a1 + 48);
                v224 = v45;
                v225 = v46;
                v47 = a2 - 4;
                v48 = a2[-3];
                *(a1 + 32) = *v219;
                *(a1 + 48) = v48;
                goto LABEL_38;
              }

              v62 = *(a1 + 48);
              v224 = *(a1 + 32);
              v61 = v224;
              v225 = v62;
              v63 = v14[-1];
              *(a1 + 32) = *v42;
              *(a1 + 48) = v63;
              *v42 = v61;
              v14[-1] = v62;
              if ((*a3)(v219, v14 - 2))
              {
                v64 = v14[-1];
                v224 = *v42;
                v225 = v64;
                v47 = a2 - 4;
                v65 = a2[-3];
                *v42 = *v219;
                v14[-1] = v65;
                v45 = v224;
                v46 = v225;
LABEL_38:
                *v47 = v45;
                v47[1] = v46;
              }
            }

            else if (v44)
            {
              v49 = v14[-1];
              v224 = *v42;
              v225 = v49;
              v50 = a2[-3];
              *v42 = *v219;
              v14[-1] = v50;
              v51 = v225;
              *v219 = v224;
              a2[-3] = v51;
              if ((*a3)(v14 - 2, (a1 + 32)))
              {
                v53 = *(a1 + 48);
                v224 = *(a1 + 32);
                v52 = v224;
                v225 = v53;
                v54 = v14[-1];
                *(a1 + 32) = *v42;
                *(a1 + 48) = v54;
                *v42 = v52;
                v14[-1] = v53;
              }
            }

            v66 = (*a3)(v14 + 2, (a1 + 64));
            v67 = (*a3)(v218, v14 + 2);
            if (v66)
            {
              if (v67)
              {
                v68 = *(a1 + 64);
                v69 = *(a1 + 80);
                v224 = v68;
                v225 = v69;
                v70 = a2 - 6;
                v71 = a2[-5];
                *(a1 + 64) = *v218;
                *(a1 + 80) = v71;
                goto LABEL_47;
              }

              v79 = *(a1 + 80);
              v224 = *(a1 + 64);
              v78 = v224;
              v225 = v79;
              v80 = v14[3];
              *(a1 + 64) = v14[2];
              *(a1 + 80) = v80;
              v14[2] = v78;
              v14[3] = v79;
              if ((*a3)(v218, v14 + 2))
              {
                v81 = v14[3];
                v224 = v14[2];
                v225 = v81;
                v70 = a2 - 6;
                v82 = a2[-5];
                v14[2] = *v218;
                v14[3] = v82;
                v68 = v224;
                v69 = v225;
LABEL_47:
                *v70 = v68;
                v70[1] = v69;
              }
            }

            else if (v67)
            {
              v72 = v14[3];
              v224 = v14[2];
              v225 = v72;
              v73 = a2[-5];
              v14[2] = *v218;
              v14[3] = v73;
              v74 = v225;
              *v218 = v224;
              a2[-5] = v74;
              if ((*a3)(v14 + 2, (a1 + 64)))
              {
                v76 = *(a1 + 80);
                v224 = *(a1 + 64);
                v75 = v224;
                v225 = v76;
                v77 = v14[3];
                *(a1 + 64) = v14[2];
                *(a1 + 80) = v77;
                v14[2] = v75;
                v14[3] = v76;
              }
            }

            v83 = (*a3)((a1 + 32 * (v12 >> 1)), v14 - 2);
            v84 = (*a3)(v14 + 2, (a1 + 32 * (v12 >> 1)));
            if (v83)
            {
              if (v84)
              {
                v85 = v14[-1];
                v224 = *v42;
                v225 = v85;
                v86 = v14[3];
                *v42 = v14[2];
                v14[-1] = v86;
                goto LABEL_56;
              }

              v93 = v14[-1];
              v224 = *v42;
              v225 = v93;
              v94 = v14[1];
              *v42 = *v14;
              v14[-1] = v94;
              v95 = v225;
              *v14 = v224;
              v14[1] = v95;
              if ((*a3)(v14 + 2, (a1 + 32 * (v12 >> 1))))
              {
                v96 = v14[1];
                v224 = *v14;
                v225 = v96;
                v97 = v14[3];
                *v14 = v14[2];
                v14[1] = v97;
LABEL_56:
                v98 = v225;
                v14[2] = v224;
                v14[3] = v98;
              }
            }

            else if (v84)
            {
              v87 = v14[1];
              v224 = *v14;
              v225 = v87;
              v88 = v14[3];
              *v14 = v14[2];
              v14[1] = v88;
              v89 = v225;
              v14[2] = v224;
              v14[3] = v89;
              if ((*a3)((a1 + 32 * (v12 >> 1)), v14 - 2))
              {
                v90 = v14[-1];
                v224 = *v42;
                v225 = v90;
                v91 = v14[1];
                *v42 = *v14;
                v14[-1] = v91;
                v92 = v225;
                *v14 = v224;
                v14[1] = v92;
              }
            }

            v99 = *(a1 + 16);
            v224 = *a1;
            v225 = v99;
            v100 = v14[1];
            *a1 = *v14;
            *(a1 + 16) = v100;
            v101 = v225;
            *v14 = v224;
            v14[1] = v101;
            goto LABEL_58;
          }

          v20 = v15(n128_u64, (n128_u64 + 32 * (v12 >> 1)));
          v21 = (*a3)(a2 - 2, n128_u64);
          if (v20)
          {
            if (v21)
            {
              v22 = v14[1];
              v224 = *v14;
              v225 = v22;
              v23 = a2[-1];
              *v14 = *v10;
              v14[1] = v23;
LABEL_35:
              v60 = v225;
              *v10 = v224;
              a2[-1] = v60;
              goto LABEL_58;
            }

            v55 = v14[1];
            v224 = *v14;
            v225 = v55;
            v56 = *(n128_u64 + 16);
            *v14 = *n128_u64;
            v14[1] = v56;
            v57 = v225;
            *n128_u64 = v224;
            *(n128_u64 + 16) = v57;
            if ((*a3)(a2 - 2, n128_u64))
            {
              v58 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v58;
              v59 = a2[-1];
              *n128_u64 = *v10;
              *(n128_u64 + 16) = v59;
              goto LABEL_35;
            }
          }

          else if (v21)
          {
            v30 = *(n128_u64 + 16);
            v224 = *n128_u64;
            v225 = v30;
            v31 = a2[-1];
            *n128_u64 = *v10;
            *(n128_u64 + 16) = v31;
            v32 = v225;
            *v10 = v224;
            a2[-1] = v32;
            if ((*a3)(n128_u64, (n128_u64 + 32 * (v12 >> 1))))
            {
              v33 = v14[1];
              v224 = *v14;
              v225 = v33;
              v34 = *(n128_u64 + 16);
              *v14 = *n128_u64;
              v14[1] = v34;
              v35 = v225;
              *n128_u64 = v224;
              *(n128_u64 + 16) = v35;
            }
          }

LABEL_58:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 32), a1))
          {
            break;
          }

          v114 = *(a1 + 16);
          v222 = *a1;
          v223 = v114;
          if ((*a3)(&v222, a2 - 2))
          {
            n128_u64 = a1;
            do
            {
              n128_u64 += 32;
            }

            while (((*a3)(&v222, n128_u64) & 1) == 0);
          }

          else
          {
            v115 = (a1 + 32);
            do
            {
              n128_u64 = v115;
              if (v115 >= a2)
              {
                break;
              }

              v116 = (*a3)(&v222, v115);
              v115 = (n128_u64 + 32);
            }

            while (!v116);
          }

          v117 = a2;
          if (n128_u64 < a2)
          {
            v117 = a2;
            do
            {
              v117 -= 2;
            }

            while (((*a3)(&v222, v117) & 1) != 0);
          }

          while (n128_u64 < v117)
          {
            v118 = *(n128_u64 + 16);
            v224 = *n128_u64;
            v225 = v118;
            v119 = v117[1];
            *n128_u64 = *v117;
            *(n128_u64 + 16) = v119;
            v120 = v225;
            *v117 = v224;
            v117[1] = v120;
            do
            {
              n128_u64 += 32;
            }

            while (!(*a3)(&v222, n128_u64));
            do
            {
              v117 -= 2;
            }

            while (((*a3)(&v222, v117) & 1) != 0);
          }

          v121 = (n128_u64 - 32);
          if (n128_u64 - 32 != a1)
          {
            v122 = *(n128_u64 - 16);
            *a1 = *v121;
            *(a1 + 16) = v122;
          }

          a5 = 0;
          a6.n128_u64[0] = v222.n128_u64[0];
          v123 = v223;
          *v121 = v222;
          *(n128_u64 - 16) = v123;
        }

        v102 = *(a1 + 16);
        v222 = *a1;
        v223 = v102;
        v103 = a1;
        do
        {
          v104 = v103;
          v103 += 2;
        }

        while (((*a3)(v103, &v222) & 1) != 0);
        v105 = a2;
        if (v104 == a1)
        {
          v105 = a2;
          do
          {
            if (v103 >= v105)
            {
              break;
            }

            v105 -= 2;
          }

          while (((*a3)(v105, &v222) & 1) == 0);
        }

        else
        {
          do
          {
            v105 -= 2;
          }

          while (!(*a3)(v105, &v222));
        }

        if (v103 < v105)
        {
          v106 = v103;
          v107 = v105;
          do
          {
            v109 = v106[1];
            v224 = *v106;
            v108 = v224;
            v225 = v109;
            v110 = v107[1];
            *v106 = *v107;
            v106[1] = v110;
            *v107 = v108;
            v107[1] = v109;
            do
            {
              v104 = v106;
              v106 += 2;
            }

            while (((*a3)(v106, &v222) & 1) != 0);
            do
            {
              v107 -= 2;
            }

            while (!(*a3)(v107, &v222));
          }

          while (v106 < v107);
        }

        if (v104 != a1)
        {
          v111 = v104[1];
          *a1 = *v104;
          *(a1 + 16) = v111;
        }

        v112 = v223;
        *v104 = v222;
        v104[1] = v112;
        if (v103 >= v105)
        {
          break;
        }

LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*,false>(a1, v104, a3, a4, a5 & 1);
        a5 = 0;
        n128_u64 = v104[2].n128_u64;
      }

      v113 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*>(a1, v104, a3);
      n128_u64 = v104[2].n128_u64;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*>(v104 + 2, a2, a3))
      {
        break;
      }

      if (!v113)
      {
        goto LABEL_79;
      }
    }

    a2 = v104;
    if (!v113)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

apr_hash_t *RemapHashmap(uint64_t a1, void *a2, const char *a3, int a4, apr_pool_t *a5)
{
  v9 = a2;
  ht = apr_hash_make(a5);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  for (i = apr_hash_next((a1 + 16)); i; i = apr_hash_next(i))
  {
    v11 = *(*(i + 1) + 32);
    v12 = [v9 a3];
    if (v12)
    {
      v13 = apr_palloc(a5, 0x20uLL);
      v14 = *(v11 + 16);
      *v13 = *v11;
      v13[1] = v14;
      if (objc_opt_respondsToSelector())
      {
        *v13 = [v12 uniqueIdentifier];
      }

      else if (!a4)
      {
        [v12 conformsToProtocol:&unk_2860F7438];
        goto LABEL_13;
      }

      if (objc_opt_respondsToSelector())
      {
        *(v13 + 2) = [v12 gpuResourceID];
        v15 = v13;
        if (!a4)
        {
          goto LABEL_11;
        }

        if (a4 == 1)
        {
          v15 = v13 + 1;
LABEL_11:
          apr_hash_set(ht, v15, 8, v13);
        }
      }

      else
      {
        v15 = v13;
        if (!a4)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_13:
  }

  return ht;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = *a1;
      v14 = a1[1];
      v16 = a3[1];
      *a1 = *a3;
      a1[1] = v16;
LABEL_9:
      *a3 = v15;
      a3[1] = v14;
      goto LABEL_10;
    }

    v24 = *a1;
    v23 = a1[1];
    v25 = a2[1];
    *a1 = *a2;
    a1[1] = v25;
    *a2 = v24;
    a2[1] = v23;
    if ((*a6)(a3, a2))
    {
      v15 = *a2;
      v14 = a2[1];
      v26 = a3[1];
      *a2 = *a3;
      a2[1] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v18 = *a2;
    v17 = a2[1];
    v19 = a3[1];
    *a2 = *a3;
    a2[1] = v19;
    *a3 = v18;
    a3[1] = v17;
    if ((*a6)(a2, a1))
    {
      v21 = *a1;
      v20 = a1[1];
      v22 = a2[1];
      *a1 = *a2;
      a1[1] = v22;
      *a2 = v21;
      a2[1] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v28 = *a3;
    v27 = a3[1];
    v29 = a4[1];
    *a3 = *a4;
    a3[1] = v29;
    *a4 = v28;
    a4[1] = v27;
    if ((*a6)(a3, a2))
    {
      v31 = *a2;
      v30 = a2[1];
      v32 = a3[1];
      *a2 = *a3;
      a2[1] = v32;
      *a3 = v31;
      a3[1] = v30;
      if ((*a6)(a2, a1))
      {
        v34 = *a1;
        v33 = a1[1];
        v35 = a2[1];
        *a1 = *a2;
        a1[1] = v35;
        *a2 = v34;
        a2[1] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v38 = *a4;
    v37 = a4[1];
    v39 = a5[1];
    *a4 = *a5;
    a4[1] = v39;
    *a5 = v38;
    a5[1] = v37;
    if ((*a6)(a4, a3))
    {
      v41 = *a3;
      v40 = a3[1];
      v42 = a4[1];
      *a3 = *a4;
      a3[1] = v42;
      *a4 = v41;
      a4[1] = v40;
      if ((*a6)(a3, a2))
      {
        v44 = *a2;
        v43 = a2[1];
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *a3 = v44;
        a3[1] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = *a1;
          result = a1[1];
          v47 = a2[1];
          *a1 = *a2;
          a1[1] = v47;
          *a2 = v46;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = a2 - 2;
      v12 = (*a3)(a1 + 2, a1);
      v13 = (*a3)(v11, a1 + 2);
      if (v12)
      {
        if (v13)
        {
          v15 = *a1;
          v14 = a1[1];
          v16 = v11[1];
          *a1 = *v11;
          a1[1] = v16;
        }

        else
        {
          v45 = *a1;
          v44 = a1[1];
          v46 = a1[3];
          *a1 = a1[2];
          a1[1] = v46;
          a1[2] = v45;
          a1[3] = v44;
          if (!(*a3)(v11, a1 + 2))
          {
            return 1;
          }

          v15 = a1[2];
          v14 = a1[3];
          v47 = v11[1];
          a1[2] = *v11;
          a1[3] = v47;
        }

        *v11 = v15;
        v11[1] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v30 = a1[2];
      v29 = a1[3];
      v31 = v11[1];
      a1[2] = *v11;
      a1[3] = v31;
      *v11 = v30;
      v11[1] = v29;
LABEL_50:
      if ((*a3)(a1 + 2, a1))
      {
        v72 = *a1;
        v71 = a1[1];
        v73 = a1[3];
        *a1 = a1[2];
        a1[1] = v73;
        a1[2] = v72;
        a1[3] = v71;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLGPUAddressResource const&,GTMTLGPUAddressResource const&),GTMTLGPUAddressResource*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v23 = a2 - 2;
    v24 = (*a3)(a1 + 2, a1);
    v25 = (*a3)(a1 + 4, a1 + 2);
    if ((v24 & 1) == 0)
    {
      if (v25)
      {
        v39 = a1[2];
        v38 = a1[3];
        v40 = a1[5];
        a1[2] = a1[4];
        a1[3] = v40;
        a1[4] = v39;
        a1[5] = v38;
        if ((*a3)(a1 + 2, a1))
        {
          v42 = *a1;
          v41 = a1[1];
          v43 = a1[3];
          *a1 = a1[2];
          a1[1] = v43;
          a1[2] = v42;
          a1[3] = v41;
        }
      }

      goto LABEL_47;
    }

    if (v25)
    {
      v27 = *a1;
      v26 = a1[1];
      v28 = a1[5];
      *a1 = a1[4];
      a1[1] = v28;
    }

    else
    {
      v62 = *a1;
      v61 = a1[1];
      v63 = a1[3];
      *a1 = a1[2];
      a1[1] = v63;
      a1[2] = v62;
      a1[3] = v61;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_47;
      }

      v27 = a1[2];
      v26 = a1[3];
      v64 = a1[5];
      a1[2] = a1[4];
      a1[3] = v64;
    }

    a1[4] = v27;
    a1[5] = v26;
LABEL_47:
    if (!(*a3)(v23, a1 + 4))
    {
      return 1;
    }

    v66 = a1[4];
    v65 = a1[5];
    v67 = v23[1];
    a1[4] = *v23;
    a1[5] = v67;
    *v23 = v66;
    v23[1] = v65;
    if (!(*a3)(a1 + 4, a1 + 2))
    {
      return 1;
    }

    v69 = a1[2];
    v68 = a1[3];
    v70 = a1[5];
    a1[2] = a1[4];
    a1[3] = v70;
    a1[4] = v69;
    a1[5] = v68;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if ((*a3)(a2 - 2, a1))
    {
      v9 = *a1;
      v8 = a1[1];
      v10 = a2[-1];
      *a1 = *v7;
      a1[1] = v10;
      *v7 = v9;
      a2[-1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = a1 + 4;
  v18 = (*a3)(a1 + 2, a1);
  v19 = (*a3)(a1 + 4, a1 + 2);
  if (v18)
  {
    if (v19)
    {
      v21 = *a1;
      v20 = a1[1];
      v22 = a1[5];
      *a1 = *v17;
      a1[1] = v22;
    }

    else
    {
      v49 = *a1;
      v48 = a1[1];
      v50 = a1[3];
      *a1 = a1[2];
      a1[1] = v50;
      a1[2] = v49;
      a1[3] = v48;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_33;
      }

      v21 = a1[2];
      v20 = a1[3];
      v51 = a1[5];
      a1[2] = *v17;
      a1[3] = v51;
    }

    *v17 = v21;
    a1[5] = v20;
  }

  else if (v19)
  {
    v33 = a1[2];
    v32 = a1[3];
    v34 = a1[5];
    a1[2] = *v17;
    a1[3] = v34;
    *v17 = v33;
    a1[5] = v32;
    if ((*a3)(a1 + 2, a1))
    {
      v36 = *a1;
      v35 = a1[1];
      v37 = a1[3];
      *a1 = a1[2];
      a1[1] = v37;
      a1[2] = v36;
      a1[3] = v35;
    }
  }

LABEL_33:
  v52 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    if ((*a3)(v52, v17))
    {
      v55 = v52[1];
      v75 = *v52;
      v76 = v55;
      v56 = v53;
      while (1)
      {
        v57 = a1 + v56;
        v58 = *(&a1[5] + v56);
        *(v57 + 96) = *(a1 + v56 + 64);
        *(v57 + 112) = v58;
        if (v56 == -64)
        {
          break;
        }

        v56 -= 32;
        if (((*a3)(&v75, (v57 + 32)) & 1) == 0)
        {
          v59 = (a1 + v56 + 96);
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      v60 = v76;
      *v59 = v75;
      v59[1] = v60;
      if (++v54 == 8)
      {
        return &v52[2] == a2;
      }
    }

    v17 = v52;
    v53 += 32;
    v52 += 2;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::deque<unsigned int>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<NSDictionary * {__strong},NSArray * {__strong}>>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *result, unsigned int a2)
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

void std::deque<unsigned int>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x800uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }
}

void *std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
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

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void TranslateGTMTLArgument(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v60 = a2;
  v7 = [v60 name];
  v8 = [v7 UTF8String];
  v9 = [v60 name];
  if ([v9 UTF8String])
  {
    v10 = [v60 name];
    v11 = strlen([v10 UTF8String]);
    v12 = v11 + 1;
    if (v11 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3[29];
    }

    a3[29] += v12;
    if (a4)
    {
      memcpy(v13, v8, v12);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v60 access];
  v15 = [v60 isActive];
  v16 = [v60 index];
  v17 = [v60 type];
  v18 = [v60 type];
  v19 = 0;
  v20 = 0;
  v58 = v14;
  v59 = v13;
  v57 = v16;
  v56 = v15;
  v55 = v17;
  if (v18 > 15)
  {
    if (v18 == 16)
    {
      v41 = v60;
      v42 = [v41 imageBlockDataSize];
      v43 = v42 & 0xFFFFFF00FFFFFFFFLL | ([v41 aliasImplicitImageBlockRenderTarget] << 32);
      v44 = [v41 aliasImplicitImageBlock];
      v45 = 0x10000000000;
      if (!v44)
      {
        v45 = 0;
      }

      v23 = v43 | v45;
      v46 = [v41 imageBlockMasterStructMembers];
      if (!v46)
      {
LABEL_39:
        v47 = [v41 dataTypeDescription];
        v25 = TranslateGTMTLType(v47, a3, a4);
        v24 = 0;
LABEL_40:

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v19 = 0;
        if (!a4)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v18 != 17)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        if (v18 != 35)
        {
          goto LABEL_31;
        }

        v31 = v60;
        v32 = [v31 meshVertexStruct];
        v23 = TranslateGTMTLStructType(v32, a3, a4);

        v33 = [v31 meshPrimitiveStruct];
        v19 = TranslateGTMTLStructType(v33, a3, a4);

        v20 = [v31 meshVertexCount];
        v21 = [v31 meshPrimitiveCount];
        v22 = [v31 meshTopologyType];
        v34 = [v31 builtInType];
        v35 = [v31 builtInDataType];

        v25 = 0;
        v24 = v34 & 0xFFFFFFFFFFFF00FFLL | (v35 << 8);
        if (!a4)
        {
          goto LABEL_33;
        }

LABEL_32:
        *a1 = v59;
        *(a1 + 8) = v25;
        *(a1 + 16) = v55;
        *(a1 + 17) = v58;
        *(a1 + 18) = v57;
        *(a1 + 19) = v56 | 2;
        *(a1 + 20) = 0;
        *(a1 + 24) = v24;
        *(a1 + 32) = v23;
        *(a1 + 40) = v19;
        *(a1 + 48) = v20;
        *(a1 + 50) = v21;
        *(a1 + 52) = v22;
        *(a1 + 53) = 0;
        *(a1 + 55) = 0;
        goto LABEL_33;
      }

      v41 = v60;
      v50 = [v41 imageBlockKind];
      v51 = [v41 imageBlockDataSize] | (v50 << 48);
      v52 = v51 & 0xFFFFFF00FFFFFFFFLL | ([v41 aliasImplicitImageBlockRenderTarget] << 32);
      v53 = [v41 aliasImplicitImageBlock];
      v54 = 0x10000000000;
      if (!v53)
      {
        v54 = 0;
      }

      v23 = v52 | v54;
      v46 = [v41 dataTypeDescription];
      if (v46)
      {
        goto LABEL_39;
      }
    }

    v47 = [v41 imageBlockMasterStructMembers];
    v24 = TranslateGTMTLStructType(v47, a3, a4);
    v25 = 0;
    goto LABEL_40;
  }

  if (!v18)
  {
    v36 = [v60 bufferAlignment];
    v37 = [v60 bufferDataSize] | (v36 << 32);
    v38 = v37 & 0xFF00FFFFFFFFFFFFLL | ([v60 bufferDataType] << 48);
    v39 = [v60 isVertexDescriptorBuffer];
    v40 = 0x100000000000000;
    if (!v39)
    {
      v40 = 0;
    }

    v24 = v38 | v40;
    goto LABEL_30;
  }

  if (v18 == 1)
  {
    v48 = [v60 threadgroupMemoryAlignment];
    v24 = [v60 threadgroupMemoryDataSize] | (v48 << 32);
LABEL_30:
    v49 = [v60 dataTypeDescription];
    v25 = TranslateGTMTLType(v49, a3, a4);

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v23 = 0;
LABEL_31:
    if (!a4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v18 != 2)
  {
    goto LABEL_31;
  }

  v26 = [v60 textureDataType];
  v27 = [v60 textureType] | (v26 << 8);
  v28 = v27 & 0xFFFFFFFFFF00FFFFLL | ([v60 arrayLength] << 16);
  v29 = [v60 isDepthTexture];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v23 = 0;
  v25 = 0;
  v30 = 0x1000000;
  if (!v29)
  {
    v30 = 0;
  }

  v24 = v28 | v30;
  if (a4)
  {
    goto LABEL_32;
  }

LABEL_33:
}

uint64_t TranslateGTMTLType(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v7 = [v5 dataType];
  v8 = 0;
  if (v7 <= 57)
  {
    if (v7 == 1)
    {
      v8 = TranslateGTMTLStructType(v6, a2, a3);
      goto LABEL_20;
    }

    if (v7 == 2)
    {
      v15 = v6;
      v8 = a2[23];
      a2[23] = v8 + 32;
      v16 = [v15 elementTypeDescription];
      v17 = TranslateGTMTLType(v16, a2, a3);

      if (a3)
      {
        *v8 = 2;
        *(v8 + 20) = [v15 arrayLength];
        *(v8 + 24) = [v15 elementType];
        *(v8 + 16) = [v15 stride];
        *(v8 + 22) = [v15 argumentIndexStride];
        *(v8 + 8) = v17;
        if (objc_opt_respondsToSelector())
        {
          *(v8 + 25) = [v15 aluType];
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v7 != 58)
    {
      if (v7 != 60)
      {
        if (v7 == 140)
        {
          v8 = a2[25];
          a2[25] = v8 + 152;
          if (a3)
          {
            *v8 = -116;
            v9 = v6;
            v10 = [v9 dimensions];
            MakeGTMTLTensorExtents(v23, v10);
            v11 = v23[4];
            *(v8 + 88) = v23[5];
            v12 = v23[7];
            *(v8 + 104) = v23[6];
            *(v8 + 120) = v12;
            v13 = v23[0];
            *(v8 + 24) = v23[1];
            v14 = v23[3];
            *(v8 + 40) = v23[2];
            *(v8 + 56) = v14;
            *(v8 + 72) = v11;
            *(v8 + 136) = v24;
            *(v8 + 8) = v13;

            *(v8 + 146) = [v9 access];
            *(v8 + 145) = [v9 indexType];
            LOBYTE(v10) = [v9 tensorDataType];

            *(v8 + 144) = v10;
          }
        }

        goto LABEL_20;
      }

      v15 = v6;
      v8 = a2[20];
      a2[20] = v8 + 24;
      v20 = [v15 elementTypeDescription];
      v21 = TranslateGTMTLType(v20, a2, a3);

      if (a3)
      {
        *v8 = 60;
        *(v8 + 23) = [v15 access];
        *(v8 + 20) = [v15 alignment];
        *(v8 + 16) = [v15 dataSize];
        *(v8 + 22) = [v15 elementType];
        *(v8 + 8) = v21;
      }

LABEL_18:

      goto LABEL_20;
    }

    v8 = a2[24];
    a2[24] = v8 + 16;
    if (a3)
    {
      *v8 = 58;
      v18 = v6;
      *(v8 + 10) = [v18 access];
      *(v8 + 8) = [v18 textureDataType];
      v19 = [v18 textureType];

      *(v8 + 9) = v19;
    }
  }

LABEL_20:

  return v8;
}

uint64_t TranslateGTMTLStructType(void *a1, uint64_t a2, unsigned int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = v4;
  if (v4)
  {
    v6 = *(a2 + 168);
    v7 = *(a2 + 176);
    *(a2 + 168) = v6 + 24;
    v8 = [v4 members];
    *(a2 + 176) += 32 * [v8 count];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v5 members];
    v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v30 = v6;
      v31 = v5;
      v11 = 0;
      v35 = *v38;
      v29 = v7;
      v32 = v7 + 25;
      do
      {
        v12 = 0;
        v13 = (v32 + 32 * v11);
        v33 = v10 + v11;
        do
        {
          v14 = a2;
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + v12);
          v16 = [v15 name];
          v17 = [v16 UTF8String];
          v18 = [v15 name];
          if ([v18 UTF8String])
          {
            v19 = [v15 name];
            v20 = strlen([v19 UTF8String]);
            v21 = v20 + 1;
            if (v20 == -1)
            {
              v22 = 0;
            }

            else
            {
              v22 = *(v14 + 232);
            }

            *(v14 + 232) += v21;
            if (a3)
            {
              memcpy(v22, v17, v21);
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = [v15 dataTypeDescription];
          a2 = v14;
          v24 = TranslateGTMTLType(v23, v14, a3);

          if (a3)
          {
            *(v13 - 25) = v22;
            *(v13 - 9) = [v15 offset];
            *(v13 - 1) = [v15 dataType];
            *(v13 - 5) = [v15 argumentIndex];
            *(v13 - 3) = [v15 indirectArgumentIndex];
            *(v13 - 17) = v24;
            if (objc_opt_respondsToSelector())
            {
              v25 = v15;
              *v13 = [v25 aluType];
            }
          }

          v13 += 32;
          v12 += 8;
          --v10;
        }

        while (v10);
        v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        v11 = v33;
      }

      while (v10);
      v6 = v30;
      v5 = v31;
      v7 = v29;
    }

    else
    {
      v11 = 0;
    }

    if (a3)
    {
      *v6 = 1;
      if (v11)
      {
        v26 = v7;
      }

      else
      {
        v26 = 0;
      }

      *(v6 + 8) = v26;
      *(v6 + 16) = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

id ArrayFromDownloadRequests(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
  if (v2 >= 1)
  {
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 24)];
      [v4 addObject:v5];

      --v2;
    }

    while (v2);
  }

  v6 = [v4 copy];

  return v6;
}

id ArrayFromActivities(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = [v8 previousActivity];

      ++v7;
      v8 = v9;
    }

    while (v9);
    v10 = [v4 initWithCapacity:v7];
    do
    {
      if (a2)
      {
        v11 = [v6 jsonObject];
        [v10 addObject:v11];
      }

      else
      {
        [v10 addObject:v6];
      }

      v12 = [v6 previousActivity];

      v6 = v12;
    }

    while (v12);
  }

  else
  {
    v10 = [v4 initWithCapacity:0];
  }

  v13 = v10;
  v14 = [v13 count];
  if (v14 >= 2)
  {
    v15 = 0;
    v16 = v14 >> 1;
    v17 = v14 - 1;
    do
    {
      v18 = v15 + 1;
      [v13 exchangeObjectAtIndex:? withObjectAtIndex:?];
      --v17;
      v15 = v18;
    }

    while (v16 != v18);
  }

  v19 = [v13 copy];

  return v19;
}

id BreadcrumbSummary(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = ArrayFromActivities(a1, 0);
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) summary];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

void GTPerfStateGroup::~GTPerfStateGroup(GTPerfStateGroup *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }
}

void sub_24D8D83D0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    *(v1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 80);
  if (v4)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_24D8D8A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN16GTPerfStateGroup32_GatherSampleDataPeriodicSamplesERK18mach_timebase_info_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v9 = v5;
  if (a3)
  {
    v7 = *(v6 + 24);
    SamplesDelta = IOReportCreateSamplesDelta();
    if (SamplesDelta)
    {
      *(*(*(a1 + 32) + 8) + 24) = v9;
      IOReportGetChannelCount();
      IOReportIterate();
      CFRelease(SamplesDelta);
    }
  }

  else
  {
    *(v6 + 24) = v5;
  }
}

uint64_t ___ZN16GTPerfStateGroup32_GatherSampleDataPeriodicSamplesERK18mach_timebase_info_block_invoke_2()
{
  Format = IOReportChannelGetFormat();
  if (Format)
  {
    if (Format == 1)
    {
      v1 = IOReportChannelGetChannelName();
      IOReportChannelGetChannelID();
      IOReportChannelGetUnit();
      v2 = IOReportChannelGetUnitLabel();
      IOReportSimpleGetIntegerValue();
    }

    else
    {
      IOReportChannelGetUnit();
      IOReportChannelGetUnitLabel();
    }
  }

  return 16;
}

void ___ZN16GTPerfStateGroup29_GatherSampleDataSOCPerfStateERK18mach_timebase_info_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  if (a3)
  {
    v8 = *(a1 + 40);
    v9 = *(v7 + 24);
    SamplesDelta = IOReportCreateSamplesDelta();
    if (SamplesDelta)
    {
      *(*(*(a1 + 32) + 8) + 24) = v6;
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2020000000;
      v12 = 0;
      IOReportIterate();
      CFRelease(SamplesDelta);
      _Block_object_dispose(v11, 8);
    }
  }

  else
  {
    *(v7 + 24) = v5;
  }
}

uint64_t ___ZN16GTPerfStateGroup29_GatherSampleDataSOCPerfStateERK18mach_timebase_info_block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (IOReportChannelGetFormat() == 2)
  {
    IOReportStateGetCurrent();
    Count = IOReportStateGetCount();
    if (Count >= 2)
    {
      v4 = Count;
      v5 = 1;
      v6 = 0x8000;
      do
      {
        Residency = IOReportStateGetResidency();
        if (Residency)
        {
          v8 = Residency;
          v9 = IOReportStateGetInTransitions();
          LODWORD(v11) = v6 & 0x7F8000 | (*(*(a1[4] + 8) + 24) << 23) | 0x302;
          BYTE4(v11) = v9;
          *(&v11 + 5) = 0;
          BYTE7(v11) = 0;
          *(&v11 + 1) = *(*(v2 + 48) + 8 * a1[6]);
          v12 = v8;
          std::vector<PStateInfo>::push_back[abi:nn200100](v2 + 80, &v11);
        }

        ++v5;
        v6 += 0x8000;
      }

      while (v4 != v5);
    }
  }

  ++*(*(a1[4] + 8) + 24);
  return 16;
}

void std::vector<PStateInfo>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void ___ZN16GTPerfStateGroup26_GatherSampleDataPerfStateERK18mach_timebase_info_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(*(a1 + 32) + 8);
  if (a3)
  {
    v8 = *(a1 + 40);
    v9 = *(v7 + 24);
    SamplesDelta = IOReportCreateSamplesDelta();
    if (SamplesDelta)
    {
      *(*(*(a1 + 32) + 8) + 24) = v6;
      IOReportIterate();
      CFRelease(SamplesDelta);
    }
  }

  else
  {
    *(v7 + 24) = v5;
  }
}

uint64_t ___ZN16GTPerfStateGroup26_GatherSampleDataPerfStateERK18mach_timebase_info_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  Format = IOReportChannelGetFormat();
  if (Format)
  {
    if (Format == 2)
    {
      Current = IOReportStateGetCurrent();
      Count = IOReportStateGetCount();
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = 0;
        v16 = (Current << 23) | 0x102;
        v17 = Current << 23;
        do
        {
          Residency = IOReportStateGetResidency();
          if (Residency)
          {
            v10 = Residency;
            v11 = IOReportStateGetNameForIndex();
            v12 = v11;
            if (v11)
            {
              if ([v11 length] >= 2 && objc_msgSend(v12, "characterAtIndex:", 0) == 80)
              {
                v13 = [v12 substringFromIndex:1];
                v14 = [v13 integerValue];

                *&v18 = v16 | (v14 << 15);
                *(&v18 + 1) = *(*(v2 + 48) + 8 * *(a1 + 40));
                v19 = v10;
                std::vector<PStateInfo>::push_back[abi:nn200100](v2 + 80, &v18);
              }
            }

            else
            {
              *&v18 = v17 | v7 & 0x7F8000u | 0x202;
              *(&v18 + 1) = *(*(v2 + 48) + 8 * *(a1 + 40));
              v19 = v10;
              std::vector<PStateInfo>::push_back[abi:nn200100](v2 + 80, &v18);
            }
          }

          ++v8;
          v7 += 0x8000;
        }

        while (v6 != v8);
      }
    }

    else
    {
      IOReportChannelGetUnit();
      IOReportChannelGetUnitLabel();
    }
  }

  return 16;
}

void ___ZN16GTPerfStateGroup20StartCollectingStatsEy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  IntegerValue = IOReportSimpleGetIntegerValue();
  v3 = IntegerValue;
  v5 = v1[15];
  v4 = v1[16];
  if (v5 >= v4)
  {
    v7 = v1[14];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v12);
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    v16 = v1[14];
    v1[14] = v15;
    v1[15] = v6;
    v1[16] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = IntegerValue;
    v6 = v5 + 1;
  }

  v1[15] = v6;
}

void ___ZN16GTPerfStateGroup20StartCollectingStatsEy_block_invoke_2(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (a1[6] > v3)
  {
    if ((*(v1 + 76) - 1) > 1)
    {
      v6 = *(v1 + 104);
      v7 = *(v1 + 16);
      if (IOReportUpdateSamples())
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        v21[0] = mach_absolute_time();
        std::vector<unsigned long>::push_back[abi:nn200100](v1 + 48, v21);
        v9 = *(v1 + 48);
        v8 = *(v1 + 56);
        v10 = *(v1 + 104);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = ___ZN16GTPerfStateGroup17AddPeriodicSampleEv_block_invoke;
        v21[3] = &unk_279658058;
        v21[4] = &v22;
        v21[5] = v1;
        IOReportIterate();
        v11 = v8 - v9;
        v12 = v23;
        v13 = *(v23 + 6);
        v14 = (v1 + 112);
        if (v13 > ((*(v1 + 120) - *(v1 + 112)) >> 3))
        {
          std::vector<long long>::__assign_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long *>,std::__wrap_iter<unsigned long long *>>(v14, (v11 + *(v1 + 48)), (v11 + *(v1 + 48) + 8 * v13), v13);
          v12 = v23;
          v13 = *(v23 + 6);
          v14 = (v1 + 112);
          v11 = v8 - v9;
        }

        v15 = v13 - 1;
        *(v12 + 6) = v13 - 1;
        if (v13)
        {
          v16 = *(v1 + 48) + v11;
          v17 = *v14;
          do
          {
            v18 = *(v16 + 8 * v15);
            *(v16 + 8 * v15) = v18 - *(v17 + 8 * v15);
            *(v17 + 8 * *(v23 + 6)) = v18;
            v19 = *(v23 + 6);
            v15 = v19 - 1;
            *(v23 + 6) = v19 - 1;
          }

          while (v19);
        }

        _Block_object_dispose(&v22, 8);
      }
    }

    else
    {
      v4 = a1[7];
      v5 = *(v1 + 16);
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        v21[0] = mach_absolute_time();
        std::vector<unsigned long>::push_back[abi:nn200100](v1 + 48, v21);
        [*(v1 + 40) addObject:Samples];
      }
    }
  }
}

void ___ZN16GTPerfStateGroup17AddPeriodicSampleEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  IntegerValue = IOReportSimpleGetIntegerValue();
  std::vector<unsigned long>::push_back[abi:nn200100](v2 + 48, &IntegerValue);
  ++*(*(*(a1 + 32) + 8) + 24);
}

void *std::vector<long long>::__assign_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long *>,std::__wrap_iter<unsigned long long *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 8;
        *v14 = v15;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

uint64_t std::vector<GTPerfStateGroup>::__emplace_back_slow_path<NSString * {__strong},NSDictionary * {__strong},GTPerfStateGroup::eGTPerfStateGroup,GTPerfStateGroup::eGTPerfStateGroupType>(uint64_t *a1, id *a2, void **a3, int *a4, int *a5)
{
  v5 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v8 = 0x1AF286BCA1AF286;
  }

  else
  {
    v8 = v6;
  }

  v25 = a1;
  if (v8)
  {
    if (v8 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v9 = 152 * v5;
  v22 = 0;
  v23 = v9;
  *(&v24 + 1) = 0;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a2;
  v14 = v10;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 24) = v13;
  *(v9 + 32) = v14;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = v11;
  *(v9 + 76) = v12;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 80) = 0;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 141) = 0;
  v15 = *a1;
  v16 = a1[1];
  v17 = v9 + *a1 - v16;
  *&v24 = v9 + 152;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<GTPerfStateGroup>,GTPerfStateGroup*>(v15, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<GTPerfStateGroup>::~__split_buffer(&v22);
  return v21;
}

void sub_24D8DA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<GTPerfStateGroup>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN16GTPerfStateGroup5SetupEP14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v32 = IOReportChannelGetGroup();
  if (([*(v3 + 24) isEqualToString:v32] & 1) == 0)
  {
    v23 = 16;
    goto LABEL_48;
  }

  v33 = IOReportChannelGetSubGroup();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [*(v3 + 32) allKeys];
  v4 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v4)
  {
    v23 = 16;
    goto LABEL_47;
  }

  v5 = *v43;
  v27 = v3;
  v28 = a2;
  v26 = *v43;
  while (2)
  {
    v6 = 0;
    v29 = v4;
    do
    {
      if (*v43 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * v6);
      if ([v33 hasPrefix:{v7, v26, v27, v28}])
      {
        v8 = [*(v3 + 32) objectForKeyedSubscript:v7];
        if (v8)
        {
          v9 = IOReportChannelGetChannelName();
          v10 = *(v3 + 76);
          if (v10)
          {
            if (v10 != 2)
            {
              if (v10 == 1 && ([v8 containsObject:v9] & 1) != 0)
              {
LABEL_45:

                v23 = 0;
                goto LABEL_47;
              }

              goto LABEL_39;
            }

            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v30 = v8;
            v8 = v8;
            v11 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v11)
            {
              v12 = *v39;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v39 != v12)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v14 = *(*(&v38 + 1) + 8 * i);
                  if (([v9 containsString:@"_1_"] & 1) == 0)
                  {
                    v16 = [v9 rangeOfString:v14];
                    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v18 = [v9 rangeOfString:@"_" options:0 range:{v16 + v15, objc_msgSend(v9, "length") - (v16 + v15)}];
                      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v19 = [v9 length] - (v18 + v17);
                        if (v19 == 4)
                        {
                          if ([v9 characterAtIndex:{objc_msgSend(v9, "length") - 4}] == 86)
                          {
                            goto LABEL_44;
                          }
                        }

                        else if (v19 == 2 && [v9 characterAtIndex:{objc_msgSend(v9, "length") - 2}] == 70)
                        {
                          goto LABEL_44;
                        }
                      }
                    }
                  }
                }

                v11 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
              }

              while (v11);
            }
          }

          else
          {
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v30 = v8;
            v8 = v8;
            v20 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
            if (v20)
            {
              v21 = *v35;
              while (2)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v35 != v21)
                  {
                    objc_enumerationMutation(v8);
                  }

                  if ([v9 containsString:*(*(&v34 + 1) + 8 * j)])
                  {
LABEL_44:

                    goto LABEL_45;
                  }
                }

                v20 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }
          }

          v8 = v30;

          v3 = v27;
          v5 = v26;
          v4 = v29;
LABEL_39:
        }
      }

      ++v6;
    }

    while (v6 != v4);
    v4 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    v23 = 16;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_47:

LABEL_48:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t ___ZN16GTPerfStateGroup27_FindSubscribedCounterNamesEv_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = IOReportChannelGetChannelName();
  v4 = [v3 rangeOfString:@"_0_"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 substringFromIndex:v4 + v5];

    v3 = v6;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v3 hasSuffix:{v11, v17}])
        {
          v12 = [v3 length];
          v13 = [*(a1 + 32) objectForKeyedSubscript:v11];
          v14 = [v3 stringByReplacingCharactersInRange:v12 - 4 withString:{4, v13}];

          v3 = v14;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [*(v2 + 136) addObject:v3];
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<GTPerfStateGroup>,GTPerfStateGroup*>(GTPerfStateGroup *a1, GTPerfStateGroup *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    do
    {
      v6 = v4 + v5;
      v7 = (a3 + v5);
      *v7 = *(v4 + v5);
      v8 = *(v4 + v5 + 8);
      v9 = *(v4 + v5 + 16);
      v10 = *(v4 + v5 + 24);
      v7[1] = v8;
      v7[2] = v9;
      v7[3] = v10;
      v7[4] = *(v4 + v5 + 32);
      v7[5] = *(v4 + v5 + 40);
      std::vector<unsigned long long>::vector[abi:nn200100]((a3 + v5 + 48), (v4 + v5 + 48));
      v11 = *(v4 + v5 + 72);
      v7[10] = 0;
      v7[9] = v11;
      v7[11] = 0;
      v7[12] = 0;
      v13 = *(v4 + v5 + 80);
      v12 = *(v4 + v5 + 88);
      if (v12 != v13)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3);
        if (v14 < 0xAAAAAAAAAAAAAABLL)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(v14);
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v15 = a3 + v5;
      v16 = *(v6 + 13);
      *(a3 + v5 + 112) = 0;
      v17 = a3 + v5 + 112;
      *(v17 - 8) = v16;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      v19 = *(v6 + 14);
      v18 = *(v6 + 15);
      if (v18 != v19)
      {
        std::vector<unsigned long long>::__vallocate[abi:nn200100](v17, (v18 - v19) >> 3);
      }

      *(v15 + 136) = *(v6 + 17);
      *(v15 + 144) = *(v6 + 18);
      v5 += 152;
    }

    while (v6 + 152 != a2);
    do
    {
      GTPerfStateGroup::~GTPerfStateGroup(v4);
      v4 = (v4 + 152);
    }

    while (v4 != a2);
  }
}

void sub_24D8DAAB8(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v2 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    *(v2 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<GTPerfStateGroup>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    GTPerfStateGroup::~GTPerfStateGroup((i - 152));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24D8DB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  v62 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v62;
    operator delete(v62);
  }

  v63 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v63;
    operator delete(v63);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned long long>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<unsigned long long>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void GTMTLReplayController_initializeArgumentBufferSupport(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v196 = a3;
  v6 = GTMTLSMContext_getDevice(**(a1 + 40), *(a1 + 88))[5];
  if ((qword_27F09CF90 & 0x20000) != 0)
  {
    if ((GT_SUPPORT_0 & 0x80000) != 0)
    {
      v7 = (*(a1 + 352) << 18) & 0x80000;
    }

    else
    {
      v7 = 0;
    }

    GT_SUPPORT_0 = v7 | GT_SUPPORT_0 & 0xFFFFFFFFFFF7FFFFLL;
  }

  if (*(v6 + 110))
  {
    v8 = 0x80000;
    if ((((*(v6 + 24) & 8) == 0) & (GT_SUPPORT_0 >> 19)) == 0)
    {
      v8 = 0;
    }

    v9 = v8 | GT_SUPPORT_0 & 0xFFFFFFFFFFF7FFFFLL;
  }

  else
  {
    v9 = GT_SUPPORT_0 & 0xFFFFFFFFFFF7FFFFLL;
  }

  v20 = ((*(v6 + 32) >> 8) & 1 & (v9 >> 20)) == 0;
  v10 = 0x100000;
  if (v20)
  {
    v10 = 0;
  }

  GT_SUPPORT_0 = v10 | v9 & 0xFFFFFFFFFFEFFFFFLL;
  if ((v9 & 0x80000) != 0)
  {
    v192 = v5;
    v11 = v5;
    v12 = v196;
    v13 = *(a1 + 216);
    v14 = *(v13 + 12);
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = GT_SUPPORT_0;
      do
      {
        v17 = *(v13 + 24);
        v18 = *(v17 + 8 * v15);
        v19 = *v18;
        v20 = *v18 == 50 || v19 == 22;
        if (v20 || v19 == 16 && (v16 & 0x100000) == 0)
        {
          *(v13 + 12) = --v14;
          *(v17 + 8 * v15) = *(v17 + 8 * v14);
          *(*(v13 + 24) + 8 * v14) = v18;
        }

        else
        {
          ++v15;
        }
      }

      while (v15 < v14);
    }

    v194 = a1;
    v21 = *(a1 + 40);
    v23 = v11;
    v197 = v21;
    v24 = v21[13];
    if (*(v24 + 12) >= 1)
    {
      v25 = 0;
      do
      {
        v26 = *(*(v24 + 24) + 8 * v25);
        v27 = v26[6];
        v28 = MakeMTLHeapDescriptor(v27);
        [v28 setPinnedGPUAddress:*v27];
        v29 = [v28 size];
        v30 = v26[10];
        if (v29 >= v30)
        {
          v30 = [v28 size];
        }

        [v28 setSize:v30];
        v31 = [v28 resourceOptions];
        v32 = v31 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
        if ((qword_27F09CF90 & 0x100000) == 0)
        {
          v32 = v31;
        }

        if ((qword_27F09CF90 & 0x80000) != 0)
        {
          v33 = v31 & 0xFFFFFFFFFFFFFCFFLL;
        }

        else
        {
          v33 = v32;
        }

        [v28 setResourceOptions:v33];
        if ([v28 type] <= 1)
        {
          [v28 setType:1];
          v36 = [v23 newHeapWithDescriptor:v28];
          if (v36)
          {
            [v12 setHeap:v36 forKey:v26[1]];
            if ([v36 type] != 2)
            {
              v37 = MTLHeap_backbuffer(v36);
              [v12 setBuffer:v37 forHeapKey:v26[1]];
            }
          }

          else
          {
            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateBuffersAndHeaps", 210, 1, "Heap creation failed", v34, v35, v190);
          }
        }

        ++v25;
      }

      while (v25 < *(v24 + 12));
    }

    newpool[0] = 0;
    apr_pool_create_ex(newpool, 0, 0, v22);
    p = newpool[0];
    v38 = apr_hash_make(newpool[0]);
    v39 = v197[1];
    v40 = objc_alloc_init(MEMORY[0x277CD6CB0]);
    if (*(v39 + 12) >= 1)
    {
      v41 = 0;
      do
      {
        v42 = *(*(v39 + 24) + 8 * v41);
        if ((qword_27F09CF90 & 0x800000) != 0 && *(v42 + 152) && (entry = find_entry(v38, (v42 + 120), 8uLL, 0), *entry) && (v44 = *(*entry + 32)) != 0)
        {
          v45 = [v12 bufferForKey:*(v44 + 8)];
        }

        else
        {
          v45 = 0;
        }

        if (!*(v42 + 48))
        {
          if (v45)
          {
            goto LABEL_59;
          }

          [v40 setPinnedGPUAddress:*(v42 + 120)];
          [v40 setParentGPUAddress:*(v42 + 136)];
          [v40 setParentGPUSize:*(v42 + 144)];
          v46 = *(v42 + 104);
          v47 = v46 & 0xFFFFFFFFFFFFFCFFLL;
          if ((qword_27F09CF90 & 0x100000) != 0)
          {
            v46 = v46 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
          }

          v48 = (qword_27F09CF90 & 0x80000) != 0 ? v47 : v46;
          [v40 setResourceOptions:v48];
          [v40 setLength:*(v42 + 112)];
          v45 = [v23 newBufferWithDescriptor:v40];
          if (v45)
          {
LABEL_59:
            [v12 setBuffer:v45 forKey:*(v42 + 8)];
            if ((qword_27F09CF90 & 0x800000) != 0 && *(v42 + 152))
            {
              apr_hash_set(v38, (v42 + 120), 8, v42);
            }
          }

          else
          {
            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateBuffersAndHeaps", 265, 1, "Buffer creation failed", v49, v50, v190);
          }
        }

        ++v41;
      }

      while (v41 < *(v39 + 12));
    }

    apr_pool_destroy(p);
    v51 = v197[10];
    if (*(v51 + 12) >= 1)
    {
      v52 = 0;
      while (1)
      {
        v53 = *(*(v51 + 24) + 8 * v52);
        if (*(v53 + 152) || *(v53 + 48) || (GT_SUPPORT_0 & 0x100000) != 0 && *(v53 + 160) || !*(v53 + 168))
        {
          goto LABEL_68;
        }

        [v40 setPinnedGPUAddress:?];
        [v40 setParentGPUAddress:*(v53 + 176)];
        [v40 setParentGPUSize:*(v53 + 184)];
        v54 = *(v53 + 104);
        v55 = v54 & 0xFFFFFFFFFFFFFCFFLL;
        if ((qword_27F09CF90 & 0x100000) != 0)
        {
          v54 = v54 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
        }

        v56 = (qword_27F09CF90 & 0x80000) != 0 ? v55 : v54;
        [v40 setResourceOptions:v56];
        [v40 setLength:*(v53 + 200)];
        v57 = [v23 newBufferWithDescriptor:v40];
        if (!v57)
        {
          break;
        }

        v60 = v57;
        v61 = [v23 newAccelerationStructureWithBuffer:v57 offset:*(v53 + 208)];

        if (!v61)
        {
          v62 = 320;
          v63 = "Acceleration structure creation failed";
          goto LABEL_83;
        }

        [v12 setAccelerationStructure:v61 forKey:*(v53 + 8)];

LABEL_68:
        if (++v52 >= *(v51 + 12))
        {
          goto LABEL_84;
        }
      }

      v62 = 303;
      v63 = "Acceleration structure buffer creation failed";
LABEL_83:
      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateBuffersAndHeaps", v62, 1, v63, v58, v59, v190);
      goto LABEL_68;
    }

LABEL_84:
    v64 = *(v24 + 12);
    if (v64 >= 1)
    {
      for (i = 0; i < v64; ++i)
      {
        v66 = *(*(v24 + 24) + 8 * i);
        v67 = v66[6];
        if (*(v67 + 20) == 2)
        {
          v68 = MakeMTLHeapDescriptor(v67);
          v69 = [v68 size];
          v70 = v66[10];
          if (v69 >= v70)
          {
            v70 = [v68 size];
          }

          [v68 setSize:v70];
          v71 = [v68 resourceOptions];
          v72 = v71 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
          if ((qword_27F09CF90 & 0x100000) == 0)
          {
            v72 = v71;
          }

          if ((qword_27F09CF90 & 0x80000) != 0)
          {
            v73 = v71 & 0xFFFFFFFFFFFFFCFFLL;
          }

          else
          {
            v73 = v72;
          }

          [v68 setResourceOptions:v73];
          v76 = [v23 newHeapWithDescriptor:v68];
          if (v76)
          {
            [v12 setHeap:v76 forKey:v66[1]];
          }

          else
          {
            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateBuffersAndHeaps", 343, 1, "Sparse heap creation failed", v74, v75, v190);
          }

          v64 = *(v24 + 12);
        }
      }
    }

    v5 = v192;
    a1 = v194;
  }

  v198 = v5;

  v77 = *(a1 + 40);
  v78 = initializeResourcePatchingTypes(v198, 1);
  g_forcePatchingTypeReplaceMask = 0;
  v80 = a1;
  v81 = v78 & ~qword_27F09CF78;
  if (v81 && (*(a1 + 352) & 2) == 0)
  {
    v81 = 0;
  }

  g_enableIndexedResourceType = v81;
  v233 = 0;
  apr_pool_create_ex(&v233, 0, 0, v79);
  v82 = v233;
  v83 = apr_array_make(v233, 128, 8);
  v84 = v83;
  v85 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 0x200) != 0)
  {
    v83->nelts = 0;
    v86 = v77[2];
    v87 = *(v86 + 12);
    v88 = v198;
    if (v87 >= 1)
    {
      for (j = 0; j < v87; ++j)
      {
        v90 = *(*(*(v86 + 24) + 8 * j) + 304);
        if (v90)
        {
          v91 = apr_array_push(v84);
          v88 = v198;
          *v91 = v90;
          v87 = *(v86 + 12);
        }
      }
    }

    ReserveResourceIndices(v88, v84, 9u);
    v85 = g_enableIndexedResourceType;
    if ((g_enableIndexedResourceType & 1) == 0)
    {
LABEL_105:
      if ((v85 & 2) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_136;
    }
  }

  else if ((g_enableIndexedResourceType & 1) == 0)
  {
    goto LABEL_105;
  }

  v84->nelts = 0;
  v92 = v77[3];
  v93 = *(v92 + 12);
  v94 = v198;
  if (v93 >= 1)
  {
    v95 = 0;
    while (1)
    {
      v96 = *(*(v92 + 24) + 8 * v95);
      v97 = *(v96 + 112);
      if (!v97)
      {
        break;
      }

      v98 = *(v97 + 8);
      if (v98)
      {
        goto LABEL_121;
      }

LABEL_122:
      if (++v95 >= v93)
      {
        goto LABEL_126;
      }
    }

    v98 = *(v96 + 184);
    if (!v98)
    {
      goto LABEL_122;
    }

LABEL_121:
    v99 = apr_array_push(v84);
    v94 = v198;
    *v99 = v98;
    v93 = *(v92 + 12);
    goto LABEL_122;
  }

LABEL_126:
  v100 = v77[12];
  v101 = *(v100 + 12);
  if (v101 >= 1)
  {
    for (k = 0; k < v101; ++k)
    {
      v103 = *(*(*(v100 + 24) + 8 * k) + 48);
      if (v103 && *v103 && v103[2])
      {
        v104 = 0;
        do
        {
          v105 = v104 + *v103;
          *apr_array_push(v84) = v105;
          ++v104;
        }

        while (v103[2] > v104);
        v101 = *(v100 + 12);
        v94 = v198;
      }
    }
  }

  ReserveResourceIndices(v94, v84, 0);
  v85 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 2) == 0)
  {
LABEL_106:
    if ((v85 & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_144;
  }

LABEL_136:
  v84->nelts = 0;
  v106 = v77[4];
  v107 = *(v106 + 12);
  v108 = v198;
  if (v107 >= 1)
  {
    for (m = 0; m < v107; ++m)
    {
      v110 = *(*(*(v106 + 24) + 8 * m) + 48);
      if (v110)
      {
        if (*(v110 + 66))
        {
          v111 = *(v110 + 16);
          if (v111)
          {
            v112 = apr_array_push(v84);
            v108 = v198;
            *v112 = v111;
            v107 = *(v106 + 12);
          }
        }
      }
    }
  }

  ReserveResourceIndices(v108, v84, 1u);
  v85 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 0x10) == 0)
  {
LABEL_107:
    if ((v85 & 0x20) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_160;
  }

LABEL_144:
  v84->nelts = 0;
  v113 = v77[5];
  v114 = *(v113 + 12);
  if (v114 >= 1)
  {
    for (n = 0; n < v114; ++n)
    {
      v116 = *(*(*(v113 + 24) + 8 * n) + 48);
      if (v116)
      {
        if (*(v116 + 1500))
        {
          v117 = *(v116 + 1280);
          if (v117)
          {
            *apr_array_push(v84) = v117;
            v114 = *(v113 + 12);
          }
        }
      }
    }
  }

  v118 = v77[6];
  v119 = *(v118 + 12);
  if (v119 >= 1)
  {
    for (ii = 0; ii < v119; ++ii)
    {
      v121 = *(*(v118 + 24) + 8 * ii);
      if (!*(v121 + 72))
      {
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        *newpool = 0u;
        v200 = 0u;
        GTMTLSMComputePipelineState_computePipelineDescriptor(v77, v121, newpool, v82);
        if (v232)
        {
          v122 = v231;
          if (v231)
          {
            *apr_array_push(v84) = v122;
          }
        }

        v119 = *(v118 + 12);
      }
    }
  }

  ReserveResourceIndices(v198, v84, 4u);
  v85 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 0x20) == 0)
  {
LABEL_108:
    if ((v85 & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_166;
  }

LABEL_160:
  v84->nelts = 0;
  v123 = v77[7];
  v124 = *(v123 + 12);
  v125 = v198;
  if (v124 >= 1)
  {
    for (jj = 0; jj < v124; ++jj)
    {
      v127 = *(*(*(*(v123 + 24) + 8 * jj) + 112) + 8);
      if (v127)
      {
        v128 = apr_array_push(v84);
        v125 = v198;
        *v128 = v127;
        v124 = *(v123 + 12);
      }
    }
  }

  ReserveResourceIndices(v125, v84, 5u);
  v85 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 0x40) == 0)
  {
LABEL_109:
    if ((v85 & 0x80) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_172;
  }

LABEL_166:
  v84->nelts = 0;
  v129 = v77[8];
  v130 = *(v129 + 12);
  v131 = v198;
  if (v130 >= 1)
  {
    for (kk = 0; kk < v130; ++kk)
    {
      v133 = *(*(*(*(v129 + 24) + 8 * kk) + 112) + 8);
      if (v133)
      {
        v134 = apr_array_push(v84);
        v131 = v198;
        *v134 = v133;
        v130 = *(v129 + 12);
      }
    }
  }

  ReserveResourceIndices(v131, v84, 6u);
  v85 = g_enableIndexedResourceType;
  if ((g_enableIndexedResourceType & 0x80) != 0)
  {
LABEL_172:
    v84->nelts = 0;
    v135 = v77[9];
    v136 = *(v135 + 12);
    v137 = v198;
    if (v136 >= 1)
    {
      for (mm = 0; mm < v136; ++mm)
      {
        v139 = **(*(*(v135 + 24) + 8 * mm) + 112);
        if (v139)
        {
          v140 = apr_array_push(v84);
          v137 = v198;
          *v140 = v139;
          v136 = *(v135 + 12);
        }
      }
    }

    ReserveResourceIndices(v137, v84, 7u);
    v85 = g_enableIndexedResourceType;
  }

LABEL_178:
  if ((GT_SUPPORT_0 & 0x100000) != 0 && (v85 & 0x100) != 0)
  {
    v84->nelts = 0;
    v141 = v77[10];
    if (*(v141 + 12) >= 1)
    {
      v142 = 0;
      do
      {
        v143 = *(*(*(v141 + 24) + 8 * v142) + 160);
        *apr_array_push(v84) = v143;
        ++v142;
      }

      while (v142 < *(v141 + 12));
    }

    ReserveResourceIndices(v198, v84, 8u);
    v85 = g_enableIndexedResourceType;
  }

  if ((v85 & 0x400) != 0)
  {
    v84->nelts = 0;
    v144 = v77[34];
    v145 = *(v144 + 12);
    v146 = v198;
    if (v145 >= 1)
    {
      for (nn = 0; nn < v145; ++nn)
      {
        v148 = *(*(*(v144 + 24) + 8 * nn) + 88);
        if (v148)
        {
          v149 = apr_array_push(v84);
          v146 = v198;
          *v149 = v148;
          v145 = *(v144 + 12);
        }
      }
    }

    ReserveResourceIndices(v146, v84, 0xAu);
  }

  apr_pool_destroy(v82);
  v150 = MakeMTLTensorDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x200) == 0)
  {
    v150 = MakeMTLTensorDescriptorWithoutResourceIndex;
  }

  MakeMTLTensorDescriptor = v150;
  v151 = MakeMTLTextureDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 1) == 0)
  {
    v151 = MakeMTLTextureDescriptorWithoutResourceIndex;
  }

  MakeMTLTextureDescriptor = v151;
  v152 = MakeMTLSamplerDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 2) == 0)
  {
    v152 = MakeMTLSamplerDescriptorWithoutResourceIndex;
  }

  MakeMTLSamplerDescriptor = v152;
  v153 = MakeMTLIndirectCommandBufferDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x20) == 0)
  {
    v153 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex;
  }

  MakeMTLIndirectCommandBufferDescriptor = v153;
  v154 = MakeMTLRenderPipelineDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x10) == 0)
  {
    v154 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex;
  }

  MakeMTLRenderPipelineDescriptor = v154;
  v155 = MakeMTLMeshRenderPipelineDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x10) == 0)
  {
    v155 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex;
  }

  MakeMTLMeshRenderPipelineDescriptor = v155;
  v156 = MakeMTLComputePipelineDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x10) == 0)
  {
    v156 = MakeMTLComputePipelineDescriptorWithoutResourceIndex;
  }

  MakeMTLComputePipelineDescriptor = v156;
  v157 = MakeMTLVisibleFunctionTableDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x40) == 0)
  {
    v157 = MakeMTLVisibleFunctionTableDescriptorWithoutResourceIndex;
  }

  MakeMTLVisibleFunctionTableDescriptor = v157;
  v158 = MakeMTLIntersectionFunctionTableDescriptorWithResourceIndex;
  if ((g_enableIndexedResourceType & 0x80) == 0)
  {
    v158 = MakeMTLIntersectionFunctionTableDescriptorWithoutResourceIndex;
  }

  MakeMTLIntersectionFunctionTableDescriptor = v158;

  if ((GT_SUPPORT_0 & 0x80000) != 0)
  {
    v159 = v198;
    v160 = v196;
    v161 = *(v80 + 40);
    v162 = v159;
    v193 = v161;
    v163 = *(v161 + 8);
    v195 = objc_alloc_init(MEMORY[0x277CD6CB0]);
    if (*(v163 + 12) >= 1)
    {
      v164 = 0;
      do
      {
        v165 = *(*(v163 + 24) + 8 * v164);
        if (*(v165 + 48))
        {
          v168 = [v160 heapForKey:?];
          if (!v168)
          {
            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateHeapAndBufferChildren", 370, 1, "Buffer creation failed: heap is nil", v166, v167, v190);
          }

          v169 = *(v165 + 104);
          v170 = v169 & 0xFFFFFFFFFFFFFCFFLL;
          if ((qword_27F09CF90 & 0x100000) != 0)
          {
            v169 = v169 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
          }

          if ((qword_27F09CF90 & 0x80000) != 0)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          v172 = [v168 newBufferWithLength:*(v165 + 112) options:v171 offset:*(v165 + 56)];

          if (v172)
          {
            [v160 setBuffer:v172 forKey:*(v165 + 8)];
          }

          else
          {
            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateHeapAndBufferChildren", 385, 1, "Buffer creation Failed", v173, v174, v190);
          }
        }

        ++v164;
      }

      while (v164 < *(v163 + 12));
    }

    v175 = *(v193 + 80);
    if (*(v175 + 12) >= 1)
    {
      for (i1 = 0; i1 < *(v175 + 12); ++i1)
      {
        v177 = *(*(v175 + 24) + 8 * i1);
        if (v177[19])
        {
          v178 = [v160 bufferForKey:?];
          if (!v178)
          {
            v187 = 401;
            v188 = "Acceleration structure creation failed: buffer is nil";
LABEL_241:
            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_argumentBuffers.m", "GTMTLReplayController_allocateHeapAndBufferChildren", v187, 1, v188, v179, v180, v190);
            continue;
          }

          v181 = v178;
          v182 = v177[26];
          if (v177[20])
          {
            v183 = [v162 newAccelerationStructureWithBuffer:v178 offset:v182 resourceIndex:?];
          }

          else
          {
            v183 = [v162 newAccelerationStructureWithBuffer:v178 offset:v182];
          }
        }

        else
        {
          if (!v177[6])
          {
            continue;
          }

          v184 = [v160 heapForKey:?];
          if (!v184)
          {
            v187 = 421;
            v188 = "Accelertion structure creation failed: heap is nil";
            goto LABEL_241;
          }

          v181 = v184;
          v185 = v177[24];
          v186 = v177[7];
          if (v177[20])
          {
            v183 = [v184 newAccelerationStructureWithSize:v185 offset:v186 resourceIndex:?];
          }

          else
          {
            v183 = [v184 newAccelerationStructureWithSize:v185 offset:v186];
          }
        }

        v189 = v183;

        if (!v189)
        {
          v187 = 450;
          v188 = "Acceleration Structure Creation Failed";
          goto LABEL_241;
        }

        [v160 setAccelerationStructure:v189 forKey:v177[1]];
      }
    }
  }
}

uint64_t initializeResourcePatchingTypes(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = DEVICEOBJECT(v3);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v6 == 3)
      {
        if (((GT_SUPPORT_0 >> 18) & 2 ^ a2) == 2)
        {
          v7 |= 8uLL;
        }
      }

      else if ([v3 resourcePatchingTypeForResourceType:v6] == a2)
      {
        v7 |= 1 << v6;
      }

      ++v6;
    }

    while (v6 != 12);
  }

  else if (a2 == 2)
  {
    v7 = 4095;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void ReserveResourceIndices(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  v6 = *(a2 + 12);
  if (v6)
  {
    v14 = v5;
    qsort(*(a2 + 24), v6, *(a2 + 8), CompareU64);
    v7 = *(a2 + 24);
    v8 = *v7;
    *(a2 + 12) = 1;
    if (v6 >= 2)
    {
      v9 = v6 - 1;
      v10 = v7 + 1;
      v11 = 1;
      do
      {
        v13 = *v10++;
        v12 = v13;
        if (v8 != v13)
        {
          v7[v11] = v12;
          *(a2 + 12) = ++v11;
          v8 = v12;
        }

        --v9;
      }

      while (v9);
    }

    [v14 reserveResourceIndicesForResourceType:a3 indices:? indexCount:?];
    v5 = v14;
  }

  else
  {
    g_forcePatchingTypeReplaceMask |= 1 << a3;
    g_enableIndexedResourceType &= ~(1 << a3);
  }
}

uint64_t CompareU64(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

uint64_t GetAliasStream2(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  entry = find_entry(*(a1 + 24), &v7, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0 && (v5 = atomic_load((*(a1 + 16) + 80)), v5 < *(v4 + 24)))
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t DYMTLIndirectArgumentBufferManager_cleanup(uint64_t a1)
{
  v1 = *(a1 + 136);
  *(a1 + 136) = 0;

  return 0;
}

uint64_t GTTrackerIndirectArgumentBufferInfo_compare(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 >= v3;
  if (v2 == v3 && (v5 = a1[3], v6 = a2[3], v4 = v5 >= v6, v5 == v6))
  {
    v7 = a1[4];
    v8 = a2[4];
    v4 = v7 >= v8;
    v9 = v7 != v8;
    if (v4)
    {
      return v9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DYMTLMutableBufferAncestor_compare(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == v3)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  else if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t DYMTLIndirectArgumentBufferManager_processCommandBuffer(uint64_t a1, uint64_t a2)
{
  if (a2 && (v2 = a2, *(*(a2 + 120) + 12) >= 1))
  {
    v117 = *(a1 + 8);
    v4 = [v117 defaultDevice];
    v5 = initializeResourcePatchingTypes(v4, 2);

    v6 = qword_27F09CF78 | g_forcePatchingTypeReplaceMask;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, v7);
    v8 = newpool;
    v9 = apr_array_make(newpool, 4, 40);
    v10 = v8;
    v11 = v9;
    v12 = *(v10 + 5);
    v115 = a1;
    p = v10;
    if (v12)
    {
      *(v10 + 5) = *v12;
    }

    else
    {
      v12 = apr_palloc(v10, 0x20uLL);
      v10 = p;
    }

    v122 = v6 | v5;
    arr = v11;
    v12[1] = v11;
    v12[2] = DYMTLIABDecodingOp_cleanup;
    v12[3] = apr_pool_cleanup_null;
    *v12 = *(v10 + 4);
    *(v10 + 4) = v12;
    if (*(*(v2 + 120) + 12) >= 1)
    {
      v14 = 0;
      v128 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
      context = vdupq_n_s64(7uLL);
      v134 = v2;
      do
      {
        v15 = objc_autoreleasePoolPush();
        v16 = *(*(v2 + 120) + 24) + 40 * v14;
        v17 = [v117 functionForKey:*(v16 + 24)];
        v18 = DEVICEOBJECT(v17);

        v19 = *(v16 + 32);
        v162 = 0;
        v20 = [v18 newArgumentEncoderWithBufferIndex:v19 reflection:&v162];
        v21 = v162;
        v22 = v162;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v155 = 0;
        v157 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        v156 = 56;
        TranslateGTMTLArgument(0, v22, &v146, 0);
        v23 = 0;
        v24 = 0uLL;
        do
        {
          v24 = vaddq_s64(vandq_s8(vaddq_s64(*(&v146 + v23), context), v128), v24);
          v23 += 16;
        }

        while (v23 != 240);
        v25 = apr_palloc(p, vaddvq_s64(v24));
        for (i = 0; i != 240; i += 8)
        {
          if (((*(&v146 + i) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          v25 += (*(&v146 + i) + 7) & 0xFFFFFFFFFFFFFFF8;
          *(&v146 + i) = v27;
        }

        v28 = v156;
        v156 += 56;
        TranslateGTMTLArgument(v28, v22, &v146, 1);
        if (*(v28 + 16) > 1u)
        {
          goto LABEL_22;
        }

        v29 = *(v28 + 8);
        if (!v29)
        {
          goto LABEL_22;
        }

        v30 = *v29;
        if (v30 == 1)
        {
          goto LABEL_23;
        }

        if (v30 == 60 && v29[22] == 1)
        {
          v29 = *(v29 + 1);
        }

        else
        {
LABEL_22:
          v29 = 0;
        }

LABEL_23:
        if (GTMTLStructType_requiresPatching(v29, v122))
        {
          v31 = apr_array_push(arr);
          v32 = v31;
          *v31 = *v16;
          if (*(v28 + 16) || (v33 = *(v28 + 8)) == 0 || *v33 != 60)
          {
            v33 = 0;
          }

          *(v31 + 2) = v33;
          objc_storeStrong(v31 + 3, v20);
          objc_storeStrong((v32 + 32), v21);
          if ((qword_27F09CF90 & 0x40) == 0 && arr->nelts >= 2)
          {
            v34 = 0;
            v35 = 0;
            while (!DYMTLIABDecodingOp_isEqual(&arr->elts[v34], v32))
            {
              ++v35;
              v34 += 40;
              if (v35 >= arr->nelts - 1)
              {
                goto LABEL_37;
              }
            }

            nelts = arr->nelts;
            if (nelts)
            {
              arr->nelts = nelts - 1;
            }
          }
        }

LABEL_37:

        objc_autoreleasePoolPop(v15);
        ++v14;
        v2 = v134;
      }

      while (v14 < *(*(v134 + 120) + 12));
    }

    v37 = arr;
    if (arr->nelts <= 0)
    {
      v13 = 0;
    }

    else
    {
      v107 = objc_autoreleasePoolPush();
      v38 = (GT_SUPPORT_0 >> 13) & 1;
      v111 = v38 & BYTE3(qword_27F09CF90);
      if ((qword_27F09CF90 & 0x80) != 0)
      {
        v40 = v115;
        v39 = p;
        GTMTLIndirectResources_allResourcesByKey(&v139, *(*v115 + 40), *(*v115 + 88) + *(v115 + 22560), v38 & BYTE3(qword_27F09CF90), p);
        v150 = v143;
        v151 = v144;
        *&v152 = v145;
        v146 = v139;
        v147 = v140;
        v148 = v141;
        v149 = v142;
      }

      else
      {
        v39 = p;
        GTMTLIndirectResources_rehash(&v139, v2 + 8, v38 & BYTE3(qword_27F09CF90), p);
        v150 = v143;
        v151 = v144;
        *&v152 = v145;
        v146 = v139;
        v147 = v140;
        v148 = v141;
        v149 = v142;
        v40 = v115;
      }

      *&v139 = v122;
      *(&v139 + 1) = &v146;
      *&v140 = arr;
      v41 = apr_array_make(v39, 8, 32);
      v42 = *(v40 + 22576);
      v127 = v41;
      *(&v140 + 1) = v41;
      *&v141 = v42;
      v113 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:arr->nelts];
      v110 = *(v40 + 24);
      v43 = [*(v40 + 8) defaultCommandQueue];
      v108 = InternalCommandBuffer(v43, @"AB_Patching", v40 + 40);
      v114 = v43;
      v112 = InternalBlitCommandEncoder(v108, v43);
      [g_activityLog enterArgumentBufferDownload];
      v109 = 0;
      v44 = 0;
      v45 = arr->nelts;
      do
      {
        elts = v37->elts;
        v47 = (v45 - v44);
        v48 = v113;
        v49 = v112;
        v50 = *(v115 + 8);
        v51 = *(v115 + 24);
        v118 = v49;
        v124 = v44;
        if (v47 < 1)
        {
        }

        else
        {
          v135 = v51;
          contexta = v50;
          v52 = 0;
          v53 = &elts[40 * v44];
          do
          {
            v54 = objc_autoreleasePoolPush();
            v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*v53, v107}];
            v56 = [v48 objectForKeyedSubscript:v55];

            if (!v56)
            {
              v57 = [contexta bufferForKey:*v53];
              if ([v57 storageMode])
              {
                v58 = [v57 length];
                v59 = [v135 bufferWithLength:v58 alignment:{objc_msgSend(*(v53 + 3), "alignment")}];
                v60 = [(GTMTLReplaySharedBufferRange *)v59 heapBuffer];
                v61 = [(GTMTLReplaySharedBufferRange *)v59 heapLocation];
                v62 = [v135 blitCommandEncoder];
                [v62 copyFromBuffer:v57 sourceOffset:0 toBuffer:v60 destinationOffset:v61 size:v58];
                [v118 copyFromBuffer:v60 sourceOffset:v61 toBuffer:v57 destinationOffset:0 size:v58];

                v52 = 1;
              }

              else
              {
                v59 = [[GTMTLReplaySharedBufferRange alloc] initWithBuffer:v57];
              }

              v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v53];
              [v48 setObject:v59 forKeyedSubscript:v63];
            }

            objc_autoreleasePoolPop(v54);
            v53 += 40;
            --v47;
          }

          while (v47);

          v37 = arr;
          if (v52)
          {
            [v110 commitCommandBuffer];
            v109 = 1;
          }
        }

        [v114 finish];
        v64 = v124;
        v65 = v48;
        v136 = v117;
        v125 = v37->nelts;
        if (v111)
        {
          if (v125 > v64)
          {
            do
            {
              contextb = objc_autoreleasePoolPush();
              v66 = &v37->elts[40 * v64];
              v127->nelts = 0;
              v67 = *(v66 + 2);
              if (*(v67 + 22) == 1)
              {
                v68 = *(v67 + 8);
              }

              else
              {
                v68 = 0;
              }

              GTMTLStructType_fillArgumentIndicesRequiresPatching(v68, 0, 0, v127, v122);
              v69 = *(*(v66 + 2) + 16);
              v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v66];
              v71 = [v65 objectForKeyedSubscript:v70];

              v72 = [v71 heapBuffer];
              v73 = DEVICEOBJECT(v72);

              v74 = [v71 heapLocation];
              v75 = [v71 length];
              v77 = *v66;
              v76 = *(v66 + 1);
              if ((qword_27F09CF90 & 0x40) != 0)
              {
                v82 = *(v66 + 4);
                *&v164 = *v66;
                *(&v164 + 1) = v76;
                v165 = 0;
                reencodeBufferDataTier2(&v139, v136, v73, v76 + v74, v73, v76 + v74, &v164, v82);
              }

              else
              {
                v78 = v75;
                v79 = v76 % v69;
                while (v79 + v69 <= v78)
                {
                  v80 = v79;
                  v81 = *(v66 + 4);
                  v79 += v69;
                  *&v164 = v77;
                  *(&v164 + 1) = v80;
                  v165 = 0;
                  reencodeBufferDataTier2(&v139, v136, v73, v80 + v74, v73, v80 + v74, &v164, v81);
                }
              }

              objc_autoreleasePoolPop(contextb);
              ++v64;
              v37 = arr;
            }

            while (v125 != v64);
          }
        }

        else if (v125 > v64)
        {
          v121 = v65;
          do
          {
            v126 = v64;
            v83 = objc_autoreleasePoolPush();
            v84 = &v37->elts[40 * v64];
            v127->nelts = 0;
            v85 = *(v84 + 16);
            v120 = v83;
            if (*(v85 + 22) == 1)
            {
              v86 = *(v85 + 8);
            }

            else
            {
              v86 = 0;
            }

            GTMTLStructType_fillArgumentIndicesRequiresPatching(v86, 0, 0, v127, v122);
            v87 = *(v84 + 24);
            v88 = [v87 encodedLength];
            v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v84];
            v129 = [v121 objectForKeyedSubscript:v89];

            v90 = [v129 heapBuffer];
            v91 = DEVICEOBJECT(v90);

            v92 = [v129 heapLocation];
            v93 = [v129 length];
            contextc = *v84;
            if ((qword_27F09CF90 & 0x40) != 0)
            {
              v105 = *(v84 + 8);
              [v87 setArgumentBuffer:v91 offset:v105 + v92];
              *&v164 = contextc;
              *(&v164 + 1) = v105;
              v165 = 0;
              reencodeBufferData(&v139, v136, v91, v105 + v92, v87, &v164);
            }

            else
            {
              v94 = v93;
              v95 = [v91 device];
              v96 = [v95 supportsArgumentBuffersTier2];

              v97 = [v87 layout];
              v98 = [v97 hashValue];
              v99 = [v97 hashOffset];
              v119 = v97;
              v100 = *(v84 + 8);
              v101 = v100 % v88;
              v102 = v100 % v88 + v88;
              if (v102 <= v94)
              {
                v103 = v99;
                do
                {
                  v104 = v102;
                  if ((v96 & 1) != 0 || *([v91 contents] + v92 + v101 + v103) == v98)
                  {
                    [v87 setArgumentBuffer:v91 offset:v101 + v92];
                    *&v164 = contextc;
                    *(&v164 + 1) = v101;
                    v165 = 0;
                    reencodeBufferData(&v139, v136, v91, v101 + v92, v87, &v164);
                  }

                  v102 = v104 + v88;
                  v101 = v104;
                }

                while (v104 + v88 <= v94);
              }
            }

            [v87 setArgumentBuffer:0 offset:0];

            objc_autoreleasePoolPop(v120);
            v64 = v126 + 1;
            v37 = arr;
            v65 = v121;
          }

          while (v125 != v126 + 1);
        }

        v45 = v37->nelts;
        v44 = v125;
      }

      while (v125 < v45);
      [g_activityLog leaveActivity];
      [v118 endEncoding];
      v13 = v109;
      if (v109)
      {
        [g_activityLog enterArgumentBufferUpload];
        [g_activityLog logSharedCommandBuffer:v108];
        v137[0] = MEMORY[0x277D85DD0];
        v137[1] = 3221225472;
        v137[2] = __DYMTLIndirectArgumentBufferManager_processCommandBuffer_block_invoke;
        v137[3] = &unk_279658380;
        v138 = v65;
        [v108 addCompletedHandler:v137];
        GTMTLReplay_commitCommandBuffer(v108);

        [g_activityLog leaveActivity];
      }

      objc_autoreleasePoolPop(v107);
    }

    apr_pool_destroy(p);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL GTMTLStructType_requiresPatching(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (*(a1 + 8) + 24);
    v5 = 1;
    v6 = *(a1 + 16);
    v7 = 1;
    do
    {
      v8 = *v4;
      if (v8 == 1)
      {
        if (GTMTLStructType_requiresPatching(*(v4 - 2)))
        {
          return v7;
        }
      }

      else if (v8 == 2)
      {
        if (GTMTLArrayType_requiresPatching(*(v4 - 2), a2))
        {
          return v7;
        }
      }

      else if (GTMTLDataType_requiresPatching(v8, a2))
      {
        return v7;
      }

      v7 = v5++ < v2;
      v4 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t DYMTLIABDecodingOp_isEqual(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = [*(a1 + 24) encodedLength];
  if (v4 != [*(a2 + 24) encodedLength])
  {
    return 0;
  }

  v5 = [*(a1 + 24) alignment];
  if (v5 != [*(a2 + 24) alignment] || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (*(v6 + 22) == 1)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a2 + 16);
  if (*(v9 + 22) == 1)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  return GTMTLStructType_isEqual(v7, v10);
}

void *GTMTLStructType_fillArgumentIndicesRequiresPatching(void *result, uint64_t a2, uint64_t a3, apr_array_header_t *a4, unint64_t a5)
{
  if (*(result + 4))
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8[1];
      v12 = v11 + v9;
      v13 = *(v11 + v9 + 22) + a2;
      v14 = *(v11 + v9 + 16);
      v15 = *(v11 + v9 + 24);
      if (v15 == 2)
      {
        result = GTMTLArrayType_fillArgumentIndicesRequiresPatching(*(v12 + 8), *(v11 + v9 + 22) + a2, v14 + a3, a4, a5);
      }

      else if (v15 == 1)
      {
        result = GTMTLStructType_fillArgumentIndicesRequiresPatching(*(v11 + v9 + 8), *(v11 + v9 + 22) + a2, v14 + a3, a4, a5);
      }

      else
      {
        result = GTMTLDataType_requiresPatching(*(v11 + v9 + 24), a5);
        if (result)
        {
          if (v15 == 60)
          {
            v16 = *(v11 + v9 + 8);
          }

          else
          {
            v16 = 0;
          }

          result = apr_array_push(a4);
          v17 = result;
          *result = *(v12 + 24);
          result[1] = v13;
          result[2] = *(v12 + 16);
          if (v16)
          {
            result = GTMTLPointerType_requiresPatching(v16, a5);
            if (result)
            {
              v18 = v16;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v17[3] = v18;
        }
      }

      ++v10;
      v9 += 32;
    }

    while (v10 < *(v8 + 4));
  }

  return result;
}

void reencodeBufferDataTier2(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, __int128 *a7, void *a8)
{
  v14 = a2;
  v15 = a3;
  v90 = a5;
  v87 = a8;
  v16 = a1[3];
  if (*(v16 + 12) >= 1)
  {
    v17 = a4;
    v18 = 0;
    v19 = 0;
    v88 = v17;
    do
    {
      v20 = (*(v16 + 24) + v18);
      v21 = *v20;
      v22 = v20[2];
      *(a7 + 2) = v20[1];
      if (v21 > 79)
      {
        if (v21 > 116)
        {
          if ((v21 - 117) >= 2)
          {
            goto LABEL_77;
          }

          v23 = *([v15 contents] + v22 + v17);
          v41 = a1[4];
          v91 = *a7;
          v92 = *(a7 + 2);
          entry = find_entry(v41, &v91, 0x18uLL, 0);
          if (*entry)
          {
            v43 = *(*entry + 32);
            if (v43)
            {
              if (*(v43 + 24) == v23)
              {
                goto LABEL_77;
              }
            }
          }

          v34 = *(a1[1] + 80);
LABEL_37:
          *&v91 = v23;
          v44 = find_entry(v34, &v91, 8uLL, 0);
          if (!*v44)
          {
            goto LABEL_77;
          }

          v45 = *(*v44 + 32);
          if (!v45)
          {
            goto LABEL_77;
          }

          v30 = [v14 intersectionFunctionTableForKey:*(v45 + 8)];
          goto LABEL_73;
        }

        switch(v21)
        {
          case 'P':
            v23 = *([v15 contents] + v22 + v17);
            v64 = a1[4];
            v91 = *a7;
            v92 = *(a7 + 2);
            v65 = find_entry(v64, &v91, 0x18uLL, 0);
            if (*v65)
            {
              v66 = *(*v65 + 32);
              if (v66)
              {
                if (*(v66 + 24) == v23)
                {
                  goto LABEL_77;
                }
              }
            }

            v67 = *(a1[1] + 56);
            *&v91 = v23;
            v68 = find_entry(v67, &v91, 8uLL, 0);
            if (!*v68)
            {
              goto LABEL_77;
            }

            v69 = *(*v68 + 32);
            if (!v69)
            {
              goto LABEL_77;
            }

            v30 = [v14 indirectCommandBufferForKey:*(v69 + 8)];
            break;
          case 's':
            v23 = *([v15 contents] + v22 + v17);
            v76 = a1[4];
            v91 = *a7;
            v92 = *(a7 + 2);
            v77 = find_entry(v76, &v91, 0x18uLL, 0);
            if (*v77)
            {
              v78 = *(*v77 + 32);
              if (v78)
              {
                if (*(v78 + 24) == v23)
                {
                  goto LABEL_77;
                }
              }
            }

            v79 = *(a1[1] + 64);
            *&v91 = v23;
            v80 = find_entry(v79, &v91, 8uLL, 0);
            if (!*v80)
            {
              goto LABEL_77;
            }

            v81 = *(*v80 + 32);
            if (!v81)
            {
              goto LABEL_77;
            }

            v30 = [v14 visibleFunctionTableForKey:*(v81 + 8)];
            break;
          case 't':
            v23 = *([v15 contents] + v22 + v17);
            v31 = a1[4];
            v91 = *a7;
            v92 = *(a7 + 2);
            v32 = find_entry(v31, &v91, 0x18uLL, 0);
            if (*v32)
            {
              v33 = *(*v32 + 32);
              if (v33)
              {
                if (*(v33 + 24) == v23)
                {
                  goto LABEL_77;
                }
              }
            }

            v34 = *(a1[1] + 72);
            goto LABEL_37;
          default:
            goto LABEL_77;
        }
      }

      else if (v21 <= 59)
      {
        if (v21 == 58)
        {
          v23 = *([v15 contents] + v22 + v17);
          v46 = a1[4];
          v91 = *a7;
          v92 = *(a7 + 2);
          v47 = find_entry(v46, &v91, 0x18uLL, 0);
          if (*v47)
          {
            v48 = *(*v47 + 32);
            if (v48)
            {
              if (*(v48 + 24) == v23)
              {
                goto LABEL_77;
              }
            }
          }

          v49 = *(a1[1] + 8);
          *&v91 = v23;
          v50 = find_entry(v49, &v91, 8uLL, 0);
          if (!*v50)
          {
            goto LABEL_77;
          }

          v51 = *(*v50 + 32);
          if (!v51)
          {
            goto LABEL_77;
          }

          v30 = [v14 textureForKey:*(v51 + 8)];
        }

        else
        {
          if (v21 != 59)
          {
            goto LABEL_77;
          }

          v23 = *([v15 contents] + v22 + v17);
          v35 = a1[4];
          v91 = *a7;
          v92 = *(a7 + 2);
          v36 = find_entry(v35, &v91, 0x18uLL, 0);
          if (*v36)
          {
            v37 = *(*v36 + 32);
            if (v37)
            {
              if (*(v37 + 24) == v23)
              {
                goto LABEL_77;
              }
            }
          }

          v38 = *(a1[1] + 32);
          *&v91 = v23;
          v39 = find_entry(v38, &v91, 8uLL, 0);
          if (!*v39)
          {
            goto LABEL_77;
          }

          v40 = *(*v39 + 32);
          if (!v40)
          {
            goto LABEL_77;
          }

          v30 = [v14 samplerStateForKey:*(v40 + 8)];
        }
      }

      else
      {
        switch(v21)
        {
          case '<':
            v52 = *([v15 contents] + v22 + v17);
            v53 = a1[4];
            v91 = *a7;
            v92 = *(a7 + 2);
            v54 = find_entry(v53, &v91, 0x18uLL, 0);
            if (*v54)
            {
              v55 = *(*v54 + 32);
              if (v55)
              {
                if (*(v55 + 24) == v52)
                {
                  goto LABEL_77;
                }
              }
            }

            v56 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a1[1] + 24), *(*a1[1] + 12), v52);
            if (!v56 || !v56[2])
            {
              goto LABEL_77;
            }

            v57 = *v56;
            v58 = v14;
            v59 = v52 - v57;
            v86 = v58;
            v60 = [v58 bufferForKey:?];
            v61 = DEVICEOBJECT(v60);

            v62 = v59 + [v61 gpuAddress];
            *([v90 contents] + v22 + a6) = v62;
            if (v52 != v62)
            {
              v63 = a1[4];
              v91 = *a7;
              v92 = *(a7 + 2);
              StoreArgumentIndexReencoding(v63, &v91, v62);
            }

            v14 = v86;
            goto LABEL_76;
          case 'N':
            v23 = *([v15 contents] + v22 + v17);
            v70 = a1[4];
            v91 = *a7;
            v92 = *(a7 + 2);
            v71 = find_entry(v70, &v91, 0x18uLL, 0);
            if (*v71)
            {
              v72 = *(*v71 + 32);
              if (v72)
              {
                if (*(v72 + 24) == v23)
                {
                  goto LABEL_77;
                }
              }
            }

            v73 = *(a1[1] + 40);
            *&v91 = v23;
            v74 = find_entry(v73, &v91, 8uLL, 0);
            if (!*v74)
            {
              goto LABEL_77;
            }

            v75 = *(*v74 + 32);
            if (!v75 || !*(v75 + 8))
            {
              goto LABEL_77;
            }

            v30 = [v14 renderPipelineStateForKey:?];
            break;
          case 'O':
            if ((GT_SUPPORT_0 & 0x10) == 0)
            {
              goto LABEL_77;
            }

            v23 = *([v15 contents] + v22 + v17);
            v24 = a1[4];
            v91 = *a7;
            v92 = *(a7 + 2);
            v25 = find_entry(v24, &v91, 0x18uLL, 0);
            if (*v25)
            {
              v26 = *(*v25 + 32);
              if (v26)
              {
                if (*(v26 + 24) == v23)
                {
                  goto LABEL_77;
                }
              }
            }

            v27 = *(a1[1] + 48);
            *&v91 = v23;
            v28 = find_entry(v27, &v91, 8uLL, 0);
            if (!*v28)
            {
              goto LABEL_77;
            }

            v29 = *(*v28 + 32);
            if (!v29 || !*(v29 + 8))
            {
              goto LABEL_77;
            }

            v30 = [v14 computePipelineStateForKey:?];
            break;
          default:
            goto LABEL_77;
        }
      }

LABEL_73:
      v82 = v30;
      v83 = DEVICEOBJECT(v30);

      v84 = [v83 gpuResourceID];
      *([v90 contents] + v22 + a6) = v84;
      if (v23 != v84)
      {
        v85 = a1[4];
        v91 = *a7;
        v92 = *(a7 + 2);
        StoreArgumentIndexReencoding(v85, &v91, v84);
      }

LABEL_76:
      v17 = v88;
LABEL_77:
      ++v19;
      v16 = a1[3];
      v18 += 32;
    }

    while (v19 < *(v16 + 12));
  }
}

void reencodeBufferData(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, __int128 *a6)
{
  v11 = a2;
  v103 = a3;
  v101 = a5;
  v102 = [v101 layout];
  v12 = *(a1 + 24);
  if (*(v12 + 12) >= 1)
  {
    v13 = 0;
    v100 = a4;
    while (1)
    {
      v14 = (*(v12 + 24) + 32 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      *(a6 + 2) = v16;
      if (v15 <= 79)
      {
        break;
      }

      if (v15 <= 115)
      {
        if (v15 == 80)
        {
          v18 = [v102 uniqueIdentifierForIndirectCommandBufferAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
          v47 = *(a1 + 32);
          v104 = *a6;
          v105 = *(a6 + 2);
          entry = find_entry(v47, &v104, 0x18uLL, 0);
          if (*entry)
          {
            v49 = *(*entry + 32);
            if (v49)
            {
              if (*(v49 + 24) == v18)
              {
                goto LABEL_83;
              }
            }
          }

          v50 = *(*(a1 + 8) + 56);
          *&v104 = v18;
          v51 = find_entry(v50, &v104, 8uLL, 0);
          if (!*v51)
          {
            goto LABEL_83;
          }

          v52 = *(*v51 + 32);
          if (!v52)
          {
            goto LABEL_83;
          }

          v53 = [v11 indirectCommandBufferForKey:*(v52 + 8)];
          v24 = DEVICEOBJECT(v53);

          [v101 setIndirectCommandBuffer:v24 atIndex:v16];
        }

        else
        {
          if (v15 != 115)
          {
            goto LABEL_83;
          }

          v18 = [v102 uniqueIdentifierForVisibleFunctionTableAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
          v33 = *(a1 + 32);
          v104 = *a6;
          v105 = *(a6 + 2);
          v34 = find_entry(v33, &v104, 0x18uLL, 0);
          if (*v34)
          {
            v35 = *(*v34 + 32);
            if (v35)
            {
              if (*(v35 + 24) == v18)
              {
                goto LABEL_83;
              }
            }
          }

          v36 = *(*(a1 + 8) + 64);
          *&v104 = v18;
          v37 = find_entry(v36, &v104, 8uLL, 0);
          if (!*v37)
          {
            goto LABEL_83;
          }

          v38 = *(*v37 + 32);
          if (!v38)
          {
            goto LABEL_83;
          }

          v39 = [v11 visibleFunctionTableForKey:*(v38 + 8)];
          v24 = DEVICEOBJECT(v39);

          [v101 setVisibleFunctionTable:v24 atIndex:v16];
        }

        goto LABEL_79;
      }

      switch(v15)
      {
        case 't':
          v18 = [v102 uniqueIdentifierForIntersectionFunctionTableAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
          v74 = *(a1 + 32);
          v104 = *a6;
          v105 = *(a6 + 2);
          v75 = find_entry(v74, &v104, 0x18uLL, 0);
          if (*v75)
          {
            v76 = *(*v75 + 32);
            if (v76)
            {
              if (*(v76 + 24) == v18)
              {
                break;
              }
            }
          }

          v77 = *(*(a1 + 8) + 72);
          *&v104 = v18;
          v78 = find_entry(v77, &v104, 8uLL, 0);
          if (!*v78)
          {
            break;
          }

          v79 = *(*v78 + 32);
          if (!v79)
          {
            break;
          }

          v80 = [v11 intersectionFunctionTableForKey:*(v79 + 8)];
          v24 = DEVICEOBJECT(v80);

          [v101 setIntersectionFunctionTable:v24 atIndex:v16];
          goto LABEL_79;
        case 'u':
          v25 = [v102 uniqueIdentifierForPrimitiveAccelerationStructureAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
LABEL_73:
          v18 = v25;
          v86 = *(a1 + 32);
          v104 = *a6;
          v105 = *(a6 + 2);
          v87 = find_entry(v86, &v104, 0x18uLL, 0);
          if (*v87)
          {
            v88 = *(*v87 + 32);
            if (v88)
            {
              if (*(v88 + 24) == v18)
              {
                break;
              }
            }
          }

          v89 = *(*(a1 + 8) + 80);
          *&v104 = v18;
          v90 = find_entry(v89, &v104, 8uLL, 0);
          if (!*v90)
          {
            break;
          }

          v91 = *(*v90 + 32);
          if (!v91)
          {
            break;
          }

          v92 = [v11 intersectionFunctionTableForKey:*(v91 + 8)];
          v24 = DEVICEOBJECT(v92);

          [v101 setAccelerationStructure:v24 atIndex:v16];
LABEL_79:
          v93 = [v24 uniqueIdentifier];
          if (v18 != v93)
          {
            v94 = v93;
            v95 = *(a1 + 32);
            v104 = *a6;
            v105 = *(a6 + 2);
            StoreArgumentIndexReencoding(v95, &v104, v94);
          }

          goto LABEL_82;
        case 'v':
          v25 = [v102 uniqueIdentifierForInstanceAccelerationStructureAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
          goto LABEL_73;
      }

LABEL_83:
      ++v13;
      v12 = *(a1 + 24);
      if (v13 >= *(v12 + 12))
      {
        goto LABEL_89;
      }
    }

    if (v15 <= 59)
    {
      if (v15 == 58)
      {
        v18 = [v102 uniqueIdentifierForTextureAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
        v40 = *(a1 + 32);
        v104 = *a6;
        v105 = *(a6 + 2);
        v41 = find_entry(v40, &v104, 0x18uLL, 0);
        if (*v41)
        {
          v42 = *(*v41 + 32);
          if (v42)
          {
            if (*(v42 + 24) == v18)
            {
              goto LABEL_83;
            }
          }
        }

        v43 = *(*(a1 + 8) + 8);
        *&v104 = v18;
        v44 = find_entry(v43, &v104, 8uLL, 0);
        if (!*v44)
        {
          goto LABEL_83;
        }

        v45 = *(*v44 + 32);
        if (!v45)
        {
          goto LABEL_83;
        }

        v46 = [v11 textureForKey:*(v45 + 8)];
        v24 = DEVICEOBJECT(v46);

        [v101 setTexture:v24 atIndex:v16];
      }

      else
      {
        if (v15 != 59)
        {
          goto LABEL_83;
        }

        v18 = [v102 uniqueIdentifierForSamplerAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
        v26 = *(a1 + 32);
        v104 = *a6;
        v105 = *(a6 + 2);
        v27 = find_entry(v26, &v104, 0x18uLL, 0);
        if (*v27)
        {
          v28 = *(*v27 + 32);
          if (v28)
          {
            if (*(v28 + 24) == v18)
            {
              goto LABEL_83;
            }
          }
        }

        v29 = *(*(a1 + 8) + 32);
        *&v104 = v18;
        v30 = find_entry(v29, &v104, 8uLL, 0);
        if (!*v30)
        {
          goto LABEL_83;
        }

        v31 = *(*v30 + 32);
        if (!v31)
        {
          goto LABEL_83;
        }

        v32 = [v11 samplerStateForKey:*(v31 + 8)];
        v24 = DEVICEOBJECT(v32);

        [v101 setSamplerState:v24 atIndex:v16];
      }

      goto LABEL_79;
    }

    if (v15 != 60)
    {
      if (v15 == 78)
      {
        v18 = [v102 uniqueIdentifierForRenderPipelineAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
        v81 = *(a1 + 32);
        v104 = *a6;
        v105 = *(a6 + 2);
        v82 = find_entry(v81, &v104, 0x18uLL, 0);
        if (*v82)
        {
          v83 = *(*v82 + 32);
          if (v83)
          {
            if (*(v83 + 24) == v18)
            {
              goto LABEL_83;
            }
          }
        }

        v84 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(*(*(a1 + 8) + 40), v18);
        if (!v84)
        {
          goto LABEL_83;
        }

        v85 = [v11 renderPipelineStateForKey:v84];
        v24 = DEVICEOBJECT(v85);

        [v101 setRenderPipelineState:v24 atIndex:v16];
      }

      else
      {
        if (v15 != 79)
        {
          goto LABEL_83;
        }

        if ((GT_SUPPORT_0 & 0x10) == 0)
        {
          goto LABEL_83;
        }

        v18 = [v102 uniqueIdentifierForComputePipelineAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
        v19 = *(a1 + 32);
        v104 = *a6;
        v105 = *(a6 + 2);
        v20 = find_entry(v19, &v104, 0x18uLL, 0);
        if (*v20)
        {
          v21 = *(*v20 + 32);
          if (v21)
          {
            if (*(v21 + 24) == v18)
            {
              goto LABEL_83;
            }
          }
        }

        v22 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(*(*(a1 + 8) + 48), v18);
        if (!v22)
        {
          goto LABEL_83;
        }

        v23 = [v11 computePipelineStateForKey:v22];
        v24 = DEVICEOBJECT(v23);

        [v101 setComputePipelineState:v24 atIndex:v16];
      }

      goto LABEL_79;
    }

    v54 = [v102 virtualAddressForBufferAtIndex:v16 inIndirectArgumentBuffer:v103 atOffset:a4];
    v55 = *(a1 + 32);
    v104 = *a6;
    v105 = *(a6 + 2);
    v56 = find_entry(v55, &v104, 0x18uLL, 0);
    if (*v56)
    {
      v57 = *(*v56 + 32);
      if (v57)
      {
        if (*(v57 + 24) == v54)
        {
          goto LABEL_83;
        }
      }
    }

    v58 = GTMTLGPUAddressResource_resourceForGPUAddress(*(**(a1 + 8) + 24), *(**(a1 + 8) + 12), v54);
    if (!v58)
    {
      goto LABEL_83;
    }

    v59 = v58[2];
    if (!v59)
    {
      goto LABEL_83;
    }

    v60 = *v58;
    v61 = v11;
    v62 = v54 - v60;
    v99 = v61;
    v63 = [v61 bufferForKey:v59];
    v64 = DEVICEOBJECT(v63);

    [v101 setBuffer:v64 offset:v62 atIndex:v16];
    v65 = v62 + [v64 gpuAddress];
    if (v65 != v54)
    {
      v66 = *(a1 + 32);
      v104 = *a6;
      v105 = *(a6 + 2);
      StoreArgumentIndexReencoding(v66, &v104, v65);
    }

    if (v17)
    {
      if ((GT_SUPPORT_0 & 0x2000) != 0)
      {
        *&v67 = v59;
        *(&v67 + 1) = v62;
        v98 = v67;
        v68 = apr_array_push(*(a1 + 16));
        *v68 = v98;
        v68[2] = v17;
        v69 = [v101 newArgumentEncoderForBufferAtIndex:v16];
        v70 = v68[3];
        v68[3] = v69;

        v71 = *(a1 + 16);
        if (*(v71 + 12) >= 2)
        {
          v72 = 0;
          v73 = 0;
          while (!DYMTLIABDecodingOp_isEqual(*(v71 + 24) + v72, v68))
          {
            ++v73;
            v71 = *(a1 + 16);
            v72 += 40;
            if (v73 >= *(v71 + 12) - 1)
            {
              goto LABEL_88;
            }
          }

          v96 = *(a1 + 16);
          if (v96)
          {
            v97 = *(v96 + 12);
            if (v97)
            {
              *(v96 + 12) = v97 - 1;
            }
          }
        }
      }
    }

LABEL_88:

    v11 = v99;
LABEL_82:
    a4 = v100;
    goto LABEL_83;
  }

LABEL_89:
}

void StoreArgumentIndexReencoding(apr_pool_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *find_entry(a1, a2, 0x18uLL, 0);
  if (!v6 || (v7 = *(v6 + 32)) == 0)
  {
    v7 = apr_palloc(*a1, 0x20uLL);
    v8 = *(a2 + 16);
    *v7 = *a2;
    v7[2] = v8;
    apr_hash_set(a1, v7, 24, v7);
  }

  v7[3] = a3;
}

uint64_t GTMTLArrayType_fillArgumentIndicesRequiresPatching(uint64_t result, uint64_t a2, uint64_t a3, apr_array_header_t *a4, unint64_t a5)
{
  v9 = result;
  v10 = *(result + 24);
  v11 = *(result + 20);
  v12 = *(result + 22);
  if (v10 == 1)
  {
    if (*(result + 20))
    {
      do
      {
        if (*(v9 + 24) == 1)
        {
          v14 = *(v9 + 8);
        }

        else
        {
          v14 = 0;
        }

        result = GTMTLStructType_fillArgumentIndicesRequiresPatching(v14, a2, a3, a4, a5);
        a2 += v12;
        a3 += *(v9 + 16);
        --v11;
      }

      while (v11);
    }
  }

  else if (v10 == 2)
  {
    if (*(result + 20))
    {
      do
      {
        if (*(v9 + 24) == 2)
        {
          v13 = *(v9 + 8);
        }

        else
        {
          v13 = 0;
        }

        result = GTMTLArrayType_fillArgumentIndicesRequiresPatching(v13, a2, a3, a4, a5);
        a2 += v12;
        a3 += *(v9 + 16);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    result = GTMTLDataType_requiresPatching(*(result + 24), a5);
    if (result)
    {
      if (v10 == 60 && (v15 = *(v9 + 8)) != 0)
      {
        result = GTMTLPointerType_requiresPatching(*(v9 + 8), a5);
        v16 = result ? v15 : 0;
      }

      else
      {
        v16 = 0;
      }

      for (; v11; --v11)
      {
        result = apr_array_push(a4);
        *result = v10;
        *(result + 8) = a2;
        *(result + 16) = a3;
        *(result + 24) = v16;
        a2 += v12;
        a3 += *(v9 + 16);
      }
    }
  }

  return result;
}