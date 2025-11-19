void sub_257A91434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v31 + 168);

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a16);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a17);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a18);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v31);

  _Unwind_Resume(a1);
}

uint64_t DYDerivedCounterInfo::_dfs(void *a1, const void **a2, void *a3)
{
  if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, a2))
  {
    return 1;
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2))
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(a3, a2);
    v8 = v7[5];
    v9 = v7[6];
    while (v8 != v9)
    {
      if (std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(a3, v8))
      {
        if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1 + 5, v8) && (DYDerivedCounterInfo::_dfs(a1, v8, a3) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 10, v8);
      }

      v8 += 3;
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(a1, a2);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 5, a2);
    return 1;
  }

  return 0;
}

uint64_t DYDerivedCounterInfo::ProcessInfo(DYDerivedCounterInfo *this)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x5812000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = "";
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = __Block_byref_object_copy__46;
  v13 = __Block_byref_object_dispose__47;
  v14 = "";
  memset(v15, 0, sizeof(v15));
  v2 = *(this + 20);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZN20DYDerivedCounterInfo11ProcessInfoEv_block_invoke;
  v8[3] = &unk_27984EBA0;
  v8[5] = &v9;
  v8[6] = this;
  v8[4] = &v16;
  [v2 enumerateKeysAndObjectsUsingBlock:v8];
  v3 = v17[8];
  if (v3)
  {
    while (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 5, v3 + 2) || DYDerivedCounterInfo::_dfs(this, v3 + 2, v17 + 6))
    {
      v3 = *v3;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v6 = 0;
  }

  else
  {
LABEL_5:
    v4 = v10[6];
    v5 = v10[7];
    while (v4 != v5)
    {
      if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 10, v4))
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 15, v4);
      }

      v4 += 3;
    }

    v6 = 1;
  }

  _Block_object_dispose(&v9, 8);
  v24 = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  _Block_object_dispose(&v16, 8);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v22);
  return v6;
}

void sub_257A9185C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  *(v10 - 56) = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v10 - 56));
  _Block_object_dispose(va1, 8);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(v8 + 48);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__46(__n128 *a1, __n128 *a2)
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

void ___ZN20DYDerivedCounterInfo11ProcessInfoEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v21 = a1;
  v7 = *(a1 + 48);
  std::string::basic_string[abi:ne200100]<0>(&__p, [v5 UTF8String]);
  if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v7 + 168), &__p.__r_.__value_.__l.__data_))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((*(*(v21 + 32) + 8) + 48), &__p.__r_.__value_.__l.__data_);
      if (!v8)
      {
        v9 = *(*(v21 + 32) + 8);
        v26 = 0uLL;
        v27 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v11 = v26;
          v10 = v27;
        }

        else
        {
          v10 = 0;
          v28 = __p;
          v11 = 0uLL;
        }

        v29 = v11;
        v30 = v10;
        v27 = 0;
        v26 = 0uLL;
        v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::vector<std::string>>>((v9 + 48), &v28.__r_.__value_.__l.__data_);
        v32 = &v29;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v32 = &v26;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v32);
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = [v6 objectForKeyedSubscript:@"counters"];
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (v13)
      {
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            if (([v5 isEqualToString:v16] & 1) == 0)
            {
              v17 = v16;
              std::string::basic_string[abi:ne200100]<0>(&v28, [v16 UTF8String]);
              std::vector<std::string>::push_back[abi:ne200100]((v8 + 5), &v28);
              v18 = [v6 objectForKeyedSubscript:@"subtype"];
              v19 = v18;
              if (v18 && [v18 isEqualToString:@"Normalize"])
              {
                std::vector<std::string>::push_back[abi:ne200100](*(*(v21 + 40) + 8) + 48, &v28);
              }

              if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28.__r_.__value_.__l.__data_);
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v22 objects:v33 count:16];
        }

        while (v13);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_257A91BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char *a38)
{
  a38 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a38);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

id DYDerivedCounterInfo::RawCounterList(DYDerivedCounterInfo *this)
{
  v2 = objc_opt_new();
  for (i = *(this + 12); i; i = *i)
  {
    v4 = i + 2;
    if (*(i + 39) < 0)
    {
      v4 = *v4;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    [v2 addObject:v5];
  }

  return v2;
}

id DYDerivedCounterInfo::RawCountersToNormalizeSet(DYDerivedCounterInfo *this)
{
  v2 = objc_opt_new();
  for (i = *(this + 17); i; i = *i)
  {
    v4 = i + 2;
    if (*(i + 39) < 0)
    {
      v4 = *v4;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    [v2 addObject:v5];
  }

  return v2;
}

id DYDerivedCounterInfo::DerivedCounterList(DYDerivedCounterInfo *this)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 addObject:v3];

  v4 = objc_opt_new();
  [v2 addObject:v4];

  v5 = objc_opt_new();
  [v2 addObject:v5];

  v6 = objc_opt_new();
  [v2 addObject:v6];

  v7 = *(this + 20);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZNK20DYDerivedCounterInfo18DerivedCounterListEv_block_invoke;
  v10[3] = &unk_27984EBC8;
  v8 = v2;
  v11 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  return v8;
}

void ___ZNK20DYDerivedCounterInfo18DerivedCounterListEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = [v5 objectForKeyedSubscript:@"description"];
    v8 = [v5 objectForKeyedSubscript:@"type"];
    v9 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [v9 addObject:v19];

    v10 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v11 = v10;
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = @"Unknown";
    }

    [v10 addObject:v12];

    v13 = [*(a1 + 32) objectAtIndexedSubscript:2];
    v14 = v13;
    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = &stru_2868EDC68;
    }

    [v13 addObject:v15];

    v16 = [*(a1 + 32) objectAtIndexedSubscript:3];
    v17 = v16;
    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = @"Value";
    }

    [v16 addObject:v18];
  }
}

id DYDerivedCounterInfo::BottleneckFunctions(id *this)
{
  v1 = [this[26] objectForKeyedSubscript:*MEMORY[0x277D0B040]];
  v2 = [v1 mutableCopy];

  return v2;
}

NSDictionary *DYDerivedCounterInfo::AppendDerivedCounterInfoToPayload(DYDerivedCounterInfo *this, NSDictionary *a2)
{
  v3 = a2;
  if (DYDerivedCounterInfo::ProcessInfo(this))
  {
    v4 = [(NSDictionary *)v3 mutableCopy];
    v5 = DYDerivedCounterInfo::RawCounterList(this);
    [(NSDictionary *)v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D0B480]];

    [(NSDictionary *)v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0B388]];
    [(NSDictionary *)v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0B4D8]];
    v6 = MEMORY[0x277CCABB0];
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v6 numberWithBool:{objc_msgSend(v7, "BOOLForKey:", @"GPUDebugger.ShaderProfiler.SplitEncoderData"}];
    [(NSDictionary *)v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0B4E0]];

    v9 = DYDerivedCounterInfo::RawCountersToNormalizeSet(this);
    [(NSDictionary *)v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0B390]];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void DYDerivedCounterInfo::MergeDictionaries(DYDerivedCounterInfo *this, NSMutableDictionary *a2, NSMutableDictionary *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = this;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a2;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(DYDerivedCounterInfo *)v4 objectForKey:v9, v14];
        v11 = [(NSMutableDictionary *)v5 objectForKey:v9];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v10 addObjectsFromArray:v11];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                DYDerivedCounterInfo::MergeDictionaries(v10, v11, v12);
              }
            }
          }
        }

        else
        {
          [(DYDerivedCounterInfo *)v4 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

NSString *DYDerivedCounterInfo::MergeDerivedCounterDataFromHost(DYDerivedCounterInfo *this, NSString *a2, NSString *a3, NSDictionary *a4)
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", a2, this];
  v8 = [v7 stringByStandardizingPath];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8 isDirectory:0];

  if (v10)
  {
    v41 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/MetalStatistics%@", v8, @"-counters.plist"];
    v40 = v11;
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/MetalStatistics%@", v8, @"-analysis.js"];
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/MetalStatistics%@", v8, @"-derived.js"];
    v12 = *MEMORY[0x277D0B138];
    v13 = [(NSString *)v6 objectForKeyedSubscript:*MEMORY[0x277D0B138]];
    v39 = v13;
    v14 = objc_opt_new();
    if (v13)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v13, 2uLL);

      v14 = DeepCopy;
    }

    v16 = *MEMORY[0x277D0B140];
    v43 = v14;
    v42 = [(NSString *)v6 objectForKeyedSubscript:*MEMORY[0x277D0B140]];
    v37 = *MEMORY[0x277D0B110];
    v38 = [(NSString *)v6 objectForKeyedSubscript:?];
    v17 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v11];
    if (v17)
    {
      v48 = 0;
      v18 = [MEMORY[0x277CCAC58] propertyListWithData:v17 options:1 format:0 error:&v48];
      v20 = v48;
      if (!v20 && v18)
      {
        DYDerivedCounterInfo::MergeDictionaries(v43, v18, v19);
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CBEA60] arrayWithObject:@"MTLStat_nSec"];
        [v21 setObject:v22 forKeyedSubscript:@"counters"];

        [v21 setObject:@"GPU Time" forKeyedSubscript:@"name"];
        [v21 setObject:@"GPU Time in nSec" forKeyedSubscript:@"description"];
        [v21 setObject:@"Count" forKeyedSubscript:@"type"];
        v23 = [(DYDerivedCounterInfo *)v43 objectForKeyedSubscript:*MEMORY[0x277D0B148]];
        [v23 setObject:v21 forKeyedSubscript:*MEMORY[0x277D0B1C8]];

        [v41 setObject:v43 forKeyedSubscript:v12];
      }
    }

    else
    {
      v20 = 0;
    }

    v47 = v20;
    v25 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v45 encoding:4 error:&v47];
    v26 = v47;

    v24 = v41;
    if (!v26 && v25)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"\nfunction GPUToolsGPUTime()\n{\n   return MTLStat_nSec\n}\n"];
      v29 = v28;
      v30 = &stru_2868EDC68;
      if (v42)
      {
        v30 = v42;
      }

      v31 = [v27 stringWithFormat:@"%@\n%@\n%@", v30, v25, v28];
      [v41 setObject:v31 forKeyedSubscript:v16];
    }

    v46 = v26;
    v32 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v44 encoding:4 error:&v46];
    v33 = v46;

    if (!v33 && v32)
    {
      v34 = &stru_2868EDC68;
      if (v38)
      {
        v34 = v38;
      }

      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v34, v32];
      [v41 setObject:v35 forKeyedSubscript:v37];
    }
  }

  else
  {
    v24 = v6;
  }

  return v24;
}

NSString *DYDerivedCounterInfo::AppendDerivedCounterDataFromHost(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = objc_opt_new();
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (a2 != 1 && [(DYDerivedCounterInfo *)v5 length])
  {
    v8 = DYDerivedCounterInfo::MergeDerivedCounterDataFromHost(v5, &cfstr_LibraryDevelop_0.isa, v6, v7);

    v6 = v8;
  }

LABEL_8:

  return v6;
}

void DYDerivedCounterInfo::_ProcessKickCounters(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, unint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  v75 = *MEMORY[0x277D85DE8];
  v67 = a1;
  v63 = a4;
  v16 = a7;
  v59 = a8;
  v53 = a11;
  v55 = a12;
  v65 = v16;
  v17 = [v16 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v64 = isKindOfClass;
  [v16 objectAtIndexedSubscript:{a2, v53}];
  if (isKindOfClass)
    v19 = {;
    v20 = [v19 objectAtIndexedSubscript:0];
  }

  else
    v20 = {;
    v19 = v20;
  }

  v62 = [v20 unsignedLongLongValue];
  if (isKindOfClass)
  {
  }

  if (v62 < 4)
  {
    v56 = [v16 count];
    if (v63 && [v63 count] > a5)
    {
      v21 = [v63 objectAtIndexedSubscript:?];
      v22 = [v21 count];
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      a6 %= v23;
    }

    v24 = 0;
    v61 = 0;
    while (1)
    {
      if (v24 >= [v65 count])
      {
        goto LABEL_46;
      }

      v66 = [v65 objectAtIndexedSubscript:v24];
      if (v64)
      {
        v68 = [v66 objectAtIndexedSubscript:0];
      }

      else
      {
        v68 = v66;
      }

      if (v63 && v24 == a3 && [v63 count] > a5)
      {
        v25 = [v63 objectAtIndexedSubscript:?];
        v26 = [v25 objectAtIndexedSubscript:a6];

        v68 = v26;
      }

      v27 = MEMORY[0x277CCABB0];
      v28 = [v68 unsignedLongLongValue];
      v29 = [v67 objectAtIndexedSubscript:v24 + *(a9 + 12)];
      v30 = [v27 numberWithUnsignedLongLong:{objc_msgSend(v29, "unsignedLongLongValue") + v28}];
      [v67 setObject:v30 atIndexedSubscript:v24 + *(a9 + 12)];

      [v67 setObject:v68 atIndexedSubscript:v24 + *(a9 + 4 * v62)];
      if (v64 & 1) != 0 && ((*(*a10 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24))
      {
        break;
      }

LABEL_45:

      ++v24;
    }

    v31 = [v68 unsignedLongLongValue];
    v32 = [v66 objectAtIndexedSubscript:1];
    v33 = [v32 unsignedLongLongValue];

    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v35 = v31 * 100.0 / v34;
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    [v67 setObject:v36 atIndexedSubscript:v61 + (*(a9 + 4 * v62) + v56)];

    v37 = [v59 count];
    if (a6 || v37 < 2)
    {
      if ([v59 count] != 1)
      {
LABEL_44:
        ++v61;
        goto LABEL_45;
      }

      v51 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
      [v67 setObject:v51 atIndexedSubscript:v61 + (*(a9 + 12) + v56)];
LABEL_43:

      goto LABEL_44;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v59;
    v38 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v38)
    {
      v39 = 0;
      v40 = 0;
      v41 = *v71;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v71 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v70 + 1) + 8 * i);
          v44 = [v43 objectAtIndexedSubscript:v24];
          v45 = [v44 objectAtIndexedSubscript:0];
          v46 = [v45 unsignedLongLongValue];

          v47 = [v43 objectAtIndexedSubscript:v24];
          v48 = [v47 objectAtIndexedSubscript:1];
          v49 = [v48 unsignedLongLongValue];

          v40 += v46;
          v39 += v49;
        }

        v38 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v38);

      v50 = v40 * 100.0;
      if (v39)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v50 = 0.0;
    }

    v39 = 1;
LABEL_42:
    v51 = [MEMORY[0x277CCABB0] numberWithDouble:v50 / v39];
    [v67 setObject:v51 atIndexedSubscript:v61 + (*(a9 + 12) + v56)];
    goto LABEL_43;
  }

LABEL_46:

  v52 = *MEMORY[0x277D85DE8];
}

id DYDerivedCounterInfo::_ProcessSplitEncoderDerivedCounterDataFromDevice(void *a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v50 = a2;
  v49 = v5;
  v51 = [v5 objectForKeyedSubscript:*MEMORY[0x277D0B4E0]];
  if (!v51)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v48 = objc_opt_new();
  v6 = *MEMORY[0x277D0B0D0];
  v7 = [v51 objectForKeyedSubscript:*MEMORY[0x277D0B0D0]];
  v8 = v7;
  if (v7)
  {
    [v7 count];
    v46 = v6;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v8 = v8;
    v9 = [v8 countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v76;
LABEL_5:
      v12 = 0;
      v13 = -v10;
      v10 += v9;
      while (1)
      {
        if (*v76 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v75 + 1) + 8 * v12) isEqualToString:@"MTLStatDataMaster"])
        {
          break;
        }

        ++v12;
        --v13;
        if (v9 == v12)
        {
          v9 = [v8 countByEnumeratingWithState:&v75 objects:v83 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      if (v13 == 1)
      {
        goto LABEL_14;
      }

      v17 = [v8 arrayByAddingObjectsFromArray:v50];

      v19 = v55 = [v17 count];
      v83[0] = 0;
      v83[1] = v55;
      v83[2] = 2 * v55;
      v83[3] = 3 * v55;
      v36 = *MEMORY[0x277D0B030];
      v40 = [v51 objectForKeyedSubscript:?];
      v41 = objc_opt_new();
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v20 = v40;
      v39 = v20;
      v37 = [v20 countByEnumeratingWithState:&v71 objects:v82 count:16];
      if (v37)
      {
        v21 = -v13;
        v38 = *v72;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v72 != v38)
            {
              objc_enumerationMutation(v20);
            }

            v22 = *(*(&v71 + 1) + 8 * i);
            v45 = objc_opt_new();
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            obj = v22;
            v23 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
            if (v23)
            {
              v44 = *v68;
              do
              {
                v47 = 0;
                v53 = v23;
                do
                {
                  if (*v68 != v44)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = *(*(&v67 + 1) + 8 * v47);
                  v56 = objc_opt_new();
                  v65 = 0u;
                  v66 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v52 = v24;
                  v25 = [v52 countByEnumeratingWithState:&v63 objects:v80 count:16];
                  if (v25)
                  {
                    v54 = *v64;
                    do
                    {
                      v26 = 0;
                      v57 = v25;
                      do
                      {
                        if (*v64 != v54)
                        {
                          objc_enumerationMutation(v52);
                        }

                        v58 = v26;
                        v28 = v27 = *(*(&v63 + 1) + 8 * v26);
                        v61 = 0u;
                        v62 = 0u;
                        v59 = 0u;
                        v60 = 0u;
                        v29 = v27;
                        v30 = [v29 countByEnumeratingWithState:&v59 objects:v79 count:16];
                        if (v30)
                        {
                          v31 = *v60;
                          do
                          {
                            for (j = 0; j != v30; ++j)
                            {
                              if (*v60 != v31)
                              {
                                objc_enumerationMutation(v29);
                              }

                              DYDerivedCounterInfo::_ProcessKickCounters(v28, v21, 0xFFFFFFFFLL, 0, 0, 0, *(*(&v59 + 1) + 8 * j), v29, v83, a3, v17, v19);
                            }

                            v30 = [v29 countByEnumeratingWithState:&v59 objects:v79 count:16];
                          }

                          while (v30);
                        }

                        v23 = v53;
                        [v56 addObject:v28];

                        v26 = v58 + 1;
                      }

                      while (v58 + 1 != v57);
                      v25 = [v52 countByEnumeratingWithState:&v63 objects:v80 count:16];
                    }

                    while (v25);
                  }

                  [v45 addObject:v56];
                  ++v47;
                }

                while (v47 != v23);
                v23 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
              }

              while (v23);
            }

            [v41 addObject:v45];
            v20 = v39;
          }

          v37 = [v39 countByEnumeratingWithState:&v71 objects:v82 count:16];
        }

        while (v37);
      }

      [v48 setObject:v19 forKeyedSubscript:v46];
      [v48 setObject:v41 forKeyedSubscript:v36];
      v33 = *MEMORY[0x277D0B0C8];
      v34 = [v51 objectForKeyedSubscript:*MEMORY[0x277D0B0C8]];
      v35 = [v34 copy];
      [v48 setObject:v35 forKeyedSubscript:v33];

      v14 = v48;
      v8 = v17;
      goto LABEL_15;
    }

LABEL_11:
  }

LABEL_14:
  v14 = 0;
LABEL_15:

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id anonymous namespace::AddSuffixToCounters(_anonymous_namespace_ *this, NSArray *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = objc_opt_new();
  v4 = 0;
  v17[0] = @"_vtx";
  v17[1] = @"_frg";
  v17[2] = @"_cmp";
  v17[3] = &stru_2868EDC68;
  do
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v2;
    v6 = [(_anonymous_namespace_ *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) stringByAppendingString:v17[v4]];
          [v3 addObject:v9];
        }

        v6 = [(_anonymous_namespace_ *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    ++v4;
  }

  while (v4 != 4);
  for (j = 3; j != -1; --j)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

id anonymous namespace::CreateCounterSpaceForSuffixes(_anonymous_namespace_ *this)
{
  v1 = (4 * this);
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:v1];
  if (v1)
  {
    do
    {
      [v2 addObject:&unk_2868F0DC8];
      --v1;
    }

    while (v1);
  }

  return v2;
}

id DYDerivedCounterInfo::ProcessDerivedCounterDataFromDevice(DYDerivedCounterInfo *this, NSDictionary *a2, NSDictionary *a3, NSArray *a4)
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = this;
  v72 = a2;
  v86 = a3;
  if (v6)
  {
    v69 = objc_opt_new();
    v65 = *MEMORY[0x277D0B0D0];
    v7 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:?];
    v84 = [(NSDictionary *)v72 objectForKeyedSubscript:*MEMORY[0x277D0B390]];
    if (v7)
    {
      [v7 count];
      v83 = objc_opt_new();
      if (v84)
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v97 objects:v109 count:16];
        if (v9)
        {
          v10 = *v98;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v98 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v97 + 1) + 8 * i);
              if ([v84 containsObject:v12])
              {
                v13 = [v12 stringByAppendingString:@"_norm"];
                [v83 addObject:v13];
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v97 objects:v109 count:16];
          }

          while (v9);
        }
      }

      memset(__p, 0, sizeof(__p));
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v92 objects:v108 count:16];
      if (v15)
      {
        v16 = *v93;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v93 != v16)
            {
              objc_enumerationMutation(v14);
            }

            LOBYTE(v101) = [v84 containsObject:*(*(&v92 + 1) + 8 * j)];
            std::vector<BOOL>::push_back(__p, &v101);
          }

          v15 = [v14 countByEnumeratingWithState:&v92 objects:v108 count:16];
        }

        while (v15);
      }

      v18 = [MEMORY[0x277CBEB98] setWithObjects:{@"MTLStatDataMaster", @"MTLStat_nSec", 0}];
      v19 = v14;
      v20 = objc_opt_new();
      v101 = MEMORY[0x277D85DD0];
      v102 = 3221225472;
      v103 = ___ZN12_GLOBAL__N_128CounterIndicesFromCounterSetEP5NSSetP7NSArray_block_invoke;
      v104 = &unk_27984EBF0;
      v21 = v18;
      v105 = v21;
      v22 = v20;
      v106 = v22;
      [v19 enumerateObjectsUsingBlock:&v101];
      v23 = v106;
      v71 = v22;

      v24 = [v71 objectForKeyedSubscript:@"MTLStatDataMaster"];

      v27 = [v71 objectForKeyedSubscript:@"MTLStat_nSec"];

      v7 = 0;
      if (v26 == -1 || v29 == -1)
      {
        v30 = v19;
      }

      else
      {
        v30 = [v19 arrayByAddingObjectsFromArray:v83];

        v85 = v74 = [v30 count];
        LODWORD(v101) = 0;
        HIDWORD(v101) = v74;
        LODWORD(v102) = 2 * v74;
        HIDWORD(v102) = 3 * v74;
        v64 = *MEMORY[0x277D0B030];
        v87 = v30;
        v68 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:?];
        v66 = objc_opt_new();
        v70 = [(NSDictionary *)v72 objectForKeyedSubscript:@"perCommandBufferEncoderCount"];
        v76 = [(NSDictionary *)v72 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
        v77 = [(NSDictionary *)v72 objectForKeyedSubscript:@"perEncoderKickCount"];
        v32 = 0;
        v33 = 0;
        v67 = 0;
        v34 = v26;
        v35 = v29;
        while (1)
        {
          v36 = v32;
          if ([v70 count] <= v32)
          {
            [v69 setObject:v85 forKeyedSubscript:v65];
            [v69 setObject:v66 forKeyedSubscript:v64];
            v53 = *MEMORY[0x277D0B0C8];
            v54 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:*MEMORY[0x277D0B0C8]];
            v55 = [v54 copy];
            [v69 setObject:v55 forKeyedSubscript:v53];

            v56 = *MEMORY[0x277D0B038];
            v57 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:*MEMORY[0x277D0B038]];
            LOBYTE(v54) = v57 == 0;

            if ((v54 & 1) == 0)
            {
              v58 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:v56];
              v59 = [v58 copy];
              [v69 setObject:v59 forKeyedSubscript:v56];

              v60 = *MEMORY[0x277D0B220];
              v61 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:*MEMORY[0x277D0B220]];
              LOBYTE(v58) = v61 == 0;

              if ((v58 & 1) == 0)
              {
                v62 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:v60];
                v63 = [v62 copy];
                [v69 setObject:v63 forKeyedSubscript:v60];
              }
            }

            v50 = DYDerivedCounterInfo::_ProcessSplitEncoderDerivedCounterDataFromDevice(v6, v83, __p);
            if (v50)
            {
              [v69 setObject:v50 forKeyedSubscript:*MEMORY[0x277D0B4E0]];
            }

            v7 = v69;
LABEL_46:

            goto LABEL_47;
          }

          v37 = [v70 objectAtIndexedSubscript:v32];
          v38 = [v37 unsignedIntValue];

          if (v38)
          {
            break;
          }

LABEL_42:
          v32 = v36 + 1;
        }

        if ([v68 count] > v67)
        {
          v80 = [v68 objectAtIndexedSubscript:?];
          v79 = objc_opt_new();
          v81 = 0;
          v78 = v33 + v38;
          v73 = 1;
          v75 = v36;
          while (1)
          {
            v39 = v33;
            v40 = [v77 objectAtIndexedSubscript:v33];
            v41 = [v40 unsignedIntValue];

            v42 = [v76 objectAtIndexedSubscript:v39];
            LODWORD(v40) = [v42 unsignedIntValue];

            if (v40 || v41 != 1)
            {
              if ([v80 count] <= v81)
              {

                v7 = 0;
                v50 = v80;
                goto LABEL_46;
              }

              v43 = [v80 objectAtIndexedSubscript:?];
              v73 = 0;
              ++v81;
            }

            else
            {
              v43 = objc_opt_new();
            }

            v44 = v82 = objc_opt_new();
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v45 = v43;
            v46 = [v45 countByEnumeratingWithState:&v88 objects:v107 count:16];
            if (v46)
            {
              v47 = 0;
              v48 = *v89;
              do
              {
                for (k = 0; k != v46; ++k)
                {
                  if (*v89 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  DYDerivedCounterInfo::_ProcessKickCounters(v44, v34, v35, v86, v39, v47++, *(*(&v88 + 1) + 8 * k), v45, &v101, __p, v87, v85);
                }

                v46 = [v45 countByEnumeratingWithState:&v88 objects:v107 count:16];
              }

              while (v46);
            }

            v30 = v87;
            v36 = v75;
            [v82 addObject:v44];
            [v79 addObject:v82];

            v33 = v39 + 1;
            if (v39 + 1 == v78)
            {
              [v66 addObject:v79];

              v67 += (v73 & 1) == 0;
              v33 = v78;
              goto LABEL_42;
            }
          }
        }

        v7 = 0;
LABEL_47:
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_257A9463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, void *a36, void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t anonymous namespace::CounterIndex(_anonymous_namespace_ *this, NSNumber *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(_anonymous_namespace_ *)v2 unsignedIntValue];
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

NSDictionary *DYDerivedCounterInfo::WriteToJSONPerDerivedCounterData(DYDerivedCounterInfo *this, NSDictionary *a2, NSString *a3, NSString *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = this;
  v43 = a2;
  v45 = a3;
  v44 = v6;
  v7 = [(DYDerivedCounterInfo *)v6 objectForKeyedSubscript:*MEMORY[0x277D0B130]];
  v8 = v7;
  v42 = v7;
  if (v7)
  {
    v39 = [v7 objectForKeyedSubscript:*MEMORY[0x277D0B0D0]];
    v40 = [v8 objectForKeyedSubscript:*MEMORY[0x277D0B030]];
    v41 = objc_opt_new();
    v9 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = v39;
    v11 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v11)
    {
      v12 = *v64;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
          v15 = objc_opt_new();
          [v9 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v11);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v40;
    v49 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v49)
    {
      v47 = *v60;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v59 + 1) + 8 * j);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v18)
          {
            v19 = 0;
            v20 = *v56;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v56 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v55 + 1) + 8 * k);
                v23 = [v10 objectAtIndexedSubscript:v19];
                v24 = [v9 objectForKeyedSubscript:v23];
                [v24 addObject:v22];

                ++v19;
              }

              v18 = [v17 countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v18);
          }
        }

        v49 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v49);
    }

    if (v45)
    {
      [v41 setObject:v45 forKeyedSubscript:@"MetalPluginName"];
    }

    v25 = [(DYDerivedCounterInfo *)v44 objectForKeyedSubscript:@"perEncoderIndexDrawCallCount"];
    v50 = v25;
    if (v25)
    {
      [v41 setObject:v25 forKeyedSubscript:@"perEncoderIndexDrawCallCount"];
    }

    [v41 setObject:v9 forKeyedSubscript:@"PerCounterDrawCallData"];
    v54 = 0;
    v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v41 options:1 error:&v54];
    v52 = v54;
    if (v26)
    {
      v38 = v26;
      v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v26 encoding:4];
      v27 = v43;
      v28 = [(NSDictionary *)v27 pathExtension];
      v29 = [v28 isEqualToString:@"json"];

      if ((v29 & 1) == 0)
      {
        v30 = 0;
        for (m = v27; ; m = v34)
        {
          v32 = [MEMORY[0x277CCAA00] defaultManager];
          v33 = [v32 fileExistsAtPath:m];

          if (!v33)
          {
            break;
          }

          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu.json", v27, v30];

          ++v30;
        }

        v27 = m;
      }

      v53 = v52;
      [v48 writeToFile:v27 atomically:0 encoding:4 error:&v53];
      v35 = v53;

      v52 = v35;
      v26 = v38;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v27;
}

id DYDerivedCounterInfo::ComputeDerivedCountersFromData(DYDerivedCounterInfo *this, NSDictionary *a2, NSDictionary *a3)
{
  v163 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v102 = a3;
  v89 = v5;
  v6 = objc_opt_new();
  v7 = *MEMORY[0x277D0B030];
  v90 = v6;
  v96 = [(NSDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277D0B030]];
  v8 = *MEMORY[0x277D0B0D0];
  v9 = [(NSDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277D0B0D0]];
  if (!v9)
  {
    v56 = 0;
    goto LABEL_94;
  }

  v79 = v8;
  v80 = v7;
  v152 = 0;
  v151 = 0;
  v150 = &v151;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v81 = v9;
  obj = v9;
  if ([obj countByEnumeratingWithState:&v146 objects:v162 count:16])
  {
    *v147;
    *v147;
    v119 = [**(&v146 + 1) UTF8String];
    __src = 0;
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__emplace_unique_impl<char const*,unsigned long>();
  }

  v144 = 0;
  __src = 0;
  v145 = 0;
  std::vector<unsigned long>::reserve(&__src, v152);
  v10 = v102;
  v101 = objc_opt_new();
  v11 = v150;
  if (v150 != &v151)
  {
    do
    {
      v12 = v11 + 4;
      if (*(v11 + 55) < 0)
      {
        v12 = *v12;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      [v101 addObject:v13];
      v14 = v144;
      if (v144 >= v145)
      {
        v16 = __src;
        v17 = v144 - __src;
        v18 = (v144 - __src) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v20 = v145 - __src;
        if ((v145 - __src) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v21);
        }

        *(8 * v18) = v11[7];
        v15 = (8 * v18 + 8);
        memcpy(0, v16, v17);
        v22 = __src;
        __src = 0;
        v144 = v15;
        v145 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v144 = v11[7];
        v15 = v14 + 1;
      }

      v144 = v15;

      v23 = v11[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v11[2];
          v25 = *v24 == v11;
          v11 = v24;
        }

        while (!v25);
      }

      v11 = v24;
      v10 = v102;
    }

    while (v24 != &v151);
  }

  v93 = DYDerivedCounterInfo::DerivedCounterList(this);
  v91 = [(NSDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x277D0B140]];
  v82 = DYDerivedCounterInfo::BottleneckFunctions(this);
  v26 = *MEMORY[0x277D0B110];
  v83 = [(NSDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x277D0B110]];
  v78 = *MEMORY[0x277D0B120];
  v92 = [(NSDictionary *)v10 objectForKeyedSubscript:?];
  v99 = objc_opt_new();
  v100 = objc_opt_new();
  v77 = v26;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v27 = v96;
  v28 = [v27 countByEnumeratingWithState:&v139 objects:v161 count:16];
  if (v28)
  {
    v29 = *v140;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v140 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v139 + 1) + 8 * i);
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v135 objects:v160 count:16];
        if (v33)
        {
          v34 = *v136;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v136 != v34)
              {
                objc_enumerationMutation(v32);
              }

              [*(*(&v135 + 1) + 8 * j) count];
            }

            v33 = [v32 countByEnumeratingWithState:&v135 objects:v160 count:16];
          }

          while (v33);
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v139 objects:v161 count:16];
    }

    while (v28);
  }

  v36 = objc_opt_new();
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v87 = v27;
  v37 = [v87 countByEnumeratingWithState:&v131 objects:v159 count:16];
  if (v37)
  {
    v94 = *v132;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v132 != v94)
        {
          objc_enumerationMutation(v87);
        }

        v38 = *(*(&v131 + 1) + 8 * k);
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v103 = v38;
        v39 = [v103 countByEnumeratingWithState:&v127 objects:v158 count:16];
        if (v39)
        {
          v40 = *v128;
          do
          {
            for (m = 0; m != v39; ++m)
            {
              if (*v128 != v40)
              {
                objc_enumerationMutation(v103);
              }

              v42 = *(*(&v127 + 1) + 8 * m);
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v43 = v42;
              v44 = [v43 countByEnumeratingWithState:&v123 objects:v157 count:16];
              if (v44)
              {
                v45 = *v124;
                do
                {
                  for (n = 0; n != v44; ++n)
                  {
                    if (*v124 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    [v36 addObject:*(*(&v123 + 1) + 8 * n)];
                  }

                  v44 = [v43 countByEnumeratingWithState:&v123 objects:v157 count:16];
                }

                while (v44);
              }
            }

            v39 = [v103 countByEnumeratingWithState:&v127 objects:v158 count:16];
          }

          while (v39);
        }
      }

      v37 = [v87 countByEnumeratingWithState:&v131 objects:v159 count:16];
    }

    while (v37);
  }

  v47 = objc_opt_new();
  v98 = v47;
  v48 = objc_opt_new();
  v49 = std::thread::hardware_concurrency();
  if (v49 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v49 >> 1;
  }

  v86 = dispatch_get_global_queue(0, 0);
  v88 = dispatch_group_create();
  v51 = [v36 count];
  if (v50 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v50;
  }

  v53 = v52;
  v95 = v50;
  v85 = v51 / v50;
  do
  {
    v54 = objc_opt_new();
    [v47 addObject:v54];

    v55 = objc_opt_new();
    [v48 addObject:v55];

    --v53;
  }

  while (v53);
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v104 = objc_opt_new();
  if ((v120[3] & 1) == 0)
  {
    v57 = 0;
    v58 = 1;
    v84 = v52;
    while (1)
    {
      v59 = objc_alloc_init(MEMORY[0x277D0AF60]);
      [v104 addObject:v59];
      if (([v59 evaluateScriptCode:v91] & 1) == 0)
      {
        v56 = 0;
        goto LABEL_90;
      }

      v60 = [v93 objectAtIndexedSubscript:0];
      v61 = objc_opt_new();
      v62 = [v59 prepareCounterNames:obj softwareCounterNames:v61 derivedCounterNames:v60];

      if ((v62 & 1) == 0)
      {
        break;
      }

      [v59 exportCounterValues:v92];
      v63 = v57 + 1;
      if (v95 == v58)
      {
        v64 = [v36 count];
        v65 = v85;
      }

      else
      {
        v65 = v85;
        v64 = v63 * v85;
      }

      v66 = v57 * v65;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = ___ZN20DYDerivedCounterInfo30ComputeDerivedCountersFromDataEP12NSDictionaryS1__block_invoke;
      block[3] = &unk_2868ED858;
      v67 = v104;
      v116 = v58 - 1;
      v117 = v66;
      v107 = v67;
      v112 = &v119;
      v118 = v64;
      v108 = v36;
      v68 = v60;
      v109 = v68;
      v110 = v98;
      v114 = 0;
      v115 = 0;
      __p = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v144, (v144 - __src) >> 3);
      v111 = v48;
      dispatch_group_async(v88, v86, block);

      v52 = v84;
      v47 = v98;
      if (__p)
      {
        v114 = __p;
        operator delete(__p);
      }

      if ((v120[3] & 1) == 0)
      {
        v57 = v63;
        if (v58++ < v95)
        {
          continue;
        }
      }

      goto LABEL_69;
    }

    v56 = 0;
    goto LABEL_89;
  }

LABEL_69:
  dispatch_group_wait(v88, 0xFFFFFFFFFFFFFFFFLL);
  if ((v120[3] & 1) == 0)
  {
    for (ii = 0; ii != v52; ++ii)
    {
      v71 = [v47 objectAtIndexedSubscript:ii];
      [v99 addObjectsFromArray:v71];

      v72 = [v48 objectAtIndexedSubscript:ii];
      [v100 addObjectsFromArray:v72];
    }

    v73 = [v93 objectAtIndexedSubscript:0];
    v59 = [v73 arrayByAddingObjectsFromArray:v101];

    v155[0] = v80;
    v155[1] = v79;
    v156[0] = v100;
    v156[1] = v59;
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:2];
    [v90 setObject:v60 forKeyedSubscript:*MEMORY[0x277D0B130]];
    [v90 setObject:v92 forKeyedSubscript:v78];
    v153[0] = v80;
    v153[1] = v79;
    v154[0] = v99;
    v154[1] = v93;
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:2];
    [v90 setObject:v74 forKeyedSubscript:*MEMORY[0x277D0B128]];

    [v90 setObject:v83 forKeyedSubscript:v77];
    [v90 setObject:v82 forKeyedSubscript:*MEMORY[0x277D0B118]];
    v56 = v90;
LABEL_89:

LABEL_90:
    goto LABEL_91;
  }

  v56 = 0;
LABEL_91:

  _Block_object_dispose(&v119, 8);
  if (__src)
  {
    v144 = __src;
    operator delete(__src);
  }

  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(&v150, v151);
  v9 = v81;
LABEL_94:

  v75 = *MEMORY[0x277D85DE8];

  return v56;
}

void sub_257A95BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, void *a30, void *a31, void *a32, void *a33, uint64_t a34, void *a35)
{
  v37 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v37;
    operator delete(v37);
  }

  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(&STACK[0x310], STACK[0x318]);

  _Unwind_Resume(a1);
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void ___ZN20DYDerivedCounterInfo30ComputeDerivedCountersFromDataEP12NSDictionaryS1__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 104)];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 108);
    while (v3 < *(a1 + 112))
    {
      v4 = [*(a1 + 40) objectAtIndexedSubscript:v3];
      v5 = objc_opt_new();
      [v2 prepareCounterValues:v4 softwareCounterValues:v5];

      v6 = [v2 evaluateDerivedCounters];
      v7 = [v6 mutableCopy];

      if (!v7 || (v8 = [v7 count], v8 != objc_msgSend(*(a1 + 48), "count")))
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;

        break;
      }

      v9 = [*(a1 + 56) objectAtIndexedSubscript:*(a1 + 104)];
      [v9 addObject:v7];

      std::vector<NSNumber * {__strong}>::vector[abi:ne200100](v20, [v4 count]);
      v10 = *(a1 + 80);
      if (*(a1 + 88) != v10)
      {
        v11 = 0;
        do
        {
          v12 = [v4 objectAtIndexedSubscript:*(v10 + 8 * v11)];
          v13 = *(v20[0] + 8 * v11);
          *(v20[0] + 8 * v11) = v12;

          ++v11;
          v10 = *(a1 + 80);
        }

        while (v11 < (*(a1 + 88) - v10) >> 3);
      }

      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v15 = v20[0];
      v16 = v20[1];
      while (v15 != v16)
      {
        v17 = *v15;
        [v14 addObject:v17];

        ++v15;
      }

      v18 = [v7 arrayByAddingObjectsFromArray:v14];
      v19 = [*(a1 + 64) objectAtIndexedSubscript:*(a1 + 104)];
      [v19 addObject:v18];

      v21 = v20;
      std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);

      ++v3;
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        break;
      }
    }
  }
}

uint64_t __copy_helper_block_ea8_80c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = a1 + 80;
  *(v2 + 16) = 0;
  return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v2, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
}

void __destroy_helper_block_ea8_80c39_ZTSNSt3__16vectorImNS_9allocatorImEEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

uint64_t std::pair<std::string,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZN12_GLOBAL__N_128CounterIndicesFromCounterSetEP5NSSetP7NSArray_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
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

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_257A96EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A96FB8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (result)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::vector<std::string>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_257A975E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A97884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
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

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_257A97BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A97C78(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::__value_type<std::string,unsigned long>>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::vector<NSNumber * {__strong}>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<NSNumber * {__strong}>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<NSNumber * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NSNumber * {__strong}>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NSNumber * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<NSNumber * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLSamplePosition>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A981D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A98780(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_257A993F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

const char *GPUTools::MTL::GetMTLAccelerationStructureCommandSubstreamSelectMethodAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLAccelerationStructureCommandSubstreamSelectMethodRandom";
  if (a2)
  {
    v3 = "Random";
    v4 = "Greedy";
  }

  else
  {
    v4 = "MTLAccelerationStructureCommandSubstreamSelectMethodGreedy";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLAccelerationStructureCommandSubstreamSelectMethodEmpirical";
  if (a2)
  {
    v5 = "Empirical";
  }

  v6 = "MTLAccelerationStructureCommandSubstreamSelectMethodRoundRobin";
  if (a2)
  {
    v6 = "RoundRobin";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLAccelerationStructureInstanceDescriptorTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLAccelerationStructureInstanceDescriptorTypeMotion";
  if (a2)
  {
    v3 = "Motion";
  }

  v4 = "MTLAccelerationStructureInstanceDescriptorTypeIndirect";
  if (a2)
  {
    v4 = "Indirect";
  }

  v5 = "MTLAccelerationStructureInstanceDescriptorTypeIndirectMotion";
  if (a2)
  {
    v5 = "IndirectMotion";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLAccelerationStructureInstanceDescriptorTypeDefault";
  if (a2)
  {
    v6 = "Default";
  }

  v7 = "MTLAccelerationStructureInstanceDescriptorTypeUserID";
  if (a2)
  {
    v7 = "UserID";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLAccelerationStructureInstanceOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLAccelerationStructureInstanceOptionTriangleFrontFacingWindingCounterClockwise";
  if (a2)
  {
    v3 = "TriangleFrontFacingWindingCounterClockwise";
  }

  v4 = "MTLAccelerationStructureInstanceOptionOpaque";
  if (a2)
  {
    v4 = "Opaque";
  }

  v5 = "MTLAccelerationStructureInstanceOptionNonOpaque";
  if (a2)
  {
    v5 = "NonOpaque";
  }

  if (this != 8)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLAccelerationStructureInstanceOptionNone";
  if (a2)
  {
    v6 = "None";
  }

  v7 = "MTLAccelerationStructureInstanceOptionDisableTriangleCulling";
  if (a2)
  {
    v7 = "DisableTriangleCulling";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLAccelerationStructureRefitOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLAccelerationStructureRefitOptionVertexData";
  if (a2)
  {
    v3 = "VertexData";
  }

  v4 = "MTLAccelerationStructureRefitOptionPerPrimitiveData";
  if (a2)
  {
    v4 = "PerPrimitiveData";
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLAccelerationStructureUsageAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLAccelerationStructureUsagePreferFastBuild";
  if (a2)
  {
    v3 = "PreferFastBuild";
  }

  v4 = "MTLAccelerationStructureUsagePrivateDeterministicBuild";
  if (a2)
  {
    v4 = "PrivateDeterministicBuild";
  }

  v5 = "MTLAccelerationStructureUsageExtendedLimits";
  if (a2)
  {
    v5 = "ExtendedLimits";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 8)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLAccelerationStructureUsageNone";
  if (a2)
  {
    v6 = "None";
  }

  v7 = "MTLAccelerationStructureUsageRefit";
  if (a2)
  {
    v7 = "Refit";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLAllocationTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLAllocationTypeUnknown";
  if (a2)
  {
    v3 = "Unknown";
  }

  v4 = "MTLAllocationTypeResource";
  if (a2)
  {
    v4 = "Resource";
  }

  v5 = "Heap";
  if (!a2)
  {
    v5 = "MTLAllocationTypeHeap";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLArgumentBuffersTierAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLArgumentBuffersTier2";
  if (a2)
  {
    v3 = "2";
  }

  v4 = "MTLArgumentBuffersTier1";
  if (a2)
  {
    v4 = "1";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLArgumentImageBlockKindAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLArgumentImageBlockKindPrivateImplicit";
  if (a2)
  {
    v3 = "PrivateImplicit";
  }

  v4 = "MTLArgumentImageBlockKindPrivateExplicit";
  if (a2)
  {
    v4 = "PrivateExplicit";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLArgumentTypeAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  switch(this)
  {
    case 0uLL:
      v4 = "MTLArgumentTypeBuffer";
      v5 = "Buffer";
      goto LABEL_25;
    case 1uLL:
      v4 = "MTLArgumentTypeThreadgroupMemory";
      v5 = "ThreadgroupMemory";
      goto LABEL_25;
    case 2uLL:
      v4 = "MTLArgumentTypeTexture";
      v5 = "Texture";
      goto LABEL_25;
    case 3uLL:
      v4 = "MTLArgumentTypeSampler";
      v5 = "Sampler";
      goto LABEL_25;
    case 4uLL:
      v4 = "MTLArgumentTypePrivateIndirectConstant";
      v5 = "PrivateIndirectConstant";
      goto LABEL_25;
    case 0xFuLL:
      v4 = "MTLArgumentTypePrivateBuiltIn";
      v5 = "PrivateBuiltIn";
      goto LABEL_25;
    case 0x10uLL:
      v4 = "MTLArgumentTypeImageblockData";
      v5 = "ImageblockData";
      goto LABEL_25;
    case 0x11uLL:
      v4 = "MTLArgumentTypeImageblock";
      v5 = "Imageblock";
      goto LABEL_25;
    case 0x12uLL:
      v4 = "MTLArgumentTypePrivateValue";
      v5 = "PrivateValue";
      goto LABEL_25;
    case 0x13uLL:
      v4 = "MTLArgumentTypePrivateRenderPipeline";
      v5 = "PrivateRenderPipeline";
      goto LABEL_25;
    case 0x14uLL:
      v4 = "MTLArgumentTypePrivateComputePipeline";
      v5 = "PrivateComputePipeline";
      goto LABEL_25;
    case 0x15uLL:
      v4 = "MTLArgumentTypePrivateIndirectCommandBuffer";
      v5 = "PrivateIndirectCommandBuffer";
      goto LABEL_25;
    case 0x16uLL:
      v4 = "MTLArgumentTypePrivateByVal";
      v5 = "PrivateByVal";
      goto LABEL_25;
    case 0x17uLL:
      v4 = "MTLArgumentTypePrivateFunctionPointer";
      v5 = "PrivateFunctionPointer";
      goto LABEL_25;
    case 0x18uLL:
      v4 = "MTLArgumentTypeVisibleFunctionTable";
      v5 = "VisibleFunctionTable";
      goto LABEL_25;
    case 0x19uLL:
      v4 = "MTLArgumentTypePrimitiveAccelerationStructure";
      v5 = "PrimitiveAccelerationStructure";
      goto LABEL_25;
    case 0x1AuLL:
      v4 = "MTLArgumentTypeInstanceAccelerationStructure";
      v5 = "InstanceAccelerationStructure";
      goto LABEL_25;
    case 0x1BuLL:
      v4 = "MTLArgumentTypeIntersectionFunctionTable";
      v5 = "IntersectionFunctionTable";
      goto LABEL_25;
    case 0x1CuLL:
      v4 = "MTLArgumentTypePrivatePointer";
      v5 = "PrivatePointer";
      goto LABEL_25;
    case 0x1DuLL:
      v4 = "MTLArgumentTypePrivateStruct";
      v5 = "PrivateStruct";
      goto LABEL_25;
    case 0x22uLL:
      v4 = "MTLArgumentTypePrivateObjectPayload";
      v5 = "PrivateObjectPayload";
      goto LABEL_25;
    case 0x23uLL:
      v4 = "MTLArgumentTypePrivateMesh";
      v5 = "PrivateMesh";
      goto LABEL_25;
    case 0x24uLL:
      v4 = "MTLArgumentTypePrivateDepthStencilState";
      v5 = "PrivateDepthStencilState";
LABEL_25:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLAttributeFormatAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLAttributeFormatInvalid";
      v3 = "Invalid";
      goto LABEL_58;
    case 1uLL:
      v2 = "MTLAttributeFormatUChar2";
      v3 = "UChar2";
      goto LABEL_58;
    case 2uLL:
      v2 = "MTLAttributeFormatUChar3";
      v3 = "UChar3";
      goto LABEL_58;
    case 3uLL:
      v2 = "MTLAttributeFormatUChar4";
      v3 = "UChar4";
      goto LABEL_58;
    case 4uLL:
      v2 = "MTLAttributeFormatChar2";
      v3 = "Char2";
      goto LABEL_58;
    case 5uLL:
      v2 = "MTLAttributeFormatChar3";
      v3 = "Char3";
      goto LABEL_58;
    case 6uLL:
      v2 = "MTLAttributeFormatChar4";
      v3 = "Char4";
      goto LABEL_58;
    case 7uLL:
      v2 = "MTLAttributeFormatUChar2Normalized";
      v3 = "UChar2Normalized";
      goto LABEL_58;
    case 8uLL:
      v2 = "MTLAttributeFormatUChar3Normalized";
      v3 = "UChar3Normalized";
      goto LABEL_58;
    case 9uLL:
      v2 = "MTLAttributeFormatUChar4Normalized";
      v3 = "UChar4Normalized";
      goto LABEL_58;
    case 0xAuLL:
      v2 = "MTLAttributeFormatChar2Normalized";
      v3 = "Char2Normalized";
      goto LABEL_58;
    case 0xBuLL:
      v2 = "MTLAttributeFormatChar3Normalized";
      v3 = "Char3Normalized";
      goto LABEL_58;
    case 0xCuLL:
      v2 = "MTLAttributeFormatChar4Normalized";
      v3 = "Char4Normalized";
      goto LABEL_58;
    case 0xDuLL:
      v2 = "MTLAttributeFormatUShort2";
      v3 = "UShort2";
      goto LABEL_58;
    case 0xEuLL:
      v2 = "MTLAttributeFormatUShort3";
      v3 = "UShort3";
      goto LABEL_58;
    case 0xFuLL:
      v2 = "MTLAttributeFormatUShort4";
      v3 = "UShort4";
      goto LABEL_58;
    case 0x10uLL:
      v2 = "MTLAttributeFormatShort2";
      v3 = "Short2";
      goto LABEL_58;
    case 0x11uLL:
      v2 = "MTLAttributeFormatShort3";
      v3 = "Short3";
      goto LABEL_58;
    case 0x12uLL:
      v2 = "MTLAttributeFormatShort4";
      v3 = "Short4";
      goto LABEL_58;
    case 0x13uLL:
      v2 = "MTLAttributeFormatUShort2Normalized";
      v3 = "UShort2Normalized";
      goto LABEL_58;
    case 0x14uLL:
      v2 = "MTLAttributeFormatUShort3Normalized";
      v3 = "UShort3Normalized";
      goto LABEL_58;
    case 0x15uLL:
      v2 = "MTLAttributeFormatUShort4Normalized";
      v3 = "UShort4Normalized";
      goto LABEL_58;
    case 0x16uLL:
      v2 = "MTLAttributeFormatShort2Normalized";
      v3 = "Short2Normalized";
      goto LABEL_58;
    case 0x17uLL:
      v2 = "MTLAttributeFormatShort3Normalized";
      v3 = "Short3Normalized";
      goto LABEL_58;
    case 0x18uLL:
      v2 = "MTLAttributeFormatShort4Normalized";
      v3 = "Short4Normalized";
      goto LABEL_58;
    case 0x19uLL:
      v2 = "MTLAttributeFormatHalf2";
      v3 = "Half2";
      goto LABEL_58;
    case 0x1AuLL:
      v2 = "MTLAttributeFormatHalf3";
      v3 = "Half3";
      goto LABEL_58;
    case 0x1BuLL:
      v2 = "MTLAttributeFormatHalf4";
      v3 = "Half4";
      goto LABEL_58;
    case 0x1CuLL:
      v2 = "MTLAttributeFormatFloat";
      v3 = "Float";
      goto LABEL_58;
    case 0x1DuLL:
      v2 = "MTLAttributeFormatFloat2";
      v3 = "Float2";
      goto LABEL_58;
    case 0x1EuLL:
      v2 = "MTLAttributeFormatFloat3";
      v3 = "Float3";
      goto LABEL_58;
    case 0x1FuLL:
      v2 = "MTLAttributeFormatFloat4";
      v3 = "Float4";
      goto LABEL_58;
    case 0x20uLL:
      v2 = "MTLAttributeFormatInt";
      v3 = "Int";
      goto LABEL_58;
    case 0x21uLL:
      v2 = "MTLAttributeFormatInt2";
      v3 = "Int2";
      goto LABEL_58;
    case 0x22uLL:
      v2 = "MTLAttributeFormatInt3";
      v3 = "Int3";
      goto LABEL_58;
    case 0x23uLL:
      v2 = "MTLAttributeFormatInt4";
      v3 = "Int4";
      goto LABEL_58;
    case 0x24uLL:
      v2 = "MTLAttributeFormatUInt";
      v3 = "UInt";
      goto LABEL_58;
    case 0x25uLL:
      v2 = "MTLAttributeFormatUInt2";
      v3 = "UInt2";
      goto LABEL_58;
    case 0x26uLL:
      v2 = "MTLAttributeFormatUInt3";
      v3 = "UInt3";
      goto LABEL_58;
    case 0x27uLL:
      v2 = "MTLAttributeFormatUInt4";
      v3 = "UInt4";
      goto LABEL_58;
    case 0x28uLL:
      v2 = "MTLAttributeFormatInt1010102Normalized";
      v3 = "Int1010102Normalized";
      goto LABEL_58;
    case 0x29uLL:
      v2 = "MTLAttributeFormatUInt1010102Normalized";
      v3 = "UInt1010102Normalized";
      goto LABEL_58;
    case 0x2AuLL:
      v2 = "MTLAttributeFormatUChar4Normalized_BGRA";
      v3 = "UChar4Normalized_BGRA";
      goto LABEL_58;
    case 0x2BuLL:
      v2 = "MTLAttributeFormatUInt_VertexID";
      v3 = "UInt_VertexID";
      goto LABEL_58;
    case 0x2CuLL:
      v2 = "MTLAttributeFormatUInt_InstanceID";
      v3 = "UInt_InstanceID";
      goto LABEL_58;
    case 0x2DuLL:
      v2 = "MTLAttributeFormatUChar";
      v3 = "UChar";
      goto LABEL_58;
    case 0x2EuLL:
      v2 = "MTLAttributeFormatChar";
      v3 = "Char";
      goto LABEL_58;
    case 0x2FuLL:
      v2 = "MTLAttributeFormatUCharNormalized";
      v3 = "UCharNormalized";
      goto LABEL_58;
    case 0x30uLL:
      v2 = "MTLAttributeFormatCharNormalized";
      v3 = "CharNormalized";
      goto LABEL_58;
    case 0x31uLL:
      v2 = "MTLAttributeFormatUShort";
      v3 = "UShort";
      goto LABEL_58;
    case 0x32uLL:
      v2 = "MTLAttributeFormatShort";
      v3 = "Short";
      goto LABEL_58;
    case 0x33uLL:
      v2 = "MTLAttributeFormatUShortNormalized";
      v3 = "UShortNormalized";
      goto LABEL_58;
    case 0x34uLL:
      v2 = "MTLAttributeFormatShortNormalized";
      v3 = "ShortNormalized";
      goto LABEL_58;
    case 0x35uLL:
      v2 = "MTLAttributeFormatHalf";
      v3 = "Half";
      goto LABEL_58;
    case 0x36uLL:
      v2 = "MTLAttributeFormatFloatRG11B10";
      v3 = "FloatRG11B10";
      goto LABEL_58;
    case 0x37uLL:
      v2 = "MTLAttributeFormatFloatRGB9E5";
      v3 = "FloatRGB9E5";
LABEL_58:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLBarrierScopeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLBarrierScopeRenderTargets";
  if (a2)
  {
    v3 = "RenderTargets";
  }

  v4 = "MTLBarrierScopeTextures";
  if (a2)
  {
    v4 = "Textures";
  }

  v5 = "Buffers";
  if (!a2)
  {
    v5 = "MTLBarrierScopeBuffers";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this == 4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLBinaryArchiveErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLBinaryArchiveErrorUnexpectedElement";
  if (a2)
  {
    v3 = "UnexpectedElement";
  }

  v4 = "MTLBinaryArchiveErrorInternalError";
  if (a2)
  {
    v4 = "InternalError";
  }

  v5 = "MTLBinaryArchiveErrorCompilationFailure";
  if (a2)
  {
    v5 = "CompilationFailure";
  }

  if (this != 3)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLBinaryArchiveErrorNone";
  if (a2)
  {
    v6 = "None";
  }

  v7 = "MTLBinaryArchiveErrorInvalidFile";
  if (a2)
  {
    v7 = "InvalidFile";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLBinaryArchiveSerializationOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 15)
  {
    v3 = "MTLBinaryArchiveSerializationSpecializedFunctionsAspectIfAvailable";
    if (a2)
    {
      v3 = "SpecializedFunctionsAspectIfAvailable";
    }

    v8 = "MTLBinaryArchiveSerializationSpecializedFunctionsAspectAlways";
    if (a2)
    {
      v8 = "SpecializedFunctionsAspectAlways";
    }

    if (this != 128)
    {
      v8 = "Unknown";
    }

    if (this != 64)
    {
      v3 = v8;
    }

    v9 = "MTLBinaryArchiveSerializationDescriptorAspectIfAvailable";
    if (a2)
    {
      v9 = "DescriptorAspectIfAvailable";
    }

    v10 = "MTLBinaryArchiveSerializationDescriptorAspectAlways";
    if (a2)
    {
      v10 = "DescriptorAspectAlways";
    }

    if (this == 32)
    {
      v2 = v10;
    }

    if (this == 16)
    {
      v2 = v9;
    }

    v7 = this <= 63;
  }

  else
  {
    v3 = "MTLBinaryArchiveSerializationDeviceAspectIfAvailable";
    if (a2)
    {
      v3 = "DeviceAspectIfAvailable";
    }

    v4 = "MTLBinaryArchiveSerializationDeviceAspectAlways";
    if (a2)
    {
      v4 = "DeviceAspectAlways";
    }

    if (this != 8)
    {
      v4 = "Unknown";
    }

    if (this != 4)
    {
      v3 = v4;
    }

    v5 = "MTLBinaryArchiveSerializationAtomic";
    if (a2)
    {
      v5 = "Atomic";
    }

    v6 = "MTLBinaryArchiveSerializationChecksum";
    if (a2)
    {
      v6 = "Checksum";
    }

    if (this == 2)
    {
      v2 = v6;
    }

    if (this == 1)
    {
      v2 = v5;
    }

    v7 = this <= 3;
  }

  if (v7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLBinaryArchiveStorageOptionsAsString(GPUTools::MTL *this, int a2)
{
  if (this <= 7)
  {
    if (this == 1)
    {
      v3 = "MTLBinaryArchiveStoreDescriptors";
      v4 = "Descriptors";
    }

    else if (this == 2)
    {
      v3 = "MTLBinaryArchiveStoreFunctions";
      v4 = "Functions";
    }

    else
    {
      if (this != 4)
      {
        return "Unknown";
      }

      v3 = "MTLBinaryArchiveStoreAIR";
      v4 = "AIR";
    }

    goto LABEL_18;
  }

  if (this <= 31)
  {
    if (this != 8)
    {
      if (this == 16)
      {
        return "MTLBinaryArchiveLoadToRecompile";
      }

      return "Unknown";
    }

    v3 = "MTLBinaryArchiveSupportAIRNT";
    v4 = "SupportAIRNT";
LABEL_18:
    if (a2)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  if (this != 32)
  {
    if (this == 64)
    {
      return "MTLBinaryArchiveRecompileTarget";
    }

    return "Unknown";
  }

  return "MTLBinaryArchiveSkipAIRValidation";
}

const char *GPUTools::MTL::GetMTLBindingAccessAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLBindingAccessWriteOnly";
  if (a2)
  {
    v3 = "WriteOnly";
  }

  v4 = "MTLBindingAccessReadWrite";
  if (a2)
  {
    v4 = "ReadWrite";
  }

  v5 = "ReadOnly";
  if (!a2)
  {
    v5 = "MTLBindingAccessReadOnly";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLBindingTypeAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  switch(this)
  {
    case 0uLL:
      v4 = "MTLBindingTypeBuffer";
      v5 = "Buffer";
      goto LABEL_25;
    case 1uLL:
      v4 = "MTLBindingTypeThreadgroupMemory";
      v5 = "ThreadgroupMemory";
      goto LABEL_25;
    case 2uLL:
      v4 = "MTLBindingTypeTexture";
      v5 = "Texture";
      goto LABEL_25;
    case 3uLL:
      v4 = "MTLBindingTypeSampler";
      v5 = "Sampler";
      goto LABEL_25;
    case 4uLL:
      v4 = "MTLArgumentTypePrivateIndirectConstant";
      v5 = "PrivateIndirectConstant";
      goto LABEL_25;
    case 0xFuLL:
      v4 = "MTLArgumentTypePrivateBuiltIn";
      v5 = "PrivateBuiltIn";
      goto LABEL_25;
    case 0x10uLL:
      v4 = "MTLBindingTypeImageblockData";
      v5 = "ImageblockData";
      goto LABEL_25;
    case 0x11uLL:
      v4 = "MTLBindingTypeImageblock";
      v5 = "Imageblock";
      goto LABEL_25;
    case 0x12uLL:
      v4 = "MTLArgumentTypePrivateValue";
      v5 = "PrivateValue";
      goto LABEL_25;
    case 0x13uLL:
      v4 = "MTLArgumentTypePrivateRenderPipeline";
      v5 = "PrivateRenderPipeline";
      goto LABEL_25;
    case 0x14uLL:
      v4 = "MTLArgumentTypePrivateComputePipeline";
      v5 = "PrivateComputePipeline";
      goto LABEL_25;
    case 0x15uLL:
      v4 = "MTLArgumentTypePrivateIndirectCommandBuffer";
      v5 = "PrivateIndirectCommandBuffer";
      goto LABEL_25;
    case 0x16uLL:
      v4 = "MTLArgumentTypePrivateByVal";
      v5 = "PrivateByVal";
      goto LABEL_25;
    case 0x17uLL:
      v4 = "MTLArgumentTypePrivateFunctionPointer";
      v5 = "PrivateFunctionPointer";
      goto LABEL_25;
    case 0x18uLL:
      v4 = "MTLBindingTypeVisibleFunctionTable";
      v5 = "VisibleFunctionTable";
      goto LABEL_25;
    case 0x19uLL:
      v4 = "MTLBindingTypePrimitiveAccelerationStructure";
      v5 = "PrimitiveAccelerationStructure";
      goto LABEL_25;
    case 0x1AuLL:
      v4 = "MTLBindingTypeInstanceAccelerationStructure";
      v5 = "InstanceAccelerationStructure";
      goto LABEL_25;
    case 0x1BuLL:
      v4 = "MTLBindingTypeIntersectionFunctionTable";
      v5 = "IntersectionFunctionTable";
      goto LABEL_25;
    case 0x1CuLL:
      v4 = "MTLArgumentTypePrivatePointer";
      v5 = "PrivatePointer";
      goto LABEL_25;
    case 0x1DuLL:
      v4 = "MTLArgumentTypePrivateStruct";
      v5 = "PrivateStruct";
      goto LABEL_25;
    case 0x22uLL:
      v4 = "MTLBindingTypeObjectPayload";
      v5 = "ObjectPayload";
      goto LABEL_25;
    case 0x23uLL:
      v4 = "MTLArgumentTypePrivateMesh";
      v5 = "PrivateMesh";
      goto LABEL_25;
    case 0x24uLL:
      v4 = "MTLArgumentTypePrivateDepthStencilState";
      v5 = "PrivateDepthStencilState";
LABEL_25:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLBlendFactorAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLBlendFactorZero";
      v3 = "Zero";
      goto LABEL_21;
    case 1uLL:
      v2 = "MTLBlendFactorOne";
      v3 = "One";
      goto LABEL_21;
    case 2uLL:
      v2 = "MTLBlendFactorSourceColor";
      v3 = "SourceColor";
      goto LABEL_21;
    case 3uLL:
      v2 = "MTLBlendFactorOneMinusSourceColor";
      v3 = "OneMinusSourceColor";
      goto LABEL_21;
    case 4uLL:
      v2 = "MTLBlendFactorSourceAlpha";
      v3 = "SourceAlpha";
      goto LABEL_21;
    case 5uLL:
      v2 = "MTLBlendFactorOneMinusSourceAlpha";
      v3 = "OneMinusSourceAlpha";
      goto LABEL_21;
    case 6uLL:
      v2 = "MTLBlendFactorDestinationColor";
      v3 = "DestinationColor";
      goto LABEL_21;
    case 7uLL:
      v2 = "MTLBlendFactorOneMinusDestinationColor";
      v3 = "OneMinusDestinationColor";
      goto LABEL_21;
    case 8uLL:
      v2 = "MTLBlendFactorDestinationAlpha";
      v3 = "DestinationAlpha";
      goto LABEL_21;
    case 9uLL:
      v2 = "MTLBlendFactorOneMinusDestinationAlpha";
      v3 = "OneMinusDestinationAlpha";
      goto LABEL_21;
    case 0xAuLL:
      v2 = "MTLBlendFactorSourceAlphaSaturated";
      v3 = "SourceAlphaSaturated";
      goto LABEL_21;
    case 0xBuLL:
      v2 = "MTLBlendFactorBlendColor";
      v3 = "BlendColor";
      goto LABEL_21;
    case 0xCuLL:
      v2 = "MTLBlendFactorOneMinusBlendColor";
      v3 = "OneMinusBlendColor";
      goto LABEL_21;
    case 0xDuLL:
      v2 = "MTLBlendFactorBlendAlpha";
      v3 = "BlendAlpha";
      goto LABEL_21;
    case 0xEuLL:
      v2 = "MTLBlendFactorOneMinusBlendAlpha";
      v3 = "OneMinusBlendAlpha";
      goto LABEL_21;
    case 0xFuLL:
      v2 = "MTLBlendFactorSource1Color";
      v3 = "Source1Color";
      goto LABEL_21;
    case 0x10uLL:
      v2 = "MTLBlendFactorOneMinusSource1Color";
      v3 = "OneMinusSource1Color";
      goto LABEL_21;
    case 0x11uLL:
      v2 = "MTLBlendFactorSource1Alpha";
      v3 = "Source1Alpha";
      goto LABEL_21;
    case 0x12uLL:
      v2 = "MTLBlendFactorOneMinusSource1Alpha";
      v3 = "OneMinusSource1Alpha";
LABEL_21:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLBlendOperationAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLBlendOperationReverseSubtract";
  if (a2)
  {
    v3 = "ReverseSubtract";
  }

  v4 = "MTLBlendOperationMin";
  if (a2)
  {
    v4 = "Min";
  }

  v5 = "MTLBlendOperationMax";
  if (a2)
  {
    v5 = "Max";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLBlendOperationAdd";
  if (a2)
  {
    v6 = "Add";
  }

  v7 = "MTLBlendOperationSubtract";
  if (a2)
  {
    v7 = "Subtract";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLBlitOptionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 3)
  {
    v3 = "MTLBlitOptionRowLinearPVRTC";
    if (a2)
    {
      v3 = "RowLinearPVRTC";
    }

    v7 = "MTLBlitOptionOpenGLClient";
    if (a2)
    {
      v7 = "OpenGLClient";
    }

    v8 = "MTLBlitOptionToolsClient";
    if (a2)
    {
      v8 = "ToolsClient";
    }

    if (this == 0x40000000)
    {
      v2 = v8;
    }

    if (this == 0x20000000)
    {
      v2 = v7;
    }

    v6 = this == 4;
  }

  else
  {
    v3 = "MTLBlitOptionNone";
    if (a2)
    {
      v3 = "None";
    }

    v4 = "MTLBlitOptionDepthFromDepthStencil";
    if (a2)
    {
      v4 = "DepthFromDepthStencil";
    }

    v5 = "MTLBlitOptionStencilFromDepthStencil";
    if (a2)
    {
      v5 = "StencilFromDepthStencil";
    }

    if (this == 2)
    {
      v2 = v5;
    }

    if (this == 1)
    {
      v2 = v4;
    }

    v6 = this == 0;
  }

  if (v6)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLBufferRobustnessSupportAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLBufferRobustnessSupportNilCheckedAccess";
  if (a2)
  {
    v3 = "NilCheckedAccess";
    v4 = "InvalidAccess";
  }

  else
  {
    v4 = "MTLBufferRobustnessSupportInvalidAccess";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLBufferRobustnessSupportNotSupported";
  if (a2)
  {
    v5 = "NotSupported";
  }

  v6 = "MTLBufferRobustnessSupportNilBinding";
  if (a2)
  {
    v6 = "NilBinding";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLBuiltInArgumentTypeAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLBuiltInArgumentInvalid";
      v3 = "Invalid";
      goto LABEL_27;
    case 1uLL:
      v2 = "MTLBuiltInArgumentVertexID";
      v3 = "VertexID";
      goto LABEL_27;
    case 2uLL:
      v2 = "MTLBuiltInArgumentInstanceID";
      v3 = "InstanceID";
      goto LABEL_27;
    case 3uLL:
      v2 = "MTLBuiltInArgumentBaseVertex";
      v3 = "BaseVertex";
      goto LABEL_27;
    case 4uLL:
      v2 = "MTLBuiltInArgumentBaseInstance";
      v3 = "BaseInstance";
      goto LABEL_27;
    case 5uLL:
      v2 = "MTLBuiltInArgumentThreadPositionInGrid";
      v3 = "ThreadPositionInGrid";
      goto LABEL_27;
    case 6uLL:
      v2 = "MTLBuiltInArgumentThreadsPerGrid";
      v3 = "ThreadsPerGrid";
      goto LABEL_27;
    case 7uLL:
      v2 = "MTLBuiltInArgumentThreadPositionInThreadgroup";
      v3 = "ThreadPositionInThreadgroup";
      goto LABEL_27;
    case 8uLL:
      v2 = "MTLBuiltInArgumentThreadIndexInThreadgroup";
      v3 = "ThreadIndexInThreadgroup";
      goto LABEL_27;
    case 9uLL:
      v2 = "MTLBuiltInArgumentThreadsPerThreadgroup";
      v3 = "ThreadsPerThreadgroup";
      goto LABEL_27;
    case 0xAuLL:
      v2 = "MTLBuiltInArgumentThreadgroupPositionInGrid";
      v3 = "ThreadgroupPositionInGrid";
      goto LABEL_27;
    case 0xBuLL:
      v2 = "MTLBuiltInArgumentThreadgroupsPerGrid";
      v3 = "ThreadgroupsPerGrid";
      goto LABEL_27;
    case 0xCuLL:
      v2 = "MTLBuiltInArgumentThreadExecutionWidth";
      v3 = "ThreadExecutionWidth";
      goto LABEL_27;
    case 0xDuLL:
      v2 = "MTLBuiltInArgumentPatchID";
      v3 = "PatchID";
      goto LABEL_27;
    case 0xEuLL:
      v2 = "MTLBuiltInArgumentPositionInPatch";
      v3 = "PositionInPatch";
      goto LABEL_27;
    case 0xFuLL:
      v2 = "MTLBuiltInArgumentStageInGridOrigin";
      v3 = "StageInGridOrigin";
      goto LABEL_27;
    case 0x10uLL:
      v2 = "MTLBuiltInArgumentStageInGridSize";
      v3 = "StageInGridSize";
      goto LABEL_27;
    case 0x11uLL:
      v2 = "MTLBuiltInArgumentThreadIndexInQuadgroup";
      v3 = "ThreadIndexInQuadgroup";
      goto LABEL_27;
    case 0x12uLL:
      v2 = "MTLBuiltInArgumentThreadIndexInSimdgroup";
      v3 = "ThreadIndexInSimdgroup";
      goto LABEL_27;
    case 0x13uLL:
      v2 = "MTLBuiltInArgumentThreadsPerQuadgroup";
      v3 = "ThreadsPerQuadgroup";
      goto LABEL_27;
    case 0x14uLL:
      v2 = "MTLBuiltInArgumentThreadsPerSimdgroup";
      v3 = "ThreadsPerSimdgroup";
      goto LABEL_27;
    case 0x15uLL:
      v2 = "MTLBuiltInAmplificationID";
      v3 = "BuiltInAmplificationID";
      goto LABEL_27;
    case 0x16uLL:
      v2 = "MTLBuiltInAmplificationCount";
      v3 = "BuiltInAmplificationCount";
      goto LABEL_27;
    case 0x17uLL:
      v2 = "MTLBuiltInMeshGridProperties";
      v3 = "BuiltInMeshGridProperties";
      goto LABEL_27;
    case 0x18uLL:
      v2 = "MTLBuiltInMesh";
      v3 = "BuiltInMesh";
LABEL_27:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLCPUCacheModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCPUCacheModeWriteCombined";
  if (a2)
  {
    v3 = "WriteCombined";
  }

  v4 = "MTLCPUCacheModeDefaultCache";
  if (a2)
  {
    v4 = "DefaultCache";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLCaptureDestinationAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCaptureDestinationGPUTraceDocument";
  if (a2)
  {
    v3 = "GPUTraceDocument";
  }

  v4 = "MTLCaptureDestinationDeveloperTools";
  if (a2)
  {
    v4 = "DeveloperTools";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLCaptureErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCaptureErrorNotSupported";
  if (a2)
  {
    v3 = "NotSupported";
  }

  v4 = "MTLCaptureErrorInvalidDescriptor";
  if (a2)
  {
    v4 = "InvalidDescriptor";
  }

  v5 = "AlreadyCapturing";
  if (!a2)
  {
    v5 = "MTLCaptureErrorAlreadyCapturing";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 3)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLColorWriteMaskAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLColorWriteMaskGreen";
  if (a2)
  {
    v3 = "Green";
  }

  v4 = "Red";
  if (!a2)
  {
    v4 = "MTLColorWriteMaskRed";
  }

  v5 = "MTLColorWriteMaskAll";
  if (a2)
  {
    v5 = "All";
  }

  if (this != 15)
  {
    v5 = "Unknown";
  }

  if (this != 8)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLColorWriteMaskNone";
  if (a2)
  {
    v6 = "None";
  }

  v7 = "MTLColorWriteMaskAlpha";
  if (a2)
  {
    v7 = "Alpha";
    v8 = "Blue";
  }

  else
  {
    v8 = "MTLColorWriteMaskBlue";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCommandBufferErrorAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  switch(this)
  {
    case 0uLL:
      v4 = "MTLCommandBufferErrorNone";
      v5 = "None";
      goto LABEL_15;
    case 1uLL:
      v4 = "MTLCommandBufferErrorInternal";
      v5 = "Internal";
      goto LABEL_15;
    case 2uLL:
      v4 = "MTLCommandBufferErrorTimeout";
      v5 = "Timeout";
      goto LABEL_15;
    case 3uLL:
      v4 = "MTLCommandBufferErrorPageFault";
      v5 = "PageFault";
      goto LABEL_15;
    case 4uLL:
      v4 = "MTLCommandBufferErrorAccessRevoked";
      v5 = "AccessRevoked";
      goto LABEL_15;
    case 7uLL:
      v4 = "MTLCommandBufferErrorNotPermitted";
      v5 = "NotPermitted";
      goto LABEL_15;
    case 8uLL:
      v4 = "MTLCommandBufferErrorOutOfMemory";
      v5 = "OutOfMemory";
      goto LABEL_15;
    case 9uLL:
      v4 = "MTLCommandBufferErrorInvalidResource";
      v5 = "InvalidResource";
      goto LABEL_15;
    case 0xAuLL:
      v4 = "MTLCommandBufferErrorMemoryless";
      v5 = "Memoryless";
      goto LABEL_15;
    case 0xBuLL:
      v4 = "MTLCommandBufferErrorDeviceRemoved";
      v5 = "DeviceRemoved";
      goto LABEL_15;
    case 0xCuLL:
      v4 = "MTLCommandBufferErrorStackOverflow";
      v5 = "StackOverflow";
      goto LABEL_15;
    case 0x10uLL:
      v4 = "MTLCommandBufferErrorProtectionViolation";
      v5 = "ProtectionViolation";
      goto LABEL_15;
    case 0x11uLL:
      v4 = "MTLCommandBufferErrorConditionalEventAbort";
      v5 = "ConditionalEventAbort";
LABEL_15:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLCommandBufferErrorOptionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCommandBufferErrorOptionNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLCommandBufferErrorOptionEncoderExecutionStatus";
  if (a2)
  {
    v4 = "EncoderExecutionStatus";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCommandBufferStatusAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 2)
  {
    v8 = "MTLCommandBufferStatusNotEnqueued";
    if (a2)
    {
      v8 = "NotEnqueued";
    }

    v9 = "MTLCommandBufferStatusEnqueued";
    if (a2)
    {
      v9 = "Enqueued";
    }

    v10 = "MTLCommandBufferStatusCommitted";
    if (a2)
    {
      v10 = "Committed";
    }

    if (this == 2)
    {
      v2 = v10;
    }

    if (this == 1)
    {
      v2 = v9;
    }

    if (this)
    {
      return v2;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v3 = "MTLCommandBufferStatusError";
    if (a2)
    {
      v3 = "Error";
    }

    v4 = "MTLCommandBufferStatusAbort";
    if (a2)
    {
      v4 = "Abort";
    }

    if (this != 6)
    {
      v4 = "Unknown";
    }

    if (this != 5)
    {
      v3 = v4;
    }

    v5 = "MTLCommandBufferStatusScheduled";
    if (a2)
    {
      v5 = "Scheduled";
    }

    v6 = "MTLCommandBufferStatusCompleted";
    if (a2)
    {
      v6 = "Completed";
    }

    if (this == 4)
    {
      v2 = v6;
    }

    if (this == 3)
    {
      v2 = v5;
    }

    if (this <= 4)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

const char *GPUTools::MTL::GetMTLCommandBufferSynchronizationTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSynchronizationTypeDealloc";
  if (a2)
  {
    v3 = "Dealloc";
    v4 = "Commit";
  }

  else
  {
    v4 = "MTLSynchronizationTypeCommit";
  }

  if (this != 2)
  {
    v4 = "Unknown";
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v5 = "MTLSynchronizationTypeExplicit";
  if (a2)
  {
    v5 = "Explicit";
  }

  v6 = "MTLSynchronizationTypeImplicit";
  if (a2)
  {
    v6 = "Implicit";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCommandDataCorruptionModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCommandDataCorruptionModeRandomLocation";
  if (a2)
  {
    v3 = "RandomLocation";
  }

  v4 = "MTLCommandDataCorruptionModeAllBytes";
  if (a2)
  {
    v4 = "AllBytes";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLCommandEncoderErrorStateAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCommandEncoderErrorStateFaulted";
  if (a2)
  {
    v3 = "Faulted";
    v4 = "Pending";
  }

  else
  {
    v4 = "MTLCommandEncoderErrorStatePending";
  }

  v5 = "MTLCommandEncoderErrorStateAffected";
  if (a2)
  {
    v5 = "Affected";
  }

  if (this != 2)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLCommandEncoderErrorStateUnknown";
  if (a2)
  {
    v6 = "Unknown";
  }

  v7 = "MTLCommandEncoderErrorStateCompleted";
  if (a2)
  {
    v7 = "Completed";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCommandEncoderTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 2)
  {
    v8 = "MTLCommandEncoderTypeRender";
    if (a2)
    {
      v8 = "Render";
    }

    v9 = "MTLCommandEncoderTypeCompute";
    if (a2)
    {
      v9 = "Compute";
    }

    v10 = "MTLCommandEncoderTypeBlit";
    if (a2)
    {
      v10 = "Blit";
    }

    if (this == 2)
    {
      v2 = v10;
    }

    if (this == 1)
    {
      v2 = v9;
    }

    if (this)
    {
      return v2;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v3 = "MTLCommandEncoderTypeResourceState";
    if (a2)
    {
      v3 = "ResourceState";
    }

    v4 = "MTLCommandEncoderTypeAccelerationStructure";
    if (a2)
    {
      v4 = "AccelerationStructure";
    }

    if (this != 7)
    {
      v4 = "Unknown";
    }

    if (this != 6)
    {
      v3 = v4;
    }

    v5 = "MTLCommandEncoderTypeParallelRender";
    if (a2)
    {
      v5 = "ParallelRender";
    }

    v6 = "MTLCommandEncoderTypeVideo";
    if (a2)
    {
      v6 = "Video";
    }

    if (this == 5)
    {
      v2 = v6;
    }

    if (this == 3)
    {
      v2 = v5;
    }

    if (this <= 5)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

const char *GPUTools::MTL::GetMTLCompareFunctionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 3)
  {
    v3 = "MTLCompareFunctionGreaterEqual";
    if (a2)
    {
      v3 = "GreaterEqual";
    }

    v8 = "MTLCompareFunctionAlways";
    if (a2)
    {
      v8 = "Always";
    }

    if (this != 7)
    {
      v8 = "Unknown";
    }

    if (this != 6)
    {
      v3 = v8;
    }

    v9 = "MTLCompareFunctionGreater";
    if (a2)
    {
      v9 = "Greater";
    }

    v10 = "MTLCompareFunctionNotEqual";
    if (a2)
    {
      v10 = "NotEqual";
    }

    if (this == 5)
    {
      v2 = v10;
    }

    if (this == 4)
    {
      v2 = v9;
    }

    v7 = this <= 5;
  }

  else
  {
    v3 = "MTLCompareFunctionEqual";
    if (a2)
    {
      v3 = "Equal";
    }

    v4 = "MTLCompareFunctionLessEqual";
    if (a2)
    {
      v4 = "LessEqual";
    }

    if (this != 3)
    {
      v4 = "Unknown";
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v5 = "MTLCompareFunctionNever";
    if (a2)
    {
      v5 = "Never";
    }

    v6 = "MTLCompareFunctionLess";
    if (a2)
    {
      v6 = "Less";
    }

    if (this == 1)
    {
      v2 = v6;
    }

    if (!this)
    {
      v2 = v5;
    }

    v7 = this <= 1;
  }

  if (v7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLComparisonAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLComparisonGreaterThanOrEqual";
  if (a2)
  {
    v3 = "GreaterThanOrEqual";
  }

  v4 = "LessThan";
  if (!a2)
  {
    v4 = "MTLComparisonLessThan";
  }

  v5 = "MTLComparisonLessThanOrEqual";
  if (a2)
  {
    v5 = "LessThanOrEqual";
  }

  if (this != 5)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v6 = "MTLComparisonEqual";
  if (a2)
  {
    v6 = "Equal";
  }

  v7 = "MTLComparisonNotEqual";
  if (a2)
  {
    v7 = "NotEqual";
    v8 = "GreaterThan";
  }

  else
  {
    v8 = "MTLComparisonGreaterThan";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCompileSymbolVisibilityAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCompileSymbolVisibilityHidden";
  if (a2)
  {
    v3 = "Hidden";
  }

  v4 = "MTLCompileSymbolVisibilityDefault";
  if (a2)
  {
    v4 = "Default";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLCompilerErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCompilerErrorEarlyExit";
  if (a2)
  {
    v3 = "EarlyExit";
  }

  v4 = "MTLCompilerErrorTimeout";
  if (a2)
  {
    v4 = "Timeout";
  }

  v5 = "MTLCompilerErrorCompilationError";
  if (a2)
  {
    v5 = "CompilationError";
  }

  if (this != 2)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLCompilerErrorNoError";
  if (a2)
  {
    v6 = "NoError";
  }

  v7 = "MTLCompilerErrorFatalError";
  if (a2)
  {
    v7 = "FatalError";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCompilerFlagAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 31)
  {
    v3 = "MTLCompilerFlagIgnorePlatformValidation";
    if (a2)
    {
      v3 = "IgnorePlatformValidation";
    }

    v9 = "MTLCompilerFlagEmulateIndirectAccelerationStructures";
    if (a2)
    {
      v9 = "EmulateIndirectAccelerationStructures";
    }

    v10 = "MTLCompilerFlagCompilerPluginRequiresSerializedBitcode";
    if (a2)
    {
      v10 = "CompilerPluginRequiresSerializedBitcode";
    }

    if (this != 256)
    {
      v10 = "Unknown";
    }

    if (this != 512)
    {
      v9 = v10;
    }

    if (this != 128)
    {
      v3 = v9;
    }

    v11 = "MTLCompilerFlagNoVertexFragmentLinking";
    if (a2)
    {
      v11 = "NoVertexFragmentLinking";
    }

    v12 = "MTLCompilerFlagSkipStageInputLoading";
    if (a2)
    {
      v12 = "SkipStageInputLoading";
    }

    if (this == 64)
    {
      v2 = v12;
    }

    if (this == 32)
    {
      v2 = v11;
    }

    v8 = this <= 127;
  }

  else
  {
    v3 = "MTLCompilerFlagLoadVertexAttributeData";
    if (a2)
    {
      v3 = "LoadVertexAttributeData";
    }

    v4 = "MTLCompilerFlagLoadPatchData";
    if (a2)
    {
      v4 = "LoadPatchData";
    }

    v5 = "MTLCompilerFlagLoadPatchControlPointData";
    if (a2)
    {
      v5 = "LoadPatchControlPointData";
    }

    if (this != 16)
    {
      v5 = "Unknown";
    }

    if (this != 8)
    {
      v4 = v5;
    }

    if (this != 4)
    {
      v3 = v4;
    }

    v6 = "MTLCompilerFlagNone";
    if (a2)
    {
      v6 = "None";
    }

    v7 = "MTLCompilerFlagPackVaryings";
    if (a2)
    {
      v7 = "PackVaryings";
    }

    if (this == 2)
    {
      v2 = v7;
    }

    if (!this)
    {
      v2 = v6;
    }

    v8 = this <= 3;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCompilerTestModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCompilerTestModeIntermittentCrash";
  if (a2)
  {
    v3 = "IntermittentCrash";
  }

  v4 = "MTLCompilerTestModeDefault";
  if (a2)
  {
    v4 = "Default";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLComputeFPConfigAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLComputeFPRoundToZeroBit";
  if (a2)
  {
    v3 = "RoundToZeroBit";
  }

  v4 = "RoundToInfinityBit";
  if (!a2)
  {
    v4 = "MTLComputeFPRoundToInfinityBit";
  }

  v5 = "MTLComputeFMABit";
  if (a2)
  {
    v5 = "FMABit";
  }

  if (this != 64)
  {
    v5 = "Unknown";
  }

  if (this != 32)
  {
    v4 = v5;
  }

  if (this != 16)
  {
    v3 = v4;
  }

  v6 = "MTLComputeFPDenormBit";
  if (a2)
  {
    v6 = "DenormBit";
  }

  v7 = "MTLComputeFPInfNanBit";
  if (a2)
  {
    v7 = "InfNanBit";
    v8 = "RoundToNearestBit";
  }

  else
  {
    v8 = "MTLComputeFPRoundToNearestBit";
  }

  if (this == 8)
  {
    v2 = v8;
  }

  if (this == 4)
  {
    v2 = v7;
  }

  if (this == 2)
  {
    v2 = v6;
  }

  if (this <= 15)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCounterSampleBufferErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCounterSampleBufferErrorOutOfMemory";
  if (a2)
  {
    v3 = "OutOfMemory";
  }

  v4 = "MTLCounterSampleBufferErrorInvalid";
  if (a2)
  {
    v4 = "Invalid";
  }

  v5 = "Internal";
  if (!a2)
  {
    v5 = "MTLCounterSampleBufferErrorInternal";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCounterSamplingPointAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCounterSamplingPointAtDispatchBoundary";
  if (a2)
  {
    v3 = "AtDispatchBoundary";
  }

  v4 = "MTLCounterSamplingPointAtTileDispatchBoundary";
  if (a2)
  {
    v4 = "AtTileDispatchBoundary";
  }

  v5 = "MTLCounterSamplingPointAtBlitBoundary";
  if (a2)
  {
    v5 = "AtBlitBoundary";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLCounterSamplingPointAtStageBoundary";
  if (a2)
  {
    v6 = "AtStageBoundary";
  }

  v7 = "MTLCounterSamplingPointAtDrawBoundary";
  if (a2)
  {
    v7 = "AtDrawBoundary";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCullModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCullModeNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLCullModeFront";
  if (a2)
  {
    v4 = "Front";
  }

  v5 = "Back";
  if (!a2)
  {
    v5 = "MTLCullModeBack";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCurveAdjacencyAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCurveAdjacencyNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLCurveAdjacencyEnd";
  if (a2)
  {
    v4 = "End";
  }

  v5 = "Begin";
  if (!a2)
  {
    v5 = "MTLCurveAdjacencyBegin";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCurveBasisAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCurveBasisLinear";
  if (a2)
  {
    v3 = "Linear";
    v4 = "Bezier";
  }

  else
  {
    v4 = "MTLCurveBasisBezier";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLCurveBasisBSpline";
  if (a2)
  {
    v5 = "BSpline";
  }

  v6 = "MTLCurveBasisCatmullRom";
  if (a2)
  {
    v6 = "CatmullRom";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCurveEndCapsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCurveEndCapsNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLCurveEndCapsSphere";
  if (a2)
  {
    v4 = "Sphere";
  }

  v5 = "Disk";
  if (!a2)
  {
    v5 = "MTLCurveEndCapsDisk";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLCurveTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLCurveTypeRound";
  if (a2)
  {
    v3 = "Round";
  }

  v4 = "MTLCurveTypeFlat";
  if (a2)
  {
    v4 = "Flat";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDashboardAsString(GPUTools::MTL *this, int a2)
{
  v2 = "MTLDashboardStreamingCodec";
  if (a2)
  {
    v2 = "StreamingCodec";
  }

  if (this)
  {
    return "Unknown";
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLDataTypeAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLDataTypeNone";
      v3 = "None";
      goto LABEL_142;
    case 1uLL:
      v2 = "MTLDataTypeStruct";
      v3 = "Struct";
      goto LABEL_142;
    case 2uLL:
      v2 = "MTLDataTypeArray";
      v3 = "Array";
      goto LABEL_142;
    case 3uLL:
      v2 = "MTLDataTypeFloat";
      v3 = "Float";
      goto LABEL_142;
    case 4uLL:
      v2 = "MTLDataTypeFloat2";
      v3 = "Float2";
      goto LABEL_142;
    case 5uLL:
      v2 = "MTLDataTypeFloat3";
      v3 = "Float3";
      goto LABEL_142;
    case 6uLL:
      v2 = "MTLDataTypeFloat4";
      v3 = "Float4";
      goto LABEL_142;
    case 7uLL:
      v2 = "MTLDataTypeFloat2x2";
      v3 = "Float2x2";
      goto LABEL_142;
    case 8uLL:
      v2 = "MTLDataTypeFloat2x3";
      v3 = "Float2x3";
      goto LABEL_142;
    case 9uLL:
      v2 = "MTLDataTypeFloat2x4";
      v3 = "Float2x4";
      goto LABEL_142;
    case 0xAuLL:
      v2 = "MTLDataTypeFloat3x2";
      v3 = "Float3x2";
      goto LABEL_142;
    case 0xBuLL:
      v2 = "MTLDataTypeFloat3x3";
      v3 = "Float3x3";
      goto LABEL_142;
    case 0xCuLL:
      v2 = "MTLDataTypeFloat3x4";
      v3 = "Float3x4";
      goto LABEL_142;
    case 0xDuLL:
      v2 = "MTLDataTypeFloat4x2";
      v3 = "Float4x2";
      goto LABEL_142;
    case 0xEuLL:
      v2 = "MTLDataTypeFloat4x3";
      v3 = "Float4x3";
      goto LABEL_142;
    case 0xFuLL:
      v2 = "MTLDataTypeFloat4x4";
      v3 = "Float4x4";
      goto LABEL_142;
    case 0x10uLL:
      v2 = "MTLDataTypeHalf";
      v3 = "Half";
      goto LABEL_142;
    case 0x11uLL:
      v2 = "MTLDataTypeHalf2";
      v3 = "Half2";
      goto LABEL_142;
    case 0x12uLL:
      v2 = "MTLDataTypeHalf3";
      v3 = "Half3";
      goto LABEL_142;
    case 0x13uLL:
      v2 = "MTLDataTypeHalf4";
      v3 = "Half4";
      goto LABEL_142;
    case 0x14uLL:
      v2 = "MTLDataTypeHalf2x2";
      v3 = "Half2x2";
      goto LABEL_142;
    case 0x15uLL:
      v2 = "MTLDataTypeHalf2x3";
      v3 = "Half2x3";
      goto LABEL_142;
    case 0x16uLL:
      v2 = "MTLDataTypeHalf2x4";
      v3 = "Half2x4";
      goto LABEL_142;
    case 0x17uLL:
      v2 = "MTLDataTypeHalf3x2";
      v3 = "Half3x2";
      goto LABEL_142;
    case 0x18uLL:
      v2 = "MTLDataTypeHalf3x3";
      v3 = "Half3x3";
      goto LABEL_142;
    case 0x19uLL:
      v2 = "MTLDataTypeHalf3x4";
      v3 = "Half3x4";
      goto LABEL_142;
    case 0x1AuLL:
      v2 = "MTLDataTypeHalf4x2";
      v3 = "Half4x2";
      goto LABEL_142;
    case 0x1BuLL:
      v2 = "MTLDataTypeHalf4x3";
      v3 = "Half4x3";
      goto LABEL_142;
    case 0x1CuLL:
      v2 = "MTLDataTypeHalf4x4";
      v3 = "Half4x4";
      goto LABEL_142;
    case 0x1DuLL:
      v2 = "MTLDataTypeInt";
      v3 = "Int";
      goto LABEL_142;
    case 0x1EuLL:
      v2 = "MTLDataTypeInt2";
      v3 = "Int2";
      goto LABEL_142;
    case 0x1FuLL:
      v2 = "MTLDataTypeInt3";
      v3 = "Int3";
      goto LABEL_142;
    case 0x20uLL:
      v2 = "MTLDataTypeInt4";
      v3 = "Int4";
      goto LABEL_142;
    case 0x21uLL:
      v2 = "MTLDataTypeUInt";
      v3 = "UInt";
      goto LABEL_142;
    case 0x22uLL:
      v2 = "MTLDataTypeUInt2";
      v3 = "UInt2";
      goto LABEL_142;
    case 0x23uLL:
      v2 = "MTLDataTypeUInt3";
      v3 = "UInt3";
      goto LABEL_142;
    case 0x24uLL:
      v2 = "MTLDataTypeUInt4";
      v3 = "UInt4";
      goto LABEL_142;
    case 0x25uLL:
      v2 = "MTLDataTypeShort";
      v3 = "Short";
      goto LABEL_142;
    case 0x26uLL:
      v2 = "MTLDataTypeShort2";
      v3 = "Short2";
      goto LABEL_142;
    case 0x27uLL:
      v2 = "MTLDataTypeShort3";
      v3 = "Short3";
      goto LABEL_142;
    case 0x28uLL:
      v2 = "MTLDataTypeShort4";
      v3 = "Short4";
      goto LABEL_142;
    case 0x29uLL:
      v2 = "MTLDataTypeUShort";
      v3 = "UShort";
      goto LABEL_142;
    case 0x2AuLL:
      v2 = "MTLDataTypeUShort2";
      v3 = "UShort2";
      goto LABEL_142;
    case 0x2BuLL:
      v2 = "MTLDataTypeUShort3";
      v3 = "UShort3";
      goto LABEL_142;
    case 0x2CuLL:
      v2 = "MTLDataTypeUShort4";
      v3 = "UShort4";
      goto LABEL_142;
    case 0x2DuLL:
      v2 = "MTLDataTypeChar";
      v3 = "Char";
      goto LABEL_142;
    case 0x2EuLL:
      v2 = "MTLDataTypeChar2";
      v3 = "Char2";
      goto LABEL_142;
    case 0x2FuLL:
      v2 = "MTLDataTypeChar3";
      v3 = "Char3";
      goto LABEL_142;
    case 0x30uLL:
      v2 = "MTLDataTypeChar4";
      v3 = "Char4";
      goto LABEL_142;
    case 0x31uLL:
      v2 = "MTLDataTypeUChar";
      v3 = "UChar";
      goto LABEL_142;
    case 0x32uLL:
      v2 = "MTLDataTypeUChar2";
      v3 = "UChar2";
      goto LABEL_142;
    case 0x33uLL:
      v2 = "MTLDataTypeUChar3";
      v3 = "UChar3";
      goto LABEL_142;
    case 0x34uLL:
      v2 = "MTLDataTypeUChar4";
      v3 = "UChar4";
      goto LABEL_142;
    case 0x35uLL:
      v2 = "MTLDataTypeBool";
      v3 = "Bool";
      goto LABEL_142;
    case 0x36uLL:
      v2 = "MTLDataTypeBool2";
      v3 = "Bool2";
      goto LABEL_142;
    case 0x37uLL:
      v2 = "MTLDataTypeBool3";
      v3 = "Bool3";
      goto LABEL_142;
    case 0x38uLL:
      v2 = "MTLDataTypeBool4";
      v3 = "Bool4";
      goto LABEL_142;
    case 0x39uLL:
      v2 = "MTLDataTypePrivateIndirectArgument";
      v3 = "PrivateIndirectArgument";
      goto LABEL_142;
    case 0x3AuLL:
      v2 = "MTLDataTypeTexture";
      v3 = "Texture";
      goto LABEL_142;
    case 0x3BuLL:
      v2 = "MTLDataTypeSampler";
      v3 = "Sampler";
      goto LABEL_142;
    case 0x3CuLL:
      v2 = "MTLDataTypePointer";
      v3 = "Pointer";
      goto LABEL_142;
    case 0x3DuLL:
      v2 = "MTLDataTypePrivateVoid";
      v3 = "PrivateVoid";
      goto LABEL_142;
    case 0x3EuLL:
      v2 = "MTLDataTypeR8Unorm";
      v3 = "R8Unorm";
      goto LABEL_142;
    case 0x3FuLL:
      v2 = "MTLDataTypeR8Snorm";
      v3 = "R8Snorm";
      goto LABEL_142;
    case 0x40uLL:
      v2 = "MTLDataTypeR16Unorm";
      v3 = "R16Unorm";
      goto LABEL_142;
    case 0x41uLL:
      v2 = "MTLDataTypeR16Snorm";
      v3 = "R16Snorm";
      goto LABEL_142;
    case 0x42uLL:
      v2 = "MTLDataTypeRG8Unorm";
      v3 = "RG8Unorm";
      goto LABEL_142;
    case 0x43uLL:
      v2 = "MTLDataTypeRG8Snorm";
      v3 = "RG8Snorm";
      goto LABEL_142;
    case 0x44uLL:
      v2 = "MTLDataTypeRG16Unorm";
      v3 = "RG16Unorm";
      goto LABEL_142;
    case 0x45uLL:
      v2 = "MTLDataTypeRG16Snorm";
      v3 = "RG16Snorm";
      goto LABEL_142;
    case 0x46uLL:
      v2 = "MTLDataTypeRGBA8Unorm";
      v3 = "RGBA8Unorm";
      goto LABEL_142;
    case 0x47uLL:
      v2 = "MTLDataTypeRGBA8Unorm_sRGB";
      v3 = "RGBA8Unorm_sRGB";
      goto LABEL_142;
    case 0x48uLL:
      v2 = "MTLDataTypeRGBA8Snorm";
      v3 = "RGBA8Snorm";
      goto LABEL_142;
    case 0x49uLL:
      v2 = "MTLDataTypeRGBA16Unorm";
      v3 = "RGBA16Unorm";
      goto LABEL_142;
    case 0x4AuLL:
      v2 = "MTLDataTypeRGBA16Snorm";
      v3 = "RGBA16Snorm";
      goto LABEL_142;
    case 0x4BuLL:
      v2 = "MTLDataTypeRGB10A2Unorm";
      v3 = "RGB10A2Unorm";
      goto LABEL_142;
    case 0x4CuLL:
      v2 = "MTLDataTypeRG11B10Float";
      v3 = "RG11B10Float";
      goto LABEL_142;
    case 0x4DuLL:
      v2 = "MTLDataTypeRGB9E5Float";
      v3 = "RGB9E5Float";
      goto LABEL_142;
    case 0x4EuLL:
      v2 = "MTLDataTypeRenderPipeline";
      v3 = "RenderPipeline";
      goto LABEL_142;
    case 0x4FuLL:
      v2 = "MTLDataTypeComputePipeline";
      v3 = "ComputePipeline";
      goto LABEL_142;
    case 0x50uLL:
      v2 = "MTLDataTypeIndirectCommandBuffer";
      v3 = "IndirectCommandBuffer";
      goto LABEL_142;
    case 0x51uLL:
      v2 = "MTLDataTypeLong";
      v3 = "Long";
      goto LABEL_142;
    case 0x52uLL:
      v2 = "MTLDataTypeLong2";
      v3 = "Long2";
      goto LABEL_142;
    case 0x53uLL:
      v2 = "MTLDataTypeLong3";
      v3 = "Long3";
      goto LABEL_142;
    case 0x54uLL:
      v2 = "MTLDataTypeLong4";
      v3 = "Long4";
      goto LABEL_142;
    case 0x55uLL:
      v2 = "MTLDataTypeULong";
      v3 = "ULong";
      goto LABEL_142;
    case 0x56uLL:
      v2 = "MTLDataTypeULong2";
      v3 = "ULong2";
      goto LABEL_142;
    case 0x57uLL:
      v2 = "MTLDataTypeULong3";
      v3 = "ULong3";
      goto LABEL_142;
    case 0x58uLL:
      v2 = "MTLDataTypeULong4";
      v3 = "ULong4";
      goto LABEL_142;
    case 0x59uLL:
      v2 = "MTLDataTypeDouble";
      v3 = "Double";
      goto LABEL_142;
    case 0x5AuLL:
      v2 = "MTLDataTypeDouble2";
      v3 = "Double2";
      goto LABEL_142;
    case 0x5BuLL:
      v2 = "MTLDataTypeDouble3";
      v3 = "Double3";
      goto LABEL_142;
    case 0x5CuLL:
      v2 = "MTLDataTypeDouble4";
      v3 = "Double4";
      goto LABEL_142;
    case 0x5DuLL:
      v2 = "MTLDataTypeFloat8";
      v3 = "Float8";
      goto LABEL_142;
    case 0x5EuLL:
      v2 = "MTLDataTypeFloat16";
      v3 = "Float16";
      goto LABEL_142;
    case 0x5FuLL:
      v2 = "MTLDataTypeHalf8";
      v3 = "Half8";
      goto LABEL_142;
    case 0x60uLL:
      v2 = "MTLDataTypeHalf16";
      v3 = "Half16";
      goto LABEL_142;
    case 0x61uLL:
      v2 = "MTLDataTypeInt8";
      v3 = "Int8";
      goto LABEL_142;
    case 0x62uLL:
      v2 = "MTLDataTypeInt16";
      v3 = "Int16";
      goto LABEL_142;
    case 0x63uLL:
      v2 = "MTLDataTypeUInt8";
      v3 = "UInt8";
      goto LABEL_142;
    case 0x64uLL:
      v2 = "MTLDataTypeUInt16";
      v3 = "UInt16";
      goto LABEL_142;
    case 0x65uLL:
      v2 = "MTLDataTypeShort8";
      v3 = "Short8";
      goto LABEL_142;
    case 0x66uLL:
      v2 = "MTLDataTypeShort16";
      v3 = "Short16";
      goto LABEL_142;
    case 0x67uLL:
      v2 = "MTLDataTypeUShort8";
      v3 = "UShort8";
      goto LABEL_142;
    case 0x68uLL:
      v2 = "MTLDataTypeUShort16";
      v3 = "UShort16";
      goto LABEL_142;
    case 0x69uLL:
      v2 = "MTLDataTypeChar8";
      v3 = "Char8";
      goto LABEL_142;
    case 0x6AuLL:
      v2 = "MTLDataTypeChar16";
      v3 = "Char16";
      goto LABEL_142;
    case 0x6BuLL:
      v2 = "MTLDataTypeUChar8";
      v3 = "UChar8";
      goto LABEL_142;
    case 0x6CuLL:
      v2 = "MTLDataTypeUChar16";
      v3 = "UChar16";
      goto LABEL_142;
    case 0x6DuLL:
      v2 = "MTLDataTypeLong8";
      v3 = "Long8";
      goto LABEL_142;
    case 0x6EuLL:
      v2 = "MTLDataTypeLong16";
      v3 = "Long16";
      goto LABEL_142;
    case 0x6FuLL:
      v2 = "MTLDataTypeULong8";
      v3 = "ULong8";
      goto LABEL_142;
    case 0x70uLL:
      v2 = "MTLDataTypeULong16";
      v3 = "ULong16";
      goto LABEL_142;
    case 0x71uLL:
      v2 = "MTLDataTypeDouble8";
      v3 = "Double8";
      goto LABEL_142;
    case 0x72uLL:
      v2 = "MTLDataTypeDouble16";
      v3 = "Double16";
      goto LABEL_142;
    case 0x73uLL:
      v2 = "MTLDataTypeVisibleFunctionTable";
      v3 = "VisibleFunctionTable";
      goto LABEL_142;
    case 0x74uLL:
      v2 = "MTLDataTypeIntersectionFunctionTable";
      v3 = "IntersectionFunctionTable";
      goto LABEL_142;
    case 0x75uLL:
      v2 = "MTLDataTypePrimitiveAccelerationStructure";
      v3 = "PrimitiveAccelerationStructure";
      goto LABEL_142;
    case 0x76uLL:
      v2 = "MTLDataTypeInstanceAccelerationStructure";
      v3 = "InstanceAccelerationStructure";
      goto LABEL_142;
    case 0x77uLL:
      v2 = "MTLDataTypeBool8";
      v3 = "Bool8";
      goto LABEL_142;
    case 0x78uLL:
      v2 = "MTLDataTypeBool16";
      v3 = "Bool16";
      goto LABEL_142;
    case 0x79uLL:
      v2 = "MTLDataTypeBFloat";
      v3 = "BFloat";
      goto LABEL_142;
    case 0x7AuLL:
      v2 = "MTLDataTypeBFloat2";
      v3 = "BFloat2";
      goto LABEL_142;
    case 0x7BuLL:
      v2 = "MTLDataTypeBFloat3";
      v3 = "BFloat3";
      goto LABEL_142;
    case 0x7CuLL:
      v2 = "MTLDataTypeBFloat4";
      v3 = "BFloat4";
      goto LABEL_142;
    case 0x7DuLL:
      v2 = "MTLDataTypeBFloat8";
      v3 = "BFloat8";
      goto LABEL_142;
    case 0x7EuLL:
      v2 = "MTLDataTypeBFloat16";
      v3 = "BFloat16";
      goto LABEL_142;
    case 0x7FuLL:
      v2 = "MTLDataTypeBFloat2x2";
      v3 = "BFloat2x2";
      goto LABEL_142;
    case 0x80uLL:
      v2 = "MTLDataTypeBFloat2x3";
      v3 = "BFloat2x3";
      goto LABEL_142;
    case 0x81uLL:
      v2 = "MTLDataTypeBFloat2x4";
      v3 = "BFloat2x4";
      goto LABEL_142;
    case 0x82uLL:
      v2 = "MTLDataTypeBFloat3x2";
      v3 = "BFloat3x2";
      goto LABEL_142;
    case 0x83uLL:
      v2 = "MTLDataTypeBFloat3x3";
      v3 = "BFloat3x3";
      goto LABEL_142;
    case 0x84uLL:
      v2 = "MTLDataTypeBFloat3x4";
      v3 = "BFloat3x4";
      goto LABEL_142;
    case 0x85uLL:
      v2 = "MTLDataTypeBFloat4x2";
      v3 = "BFloat4x2";
      goto LABEL_142;
    case 0x86uLL:
      v2 = "MTLDataTypeBFloat4x3";
      v3 = "BFloat4x3";
      goto LABEL_142;
    case 0x87uLL:
      v2 = "MTLDataTypeBFloat4x4";
      v3 = "BFloat4x4";
      goto LABEL_142;
    case 0x88uLL:
      v2 = "MTLDataTypeMatrix";
      v3 = "Matrix";
      goto LABEL_142;
    case 0x89uLL:
      v2 = "MTLDataTypeVector";
      v3 = "Vector";
      goto LABEL_142;
    case 0x8AuLL:
      v2 = "MTLDataTypeImageBlock";
      v3 = "ImageBlock";
      goto LABEL_142;
    case 0x8BuLL:
      v2 = "MTLDataTypeDepthStencilState";
      v3 = "DepthStencilState";
LABEL_142:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLDeadlineExecutionBucketsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 2)
  {
    v3 = "MTLDeadlineExecutionLarge";
    if (a2)
    {
      v3 = "Large";
    }

    v7 = "MTLDeadlineExecutionNum";
    if (a2)
    {
      v7 = "Num";
    }

    v8 = "MTLDeadlineExecutionInvalid";
    if (a2)
    {
      v8 = "Invalid";
    }

    if (this == 0xFFFFFFFFLL)
    {
      v2 = v8;
    }

    if (this == 4)
    {
      v2 = v7;
    }

    v6 = this == 3;
  }

  else
  {
    v3 = "MTLDeadlineExecutionTiny";
    if (a2)
    {
      v3 = "Tiny";
    }

    v4 = "MTLDeadlineExecutionSmall";
    if (a2)
    {
      v4 = "Small";
    }

    v5 = "MTLDeadlineExecutionMedium";
    if (a2)
    {
      v5 = "Medium";
    }

    if (this == 2)
    {
      v2 = v5;
    }

    if (this == 1)
    {
      v2 = v4;
    }

    v6 = this == 0;
  }

  if (v6)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLDepthClipModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDepthClipModeClip";
  if (a2)
  {
    v3 = "Clip";
  }

  v4 = "MTLDepthClipModeClamp";
  if (a2)
  {
    v4 = "Clamp";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDeviceFeatureProfileAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 10000)
  {
    if (this > 30000)
    {
      if (this > 30004)
      {
        if (this != 30005)
        {
          v7 = 30006;
          v8 = "MTLDeviceFeatureProfiletvOS_7";
          if (a2)
          {
            v8 = "tvOS_7";
          }

          v19 = "MTLDeviceFeatureProfileUndefined";
          if (a2)
          {
            v19 = "Undefined";
          }

          if (this == 0xFFFFFFFFLL)
          {
            v2 = v19;
          }

          goto LABEL_79;
        }

        v20 = "MTLDeviceFeatureProfiletvOS_6";
        v21 = "tvOS_6";
      }

      else
      {
        if (this != 30001)
        {
          v7 = 30002;
          v8 = "MTLDeviceFeatureProfiletvOS_3";
          if (a2)
          {
            v8 = "tvOS_3";
          }

          v9 = 30004;
          v10 = "MTLDeviceFeatureProfiletvOS_5";
          v11 = "tvOS_5";
          goto LABEL_53;
        }

        v20 = "MTLDeviceFeatureProfiletvOS_2";
        v21 = "tvOS_2";
      }
    }

    else if (this > 20000)
    {
      if (this != 20001)
      {
        v7 = 20002;
        v8 = "MTLDeviceFeatureProfilewatchOS_3";
        if (a2)
        {
          v8 = "watchOS_3";
        }

        v9 = 30000;
        v10 = "MTLDeviceFeatureProfiletvOS_1";
        v11 = "tvOS_1";
        goto LABEL_53;
      }

      v20 = "MTLDeviceFeatureProfilewatchOS_2";
      v21 = "watchOS_2";
    }

    else
    {
      if (this != 10001)
      {
        v7 = 10002;
        v8 = "MTLDeviceFeatureProfilemacOS_3";
        if (a2)
        {
          v8 = "macOS_3";
        }

        v9 = 20000;
        v10 = "MTLDeviceFeatureProfilewatchOS_1";
        v11 = "watchOS_1";
LABEL_53:
        if (a2)
        {
          v10 = v11;
        }

        if (this == v9)
        {
          v2 = v10;
        }

LABEL_79:
        if (this == v7)
        {
          return v8;
        }

        else
        {
          return v2;
        }
      }

      v20 = "MTLDeviceFeatureProfilemacOS_2";
      v21 = "macOS_2";
    }

    if (a2)
    {
      return v21;
    }

    else
    {
      return v20;
    }
  }

  if (this > 7)
  {
    if (this > 10)
    {
      v3 = "MTLDeviceFeatureProfileiOS_9B";
      if (a2)
      {
        v3 = "iOS_9B";
      }

      v16 = "MTLDeviceFeatureProfileiOS_10";
      if (a2)
      {
        v16 = "iOS_10";
      }

      v17 = "MTLDeviceFeatureProfilemacOS_1";
      if (a2)
      {
        v17 = "macOS_1";
      }

      if (this == 10000)
      {
        v2 = v17;
      }

      if (this == 12)
      {
        v2 = v16;
      }

      v6 = this == 11;
    }

    else
    {
      v3 = "MTLDeviceFeatureProfileiOS_7";
      if (a2)
      {
        v3 = "iOS_7";
      }

      v12 = "MTLDeviceFeatureProfileiOS_8";
      if (a2)
      {
        v12 = "iOS_8";
      }

      v13 = "MTLDeviceFeatureProfileiOS_9";
      if (a2)
      {
        v13 = "iOS_9";
      }

      if (this == 10)
      {
        v2 = v13;
      }

      if (this == 9)
      {
        v2 = v12;
      }

      v6 = this == 8;
    }
  }

  else if (this > 4)
  {
    v3 = "MTLDeviceFeatureProfileiOS_4";
    if (a2)
    {
      v3 = "iOS_4";
    }

    v14 = "MTLDeviceFeatureProfileiOS_5";
    if (a2)
    {
      v14 = "iOS_5";
    }

    v15 = "MTLDeviceFeatureProfileiOS_6";
    if (a2)
    {
      v15 = "iOS_6";
    }

    if (this == 7)
    {
      v2 = v15;
    }

    if (this == 6)
    {
      v2 = v14;
    }

    v6 = this == 5;
  }

  else
  {
    v3 = "MTLDeviceFeatureProfileiOS_1";
    if (a2)
    {
      v3 = "iOS_1";
    }

    v4 = "MTLDeviceFeatureProfileiOS_2";
    if (a2)
    {
      v4 = "iOS_2";
    }

    v5 = "MTLDeviceFeatureProfileiOS_3";
    if (a2)
    {
      v5 = "iOS_3";
    }

    if (this == 4)
    {
      v2 = v5;
    }

    if (this == 1)
    {
      v2 = v4;
    }

    v6 = this == 0;
  }

  if (v6)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLDeviceLocationAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDeviceLocationSlot";
  if (a2)
  {
    v3 = "Slot";
    v4 = "External";
  }

  else
  {
    v4 = "MTLDeviceLocationExternal";
  }

  if (this != 2)
  {
    v4 = "Unknown";
  }

  if (this != 1)
  {
    v3 = v4;
  }

  v5 = "MTLDeviceLocationUnspecified";
  if (a2)
  {
    v5 = "Unspecified";
  }

  v6 = "MTLDeviceLocationBuiltIn";
  if (a2)
  {
    v6 = "BuiltIn";
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this == -1)
  {
    v2 = v5;
  }

  if (this <= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDevicePartitionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDevicePartitionDefault";
  if (a2)
  {
    v3 = "Default";
  }

  v4 = "MTLDevicePartition1";
  if (a2)
  {
    v4 = "1";
  }

  v5 = "0";
  if (!a2)
  {
    v5 = "MTLDevicePartition0";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDispatchTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDispatchTypeSerial";
  if (a2)
  {
    v3 = "Serial";
  }

  v4 = "MTLDispatchTypeConcurrent";
  if (a2)
  {
    v4 = "Concurrent";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDynamicLibraryErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDynamicLibraryErrorUnresolvedInstallName";
  if (a2)
  {
    v3 = "UnresolvedInstallName";
  }

  v4 = "DependencyLoadFailure";
  if (!a2)
  {
    v4 = "MTLDynamicLibraryErrorDependencyLoadFailure";
  }

  v5 = "MTLDynamicLibraryErrorUnsupported";
  if (a2)
  {
    v5 = "Unsupported";
  }

  if (this != 5)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v6 = "MTLDynamicLibraryErrorNone";
  if (a2)
  {
    v6 = "None";
  }

  v7 = "MTLDynamicLibraryErrorInvalidFile";
  if (a2)
  {
    v7 = "InvalidFile";
    v8 = "CompilationFailure";
  }

  else
  {
    v8 = "MTLDynamicLibraryErrorCompilationFailure";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDynamicLibraryLoadOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDynamicLibraryEnableResourceUsageInstrumentation";
  if (a2)
  {
    v3 = "EnableResourceUsageInstrumentation";
  }

  v4 = "MTLDynamicLibraryEnableResourcePatchingInstrumentation";
  if (a2)
  {
    v4 = "EnableResourcePatchingInstrumentation";
  }

  v5 = "MTLDynamicLibraryEnableInstrumentation";
  if (a2)
  {
    v5 = "EnableInstrumentation";
  }

  if (this != 2)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 8)
  {
    v3 = v4;
  }

  v6 = "MTLDynamicLibraryLoadOptionNone";
  if (a2)
  {
    v6 = "LoadOptionNone";
  }

  v7 = "MTLDynamicLibraryLoadSkipAIRValidation";
  if (a2)
  {
    v7 = "LoadSkipAIRValidation";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDynamicLibrarySerializationOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDynamicLibrarySerializationDeviceAspect";
  if (a2)
  {
    v3 = "DeviceAspect";
  }

  v4 = "MTLDynamicLibrarySerializationAirAspectIfAvailable";
  if (a2)
  {
    v4 = "AirAspectIfAvailable";
  }

  v5 = "MTLDynamicLibrarySerializationAirAspectAlways";
  if (a2)
  {
    v5 = "AirAspectAlways";
  }

  if (this != 16)
  {
    v5 = "Unknown";
  }

  if (this != 8)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLDynamicLibrarySerializationAtomic";
  if (a2)
  {
    v6 = "Atomic";
  }

  v7 = "MTLDynamicLibrarySerializationChecksum";
  if (a2)
  {
    v7 = "Checksum";
  }

  if (this == 2)
  {
    v2 = v7;
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (this <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLDynamicLibraryTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLDynamicLibraryTypeCompatible";
  if (a2)
  {
    v3 = "Compatible";
  }

  v4 = "MTLDynamicLibraryTypeRebuild";
  if (a2)
  {
    v4 = "Rebuild";
  }

  v5 = "MTLDynamicLibraryTypeNoVendorSlice";
  if (a2)
  {
    v5 = "NoVendorSlice";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLDynamicLibraryTypeInvalid";
  if (a2)
  {
    v6 = "Invalid";
  }

  v7 = "MTLDynamicLibraryTypeAIROnly";
  if (a2)
  {
    v7 = "AIROnly";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLEventOptionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "MTLEventOptionSupportRollback";
  if (a2)
  {
    v2 = "SupportRollback";
  }

  if (this == 1)
  {
    return v2;
  }

  else
  {
    return "Unknown";
  }
}

const char *GPUTools::MTL::GetMTLFeatureSetAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  if (this > 9999)
  {
    if (this > 20000)
    {
      if (this <= 30001)
      {
        v6 = 20001;
        v7 = "MTLFeatureSet_watchOS_GPUFamily2_v1";
        if (a2)
        {
          v7 = "watchOS_GPUFamily2_v1";
        }

        v11 = "MTLFeatureSet_tvOS_GPUFamily1_v1";
        if (a2)
        {
          v11 = "tvOS_GPUFamily1_v1";
        }

        v12 = "MTLFeatureSet_tvOS_GPUFamily1_v2";
        if (a2)
        {
          v12 = "tvOS_GPUFamily1_v2";
        }

        if (this == 30001)
        {
          v13 = v12;
        }

        else
        {
          v13 = "Unknown";
        }

        if (this != 30000)
        {
          v11 = v13;
        }

        goto LABEL_42;
      }

      if (this > 30003)
      {
        v6 = 30004;
        v7 = "MTLFeatureSet_tvOS_GPUFamily1_v4";
        if (a2)
        {
          v7 = "tvOS_GPUFamily1_v4";
        }

        v8 = 30005;
        v9 = "MTLFeatureSet_tvOS_GPUFamily2_v2";
        v10 = "tvOS_GPUFamily2_v2";
      }

      else
      {
        v6 = 30002;
        v7 = "MTLFeatureSet_tvOS_GPUFamily1_v3";
        if (a2)
        {
          v7 = "tvOS_GPUFamily1_v3";
        }

        v8 = 30003;
        v9 = "MTLFeatureSet_tvOS_GPUFamily2_v1";
        v10 = "tvOS_GPUFamily2_v1";
      }
    }

    else if (this <= 10002)
    {
      if (this == 10000)
      {
        v4 = "MTLFeatureSet_macOS_GPUFamily1_v1";
        v5 = "macOS_GPUFamily1_v1";
LABEL_62:
        if (a2)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }

      v6 = 10001;
      v7 = "MTLFeatureSet_macOS_GPUFamily1_v2";
      if (a2)
      {
        v7 = "macOS_GPUFamily1_v2";
      }

      v8 = 10002;
      v9 = "MTLFeatureSet_macOS_ReadWriteTextureTier2";
      v10 = "macOS_ReadWriteTextureTier2";
    }

    else if (this > 10004)
    {
      v6 = 10005;
      v7 = "MTLFeatureSet_macOS_GPUFamily2_v1";
      if (a2)
      {
        v7 = "macOS_GPUFamily2_v1";
      }

      v8 = 20000;
      v9 = "MTLFeatureSet_watchOS_GPUFamily1_v1";
      v10 = "watchOS_GPUFamily1_v1";
    }

    else
    {
      v6 = 10003;
      v7 = "MTLFeatureSet_macOS_GPUFamily1_v3";
      if (a2)
      {
        v7 = "macOS_GPUFamily1_v3";
      }

      v8 = 10004;
      v9 = "MTLFeatureSet_macOS_GPUFamily1_v4";
      v10 = "macOS_GPUFamily1_v4";
    }

    if (a2)
    {
      v9 = v10;
    }

    if (this == v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = "Unknown";
    }

LABEL_42:
    if (this == v6)
    {
      return v7;
    }

    else
    {
      return v11;
    }
  }

  switch(this)
  {
    case 0uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily1_v1";
      v5 = "iOS_GPUFamily1_v1";
      goto LABEL_62;
    case 1uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily2_v1";
      v5 = "iOS_GPUFamily2_v1";
      goto LABEL_62;
    case 2uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily1_v2";
      v5 = "iOS_GPUFamily1_v2";
      goto LABEL_62;
    case 3uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily2_v2";
      v5 = "iOS_GPUFamily2_v2";
      goto LABEL_62;
    case 4uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily3_v1";
      v5 = "iOS_GPUFamily3_v1";
      goto LABEL_62;
    case 5uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily1_v3";
      v5 = "iOS_GPUFamily1_v3";
      goto LABEL_62;
    case 6uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily2_v3";
      v5 = "iOS_GPUFamily2_v3";
      goto LABEL_62;
    case 7uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily3_v2";
      v5 = "iOS_GPUFamily3_v2";
      goto LABEL_62;
    case 8uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily1_v4";
      v5 = "iOS_GPUFamily1_v4";
      goto LABEL_62;
    case 9uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily2_v4";
      v5 = "iOS_GPUFamily2_v4";
      goto LABEL_62;
    case 0xAuLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily3_v3";
      v5 = "iOS_GPUFamily3_v3";
      goto LABEL_62;
    case 0xBuLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily4_v1";
      v5 = "iOS_GPUFamily4_v1";
      goto LABEL_62;
    case 0xCuLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily1_v5";
      v5 = "iOS_GPUFamily1_v5";
      goto LABEL_62;
    case 0xDuLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily2_v5";
      v5 = "iOS_GPUFamily2_v5";
      goto LABEL_62;
    case 0xEuLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily3_v4";
      v5 = "iOS_GPUFamily3_v4";
      goto LABEL_62;
    case 0xFuLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily4_v2";
      v5 = "iOS_GPUFamily4_v2";
      goto LABEL_62;
    case 0x10uLL:
      v4 = "MTLFeatureSet_iOS_GPUFamily5_v1";
      v5 = "iOS_GPUFamily5_v1";
      goto LABEL_62;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLFunctionLogTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "MTLFunctionLogTypeValidation";
  if (a2)
  {
    v2 = "Validation";
  }

  if (this)
  {
    return "Unknown";
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLFunctionOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLFunctionOptionStoreFunctionInMetalScript";
  if (a2)
  {
    v3 = "StoreFunctionInMetalScript";
    v4 = "FailOnBinaryArchiveMiss";
  }

  else
  {
    v4 = "MTLFunctionOptionFailOnBinaryArchiveMiss";
  }

  if (this != 4)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLFunctionOptionNone";
  if (a2)
  {
    v5 = "None";
  }

  v6 = "MTLFunctionOptionCompileToBinary";
  if (a2)
  {
    v6 = "CompileToBinary";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLFunctionTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 4)
  {
    v3 = "MTLFunctionTypeKernel";
    if (a2)
    {
      v3 = "Kernel";
    }

    v10 = "MTLFunctionTypeExtern";
    if (a2)
    {
      v10 = "Extern";
    }

    if (this != 4)
    {
      v10 = "Unknown";
    }

    if (this != 3)
    {
      v3 = v10;
    }

    v11 = "MTLFunctionTypeVertex";
    if (a2)
    {
      v11 = "Vertex";
    }

    v12 = "MTLFunctionTypeFragment";
    if (a2)
    {
      v12 = "Fragment";
    }

    if (this == 2)
    {
      v2 = v12;
    }

    if (this == 1)
    {
      v2 = v11;
    }

    v9 = this <= 2;
  }

  else
  {
    v3 = "MTLFunctionTypeMesh";
    if (a2)
    {
      v3 = "Mesh";
    }

    v4 = "MTLFunctionTypeObject";
    if (a2)
    {
      v4 = "Object";
    }

    v5 = "MTLFunctionTypeInvalid";
    if (a2)
    {
      v5 = "Invalid";
    }

    if (this == 0xFFFF)
    {
      v6 = v5;
    }

    else
    {
      v6 = "Unknown";
    }

    if (this != 8)
    {
      v4 = v6;
    }

    if (this != 7)
    {
      v3 = v4;
    }

    v7 = "MTLFunctionTypeVisible";
    if (a2)
    {
      v7 = "Visible";
    }

    v8 = "MTLFunctionTypeIntersection";
    if (a2)
    {
      v8 = "Intersection";
    }

    if (this == 6)
    {
      v2 = v8;
    }

    if (this == 5)
    {
      v2 = v7;
    }

    v9 = this <= 6;
  }

  if (v9)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLGLFragmentInputTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGLFragmentInputTypePPAttrib";
  if (a2)
  {
    v3 = "PPAttrib";
  }

  v4 = "MTLGLFragmentInputTypeGeneric";
  if (a2)
  {
    v4 = "Generic";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLGPUAddressSpaceAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGPUAddressSpaceThreadgroup";
  if (a2)
  {
    v3 = "Threadgroup";
    v4 = "RayPayload";
  }

  else
  {
    v4 = "MTLGPUAddressSpaceRayPayload";
  }

  if (this != 5)
  {
    v4 = "Unknown";
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v5 = "MTLGPUAddressSpaceDevice";
  if (a2)
  {
    v5 = "Device";
  }

  v6 = "MTLGPUAddressSpaceConstant";
  if (a2)
  {
    v6 = "Constant";
  }

  if (this == 2)
  {
    v2 = v6;
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLGPUFamilyAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 1009)
  {
    if (this > 3001)
    {
      if (this <= 4000)
      {
        v3 = "MTLGPUFamilyCommon2";
        if (a2)
        {
          v3 = "Common2";
          v19 = "Common3";
        }

        else
        {
          v19 = "MTLGPUFamilyCommon3";
        }

        if (this == 3003)
        {
          v2 = v19;
        }

        v6 = this == 3002;
      }

      else
      {
        v3 = "MTLGPUFamilyMacCatalyst1";
        if (a2)
        {
          v3 = "MacCatalyst1";
        }

        v7 = "MTLGPUFamilyMacCatalyst2";
        if (a2)
        {
          v7 = "MacCatalyst2";
        }

        v8 = "MTLGPUFamilyMetal3";
        if (a2)
        {
          v8 = "Metal3";
        }

        if (this == 5001)
        {
          v2 = v8;
        }

        if (this == 4002)
        {
          v2 = v7;
        }

        v6 = this == 4001;
      }

      goto LABEL_77;
    }

    v9 = "MTLGPUFamilyMac2";
    if (a2)
    {
      v9 = "Mac2";
    }

    v14 = "MTLGPUFamilyCommon1";
    if (a2)
    {
      v14 = "Common1";
    }

    if (this != 3001)
    {
      v14 = "Unknown";
    }

    if (this != 2002)
    {
      v9 = v14;
    }

    v15 = "MTLGPUFamilyApple10";
    if (a2)
    {
      v15 = "Apple10";
    }

    v16 = "MTLGPUFamilyMac1";
    if (a2)
    {
      v16 = "Mac1";
    }

    if (this == 2001)
    {
      v2 = v16;
    }

    if (this == 1010)
    {
      v2 = v15;
    }

    v13 = this <= 2001;
  }

  else
  {
    if (this > 1004)
    {
      if (this <= 1006)
      {
        v3 = "MTLGPUFamilyApple5";
        if (a2)
        {
          v3 = "Apple5";
          v18 = "Apple6";
        }

        else
        {
          v18 = "MTLGPUFamilyApple6";
        }

        if (this == 1006)
        {
          v2 = v18;
        }

        v6 = this == 1005;
      }

      else
      {
        v3 = "MTLGPUFamilyApple7";
        if (a2)
        {
          v3 = "Apple7";
        }

        v4 = "MTLGPUFamilyApple8";
        if (a2)
        {
          v4 = "Apple8";
        }

        v5 = "MTLGPUFamilyApple9";
        if (a2)
        {
          v5 = "Apple9";
        }

        if (this == 1009)
        {
          v2 = v5;
        }

        if (this == 1008)
        {
          v2 = v4;
        }

        v6 = this == 1007;
      }

LABEL_77:
      if (v6)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }

    v9 = "MTLGPUFamilyApple3";
    if (a2)
    {
      v9 = "Apple3";
    }

    v10 = "MTLGPUFamilyApple4";
    if (a2)
    {
      v10 = "Apple4";
    }

    if (this != 1004)
    {
      v10 = "Unknown";
    }

    if (this != 1003)
    {
      v9 = v10;
    }

    v11 = "MTLGPUFamilyApple1";
    if (a2)
    {
      v11 = "Apple1";
    }

    v12 = "MTLGPUFamilyApple2";
    if (a2)
    {
      v12 = "Apple2";
    }

    if (this == 1002)
    {
      v2 = v12;
    }

    if (this == 1001)
    {
      v2 = v11;
    }

    v13 = this <= 1002;
  }

  if (v13)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

const char *GPUTools::MTL::GetMTLGPUMemoryErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGPUMemoryErrorUsage";
  if (a2)
  {
    v3 = "Usage";
    v4 = "Type";
  }

  else
  {
    v4 = "MTLGPUMemoryErrorType";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLGPUMemoryErrorNull";
  if (a2)
  {
    v5 = "Null";
  }

  v6 = "MTLGPUMemoryErrorAddress";
  if (a2)
  {
    v6 = "Address";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLGPUOperationAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  switch(this)
  {
    case 0uLL:
      if (!a2)
      {
        return "MTLGPUOperationUnknown";
      }

      return result;
    case 1uLL:
      v4 = "MTLGPUOperationLoad";
      v5 = "Load";
      goto LABEL_18;
    case 2uLL:
      v4 = "MTLGPUOperationStore";
      v5 = "Store";
      goto LABEL_18;
    case 3uLL:
      v4 = "MTLGPUOperationAtomicLoad";
      v5 = "AtomicLoad";
      goto LABEL_18;
    case 4uLL:
      v4 = "MTLGPUOperationAtomicStore";
      v5 = "AtomicStore";
      goto LABEL_18;
    case 5uLL:
      v4 = "MTLGPUOperationAtomicExchange";
      v5 = "AtomicExchange";
      goto LABEL_18;
    case 6uLL:
      v4 = "MTLGPUOperationAtomicCompareExchange";
      v5 = "AtomicCompareExchange";
      goto LABEL_18;
    case 7uLL:
      v4 = "MTLGPUOperationAtomicFetchAdd";
      v5 = "AtomicFetchAdd";
      goto LABEL_18;
    case 8uLL:
      v4 = "MTLGPUOperationAtomicFetchAnd";
      v5 = "AtomicFetchAnd";
      goto LABEL_18;
    case 9uLL:
      v4 = "MTLGPUOperationAtomicFetchMax";
      v5 = "AtomicFetchMax";
      goto LABEL_18;
    case 0xAuLL:
      v4 = "MTLGPUOperationAtomicFetchMin";
      v5 = "AtomicFetchMin";
      goto LABEL_18;
    case 0xBuLL:
      v4 = "MTLGPUOperationAtomicFetchOr";
      v5 = "AtomicFetchOr";
      goto LABEL_18;
    case 0xCuLL:
      v4 = "MTLGPUOperationAtomicFetchSub";
      v5 = "AtomicFetchSub";
      goto LABEL_18;
    case 0xDuLL:
      v4 = "MTLGPUOperationAtomicFetchXor";
      v5 = "AtomicFetchXor";
LABEL_18:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLGPUPriorityAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGPUPriorityRealTime";
  if (a2)
  {
    v3 = "RealTime";
  }

  v4 = "NormalHigh";
  if (!a2)
  {
    v4 = "MTLGPUPriorityNormalHigh";
  }

  v5 = "MTLGPUPriorityDisabled";
  if (a2)
  {
    v5 = "Disabled";
  }

  if (this != 3)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 5)
  {
    v3 = v4;
  }

  v6 = "MTLGPUPriorityHigh";
  if (a2)
  {
    v6 = "High";
  }

  v7 = "MTLGPUPriorityNormal";
  if (a2)
  {
    v7 = "Normal";
    v8 = "Low";
  }

  else
  {
    v8 = "MTLGPUPriorityLow";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLGenericBVHHeaderVersionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGenericBVHHeaderVersionUniqueIdentifier";
  if (a2)
  {
    v3 = "UniqueIdentifier";
  }

  v4 = "Raytracing2024";
  if (!a2)
  {
    v4 = "MTLGenericBVHHeaderVersionRaytracing2024";
  }

  v5 = "MTLGenericBVHHeaderVersionCurves";
  if (a2)
  {
    v5 = "Curves";
  }

  if (this != 260)
  {
    v5 = "Unknown";
  }

  if (this != 261)
  {
    v4 = v5;
  }

  if (this != 259)
  {
    v3 = v4;
  }

  v6 = "MTLGenericBVHHeaderVersionInitialSPI";
  if (a2)
  {
    v6 = "InitialSPI";
  }

  v7 = "MTLGenericBVHHeaderVersionMotionSPI";
  if (a2)
  {
    v7 = "MotionSPI";
    v8 = "PerPrimitiveData";
  }

  else
  {
    v8 = "MTLGenericBVHHeaderVersionPerPrimitiveData";
  }

  if (this == 258)
  {
    v2 = v8;
  }

  if (this == 257)
  {
    v2 = v7;
  }

  if (this == 256)
  {
    v2 = v6;
  }

  if (this <= 258)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLGenericBVHPrimitiveTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGenericBVHPrimitiveTypeTriangleSPI";
  if (a2)
  {
    v3 = "TriangleSPI";
  }

  v4 = "MTLGenericBVHPrimitiveTypeCurveSPI";
  if (a2)
  {
    v4 = "CurveSPI";
  }

  v5 = "BoundingBoxSPI";
  if (!a2)
  {
    v5 = "MTLGenericBVHPrimitiveTypeBoundingBoxSPI";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLGenericBVHTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLGenericBVHTypePrimitiveMotionSPI";
  if (a2)
  {
    v3 = "PrimitiveMotionSPI";
    v4 = "InstanceMotionSPI";
  }

  else
  {
    v4 = "MTLGenericBVHTypeInstanceMotionSPI";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLGenericBVHTypePrimitiveSPI";
  if (a2)
  {
    v5 = "PrimitiveSPI";
  }

  v6 = "MTLGenericBVHTypeInstanceSPI";
  if (a2)
  {
    v6 = "InstanceSPI";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLHazardTrackingModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLHazardTrackingModeTracked";
  if (a2)
  {
    v3 = "Tracked";
    v4 = "Grouped";
  }

  else
  {
    v4 = "MTLHazardTrackingModeGrouped";
  }

  if (this != 8)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLHazardTrackingModeDefault";
  if (a2)
  {
    v5 = "Default";
  }

  v6 = "MTLHazardTrackingModeUntracked";
  if (a2)
  {
    v6 = "Untracked";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLHeapTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLHeapTypeSparse";
  if (a2)
  {
    v3 = "Sparse";
  }

  v4 = "MTLHeapTypePlacement";
  if (a2)
  {
    v4 = "Placement";
  }

  v5 = "Automatic";
  if (!a2)
  {
    v5 = "MTLHeapTypeAutomatic";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLIOCommandQueueTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIOCommandQueueTypeSerial";
  if (a2)
  {
    v3 = "Serial";
  }

  v4 = "MTLIOCommandQueueTypeConcurrent";
  if (a2)
  {
    v4 = "Concurrent";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLIOCompressionMethodAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIOCompressionMethodLZBitmap";
  if (a2)
  {
    v3 = "LZBitmap";
  }

  v4 = "MTLIOCompressionMethodLZMA";
  if (a2)
  {
    v4 = "LZMA";
  }

  v5 = "MTLIOCompressionMethodLZ4";
  if (a2)
  {
    v5 = "LZ4";
  }

  if (this != 2)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLIOCompressionMethodZlib";
  if (a2)
  {
    v6 = "Zlib";
  }

  v7 = "MTLIOCompressionMethodLZFSE";
  if (a2)
  {
    v7 = "LZFSE";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}