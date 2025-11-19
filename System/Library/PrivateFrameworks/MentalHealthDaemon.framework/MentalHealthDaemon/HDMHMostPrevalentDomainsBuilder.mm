@interface HDMHMostPrevalentDomainsBuilder
- (id).cxx_construct;
- (id)_winningSummaryForPleasant:(BOOL)a3;
- (void)_addStateOfMind:(id)a3 toMap:(void *)a4;
- (void)addStateOfMind:(id)a3;
@end

@implementation HDMHMostPrevalentDomainsBuilder

- (void)addStateOfMind:(id)a3
{
  v7 = a3;
  v4 = [v7 valenceClassification] - 1;
  if (v4 < 7 && ((0x77u >> v4) & 1) != 0)
  {
    v5 = qword_2589943E8[v4];
    v6 = qword_258994420[v4];
    ++*(&self->super.isa + v5);
    [(HDMHMostPrevalentDomainsBuilder *)self _addStateOfMind:v7 toMap:self + v6];
  }
}

- (void)_addStateOfMind:(id)a3 toMap:(void *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = [v16 endDate];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v16 domains];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        [v9 integerValue];
        if (HKStateOfMindDomainIsKnown())
        {
          v18 = [v9 integerValue];
          v23 = &v18;
          v10 = std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(a4, &v18)[3];
          v11 = v10;
          if (v10)
          {
            [v10 setCount:{objc_msgSend(v10, "count") + 1}];
            [v11 setMostRecentDate:v17];
          }

          else
          {
            v12 = [[_HDMHDomainCount alloc] initWithCount:1 mostRecentDate:v17];
            v18 = [v9 integerValue];
            v23 = &v18;
            v13 = std::__hash_table<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,_HDMHDomainCount * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,_HDMHDomainCount * {__strong}>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(a4, &v18);
            v14 = v13[3];
            v13[3] = v12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_winningSummaryForPleasant:(BOOL)a3
{
  v3 = a3;
  v5 = 48;
  if (a3)
  {
    v5 = 8;
  }

  std::unordered_map<long,_HDMHDomainCount * {__strong}>::unordered_map(v40, self + v5);
  if (v42)
  {
    v23 = self;
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
          v15 = [v10 mostRecentDate];
          v16 = [v15 compare:v31[5]];

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
    if (v3)
    {
      v18 = 88;
    }

    v19 = *(&v23->super.isa + v18);
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