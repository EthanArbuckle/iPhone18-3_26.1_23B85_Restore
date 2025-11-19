BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = *(a1 + 28);
        v5 = a2 - 14;
        v11 = *(a2 - 28);
        if (v10 >= *a1)
        {
          if (v11 >= v10)
          {
            return 1;
          }

          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, v5);
          if (*(v3 + 28) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v9 = v3 + 14;
          goto LABEL_17;
        }

        if (v11 >= v10)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
          if (*v5 >= *(v3 + 28))
          {
            return 1;
          }

          a1 = v3 + 14;
        }

LABEL_16:
        v9 = v5;
LABEL_17:
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v9);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a2 - 14);
        return 1;
      case 5:
        v6 = a1 + 42;
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a1 + 42);
        v8 = *(a2 - 28);
        v7 = a2 - 14;
        if (v8 >= *(v3 + 84))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 42, v7);
        if (*v6 >= *(v3 + 56))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 28, v3 + 42);
        if (*(v3 + 56) >= *(v3 + 28))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 14, v3 + 28);
        if (*(v3 + 28) >= *v3)
        {
          return 1;
        }

        v9 = v3 + 14;
        a1 = v3;
        goto LABEL_17;
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
      v5 = a2 - 14;
      if (*(a2 - 28) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 28;
  v13 = *(a1 + 28);
  v14 = *(a1 + 56);
  if (v13 < *a1)
  {
    if (v14 >= v13)
    {
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
      if (*(v3 + 56) >= *(v3 + 28))
      {
        goto LABEL_31;
      }

      a1 = v3 + 14;
    }

    v15 = v3 + 28;
    goto LABEL_30;
  }

  if (v14 < v13)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, a1 + 28);
    if (*(v3 + 28) < *v3)
    {
      a1 = v3;
      v15 = v3 + 14;
LABEL_30:
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v15);
    }
  }

LABEL_31:
  v16 = v3 + 42;
  result = 1;
  if (v3 + 42 != a2)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (*v16 < *v12)
      {
        v34 = v16[4];
        v35 = v16[5];
        v36 = *(v16 + 12);
        v30 = *v16;
        v31 = v16[1];
        v32 = v16[2];
        v33 = v16[3];
        v37.n128_u8[0] = 0;
        v39 = 0;
        if (*(v16 + 128) == 1)
        {
          v37 = *(v16 + 104);
          v38 = *(v16 + 15);
          *(v16 + 14) = 0;
          *(v16 + 15) = 0;
          *(v16 + 13) = 0;
          v39 = 1;
        }

        v40.n128_u8[0] = 0;
        v42 = 0;
        if (*(v16 + 160) == 1)
        {
          v40 = *(v16 + 136);
          v41 = *(v16 + 19);
          *(v16 + 18) = 0;
          *(v16 + 19) = 0;
          *(v16 + 17) = 0;
          v42 = 1;
        }

        __p.n128_u8[0] = 0;
        v45 = 0;
        if (*(v16 + 192) == 1)
        {
          __p = *(v16 + 168);
          v44 = *(v16 + 23);
          *(v16 + 22) = 0;
          *(v16 + 23) = 0;
          *(v16 + 21) = 0;
          v45 = 1;
        }

        v46[0] = *(v16 + 200);
        *&v46[1] = *(v16 + 27);
        *(v16 + 26) = 0;
        *(v16 + 27) = 0;
        *(v16 + 25) = 0;
        v20 = v18;
        while (1)
        {
          v21 = v20;
          v22 = v3 + v20;
          v23 = *(v3 + v20 + 528);
          *(v22 + 46) = *(v3 + v20 + 512);
          *(v22 + 47) = v23;
          *(v22 + 96) = *(v3 + v20 + 544);
          v24 = *(v3 + v20 + 464);
          *(v22 + 42) = *(v22 + 28);
          *(v22 + 43) = v24;
          v25 = *(v3 + v20 + 496);
          *(v22 + 44) = *(v3 + v20 + 480);
          *(v22 + 45) = v25;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v20 + 776, (v3 + v20 + 552));
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>((v22 + 808), (v22 + 584));
          v26 = v3 + v21;
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 840, (v3 + v21 + 616));
          v27 = (v3 + v21 + 648);
          std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v3 + v21 + 872));
          *(v26 + 872) = *v27;
          *(v26 + 111) = *(v26 + 83);
          *(v26 + 83) = 0;
          *v27 = 0u;
          if (v21 == -448)
          {
            break;
          }

          v20 = v21 - 224;
          if (v30 >= *(v3 + v21 + 224))
          {
            v28 = v3 + v20 + 672;
            goto LABEL_45;
          }
        }

        v28 = v3;
LABEL_45:
        *(v28 + 64) = v34;
        *(v28 + 80) = v35;
        *(v28 + 96) = v36;
        *v28 = v30;
        *(v28 + 16) = v31;
        *(v28 + 32) = v32;
        *(v28 + 48) = v33;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v21 + 552, &v37);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 584, &v40);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 616, &__p);
        v29 = (v3 + v21 + 648);
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v29);
        *v29 = *&v46[0];
        *(v28 + 208) = *(v46 + 8);
        memset(v46, 0, 24);
        v47 = v46;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v47);
        if (v45 == 1 && __p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        if (v42 == 1 && v40.n128_u64[0])
        {
          v40.n128_u64[1] = v40.n128_u64[0];
          operator delete(v40.n128_u64[0]);
        }

        if (v39 == 1 && SHIBYTE(v38) < 0)
        {
          operator delete(v37.n128_u64[0]);
        }

        if (++v19 == 8)
        {
          return v16 + 14 == a2;
        }
      }

      v12 = v16;
      v18 += 224;
      v16 += 14;
      if (v16 == a2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::CSCppCoreFileExclavesMetadata(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<mapped_memory_core_file_dumped_region_info_t>::__init_with_size[abi:ne200100]<mapped_memory_core_file_dumped_region_info_t*,mapped_memory_core_file_dumped_region_info_t*>(&__p, *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](v19, a5);
  std::__optional_copy_base<CSCppCoreFileRegionsTree,false>::__optional_copy_base[abi:ne200100](v18, a8);
  CSCppCoreFileMetadata::CSCppCoreFileMetadata(a1, a2, &__p, a4, v19, a6, a7, v18);
  if (v18[24] == 1)
  {
    v23 = v18;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v23);
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v19, v19[1]);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  *a1 = &unk_1F5507E50;
  *(a1 + 120) = a9;
  *(a1 + 128) = a10;
  return a1;
}

void sub_1D97C5A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (a13 == 1)
  {
    *(v21 - 72) = &a10;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100]((v21 - 72));
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(&a15, a18);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer64>(char const*,mapped_memory_t *)::{lambda(void)#1},std::allocator<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer64>(char const*,mapped_memory_t *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5508970;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer64>(char const*,mapped_memory_t *)::{lambda(void)#1},std::allocator<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer64>(char const*,mapped_memory_t *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer64,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = a2 - v2;
  if (a2 > v2)
  {
    v5 = a2 - v2;
    do
    {
      v6 = *(a1 + 48);
      if (v5 >= 0x6400000)
      {
        v7 = 104857600;
      }

      else
      {
        v7 = v5;
      }

      *&v16 = v2;
      *(&v16 + 1) = v7;
      v19 = 0;
      v18 = 0;
      v20 = 0;
      v8 = *(a1 + 25);
      v17 = 1;
      v21 = v8;
      memset(v23, 0, sizeof(v23));
      v22 = 0;
      v24 = 3;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v9 = *(a1 + 28);
      v29 = 3;
      v30 = v9;
      LOBYTE(v31) = 0;
      v33 = 0;
      v10 = v7 >> 14;
      v13 = 0;
      std::vector<unsigned short>::vector[abi:ne200100](v14, v7 >> 14);
      v34 = *v14;
      v35 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v36 = 1;
      std::vector<unsigned short>::vector[abi:ne200100](__p, v10);
      v37 = *__p;
      v38 = v12;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
      v39 = 1;
      memset(v40, 0, sizeof(v40));
      std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](v6, &v16);
      v41 = v40;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v41);
      if (v39 == 1 && v37)
      {
        *(&v37 + 1) = v37;
        operator delete(v37);
      }

      if (v36 == 1 && v34)
      {
        *(&v34 + 1) = v34;
        operator delete(v34);
      }

      if (v33 == 1 && v32 < 0)
      {
        operator delete(v31);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v14[0])
      {
        v14[1] = v14[0];
        operator delete(v14[0]);
      }

      v2 += 104857600;
      v5 -= 104857600;
    }

    while (v2 < v3 + *(a1 + 40));
  }
}

void sub_1D97C5D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(*(v41 + 104));
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v7 = a2 - 14;
  v223 = a2 - 42;
  v224 = a2 - 28;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v6 - v8;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 5);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      v6 = a2;
      if (v10 == 2)
      {
        v93 = a2 - 14;
        if (*(a2 - 28) >= *a1)
        {
          return;
        }

LABEL_136:
        v96 = a1;
        v95 = v93;
        goto LABEL_137;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), v7);
      return;
    }

    if (v10 == 5)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), (a1 + 672));
      v98 = *(v6 - 28);
      v97 = v6 - 14;
      if (v98 < *(a1 + 672))
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 672), v97);
        if (*(a1 + 672) < *(a1 + 448))
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 448), (a1 + 672));
          if (*(a1 + 448) < *(a1 + 224))
          {
            std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), (a1 + 448));
            if (*(a1 + 224) < *a1)
            {
              v95 = (a1 + 224);
              v96 = a1;
              goto LABEL_137;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v9 <= 5375)
    {
      if (a4)
      {
        if (a1 != v6)
        {
          v99 = a1 + 224;
          if ((a1 + 224) != a2)
          {
            v100 = 0;
            v101 = a1;
            do
            {
              v102 = v99;
              if (*(v101 + 224) < *v101)
              {
                v103 = *v99;
                v104 = *(v99 + 32);
                v248 = *(v99 + 16);
                v249 = v104;
                v247 = v103;
                v105 = *(v99 + 48);
                v106 = *(v99 + 64);
                v107 = *(v99 + 80);
                v253 = *(v99 + 96);
                v251 = v106;
                v252 = v107;
                v250 = v105;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v101 + 352) == 1)
                {
                  v255 = *(v101 + 344);
                  v254 = *(v101 + 328);
                  *(v101 + 336) = 0;
                  *(v101 + 344) = 0;
                  *(v101 + 328) = 0;
                  v256 = 1;
                }

                v108 = (v101 + 360);
                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v101 + 384) == 1)
                {
                  v257 = *v108;
                  v258 = *(v101 + 376);
                  v108->n128_u64[0] = 0;
                  *(v101 + 368) = 0;
                  *(v101 + 376) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v101 + 416) == 1)
                {
                  __p = *(v101 + 392);
                  v261 = *(v101 + 408);
                  *(v101 + 392) = 0;
                  *(v101 + 400) = 0;
                  *(v101 + 408) = 0;
                  v262 = 1;
                }

                v263[0] = *(v101 + 424);
                *&v263[1] = *(v101 + 440);
                *(v101 + 424) = 0;
                *(v101 + 432) = 0;
                *(v101 + 440) = 0;
                v109 = v100;
                while (1)
                {
                  v110 = v109;
                  v111 = a1 + v109;
                  v112 = *(a1 + v109 + 80);
                  *(v111 + 288) = *(a1 + v109 + 64);
                  *(v111 + 304) = v112;
                  *(v111 + 320) = *(a1 + v109 + 96);
                  v113 = *(a1 + v109 + 16);
                  *(v111 + 224) = *v111;
                  *(v111 + 240) = v113;
                  v114 = *(a1 + v109 + 48);
                  *(v111 + 256) = *(a1 + v109 + 32);
                  *(v111 + 272) = v114;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + v109 + 328, (a1 + v109 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v111 + 360, (v111 + 136));
                  v115 = a1 + v110;
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + v110 + 392, (a1 + v110 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + v110 + 424));
                  *(v115 + 424) = *(v115 + 200);
                  *(v115 + 440) = *(v115 + 216);
                  *(v115 + 208) = 0;
                  *(v115 + 216) = 0;
                  *(v115 + 200) = 0;
                  if (!v110)
                  {
                    break;
                  }

                  v109 = v110 - 224;
                  if (v247 >= *(a1 + v110 - 224))
                  {
                    v116 = a1 + v110;
                    goto LABEL_160;
                  }
                }

                v116 = a1;
LABEL_160:
                v117 = v247;
                v118 = v249;
                *(v116 + 16) = v248;
                *(v116 + 32) = v118;
                *v116 = v117;
                v119 = v250;
                v120 = v251;
                v121 = v252;
                *(v116 + 96) = v253;
                *(v116 + 64) = v120;
                *(v116 + 80) = v121;
                *(v116 + 48) = v119;
                v122 = a1 + v110;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v122 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v122 + 200));
                *(v122 + 200) = *&v263[0];
                *(v116 + 208) = *(v263 + 8);
                memset(v263, 0, 24);
                *&v228 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }

              v99 = v102 + 224;
              v100 += 224;
              v101 = v102;
            }

            while ((v102 + 224) != a2);
          }
        }
      }

      else if (a1 != v6)
      {
        v204 = a1 + 224;
        if ((a1 + 224) != a2)
        {
          v205 = a1 - 224;
          do
          {
            v206 = v204;
            if (*(a1 + 224) < *a1)
            {
              v207 = *v204;
              v208 = *(v204 + 32);
              v248 = *(v204 + 16);
              v249 = v208;
              v247 = v207;
              v209 = *(v204 + 48);
              v210 = *(v204 + 64);
              v211 = *(v204 + 80);
              v253 = *(v204 + 96);
              v251 = v210;
              v252 = v211;
              v250 = v209;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(a1 + 352) == 1)
              {
                v255 = *(a1 + 344);
                v254 = *(a1 + 328);
                *(a1 + 336) = 0;
                *(a1 + 344) = 0;
                *(a1 + 328) = 0;
                v256 = 1;
              }

              v212 = (a1 + 360);
              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(a1 + 384) == 1)
              {
                v257 = *v212;
                v258 = *(a1 + 376);
                v212->n128_u64[0] = 0;
                *(a1 + 368) = 0;
                *(a1 + 376) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(a1 + 416) == 1)
              {
                __p = *(a1 + 392);
                v261 = *(a1 + 408);
                *(a1 + 392) = 0;
                *(a1 + 400) = 0;
                *(a1 + 408) = 0;
                v262 = 1;
              }

              v263[0] = *(a1 + 424);
              *&v263[1] = *(a1 + 440);
              *(a1 + 424) = 0;
              *(a1 + 432) = 0;
              *(a1 + 440) = 0;
              v213 = v205;
              do
              {
                v214 = *(v213 + 304);
                *(v213 + 512) = *(v213 + 288);
                *(v213 + 528) = v214;
                *(v213 + 544) = *(v213 + 320);
                v215 = *(v213 + 240);
                *(v213 + 448) = *(v213 + 224);
                *(v213 + 464) = v215;
                v216 = *(v213 + 272);
                *(v213 + 480) = *(v213 + 256);
                *(v213 + 496) = v216;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, (v213 + 328));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, (v213 + 360));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, (v213 + 392));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
                *(v213 + 648) = *(v213 + 424);
                *(v213 + 664) = *(v213 + 440);
                *(v213 + 424) = 0;
                *(v213 + 432) = 0;
                *(v213 + 440) = 0;
                v217 = *v213;
                v213 -= 224;
              }

              while (v247 < v217);
              v218 = v247;
              v219 = v249;
              *(v213 + 464) = v248;
              *(v213 + 480) = v219;
              *(v213 + 448) = v218;
              v220 = v250;
              v221 = v251;
              v222 = v252;
              *(v213 + 544) = v253;
              *(v213 + 512) = v221;
              *(v213 + 528) = v222;
              *(v213 + 496) = v220;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
              *(v213 + 648) = v263[0];
              *(v213 + 664) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }

            v204 = v206 + 224;
            v205 += 224;
            a1 = v206;
          }

          while ((v206 + 224) != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != v6)
      {
        v123 = v11 >> 1;
        v124 = v11 >> 1;
        do
        {
          v125 = v124;
          if (v123 >= v124)
          {
            v126 = (2 * v124) | 1;
            v127 = (a1 + 224 * v126);
            if (2 * v125 + 2 >= v10)
            {
              v128 = *v127;
            }

            else
            {
              v128 = *v127;
              v129 = *(v127 + 28);
              if (*v127 <= v129)
              {
                v128 = *(v127 + 28);
              }

              if (*v127 < v129)
              {
                v127 += 14;
                v126 = 2 * v125 + 2;
              }
            }

            v130 = a1 + 224 * v125;
            if (v128 >= *v130)
            {
              v131 = *v130;
              v132 = *(v130 + 32);
              v248 = *(v130 + 16);
              v249 = v132;
              v247 = v131;
              v133 = *(v130 + 48);
              v134 = *(v130 + 64);
              v135 = *(v130 + 80);
              v253 = *(v130 + 96);
              v251 = v134;
              v252 = v135;
              v250 = v133;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(v130 + 128) == 1)
              {
                v136 = *(v130 + 104);
                v255 = *(v130 + 120);
                v254 = v136;
                *(v130 + 112) = 0;
                *(v130 + 120) = 0;
                *(v130 + 104) = 0;
                v256 = 1;
              }

              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(v130 + 160) == 1)
              {
                v257 = *(v130 + 136);
                v258 = *(v130 + 152);
                *(v130 + 136) = 0;
                *(v130 + 144) = 0;
                *(v130 + 152) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(v130 + 192) == 1)
              {
                __p = *(v130 + 168);
                v261 = *(v130 + 184);
                *(v130 + 168) = 0;
                *(v130 + 176) = 0;
                *(v130 + 184) = 0;
                v262 = 1;
              }

              v263[0] = *(v130 + 200);
              *&v263[1] = *(v130 + 216);
              *(v130 + 200) = 0;
              *(v130 + 208) = 0;
              *(v130 + 216) = 0;
              do
              {
                v137 = v127;
                v138 = *v127;
                v139 = v127[2];
                *(v130 + 16) = v127[1];
                *(v130 + 32) = v139;
                *v130 = v138;
                v140 = v127[3];
                v141 = v127[4];
                v142 = v127[5];
                *(v130 + 96) = *(v127 + 12);
                *(v130 + 64) = v141;
                *(v130 + 80) = v142;
                *(v130 + 48) = v140;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v130 + 104, (v127 + 104));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 136, (v137 + 136));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 168, (v137 + 168));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v130 + 200));
                *(v130 + 200) = *(v137 + 200);
                *(v130 + 216) = *(v137 + 27);
                *(v137 + 25) = 0;
                *(v137 + 26) = 0;
                *(v137 + 27) = 0;
                if (v123 < v126)
                {
                  break;
                }

                v127 = (a1 + 224 * ((2 * v126) | 1));
                if (2 * v126 + 2 >= v10)
                {
                  v143 = *v127;
                  v126 = (2 * v126) | 1;
                }

                else
                {
                  v143 = *v127;
                  v144 = *(v127 + 28);
                  if (*v127 <= v144)
                  {
                    v143 = *(v127 + 28);
                  }

                  if (*v127 >= v144)
                  {
                    v126 = (2 * v126) | 1;
                  }

                  else
                  {
                    v127 += 14;
                    v126 = 2 * v126 + 2;
                  }
                }

                v130 = v137;
              }

              while (v143 >= v247);
              v145 = v247;
              v146 = v249;
              v137[1] = v248;
              v137[2] = v146;
              *v137 = v145;
              v147 = v250;
              v148 = v251;
              v149 = v252;
              *(v137 + 12) = v253;
              v137[4] = v148;
              v137[5] = v149;
              v137[3] = v147;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v137 + 104, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 136, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 168, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v137 + 25);
              *(v137 + 200) = v263[0];
              *(v137 + 27) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }
          }

          v124 = v125 - 1;
        }

        while (v125);
        v150 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 5);
        do
        {
          v151 = *a1;
          v152 = *(a1 + 32);
          v229 = *(a1 + 16);
          v230 = v152;
          v228 = v151;
          v153 = *(a1 + 48);
          v154 = *(a1 + 64);
          v155 = *(a1 + 80);
          v234 = *(a1 + 96);
          v232 = v154;
          v233 = v155;
          v231 = v153;
          v235.n128_u8[0] = 0;
          v237 = 0;
          if (*(a1 + 128) == 1)
          {
            v156 = *(a1 + 104);
            v236 = *(a1 + 120);
            v235 = v156;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            *(a1 + 104) = 0;
            v237 = 1;
          }

          v238.n128_u8[0] = 0;
          v240 = 0;
          if (*(a1 + 160) == 1)
          {
            v238 = *(a1 + 136);
            v239 = *(a1 + 152);
            *(a1 + 136) = 0;
            *(a1 + 144) = 0;
            *(a1 + 152) = 0;
            v240 = 1;
          }

          v226 = a2;
          v241.n128_u8[0] = 0;
          v243 = 0;
          if (*(a1 + 192) == 1)
          {
            v241 = *(a1 + 168);
            v242 = *(a1 + 184);
            *(a1 + 168) = 0;
            *(a1 + 176) = 0;
            *(a1 + 184) = 0;
            v243 = 1;
          }

          v157 = 0;
          v244 = *(a1 + 200);
          v245 = *(a1 + 216);
          *(a1 + 200) = 0;
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          v158 = a1;
          do
          {
            v159 = v158 + 224 * v157;
            v160 = v159 + 224;
            if (2 * v157 + 2 >= v150)
            {
              v157 = (2 * v157) | 1;
            }

            else if (*(v159 + 224) >= *(v159 + 448))
            {
              v157 = (2 * v157) | 1;
            }

            else
            {
              v160 = v159 + 448;
              v157 = 2 * v157 + 2;
            }

            v161 = *v160;
            v162 = *(v160 + 32);
            *(v158 + 16) = *(v160 + 16);
            *(v158 + 32) = v162;
            *v158 = v161;
            v163 = *(v160 + 48);
            v164 = *(v160 + 64);
            v165 = *(v160 + 80);
            *(v158 + 96) = *(v160 + 96);
            *(v158 + 64) = v164;
            *(v158 + 80) = v165;
            *(v158 + 48) = v163;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v158 + 104, (v160 + 104));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 136, (v160 + 136));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 168, (v160 + 168));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v158 + 200));
            *(v158 + 200) = *(v160 + 200);
            *(v158 + 216) = *(v160 + 216);
            *(v160 + 200) = 0;
            *(v160 + 208) = 0;
            *(v160 + 216) = 0;
            v158 = v160;
          }

          while (v157 <= ((v150 - 2) >> 1));
          v166 = a2 - 14;
          a2 -= 14;
          if (v160 == v226 - 14)
          {
            v198 = v228;
            v199 = v230;
            *(v160 + 16) = v229;
            *(v160 + 32) = v199;
            *v160 = v198;
            v200 = v231;
            v201 = v232;
            v202 = v233;
            *(v160 + 96) = v234;
            *(v160 + 64) = v201;
            *(v160 + 80) = v202;
            *(v160 + 48) = v200;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            *(v160 + 200) = v244;
            *(v160 + 216) = v245;
            v244 = 0uLL;
            v245 = 0;
          }

          else
          {
            v167 = *v166;
            v168 = *(v226 - 12);
            *(v160 + 16) = *(v226 - 13);
            *(v160 + 32) = v168;
            *v160 = v167;
            v169 = *(v226 - 11);
            v170 = *(v226 - 10);
            v171 = *(v226 - 9);
            *(v160 + 96) = *(v226 - 16);
            *(v160 + 64) = v170;
            *(v160 + 80) = v171;
            *(v160 + 48) = v169;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v226 - 120));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v226 - 88));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v226 - 56));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            v172 = v226 - 3;
            *(v160 + 200) = *(v226 - 24);
            *(v160 + 216) = *(v226 - 1);
            *v172 = 0;
            v172[1] = 0;
            v172[2] = 0;
            v173 = v228;
            v174 = v230;
            *(v226 - 13) = v229;
            *(v226 - 12) = v174;
            *a2 = v173;
            v175 = v231;
            v176 = v232;
            v177 = v233;
            *(v226 - 16) = v234;
            *(v226 - 10) = v176;
            *(v226 - 9) = v177;
            *(v226 - 11) = v175;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v226 - 120, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 88, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 56, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v226 - 3);
            *(v226 - 24) = v244;
            *(v226 - 1) = v245;
            v244 = 0uLL;
            v245 = 0;
            v178 = v160 + 224 - a1;
            if (v178 >= 225)
            {
              v179 = (0x6DB6DB6DB6DB6DB7 * (v178 >> 5) - 2) >> 1;
              v180 = (a1 + 224 * v179);
              if (*v180 < *v160)
              {
                v181 = *v160;
                v182 = *(v160 + 32);
                v248 = *(v160 + 16);
                v249 = v182;
                v247 = v181;
                v183 = *(v160 + 48);
                v184 = *(v160 + 64);
                v185 = *(v160 + 80);
                v253 = *(v160 + 96);
                v251 = v184;
                v252 = v185;
                v250 = v183;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v160 + 128) == 1)
                {
                  v186 = *(v160 + 104);
                  v255 = *(v160 + 120);
                  v254 = v186;
                  *(v160 + 112) = 0;
                  *(v160 + 120) = 0;
                  *(v160 + 104) = 0;
                  v256 = 1;
                }

                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v160 + 160) == 1)
                {
                  v257 = *(v160 + 136);
                  v258 = *(v160 + 152);
                  *(v160 + 136) = 0;
                  *(v160 + 144) = 0;
                  *(v160 + 152) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v160 + 192) == 1)
                {
                  __p = *(v160 + 168);
                  v261 = *(v160 + 184);
                  *(v160 + 168) = 0;
                  *(v160 + 176) = 0;
                  *(v160 + 184) = 0;
                  v262 = 1;
                }

                v263[0] = *(v160 + 200);
                *&v263[1] = *(v160 + 216);
                *(v160 + 200) = 0;
                *(v160 + 208) = 0;
                *(v160 + 216) = 0;
                do
                {
                  v187 = v180;
                  v188 = *v180;
                  v189 = v180[2];
                  *(v160 + 16) = v180[1];
                  *(v160 + 32) = v189;
                  *v160 = v188;
                  v190 = v180[3];
                  v191 = v180[4];
                  v192 = v180[5];
                  *(v160 + 96) = *(v180 + 12);
                  *(v160 + 64) = v191;
                  *(v160 + 80) = v192;
                  *(v160 + 48) = v190;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v180 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v187 + 136));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v187 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
                  *(v160 + 200) = *(v187 + 200);
                  *(v160 + 216) = *(v187 + 27);
                  *(v187 + 25) = 0;
                  *(v187 + 26) = 0;
                  *(v187 + 27) = 0;
                  if (!v179)
                  {
                    break;
                  }

                  v179 = (v179 - 1) >> 1;
                  v180 = (a1 + 224 * v179);
                  v160 = v187;
                }

                while (*v180 < v247);
                v193 = v247;
                v194 = v249;
                v187[1] = v248;
                v187[2] = v194;
                *v187 = v193;
                v195 = v250;
                v196 = v251;
                v197 = v252;
                *(v187 + 12) = v253;
                v187[4] = v196;
                v187[5] = v197;
                v187[3] = v195;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v187 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v187 + 25);
                *(v187 + 200) = v263[0];
                *(v187 + 27) = *&v263[1];
                memset(v263, 0, 24);
                v246 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v246);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }
            }
          }

          *&v247 = &v244;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v247);
          if (v243 == 1 && v241.n128_u64[0])
          {
            v241.n128_u64[1] = v241.n128_u64[0];
            operator delete(v241.n128_u64[0]);
          }

          if (v240 == 1 && v238.n128_u64[0])
          {
            v238.n128_u64[1] = v238.n128_u64[0];
            operator delete(v238.n128_u64[0]);
          }

          if (v237 == 1 && SHIBYTE(v236) < 0)
          {
            operator delete(v235.n128_u64[0]);
          }
        }

        while (v150-- > 2);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = (a1 + 224 * (v10 >> 1));
    v14 = *v7;
    if (v9 > 0x7000)
    {
      v15 = *v13;
      if (*v13 >= *a1)
      {
        if (v14 < v15)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v7);
          if (*v13 < *a1)
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 < v15)
        {
          goto LABEL_16;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v13);
        if (*v7 < *v13)
        {
          v16 = v13;
LABEL_16:
          v17 = a2 - 14;
LABEL_25:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v16, v17);
        }
      }

      v21 = a1 + 224 * v12;
      v24 = *(v21 - 224);
      v23 = (v21 - 224);
      v22 = v24;
      v25 = *v224;
      if (v24 >= *(a1 + 224))
      {
        if (v25 < v22)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v224);
          if (*v23 < *(a1 + 224))
          {
            v26 = (a1 + 224);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 224);
        if (v25 < v22)
        {
          goto LABEL_30;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v23);
        if (*v224 < *v23)
        {
          v26 = v23;
LABEL_30:
          v27 = a2 - 28;
LABEL_37:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v27);
        }
      }

      v28 = a1 + 224 * v12;
      v31 = *(v28 + 224);
      v30 = (v28 + 224);
      v29 = v31;
      v32 = *v223;
      if (v31 >= *(a1 + 448))
      {
        if (v32 < v29)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v30, v223);
          if (*v30 < *(a1 + 448))
          {
            v33 = (a1 + 448);
            v34 = v30;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v33 = (a1 + 448);
        if (v32 < v29)
        {
          goto LABEL_42;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v30);
        if (*v223 < *v30)
        {
          v33 = v30;
LABEL_42:
          v34 = a2 - 42;
LABEL_46:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v34);
        }
      }

      v35 = *v13;
      v36 = *v30;
      if (*v13 >= *v23)
      {
        if (v36 < v35)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v30);
          if (*v13 < *v23)
          {
            v37 = v23;
            v38 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v37 = v23;
        if (v36 < v35)
        {
          goto LABEL_51;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v13);
        if (*v30 < *v13)
        {
          v37 = v13;
LABEL_51:
          v38 = v30;
LABEL_55:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v37, v38);
        }
      }

      v19 = a1;
      v20 = v13;
      goto LABEL_57;
    }

    v18 = *a1;
    if (*a1 >= *v13)
    {
      if (v14 >= v18)
      {
        goto LABEL_58;
      }

      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v7);
      if (*a1 >= *v13)
      {
        goto LABEL_58;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, a1);
        if (*v7 >= *a1)
        {
          goto LABEL_58;
        }

        v19 = a1;
      }

      v20 = a2 - 14;
    }

LABEL_57:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v19, v20);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 224) < *a1)
    {
      v39 = *a1;
      v40 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v40;
      v247 = v39;
      v41 = *(a1 + 48);
      v42 = *(a1 + 64);
      v43 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v42;
      v252 = v43;
      v250 = v41;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v44 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v44;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v45 = 0;
      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v46 = v247;
      do
      {
        v47 = *(a1 + v45 + 224);
        v45 += 224;
      }

      while (v47 < v247);
      v48 = a1 + v45;
      if (v45 == 224)
      {
        v6 = a2;
        do
        {
          if (v48 >= v6)
          {
            break;
          }

          v50 = *(v6 - 28);
          v6 -= 14;
        }

        while (v50 >= v247);
      }

      else
      {
        do
        {
          v49 = *(v6 - 28);
          v6 -= 14;
        }

        while (v49 >= v247);
      }

      v8 = a1 + v45;
      if (v48 < v6)
      {
        v51 = v6;
        do
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v51);
          do
          {
            v52 = *(v8 + 224);
            v8 += 224;
          }

          while (v52 < v46);
          do
          {
            v53 = *(v51 - 28);
            v51 -= 14;
          }

          while (v53 >= v46);
        }

        while (v8 < v51);
      }

      v54 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v55 = *v54;
        v56 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v56;
        *a1 = v55;
        v57 = *(v8 - 176);
        v58 = *(v8 - 160);
        v59 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v58;
        *(a1 + 80) = v59;
        *(a1 + 48) = v57;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v60 = v247;
      v61 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v61;
      *v54 = v60;
      v62 = v250;
      v63 = v251;
      v64 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v63;
      *(v8 - 144) = v64;
      *(v8 - 176) = v62;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

      v65 = v48 >= v6;
      v6 = a2;
      if (!v65)
      {
        goto LABEL_95;
      }

      v66 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(a1, (v8 - 224));
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(v8, a2))
      {
        a2 = (v8 - 224);
        if (!v66)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v66)
      {
LABEL_95:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(a1, v8 - 224, a3, a4 & 1);
        goto LABEL_96;
      }
    }

    else
    {
      v67 = *a1;
      v68 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v68;
      v247 = v67;
      v69 = *(a1 + 48);
      v70 = *(a1 + 64);
      v71 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v70;
      v252 = v71;
      v250 = v69;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v72 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v72;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v73 = v247;
      if (v247 >= *v7)
      {
        v75 = a1 + 224;
        do
        {
          v8 = v75;
          if (v75 >= v6)
          {
            break;
          }

          v75 += 224;
        }

        while (v247 >= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v74 = *(v8 + 224);
          v8 += 224;
        }

        while (v247 >= v74);
      }

      v76 = v6;
      if (v8 < v6)
      {
        v76 = v6;
        do
        {
          v77 = *(v76 - 28);
          v76 -= 14;
        }

        while (v247 < v77);
      }

      while (v8 < v76)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v76);
        do
        {
          v78 = *(v8 + 224);
          v8 += 224;
        }

        while (v73 >= v78);
        do
        {
          v79 = *(v76 - 28);
          v76 -= 14;
        }

        while (v73 < v79);
      }

      v80 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v81 = *v80;
        v82 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v82;
        *a1 = v81;
        v83 = *(v8 - 176);
        v84 = *(v8 - 160);
        v85 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v84;
        *(a1 + 80) = v85;
        *(a1 + 48) = v83;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v86 = v247;
      v87 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v87;
      *v80 = v86;
      v88 = v250;
      v89 = v251;
      v90 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v89;
      *(v8 - 144) = v90;
      *(v8 - 176) = v88;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

LABEL_96:
      a4 = 0;
    }
  }

  v91 = *(a1 + 224);
  v94 = *(v6 - 28);
  v93 = v6 - 14;
  v92 = v94;
  if (v91 < *a1)
  {
    if (v92 < v91)
    {
      goto LABEL_136;
    }

    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, (a1 + 224));
    if (*v93 >= *(a1 + 224))
    {
      return;
    }

    v95 = v93;
    v96 = (a1 + 224);
LABEL_137:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v96, v95);
    return;
  }

  if (v92 < v91)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), v93);
    if (*(a1 + 224) < *a1)
    {
      v96 = a1;
      v95 = (a1 + 224);
      goto LABEL_137;
    }
  }
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = *(a1 + 28);
        v5 = a2 - 14;
        v11 = *(a2 - 28);
        if (v10 >= *a1)
        {
          if (v11 >= v10)
          {
            return 1;
          }

          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, v5);
          if (*(v3 + 28) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v9 = v3 + 14;
          goto LABEL_17;
        }

        if (v11 >= v10)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
          if (*v5 >= *(v3 + 28))
          {
            return 1;
          }

          a1 = v3 + 14;
        }

LABEL_16:
        v9 = v5;
LABEL_17:
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v9);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a2 - 14);
        return 1;
      case 5:
        v6 = a1 + 42;
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a1 + 42);
        v8 = *(a2 - 28);
        v7 = a2 - 14;
        if (v8 >= *(v3 + 84))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 42, v7);
        if (*v6 >= *(v3 + 56))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 28, v3 + 42);
        if (*(v3 + 56) >= *(v3 + 28))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 14, v3 + 28);
        if (*(v3 + 28) >= *v3)
        {
          return 1;
        }

        v9 = v3 + 14;
        a1 = v3;
        goto LABEL_17;
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
      v5 = a2 - 14;
      if (*(a2 - 28) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 28;
  v13 = *(a1 + 28);
  v14 = *(a1 + 56);
  if (v13 < *a1)
  {
    if (v14 >= v13)
    {
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
      if (*(v3 + 56) >= *(v3 + 28))
      {
        goto LABEL_31;
      }

      a1 = v3 + 14;
    }

    v15 = v3 + 28;
    goto LABEL_30;
  }

  if (v14 < v13)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, a1 + 28);
    if (*(v3 + 28) < *v3)
    {
      a1 = v3;
      v15 = v3 + 14;
LABEL_30:
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v15);
    }
  }

LABEL_31:
  v16 = v3 + 42;
  result = 1;
  if (v3 + 42 != a2)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (*v16 < *v12)
      {
        v34 = v16[4];
        v35 = v16[5];
        v36 = *(v16 + 12);
        v30 = *v16;
        v31 = v16[1];
        v32 = v16[2];
        v33 = v16[3];
        v37.n128_u8[0] = 0;
        v39 = 0;
        if (*(v16 + 128) == 1)
        {
          v37 = *(v16 + 104);
          v38 = *(v16 + 15);
          *(v16 + 14) = 0;
          *(v16 + 15) = 0;
          *(v16 + 13) = 0;
          v39 = 1;
        }

        v40.n128_u8[0] = 0;
        v42 = 0;
        if (*(v16 + 160) == 1)
        {
          v40 = *(v16 + 136);
          v41 = *(v16 + 19);
          *(v16 + 18) = 0;
          *(v16 + 19) = 0;
          *(v16 + 17) = 0;
          v42 = 1;
        }

        __p.n128_u8[0] = 0;
        v45 = 0;
        if (*(v16 + 192) == 1)
        {
          __p = *(v16 + 168);
          v44 = *(v16 + 23);
          *(v16 + 22) = 0;
          *(v16 + 23) = 0;
          *(v16 + 21) = 0;
          v45 = 1;
        }

        v46[0] = *(v16 + 200);
        *&v46[1] = *(v16 + 27);
        *(v16 + 26) = 0;
        *(v16 + 27) = 0;
        *(v16 + 25) = 0;
        v20 = v18;
        while (1)
        {
          v21 = v20;
          v22 = v3 + v20;
          v23 = *(v3 + v20 + 528);
          *(v22 + 46) = *(v3 + v20 + 512);
          *(v22 + 47) = v23;
          *(v22 + 96) = *(v3 + v20 + 544);
          v24 = *(v3 + v20 + 464);
          *(v22 + 42) = *(v22 + 28);
          *(v22 + 43) = v24;
          v25 = *(v3 + v20 + 496);
          *(v22 + 44) = *(v3 + v20 + 480);
          *(v22 + 45) = v25;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v20 + 776, (v3 + v20 + 552));
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>((v22 + 808), (v22 + 584));
          v26 = v3 + v21;
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 840, (v3 + v21 + 616));
          v27 = (v3 + v21 + 648);
          std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v3 + v21 + 872));
          *(v26 + 872) = *v27;
          *(v26 + 111) = *(v26 + 83);
          *(v26 + 83) = 0;
          *v27 = 0u;
          if (v21 == -448)
          {
            break;
          }

          v20 = v21 - 224;
          if (v30 >= *(v3 + v21 + 224))
          {
            v28 = v3 + v20 + 672;
            goto LABEL_45;
          }
        }

        v28 = v3;
LABEL_45:
        *(v28 + 64) = v34;
        *(v28 + 80) = v35;
        *(v28 + 96) = v36;
        *v28 = v30;
        *(v28 + 16) = v31;
        *(v28 + 32) = v32;
        *(v28 + 48) = v33;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v21 + 552, &v37);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 584, &v40);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 616, &__p);
        v29 = (v3 + v21 + 648);
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v29);
        *v29 = *&v46[0];
        *(v28 + 208) = *(v46 + 8);
        memset(v46, 0, 24);
        v47 = v46;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v47);
        if (v45 == 1 && __p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        if (v42 == 1 && v40.n128_u64[0])
        {
          v40.n128_u64[1] = v40.n128_u64[0];
          operator delete(v40.n128_u64[0]);
        }

        if (v39 == 1 && SHIBYTE(v38) < 0)
        {
          operator delete(v37.n128_u64[0]);
        }

        if (++v19 == 8)
        {
          return v16 + 14 == a2;
        }
      }

      v12 = v16;
      v18 += 224;
      v16 += 14;
      if (v16 == a2)
      {
        return 1;
      }
    }
  }

  return result;
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v7 = a2 - 14;
  v223 = a2 - 42;
  v224 = a2 - 28;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v6 - v8;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 5);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      v6 = a2;
      if (v10 == 2)
      {
        v93 = a2 - 14;
        if (*(a2 - 28) >= *a1)
        {
          return;
        }

LABEL_136:
        v96 = a1;
        v95 = v93;
        goto LABEL_137;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), v7);
      return;
    }

    if (v10 == 5)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), (a1 + 672));
      v98 = *(v6 - 28);
      v97 = v6 - 14;
      if (v98 < *(a1 + 672))
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 672), v97);
        if (*(a1 + 672) < *(a1 + 448))
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 448), (a1 + 672));
          if (*(a1 + 448) < *(a1 + 224))
          {
            std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), (a1 + 448));
            if (*(a1 + 224) < *a1)
            {
              v95 = (a1 + 224);
              v96 = a1;
              goto LABEL_137;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v9 <= 5375)
    {
      if (a4)
      {
        if (a1 != v6)
        {
          v99 = a1 + 224;
          if ((a1 + 224) != a2)
          {
            v100 = 0;
            v101 = a1;
            do
            {
              v102 = v99;
              if (*(v101 + 224) < *v101)
              {
                v103 = *v99;
                v104 = *(v99 + 32);
                v248 = *(v99 + 16);
                v249 = v104;
                v247 = v103;
                v105 = *(v99 + 48);
                v106 = *(v99 + 64);
                v107 = *(v99 + 80);
                v253 = *(v99 + 96);
                v251 = v106;
                v252 = v107;
                v250 = v105;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v101 + 352) == 1)
                {
                  v255 = *(v101 + 344);
                  v254 = *(v101 + 328);
                  *(v101 + 336) = 0;
                  *(v101 + 344) = 0;
                  *(v101 + 328) = 0;
                  v256 = 1;
                }

                v108 = (v101 + 360);
                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v101 + 384) == 1)
                {
                  v257 = *v108;
                  v258 = *(v101 + 376);
                  v108->n128_u64[0] = 0;
                  *(v101 + 368) = 0;
                  *(v101 + 376) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v101 + 416) == 1)
                {
                  __p = *(v101 + 392);
                  v261 = *(v101 + 408);
                  *(v101 + 392) = 0;
                  *(v101 + 400) = 0;
                  *(v101 + 408) = 0;
                  v262 = 1;
                }

                v263[0] = *(v101 + 424);
                *&v263[1] = *(v101 + 440);
                *(v101 + 424) = 0;
                *(v101 + 432) = 0;
                *(v101 + 440) = 0;
                v109 = v100;
                while (1)
                {
                  v110 = v109;
                  v111 = a1 + v109;
                  v112 = *(a1 + v109 + 80);
                  *(v111 + 288) = *(a1 + v109 + 64);
                  *(v111 + 304) = v112;
                  *(v111 + 320) = *(a1 + v109 + 96);
                  v113 = *(a1 + v109 + 16);
                  *(v111 + 224) = *v111;
                  *(v111 + 240) = v113;
                  v114 = *(a1 + v109 + 48);
                  *(v111 + 256) = *(a1 + v109 + 32);
                  *(v111 + 272) = v114;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + v109 + 328, (a1 + v109 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v111 + 360, (v111 + 136));
                  v115 = a1 + v110;
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + v110 + 392, (a1 + v110 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + v110 + 424));
                  *(v115 + 424) = *(v115 + 200);
                  *(v115 + 440) = *(v115 + 216);
                  *(v115 + 208) = 0;
                  *(v115 + 216) = 0;
                  *(v115 + 200) = 0;
                  if (!v110)
                  {
                    break;
                  }

                  v109 = v110 - 224;
                  if (v247 >= *(a1 + v110 - 224))
                  {
                    v116 = a1 + v110;
                    goto LABEL_160;
                  }
                }

                v116 = a1;
LABEL_160:
                v117 = v247;
                v118 = v249;
                *(v116 + 16) = v248;
                *(v116 + 32) = v118;
                *v116 = v117;
                v119 = v250;
                v120 = v251;
                v121 = v252;
                *(v116 + 96) = v253;
                *(v116 + 64) = v120;
                *(v116 + 80) = v121;
                *(v116 + 48) = v119;
                v122 = a1 + v110;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v122 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v122 + 200));
                *(v122 + 200) = *&v263[0];
                *(v116 + 208) = *(v263 + 8);
                memset(v263, 0, 24);
                *&v228 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }

              v99 = v102 + 224;
              v100 += 224;
              v101 = v102;
            }

            while ((v102 + 224) != a2);
          }
        }
      }

      else if (a1 != v6)
      {
        v204 = a1 + 224;
        if ((a1 + 224) != a2)
        {
          v205 = a1 - 224;
          do
          {
            v206 = v204;
            if (*(a1 + 224) < *a1)
            {
              v207 = *v204;
              v208 = *(v204 + 32);
              v248 = *(v204 + 16);
              v249 = v208;
              v247 = v207;
              v209 = *(v204 + 48);
              v210 = *(v204 + 64);
              v211 = *(v204 + 80);
              v253 = *(v204 + 96);
              v251 = v210;
              v252 = v211;
              v250 = v209;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(a1 + 352) == 1)
              {
                v255 = *(a1 + 344);
                v254 = *(a1 + 328);
                *(a1 + 336) = 0;
                *(a1 + 344) = 0;
                *(a1 + 328) = 0;
                v256 = 1;
              }

              v212 = (a1 + 360);
              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(a1 + 384) == 1)
              {
                v257 = *v212;
                v258 = *(a1 + 376);
                v212->n128_u64[0] = 0;
                *(a1 + 368) = 0;
                *(a1 + 376) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(a1 + 416) == 1)
              {
                __p = *(a1 + 392);
                v261 = *(a1 + 408);
                *(a1 + 392) = 0;
                *(a1 + 400) = 0;
                *(a1 + 408) = 0;
                v262 = 1;
              }

              v263[0] = *(a1 + 424);
              *&v263[1] = *(a1 + 440);
              *(a1 + 424) = 0;
              *(a1 + 432) = 0;
              *(a1 + 440) = 0;
              v213 = v205;
              do
              {
                v214 = *(v213 + 304);
                *(v213 + 512) = *(v213 + 288);
                *(v213 + 528) = v214;
                *(v213 + 544) = *(v213 + 320);
                v215 = *(v213 + 240);
                *(v213 + 448) = *(v213 + 224);
                *(v213 + 464) = v215;
                v216 = *(v213 + 272);
                *(v213 + 480) = *(v213 + 256);
                *(v213 + 496) = v216;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, (v213 + 328));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, (v213 + 360));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, (v213 + 392));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
                *(v213 + 648) = *(v213 + 424);
                *(v213 + 664) = *(v213 + 440);
                *(v213 + 424) = 0;
                *(v213 + 432) = 0;
                *(v213 + 440) = 0;
                v217 = *v213;
                v213 -= 224;
              }

              while (v247 < v217);
              v218 = v247;
              v219 = v249;
              *(v213 + 464) = v248;
              *(v213 + 480) = v219;
              *(v213 + 448) = v218;
              v220 = v250;
              v221 = v251;
              v222 = v252;
              *(v213 + 544) = v253;
              *(v213 + 512) = v221;
              *(v213 + 528) = v222;
              *(v213 + 496) = v220;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
              *(v213 + 648) = v263[0];
              *(v213 + 664) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }

            v204 = v206 + 224;
            v205 += 224;
            a1 = v206;
          }

          while ((v206 + 224) != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != v6)
      {
        v123 = v11 >> 1;
        v124 = v11 >> 1;
        do
        {
          v125 = v124;
          if (v123 >= v124)
          {
            v126 = (2 * v124) | 1;
            v127 = (a1 + 224 * v126);
            if (2 * v125 + 2 >= v10)
            {
              v128 = *v127;
            }

            else
            {
              v128 = *v127;
              v129 = *(v127 + 28);
              if (*v127 <= v129)
              {
                v128 = *(v127 + 28);
              }

              if (*v127 < v129)
              {
                v127 += 14;
                v126 = 2 * v125 + 2;
              }
            }

            v130 = a1 + 224 * v125;
            if (v128 >= *v130)
            {
              v131 = *v130;
              v132 = *(v130 + 32);
              v248 = *(v130 + 16);
              v249 = v132;
              v247 = v131;
              v133 = *(v130 + 48);
              v134 = *(v130 + 64);
              v135 = *(v130 + 80);
              v253 = *(v130 + 96);
              v251 = v134;
              v252 = v135;
              v250 = v133;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(v130 + 128) == 1)
              {
                v136 = *(v130 + 104);
                v255 = *(v130 + 120);
                v254 = v136;
                *(v130 + 112) = 0;
                *(v130 + 120) = 0;
                *(v130 + 104) = 0;
                v256 = 1;
              }

              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(v130 + 160) == 1)
              {
                v257 = *(v130 + 136);
                v258 = *(v130 + 152);
                *(v130 + 136) = 0;
                *(v130 + 144) = 0;
                *(v130 + 152) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(v130 + 192) == 1)
              {
                __p = *(v130 + 168);
                v261 = *(v130 + 184);
                *(v130 + 168) = 0;
                *(v130 + 176) = 0;
                *(v130 + 184) = 0;
                v262 = 1;
              }

              v263[0] = *(v130 + 200);
              *&v263[1] = *(v130 + 216);
              *(v130 + 200) = 0;
              *(v130 + 208) = 0;
              *(v130 + 216) = 0;
              do
              {
                v137 = v127;
                v138 = *v127;
                v139 = v127[2];
                *(v130 + 16) = v127[1];
                *(v130 + 32) = v139;
                *v130 = v138;
                v140 = v127[3];
                v141 = v127[4];
                v142 = v127[5];
                *(v130 + 96) = *(v127 + 12);
                *(v130 + 64) = v141;
                *(v130 + 80) = v142;
                *(v130 + 48) = v140;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v130 + 104, (v127 + 104));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 136, (v137 + 136));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 168, (v137 + 168));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v130 + 200));
                *(v130 + 200) = *(v137 + 200);
                *(v130 + 216) = *(v137 + 27);
                *(v137 + 25) = 0;
                *(v137 + 26) = 0;
                *(v137 + 27) = 0;
                if (v123 < v126)
                {
                  break;
                }

                v127 = (a1 + 224 * ((2 * v126) | 1));
                if (2 * v126 + 2 >= v10)
                {
                  v143 = *v127;
                  v126 = (2 * v126) | 1;
                }

                else
                {
                  v143 = *v127;
                  v144 = *(v127 + 28);
                  if (*v127 <= v144)
                  {
                    v143 = *(v127 + 28);
                  }

                  if (*v127 >= v144)
                  {
                    v126 = (2 * v126) | 1;
                  }

                  else
                  {
                    v127 += 14;
                    v126 = 2 * v126 + 2;
                  }
                }

                v130 = v137;
              }

              while (v143 >= v247);
              v145 = v247;
              v146 = v249;
              v137[1] = v248;
              v137[2] = v146;
              *v137 = v145;
              v147 = v250;
              v148 = v251;
              v149 = v252;
              *(v137 + 12) = v253;
              v137[4] = v148;
              v137[5] = v149;
              v137[3] = v147;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v137 + 104, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 136, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 168, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v137 + 25);
              *(v137 + 200) = v263[0];
              *(v137 + 27) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }
          }

          v124 = v125 - 1;
        }

        while (v125);
        v150 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 5);
        do
        {
          v151 = *a1;
          v152 = *(a1 + 32);
          v229 = *(a1 + 16);
          v230 = v152;
          v228 = v151;
          v153 = *(a1 + 48);
          v154 = *(a1 + 64);
          v155 = *(a1 + 80);
          v234 = *(a1 + 96);
          v232 = v154;
          v233 = v155;
          v231 = v153;
          v235.n128_u8[0] = 0;
          v237 = 0;
          if (*(a1 + 128) == 1)
          {
            v156 = *(a1 + 104);
            v236 = *(a1 + 120);
            v235 = v156;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            *(a1 + 104) = 0;
            v237 = 1;
          }

          v238.n128_u8[0] = 0;
          v240 = 0;
          if (*(a1 + 160) == 1)
          {
            v238 = *(a1 + 136);
            v239 = *(a1 + 152);
            *(a1 + 136) = 0;
            *(a1 + 144) = 0;
            *(a1 + 152) = 0;
            v240 = 1;
          }

          v226 = a2;
          v241.n128_u8[0] = 0;
          v243 = 0;
          if (*(a1 + 192) == 1)
          {
            v241 = *(a1 + 168);
            v242 = *(a1 + 184);
            *(a1 + 168) = 0;
            *(a1 + 176) = 0;
            *(a1 + 184) = 0;
            v243 = 1;
          }

          v157 = 0;
          v244 = *(a1 + 200);
          v245 = *(a1 + 216);
          *(a1 + 200) = 0;
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          v158 = a1;
          do
          {
            v159 = v158 + 224 * v157;
            v160 = v159 + 224;
            if (2 * v157 + 2 >= v150)
            {
              v157 = (2 * v157) | 1;
            }

            else if (*(v159 + 224) >= *(v159 + 448))
            {
              v157 = (2 * v157) | 1;
            }

            else
            {
              v160 = v159 + 448;
              v157 = 2 * v157 + 2;
            }

            v161 = *v160;
            v162 = *(v160 + 32);
            *(v158 + 16) = *(v160 + 16);
            *(v158 + 32) = v162;
            *v158 = v161;
            v163 = *(v160 + 48);
            v164 = *(v160 + 64);
            v165 = *(v160 + 80);
            *(v158 + 96) = *(v160 + 96);
            *(v158 + 64) = v164;
            *(v158 + 80) = v165;
            *(v158 + 48) = v163;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v158 + 104, (v160 + 104));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 136, (v160 + 136));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 168, (v160 + 168));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v158 + 200));
            *(v158 + 200) = *(v160 + 200);
            *(v158 + 216) = *(v160 + 216);
            *(v160 + 200) = 0;
            *(v160 + 208) = 0;
            *(v160 + 216) = 0;
            v158 = v160;
          }

          while (v157 <= ((v150 - 2) >> 1));
          v166 = a2 - 14;
          a2 -= 14;
          if (v160 == v226 - 14)
          {
            v198 = v228;
            v199 = v230;
            *(v160 + 16) = v229;
            *(v160 + 32) = v199;
            *v160 = v198;
            v200 = v231;
            v201 = v232;
            v202 = v233;
            *(v160 + 96) = v234;
            *(v160 + 64) = v201;
            *(v160 + 80) = v202;
            *(v160 + 48) = v200;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            *(v160 + 200) = v244;
            *(v160 + 216) = v245;
            v244 = 0uLL;
            v245 = 0;
          }

          else
          {
            v167 = *v166;
            v168 = *(v226 - 12);
            *(v160 + 16) = *(v226 - 13);
            *(v160 + 32) = v168;
            *v160 = v167;
            v169 = *(v226 - 11);
            v170 = *(v226 - 10);
            v171 = *(v226 - 9);
            *(v160 + 96) = *(v226 - 16);
            *(v160 + 64) = v170;
            *(v160 + 80) = v171;
            *(v160 + 48) = v169;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v226 - 120));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v226 - 88));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v226 - 56));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            v172 = v226 - 3;
            *(v160 + 200) = *(v226 - 24);
            *(v160 + 216) = *(v226 - 1);
            *v172 = 0;
            v172[1] = 0;
            v172[2] = 0;
            v173 = v228;
            v174 = v230;
            *(v226 - 13) = v229;
            *(v226 - 12) = v174;
            *a2 = v173;
            v175 = v231;
            v176 = v232;
            v177 = v233;
            *(v226 - 16) = v234;
            *(v226 - 10) = v176;
            *(v226 - 9) = v177;
            *(v226 - 11) = v175;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v226 - 120, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 88, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 56, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v226 - 3);
            *(v226 - 24) = v244;
            *(v226 - 1) = v245;
            v244 = 0uLL;
            v245 = 0;
            v178 = v160 + 224 - a1;
            if (v178 >= 225)
            {
              v179 = (0x6DB6DB6DB6DB6DB7 * (v178 >> 5) - 2) >> 1;
              v180 = (a1 + 224 * v179);
              if (*v180 < *v160)
              {
                v181 = *v160;
                v182 = *(v160 + 32);
                v248 = *(v160 + 16);
                v249 = v182;
                v247 = v181;
                v183 = *(v160 + 48);
                v184 = *(v160 + 64);
                v185 = *(v160 + 80);
                v253 = *(v160 + 96);
                v251 = v184;
                v252 = v185;
                v250 = v183;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v160 + 128) == 1)
                {
                  v186 = *(v160 + 104);
                  v255 = *(v160 + 120);
                  v254 = v186;
                  *(v160 + 112) = 0;
                  *(v160 + 120) = 0;
                  *(v160 + 104) = 0;
                  v256 = 1;
                }

                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v160 + 160) == 1)
                {
                  v257 = *(v160 + 136);
                  v258 = *(v160 + 152);
                  *(v160 + 136) = 0;
                  *(v160 + 144) = 0;
                  *(v160 + 152) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v160 + 192) == 1)
                {
                  __p = *(v160 + 168);
                  v261 = *(v160 + 184);
                  *(v160 + 168) = 0;
                  *(v160 + 176) = 0;
                  *(v160 + 184) = 0;
                  v262 = 1;
                }

                v263[0] = *(v160 + 200);
                *&v263[1] = *(v160 + 216);
                *(v160 + 200) = 0;
                *(v160 + 208) = 0;
                *(v160 + 216) = 0;
                do
                {
                  v187 = v180;
                  v188 = *v180;
                  v189 = v180[2];
                  *(v160 + 16) = v180[1];
                  *(v160 + 32) = v189;
                  *v160 = v188;
                  v190 = v180[3];
                  v191 = v180[4];
                  v192 = v180[5];
                  *(v160 + 96) = *(v180 + 12);
                  *(v160 + 64) = v191;
                  *(v160 + 80) = v192;
                  *(v160 + 48) = v190;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v180 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v187 + 136));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v187 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
                  *(v160 + 200) = *(v187 + 200);
                  *(v160 + 216) = *(v187 + 27);
                  *(v187 + 25) = 0;
                  *(v187 + 26) = 0;
                  *(v187 + 27) = 0;
                  if (!v179)
                  {
                    break;
                  }

                  v179 = (v179 - 1) >> 1;
                  v180 = (a1 + 224 * v179);
                  v160 = v187;
                }

                while (*v180 < v247);
                v193 = v247;
                v194 = v249;
                v187[1] = v248;
                v187[2] = v194;
                *v187 = v193;
                v195 = v250;
                v196 = v251;
                v197 = v252;
                *(v187 + 12) = v253;
                v187[4] = v196;
                v187[5] = v197;
                v187[3] = v195;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v187 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v187 + 25);
                *(v187 + 200) = v263[0];
                *(v187 + 27) = *&v263[1];
                memset(v263, 0, 24);
                v246 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v246);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }
            }
          }

          *&v247 = &v244;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v247);
          if (v243 == 1 && v241.n128_u64[0])
          {
            v241.n128_u64[1] = v241.n128_u64[0];
            operator delete(v241.n128_u64[0]);
          }

          if (v240 == 1 && v238.n128_u64[0])
          {
            v238.n128_u64[1] = v238.n128_u64[0];
            operator delete(v238.n128_u64[0]);
          }

          if (v237 == 1 && SHIBYTE(v236) < 0)
          {
            operator delete(v235.n128_u64[0]);
          }
        }

        while (v150-- > 2);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = (a1 + 224 * (v10 >> 1));
    v14 = *v7;
    if (v9 > 0x7000)
    {
      v15 = *v13;
      if (*v13 >= *a1)
      {
        if (v14 < v15)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v7);
          if (*v13 < *a1)
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 < v15)
        {
          goto LABEL_16;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v13);
        if (*v7 < *v13)
        {
          v16 = v13;
LABEL_16:
          v17 = a2 - 14;
LABEL_25:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v16, v17);
        }
      }

      v21 = a1 + 224 * v12;
      v24 = *(v21 - 224);
      v23 = (v21 - 224);
      v22 = v24;
      v25 = *v224;
      if (v24 >= *(a1 + 224))
      {
        if (v25 < v22)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v224);
          if (*v23 < *(a1 + 224))
          {
            v26 = (a1 + 224);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 224);
        if (v25 < v22)
        {
          goto LABEL_30;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v23);
        if (*v224 < *v23)
        {
          v26 = v23;
LABEL_30:
          v27 = a2 - 28;
LABEL_37:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v27);
        }
      }

      v28 = a1 + 224 * v12;
      v31 = *(v28 + 224);
      v30 = (v28 + 224);
      v29 = v31;
      v32 = *v223;
      if (v31 >= *(a1 + 448))
      {
        if (v32 < v29)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v30, v223);
          if (*v30 < *(a1 + 448))
          {
            v33 = (a1 + 448);
            v34 = v30;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v33 = (a1 + 448);
        if (v32 < v29)
        {
          goto LABEL_42;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v30);
        if (*v223 < *v30)
        {
          v33 = v30;
LABEL_42:
          v34 = a2 - 42;
LABEL_46:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v34);
        }
      }

      v35 = *v13;
      v36 = *v30;
      if (*v13 >= *v23)
      {
        if (v36 < v35)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v30);
          if (*v13 < *v23)
          {
            v37 = v23;
            v38 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v37 = v23;
        if (v36 < v35)
        {
          goto LABEL_51;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v13);
        if (*v30 < *v13)
        {
          v37 = v13;
LABEL_51:
          v38 = v30;
LABEL_55:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v37, v38);
        }
      }

      v19 = a1;
      v20 = v13;
      goto LABEL_57;
    }

    v18 = *a1;
    if (*a1 >= *v13)
    {
      if (v14 >= v18)
      {
        goto LABEL_58;
      }

      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v7);
      if (*a1 >= *v13)
      {
        goto LABEL_58;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, a1);
        if (*v7 >= *a1)
        {
          goto LABEL_58;
        }

        v19 = a1;
      }

      v20 = a2 - 14;
    }

LABEL_57:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v19, v20);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 224) < *a1)
    {
      v39 = *a1;
      v40 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v40;
      v247 = v39;
      v41 = *(a1 + 48);
      v42 = *(a1 + 64);
      v43 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v42;
      v252 = v43;
      v250 = v41;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v44 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v44;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v45 = 0;
      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v46 = v247;
      do
      {
        v47 = *(a1 + v45 + 224);
        v45 += 224;
      }

      while (v47 < v247);
      v48 = a1 + v45;
      if (v45 == 224)
      {
        v6 = a2;
        do
        {
          if (v48 >= v6)
          {
            break;
          }

          v50 = *(v6 - 28);
          v6 -= 14;
        }

        while (v50 >= v247);
      }

      else
      {
        do
        {
          v49 = *(v6 - 28);
          v6 -= 14;
        }

        while (v49 >= v247);
      }

      v8 = a1 + v45;
      if (v48 < v6)
      {
        v51 = v6;
        do
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v51);
          do
          {
            v52 = *(v8 + 224);
            v8 += 224;
          }

          while (v52 < v46);
          do
          {
            v53 = *(v51 - 28);
            v51 -= 14;
          }

          while (v53 >= v46);
        }

        while (v8 < v51);
      }

      v54 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v55 = *v54;
        v56 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v56;
        *a1 = v55;
        v57 = *(v8 - 176);
        v58 = *(v8 - 160);
        v59 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v58;
        *(a1 + 80) = v59;
        *(a1 + 48) = v57;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v60 = v247;
      v61 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v61;
      *v54 = v60;
      v62 = v250;
      v63 = v251;
      v64 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v63;
      *(v8 - 144) = v64;
      *(v8 - 176) = v62;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

      v65 = v48 >= v6;
      v6 = a2;
      if (!v65)
      {
        goto LABEL_95;
      }

      v66 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(a1, (v8 - 224));
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(v8, a2))
      {
        a2 = (v8 - 224);
        if (!v66)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v66)
      {
LABEL_95:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(a1, v8 - 224, a3, a4 & 1);
        goto LABEL_96;
      }
    }

    else
    {
      v67 = *a1;
      v68 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v68;
      v247 = v67;
      v69 = *(a1 + 48);
      v70 = *(a1 + 64);
      v71 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v70;
      v252 = v71;
      v250 = v69;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v72 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v72;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v73 = v247;
      if (v247 >= *v7)
      {
        v75 = a1 + 224;
        do
        {
          v8 = v75;
          if (v75 >= v6)
          {
            break;
          }

          v75 += 224;
        }

        while (v247 >= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v74 = *(v8 + 224);
          v8 += 224;
        }

        while (v247 >= v74);
      }

      v76 = v6;
      if (v8 < v6)
      {
        v76 = v6;
        do
        {
          v77 = *(v76 - 28);
          v76 -= 14;
        }

        while (v247 < v77);
      }

      while (v8 < v76)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v76);
        do
        {
          v78 = *(v8 + 224);
          v8 += 224;
        }

        while (v73 >= v78);
        do
        {
          v79 = *(v76 - 28);
          v76 -= 14;
        }

        while (v73 < v79);
      }

      v80 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v81 = *v80;
        v82 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v82;
        *a1 = v81;
        v83 = *(v8 - 176);
        v84 = *(v8 - 160);
        v85 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v84;
        *(a1 + 80) = v85;
        *(a1 + 48) = v83;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v86 = v247;
      v87 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v87;
      *v80 = v86;
      v88 = v250;
      v89 = v251;
      v90 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v89;
      *(v8 - 144) = v90;
      *(v8 - 176) = v88;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

LABEL_96:
      a4 = 0;
    }
  }

  v91 = *(a1 + 224);
  v94 = *(v6 - 28);
  v93 = v6 - 14;
  v92 = v94;
  if (v91 < *a1)
  {
    if (v92 < v91)
    {
      goto LABEL_136;
    }

    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, (a1 + 224));
    if (*v93 >= *(a1 + 224))
    {
      return;
    }

    v95 = v93;
    v96 = (a1 + 224);
LABEL_137:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v96, v95);
    return;
  }

  if (v92 < v91)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), v93);
    if (*(a1 + 224) < *a1)
    {
      v96 = a1;
      v95 = (a1 + 224);
      goto LABEL_137;
    }
  }
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = *(a1 + 28);
        v5 = a2 - 14;
        v11 = *(a2 - 28);
        if (v10 >= *a1)
        {
          if (v11 >= v10)
          {
            return 1;
          }

          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, v5);
          if (*(v3 + 28) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v9 = v3 + 14;
          goto LABEL_17;
        }

        if (v11 >= v10)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
          if (*v5 >= *(v3 + 28))
          {
            return 1;
          }

          a1 = v3 + 14;
        }

LABEL_16:
        v9 = v5;
LABEL_17:
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v9);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a2 - 14);
        return 1;
      case 5:
        v6 = a1 + 42;
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a1 + 42);
        v8 = *(a2 - 28);
        v7 = a2 - 14;
        if (v8 >= *(v3 + 84))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 42, v7);
        if (*v6 >= *(v3 + 56))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 28, v3 + 42);
        if (*(v3 + 56) >= *(v3 + 28))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 14, v3 + 28);
        if (*(v3 + 28) >= *v3)
        {
          return 1;
        }

        v9 = v3 + 14;
        a1 = v3;
        goto LABEL_17;
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
      v5 = a2 - 14;
      if (*(a2 - 28) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 28;
  v13 = *(a1 + 28);
  v14 = *(a1 + 56);
  if (v13 < *a1)
  {
    if (v14 >= v13)
    {
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
      if (*(v3 + 56) >= *(v3 + 28))
      {
        goto LABEL_31;
      }

      a1 = v3 + 14;
    }

    v15 = v3 + 28;
    goto LABEL_30;
  }

  if (v14 < v13)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, a1 + 28);
    if (*(v3 + 28) < *v3)
    {
      a1 = v3;
      v15 = v3 + 14;
LABEL_30:
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v15);
    }
  }

LABEL_31:
  v16 = v3 + 42;
  result = 1;
  if (v3 + 42 != a2)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (*v16 < *v12)
      {
        v34 = v16[4];
        v35 = v16[5];
        v36 = *(v16 + 12);
        v30 = *v16;
        v31 = v16[1];
        v32 = v16[2];
        v33 = v16[3];
        v37.n128_u8[0] = 0;
        v39 = 0;
        if (*(v16 + 128) == 1)
        {
          v37 = *(v16 + 104);
          v38 = *(v16 + 15);
          *(v16 + 14) = 0;
          *(v16 + 15) = 0;
          *(v16 + 13) = 0;
          v39 = 1;
        }

        v40.n128_u8[0] = 0;
        v42 = 0;
        if (*(v16 + 160) == 1)
        {
          v40 = *(v16 + 136);
          v41 = *(v16 + 19);
          *(v16 + 18) = 0;
          *(v16 + 19) = 0;
          *(v16 + 17) = 0;
          v42 = 1;
        }

        __p.n128_u8[0] = 0;
        v45 = 0;
        if (*(v16 + 192) == 1)
        {
          __p = *(v16 + 168);
          v44 = *(v16 + 23);
          *(v16 + 22) = 0;
          *(v16 + 23) = 0;
          *(v16 + 21) = 0;
          v45 = 1;
        }

        v46[0] = *(v16 + 200);
        *&v46[1] = *(v16 + 27);
        *(v16 + 26) = 0;
        *(v16 + 27) = 0;
        *(v16 + 25) = 0;
        v20 = v18;
        while (1)
        {
          v21 = v20;
          v22 = v3 + v20;
          v23 = *(v3 + v20 + 528);
          *(v22 + 46) = *(v3 + v20 + 512);
          *(v22 + 47) = v23;
          *(v22 + 96) = *(v3 + v20 + 544);
          v24 = *(v3 + v20 + 464);
          *(v22 + 42) = *(v22 + 28);
          *(v22 + 43) = v24;
          v25 = *(v3 + v20 + 496);
          *(v22 + 44) = *(v3 + v20 + 480);
          *(v22 + 45) = v25;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v20 + 776, (v3 + v20 + 552));
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>((v22 + 808), (v22 + 584));
          v26 = v3 + v21;
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 840, (v3 + v21 + 616));
          v27 = (v3 + v21 + 648);
          std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v3 + v21 + 872));
          *(v26 + 872) = *v27;
          *(v26 + 111) = *(v26 + 83);
          *(v26 + 83) = 0;
          *v27 = 0u;
          if (v21 == -448)
          {
            break;
          }

          v20 = v21 - 224;
          if (v30 >= *(v3 + v21 + 224))
          {
            v28 = v3 + v20 + 672;
            goto LABEL_45;
          }
        }

        v28 = v3;
LABEL_45:
        *(v28 + 64) = v34;
        *(v28 + 80) = v35;
        *(v28 + 96) = v36;
        *v28 = v30;
        *(v28 + 16) = v31;
        *(v28 + 32) = v32;
        *(v28 + 48) = v33;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v21 + 552, &v37);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 584, &v40);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 616, &__p);
        v29 = (v3 + v21 + 648);
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v29);
        *v29 = *&v46[0];
        *(v28 + 208) = *(v46 + 8);
        memset(v46, 0, 24);
        v47 = v46;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v47);
        if (v45 == 1 && __p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        if (v42 == 1 && v40.n128_u64[0])
        {
          v40.n128_u64[1] = v40.n128_u64[0];
          operator delete(v40.n128_u64[0]);
        }

        if (v39 == 1 && SHIBYTE(v38) < 0)
        {
          operator delete(v37.n128_u64[0]);
        }

        if (++v19 == 8)
        {
          return v16 + 14 == a2;
        }
      }

      v12 = v16;
      v18 += 224;
      v16 += 14;
      if (v16 == a2)
      {
        return 1;
      }
    }
  }

  return result;
}

void std::vector<CSCoreFileRangePair>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<CSCoreFileRangePair>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void std::allocator<CSCoreFileRangePair>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<mapped_region_node_internal_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::__emplace_unique_key_args<unsigned int,unsigned int &,mapped_memory_t *&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRawSymbol<Pointer32>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__erase_unique<mapped_region_node_internal_t>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

const char *CSDwarfExpression::Evaluate(uint64_t (*a1)(uint64_t, void, char *), uint64_t (*a2)(uint64_t, uint64_t, char *), uint64_t a3, CSBinaryDataRef *this, unsigned int a5, uint64_t a6, void *a7, void *a8)
{
  __p = 0;
  v75 = 0;
  v76 = 0;
  if (a7)
  {
    std::vector<unsigned long long>::push_back[abi:ne200100](&__p, a7);
  }

  v73 = a5;
  v68[0] = 1;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v15 = *(this + 1);
  if (*this >= v15)
  {
    goto LABEL_114;
  }

  v16 = a5;
  v17 = v15 - *this;
  v18 = a6 - 1;
  if (!a6)
  {
    v18 = 0;
  }

  if (v17 <= v18 + a5)
  {
LABEL_114:
    v22 = "invalid offset and/or length for opcodes buffer";
    goto LABEL_115;
  }

  if (v17 <= a5)
  {
LABEL_118:
    v62 = __p;
    if (__p != v75)
    {
      v22 = 0;
      *a8 = *(v75 - 1);
      goto LABEL_115;
    }

    v22 = "Stack empty after evaluation";
    if (__p)
    {
      goto LABEL_116;
    }

    return v22;
  }

  v19 = 0;
  v20 = a6 + a5;
  while (2)
  {
    if (v19 || v20 <= v16)
    {
      goto LABEL_118;
    }

    v21 = CSBinaryDataRef::Get8(this, &v73);
    v19 = 0;
    v22 = "error: UNIMPLEMENTED opcode DW_OP_xderef_size";
    switch(v21)
    {
      case 3:
        Pointer = CSBinaryDataRef::GetPointer(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 6:
        if (__p == v75 || !a1)
        {
          v64 = "DW_OP_deref: No read memory callback provided";
          v65 = "Stack empty for DW_OP_deref";
          v66 = __p == v75;
          goto LABEL_158;
        }

        v69 = *(this + 17);
        v68[0] = 1;
        v49 = a1(a3, *(v75 - 1), v68);
        goto LABEL_112;
      case 8:
        Pointer = CSBinaryDataRef::Get8(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 9:
        Pointer = CSBinaryDataRef::Get8(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 10:
        Pointer = CSBinaryDataRef::Get16(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 11:
        Pointer = CSBinaryDataRef::Get16(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 12:
        Pointer = CSBinaryDataRef::Get32(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 13:
        Pointer = CSBinaryDataRef::Get32(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 14:
      case 15:
        Pointer = CSBinaryDataRef::Get64(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 16:
        Pointer = CSBinaryDataRef::Get_ULEB128(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 17:
        Pointer = CSBinaryDataRef::Get_SLEB128(this, &v73);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 18:
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_dup";
          goto LABEL_115;
        }

        v24 = v75 - 8;
LABEL_18:
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, v24);
        goto LABEL_19;
      case 19:
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_drop";
          goto LABEL_115;
        }

        v19 = 0;
        v75 -= 8;
        goto LABEL_20;
      case 20:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_over";
          goto LABEL_115;
        }

        v24 = v75 - 16;
        goto LABEL_18;
      case 21:
        v34 = CSBinaryDataRef::Get8(this, &v73);
        if (v34 >= ((v75 - __p) >> 3))
        {
          v22 = "Index out of range for DW_OP_pick";
          goto LABEL_115;
        }

        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, __p + v34);
LABEL_19:
        v19 = 0;
        goto LABEL_20;
      case 22:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_swap";
          goto LABEL_115;
        }

        v19 = 0;
        v39 = *(v75 - 1);
        v40 = v75;
        *(v75 - 1) = *(v75 - 2);
        *(v40 - 2) = v39;
        goto LABEL_20;
      case 23:
        if ((v75 - __p) < 0x11)
        {
          v22 = "Stack size less than 3 elements for DW_OP_rot";
          goto LABEL_115;
        }

        v19 = 0;
        v42 = v75;
        v43 = *(v75 - 1);
        *(v75 - 1) = *(v75 - 24);
        *(v42 - 3) = v43;
        goto LABEL_20;
      case 24:
        v22 = "error: UNIMPLEMENTED opcode DW_OP_xderef";
        goto LABEL_115;
      case 25:
        v29 = v75;
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_abs";
          goto LABEL_115;
        }

        v36 = *(v75 - 1);
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        v19 = 0;
        goto LABEL_81;
      case 26:
        if ((v75 - __p) < 9)
        {
          goto LABEL_125;
        }

        v19 = 0;
        v41 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) & v41;
        goto LABEL_107;
      case 27:
        v37 = v75;
        if ((v75 - __p) < 9)
        {
LABEL_125:
          v22 = "Stack size less than 2 elements for DW_OP_and";
          goto LABEL_115;
        }

        v38 = *(v75 - 1);
        if (!v38)
        {
          v22 = "DW_OP_div divide by zero";
          goto LABEL_115;
        }

        v19 = 0;
        v75 -= 8;
        *(v37 - 2) /= v38;
        goto LABEL_20;
      case 28:
        if ((v75 - __p) < 9)
        {
          goto LABEL_124;
        }

        v19 = 0;
        v52 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) - v52;
        goto LABEL_107;
      case 29:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_mod";
          goto LABEL_115;
        }

        v19 = 0;
        v32 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) % v32;
        goto LABEL_107;
      case 30:
        if ((v75 - __p) < 9)
        {
LABEL_124:
          v22 = "Stack size less than 2 elements for DW_OP_minus";
          goto LABEL_115;
        }

        v19 = 0;
        v55 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) * v55;
        goto LABEL_107;
      case 31:
        v29 = v75;
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_neg";
          goto LABEL_115;
        }

        v19 = 0;
        v36 = *(v75 - 1);
LABEL_81:
        v31 = -v36;
        goto LABEL_107;
      case 32:
        v29 = v75;
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_not";
          goto LABEL_115;
        }

        v19 = 0;
        v31 = ~*(v75 - 1);
        goto LABEL_107;
      case 33:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_or";
          goto LABEL_115;
        }

        v19 = 0;
        v44 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) | v44;
        goto LABEL_107;
      case 34:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_plus";
          goto LABEL_115;
        }

        v19 = 0;
        v50 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) + v50;
        goto LABEL_107;
      case 35:
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_plus_uconst";
          goto LABEL_115;
        }

        ULEB128 = CSBinaryDataRef::Get_ULEB128(this, &v73);
        v19 = 0;
        v29 = v75;
        v31 = *(v75 - 1) + ULEB128;
        goto LABEL_107;
      case 36:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_shl";
          goto LABEL_115;
        }

        v19 = 0;
        v56 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) << v56;
        goto LABEL_107;
      case 37:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_shr";
          goto LABEL_115;
        }

        v19 = 0;
        v54 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) >> v54;
        goto LABEL_107;
      case 38:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_shra";
          goto LABEL_115;
        }

        v19 = 0;
        v60 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) >> v60;
        goto LABEL_107;
      case 39:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_xor";
          goto LABEL_115;
        }

        v19 = 0;
        v53 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) ^ v53;
        goto LABEL_107;
      case 40:
        if (__p == v75)
        {
          v22 = "Stack empty for DW_OP_bra";
          goto LABEL_115;
        }

        v45 = *(v75 - 1);
        v75 -= 8;
        v46 = CSBinaryDataRef::Get16(this, &v73);
        if (!v45)
        {
          goto LABEL_19;
        }

        v47 = v73 + v46;
        v22 = "DW_OP_bra has invalid opcode offset";
LABEL_100:
        if (v47 < a5 || v20 <= v47)
        {
          goto LABEL_115;
        }

        v19 = 0;
        v73 = v47;
        goto LABEL_20;
      case 41:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_eq";
          goto LABEL_115;
        }

        v19 = 0;
        v30 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) == v30;
        goto LABEL_107;
      case 42:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_ge";
          goto LABEL_115;
        }

        v19 = 0;
        v33 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) >= v33;
        goto LABEL_107;
      case 43:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_gt";
          goto LABEL_115;
        }

        v19 = 0;
        v51 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) > v51;
        goto LABEL_107;
      case 44:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_le";
          goto LABEL_115;
        }

        v19 = 0;
        v57 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) <= v57;
        goto LABEL_107;
      case 45:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_lt";
          goto LABEL_115;
        }

        v19 = 0;
        v48 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) < v48;
        goto LABEL_107;
      case 46:
        if ((v75 - __p) < 9)
        {
          v22 = "Stack size less than 2 elements for DW_OP_ne";
          goto LABEL_115;
        }

        v19 = 0;
        v35 = *(v75 - 1);
        v29 = v75 - 8;
        v75 = v29;
        v31 = *(v29 - 1) != v35;
LABEL_107:
        *(v29 - 1) = v31;
        goto LABEL_20;
      case 47:
        v58 = CSBinaryDataRef::Get16(this, &v73);
        v47 = v73 + v58;
        v22 = "DW_OP_skip has invalid opcode offset";
        goto LABEL_100;
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
        Pointer = (v21 - 48);
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &Pointer);
        goto LABEL_19;
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
        if (!a2)
        {
          v22 = "DW_OP_reg: No read register callback provided";
          goto LABEL_115;
        }

        v22 = a2(a3, (v21 - 80), v68);
        v24 = &v72;
        if (v22)
        {
          goto LABEL_115;
        }

        goto LABEL_18;
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
        if (!a2)
        {
          v22 = "DW_OP_breg: No read register callback provided";
          goto LABEL_115;
        }

        v22 = a2(a3, (v21 - 112), v68);
        if (v22)
        {
          goto LABEL_115;
        }

        SLEB128 = CSBinaryDataRef::Get_SLEB128(this, &v73);
        v72 += SLEB128;
        v24 = &v72;
        goto LABEL_18;
      case 144:
        if (!a2)
        {
          v22 = "DW_OP_regx: No read register callback provided";
          goto LABEL_115;
        }

        v61 = CSBinaryDataRef::Get_ULEB128(this, &v73);
        v22 = a2(a3, v61, v68);
        if (v22)
        {
          goto LABEL_115;
        }

        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v72);
        goto LABEL_19;
      case 145:
        v22 = "DW_OP_fbreg is not implemented";
        goto LABEL_115;
      case 146:
        if (!a2)
        {
          v22 = "DW_OP_bregx: No read register callback provided";
          goto LABEL_115;
        }

        v26 = CSBinaryDataRef::Get_ULEB128(this, &v73);
        v22 = a2(a3, v26, v68);
        if (v22)
        {
          goto LABEL_115;
        }

        v27 = CSBinaryDataRef::Get_SLEB128(this, &v73);
        v72 += v27;
        std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v72);
        goto LABEL_19;
      case 147:
        v22 = "DW_OP_piece is not implemented.";
        goto LABEL_115;
      case 148:
        if (__p != v75 && a1)
        {
          v28 = CSBinaryDataRef::Get8(this, &v73);
          if (v28 <= *(this + 17))
          {
            v69 = v28;
            v68[0] = 7;
            v49 = a1(a3, *(v75 - 1), v68);
LABEL_112:
            v22 = v49;
            if (v49)
            {
              goto LABEL_115;
            }

            v19 = 0;
            *(v75 - 1) = v72;
          }

          else
          {
            v19 = "error: DW_OP_deref_size attempted to dereference a value with a size larger than a target address.";
          }

LABEL_20:
          v25 = *(this + 1);
          if (v25 <= *this)
          {
            goto LABEL_118;
          }

          v16 = v73;
          if (v25 - *this <= v73)
          {
            goto LABEL_118;
          }

          continue;
        }

        v64 = "DW_OP_deref_size: No read memory callback provided";
        v65 = "Stack empty for DW_OP_deref_size";
        v66 = __p == v75;
LABEL_158:
        if (v66)
        {
          v22 = v65;
        }

        else
        {
          v22 = v64;
        }

LABEL_115:
        v62 = __p;
        if (__p)
        {
LABEL_116:
          v75 = v62;
          operator delete(v62);
        }

        return v22;
      case 149:
        goto LABEL_115;
      case 150:
        goto LABEL_20;
      case 151:
        v22 = "DW_OP_push_object_address is not implemented.";
        goto LABEL_115;
      case 152:
        v22 = "DW_OP_call2 is not implemented.";
        goto LABEL_115;
      case 153:
        v22 = "DW_OP_call4 is not implemented.";
        goto LABEL_115;
      case 154:
        v22 = "DW_OP_call_ref is not implemented.";
        goto LABEL_115;
      case 157:
        v22 = "DW_OP_bit_piece is not implemented.";
        goto LABEL_115;
      case 240:
        v22 = "Value is not initialized";
        goto LABEL_115;
      default:
        v22 = "Unknown DWARF DW_OP value.";
        goto LABEL_115;
    }
  }
}

void sub_1D97CAD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SymbolicationSession::SymbolicationSession(SymbolicationSession *this)
{
  *(this + 2) = 1;
  *this = &unk_1F55089F0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 28) = 1065353216;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 44) = 1065353216;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  operator new();
}

void sub_1D97CAF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::unique_ptr<AS::Operator>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::~__hash_table(v4);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v2 + 144);
  std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v2 + 80);
  std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

void SymbolicationSession::~SymbolicationSession(SymbolicationSession *this)
{
  *this = &unk_1F55089F0;
  for (i = *(this + 25); i; i = *i)
  {
    v3 = i[3];
    v4 = i[4];
    while (v3 != v4)
    {
      CSCppReferenceCount::release(*v3++, 1);
    }
  }

  v5 = *(this + 31);
  *(this + 31) = 0;
  if (v5)
  {
    std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v5 + 88);
    std::__hash_table<std::__hash_value_type<unsigned long,LibraryConstructionState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,LibraryConstructionState>>>::~__hash_table(v5 + 48);
    std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v5 + 8);
    MEMORY[0x1DA736760](v5, 0x10A0C40A5500B67);
  }

  v6 = (this + 224);
  std::vector<std::vector<std::unique_ptr<AS::Operator>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::~__hash_table(this + 184);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(this + 144);
  v6 = (this + 120);
  std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(this + 80);
  v6 = (this + 56);
  std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 16);
}

{
  SymbolicationSession::~SymbolicationSession(this);

  JUMPOUT(0x1DA736760);
}

unint64_t SymbolicationSession::register_library(SymbolicationSession *this, LibraryDescription *a2)
{
  std::vector<LibraryDescription>::push_back[abi:ne200100](this + 56, a2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 5) - 1;
  std::__hash_table<std::__hash_value_type<UUID,unsigned long>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,unsigned long>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,unsigned long>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,unsigned long>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(this + 10, a2)[4] = v4;
  return v4;
}

void LibraryDescription::~LibraryDescription(LibraryDescription *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

unint64_t SymbolicationSession::lookup_or_register_process(SymbolicationSession *this, int a2)
{
  v22 = a2;
  v3 = std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::find<int>(this + 18, &v22);
  if (v3)
  {
    return v3[3];
  }

  v6 = *(this + 29);
  v5 = *(this + 30);
  if (v6 >= v5)
  {
    v8 = *(this + 28);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v23[4] = this + 224;
    if (v12)
    {
      std::allocator<std::vector<std::reference_wrapper<portable_region_info_t const>>>::allocate_at_least[abi:ne200100](this + 224, v12);
    }

    v13 = 24 * v9;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    v7 = 24 * v9 + 24;
    v14 = *(this + 28);
    v15 = *(this + 29) - v14;
    v16 = 24 * v9 - v15;
    memcpy((v13 - v15), v14, v15);
    v17 = *(this + 28);
    *(this + 28) = v16;
    *(this + 29) = v7;
    v18 = *(this + 30);
    *(this + 30) = 0;
    v23[2] = v17;
    v23[3] = v18;
    v23[0] = v17;
    v23[1] = v17;
    std::__split_buffer<std::vector<std::unique_ptr<AS::Operator>>>::~__split_buffer(v23);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v7 = (v6 + 3);
    v6[2] = 0;
  }

  *(this + 29) = v7;
  v19 = *(this + 28);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v19) >> 3) - 1;
  if (*(this + 256))
  {
    v23[0] = 0;
    std::vector<std::unique_ptr<AS::Operator>>::push_back[abi:ne200100]((v19 + 24 * v4), v23);
    v20 = v23[0];
    v23[0] = 0;
    if (v20)
    {
      (*(*v20 + 16))(v20);
    }
  }

  v23[0] = &v22;
  std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 18, &v22)[3] = v4;
  return v4;
}

void sub_1D97CB33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    SymbolicationSession::lookup_or_register_process(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D97CB42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA736760](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::process_ats_dsc_and_pid_chunks(SymbolicationSession *this, const __CFData *a2, const __CFData *a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN20SymbolicationSession30process_ats_dsc_and_pid_chunksEPK8__CFDataS2__block_invoke;
  v7[3] = &__block_descriptor_tmp_16_3;
  v7[4] = this;
  _CSSymbolicatorForeachRawFlatbufferSymbolicatorInSignature<__CFData const*>(a2, 0, v7);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN20SymbolicationSession30process_ats_dsc_and_pid_chunksEPK8__CFDataS2__block_invoke_2;
  v6[3] = &__block_descriptor_tmp_17_1;
  v6[4] = this;
  return _CSSymbolicatorForeachRawFlatbufferSymbolicatorInSignature<__CFData const*>(a3, 0, v6);
}

void ___ZN20SymbolicationSession30process_ats_dsc_and_pid_chunksEPK8__CFDataS2__block_invoke(uint64_t a1, FlatbufferSymbols::Symbolicator *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = (this - *this);
  if (*v2 >= 9u && (v3 = v2[4]) != 0)
  {
    v4 = (this + v3 + *(this + v3));
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v6 = FlatbufferSymbols::Symbolicator::metadata_as_DyldSharedCacheMetadata(this);
  if (v6)
  {
    v7 = (v6 + *(v6 - *v6 + 4));
    CSUUIDStringToCFUUIDBytes(v7 + *v7 + 4, &v27);
    memset(v12, 0, sizeof(v12));
    v8 = (4 * *v4);
    if (v8)
    {
      v9 = v4 + 1;
      do
      {
        v10 = *v9;
        LOBYTE(v13) = 0;
        v14 = 0;
        SymbolicationSession::transform_fbs_owner((v9 + v10), v5, 1, v21);
        std::__optional_copy_base<LibraryDescription,false>::__optional_copy_base[abi:ne200100](&v13, v21);
        if ((v20 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        std::vector<LibraryDescription>::push_back[abi:ne200100](v12, &v13);
        if (v20 == 1)
        {
          if (__p)
          {
            v19 = __p;
            operator delete(__p);
          }

          if (v17 == 1 && v16 < 0)
          {
            operator delete(v15);
          }
        }

        if (v26 == 1)
        {
          if (v24)
          {
            v25 = v24;
            operator delete(v24);
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(v21[3]);
          }
        }

        ++v9;
        v8 -= 4;
      }

      while (v8);
    }

    SymbolicationSession::register_dsc(v5, &v27, v12);
    v21[0] = v12;
    std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](v21);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1D97CB6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a9;
  std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void *SymbolicationSession::transform_fbs_owner@<X0>(FlatbufferSymbols::SymbolOwner *this@<X1>, uint64_t a2@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v40 = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(this);
  v8 = (v40 + *(v40 - *v40 + 4));
  CSUUIDStringToCFUUIDBytes(v8 + *v8 + 4, &v44);
  if ((a3 & 1) != 0 || (result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::find<UUID>((a2 + 80), &v44)) == 0)
  {
    v39 = a2;
    v11 = *(this - *this + 8);
    v12 = *(this + v11);
    v13 = (this + v11 + v12);
    __p = 0;
    v42 = 0;
    v43 = 0;
    v14 = (4 * *v13);
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = this + v11 + v12;
      do
      {
        v18 = v13[v15 / 4 + 1];
        v19 = v18 - *(&v13[v15 / 4 + 1] + v18);
        v20 = &v17[v15 + v19];
        v21 = *(v20 + 2);
        if (v21 >= 5)
        {
          v22 = *(v20 + 4);
          if (v22)
          {
            v23 = &v17[v15 + v18 + v22 + *&v17[v15 + 4 + v18 + v22]];
            if (!strstr(v23 + 8, "__LINKINFO"))
            {
              if (v21 < 7)
              {
                v25 = 0;
                v24 = -1;
              }

              else
              {
                if (*&v17[v15 + 10 + v19])
                {
                  v24 = *&v17[v15 + 4 + v18 + *&v17[v15 + 10 + v19]];
                }

                else
                {
                  v24 = -1;
                }

                if (v21 >= 9 && *&v17[v15 + 12 + v19])
                {
                  v25 = *&v17[v15 + 4 + v18 + *&v17[v15 + 12 + v19]];
                }

                else
                {
                  v25 = 0;
                }
              }

              if (v16 >= v43)
              {
                v26 = (v16 - __p) >> 5;
                if ((v26 + 1) >> 59)
                {
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                }

                v27 = (v43 - __p) >> 4;
                if (v27 <= v26 + 1)
                {
                  v27 = v26 + 1;
                }

                if (v43 - __p >= 0x7FFFFFFFFFFFFFE0)
                {
                  v28 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v27;
                }

                if (v28)
                {
                  std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](&__p, v28);
                }

                CSCppSegmentRange::CSCppSegmentRange((32 * v26), v24, v25, (v23 + 8), 0);
                v16 = (v29 + 32);
                v30 = (v29 - (v42 - __p));
                memcpy(v30, __p, v42 - __p);
                v31 = __p;
                __p = v30;
                v42 = v16;
                v43 = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                CSCppSegmentRange::CSCppSegmentRange(v16, v24, v25, (v23 + 8), 0);
                v16 = (v16 + 32);
              }

              v42 = v16;
            }
          }
        }

        v15 += 4;
      }

      while (v14 != v15);
    }

    v32 = (v40 - *v40);
    v33 = *v32;
    v34 = "<unknown>";
    if (v33 < 7)
    {
LABEL_50:
      CSCppStringCache::intern((v39 + 16), v34);
    }

    v35 = v32[3];
    if (v32[3])
    {
      v35 += v40 + *(v40 + v35);
    }

    if (v33 < 0x13)
    {
      if (v33 < 0x11)
      {
        if (!v35)
        {
          v37 = 0;
LABEL_48:
          if (v37)
          {
            v34 = (v37 + 4);
          }

          goto LABEL_50;
        }

LABEL_46:
        v34 = (v35 + 4);
        goto LABEL_50;
      }

      v36 = 0;
    }

    else
    {
      v36 = v32[9];
      if (v32[9])
      {
        v36 += v40 + *(v40 + v36);
      }
    }

    v37 = v32[8];
    if (v37)
    {
      v37 += v40 + *(v40 + v37);
    }

    if (!v35)
    {
      if (v36)
      {
        v34 = (v36 + 4);
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v10 = result[4];
  *a4 = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = v10;
  *(a4 + 112) = 1;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97CBF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<LibraryDescription>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<LibraryDescription>::__emplace_back_slow_path<LibraryDescription const&>(a1, a2);
  }

  else
  {
    std::__construct_at[abi:ne200100]<LibraryDescription,LibraryDescription const&,LibraryDescription*>(*(a1 + 8), a2);
    result = v3 + 96;
    *(a1 + 8) = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::optional<LibraryDescription>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

uint64_t SymbolicationSession::register_dsc(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  v6 = a1 + 120;
  if (v5 >= v4)
  {
    result = std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__emplace_back_slow_path<UUID const&,std::vector<LibraryDescription> const&>(v6, a2, a3);
  }

  else
  {
    std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__construct_one_at_end[abi:ne200100]<UUID const&,std::vector<LibraryDescription> const&>(v6, a2, a3);
    result = v5 + 40;
  }

  *(a1 + 128) = result;
  return result;
}

FlatbufferSymbols::SymbolOwner *___ZN20SymbolicationSession30process_ats_dsc_and_pid_chunksEPK8__CFDataS2__block_invoke_2(uint64_t a1, FlatbufferSymbols::SymbolOwner *this)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  result = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(this);
  if (result)
  {
    v5 = result;
    v6 = (result - *result);
    if (*v6 >= 7u)
    {
      v7 = v6[3];
      if (v7)
      {
        v8 = *(result + v7);
        if (v8 >= 1)
        {
          result = _findPrimarySharedCacheInFlatbufferSymbolicator(this);
          if (result)
          {
            v9 = (result - *result);
            if (*v9 >= 9u && (v10 = v9[4]) != 0)
            {
              v11 = *(result + v10);
            }

            else
            {
              v11 = -1;
            }

            v33 = v11;
            result = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(result);
            if (result)
            {
              v12 = result;
              v13 = (result + *(result - *result + 4));
              CSUUIDStringToCFUUIDBytes(v13 + *v13 + 4, v44);
              result = SymbolicationSession::find_dsc(v3, v44);
              if ((v14 & 1) == 0)
              {
                memset(v36, 0, 24);
                SymbolicationSession::register_dsc(v3, v44, v36);
                v32[0] = v36;
                std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](v32);
                result = SymbolicationSession::find_dsc(v3, v44);
              }

              if (v14)
              {
                v32[3] = result;
                v15 = (v12 - *v12);
                if (*v15 >= 0x15u && (v16 = v15[10]) != 0)
                {
                  v17 = *(v12 + v16);
                }

                else
                {
                  v17 = -1;
                }

                SymbolicationSession::lookup_or_register_process(v3, v8);
                v18 = (v5 - *v5);
                if (*v18 >= 0xBu)
                {
                  v19 = v18[5];
                  if (v19)
                  {
                    CSUUIDStringToCFUUIDBytes(v5 + v19 + *(v5 + v19) + 4, &v43);
                  }
                }

                v20 = *(this - *this + 8);
                v21 = *(this + v20);
                v22 = (this + v20 + v21);
                memset(v32, 0, 24);
                v23 = (4 * *v22);
                if (v23)
                {
                  v24 = 0;
                  v25 = this + v20 + v21;
                  do
                  {
                    v26 = v22[v24 / 4 + 1];
                    v27 = &v22[v24 / 4] + v26;
                    v34 = v43;
                    v35 = 1;
                    SymbolicationSession::transform_fbs_owner((v27 + 4), v3, 0, v36);
                    v28 = &v25[v24 + v26 - *(v27 + 1)];
                    if (*(v28 + 2) >= 0xBu && (v29 = *(v28 + 7)) != 0)
                    {
                      v30 = *&v25[v24 + 4 + v26 + v29];
                    }

                    else
                    {
                      v30 = -1;
                    }

                    v34 = 0uLL;
                    if ((v42 & 1) == 0)
                    {
                      std::__throw_bad_optional_access[abi:ne200100]();
                    }

                    *&v34 = v41;
                    *(&v34 + 1) = v30;
                    std::vector<_CSTypeRef>::push_back[abi:ne200100](v32, &v34);
                    if (v40 == 1)
                    {
                      if (__p)
                      {
                        operator delete(__p);
                      }

                      if (v38 == 1 && v37 < 0)
                      {
                        operator delete(v36[3]);
                      }
                    }

                    v24 += 4;
                  }

                  while (v23 != v24);
                  v11 = v33;
                }

                v36[0] = v11 + v17;
                std::make_unique[abi:ne200100]<AS::FullCreationOperator,unsigned long &,unsigned long long &,unsigned long long,std::vector<AS::LoadDescription> &,0>();
              }
            }
          }
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D97CC470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SymbolicationSession::find_dsc(SymbolicationSession *this, const UUID *a2)
{
  v2 = *(this + 15);
  v3 = *(this + 16) - v2;
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  while (*v2 != *a2 || v2[1] != *&(*a2)[8])
  {
    ++result;
    v2 += 5;
    if (v5 == result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D97CC63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA736760](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::process_ats_kernel_chunk(SymbolicationSession *this, const __CFData *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN20SymbolicationSession24process_ats_kernel_chunkEPK8__CFData_block_invoke;
  v3[3] = &__block_descriptor_tmp_18_1;
  v3[4] = this;
  return _CSSymbolicatorForeachRawFlatbufferSymbolicatorInSignature<__CFData const*>(a2, 0, v3);
}

void ___ZN20SymbolicationSession24process_ats_kernel_chunkEPK8__CFData_block_invoke(uint64_t a1, FlatbufferSymbols::SymbolOwner *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = FlatbufferSymbols::SymbolOwner::metadata_as_MachoMetadata(this);
  v5 = v4;
  v6 = (v4 - *v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = *(v4 + v7);
  }

  else
  {
    v8 = -1;
  }

  SymbolicationSession::lookup_or_register_process(v3, v8);
  v9 = (v5 - *v5);
  if (*v9 >= 0xBu)
  {
    v10 = v9[5];
    if (v10)
    {
      CSUUIDStringToCFUUIDBytes(v5 + v10 + *(v5 + v10) + 4, &v27);
    }
  }

  v11 = *(this - *this + 8);
  v12 = *(this + v11);
  memset(v16, 0, sizeof(v16));
  v13 = (4 * *(this + v11 + v12));
  if (v13)
  {
    v14 = (this + v12 + v11 + 4);
    do
    {
      v15 = *v14;
      v17 = v27;
      v18 = 1;
      SymbolicationSession::transform_fbs_owner((v14 + v15), v3, 0, v19);
      v17 = 0uLL;
      if ((v26 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v17 = v25;
      std::vector<_CSTypeRef>::push_back[abi:ne200100](v16, &v17);
      if (v24 == 1)
      {
        if (__p)
        {
          operator delete(__p);
        }

        if (v22 == 1 && v21 < 0)
        {
          operator delete(v20);
        }
      }

      ++v14;
      v13 -= 4;
    }

    while (v13);
  }

  std::make_unique[abi:ne200100]<AS::LoadOperator,std::vector<AS::LoadDescription> &,unsigned long long const&,0>();
}

void sub_1D97CC938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, _Unwind_Exception *exception_objecta)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SymbolicationSession::process_kernel_plist_chunk(SymbolicationSession *a1, const __CFData *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  cf = CFPropertyListCreateWithData(0, a2, 0, 0, 0);
  Value = CFDictionaryGetValue(cf, @"Binaries");
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v49 = a1;
  SymbolicationSession::lookup_or_register_process(a1, 0);
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          v7 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v8 = CFGetTypeID(ValueAtIndex);
            if (v8 == CFDictionaryGetTypeID())
            {
              v9 = CFDictionaryGetValue(v7, @"Flags");
              v10 = v9;
              if (v9)
              {
                v11 = CFGetTypeID(v9);
                if (v11 == CFNumberGetTypeID())
                {
                  v12 = v10;
                }

                else
                {
                  v12 = 0;
                }

                number = v12;
              }

              else
              {
                number = 0;
              }

              v13 = CFDictionaryGetValue(v7, @"UUID_String");
              v14 = v13;
              if (v13)
              {
                v15 = CFGetTypeID(v13);
                if (v15 == CFStringGetTypeID())
                {
                  v16 = v14;
                }

                else
                {
                  v16 = 0;
                }

                theString = v16;
              }

              else
              {
                theString = 0;
              }

              v17 = CFDictionaryGetValue(v7, @"Path");
              v18 = v17;
              if (v17)
              {
                v19 = CFGetTypeID(v17);
                if (v19 != CFStringGetTypeID())
                {
                  v18 = 0;
                }
              }

              v20 = CFDictionaryGetValue(v7, @"Segments");
              if (number)
              {
                if (theString)
                {
                  if (v18)
                  {
                    v21 = v20;
                    if (v20)
                    {
                      v22 = CFGetTypeID(v20);
                      if (v22 == CFArrayGetTypeID())
                      {
                        v23 = CFArrayGetCount(v21);
                        __p = 0;
                        v55 = 0;
                        v56 = 0;
                        if (v23 >= 1)
                        {
                          for (j = 0; j != v23; ++j)
                          {
                            v25 = CFArrayGetValueAtIndex(v21, j);
                            v26 = CFDictionaryGetValue(v25, @"Address");
                            v27 = v26;
                            if (v26)
                            {
                              v28 = CFGetTypeID(v26);
                              if (v28 == CFNumberGetTypeID())
                              {
                                v29 = v27;
                              }

                              else
                              {
                                v29 = 0;
                              }
                            }

                            else
                            {
                              v29 = 0;
                            }

                            v30 = CFDictionaryGetValue(v25, @"Size");
                            v31 = v30;
                            if (v30)
                            {
                              v32 = CFGetTypeID(v30);
                              if (v32 != CFNumberGetTypeID())
                              {
                                v31 = 0;
                              }
                            }

                            v33 = CFDictionaryGetValue(v25, @"Name");
                            v34 = v33;
                            if (v33)
                            {
                              v35 = CFGetTypeID(v33);
                              TypeID = CFStringGetTypeID();
                              if (v35 != TypeID)
                              {
                                v34 = 0;
                              }

                              if (v29)
                              {
                                if (v31)
                                {
                                  if (v35 == TypeID)
                                  {
                                    *&valuePtr = 0;
                                    CFNumberGetValue(v29, kCFNumberLongLongType, &valuePtr);
                                    v53 = 0;
                                    CFNumberGetValue(v31, kCFNumberLongLongType, &v53);
                                    if (CFStringGetCString(v34, buffer, 50, 0x8000100u))
                                    {
                                      v37 = v55;
                                      if (v55 >= v56)
                                      {
                                        v39 = (v55 - __p) >> 5;
                                        if ((v39 + 1) >> 59)
                                        {
                                          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                                        }

                                        v40 = (v56 - __p) >> 4;
                                        if (v40 <= v39 + 1)
                                        {
                                          v40 = v39 + 1;
                                        }

                                        if (v56 - __p >= 0x7FFFFFFFFFFFFFE0)
                                        {
                                          v41 = 0x7FFFFFFFFFFFFFFLL;
                                        }

                                        else
                                        {
                                          v41 = v40;
                                        }

                                        if (v41)
                                        {
                                          std::allocator<CSCppSegmentRange>::allocate_at_least[abi:ne200100](&__p, v41);
                                        }

                                        CSCppSegmentRange::CSCppSegmentRange((32 * v39), valuePtr, v53, buffer, 0);
                                        v38 = (v42 + 32);
                                        v43 = (v42 - (v55 - __p));
                                        memcpy(v43, __p, v55 - __p);
                                        v44 = __p;
                                        __p = v43;
                                        v55 = v38;
                                        v56 = 0;
                                        if (v44)
                                        {
                                          operator delete(v44);
                                        }
                                      }

                                      else
                                      {
                                        CSCppSegmentRange::CSCppSegmentRange(v55, valuePtr, v53, buffer, 0);
                                        v38 = (v37 + 32);
                                      }

                                      v55 = v38;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }

                        Length = CFStringGetLength(v18);
                        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                        v47 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
                        if (!CFStringGetCString(v18, v47, MaximumSizeForEncoding + 1, 0x8000100u))
                        {
                          free(v47);
                          v47 = 0;
                        }

                        CSCppStringCache::intern((v49 + 16), v47);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  std::make_unique[abi:ne200100]<AS::LoadOperator,std::vector<AS::LoadDescription> &,unsigned long long const&,0>();
}

void sub_1D97CCFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *a1, std::string::value_type **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, v3);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

uint64_t *std::vector<std::unique_ptr<AS::Operator>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<AS::Operator>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *SymbolicationSession::advance_managed_symbolicators(SymbolicationSession *this, unint64_t a2)
{
  v10 = a2;
  v4 = *(this + 28);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(this + 23, &v10);
  if (result)
  {
    v6 = result[3];
    v7 = result[4];
    if (v6 != v7)
    {
      v8 = v4 + 24 * a2;
      do
      {
        v9 = *v6++;
        result = (***(*(v8 + 8) - 8))(*(*(v8 + 8) - 8), v9, this);
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t SymbolicationSession::create_pid_symbolicator(SymbolicationSession *this, int a2)
{
  v5 = a2;
  v2 = std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::find<int>(this + 18, &v5);
  if (v2)
  {
    v4 = v2[3];
    operator new();
  }

  return 0;
}

void sub_1D97CD4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void SymbolicationSession::create_symbolicator(SymbolicationSession *this, void *a2, uint64_t a3, int a4)
{
  v6 = *(this + 64);
  if (v6)
  {
    SymbolicationSession::fixup_address_space(this, a3);
  }

  v7 = (*(this + 28) + 24 * a3);
  v26 = 0uLL;
  v27 = 0;
  if (v6 & 2) == 0 || (a4)
  {
    if ((v6 & 2) != 0 && a4)
    {
      v13 = **v7;
      v14 = **v13;
      if (!v15)
      {
        __cxa_bad_cast();
      }
    }

    else
    {
      v16 = **v7;
      v17 = **v16;
      if (!v15)
      {
        __cxa_bad_cast();
      }
    }

    AS::LoadOperator::generate_owners(v15, this, &v20);
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vdeallocate(&v26);
    v26 = v20;
    v27 = v21;
    *&v21 = 0;
    v20 = 0uLL;
    *&v18 = &v20;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v18);
  }

  else
  {
    v8 = **v7;
    v9 = **v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10[1];
    *&v20 = &unk_1F5508B48;
    *(&v20 + 1) = v11;
    v12 = v10[4];
    v21 = *(v10 + 1);
    v22 = v12;
    __p = 0;
    v24 = 0;
    v25 = 0;
    std::vector<AS::LoadDescription>::__init_with_size[abi:ne200100]<AS::LoadDescription*,AS::LoadDescription*>(&__p, v10[5], v10[6], (v10[6] - v10[5]) >> 4);
    (*(**a2 + 80))(*a2, *(this + 15) + 40 * v21);
    (*(**a2 + 88))(*a2, v22);
    AS::FullCreationOperator::generate_owners(&v20, this, &v18);
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vdeallocate(&v26);
    v26 = v18;
    v27 = v19;
    v19 = 0;
    v18 = 0uLL;
    v28 = &v18;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v28);
    *&v20 = &unk_1F5508B48;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  operator new();
}

void sub_1D97CD8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  a13 = v21;
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  a13 = &a21;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void SymbolicationSession::fixup_address_space(SymbolicationSession *this, uint64_t a2)
{
  v2 = (*(this + 28) + 24 * a2);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(__p, 0, sizeof(__p));
  v3 = *v2;
  v4 = ((v2[1] - *v2) >> 3) - 1;
  if (v4 >= 2)
  {
    v5 = 1;
    do
    {
      v6 = *(v3 + 8 * v5);
      if (v6)
      {
        v7 = *v6;
        v8 = **v6;
        if (v9)
        {
          if (*(v9 + 40) == 1)
          {
            v10 = v9[2];
            v11 = v9[3];
            while (v10 != v11)
            {
              std::__hash_table<AS::LoadDescription,std::hash<AS::LoadDescription>,std::equal_to<AS::LoadDescription>,std::allocator<AS::LoadDescription>>::__emplace_unique_key_args<AS::LoadDescription,AS::LoadDescription const&>(v21, v10);
              v10 += 2;
            }
          }

          else
          {
            std::__hash_table<AS::LoadDescription,std::hash<AS::LoadDescription>,std::equal_to<AS::LoadDescription>,std::allocator<AS::LoadDescription>>::__emplace_unique_key_args<AS::LoadDescription,AS::LoadDescription const&>(v21, v9 + 2);
          }
        }

        else
        {
          v12 = *v7;
          if (v13)
          {
            v14 = v13;
            if (!std::__hash_table<AS::LoadDescription,std::hash<AS::LoadDescription>,std::equal_to<AS::LoadDescription>,std::allocator<AS::LoadDescription>>::find<AS::LoadDescription>(v21, v13 + 2))
            {
              std::vector<_CSTypeRef>::push_back[abi:ne200100](__p, v14 + 1);
            }
          }
        }
      }

      v5 = (v5 + 1);
      v3 = *v2;
      v4 = ((v2[1] - *v2) >> 3) - 1;
    }

    while (v4 > v5);
  }

  v15 = *(v3 + 8 * v4);
  v16 = **v15;
  v18 = v17[2];
  v19 = v17[3];
  while (v18 != v19)
  {
    if (!std::__hash_table<AS::LoadDescription,std::hash<AS::LoadDescription>,std::equal_to<AS::LoadDescription>,std::allocator<AS::LoadDescription>>::find<AS::LoadDescription>(v21, v18))
    {
      std::vector<_CSTypeRef>::push_back[abi:ne200100](__p, v18);
    }

    ++v18;
  }

  std::make_unique[abi:ne200100]<AS::LoadOperator,std::vector<AS::LoadDescription> &,unsigned long long const&,0>();
}

void sub_1D97CDC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a13);
  _Unwind_Resume(a1);
}

uint64_t SymbolicationSession::foreach_pid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    (*(a2 + 16))(a2, *(v2 + 4));
    ++v4;
    v2 = *v2;
  }

  while (v2);
  return v4;
}

char **SymbolicationSession::dsc_slide_for_pid(SymbolicationSession *this, int a2)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::find<int>(this + 18, &v5);
  if (result)
  {
    result = **(*(this + 28) + 24 * result[3]);
    if (result)
    {
      v4 = **result;
      if (result)
      {
        return result[3];
      }
    }
  }

  return result;
}

void std::vector<std::vector<std::unique_ptr<AS::Operator>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::unique_ptr<AS::Operator>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<AS::Operator>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AS::Operator>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<AS::Operator>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        v7 = (v4 - 24);
        std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LibraryDescription>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<LibraryDescription>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<LibraryDescription>>::destroy[abi:ne200100]<LibraryDescription,void,0>(a1, i))
  {
    i -= 96;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<LibraryDescription>>::destroy[abi:ne200100]<LibraryDescription,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    *(a2 + 72) = v3;
    operator delete(v3);
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v4 = *(a2 + 24);

    operator delete(v4);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,LibraryConstructionState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,LibraryConstructionState>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,LibraryConstructionState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,LibraryConstructionState>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,LibraryConstructionState>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,LibraryConstructionState>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,LibraryConstructionState>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<unsigned long const,LibraryConstructionState>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<unsigned long const,LibraryConstructionState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t std::vector<AS::LoadDescription>::__init_with_size[abi:ne200100]<AS::LoadDescription*,AS::LoadDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_CSTypeRef>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97CE17C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_copy_base<LibraryDescription,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = 0;
  if (*(a2 + 96) == 1)
  {
    std::__construct_at[abi:ne200100]<LibraryDescription,LibraryDescription const&,LibraryDescription*>(a1, a2);
    a1[96] = 1;
  }

  return a1;
}

void sub_1D97CE1E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    LibraryDescription::~LibraryDescription(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__construct_at[abi:ne200100]<LibraryDescription,LibraryDescription const&,LibraryDescription*>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a1 + 24), (a2 + 24));
  v5 = *(a2 + 7);
  *(a1 + 64) = 0;
  *(a1 + 56) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(a1 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 5);
  *(a1 + 88) = *(a2 + 22);
  return a1;
}

void sub_1D97CE26C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<LibraryDescription>::__emplace_back_slow_path<LibraryDescription const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<LibraryDescription>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  std::__construct_at[abi:ne200100]<LibraryDescription,LibraryDescription const&,LibraryDescription*>(96 * v2, a2);
  v15 = 96 * v2 + 96;
  v7 = *(a1 + 8);
  v8 = 96 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LibraryDescription>,LibraryDescription*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<LibraryDescription>::~__split_buffer(&v13);
  return v12;
}

void sub_1D97CE3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<LibraryDescription>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<LibraryDescription>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LibraryDescription>,LibraryDescription*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::construct_at[abi:ne200100]<LibraryDescription,LibraryDescription,LibraryDescription*>(a4, v7);
      v7 += 6;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<LibraryDescription>>::destroy[abi:ne200100]<LibraryDescription,void,0>(a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LibraryDescription>,LibraryDescription*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

__n128 std::construct_at[abi:ne200100]<LibraryDescription,LibraryDescription,LibraryDescription*>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = a2[4];
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a1 + 88) = *(a2 + 22);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LibraryDescription>,LibraryDescription*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LibraryDescription>,LibraryDescription*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<LibraryDescription>,LibraryDescription*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 96;
      std::allocator_traits<std::allocator<LibraryDescription>>::destroy[abi:ne200100]<LibraryDescription,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<LibraryDescription>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<LibraryDescription>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LibraryDescription>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    std::allocator_traits<std::allocator<LibraryDescription>>::destroy[abi:ne200100]<LibraryDescription,void,0>(v5, v4 - 96);
  }
}

uint64_t std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__construct_one_at_end[abi:ne200100]<UUID const&,std::vector<LibraryDescription> const&>(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  result = std::vector<LibraryDescription>::__init_with_size[abi:ne200100]<LibraryDescription*,LibraryDescription*>(v4 + 16, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5));
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t std::vector<std::pair<UUID,std::vector<LibraryDescription>>>::__emplace_back_slow_path<UUID const&,std::vector<LibraryDescription> const&>(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v4;
  }

  v19 = a1;
  if (v7)
  {
    std::allocator<std::pair<UUID,std::vector<LibraryDescription>>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = 40 * v3;
  v15 = 0;
  v16 = v8;
  v17 = 40 * v3;
  v18 = 0;
  *v8 = *a2;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  std::vector<LibraryDescription>::__init_with_size[abi:ne200100]<LibraryDescription*,LibraryDescription*>(40 * v3 + 16, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5));
  v9 = v17 + 40;
  v10 = *(a1 + 8) - *a1;
  v11 = &v16[-v10];
  memcpy(&v16[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  std::__split_buffer<std::pair<UUID,std::vector<LibraryDescription>>>::~__split_buffer(&v15);
  return v9;
}

void sub_1D97CE800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<UUID,std::vector<LibraryDescription>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<LibraryDescription>::__init_with_size[abi:ne200100]<LibraryDescription*,LibraryDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<LibraryDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97CE87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<LibraryDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::allocator<LibraryDescription>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<LibraryDescription>,LibraryDescription*,LibraryDescription*,LibraryDescription*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 24;
    do
    {
      v7 = *(v6 - 24);
      *(v4 + 16) = *(v6 - 8);
      *v4 = v7;
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v4 + 24), v6);
      v8 = v6 - 24;
      v9 = *(v6 + 32);
      *(v4 + 64) = 0;
      *(v4 + 56) = v9;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(v4 + 64, *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 5);
      *(v4 + 88) = *(v6 + 64);
      v4 = v14 + 96;
      v14 += 96;
      v6 += 96;
    }

    while (v8 + 96 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LibraryDescription>,LibraryDescription*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::allocator<std::pair<UUID,std::vector<LibraryDescription>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<UUID,std::vector<LibraryDescription>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<UUID,std::vector<LibraryDescription>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<UUID,std::vector<LibraryDescription>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v4 = (i - 24);
    std::vector<LibraryDescription>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

void **std::__split_buffer<std::vector<std::unique_ptr<AS::Operator>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::unique_ptr<AS::Operator>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::unique_ptr<AS::Operator>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::unique_ptr<AS::Operator>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<AS::Operator>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<AS::Operator>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<AS::Operator>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 16))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<UUID,unsigned long>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,unsigned long>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,unsigned long>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,unsigned long>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<CSCppSymbolicator *>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<CSCppSymbolicator *>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<CSCppSymbolicator *>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<CSCppSymbolicator *>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<CSCppSymbolicator *>>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<AS::LoadDescription,std::hash<AS::LoadDescription>,std::equal_to<AS::LoadDescription>,std::allocator<AS::LoadDescription>>::__emplace_unique_key_args<AS::LoadDescription,AS::LoadDescription const&>(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = (v2 + (*a2 << 6) + (*a2 >> 2) + 2654435769) ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (v2 + (*a2 << 6) + (*a2 >> 2) + 2654435769) ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void *std::__hash_table<AS::LoadDescription,std::hash<AS::LoadDescription>,std::equal_to<AS::LoadDescription>,std::allocator<AS::LoadDescription>>::find<AS::LoadDescription>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = (v3 + (*a2 << 6) + (*a2 >> 2) + 2654435769) ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (v3 + (*a2 << 6) + (*a2 >> 2) + 2654435769) ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t catch_mach_exception_raise_state(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, unsigned int a7, uint64_t a8, unsigned int *a9)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a3 == 1 || (*ref_count = 0, v12 = a3[1], vm_map_page_query(*MEMORY[0x1E69E9A60], v12, &ref_count[1], ref_count)))
  {
    result = 5;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v19 = v12;
      v20 = 1024;
      v21 = ref_count[1];
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Caught EXC_BAD_ACCESS at 0x%llx, valid page mapping, page query flags (0x%x)\n", buf, 0x12u);
    }

    result = 5;
    if (a7 <= 0xF5 && *a9 >= a7)
    {
      memcpy(a8, a6, 4 * a7);
      *a9 = a7;
      v15 = *(a8 + 276);
      if (thread_exit_due_to_bad_access)
      {
        v16 = thread_exit_due_to_bad_access;
      }

      else
      {
        v16 = 0;
      }

      result = 0;
      *(a8 + 264) = v16;
      *(a8 + 276) = v15 & 0xFFFFFFFB;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void thread_exit_due_to_bad_access(void)
{
  if (_exception_safe_thread_key(void)::onceToken != -1)
  {
    dispatch_once(&_exception_safe_thread_key(void)::onceToken, &__block_literal_global_3);
  }

  v0 = pthread_getspecific(_exception_safe_thread_key(void)::est_key);
  CSCppExceptionSafeThread::runloop_exit_due_to_bad_access(v0);
}

uint64_t catch_mach_exception_raise_identity_protected(uint64_t a1, uint64_t a2, mach_port_name_t a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  act_listCnt = 0;
  act_list = 0;
  task_threads(*MEMORY[0x1E69E9A60], &act_list, &act_listCnt);
  if (!act_listCnt)
  {
    v14 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_20;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E9C10];
  while (1)
  {
    thread_info_outCnt = 6;
    v8 = thread_info(act_list[v6], 4u, thread_info_out, &thread_info_outCnt);
    v9 = v8;
    if (v8)
    {
      if (v8 != 268435459)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = mach_error_string(v9);
          *buf = 136315138;
          v35 = v10;
          _os_log_impl(&dword_1D96E9000, v7, OS_LOG_TYPE_ERROR, "thread_info failed due to %s", buf, 0xCu);
        }

        v11 = *MEMORY[0x1E69E9848];
        v12 = mach_error_string(v9);
        fprintf(v11, "thread_info failed due to %s", v12);
      }

      goto LABEL_9;
    }

    if (*thread_info_out == a2)
    {
      break;
    }

LABEL_9:
    ++v6;
    v13 = act_listCnt;
    if (v6 >= act_listCnt)
    {
      v14 = 0;
      if (!act_listCnt)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  v14 = act_list[v6];
  v13 = act_listCnt;
  if (!act_listCnt)
  {
    goto LABEL_13;
  }

LABEL_15:
  v16 = 0;
  do
  {
    v17 = act_list[v16];
    if (v14 != v17)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v17);
      v13 = act_listCnt;
    }

    ++v16;
  }

  while (v16 < v13);
  v15 = 4 * v13;
LABEL_20:
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], act_list, v15);
  LODWORD(act_list) = 70;
  state = thread_get_state(v14, 1, thread_info_out, &act_list);
  if (state)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = mach_error_string(state);
      *buf = 136315138;
      v35 = v19;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "thread_get_state failed due to %s", buf, 0xCu);
    }

    v20 = *MEMORY[0x1E69E9848];
    v21 = mach_error_string(state);
    fprintf(v20, "thread_get_state failed due to %s", v21);
  }

  else if (*a5 == 1 || (act_listCnt = 0, thread_info_outCnt = 0, v22 = a5[1], vm_map_page_query(*MEMORY[0x1E69E9A60], v22, &act_listCnt, &thread_info_outCnt)))
  {
    state = 5;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v35 = v22;
      v36 = 1024;
      v37 = act_listCnt;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Caught EXC_BAD_ACCESS at 0x%llx, valid page mapping, page query flags (0x%x)\n", buf, 0x12u);
    }

    if (thread_exit_due_to_bad_access)
    {
      v25 = thread_exit_due_to_bad_access;
    }

    else
    {
      v25 = 0;
    }

    v29 = v25;
    v30 &= ~4u;
    state = thread_set_state(v14, 1, thread_info_out, act_list);
    if (!state)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], a3);
      state = 0;
    }
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], v14);
  v23 = *MEMORY[0x1E69E9840];
  return state;
}

void CSCppExceptionSafeThread::CSCppExceptionSafeThread(CSCppExceptionSafeThread *this)
{
  *(this + 1) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  pthread_mutex_init((this + 16), 0);
  pthread_cond_init((this + 80), 0);
  pthread_mutex_init(this + 3, 0);
  pthread_cond_init((this + 256), 0);
  pthread_mutex_lock(this + 3);
  if (pthread_create(this, 0, thread_runloop_init, this))
  {
    atomic_store(0x1001u, this + 3);
  }

  else
  {
    v2 = pthread_mach_thread_np(*this);
    CSCppExceptionSafeThread::register_for_exceptions(this, v2);
    pthread_cond_wait((this + 256), this + 3);
    pthread_mutex_unlock(this + 3);
  }
}

uint64_t CSCppExceptionSafeThread::register_for_exceptions(mach_port_name_t *this, thread_act_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9A60];
  if (CSTaskIsTranslated(*MEMORY[0x1E69E9A60]))
  {
    v5 = -2147483646;
  }

  else
  {
    v5 = -2147483644;
  }

  LODWORD(result) = mach_port_allocate(*v4, 1u, this + 2);
  if (result || (LODWORD(result) = mach_port_insert_right(*v4, this[2], this[2], 0x14u), result) || (LODWORD(result) = thread_set_exception_ports(a2, 2u, this[2], v5, 1), result) || (result = MEMORY[0x1DA736DF0](*v4, this[2], this), result))
  {
    v7 = result;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = mach_error_string(v7);
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure while allocating exception port: %s\n", buf, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9848];
    v9 = mach_error_string(v7);
    result = fprintf(v8, "failure while allocating exception port: %s\n", v9);
    v10 = this[2];
    if (v10)
    {
      mach_port_mod_refs(*v4, v10, 1u, -1);
      result = mach_port_deallocate(*v4, this[2]);
      this[2] = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSCppExceptionSafeThread::run(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CSCppExceptionSafeThread::is_current_thread(a1))
  {
    *buf = a3;
    std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back((a1 + 136), buf);
    (*(a2 + 16))(a2);
    CSCppExceptionSafeThread::pop_recovery_block(a1);
LABEL_12:
    v14 = 4096;
    goto LABEL_13;
  }

  if (!*(a1 + 8))
  {
    (*(a2 + 16))(a2);
    goto LABEL_12;
  }

  os_unfair_lock_lock((a1 + 184));
  pthread_mutex_lock((a1 + 16));
  *(a1 + 128) = a2;
  *buf = a3;
  std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back((a1 + 136), buf);
  pthread_cond_signal((a1 + 80));
  pthread_mutex_unlock((a1 + 16));
  v6 = MEMORY[0x1E69E9C10];
  v7 = MEMORY[0x1E69E9848];
  do
  {
    v8 = mach_msg_server_once(_exception_handler_demux, 0x40000u, *(a1 + 8), 0);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = mach_error_string(v9);
        *buf = 136315394;
        *&buf[4] = v10;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&dword_1D96E9000, v6, OS_LOG_TYPE_ERROR, "error handling EST message: %s (%u)\n", buf, 0x12u);
      }

      v11 = *v7;
      v12 = mach_error_string(v9);
      fprintf(v11, "error handling EST message: %s (%u)\n", v12, v9);
    }

    v13 = atomic_load((a1 + 12));
  }

  while (v13 < 0x1000);
  v14 = atomic_load((a1 + 12));
  os_unfair_lock_unlock((a1 + 184));
LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL CSCppExceptionSafeThread::is_current_thread(CSCppExceptionSafeThread *this)
{
  if (_exception_safe_thread_key(void)::onceToken != -1)
  {
    CSCppExceptionSafeThread::is_current_thread();
  }

  return pthread_getspecific(_exception_safe_thread_key(void)::est_key) != 0;
}

uint64_t CSCppExceptionSafeThread::pop_recovery_block(CSCppExceptionSafeThread *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 0;
  }

  v2 = v1 - 1;
  v3 = *(*(*(this + 18) + (((*(this + 21) + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 21) + v2) & 0x1FF));
  *(this + 22) = v2;
  std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::__maybe_remove_back_spare[abi:ne200100](this + 17, 1);
  return v3;
}

uint64_t _exception_handler_demux(mach_msg_header_t *a1, mach_msg_header_t *a2)
{
  if (a1->msgh_id == 999)
  {
    context = 0;
    if (!mach_port_get_context(*MEMORY[0x1E69E9A60], a1->msgh_local_port, &context))
    {
      atomic_store(a1[1].msgh_bits, (context + 12));
    }

    return 1;
  }

  else
  {

    return mach_exc_server(a1, a2);
  }
}

uint64_t CSCppExceptionSafeThread::runloop_send_exit_notice(uint64_t this, int a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3.msgh_voucher_port = 0;
    v3.msgh_id = 999;
    v3.msgh_remote_port = v2;
    v3.msgh_local_port = 0;
    *&v3.msgh_bits = 0x1C00001413;
    v4 = a2;
    return mach_msg_send(&v3);
  }

  return this;
}

uint64_t CSCppExceptionSafeThread::thread_init(CSCppExceptionSafeThread *this)
{
  if (_exception_safe_thread_key(void)::onceToken != -1)
  {
    CSCppExceptionSafeThread::is_current_thread();
  }

  pthread_setspecific(_exception_safe_thread_key(void)::est_key, this);
  pthread_setname_np("ExceptionSafeThread");
  atomic_store(0x100u, this + 3);
  pthread_mutex_lock(this + 3);
  pthread_cond_signal((this + 256));

  return pthread_mutex_unlock(this + 3);
}

void CSCppExceptionSafeThread::runloop(CSCppExceptionSafeThread *this)
{
  while (1)
  {
    pthread_mutex_lock((this + 16));
    while (1)
    {
      v2 = *(this + 16);
      if (v2)
      {
        break;
      }

      pthread_cond_wait((this + 80), (this + 16));
    }

    atomic_store(0x100u, this + 3);
    (*(v2 + 16))();
    CSCppExceptionSafeThread::pop_recovery_block(this);
    CSCppExceptionSafeThread::runloop_send_exit_notice(this, 4096);
    *(this + 16) = 0;
    pthread_mutex_unlock((this + 16));
  }
}

uint64_t CSCppExceptionSafeThread::runloop_prep_to_turn(CSCppExceptionSafeThread *this, unsigned int a2)
{
  if (a2 <= 0x1000)
  {
    CSCppExceptionSafeThread::pop_recovery_block(this);
  }

  else
  {
    while (*(this + 22))
    {
      v4 = CSCppExceptionSafeThread::pop_recovery_block(this);
      if (v4)
      {
        (*(v4 + 16))();
      }
    }
  }

  result = CSCppExceptionSafeThread::runloop_send_exit_notice(this, a2);
  *(this + 16) = 0;
  return result;
}

void CSCppExceptionSafeThread::runloop_exit_due_to_bad_access(CSCppExceptionSafeThread *this)
{
  CSCppExceptionSafeThread::runloop_prep_to_turn(this, 0x1002u);
  pthread_mutex_unlock((this + 16));
  CSCppExceptionSafeThread::runloop(this);
}

void *std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<TRawSymbol<Pointer32> **>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TRawSymbol<Pointer32> **,std::allocator<TRawSymbol<Pointer32> **>>::emplace_back<TRawSymbol<Pointer32> **&>(a1, &v10);
}

void sub_1D97D0708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void CSCallFrameInfoForBinary::ParseEHFrameData(CSCallFrameInfoForBinary *this, __n128 a2)
{
  v25 = 0;
  v4 = (this + 56);
  v3 = *(this + 7);
  v6 = (this + 24);
  v5 = *(this + 3);
  v24[0] = *(this + 5);
  v24[1] = v5;
  v24[2] = -1;
  v7 = *(this + 8);
  if (v3 < v7)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E9848];
    do
    {
      if ((v7 - v3) <= v8 + 7)
      {
        break;
      }

      v10 = CSBinaryDataRef::Get32(v4, &v25);
      v14 = CSBinaryDataRef::Get32(v4, &v25);
      v15 = v8 + v10;
      v16 = v8 + v10 + 4;
      if (v14)
      {
        v17 = CSCallFrameInfoForBinary::ParseFDE(this, v11, v12, v14, v25, (v15 + 4), v24, 1, v6);
      }

      else
      {
        v17 = CSCallFrameInfoForBinary::ParseCIE(this, v8, v12, v13, v25, v15 + 4, v24);
      }

      v25 = v17;
      if (v17 != v16)
      {
        if (v14)
        {
          v18 = "FDE";
        }

        else
        {
          v18 = "CIE";
        }

        v19 = this;
        if (*(this + 23) < 0)
        {
          v19 = *this;
        }

        fprintf(*v9, "CoreSymbolication warning: error parsing %s at 0x%8.8llx in:\n\t__TEXT [0x%8.8llx - 0x%8.8llx) __eh_frame [0x%8.8llx - 0x%8.8llx) %s\n", v18, *(this + 5) + v17, *(this + 3), *(this + 4) + *(this + 3), *(this + 5), *(this + 6) + *(this + 5), v19);
        v25 = v16;
      }

      v3 = *(this + 7);
      v7 = *(this + 8);
      v8 = v16;
    }

    while (v3 < v7);
  }

  v20 = *(this + 17);
  v21 = *(this + 18);
  v22 = 126 - 2 * __clz((v21 - v20) >> 5);
  if (v21 == v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  std::__introsort<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *,false>(v20, v21, v23, 1, a2);
  *(this + 104) = 1;
}

uint64_t CSCallFrameInfoForBinary::ParseCIE(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, void *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a5;
  v28 = a2;
  LOBYTE(v32) = 0;
  v10 = 0;
  LOBYTE(v30) = CSBinaryDataRef::Get8((a1 + 56), &v27);
  while (1)
  {
    v11 = CSBinaryDataRef::Get8((a1 + 56), &v27);
    *(&v30 + v10 + 1) = v11;
    if (!v11)
    {
      break;
    }

    if (++v10 == 8)
    {
      goto LABEL_7;
    }
  }

  if (v10 <= 6)
  {
    bzero(&v30 + v10 + 2, 7 - v10);
    goto LABEL_10;
  }

LABEL_7:
  if (v10 == 8 && BYTE8(v30))
  {
    fprintf(*MEMORY[0x1E69E9848], "CIE parse error: CIE augmentation string was too large for the fixed sized buffer of %d bytes.\n", 8);
    result = 0;
    goto LABEL_27;
  }

LABEL_10:
  HIDWORD(v30) = CSBinaryDataRef::Get_ULEB128((a1 + 56), &v27);
  LODWORD(v31) = CSBinaryDataRef::Get_SLEB128((a1 + 56), &v27);
  DWORD1(v31) = CSBinaryDataRef::Get8((a1 + 56), &v27);
  v13 = BYTE1(v30);
  if (BYTE1(v30))
  {
    ULEB128 = CSBinaryDataRef::Get_ULEB128((a1 + 56), &v27);
    v15 = v27;
    v16 = strlen(&v30 + 1);
    if (v13 == 122 && v16 >= 2)
    {
      v17 = v16 - 1;
      v18 = &v30 + 2;
      do
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 == 82)
        {
          LOBYTE(v32) = CSBinaryDataRef::Get8((a1 + 56), &v27);
        }

        else if (v19 == 80)
        {
          v21 = CSBinaryDataRef::Get8((a1 + 56), &v27);
          CSBinaryDataRef::GetDwarfEHPtr((a1 + 56), &v27, v21, a7);
        }

        else if (v19 == 76)
        {
          CSBinaryDataRef::Get8((a1 + 56), &v27);
        }

        --v17;
      }

      while (v17);
    }

    v22 = v15 + ULEB128;
    v27 = v15 + ULEB128;
  }

  else
  {
    v22 = v27;
  }

  v23 = a6 - v22;
  if (a6 <= v22)
  {
    v23 = 0;
  }

  else
  {
    DWORD2(v31) = v22;
    v27 = a6;
  }

  HIDWORD(v31) = v23;
  v29 = &v28;
  v24 = std::__tree<std::__value_type<unsigned int,CSCallFrameInfoForBinary::CIE>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CSCallFrameInfoForBinary::CIE>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CSCallFrameInfoForBinary::CIE>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 112, &v28);
  v25 = v31;
  *(v24 + 2) = v30;
  *(v24 + 3) = v25;
  *(v24 + 16) = v32;
  result = v27;
LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSCallFrameInfoForBinary::ParseFDE(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7, int a8, void *a9)
{
  v9 = a5;
  v38 = a5;
  if (a8)
  {
    v10 = a5 - a4 - 4;
  }

  else
  {
    v10 = a4;
  }

  v11 = a1[15];
  if (!v11)
  {
    goto LABEL_12;
  }

  v15 = a1 + 15;
  do
  {
    v16 = *(v11 + 28);
    v17 = v16 >= v10;
    v18 = v16 < v10;
    if (v17)
    {
      v15 = v11;
    }

    v11 = *(v11 + 8 * v18);
  }

  while (v11);
  if (v15 == a1 + 15 || *(v15 + 7) > v10)
  {
LABEL_12:
    v19 = *MEMORY[0x1E69E9848];
    if (a8)
    {
      fprintf(v19, "CoreSymbolication warning: Unable to locate CIE at 0x%8.8x = 0x%8.8x - (0x%8.8x + 4)\n");
    }

    else
    {
      fprintf(v19, "CoreSymbolication warning: Unable to locate CIE with ID 0x%8.8x\n");
    }

    return v9;
  }

  DwarfEHPtr = CSBinaryDataRef::GetDwarfEHPtr((a1 + 7), &v38, *(v15 + 64), a7);
  v22 = CSBinaryDataRef::GetDwarfEHPtr((a1 + 7), &v38, v15[8] & 0xF, a7);
  v23 = a9[1];
  if (DwarfEHPtr - *a9 >= v23)
  {
    if (!DwarfEHPtr)
    {
      v24 = 0;
      goto LABEL_20;
    }

    fprintf(*MEMORY[0x1E69E9848], "CoreSymbolication warning: fde.addrRange.location 0x%8.8llx isn't in  the __TEXT segment [0x%8.8llx - 0x%8.8llx)\n", DwarfEHPtr, *a9, v23);
  }

  v24 = 1;
LABEL_20:
  if (*(v15 + 33) == 122)
  {
    ULEB128 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v38);
    v26 = v38;
    if (ULEB128)
    {
      v26 = v38 + ULEB128;
      v38 += ULEB128;
    }
  }

  else
  {
    v26 = v38;
  }

  v27 = a6 - v26;
  if (a6 <= v26)
  {
    v27 = 0;
    a6 = v26;
  }

  else
  {
    v38 = a6;
  }

  v9 = a6;
  if (v24)
  {
    v28 = a1[18];
    v29 = a1[19];
    if (v28 >= v29)
    {
      v31 = a1[17];
      v32 = v28 - v31;
      v33 = (v28 - v31) >> 5;
      v34 = v33 + 1;
      if ((v33 + 1) >> 59)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v35 = v29 - v31;
      if (v35 >> 4 > v34)
      {
        v34 = v35 >> 4;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFE0)
      {
        v34 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        std::allocator<CSCallFrameInfoForBinary::FDE>::allocate_at_least[abi:ne200100]((a1 + 17), v34);
      }

      v36 = 32 * v33;
      *v36 = v10;
      *(v36 + 8) = DwarfEHPtr;
      *(v36 + 16) = v22;
      *(v36 + 24) = v26;
      *(v36 + 28) = v27;
      v30 = 32 * v33 + 32;
      memcpy(0, v31, v32);
      v37 = a1[17];
      a1[17] = 0;
      a1[18] = v30;
      a1[19] = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v28 = v10;
      *(v28 + 8) = DwarfEHPtr;
      *(v28 + 16) = v22;
      v30 = v28 + 32;
      *(v28 + 24) = v26;
      *(v28 + 28) = v27;
    }

    a1[18] = v30;
    return v38;
  }

  return v9;
}

void CSCallFrameInfoForBinary::ParseInstructions(void *a1, const CSThread **a2, unsigned int *a3, uint64_t (*a4)(const CSThread **, unsigned int *, const CSThread **, uint64_t), uint64_t a5)
{
  if (!a3)
  {
    return;
  }

  v6 = a1[15];
  if (!v6)
  {
    return;
  }

  v10 = *a3;
  v11 = a1 + 15;
  do
  {
    v12 = v6[7];
    v24 = v12 >= v10;
    v13 = v12 < v10;
    if (v24)
    {
      v11 = v6;
    }

    v6 = *&v6[2 * v13];
  }

  while (v6);
  if (v11 == (a1 + 15) || v11[7] > v10)
  {
    return;
  }

  v87 = v11[11];
  v84 = v11[12];
  v14 = *a2;
  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v104 = v14;
  Pointer = 0;
  v106 = 0xFFFFFFFFLL;
  CSCallFrameInfoForBinary::RegLocations::RegLocations(&v107, v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  CSCallFrameInfoForBinary::RegLocations::RegLocations(__p, *a2);
  v16 = 0;
  v101[0] = v101;
  v101[1] = v101;
  v102 = 0;
  v17 = 1;
  do
  {
    v85 = v17;
    if (v16)
    {
      v19 = a3[6];
      v18 = a3[7];
      std::vector<CSCallFrameInfoForBinary::RegLocation>::__assign_with_size[abi:ne200100]<CSCallFrameInfoForBinary::RegLocation*,CSCallFrameInfoForBinary::RegLocation*>(__p, v107, v108, 0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3));
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = v11[14];
      v18 = v11[15];
      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v100 = v19;
    v20 = v19 + v18;
    v21 = a1[7];
    v22 = a1[8];
    v24 = v22 <= v21 || (v22 - v21) <= v19 || v19 >= v20;
    if (!v24)
    {
      while (1)
      {
        v25 = CSBinaryDataRef::Get8((a1 + 7), &v100);
        v26 = v25 & 0x3F;
        v27 = (v25 >> 6) ^ 2;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            switch(v25 & 0x3F)
            {
              case 1u:
                if (a4)
                {
                  v33 = a2[1];
                  v96 = *a2;
                  v97 = v33;
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v34 = a4(&v96, a3, &v104, a5);
                  if (v97)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v97);
                  }

                  if ((v34 & 1) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                Pointer = CSBinaryDataRef::GetPointer((a1 + 7), &v100);
                break;
              case 2u:
                if (a4)
                {
                  v61 = a2[1];
                  v94 = *a2;
                  v95 = v61;
                  if (v61)
                  {
                    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v62 = a4(&v94, a3, &v104, a5);
                  if (v95)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v95);
                  }

                  if ((v62 & 1) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                v58 = CSBinaryDataRef::Get8((a1 + 7), &v100);
                goto LABEL_87;
              case 3u:
                if (a4)
                {
                  v56 = a2[1];
                  v92 = *a2;
                  v93 = v56;
                  if (v56)
                  {
                    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v57 = a4(&v92, a3, &v104, a5);
                  if (v93)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
                  }

                  if ((v57 & 1) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                v58 = CSBinaryDataRef::Get16((a1 + 7), &v100);
LABEL_87:
                v41 = (v87 * v58);
                goto LABEL_53;
              case 4u:
                if (a4)
                {
                  v70 = a2[1];
                  v90 = *a2;
                  v91 = v70;
                  if (v70)
                  {
                    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v71 = a4(&v90, a3, &v104, a5);
                  if (v91)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v91);
                  }

                  if ((v71 & 1) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                v41 = CSBinaryDataRef::Get32((a1 + 7), &v100) * v87;
                goto LABEL_53;
              case 5u:
                ULEB128 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                SLEB128 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v29 = (*(**a2 + 96))(*a2, ULEB128, 2);
                goto LABEL_110;
              case 6u:
                v59 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v35 = (*(**a2 + 96))(*a2, v59, 2);
                goto LABEL_44;
              case 7u:
                v63 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v64 = (*(**a2 + 96))(*a2, v63, 2);
                if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) > v64)
                {
                  *&v107[24 * v64] = 1;
                }

                break;
              case 8u:
                v65 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v66 = (*(**a2 + 96))(*a2, v65, 2);
                if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) > v66)
                {
                  *&v107[24 * v66] = 2;
                }

                break;
              case 9u:
                v74 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v75 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v76 = (*(**a2 + 96))(*a2, v74, 2);
                v77 = (*(**a2 + 96))(*a2, v75, 2);
                v78 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3);
                if (v78 > v76)
                {
                  v79 = &v107[24 * v76];
                  if (v78 <= v77)
                  {
                    *v79 = 1;
                  }

                  else
                  {
                    *v79 = 5;
                    *(v79 + 2) = v75;
                  }
                }

                break;
              case 0xAu:
                std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::__create_node[abi:ne200100]<CSCallFrameInfoForBinary::RegLocations const&>();
              case 0xBu:
                v46 = v102;
                if (v102)
                {
                  v47 = v101[0];
                  if (&v107 != (v101[0] + 16))
                  {
                    std::vector<CSCallFrameInfoForBinary::RegLocation>::__assign_with_size[abi:ne200100]<CSCallFrameInfoForBinary::RegLocation*,CSCallFrameInfoForBinary::RegLocation*>(&v107, *(v101[0] + 2), *(v101[0] + 3), 0xAAAAAAAAAAAAAAABLL * ((*(v101[0] + 3) - *(v101[0] + 2)) >> 3));
                    v47 = v101[0];
                    v46 = v102;
                  }

                  v49 = *v47;
                  v48 = v47[1];
                  *(v49 + 8) = v48;
                  *v48 = v49;
                  v102 = v46 - 1;
                  std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::__delete_node[abi:ne200100](v101, v47);
                }

                break;
              case 0xCu:
                v60 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v45 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                LODWORD(v106) = v60;
                goto LABEL_79;
              case 0xDu:
                LODWORD(v106) = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                break;
              case 0xEu:
                v45 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
LABEL_79:
                HIDWORD(v106) = v45;
                break;
              case 0xFu:
                v67 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v100 += v67;
                break;
              case 0x10u:
                v68 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v51 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                Data = CSBinaryDataRef::GetData((a1 + 7), &v100, v51);
                v69 = (*(**a2 + 96))(*a2, v68, 2);
                if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) <= v69)
                {
                  break;
                }

                v54 = &v107[24 * v69];
                v55 = 6;
                goto LABEL_95;
              case 0x11u:
                v82 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                SLEB128 = CSBinaryDataRef::Get_SLEB128((a1 + 7), &v100);
                v29 = (*(**a2 + 96))(*a2, v82, 2);
LABEL_110:
                v30 = v107;
                if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) <= v29)
                {
                  break;
                }

                v31 = v84 * SLEB128;
                goto LABEL_33;
              case 0x12u:
                v80 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v81 = CSBinaryDataRef::Get_SLEB128((a1 + 7), &v100);
                LODWORD(v106) = v80;
                HIDWORD(v106) = v84 * v81;
                break;
              case 0x13u:
                HIDWORD(v106) = v84 * CSBinaryDataRef::Get_SLEB128((a1 + 7), &v100);
                break;
              case 0x16u:
                v50 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                v51 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
                Data = CSBinaryDataRef::GetData((a1 + 7), &v100, v51);
                v53 = (*(**a2 + 96))(*a2, v50, 2);
                if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) <= v53)
                {
                  break;
                }

                v54 = &v107[24 * v53];
                v55 = 7;
LABEL_95:
                *v54 = v55;
                *(v54 + 1) = Data;
                *(v54 + 4) = v51;
                break;
              default:
                break;
            }
          }

          else
          {
            if (a4)
            {
              v39 = a2[1];
              v98 = *a2;
              v99 = v39;
              if (v39)
              {
                atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v40 = a4(&v98, a3, &v104, a5);
              if (v99)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v99);
              }

              if ((v40 & 1) == 0)
              {
                goto LABEL_118;
              }
            }

            v41 = (v87 * v26);
LABEL_53:
            Pointer += v41;
          }
        }

        else if (v27)
        {
          v35 = (*(**a2 + 96))(*a2, v26, 2);
LABEL_44:
          if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) > v35)
          {
            v36 = __p[0] + 24 * v35;
            v37 = *v36;
            v38 = &v107[24 * v35];
            *(v38 + 2) = *(v36 + 2);
            *v38 = v37;
          }
        }

        else
        {
          v28 = CSBinaryDataRef::Get_ULEB128((a1 + 7), &v100);
          v29 = (*(**a2 + 96))(*a2, v26, 2);
          v30 = v107;
          if (0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 3) > v29)
          {
            v31 = v84 * v28;
LABEL_33:
            v32 = &v30[24 * v29];
            *v32 = 3;
            *(v32 + 1) = v31;
          }
        }

        v42 = a1[7];
        v43 = a1[8];
        if (v43 > v42 && (v43 - v42) > v100 && v100 < v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
    v17 = 0;
    v16 = 1;
  }

  while ((v85 & 1) != 0);
  if (a4)
  {
    v83 = a2[1];
    v88 = *a2;
    v89 = v83;
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    a4(&v88, a3, &v104, a5);
    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }
  }

LABEL_118:
  std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::clear(v101);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }
}

void sub_1D97D1860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::clear(&a26);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

CSCallFrameInfoForBinary::RegLocations *CSCallFrameInfoForBinary::RegLocations::RegLocations(CSCallFrameInfoForBinary::RegLocations *this, const CSThread *a2)
{
  v4 = (*(*a2 + 32))(a2);
  v5 = std::vector<CSCallFrameInfoForBinary::RegLocation>::vector[abi:ne200100](this, v4);
  CSCallFrameInfoForBinary::RegLocations::SetABIDefaults(v5, a2);
  return this;
}

void sub_1D97D199C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCallFrameInfoForBinary::RegLocations::SetABIDefaults(CSCallFrameInfoForBinary::RegLocations *this, const CSThread *a2)
{
  result = (*(*a2 + 48))(a2, 0);
  v5 = *this;
  v4 = *(this + 1);
  if (v4 != *this)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (result == v7)
      {
        v8 = v5 + 24 * result;
        *v8 = 4;
        *(v8 + 8) = 0;
        v5 = *this;
        v4 = *(this + 1);
      }

      else
      {
        *(v5 + v6) = 0;
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
  }

  return result;
}

uint64_t CSCallFrameInfoForBinary::FindFDE(CSCallFrameInfoForBinary *this, unint64_t a2, __n128 a3)
{
  if ((*(this + 104) & 1) == 0)
  {
    CSCallFrameInfoForBinary::ParseEHFrameData(this, a3);
    *(this + 104) = 1;
  }

  result = *(this + 17);
  v6 = *(this + 18);
  if (result == v6)
  {
    return 0;
  }

  v7 = (v6 - result) >> 5;
  do
  {
    v8 = v7 >> 1;
    v9 = result + 32 * (v7 >> 1);
    v10 = *(v9 + 16) + *(v9 + 8);
    v11 = v9 + 32;
    v7 += ~(v7 >> 1);
    if (v10 <= a2)
    {
      result = v11;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (result == v6 || a2 - *(result + 8) >= *(result + 16))
  {
    return 0;
  }

  return result;
}

uint64_t CSCallFrameInfoForBinary::UnwindThreadState(CSCallFrameInfoForBinary *a1, const CSThread **a2, uint64_t a3, uint64_t *a4, unint64_t a5, __n128 a6)
{
  FDE = CSCallFrameInfoForBinary::FindFDE(a1, a5, a6);
  if (!FDE)
  {
    return 0;
  }

  v12 = FDE;
  v13 = a2[1];
  v26 = *a2;
  v27 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  FindRowUserData::FindRowUserData(v28, &v26, a5);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v14 = a2[1];
  v25[0] = *a2;
  v25[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  CSCallFrameInfoForBinary::ParseInstructions(a1, v25, v12, FindRowForAddress, v28);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v31 == 1 && (v15 = (*(**a2 + 32))(), (v16 = v15) != 0))
  {
    v17 = 0;
    LODWORD(v18) = 0;
    do
    {
      v19 = a2[1];
      v24[0] = *a2;
      v24[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = a4[1];
      v23[0] = *a4;
      v23[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = CSCallFrameInfoForBinary::UnwindRegisterAtIndex(v15, v17, v24, v28, a3, v23);
      v21 = v15;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v18 = (v18 + v21);
      v17 = (v17 + 1);
    }

    while (v16 != v17);
  }

  else
  {
    v18 = 0;
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_1D97D1CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL FindRowForAddress(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = *(a3 + 1) + *(a2 + 8);
  v6 = *(a4 + 48);
  if (v5 <= v6)
  {
    v7 = *a3;
    *(a4 + 16) = *(a3 + 2);
    *a4 = v7;
    if (a4 != a3)
    {
      std::vector<CSCallFrameInfoForBinary::RegLocation>::__assign_with_size[abi:ne200100]<CSCallFrameInfoForBinary::RegLocation*,CSCallFrameInfoForBinary::RegLocation*>((a4 + 24), *(a3 + 3), *(a3 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 4) - *(a3 + 3)) >> 3));
      v6 = *(a4 + 48);
    }
  }

  result = v5 < v6;
  *(a4 + 56) = v5 >= v6;
  return result;
}

uint64_t CSCallFrameInfoForBinary::UnwindRegisterAtIndex(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v41 = 0;
  v11 = *(a4 + 24);
  v12 = (v11 + 24 * a2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a4 + 32) - v11) >> 3) <= a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v11 + 24 * a2);
  }

  if ((*(**a3 + 64))(*a3, 0) == a2)
  {
    v14 = (*(**a3 + 72))(*a3, 0);
    v15 = *(a4 + 24);
    v16 = (v15 + 24 * v14);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a4 + 32) - v15) >> 3) <= v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v15 + 24 * v14);
    }

    if (v13)
    {
      if (v17)
      {
        v18 = *v13 == 0;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v13 = v16;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_17;
    }

    v13 = v17;
  }

  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_17:
  v40 = -1;
  v19 = *v13;
  if (*v13 > 2)
  {
    if ((v19 - 3) < 2)
    {
      RegisterValue = CSThread::GetRegisterValue(*a3, *(a4 + 16), 2, -1, &v41);
      if (v41 == 1)
      {
        v24 = *(v13 + 1);
        v25 = RegisterValue + *(a4 + 20);
        if (*v13 == 4)
        {
          v26 = *a6;
          v27 = v25 + v24;
          goto LABEL_51;
        }

        v30 = mapped_memory_read_pointer(a5, v25 + v24, &v40);
        v26 = *a6;
        if (!v30)
        {
          v27 = v40;
          goto LABEL_51;
        }
      }

      else
      {
        v26 = *a6;
      }

LABEL_46:
      CSThread::SetRegisterIsValid(v26, a2, 0, 0);
      return 0;
    }

    if ((v19 - 6) < 2)
    {
      v21 = a3[1];
      v36 = *a3;
      v37 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = a5;
      v39 = 0;
      v35 = 0;
      CSBinaryDataRef::CSBinaryDataRef(v34, *(v13 + 1), v13[4], 0);
      if (*(*a3 + 9))
      {
        v22 = 8;
      }

      else
      {
        v22 = 4;
      }

      v34[17] = v22;
      if (CSDwarfExpression::Evaluate(DWARFExpressionReadMemoryCallback, DWARFExpressionReadRegisterCallback, &v36, v34, 0, v13[4], 0, &v35))
      {
        CSThread::SetRegisterIsValid(*a6, a2, 0, 0);
LABEL_31:
        v20 = 0;
        goto LABEL_54;
      }

      if (*v13 == 7)
      {
        CSThread::SetRegisterValue(*a6, a2, 0, v35);
      }

      else
      {
        v31 = mapped_memory_read_pointer(a5, v35, &v40);
        v32 = *a6;
        if (v31)
        {
          CSThread::SetRegisterIsValid(v32, a2, 0, 0);
          goto LABEL_31;
        }

        CSThread::SetRegisterValue(v32, a2, 0, v40);
      }

      v20 = 1;
LABEL_54:
      CSCppAddressSet::sort(v34);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      return v20;
    }

    if (v19 == 5)
    {
      v28 = CSThread::GetRegisterValue(*a3, v13[2], 2, 0, &v41);
      v40 = v28;
      if (v41 != 1)
      {
        return 0;
      }

      v27 = v28;
      v26 = *a6;
LABEL_51:
      CSThread::SetRegisterValue(v26, a2, 0, v27);
      return 1;
    }

LABEL_39:
    v20 = 0;
    if ((*(**a3 + 48))(*a3, 0) == a2)
    {
      v29 = CSThread::GetRegisterValue(*a3, *(a4 + 16), 2, 0, &v41);
      v26 = *a6;
      if (v41 == 1)
      {
        return CSThread::SetSP(v26, v29 + *(a4 + 20));
      }

      goto LABEL_46;
    }

    return v20;
  }

  v20 = 1;
  if (v19)
  {
    if (v19 == 1)
    {
      CSThread::SetRegisterIsValid(*a6, a2, 0, 0);
      return v20;
    }

    if (v19 != 2)
    {
      goto LABEL_39;
    }
  }

  return v20;
}

void sub_1D97D21A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  CSCppAddressSet::sort(&a9);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

char *DWARFExpressionReadMemoryCallback(uint64_t a1, tree *a2, unsigned __int8 *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v20 = 0;
  v6 = mapped_memory_read(v4, a2, *(a3 + 1), &v20);
  if (v6)
  {
    v7 = mach_error_string(v6);
    v8 = *(a3 + 2);
    v9 = DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error;
    if (v7)
    {
      snprintf(DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error, 0x400uLL, "memory read of %u bytes at address 0x%8.8llx failed: %s");
    }

    else
    {
      snprintf(DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error, 0x400uLL, "memory read of %u bytes at address 0x%8.8llx failed: 0x%8.8x");
    }
  }

  else if (v20)
  {
    v10 = *a3;
    if (v10 > 8 || ((1 << v10) & 0x1E2) == 0)
    {
      if (v10 == 128)
      {
        v9 = 0;
        *(a3 + 4) = v20;
      }

      else
      {
        v9 = DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error;
        v17 = *a3;
        snprintf(DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error, 0x400uLL, "Unsupported DW_ATE encoding in value argument: %u");
      }
    }

    else
    {
      v19 = 0;
      CSBinaryDataRef::CSBinaryDataRef(v18, v20, *(a3 + 1), v5);
      Max64 = CSBinaryDataRef::GetMax64(v18, &v19, *(a3 + 2));
      *(a3 + 4) = Max64;
      if (*a3 - 5 <= 1)
      {
        v13 = *(a3 + 1);
        if (v13 <= 7)
        {
          v14 = 8 * v13;
          if ((Max64 >> (v14 - 1)))
          {
            *(a3 + 4) = (-1 << v14) | Max64;
          }
        }
      }

      CSCppAddressSet::sort(v18);
      return 0;
    }
  }

  else
  {
    v15 = *(a3 + 1);
    v9 = DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error;
    snprintf(DWARFExpressionReadMemoryCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error, 0x400uLL, "memory read of %u bytes at address 0x%8.8llx failed: NULL data returned");
  }

  return v9;
}

void sub_1D97D2360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CSCppAddressSet::sort(va);
  _Unwind_Resume(a1);
}

char *DWARFExpressionReadRegisterCallback(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = 7;
  v7 = 4;
  if (*(v5 + 9))
  {
    v7 = 8;
  }

  *(a3 + 8) = v7;
  v10 = 0;
  *(a3 + 32) = CSThread::GetRegisterValue(v5, a2, 2, 0xFFFFFFFFLL, &v10);
  if (v10)
  {
    v8 = 0;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v8 = DWARFExpressionReadRegisterCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error;
  snprintf(DWARFExpressionReadRegisterCallback(void *,unsigned long long,CSDwarfExpression::Value *)::g_expr_error, 0x400uLL, "failed to read register number: %llu", a2);
  if (v6)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v8;
}

void sub_1D97D2444(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4, __n128 a5)
{
  v236 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      goto LABEL_188;
    }

    if (v13 == 2)
    {
      if (*(a2 - 3) < *(v12 + 8))
      {
        v192 = *v12;
        v226 = *(v12 + 16);
        v89 = *(a2 - 1);
        *v12 = *(a2 - 2);
        *(v12 + 16) = v89;
        *(a2 - 2) = v192;
        *(a2 - 1) = v226;
      }

      goto LABEL_188;
    }

LABEL_10:
    if (v13 <= 23)
    {
      v98 = (v12 + 32);
      v100 = v12 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v12;
          do
          {
            v103 = v98;
            v104 = v102[5];
            if (v104 < v102[1])
            {
              v105 = *v103;
              v195 = *(v102 + 3);
              v106 = v101;
              while (1)
              {
                v107 = v12 + v106;
                v108 = *(v12 + v106 + 16);
                *(v107 + 32) = *(v12 + v106);
                *(v107 + 48) = v108;
                if (!v106)
                {
                  break;
                }

                v106 -= 32;
                if (v104 >= *(v107 - 24))
                {
                  v109 = v12 + v106 + 32;
                  goto LABEL_130;
                }
              }

              v109 = v12;
LABEL_130:
              *v109 = v105;
              *(v109 + 8) = v104;
              *(v109 + 16) = v195;
            }

            v98 = v103 + 2;
            v101 += 32;
            v102 = v103;
          }

          while (v103 + 2 != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v151 = v98;
          v152 = *(a1 + 40);
          if (v152 < *(a1 + 8))
          {
            v153 = *v98;
            v199 = *(a1 + 48);
            v154 = v151;
            do
            {
              v155 = *(v154 - 1);
              *v154 = *(v154 - 2);
              v154[1] = v155;
              v156 = *(v154 - 7);
              v154 -= 2;
            }

            while (v152 < v156);
            *v154 = v153;
            *(v154 + 1) = v152;
            v154[1] = v199;
          }

          v98 = v151 + 2;
          a1 = v151;
        }

        while (v151 + 2 != a2);
      }

      goto LABEL_188;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v110 = (v13 - 2) >> 1;
        v111 = v110;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = v12 + 32 * v113;
            if (2 * v112 + 2 < v13)
            {
              v115 = *(v114 + 8);
              v116 = *(v114 + 40);
              v114 += 32 * (v115 < v116);
              if (v115 < v116)
              {
                v113 = 2 * v112 + 2;
              }
            }

            v117 = v12 + 32 * v112;
            v118 = *(v117 + 8);
            if (*(v114 + 8) >= v118)
            {
              v119 = *v117;
              v196 = *(v117 + 16);
              do
              {
                v120 = v117;
                v117 = v114;
                v121 = *(v114 + 16);
                *v120 = *v114;
                v120[1] = v121;
                if (v110 < v113)
                {
                  break;
                }

                v122 = (2 * v113) | 1;
                v114 = v12 + 32 * v122;
                v123 = 2 * v113 + 2;
                if (v123 < v13)
                {
                  v124 = *(v114 + 8);
                  v125 = *(v114 + 40);
                  v114 += 32 * (v124 < v125);
                  if (v124 < v125)
                  {
                    v122 = v123;
                  }
                }

                v113 = v122;
              }

              while (*(v114 + 8) >= v118);
              *v117 = v119;
              *(v117 + 8) = v118;
              *(v117 + 16) = v196;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        do
        {
          v126 = 0;
          v197 = *v12;
          v229 = *(v12 + 16);
          v127 = v12;
          do
          {
            v128 = &v127[2 * v126];
            v129 = v128 + 2;
            v130 = (2 * v126) | 1;
            v126 = 2 * v126 + 2;
            if (v126 >= v13)
            {
              v126 = v130;
            }

            else
            {
              v131 = *(v128 + 5);
              v132 = *(v128 + 9);
              v133 = v128 + 4;
              if (v131 >= v132)
              {
                v126 = v130;
              }

              else
              {
                v129 = v133;
              }
            }

            v134 = v129[1];
            *v127 = *v129;
            v127[1] = v134;
            v127 = v129;
          }

          while (v126 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v129 == a2)
          {
            *v129 = v197;
            v129[1] = v229;
          }

          else
          {
            v135 = a2[1];
            *v129 = *a2;
            v129[1] = v135;
            *a2 = v197;
            a2[1] = v229;
            v136 = (v129 - v12 + 32) >> 5;
            v137 = v136 < 2;
            v138 = v136 - 2;
            if (!v137)
            {
              v139 = v138 >> 1;
              v140 = v12 + 32 * (v138 >> 1);
              v141 = *(v129 + 1);
              if (*(v140 + 8) < v141)
              {
                v142 = *v129;
                v172 = v129[1];
                do
                {
                  v143 = v129;
                  v129 = v140;
                  v144 = *(v140 + 16);
                  *v143 = *v140;
                  v143[1] = v144;
                  if (!v139)
                  {
                    break;
                  }

                  v139 = (v139 - 1) >> 1;
                  v140 = v12 + 32 * v139;
                }

                while (*(v140 + 8) < v141);
                *v129 = v142;
                *(v129 + 1) = v141;
                v129[1] = v172;
              }
            }
          }

          v137 = v13-- <= 2;
        }

        while (!v137);
      }

      goto LABEL_188;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = *(a2 - 3);
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 8);
      if (v16 >= *(v12 + 8))
      {
        if (v15 < v16)
        {
          v175 = *v14;
          v205 = *(v14 + 16);
          v20 = *(a2 - 1);
          *v14 = *v9;
          *(v14 + 16) = v20;
          *v9 = v175;
          *(a2 - 1) = v205;
          if (*(v14 + 8) < *(v12 + 8))
          {
            v176 = *v12;
            v206 = *(v12 + 16);
            v21 = *(v14 + 16);
            *v12 = *v14;
            *(v12 + 16) = v21;
            *v14 = v176;
            *(v14 + 16) = v206;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v173 = *v12;
          v203 = *(v12 + 16);
          v17 = *(a2 - 1);
          *v12 = *v9;
          *(v12 + 16) = v17;
          goto LABEL_27;
        }

        v179 = *v12;
        v209 = *(v12 + 16);
        v24 = *(v14 + 16);
        *v12 = *v14;
        *(v12 + 16) = v24;
        *v14 = v179;
        *(v14 + 16) = v209;
        if (*(a2 - 3) < *(v14 + 8))
        {
          v173 = *v14;
          v203 = *(v14 + 16);
          v25 = *(a2 - 1);
          *v14 = *v9;
          *(v14 + 16) = v25;
LABEL_27:
          *v9 = v173;
          *(a2 - 1) = v203;
        }
      }

      v26 = (v14 - 32);
      v27 = *(v14 - 24);
      v28 = *(a2 - 7);
      if (v27 >= *(v12 + 40))
      {
        if (v28 < v27)
        {
          v180 = *v26;
          v210 = *(v14 - 16);
          v32 = *(a2 - 3);
          *v26 = *v10;
          *(v14 - 16) = v32;
          *v10 = v180;
          *(a2 - 3) = v210;
          if (*(v14 - 24) < *(v12 + 40))
          {
            v33 = *(v12 + 32);
            v211 = *(v12 + 48);
            v34 = *(v14 - 16);
            *(v12 + 32) = *v26;
            *(v12 + 48) = v34;
            *v26 = v33;
            *(v14 - 16) = v211;
          }
        }
      }

      else
      {
        if (v28 < v27)
        {
          v29 = *(v12 + 32);
          v30 = *(v12 + 48);
          v31 = *(a2 - 3);
          *(v12 + 32) = *v10;
          *(v12 + 48) = v31;
          goto LABEL_39;
        }

        v37 = *(v12 + 32);
        v213 = *(v12 + 48);
        v38 = *(v14 - 16);
        *(v12 + 32) = *v26;
        *(v12 + 48) = v38;
        *v26 = v37;
        *(v14 - 16) = v213;
        if (*(a2 - 7) < *(v14 - 24))
        {
          v182 = *v26;
          v214 = *(v14 - 16);
          v39 = *(a2 - 3);
          *v26 = *v10;
          *(v14 - 16) = v39;
          v29 = v182;
          v30 = v214;
LABEL_39:
          *v10 = v29;
          *(a2 - 3) = v30;
        }
      }

      v40 = *(v14 + 40);
      v41 = *(a2 - 11);
      if (v40 >= *(v12 + 72))
      {
        if (v41 < v40)
        {
          v183 = *(v14 + 32);
          v215 = *(v14 + 48);
          v45 = *(a2 - 5);
          *(v14 + 32) = *v11;
          *(v14 + 48) = v45;
          *v11 = v183;
          *(a2 - 5) = v215;
          if (*(v14 + 40) < *(v12 + 72))
          {
            v46 = *(v12 + 64);
            v216 = *(v12 + 80);
            v47 = *(v14 + 48);
            *(v12 + 64) = *(v14 + 32);
            *(v12 + 80) = v47;
            *(v14 + 32) = v46;
            *(v14 + 48) = v216;
          }
        }
      }

      else
      {
        if (v41 < v40)
        {
          v42 = *(v12 + 64);
          v43 = *(v12 + 80);
          v44 = *(a2 - 5);
          *(v12 + 64) = *v11;
          *(v12 + 80) = v44;
          goto LABEL_48;
        }

        v48 = *(v12 + 64);
        v217 = *(v12 + 80);
        v49 = *(v14 + 48);
        *(v12 + 64) = *(v14 + 32);
        *(v12 + 80) = v49;
        *(v14 + 32) = v48;
        *(v14 + 48) = v217;
        if (*(a2 - 11) < *(v14 + 40))
        {
          v184 = *(v14 + 32);
          v218 = *(v14 + 48);
          v50 = *(a2 - 5);
          *(v14 + 32) = *v11;
          *(v14 + 48) = v50;
          v42 = v184;
          v43 = v218;
LABEL_48:
          *v11 = v42;
          *(a2 - 5) = v43;
        }
      }

      v51 = *(v14 + 8);
      v52 = *(v14 + 40);
      if (v51 >= *(v14 - 24))
      {
        if (v52 < v51)
        {
          v186 = *v14;
          v220 = *(v14 + 16);
          v54 = *(v14 + 48);
          *v14 = *(v14 + 32);
          *(v14 + 16) = v54;
          *(v14 + 32) = v186;
          *(v14 + 48) = v220;
          if (*(v14 + 8) < *(v14 - 24))
          {
            v187 = *v26;
            v221 = *(v14 - 16);
            v55 = *(v14 + 16);
            *v26 = *v14;
            *(v14 - 16) = v55;
            *v14 = v187;
            *(v14 + 16) = v221;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v185 = *v26;
          v219 = *(v14 - 16);
          v53 = *(v14 + 48);
          *v26 = *(v14 + 32);
          *(v14 - 16) = v53;
          goto LABEL_57;
        }

        v188 = *v26;
        v222 = *(v14 - 16);
        v56 = *(v14 + 16);
        *v26 = *v14;
        *(v14 - 16) = v56;
        *v14 = v188;
        *(v14 + 16) = v222;
        if (*(v14 + 40) < *(v14 + 8))
        {
          v185 = *v14;
          v219 = *(v14 + 16);
          v57 = *(v14 + 48);
          *v14 = *(v14 + 32);
          *(v14 + 16) = v57;
LABEL_57:
          *(v14 + 32) = v185;
          *(v14 + 48) = v219;
        }
      }

      v189 = *v12;
      v223 = *(v12 + 16);
      v58 = *(v14 + 16);
      *v12 = *v14;
      *(v12 + 16) = v58;
      *v14 = v189;
      *(v14 + 16) = v223;
      goto LABEL_59;
    }

    v18 = *(v12 + 8);
    if (v18 >= *(v14 + 8))
    {
      if (v15 < v18)
      {
        v177 = *v12;
        v207 = *(v12 + 16);
        v22 = *(a2 - 1);
        *v12 = *v9;
        *(v12 + 16) = v22;
        *v9 = v177;
        *(a2 - 1) = v207;
        if (*(v12 + 8) < *(v14 + 8))
        {
          v178 = *v14;
          v208 = *(v14 + 16);
          v23 = *(v12 + 16);
          *v14 = *v12;
          *(v14 + 16) = v23;
          *v12 = v178;
          *(v12 + 16) = v208;
        }
      }

      goto LABEL_59;
    }

    if (v15 < v18)
    {
      v174 = *v14;
      v204 = *(v14 + 16);
      v19 = *(a2 - 1);
      *v14 = *v9;
      *(v14 + 16) = v19;
LABEL_36:
      *v9 = v174;
      *(a2 - 1) = v204;
      goto LABEL_59;
    }

    v181 = *v14;
    v212 = *(v14 + 16);
    v35 = *(v12 + 16);
    *v14 = *v12;
    *(v14 + 16) = v35;
    *v12 = v181;
    *(v12 + 16) = v212;
    if (*(a2 - 3) < *(v12 + 8))
    {
      v174 = *v12;
      v204 = *(v12 + 16);
      v36 = *(a2 - 1);
      *v12 = *v9;
      *(v12 + 16) = v36;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v59 = *(v12 + 8);
LABEL_62:
      v60 = 0;
      v61 = *v12;
      v170 = *(v12 + 16);
      do
      {
        v62 = *(v12 + v60 + 40);
        v60 += 32;
      }

      while (v62 < v59);
      v63 = v12 + v60;
      v64 = a2;
      if (v60 == 32)
      {
        v67 = a2;
        while (v63 < v67)
        {
          v65 = v67 - 2;
          v68 = *(v67 - 3);
          v67 -= 2;
          if (v68 < v59)
          {
            goto LABEL_72;
          }
        }

        v65 = v67;
      }

      else
      {
        do
        {
          v65 = v64 - 2;
          v66 = *(v64 - 3);
          v64 -= 2;
        }

        while (v66 >= v59);
      }

LABEL_72:
      v12 = v63;
      if (v63 < v65)
      {
        v69 = v65;
        do
        {
          v190 = *v12;
          v224 = *(v12 + 16);
          v70 = v69[1];
          *v12 = *v69;
          *(v12 + 16) = v70;
          *v69 = v190;
          v69[1] = v224;
          do
          {
            v71 = *(v12 + 40);
            v12 += 32;
          }

          while (v71 < v59);
          do
          {
            v72 = *(v69 - 3);
            v69 -= 2;
          }

          while (v72 >= v59);
        }

        while (v12 < v69);
      }

      if (v12 - 32 != a1)
      {
        v73 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v73;
      }

      *(v12 - 32) = v61;
      *(v12 - 24) = v59;
      *(v12 - 16) = v170;
      if (v63 < v65)
      {
        goto LABEL_83;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *>(a1, v12 - 32, v170);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *>(v12, a2, v75))
      {
        a2 = (v12 - 32);
        if (!v74)
        {
          goto LABEL_2;
        }

        goto LABEL_188;
      }

      if (!v74)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *,false>(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v59 = *(v12 + 8);
      if (*(v12 - 24) < v59)
      {
        goto LABEL_62;
      }

      v76 = *v12;
      v171 = *(v12 + 16);
      if (v59 >= *(a2 - 3))
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v80 = *(v79 + 8);
          v79 += 32;
        }

        while (v59 >= v80);
      }

      else
      {
        v77 = v12;
        do
        {
          v12 = v77 + 32;
          v78 = *(v77 + 40);
          v77 += 32;
        }

        while (v59 >= v78);
      }

      v81 = a2;
      if (v12 < a2)
      {
        v82 = a2;
        do
        {
          v81 = v82 - 2;
          v83 = *(v82 - 3);
          v82 -= 2;
        }

        while (v59 < v83);
      }

      while (v12 < v81)
      {
        v191 = *v12;
        v225 = *(v12 + 16);
        v84 = v81[1];
        *v12 = *v81;
        *(v12 + 16) = v84;
        *v81 = v191;
        v81[1] = v225;
        do
        {
          v85 = *(v12 + 40);
          v12 += 32;
        }

        while (v59 >= v85);
        do
        {
          v86 = *(v81 - 3);
          v81 -= 2;
        }

        while (v59 < v86);
      }

      if (v12 - 32 != a1)
      {
        v87 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v87;
      }

      a4 = 0;
      *(v12 - 32) = v76;
      *(v12 - 24) = v59;
      a5 = v171;
      *(v12 - 16) = v171;
    }
  }

  if (v13 == 3)
  {
    v90 = *(v12 + 40);
    v91 = *(a2 - 3);
    if (v90 >= *(v12 + 8))
    {
      if (v91 < v90)
      {
        v145 = *(v12 + 32);
        v230 = *(v12 + 48);
        v146 = *(a2 - 1);
        *(v12 + 32) = *v9;
        *(v12 + 48) = v146;
        *v9 = v145;
        *(a2 - 1) = v230;
LABEL_186:
        if (*(v12 + 40) < *(v12 + 8))
        {
          v202 = *v12;
          v235 = *(v12 + 16);
          v168 = *(v12 + 48);
          *v12 = *(v12 + 32);
          *(v12 + 16) = v168;
          *(v12 + 32) = v202;
          *(v12 + 48) = v235;
        }
      }
    }

    else
    {
      if (v91 < v90)
      {
        v193 = *v12;
        v227 = *(v12 + 16);
        v92 = *(a2 - 1);
        *v12 = *v9;
        *(v12 + 16) = v92;
        v93 = v193;
        v94 = v227;
LABEL_180:
        *v9 = v93;
        *(a2 - 1) = v94;
        goto LABEL_188;
      }

      v200 = *v12;
      v232 = *(v12 + 16);
      v157 = *(v12 + 48);
      *v12 = *(v12 + 32);
      *(v12 + 16) = v157;
      *(v12 + 32) = v200;
      *(v12 + 48) = v232;
      if (*(a2 - 3) < *(v12 + 40))
      {
        v93 = *(v12 + 32);
        v94 = *(v12 + 48);
        v158 = *(a2 - 1);
        *(v12 + 32) = *v9;
        *(v12 + 48) = v158;
        goto LABEL_180;
      }
    }

LABEL_188:
    v169 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v13 == 4)
  {
    v95 = *(v12 + 40);
    v96 = *(v12 + 72);
    if (v95 >= *(v12 + 8))
    {
      if (v96 < v95)
      {
        v148 = *(v12 + 32);
        v147 = *(v12 + 48);
        v149 = *(v12 + 80);
        *(v12 + 32) = *(v12 + 64);
        *(v12 + 48) = v149;
        *(v12 + 64) = v148;
        *(v12 + 80) = v147;
        if (*(v12 + 40) < *(v12 + 8))
        {
          v198 = *v12;
          v231 = *(v12 + 16);
          v150 = *(v12 + 48);
          *v12 = *(v12 + 32);
          *(v12 + 16) = v150;
          *(v12 + 32) = v198;
          *(v12 + 48) = v231;
        }
      }
    }

    else if (v96 >= v95)
    {
      v201 = *v12;
      v233 = *(v12 + 16);
      v159 = *(v12 + 48);
      *v12 = *(v12 + 32);
      *(v12 + 16) = v159;
      *(v12 + 32) = v201;
      *(v12 + 48) = v233;
      if (v96 < *(v12 + 40))
      {
        v161 = *(v12 + 32);
        v160 = *(v12 + 48);
        v162 = *(v12 + 80);
        *(v12 + 32) = *(v12 + 64);
        *(v12 + 48) = v162;
        *(v12 + 64) = v161;
        *(v12 + 80) = v160;
      }
    }

    else
    {
      v194 = *v12;
      v228 = *(v12 + 16);
      v97 = *(v12 + 80);
      *v12 = *(v12 + 64);
      *(v12 + 16) = v97;
      *(v12 + 64) = v194;
      *(v12 + 80) = v228;
    }

    if (*(a2 - 3) >= *(v12 + 72))
    {
      goto LABEL_188;
    }

    v163 = *(v12 + 64);
    v234 = *(v12 + 80);
    v164 = *(a2 - 1);
    *(v12 + 64) = *v9;
    *(v12 + 80) = v164;
    *v9 = v163;
    *(a2 - 1) = v234;
    if (*(v12 + 72) >= *(v12 + 40))
    {
      goto LABEL_188;
    }

    v166 = *(v12 + 32);
    v165 = *(v12 + 48);
    v167 = *(v12 + 80);
    *(v12 + 32) = *(v12 + 64);
    *(v12 + 48) = v167;
    *(v12 + 64) = v166;
    *(v12 + 80) = v165;
    goto LABEL_186;
  }

  if (v13 != 5)
  {
    goto LABEL_10;
  }

  v88 = *MEMORY[0x1E69E9840];

  std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, a5);
}