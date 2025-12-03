@interface HDMHMostPrevalentDomainsBuilder
- (id).cxx_construct;
- (id)_winningSummaryForPleasant:(BOOL)pleasant;
- (void)_addStateOfMind:(id)mind toMap:(void *)map;
- (void)addStateOfMind:(id)mind;
@end

@implementation HDMHMostPrevalentDomainsBuilder

- (void)addStateOfMind:(id)mind
{
  mindCopy = mind;
  v4 = [mindCopy valenceClassification] - 1;
  if (v4 < 7 && ((0x77u >> v4) & 1) != 0)
  {
    v5 = qword_2589943E8[v4];
    v6 = qword_258994420[v4];
    ++*(&self->super.isa + v5);
    [(HDMHMostPrevalentDomainsBuilder *)self _addStateOfMind:mindCopy toMap:self + v6];
  }
}

- (void)_addStateOfMind:(id)mind toMap:(void *)map
{
  v25 = *MEMORY[0x277D85DE8];
  mindCopy = mind;
  endDate = [mindCopy endDate];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  domains = [mindCopy domains];
  v6 = [domains countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(domains);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        [v9 integerValue];
        if (HKStateOfMindDomainIsKnown())
        {
          integerValue = [v9 integerValue];
          v23 = &integerValue;
          v10 = std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(map, &integerValue)[3];
          v11 = v10;
          if (v10)
          {
            [v10 setCount:{objc_msgSend(v10, "count") + 1}];
            [v11 setMostRecentDate:endDate];
          }

          else
          {
            v12 = [[_HDMHDomainCount alloc] initWithCount:1 mostRecentDate:endDate];
            integerValue = [v9 integerValue];
            v23 = &integerValue;
            v13 = std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(map, &integerValue);
            v14 = v13[3];
            v13[3] = v12;
          }
        }
      }

      v6 = [domains countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_winningSummaryForPleasant:(BOOL)pleasant
{
  pleasantCopy = pleasant;
  v5 = 48;
  if (pleasant)
  {
    v5 = 8;
  }

  std::unordered_map<long,_HDMHDomainCount * {__strong}>::unordered_map(v40, self + v5);
  if (v42)
  {
    selfCopy = self;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0x8000000000000000;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__3;
    v34 = __Block_byref_object_dispose__3;
    v35 = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = v41; i; i = *i)
    {
      v8 = i[2];
      v9 = i[3];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__HDMHMostPrevalentDomainsBuilder__winningSummaryForPleasant___block_invoke;
      v24[3] = &unk_2798AAE80;
      v27 = &v36;
      v10 = v9;
      v25 = v10;
      v28 = &v30;
      v11 = v6;
      v26 = v11;
      v29 = v8;
      v12 = MEMORY[0x259C8FDA0](v24);
      v13 = [v10 count];
      if (v13 >= v37[3])
      {
        v14 = [v10 count];
        if (v14 <= v37[3])
        {
          mostRecentDate = [v10 mostRecentDate];
          v16 = [mostRecentDate compare:v31[5]];

          if (v16 == -1)
          {
            goto LABEL_11;
          }

          if (v16 != 1)
          {
            v17 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
            [v11 addObject:v17];

            goto LABEL_11;
          }
        }

        v12[2](v12);
      }

LABEL_11:
    }

    v18 = 96;
    if (pleasantCopy)
    {
      v18 = 88;
    }

    v19 = *(&selfCopy->super.isa + v18);
    v20 = objc_alloc(MEMORY[0x277D28080]);
    v21 = [v20 initWithDomains:v6 count:v37[3] totalSampleCount:v19];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v21 = 0;
  }

  std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::~__hash_table(v40);

  return v21;
}

void __62__HDMHMostPrevalentDomainsBuilder__winningSummaryForPleasant___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) count];
  v2 = [*(a1 + 32) mostRecentDate];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 40) removeAllObjects];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  [v5 addObject:?];
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end