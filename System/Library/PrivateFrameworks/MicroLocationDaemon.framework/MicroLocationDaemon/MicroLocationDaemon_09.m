unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *,boost::uuids::uuid *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = bswap64(*v12);
        v14 = bswap64(*a1);
        if (v13 != v14 || (v13 = bswap64(v12[1]), v14 = bswap64(a1[1]), v13 != v14))
        {
          v15 = v13 < v14 ? -1 : 1;
          if (v15 < 0)
          {
            v16 = *v12;
            *v12 = *a1;
            *a1 = v16;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, a4, v8, a1);
          }
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 2;
      do
      {
        v22 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, a4, v8);
        if (v17 == v18)
        {
          *v18 = v22;
        }

        else
        {
          *v18 = *v17;
          *v17 = v22;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 4);
        }

        v17 -= 2;
      }

      while (v8-- > 2);
    }

    a3 = v12;
  }

  v20 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = bswap64(*v8);
        v11 = bswap64(v8[2]);
        if (v10 == v11 && (v10 = bswap64(v8[1]), v11 = bswap64(v8[3]), v10 == v11))
        {
          v12 = 0;
        }

        else
        {
          v12 = v10 < v11 ? -1 : 1;
        }

        if (v12 < 0)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = bswap64(*v8);
      v14 = bswap64(*a4);
      if (v13 == v14 && (v13 = bswap64(v8[1]), v14 = bswap64(a4[1]), v13 == v14) || (v13 < v14 ? (v15 = -1) : (v15 = 1), (v15 & 0x80000000) == 0))
      {
        v25 = *a4;
        do
        {
          v16 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v17 = (2 * v7) | 1;
          v8 = (result + 16 * v17);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v17;
          }

          else
          {
            v18 = bswap64(*v8);
            v19 = bswap64(v8[2]);
            if (v18 == v19 && (v18 = bswap64(v8[1]), v19 = bswap64(v8[3]), v18 == v19))
            {
              v20 = 0;
            }

            else
            {
              v20 = v18 < v19 ? -1 : 1;
            }

            if (v20 >= 0)
            {
              v7 = v17;
            }

            else
            {
              v8 += 2;
            }
          }

          v21 = bswap64(*v8);
          v22 = bswap64(v25);
          if (v21 == v22 && (v21 = bswap64(v8[1]), v22 = bswap64(*(&v25 + 1)), v21 == v22))
          {
            v23 = 0;
          }

          else
          {
            v23 = v21 < v22 ? -1 : 1;
          }

          a4 = v16;
        }

        while ((v23 & 0x80000000) == 0);
        *v16 = v25;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v7 = 2 * v3 + 2;
    if (v7 < a3)
    {
      v9 = v4[4];
      v8 = v4 + 4;
      v10 = bswap64(*v5);
      v11 = bswap64(v9);
      if (v10 == v11 && (v10 = bswap64(v5[1]), v11 = bswap64(v8[1]), v10 == v11))
      {
        v12 = 0;
      }

      else if (v10 < v11)
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      if (v12 < 0)
      {
        v5 = v8;
        v6 = v7;
      }
    }

    *a1 = *v5;
    a1 = v5;
    v3 = v6;
  }

  while (v6 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::uuids::uuid *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = (a2 - 16);
    v7 = bswap64(*v5);
    v8 = bswap64(*(a2 - 16));
    if (v7 != v8 || (v7 = bswap64(v5[1]), v8 = bswap64(*(a2 - 8)), v7 != v8))
    {
      v9 = v7 < v8 ? -1 : 1;
      if (v9 < 0)
      {
        v15 = *v6;
        do
        {
          v10 = v5;
          *v6 = *v5;
          if (!v4)
          {
            break;
          }

          v4 = (v4 - 1) >> 1;
          v5 = (result + 16 * v4);
          v11 = bswap64(*v5);
          v12 = bswap64(v15);
          if (v11 == v12 && (v11 = bswap64(v5[1]), v12 = bswap64(*(&v15 + 1)), v11 == v12))
          {
            v13 = 0;
          }

          else
          {
            v13 = v11 < v12 ? -1 : 1;
          }

          v6 = v10;
        }

        while (v13 < 0);
        *v10 = v15;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<boost::uuids::uuid *>,std::__wrap_iter<boost::uuids::uuid *>,std::__equal_to &>(void *a1, void *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1 + 2;
      if (a1 + 2 == a2)
      {
        break;
      }

      v4 = *a1 == a1[2] && a1[1] == a1[3];
      a1 += 2;
      if (v4)
      {
        v5 = v3 - 2;
        goto LABEL_10;
      }
    }

    v5 = a2;
LABEL_10:
    v2 = a2;
    if (v5 != a2)
    {
      for (i = v5 + 4; i != a2; i += 2)
      {
        if (*v5 != *i || v5[1] != i[1])
        {
          *(v5 + 1) = *i;
          v5 += 2;
        }
      }

      return v5 + 2;
    }
  }

  return v2;
}

void ___ZN9ULDBUtils17insertDataObjectsI7ULLoiDO7ULLoiMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI7ULLoiDO7ULLoiMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULDBUtils::convertManagedObjectsToDataObjects<ULLoiDO,ULLoiMO>();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 64;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_45()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULLoiMO * ()(ULLoiDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZN9ULDBUtils16fetchDataObjectsI7ULLoiDO7ULLoiMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULLoiDO,ULLoiMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULLoiDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

uint64_t std::vector<ULLoiDO>::__emplace_back_slow_path<ULLoiDO>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULLoiDO>>(a1, v7);
  }

  v8 = v2 << 6;
  v18 = 0;
  v19 = v8;
  *(&v20 + 1) = 0;
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 32) = *(a2 + 4);
  *v8 = v9;
  *(v8 + 16) = v10;
  v11 = *(a2 + 40);
  *(v8 + 56) = *(a2 + 7);
  *(v8 + 40) = v11;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 5) = 0;
  *&v20 = (v2 << 6) + 64;
  v12 = *(a1 + 8);
  v13 = (v2 << 6) + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULLoiDO>,ULLoiDO*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ULLoiDO>::~__split_buffer(&v18);
  return v17;
}

void sub_25909E774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULLoiDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULMagnetometerDO,ULMagnetometerMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULMagnetometerDO,ULMagnetometerMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void ULDBUtils::fetchDataObjects<ULMagnetometerDO,ULMagnetometerMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__14;
  v27 = __Block_byref_object_dispose__14;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI16ULMagnetometerDO16ULMagnetometerMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_25909EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__14(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI16ULMagnetometerDO16ULMagnetometerMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULMagnetometerDO,ULMagnetometerMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULMagnetometerDO,ULMagnetometerMO>(void *a1@<X0>, void *a2@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  __src[0] = 0;
  __src[1] = 0;
  v35 = 0;
  v24 = a1;
  std::vector<ULMagnetometerDO>::reserve(__src, [v24 count]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v24;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v3)
  {
    v4 = *v31;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = v6;
        if (!v6 || ([v6 convertToDO], (v29 & 1) == 0))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULMagnetometerDO,ULMagnetometerMO>();
          }

          v17 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v7 entity];
            v19 = [v18 name];
            *buf = 68289283;
            v37 = 0;
            v38 = 2082;
            v39 = "";
            v40 = 2113;
            v41 = v19;
            _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULMagnetometerDO,ULMagnetometerMO>();
          }

          v20 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v20))
          {
            v21 = [v7 entity];
            v22 = [v21 name];
            *buf = 68289283;
            v37 = 0;
            v38 = 2082;
            v39 = "";
            v40 = 2113;
            v41 = v22;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;

          if (__src[0])
          {
            __src[1] = __src[0];
            operator delete(__src[0]);
          }

          goto LABEL_32;
        }

        v8 = __src[1];
        if (__src[1] >= v35)
        {
          v10 = __src[0];
          v11 = __src[1] - __src[0];
          v12 = 0xCCCCCCCCCCCCCCCDLL * ((__src[1] - __src[0]) >> 3);
          v13 = v12 + 1;
          if (v12 + 1 > 0x666666666666666)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v35 - __src[0]) >> 3) > v13)
          {
            v13 = 0x999999999999999ALL * ((v35 - __src[0]) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v35 - __src[0]) >> 3) >= 0x333333333333333)
          {
            v13 = 0x666666666666666;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULMagnetometerDO>>(__src, v13);
          }

          v14 = 8 * ((__src[1] - __src[0]) >> 3);
          *(v14 + 32) = v28;
          *v14 = v26;
          *(v14 + 16) = v27;
          v9 = (40 * v12 + 40);
          v15 = (40 * v12 - v11);
          memcpy((v14 - v11), v10, v11);
          v16 = __src[0];
          __src[0] = v15;
          __src[1] = v9;
          v35 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *(__src[1] + 4) = v28;
          *v8 = v26;
          v8[1] = v27;
          v9 = v8 + 40;
        }

        __src[1] = v9;
      }

      v3 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  *a2 = *__src;
  a2[2] = v35;
LABEL_32:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25909F0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<ULMagnetometerDO>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULMagnetometerDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULMagnetometerDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_46()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_25909F550(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<ULMapLabelMO * ()(ULMapLabelDO const&)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULMapLabelDO,ULMapLabelMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI12ULMapLabelDO12ULMapLabelMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A565F0;
    v18 = a2;
    std::__function::__value_func<ULMapLabelMO * ()(ULMapLabelDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULMapLabelMO * ()(ULMapLabelDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_25909F6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULMapLabelMO * ()(ULMapLabelDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void sub_25909F968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25909FDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  operator delete(v18);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_2590A00F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590A0380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590A0640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULMapLabelDO,ULMapLabelMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULMapLabelDO,ULMapLabelMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void ULDBUtils::fetchDataObjects<ULMapLabelDO,ULMapLabelMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__555;
  v27 = __Block_byref_object_dispose__556;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI12ULMapLabelDO12ULMapLabelMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590A0A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

void sub_2590A1274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  operator delete(v30);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2590A1740(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void sub_2590A1A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2590A1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_47()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULMapLabelDO>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ULMapLabelDO>>::destroy[abi:ne200100]<ULMapLabelDO,void,0>(a1, i))
  {
    i -= 232;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<ULMapLabelDO>>::destroy[abi:ne200100]<ULMapLabelDO,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 208) == 1)
  {
    *(a2 + 200) = -1;
  }

  if (*(a2 + 183) < 0)
  {
    operator delete(*(a2 + 160));
  }

  if (*(a2 + 72) == 1)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      *(a2 + 56) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a2 + 24) = v4;

      operator delete(v4);
    }
  }
}

void std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI12ULMapLabelDO12ULMapLabelMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 232;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULMapLabelMO * ()(ULMapLabelDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULMapLabelMO * ()(ULMapLabelDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__555(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI12ULMapLabelDO12ULMapLabelMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULMapLabelDO,ULMapLabelMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULMapLabelDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULMapLabelDO,ULMapLabelMO>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v24 = 0uLL;
  v25 = 0;
  std::vector<ULMapLabelDO>::reserve(&v24, [v3 count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v47 count:16];
  if (v4)
  {
    v5 = *v21;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((BYTE8(v46) & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v24 + 1);
      if (*(&v24 + 1) >= v25)
      {
        v10 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO>(&v24, &v32);
      }

      else
      {
        ULMapLabelDO::ULMapLabelDO(*(&v24 + 1), &v32);
        v10 = v9 + 232;
      }

      *(&v24 + 1) = v10;
      v17 = 1;
LABEL_22:
      if (BYTE8(v46) == 1)
      {
        if (v45 == 1)
        {
          DWORD2(v44) = -1;
        }

        if (SBYTE7(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (BYTE8(v36) == 1 && v35[0])
        {
          v35[1] = v35[0];
          operator delete(v35[0]);
        }

        if (BYTE8(v34) == 1 && v33[0])
        {
          v33[1] = v33[0];
          operator delete(v33[0]);
        }
      }

      if (!v17)
      {

        goto LABEL_38;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v20 objects:v47 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_36;
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    *__p = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *v35 = 0u;
    v36 = 0u;
    *v33 = 0u;
    v34 = 0u;
    v32 = 0u;
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 entity];
      v13 = [v12 name];
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = [v8 entity];
      v16 = [v15 name];
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v17 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_36:

  *a2 = v24;
  a2[2] = v25;
  v25 = 0;
  v24 = 0uLL;
LABEL_38:
  *&v32 = &v24;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v32);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2590A2BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void *std::vector<ULMapLabelDO>::reserve(void *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590A2D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDO>,ULMapLabelDO*>(uint64_t a1, ULMapLabelDO *a2, ULMapLabelDO *a3, ULMapLabelDO *this)
{
  v11 = this;
  v12 = this;
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
      ULMapLabelDO::ULMapLabelDO(this, v7);
      v7 = (v7 + 232);
      this = (v12 + 232);
      v12 = (v12 + 232);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULMapLabelDO>>::destroy[abi:ne200100]<ULMapLabelDO,void,0>(a1, v5);
      v5 = (v5 + 232);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDO>,ULMapLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDO>,ULMapLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDO>,ULMapLabelDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDO>,ULMapLabelDO*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 232;
      std::allocator_traits<std::allocator<ULMapLabelDO>>::destroy[abi:ne200100]<ULMapLabelDO,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ULMapLabelDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULMapLabelDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULMapLabelDO>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 232;
    std::allocator_traits<std::allocator<ULMapLabelDO>>::destroy[abi:ne200100]<ULMapLabelDO,void,0>(v5, v4 - 232);
  }
}

uint64_t std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO>(uint64_t a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDO>>(a1, v6);
  }

  v13 = 0;
  v14 = 232 * v2;
  ULMapLabelDO::ULMapLabelDO(232 * v2, a2);
  v15 = (232 * v2 + 232);
  v7 = *(a1 + 8);
  v8 = (232 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDO>,ULMapLabelDO*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(&v13);
  return v12;
}

void sub_2590A3094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULMapLabelDO>::~optional(uint64_t a1)
{
  if (*(a1 + 232) == 1)
  {
    if (*(a1 + 208) == 1)
    {
      *(a1 + 200) = -1;
    }

    if (*(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    if (*(a1 + 72) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        *(a1 + 56) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 40) == 1)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        *(a1 + 24) = v3;
        operator delete(v3);
      }
    }
  }

  return a1;
}

void sub_2590A32E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULMigrationDO,ULMigrationMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI13ULMigrationDO13ULMigrationMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A566B8;
    v18 = a2;
    std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590A3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULMigrationDO,ULMigrationMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__16;
  v27 = __Block_byref_object_dispose__16;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI13ULMigrationDO13ULMigrationMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_2590A3638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULMigrationDO,ULMigrationMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULMigrationDO,ULMigrationMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590A3974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  if (a11)
  {
    *(v11 + 8) = a11;
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9ULDBUtils17insertDataObjectsI13ULMigrationDO13ULMigrationMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI13ULMigrationDO13ULMigrationMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI13ULMigrationDO13ULMigrationMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 16;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_48()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__16(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__16(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI13ULMigrationDO13ULMigrationMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULMigrationDO,ULMigrationMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULMigrationDO,ULMigrationMO>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  v25 = a1;
  std::vector<std::pair<double,int>>::reserve(__p, [v25 count]);
  v26 = a2;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = v25;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v4)
  {
    v5 = *v30;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = v7;
        if (!v7 || ([v7 convertToDO], (v28 & 1) == 0))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ___ZN9ULDBUtils17insertDataObjectsI13ULMigrationDO13ULMigrationMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
          }

          v18 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v8 entity];
            v20 = [v19 name];
            *buf = 68289283;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2113;
            v40 = v20;
            _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ___ZN9ULDBUtils17insertDataObjectsI13ULMigrationDO13ULMigrationMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
          }

          v21 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v21))
          {
            v22 = [v8 entity];
            v23 = [v22 name];
            *buf = 68289283;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2113;
            v40 = v23;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *v26 = 0;
          v26[1] = 0;
          v26[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_33;
        }

        v9 = __p[1];
        if (__p[1] >= v34)
        {
          v11 = (__p[1] - __p[0]) >> 4;
          v12 = v11 + 1;
          if ((v11 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v13 = v34 - __p[0];
          if ((v34 - __p[0]) >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(__p, v14);
          }

          v15 = (16 * v11);
          *v15 = v27;
          v10 = (16 * v11 + 16);
          v16 = (16 * v11 - (__p[1] - __p[0]));
          memcpy(v15 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v17 = __p[0];
          __p[0] = v16;
          __p[1] = v10;
          v34 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *__p[1] = v27;
          v10 = v9 + 16;
        }

        __p[1] = v10;
      }

      v4 = [v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  *v26 = *__p;
  v26[2] = v34;
LABEL_33:

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2590A4450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590A4CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, char a18)
{
  operator delete(v19);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULModelDO,ULModelMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI9ULModelDO9ULModelMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A567C0;
    v18 = a2;
    std::__function::__value_func<ULModelMO * ()(ULModelDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULModelMO * ()(ULModelDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590A4F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULModelMO * ()(ULModelDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULModelDO,ULModelMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__560;
  v27 = __Block_byref_object_dispose__561;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI9ULModelDO9ULModelMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590A5100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULModelDO,ULModelMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULModelDO,ULModelMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590A5A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<ULModelDO>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCDLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULModelDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590A5C08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULModelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2590A5ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_2590A6134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULModelDO>::~optional(uint64_t a1)
{
  if (*(a1 + 320) == 1)
  {
    if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
    {
      operator delete(*(a1 + 248));
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 32));
  }

  return a1;
}

void sub_2590A62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2590A656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_2590A66F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::optional<ULModelDO>::~optional(va);
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULModelDO>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULModelDO>::__emplace_back_slow_path<ULModelDO>(a1, a2);
  }

  else
  {
    std::vector<ULModelDO>::__construct_one_at_end[abi:ne200100]<ULModelDO>(a1, a2);
    result = v3 + 320;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_2590A694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_49()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULModelDO>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 320;
        std::__destroy_at[abi:ne200100]<ULModelDO,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a1 + 32), (a2 + 2));
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v5 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 33);
    *(a1 + 248) = v5;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(a1 + 272) = 1;
  }

  v6 = *(a2 + 280);
  v7 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 280) = v6;
  *(a1 + 296) = v7;
  *(a1 + 320) = 1;
  return a1;
}

__n128 std::vector<ULModelDO>::__construct_one_at_end[abi:ne200100]<ULModelDO>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 12) = *(a2 + 12);
  *v4 = v5;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((v4 + 32), (a2 + 2));
  *(v4 + 248) = 0;
  *(v4 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v6 = *(a2 + 248);
    *(v4 + 264) = *(a2 + 33);
    *(v4 + 248) = v6;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(v4 + 272) = 1;
  }

  result = *(a2 + 280);
  v8 = *(a2 + 296);
  *(v4 + 312) = *(a2 + 312);
  *(v4 + 280) = result;
  *(v4 + 296) = v8;
  *(a1 + 8) = v4 + 320;
  return result;
}

uint64_t std::vector<ULModelDO>::__emplace_back_slow_path<ULModelDO>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCLL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 6) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 6) >= 0x66666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULModelDO>>(a1, v6);
  }

  v7 = 320 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v8;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((v7 + 32), (a2 + 2));
  *(v7 + 248) = 0;
  *(v7 + 272) = 0;
  if (*(a2 + 272) == 1)
  {
    v9 = *(a2 + 248);
    *(v7 + 264) = *(a2 + 33);
    *(v7 + 248) = v9;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(v7 + 272) = 1;
  }

  v10 = *(a2 + 280);
  v11 = *(a2 + 296);
  *(v7 + 312) = *(a2 + 312);
  *(v7 + 280) = v10;
  *(v7 + 296) = v11;
  *&v20 = v20 + 320;
  v12 = *(a1 + 8);
  v13 = (v19 + *a1 - v12);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULModelDO>,ULModelDO*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ULModelDO>::~__split_buffer(&v18);
  return v17;
}

void sub_2590A7020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULModelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN9ULDBUtils17insertDataObjectsI9ULModelDO9ULModelMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 320;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULModelMO * ()(ULModelDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULModelMO * ()(ULModelDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__560(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI9ULModelDO9ULModelMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULModelDO,ULModelMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULModelDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULModelDO,ULModelMO>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v22 = 0uLL;
  v23 = 0;
  std::vector<ULModelDO>::reserve(&v22, [v3 count]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v38 count:16];
  if (v4)
  {
    v5 = *v19;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v19 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v18 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((v37 & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULModelDO>::push_back[abi:ne200100](&v22, v30);
      v9 = 1;
LABEL_19:
      if (v37 == 1)
      {
        if (v34 == 1 && SHIBYTE(v33) < 0)
        {
          operator delete(__p[1]);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v31);
      }

      if (!v9)
      {

        goto LABEL_29;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v18 objects:v38 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *__p = 0u;
    memset(v31, 0, sizeof(v31));
    memset(v30, 0, sizeof(v30));
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_27:

  *a2 = v22;
  a2[2] = v23;
  v23 = 0;
  v22 = 0uLL;
LABEL_29:
  *&v30[0] = &v22;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](v30);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2590A7A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void sub_2590A7D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::optional<ULModelDO>::~optional(va);

  _Unwind_Resume(a1);
}

void sub_2590A80B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ULModelDO a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&a61);
  ULModelDO::~ULModelDO(&a22);
  ULModelDO::~ULModelDO(&a64);
  CLMicroLocationProto::VMKModel::~VMKModel(&a16);

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_50()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULModelDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590A8218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULModelDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULModelDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

ULModelDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULModelDO>,ULModelDO const*,ULModelDO const*,ULModelDO*>(int a1, ULModelDO *a2, ULModelDO *a3, ULModelDO *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      ULModelDO::ULModelDO(this, v6);
      v6 += 20;
      this += 20;
      v7 -= 320;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_2590A82E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 320;
    do
    {
      std::__destroy_at[abi:ne200100]<ULModelDO,0>(v4);
      v4 -= 320;
      v2 += 320;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_2590A88FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v13);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULOdometryDO,ULOdometryMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI12ULOdometryDO12ULOdometryMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A568C8;
    v18 = a2;
    std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590A8B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULOdometryDO,ULOdometryMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULOdometryDO,ULOdometryMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590A9434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, ...)
{
  va_start(va, a11);

  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULDBUtils::efficientlyFetchDataObjects<ULOdometryDO,ULOdometryMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = __Block_byref_object_copy__18;
  v26 = __Block_byref_object_dispose__18;
  v27 = &unk_25929B3B7;
  memset(v28, 0, sizeof(v28));
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v11 countManagedObjectsWithEntityName:v15 byAndPredicates:v12 sortDescriptors:v13 andLimit:a4];
  v17 = [v16 unsignedIntegerValue];

  if (v17)
  {
    std::vector<ULOdometryDO>::reserve(v23 + 6, v17);
  }

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___ZN9ULDBUtils27efficientlyFetchDataObjectsI12ULOdometryDO12ULOdometryMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEmm_block_invoke;
  v21[3] = &unk_2798D48B8;
  v21[4] = &v22;
  [v11 efficientlyFetchManagedObjectsWithEntityName:v19 byAndPredicates:v12 sortDescriptors:v13 andLimit:a4 fetchBatchSize:a5 andApplyBlock:v21];

  v20 = v23;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  std::vector<ULOdometryDO>::__init_with_size[abi:ne200100]<ULOdometryDO*,ULOdometryDO*>(a6, v20[6], v20[7], (v20[7] - v20[6]) >> 6);
  _Block_object_dispose(&v22, 8);
  v29 = v28;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v29);
}

void sub_2590A9714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  *(v11 - 88) = a2;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100]((v11 - 88));

  _Unwind_Resume(a1);
}

void sub_2590A9880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_51()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

std::string *std::vector<ULOdometryDO>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULOdometryDO const*>,std::__wrap_iter<ULOdometryDO const*>>(uint64_t *a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 6;
      if (v18 >= a5)
      {
        std::vector<ULOdometryDO>::__move_range(a1, a2, a1[1], a2 + (a5 << 6));
        v19 = (a3 + 64 * a5);
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO const*,ULOdometryDO const*,ULOdometryDO*>(a1, a3 + v17, a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<ULOdometryDO>::__move_range(a1, v5, v10, v5 + 64 * a5);
        v19 = (a3 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<ULOdometryDO const*,ULOdometryDO const*,ULOdometryDO*>(v21, a3, v19, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 6;
    v21[4] = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULOdometryDO>>(a1, v15);
    }

    v21[0] = 0;
    v21[1] = v16 << 6;
    v21[2] = v16 << 6;
    v21[3] = 0;
    std::__split_buffer<ULOdometryDO>::__construct_at_end_with_size<std::__wrap_iter<ULOdometryDO const*>>(v21, a3, a5);
    v5 = std::vector<ULOdometryDO>::__swap_out_circular_buffer(a1, v21, v5);
    std::__split_buffer<ULOdometryDO>::~__split_buffer(v21);
  }

  return v5;
}

uint64_t std::vector<ULOdometryDO>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
      *(v9 + 48) = 0;
      *(v8 + 48) = v12;
      *(v8 + 56) = v13;
      v9 += 64;
      v8 += 64;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULOdometryDO *,ULOdometryDO *,ULOdometryDO *>(&v15, a2, v7, v6);
}

void *std::__split_buffer<ULOdometryDO>::__construct_at_end_with_size<std::__wrap_iter<ULOdometryDO const*>>(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = a3 << 6;
    v7 = v4 + (a3 << 6);
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v9 = *(a2 + 24);
      *(v4 + 40) = *(a2 + 5);
      *(v4 + 24) = v9;
      result = *(a2 + 6);
      v10 = *(a2 + 7);
      *(v4 + 48) = result;
      *(v4 + 56) = v10;
      v4 += 64;
      a2 += 4;
      v6 -= 64;
    }

    while (v6);
    v4 = v7;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::vector<ULOdometryDO>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO const*,ULOdometryDO const*,ULOdometryDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = a4 + v7;
      v12 = *(a2 + v7 + 24);
      *(v11 + 40) = *(a2 + v7 + 40);
      *(v11 + 24) = v12;
      v13 = *(a2 + v7 + 48);
      v14 = *(a2 + v7 + 56);
      *(v11 + 48) = v13;
      *(v11 + 56) = v14;
      v7 += 64;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2590A9D78(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 64;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v4);
      v4 -= 64;
      v5 += 64;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULOdometryDO *,ULOdometryDO *,ULOdometryDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 64);
      if (*(a4 + v7 - 41) < 0)
      {
        operator delete(*v9);
      }

      v10 = a3 + v7;
      v11 = (a3 + v7 - 64);
      v12 = *v11;
      *(a4 + v7 - 48) = *(a3 + v7 - 48);
      *v9 = v12;
      *(v10 - 41) = 0;
      *v11 = 0;
      v13 = *(a3 + v7 - 40);
      *(v8 - 24) = *(a3 + v7 - 24);
      *(v8 - 40) = v13;
      v14 = *(a3 + v7 - 16);
      *(v10 - 16) = 0;
      v15 = *(v8 - 16);
      *(v8 - 16) = v14;

      *(v8 - 8) = *(a3 + v7 - 8);
      v7 -= 64;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<ULOdometryDO const*,ULOdometryDO const*,ULOdometryDO*>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    v7 = *&v5[1].__r_.__value_.__l.__data_;
    this[1].__r_.__value_.__r.__words[2] = v5[1].__r_.__value_.__r.__words[2];
    *&this[1].__r_.__value_.__l.__data_ = v7;
    objc_storeStrong(&this[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__data_);
    this[2].__r_.__value_.__l.__size_ = v5[2].__r_.__value_.__l.__size_;
    v5 = (v5 + 64);
    this = (this + 64);
  }

  while (v5 != v6);
  return v6;
}

void std::vector<ULOdometryDO>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 64;
        std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::ranges::__swap::__fn::operator()[abi:ne200100]<ULOdometryDO>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  *v17 = a2[1];
  *&v17[7] = *(a2 + 15);
  v6 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v15 = *(a2 + 3);
  v7 = a2[6];
  v16 = a2[5];
  a2[6] = 0;
  v8 = a2[7];
  v9 = *(a3 + 16);
  *a2 = *a3;
  a2[2] = v9;
  *(a3 + 23) = 0;
  *a3 = 0;
  v10 = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a2 + 3) = v10;
  v11 = *(a3 + 48);
  *(a3 + 48) = 0;
  v12 = a2[6];
  a2[6] = v11;

  a2[7] = *(a3 + 56);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v5;
  *(a3 + 8) = *v17;
  *(a3 + 15) = *&v17[7];
  *(a3 + 23) = v6;
  *(a3 + 24) = v15;
  v13 = *(a3 + 48);
  *(a3 + 40) = v16;
  *(a3 + 48) = v7;

  *(a3 + 56) = v8;
  v14 = *MEMORY[0x277D85DE8];
}

void ___ZN9ULDBUtils17insertDataObjectsI12ULOdometryDO12ULOdometryMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULOdometryStore insertDataObjects:atLoiUUID:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULOdometryStore insertDataObjects:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 64;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ULDBUtils::fetchDataObjects<ULOdometryDO,ULOdometryMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__18;
  v27 = __Block_byref_object_dispose__18;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI12ULOdometryDO12ULOdometryMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590AA844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__18(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI12ULOdometryDO12ULOdometryMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULOdometryDO,ULOdometryMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULOdometryDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULOdometryDO,ULOdometryMO>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v27 = 0uLL;
  v28 = 0;
  std::vector<ULOdometryDO>::reserve(&v27, [v3 count]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v5 = *v24;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v23 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULOdometryDO>::push_back[abi:ne200100](&v27, __p);
      v9 = 1;
LABEL_19:
      if (v22 == 1)
      {

        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (!v9)
      {

        goto LABEL_27;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    *__p = 0u;
    v19 = 0u;
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_25:

  *a2 = v27;
  a2[2] = v28;
  v28 = 0;
  v27 = 0uLL;
LABEL_27:
  __p[0] = &v27;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](__p);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2590AAD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  a13 = &a31;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void *std::vector<ULOdometryDO>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULOdometryDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590AAE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULOdometryDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULOdometryDO>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULOdometryDO>::__emplace_back_slow_path<ULOdometryDO>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t std::optional<ULOdometryDO>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::vector<ULOdometryDO>::__emplace_back_slow_path<ULOdometryDO>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULOdometryDO>>(a1, v7);
  }

  v8 = v2 << 6;
  v19 = 0;
  v20 = v8;
  *(&v21 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 40) = *(a2 + 5);
  *(v8 + 24) = v10;
  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  *(a2 + 6) = 0;
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  *&v21 = (v2 << 6) + 64;
  v13 = a1[1];
  v14 = (v2 << 6) + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULOdometryDO>,ULOdometryDO*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ULOdometryDO>::~__split_buffer(&v19);
  return v18;
}

void sub_2590AB058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULOdometryDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN9ULDBUtils27efficientlyFetchDataObjectsI12ULOdometryDO12ULOdometryMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEmm_block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = v7;
        if (!v7)
        {
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          *__p = 0u;
          v14 = 0u;
LABEL_15:
          v10 = _CLLogObjectForCategory_MicroLocation_Default();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289795;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2114;
            v27 = v8;
            v28 = 2082;
            v29 = "assert";
            v30 = 2081;
            v31 = "dataObject.has_value()";
            _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:efficientlyFetchDataObjects: convertToDO failed, object:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          v11 = _CLLogObjectForCategory_MicroLocation_Default();
          if (os_signpost_enabled(v11))
          {
            *buf = 68289795;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2114;
            v27 = v8;
            v28 = 2082;
            v29 = "assert";
            v30 = 2081;
            v31 = "dataObject.has_value()";
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "efficientlyFetchDataObjects: convertToDO failed", "{msg%{public}.0s:efficientlyFetchDataObjects: convertToDO failed, object:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          v12 = _CLLogObjectForCategory_MicroLocation_Default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 68289795;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2114;
            v27 = v8;
            v28 = 2082;
            v29 = "assert";
            v30 = 2081;
            v31 = "dataObject.has_value()";
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:efficientlyFetchDataObjects: convertToDO failed, object:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          abort_report_np();
          __break(1u);
        }

        [v7 convertToDO];
        if ((v17 & 1) == 0)
        {
          goto LABEL_15;
        }

        std::vector<ULOdometryDO>::push_back[abi:ne200100]((*(*(a1 + 32) + 8) + 48), __p);
        if (v17 == 1)
        {

          if (SBYTE7(v14) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v32 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULPhotoFeaturesDO,ULPhotoFeaturesMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void ULDBUtils::fetchDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI17ULPhotoFeaturesDO17ULPhotoFeaturesMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590AB7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__19(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI17ULPhotoFeaturesDO17ULPhotoFeaturesMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULPhotoFeaturesDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v25 = 0uLL;
  v26 = 0;
  std::vector<ULPhotoFeaturesDO>::reserve(&v25, [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v4)
  {
    v5 = *v22;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v21 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULPhotoFeaturesDO>::push_back[abi:ne200100](&v25, __p);
      v9 = 1;
LABEL_19:
      if (v20 == 1 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (!v9)
      {

        goto LABEL_27;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }

    v20 = 0;
    *__p = 0u;
    v19 = 0u;
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2113;
      v32 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULDBUtils::convertManagedObjectsToDataObjects<ULPhotoFeaturesDO,ULPhotoFeaturesMO>();
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2113;
      v32 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_25:

  *a2 = v25;
  a2[2] = v26;
  v26 = 0;
  v25 = 0uLL;
LABEL_27:
  __p[0] = &v25;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](__p);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2590ABCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __p = &a27;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void *std::vector<ULPhotoFeaturesDO>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590ABE20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULPhotoFeaturesDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULPhotoFeaturesDO>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULPhotoFeaturesDO>::__emplace_back_slow_path<ULPhotoFeaturesDO>(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v4 = *(a2 + 24);
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3[3] = v4;
    result = (v3 + 4);
  }

  a1[1] = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      v7 = *(v6 + 24);
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = v7;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<ULPhotoFeaturesDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULPhotoFeaturesDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULPhotoFeaturesDO>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t std::vector<ULPhotoFeaturesDO>::__emplace_back_slow_path<ULPhotoFeaturesDO>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>>(a1, v7);
  }

  v8 = (32 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = *a2;
  v9 = *(a2 + 24);
  v8[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v8[3] = v9;
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = (32 * v2 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ULPhotoFeaturesDO>::~__split_buffer(&v16);
  return v15;
}

void sub_2590AC100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULPhotoFeaturesDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_52()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590AC598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULRapportDO,ULRapportMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI11ULRapportDO11ULRapportMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A569D0;
    v18 = a2;
    std::__function::__value_func<ULRapportMO * ()(ULRapportDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULRapportMO * ()(ULRapportDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590AC744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULRapportMO * ()(ULRapportDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULRapportDO,ULRapportMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__20;
  v27 = __Block_byref_object_dispose__20;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI11ULRapportDO11ULRapportMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590AC93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULRapportDO,ULRapportMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULRapportDO,ULRapportMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_53()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULRapportDO>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<ULRapportDO,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI11ULRapportDO11ULRapportMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportStore insertDataObjects:atLoiUUID:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULRapportStore insertDataObjects:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 80;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULRapportMO * ()(ULRapportDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULRapportMO * ()(ULRapportDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__20(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI11ULRapportDO11ULRapportMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULRapportDO,ULRapportMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULRapportDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULRapportDO,ULRapportMO>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v22 = 0uLL;
  v23 = 0;
  std::vector<ULRapportDO>::reserve(&v22, [v3 count]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v34 count:16];
  if (v4)
  {
    v5 = *v19;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v19 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v18 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULRapportDO>::push_back[abi:ne200100](&v22, __p);
      v9 = 1;
LABEL_19:
      if (v33 == 1)
      {
        CLMicroLocationProto::RapportDevice::~RapportDevice(v32);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[1]);
        }
      }

      if (!v9)
      {

        goto LABEL_27;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v18 objects:v34 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }

    v33 = 0;
    v31 = 0u;
    memset(v32, 0, sizeof(v32));
    *__p = 0u;
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULRapportStore insertDataObjects:atLoiUUID:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULRapportStore insertDataObjects:atLoiUUID:];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_25:

  *a2 = v22;
  a2[2] = v23;
  v23 = 0;
  v22 = 0uLL;
LABEL_27:
  __p[0] = &v22;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](__p);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2590AD9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULRapportDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void *std::vector<ULRapportDO>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590ADB30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULRapportDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULRapportDO>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULRapportDO>::__emplace_back_slow_path<ULRapportDO>(a1, a2);
  }

  else
  {
    std::vector<ULRapportDO>::__construct_one_at_end[abi:ne200100]<ULRapportDO>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

__n128 std::vector<ULRapportDO>::__construct_one_at_end[abi:ne200100]<ULRapportDO>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  CLMicroLocationProto::RapportDevice::RapportDevice((v4 + 32), (a2 + 32));
  result = *(a2 + 64);
  *(v4 + 64) = result;
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_2590ADBF0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULRapportDO>::__emplace_back_slow_path<ULRapportDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULRapportDO>>(a1, v6);
  }

  v7 = 80 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  CLMicroLocationProto::RapportDevice::RapportDevice((v7 + 32), (a2 + 32));
  *(v7 + 64) = *(a2 + 64);
  *&v17 = v17 + 80;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULRapportDO>,ULRapportDO*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULRapportDO>::~__split_buffer(&v15);
  return v14;
}

void sub_2590ADD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULRapportDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULRapportDO>::~optional(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    CLMicroLocationProto::RapportDevice::~RapportDevice((a1 + 32));
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

void sub_2590AE310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULScanningEventDO,ULScanningEventMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI17ULScanningEventDO17ULScanningEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A56AF0;
    v18 = a2;
    std::__function::__value_func<ULScanningEventMO * ()(ULScanningEventDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULScanningEventMO * ()(ULScanningEventDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590AE510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULScanningEventMO * ()(ULScanningEventDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULScanningEventDO,ULScanningEventMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__597;
  v27 = __Block_byref_object_dispose__598;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI17ULScanningEventDO17ULScanningEventMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590AE708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULScanningEventDO,ULScanningEventMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULScanningEventDO,ULScanningEventMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590AEA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2590AF234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590AF698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, ...)
{
  va_start(va, a9);

  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590AF9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  *(v18 - 96) = v17;
  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100]((v18 - 96));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__42(__n128 *a1, __n128 *a2)
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

void *std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::reserve(void *result, unint64_t a2)
{
  if (0x14C1BACF914C1BADLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xDD67C8A60DD67DLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590B02B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::push_back[abi:ne200100](uint64_t *a1, __n128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__emplace_back_slow_path<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>(a1, a2);
  }

  else
  {
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__construct_one_at_end[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>(a1, a2);
    result = v3 + 296;
  }

  a1[1] = result;
  return result;
}

uint64_t std::optional<ULScanningEventDO>::~optional(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v6 = (a1 + 200);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v6);
    v2 = *(a1 + 136);
    if (v2)
    {
      *(a1 + 144) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      *(a1 + 96) = v4;
      operator delete(v4);
    }

    v6 = (a1 + 64);
    std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v6);
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

void sub_2590B130C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_56c24_ZTSK17ULPhotoFeaturesDO(void *a1, uint64_t *a2)
{
  a1[7] = 0;
  a1[8] = 0;
  v3 = a1 + 7;
  a1[9] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>((a1 + 7), a2[7], a2[8], (a2[8] - a2[7]) >> 2);
  v3[3] = a2[10];
  return result;
}

void __destroy_helper_block_ea8_56c24_ZTSK17ULPhotoFeaturesDO(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_54()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULScanningEventDO>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULScanningEventDO>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULScanningEventDO>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ULScanningEventDO>>::destroy[abi:ne200100]<ULScanningEventDO,void,0>(a1, i))
  {
    i -= 272;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<ULScanningEventDO>>::destroy[abi:ne200100]<ULScanningEventDO,void,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 200);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 136);
  if (v3)
  {
    *(a2 + 144) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 112);
  if (v4)
  {
    *(a2 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = (a2 + 64);
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void ULScanningEventDO::~ULScanningEventDO(ULScanningEventDO *this)
{
  p_var1 = &this[5];
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&p_var1);
  var0 = this[3].var1.var0.var1.var0;
  if (var0)
  {
    this[3].var1.var0.var1.var1 = var0;
    operator delete(var0);
  }

  v3 = *(&this[2].var1.var0.var1 + 2);
  if (v3)
  {
    *this[3].var0.data = v3;
    operator delete(v3);
  }

  v4 = *&this[2].var0.data[8];
  if (v4)
  {
    this[2].var1.var0.var1.var0 = v4;
    operator delete(v4);
  }

  p_var1 = &this[1].var1.var0.var1.var1;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&p_var1);
  if (*(&this->var1.var0.var1 + 23) < 0)
  {
    operator delete(this->var1.var0.var1.var0);
  }
}

void std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULScanningEventDO>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(uint64_t a1, uint64_t a2, uint64_t a3, ULScanningEventDO *a4)
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
      std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](a4, v7);
      v7 += 296;
      a4 = (v12 + 296);
      v12 = (v12 + 296);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>::destroy[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>,void,0>(a1, v5);
      v5 += 296;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

ULScanningEventDO *std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](ULScanningEventDO *a1, uint64_t a2)
{
  ULScanningEventDO::ULScanningEventDO(a1, a2);
  v4[34] = 0;
  v4[35] = 0;
  v4[36] = 0;
  std::vector<NSManagedObjectID * {__strong}>::__init_with_size[abi:ne200100]<NSManagedObjectID * {__strong}*,NSManagedObjectID * {__strong}*>((v4 + 34), *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 3);
  return a1;
}

void ULScanningEventDO::ULScanningEventDO(ULScanningEventDO *this, const ULScanningEventDO *a2)
{
  this->var0 = a2->var0;
  if (*(&a2->var1.var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&this->var1, a2->var1.var0.var1.var0, a2->var1.var0.var1.var1);
  }

  else
  {
    v4 = *a2->var1.var0.var0.var0;
    *(&this->var1.var0.var1 + 2) = *(&a2->var1.var0.var1 + 2);
    *this->var1.var0.var0.var0 = v4;
  }

  var0 = a2[1].var0;
  v6 = a2[1].var1.var0.var1.var0;
  this[1].var1.var0.var1.var1 = 0;
  this[1].var1.var0.var1.var0 = v6;
  this[1].var0 = var0;
  *(&this[1].var1.var0.var1 + 2) = 0;
  *this[2].var0.data = 0;
  std::vector<ULLabelDO>::__init_with_size[abi:ne200100]<ULLabelDO*,ULLabelDO*>(&this[1].var1.var0.var1.var1, a2[1].var1.var0.var1.var1, *(&a2[1].var1.var0.var1 + 2), (*(&a2[1].var1.var0.var1 + 2) - a2[1].var1.var0.var1.var1) >> 7);
  *&this[2].var0.data[8] = 0;
  this[2].var1.var0.var1.var0 = 0;
  this[2].var1.var0.var1.var1 = 0;
  std::vector<ULWiFiMeasurementDO>::__init_with_size[abi:ne200100]<ULWiFiMeasurementDO*,ULWiFiMeasurementDO*>(&this[2].var0.data[8], *&a2[2].var0.data[8], a2[2].var1.var0.var1.var0, &a2[2].var1.var0.var1.var0[-*&a2[2].var0.data[8]] >> 5);
  *(&this[2].var1.var0.var1 + 2) = 0;
  *this[3].var0.data = 0;
  *&this[3].var0.data[8] = 0;
  std::vector<ULBLEMeasurementDO>::__init_with_size[abi:ne200100]<ULBLEMeasurementDO*,ULBLEMeasurementDO*>((&this[2].var1.var0.var1 + 1), *(&a2[2].var1.var0.var1 + 2), *a2[3].var0.data, (*a2[3].var0.data - *(&a2[2].var1.var0.var1 + 2)) >> 5);
  this[3].var1.var0.var1.var0 = 0;
  this[3].var1.var0.var1.var1 = 0;
  *(&this[3].var1.var0.var1 + 2) = 0;
  std::vector<ULUWBMeasurementDO>::__init_with_size[abi:ne200100]<ULUWBMeasurementDO*,ULUWBMeasurementDO*>(&this[3].var1, a2[3].var1.var0.var1.var0, a2[3].var1.var0.var1.var1, (a2[3].var1.var0.var1.var1 - a2[3].var1.var0.var1.var0) >> 5);
  v7 = a2[4].var0;
  v8 = *a2[4].var1.var0.var0.var0;
  v9 = a2[4].var1.var0.var0.var0[16];
  *this[5].var0.data = 0;
  this[4].var1.var0.var0.var0[16] = v9;
  *this[4].var1.var0.var0.var0 = v8;
  this[4].var0 = v7;
  *&this[5].var0.data[8] = 0;
  this[5].var1.var0.var1.var0 = 0;
  std::vector<ULPhotoFeaturesDO>::__init_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(&this[5], *a2[5].var0.data, *&a2[5].var0.data[8], (*&a2[5].var0.data[8] - *a2[5].var0.data) >> 5);
  v10 = *&a2[5].var1.var0.var1.var1;
  v11 = *a2[6].var1.var0.var0.var0;
  this[6].var0 = a2[6].var0;
  *this[6].var1.var0.var0.var0 = v11;
  *&this[5].var1.var0.var1.var1 = v10;
}

void sub_2590B2558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 144) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v2 + 120) = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v2 + 96) = v9;
    operator delete(v9);
  }

  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<NSManagedObjectID * {__strong}>::__init_with_size[abi:ne200100]<NSManagedObjectID * {__strong}*,NSManagedObjectID * {__strong}*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NSManagedObjectID * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<NSManagedObjectID * {__strong}>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

void std::allocator_traits<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>::destroy[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>,void,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 272);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a2 + 200);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 136);
  if (v3)
  {
    *(a2 + 144) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 112);
  if (v4)
  {
    *(a2 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = (a2 + 64);
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 296;
      std::allocator_traits<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>::destroy[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 296;
    std::allocator_traits<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>::destroy[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>,void,0>(v5, v4 - 296);
  }
}

void std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__construct_one_at_end[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  ULScanningEventDO::ULScanningEventDO(v4);
  v4[17].n128_u64[0] = 0;
  v4[17].n128_u64[1] = 0;
  v4[18].n128_u64[0] = 0;
  result = a2[17];
  v4[17] = result;
  v4[18].n128_u64[0] = a2[18].n128_u64[0];
  a2[17].n128_u64[0] = 0;
  a2[17].n128_u64[1] = 0;
  a2[18].n128_u64[0] = 0;
  *(a1 + 8) = v4 + 296;
  return result;
}

uint64_t std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__emplace_back_slow_path<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>(a1, v6);
  }

  v14 = 0;
  v15 = 296 * v2;
  v16 = (296 * v2);
  v7 = ULScanningEventDO::ULScanningEventDO(296 * v2);
  v7[34] = 0;
  v7[35] = 0;
  v7[36] = 0;
  *(v7 + 17) = *(a2 + 272);
  v7[36] = *(a2 + 288);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *&v16 = v16 + 296;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(&v14);
  return v13;
}

void sub_2590B2B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::~pair(uint64_t a1)
{
  v6 = (a1 + 272);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 200);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 64);
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>::destroy[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>,void,0>(a1, i))
  {
    i -= 296;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__init_with_size[abi:ne200100]<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2590B2CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

ULScanningEventDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(uint64_t a1, uint64_t a2, uint64_t a3, ULScanningEventDO *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](v4, v6);
      v6 += 296;
      v4 = (v11 + 296);
      v11 = (v11 + 296);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ULScanningEventDO>::__emplace_back_slow_path<ULScanningEventDO>(uint64_t a1)
{
  v1 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v2)
  {
    v2 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v4 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v4 = v2;
  }

  v14 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULScanningEventDO>>(a1, v4);
  }

  v11 = 0;
  v12 = 272 * v1;
  ULScanningEventDO::ULScanningEventDO(272 * v1);
  v13 = 272 * v1 + 272;
  v5 = *(a1 + 8);
  v6 = (272 * v1 + *a1 - v5);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULScanningEventDO>,ULScanningEventDO*>(a1, *a1, v5, v6);
  v7 = *a1;
  *a1 = v6;
  v8 = *(a1 + 16);
  v10 = v13;
  *(a1 + 8) = v13;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v11 = v7;
  v12 = v7;
  std::__split_buffer<ULScanningEventDO>::~__split_buffer(&v11);
  return v10;
}

void sub_2590B2F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULScanningEventDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULScanningEventDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULScanningEventDO>,ULScanningEventDO*>(uint64_t a1, ULScanningEventDO *a2, ULScanningEventDO *a3, ULScanningEventDO *this)
{
  v11 = this;
  v12 = this;
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
      ULScanningEventDO::ULScanningEventDO(this, v7);
      v7 = (v7 + 272);
      this = (v12 + 272);
      v12 = (v12 + 272);
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULScanningEventDO>>::destroy[abi:ne200100]<ULScanningEventDO,void,0>(a1, v5);
      v5 = (v5 + 272);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULScanningEventDO>,ULScanningEventDO*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULScanningEventDO>,ULScanningEventDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULScanningEventDO>,ULScanningEventDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULScanningEventDO>,ULScanningEventDO*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 272;
      std::allocator_traits<std::allocator<ULScanningEventDO>>::destroy[abi:ne200100]<ULScanningEventDO,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ULScanningEventDO>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULScanningEventDO>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULScanningEventDO>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 272;
    std::allocator_traits<std::allocator<ULScanningEventDO>>::destroy[abi:ne200100]<ULScanningEventDO,void,0>(v5, v4 - 272);
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI17ULScanningEventDO17ULScanningEventMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULScanningEventStore insertDataObjects:atLoiUUID:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULScanningEventStore insertDataObjects:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 272;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULScanningEventMO * ()(ULScanningEventDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULScanningEventMO * ()(ULScanningEventDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__597(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI17ULScanningEventDO17ULScanningEventMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULScanningEventDO,ULScanningEventMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULScanningEventDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULScanningEventDO,ULScanningEventMO>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v24 = 0uLL;
  v25 = 0;
  std::vector<ULScanningEventDO>::reserve(&v24, [v3 count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v45 count:16];
  if (v4)
  {
    v5 = *v21;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((v44 & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v24 + 1);
      if (*(&v24 + 1) >= v25)
      {
        v10 = std::vector<ULScanningEventDO>::__emplace_back_slow_path<ULScanningEventDO>(&v24);
      }

      else
      {
        ULScanningEventDO::ULScanningEventDO(*(&v24 + 1));
        v10 = v9 + 272;
      }

      *(&v24 + 1) = v10;
      v17 = 1;
LABEL_22:
      if (v44 == 1)
      {
        *buf = v43 + 8;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](buf);
        if (__p[1])
        {
          *&v40 = __p[1];
          operator delete(__p[1]);
        }

        if (v38[0])
        {
          v38[1] = v38[0];
          operator delete(v38[0]);
        }

        if (v36[1])
        {
          *&v37 = v36[1];
          operator delete(v36[1]);
        }

        *buf = &v35;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](buf);
        if (SBYTE7(v33) < 0)
        {
          operator delete(v32[0]);
        }
      }

      if (!v17)
      {

        goto LABEL_36;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v20 objects:v45 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }
    }

    v44 = 0;
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    v40 = 0u;
    v41 = 0u;
    *v38 = 0u;
    *__p = 0u;
    *v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *v32 = 0u;
    v33 = 0u;
    v31 = 0u;
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULScanningEventStore insertDataObjects:atLoiUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v8 entity];
      v13 = [v12 name];
      *buf = 68289283;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2113;
      v30 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULScanningEventStore insertDataObjects:atLoiUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = [v8 entity];
      v16 = [v15 name];
      *buf = 68289283;
      *&buf[4] = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2113;
      v30 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v17 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_22;
  }

LABEL_34:

  *a2 = v24;
  a2[2] = v25;
  v25 = 0;
  v24 = 0uLL;
LABEL_36:
  *&v31 = &v24;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&v31);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2590B3BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  a31 = &a23;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&a31);

  _Unwind_Resume(a1);
}

void *std::vector<ULScanningEventDO>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULScanningEventDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590B3D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULScanningEventDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2590B3EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULScanningServiceAnalyticsDO,ULScanningServiceAnalyticsMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A56BB8;
    v18 = a2;
    std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590B4050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULScanningServiceAnalyticsDO,ULScanningServiceAnalyticsMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__22;
  v27 = __Block_byref_object_dispose__22;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_2590B4614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN9ULDBUtils17insertDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_1();
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ___ZN9ULDBUtils17insertDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 16;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_55()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULScanningServiceAnalyticsMO * ()(ULScanningServiceAnalyticsDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__22(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULScanningServiceAnalyticsDO,ULScanningServiceAnalyticsMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULScanningServiceAnalyticsDO,ULScanningServiceAnalyticsMO>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  v25 = a1;
  std::vector<ULScanningServiceAnalyticsDO>::reserve(__p, [v25 count]);
  v26 = a2;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = v25;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v4)
  {
    v5 = *v30;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = v7;
        if (!v7 || ([v7 convertToDO], (v28 & 1) == 0))
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ___ZN9ULDBUtils17insertDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
          }

          v18 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v8 entity];
            v20 = [v19 name];
            *buf = 68289283;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2113;
            v40 = v20;
            _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ___ZN9ULDBUtils17insertDataObjectsI28ULScanningServiceAnalyticsDO28ULScanningServiceAnalyticsMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke_cold_2();
          }

          v21 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v21))
          {
            v22 = [v8 entity];
            v23 = [v22 name];
            *buf = 68289283;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2113;
            v40 = v23;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *v26 = 0;
          v26[1] = 0;
          v26[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_33;
        }

        v9 = __p[1];
        if (__p[1] >= v34)
        {
          v11 = (__p[1] - __p[0]) >> 4;
          v12 = v11 + 1;
          if ((v11 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v13 = v34 - __p[0];
          if ((v34 - __p[0]) >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(__p, v14);
          }

          v15 = (16 * v11);
          *v15 = v27;
          v10 = (16 * v11 + 16);
          v16 = (16 * v11 - (__p[1] - __p[0]));
          memcpy(v15 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v17 = __p[0];
          __p[0] = v16;
          __p[1] = v10;
          v34 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *__p[1] = v27;
          v10 = v9 + 16;
        }

        __p[1] = v10;
      }

      v4 = [v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  *v26 = *__p;
  v26[2] = v34;
LABEL_33:

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2590B50D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<ULScanningServiceAnalyticsDO>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590B53A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULServiceDO,ULServiceMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI11ULServiceDO11ULServiceMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A56CC0;
    v18 = a2;
    std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590B5504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULServiceDO,ULServiceMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__561;
  v27 = __Block_byref_object_dispose__562;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI11ULServiceDO11ULServiceMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590B56FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULServiceDO,ULServiceMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULServiceDO,ULServiceMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590B5E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590B6160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2590B63CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void *std::vector<ULServiceDO>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590B6514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULServiceDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2590B66C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590B6A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590B6E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590B7BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, void *a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::destroy(&a24, a25);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a27, a28);
  *(v30 - 160) = &a30;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100]((v30 - 160));
  _Unwind_Resume(a1);
}

void sub_2590B8278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_56()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULServiceDO>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 88;
        std::__destroy_at[abi:ne200100]<ULServiceDO,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULServiceDO>::__construct_one_at_end[abi:ne200100]<ULServiceDO const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v6 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v6;
  }

  *(v4 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 64) = v7;
  }

  *(a1 + 8) = v4 + 88;
}

void sub_2590B8578(_Unwind_Exception *exception_object)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULServiceDO>::__emplace_back_slow_path<ULServiceDO const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceDO>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v9 = *(a2 + 32);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 32) = v9;
  }

  *(v7 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v10 = *(a2 + 64);
    *(v7 + 80) = *(a2 + 80);
    *(v7 + 64) = v10;
  }

  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ULServiceDO>::~__split_buffer(&v17);
  return v16;
}

void sub_2590B8728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 55) < 0)
  {
    operator delete(*(v4 + 32));
  }

  std::__split_buffer<ULServiceDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(__int128 **a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v17 = **a1;
  v18 = (*a1)[1];
  v4 = *(*a1 + 4);
  *v16 = *(*a1 + 5);
  *&v16[7] = *(*a1 + 47);
  v5 = *(*a1 + 55);
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 4) = 0;
  v6 = *(v2 + 7);
  v8 = v2 + 4;
  v7 = *(v2 + 8);
  *&v15[7] = *(v2 + 79);
  *v15 = *(v2 + 9);
  v9 = *(v2 + 87);
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  *(v2 + 10) = 0;
  v10 = *(v3 + 16);
  *v2 = *v3;
  v2[1] = v10;
  v11 = *(v3 + 32);
  *(v2 + 6) = *(v3 + 48);
  v2[2] = v11;
  *(v3 + 55) = 0;
  *(v3 + 32) = 0;
  *(v2 + 7) = *(v3 + 56);
  if (*(v2 + 87) < 0)
  {
    operator delete(*v8);
  }

  v12 = *(v3 + 64);
  *(v8 + 2) = *(v3 + 80);
  *v8 = v12;
  *(v3 + 87) = 0;
  *(v3 + 64) = 0;
  *v3 = v17;
  *(v3 + 16) = v18;
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
    v13 = *(v3 + 87);
    *(v3 + 32) = v4;
    *(v3 + 40) = *v16;
    *(v3 + 47) = *&v16[7];
    *(v3 + 55) = v5;
    *(v3 + 56) = v6;
    if (v13 < 0)
    {
      operator delete(*(v3 + 64));
    }
  }

  else
  {
    *(v3 + 32) = v4;
    *(v3 + 40) = *v16;
    *(v3 + 47) = *&v16[7];
    *(v3 + 55) = v5;
    *(v3 + 56) = v6;
  }

  *(v3 + 64) = v7;
  *(v3 + 72) = *v15;
  *(v3 + 79) = *&v15[7];
  *(v3 + 87) = v9;
  v14 = *MEMORY[0x277D85DE8];
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v8 = a2[3];
  v9 = *(a3 + 24);
  if (v8 >= *(a1 + 24))
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v17, &v16);
      if (v17[3] < v18[3])
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v10, v11);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v18, &v17);
    if (*(v16 + 24) < v17[3])
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 24) < *(a3 + 24))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v13, &v12);
    if (v13[3] < a2[3])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v14, &v13);
      if (v14[3] < *(a1 + 24))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v15, &v14);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *>(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        *&v46 = a1;
        *v44 = a1 + 88;
        *v45 = a2 - 88;
        v9 = *(a1 + 112);
        v10 = *(a2 - 64);
        if (v9 < *(a1 + 24))
        {
          v5 = &v46;
          if (v10 >= v9)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v46, v44);
            if (*(*v45 + 24) >= *(*v44 + 24))
            {
              goto LABEL_51;
            }

            v5 = v44;
          }

          v6 = v45;
          goto LABEL_28;
        }

        if (v10 >= v9)
        {
          goto LABEL_51;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v44, v45);
        v7 = *(*v44 + 24);
        v8 = *(v46 + 24);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(a1, (a1 + 88), a1 + 176, a2 - 88);
        goto LABEL_51;
      case 5:
        *&v46 = a1;
        v43 = (a1 + 264);
        *v44 = a1 + 88;
        *v45 = a1 + 176;
        v42 = a2 - 88;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(a1, (a1 + 88), a1 + 176, a1 + 264);
        if (*(a2 - 64) >= *(a1 + 288))
        {
          goto LABEL_51;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v43, &v42);
        if (v43[3] >= *(a1 + 200))
        {
          goto LABEL_51;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v45, &v43);
        if (*(*v45 + 24) >= *(a1 + 112))
        {
          goto LABEL_51;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v44, v45);
        v7 = *(*v44 + 24);
        v8 = *(a1 + 24);
        break;
      default:
        goto LABEL_18;
    }

    if (v7 < v8)
    {
      v5 = &v46;
      v6 = v44;
      goto LABEL_28;
    }

    goto LABEL_51;
  }

  if (v4 < 2)
  {
    goto LABEL_51;
  }

  if (v4 == 2)
  {
    v40 = a2 - 88;
    if (*(a2 - 64) < *(a1 + 24))
    {
      v5 = &v41;
      v6 = &v40;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v5, v6);
    }

LABEL_51:
    result = 1;
    goto LABEL_52;
  }

LABEL_18:
  v11 = a1 + 176;
  *&v46 = a1;
  *v44 = a1 + 88;
  *v45 = a1 + 176;
  v12 = *(a1 + 112);
  v13 = *(a1 + 200);
  if (v12 < *(a1 + 24))
  {
    v14 = &v46;
    if (v13 >= v12)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v46, v44);
      if (*(*v45 + 24) >= *(*v44 + 24))
      {
        goto LABEL_33;
      }

      v14 = v44;
    }

    v15 = v45;
    goto LABEL_32;
  }

  if (v13 < v12)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v44, v45);
    if (*(*v44 + 24) < *(v46 + 24))
    {
      v14 = &v46;
      v15 = v44;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v14, v15);
    }
  }

LABEL_33:
  v16 = a1 + 264;
  if (a1 + 264 == a2)
  {
    goto LABEL_51;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *(v16 + 24);
    if (v19 < *(v11 + 24))
    {
      v46 = *v16;
      v47 = *(v16 + 16);
      v37 = *(v16 + 32);
      *v45 = *(v16 + 40);
      *&v45[7] = *(v16 + 47);
      v36 = *(v16 + 55);
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      v20 = *(v16 + 56);
      v21 = *(v16 + 64);
      v22 = *(v16 + 65);
      *&v44[14] = *(v16 + 79);
      *v44 = v22;
      v38 = *(v16 + 87);
      v39 = v21;
      *(v16 + 64) = 0;
      *(v16 + 72) = 0;
      v23 = v17;
      *(v16 + 80) = 0;
      while (1)
      {
        v24 = v23;
        v25 = a1 + v23;
        v26 = (a1 + v23 + 264);
        v27 = *(v25 + 192);
        *v26 = *(v25 + 176);
        v26[1] = v27;
        v28 = (v25 + 296);
        if (*(v25 + 319) < 0)
        {
          operator delete(*v28);
        }

        *v28 = *(v25 + 208);
        v29 = *(v25 + 232);
        *(v25 + 312) = *(v25 + 224);
        *(v25 + 231) = 0;
        *(v25 + 208) = 0;
        *(v25 + 320) = v29;
        v30 = (v25 + 328);
        if (*(v25 + 351) < 0)
        {
          operator delete(*v30);
        }

        v31 = a1 + v24;
        *v30 = *(a1 + v24 + 240);
        *(v25 + 344) = *(a1 + v24 + 256);
        *(v31 + 263) = 0;
        *(v31 + 240) = 0;
        if (v24 == -176)
        {
          break;
        }

        v23 = v24 - 88;
        if (v19 >= *(v31 + 112))
        {
          v32 = a1 + v23 + 264;
          goto LABEL_45;
        }
      }

      v32 = a1;
LABEL_45:
      *v32 = v46;
      *(v32 + 16) = v47;
      *(v32 + 24) = v19;
      if (*(v32 + 55) < 0)
      {
        operator delete(*(v31 + 208));
      }

      *(v31 + 208) = v37;
      v33 = a1 + v24;
      *(v33 + 216) = *v45;
      *(v33 + 223) = *&v45[7];
      *(v31 + 231) = v36;
      *(v32 + 56) = v20;
      if (*(v32 + 87) < 0)
      {
        operator delete(*(v31 + 240));
      }

      *(v31 + 240) = v39;
      *(v33 + 241) = *v44;
      *(v33 + 255) = *&v44[14];
      *(v31 + 263) = v38;
      if (++v18 == 8)
      {
        break;
      }
    }

    v11 = v16;
    v17 += 88;
    v16 += 88;
    if (v16 == a2)
    {
      goto LABEL_51;
    }
  }

  result = v16 + 88 == a2;
LABEL_52:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN9ULDBUtils17insertDataObjectsI11ULServiceDO11ULServiceMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULServiceStore deleteAllServicesWithUUIDs:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 88;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 __Block_byref_object_copy__561(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI11ULServiceDO11ULServiceMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULServiceDO,ULServiceMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULServiceDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULServiceDO,ULServiceMO>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v22 = 0uLL;
  v23 = 0;
  std::vector<ULServiceDO>::reserve(&v22, [v3 count]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v35 count:16];
  if (v4)
  {
    v5 = *v19;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v19 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v18 + 1) + 8 * v6);
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v7 convertToDO];
      if ((BYTE8(v34) & 1) == 0)
      {
        goto LABEL_10;
      }

      std::vector<ULServiceDO>::push_back[abi:ne200100](&v22, v30);
      v9 = 1;
LABEL_19:
      if (BYTE8(v34) == 1)
      {
        if (SBYTE7(v34) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v32) < 0)
        {
          operator delete(v31[0]);
        }
      }

      if (!v9)
      {

        goto LABEL_29;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v18 objects:v35 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    *__p = 0u;
    v34 = 0u;
    *v31 = 0u;
    v32 = 0u;
    memset(v30, 0, sizeof(v30));
LABEL_10:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 entity];
      v12 = [v11 name];
      *buf = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v12;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v13))
    {
      v14 = [v8 entity];
      v15 = [v14 name];
      *buf = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v15;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_19;
  }

LABEL_27:

  *a2 = v22;
  a2[2] = v23;
  v23 = 0;
  v22 = 0uLL;
LABEL_29:
  *&v30[0] = &v22;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](v30);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2590BAD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULServiceDO>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ULServiceDO>::__emplace_back_slow_path<ULServiceDO>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v5;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(v3 + 56) = *(a2 + 56);
    v6 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v6;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<ULServiceDO>::__emplace_back_slow_path<ULServiceDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceDO>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(v7 + 56) = *(a2 + 56);
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *&v19 = 88 * v2 + 88;
  v11 = a1[1];
  v12 = 88 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ULServiceDO>::~__split_buffer(&v17);
  return v16;
}

void sub_2590BAF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULServiceDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<ULServiceDO>::~optional(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::vector<ULServiceDO>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::vector<ULServiceDO>>,0>(uint64_t a1)
{
  v2 = (a1 + 32);
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::__emplace_unique_key_args<std::pair<std::string,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,unsigned long long>&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::__find_equal<std::pair<std::string,unsigned long long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::__find_equal<std::pair<std::string,unsigned long long>>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32));
        if (!v8)
        {
          v9 = a3[3];
          v10 = v7[7];
          v8 = v9 < v10 ? -1 : 1;
          if (v9 == v10)
          {
            break;
          }
        }

        if ((v8 & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_19;
        }
      }

      v11 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3);
      if (!v11)
      {
        v12 = v7[7];
        v13 = a3[3];
        v11 = v12 < v13 ? -1 : 1;
        if (v12 == v13)
        {
          break;
        }
      }

      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_19:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,unsigned long long> const,std::vector<ULServiceDO>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2590BB428(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2590BBAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

void sub_2590BC0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590BC3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_2590BCBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v44 - 208), 8);

  _Unwind_Resume(a1);
}

void sub_2590BD3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_2590BD9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_2590BE790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_2590BEF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v39 - 208), 8);

  _Unwind_Resume(a1);
}

void sub_2590BF228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_57()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULDBUtils::fetchDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__25;
  v27 = __Block_byref_object_dispose__25;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI18ULUWBMeasurementDO18ULUWBMeasurementMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

void sub_2590BFDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULUWBMeasurementDO,ULUWBMeasurementMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

__n128 __Block_byref_object_copy__25(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI18ULUWBMeasurementDO18ULUWBMeasurementMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>(v5, &v9);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  if (v7)
  {
    v6[7] = v7;
    operator delete(v7);
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  *(v6 + 3) = v9;
  v6[8] = v10;
  v8 = [*(a1 + 48) managedObjectContext];
  [v8 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  std::vector<ULBLEMeasurementDO>::reserve(__p, [v3 count]);
  v30 = a2;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v5)
  {
    v6 = *v32;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = v8;
        if (!v8)
        {
          v44 = 0;
          memset(v43, 0, sizeof(v43));
LABEL_28:
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>();
          }

          v23 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v9 entity];
            v25 = [v24 name];
            *buf = 68289283;
            v38 = 0;
            v39 = 2082;
            v40 = "";
            v41 = 2113;
            v42 = v25;
            _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULUWBMeasurementDO,ULUWBMeasurementMO>();
          }

          v26 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v26))
          {
            v27 = [v9 entity];
            v28 = [v27 name];
            *buf = 68289283;
            v38 = 0;
            v39 = 2082;
            v40 = "";
            v41 = 2113;
            v42 = v28;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to convert MO to DO", "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          *v30 = 0;
          v30[1] = 0;
          v30[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_38;
        }

        [v8 convertToDO];
        if ((v44 & 1) == 0)
        {
          goto LABEL_28;
        }

        v10 = __p[1];
        if (__p[1] >= v36)
        {
          v11 = (__p[1] - __p[0]) >> 5;
          if ((v11 + 1) >> 59)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v12 = (v36 - __p[0]) >> 4;
          if (v12 <= v11 + 1)
          {
            v12 = v11 + 1;
          }

          if (v36 - __p[0] >= 0x7FFFFFFFFFFFFFE0)
          {
            v13 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULBLEMeasurementDO>>(__p, v13);
          }

          ULUWBMeasurementDO::ULUWBMeasurementDO(32 * v11, v43);
          v15 = __p[0];
          v16 = __p[1];
          v17 = (v14 + __p[0] - __p[1]);
          if (__p[1] != __p[0])
          {
            v18 = __p[0];
            v19 = (v14 + __p[0] - __p[1]);
            do
            {
              v20 = *v18;
              v21 = v18[1];
              v18 += 2;
              *v19 = v20;
              v19[1] = v21;
              v19 += 2;
            }

            while (v18 != v16);
          }

          v22 = (v14 + 32);
          __p[0] = v17;
          __p[1] = (v14 + 32);
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          __p[1] = v22;
        }

        else
        {
          ULUWBMeasurementDO::ULUWBMeasurementDO(__p[1], v43);
          __p[1] = v10 + 32;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v31 objects:v45 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  *v30 = *__p;
  v30[2] = v36;
LABEL_38:

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2590C0508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_58()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590C0690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_2590C0990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  _Block_object_dispose((v28 - 120), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ULSettings::get<ULSettings::LabelTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLabelTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71C58 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::CustomLoiTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCustomLoiTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71C58 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::ModelTableMigrationPageSize>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelTableMigrationPageSize"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71C88 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

void sub_2590C20D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590C2A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  MEMORY[0x259CA1F70](v20, v21);
  CLMicroLocationProto::WifiHistogram::~WifiHistogram(&a11);
  v25 = a18;
  a18 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(a1);
}

void sub_2590C2DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  MEMORY[0x259CA1F70](v18, v19);
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&a11);
  v23 = a16;
  a16 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(a1);
}

void sub_2590C2FC0(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  _Unwind_Resume(a1);
}

void sub_2590C30FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590C3BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  CLMicroLocationProto::RecordingEvent::~RecordingEvent(va);
  _Unwind_Resume(a1);
}

void sub_2590C3CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590C450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    [ULVersionMigrationStore _createMeasurementFromDeprecatedMeasurement:a12 withRelatedScanningEventObjectID:?];
  }

  _Unwind_Resume(a1);
}

void sub_2590C4E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590C5AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_59()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::map<std::string,DeviceModel>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,DeviceModel>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,DeviceModel>,std::__tree_node<std::__value_type<std::string,DeviceModel>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,DeviceModel>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,DeviceModel>,std::__tree_node<std::__value_type<std::string,DeviceModel>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,DeviceModel> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,DeviceModel> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__construct_node<std::pair<std::string const,DeviceModel> const&>();
  }

  return result;
}

void **std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_2590C62CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

void std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,DeviceModel>,std::__tree_node<std::__value_type<std::string,DeviceModel>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<double>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 28) = *(v9 + 28);
          leaf_high = std::__tree<std::__value_type<std::string,ULLocalizationResult>,std::__map_value_compare<std::string,std::__value_type<std::string,ULLocalizationResult>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ULLocalizationResult>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<double>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__emplace_multi<std::pair<std::string const,DeviceModel> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_2590C65EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2590C6A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

uint64_t ULDBUtils::insertDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(void *a1, void *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (*a2 == a2[1])
  {
    v8 = 1;
  }

  else
  {
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [v5 managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3321888768;
    v15[2] = ___ZN9ULDBUtils17insertDataObjectsI17ULWiFiHistogramDO17ULWiFiHistogramMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke;
    v15[3] = &unk_286A56E08;
    v18 = a2;
    std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::__value_func[abi:ne200100](v19, a3);
    v16 = v6;
    v17 = &v11;
    [v7 performBlockAndWait:v15];

    v8 = *(v12 + 24);
    std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::~__value_func[abi:ne200100](v19);
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void sub_2590C6C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::~__value_func[abi:ne200100](v19 + 56);

  _Block_object_dispose(&a9, 8);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__27;
  v27 = __Block_byref_object_dispose__27;
  v28 = &unk_25929B3B7;
  memset(v29, 0, sizeof(v29));
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI17ULWiFiHistogramDO17ULWiFiHistogramMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
  v17[3] = &unk_2798D4778;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v22 = a4;
  v15 = v9;
  v20 = v15;
  v21 = &v23;
  [v12 performBlockAndWait:v17];

  v16 = v24;
  *a5 = *(v24 + 3);
  *(a5 + 16) = v16[8];
  v16[7] = 0;
  v16[8] = 0;
  v16[6] = 0;

  _Block_object_dispose(&v23, 8);
  v30 = v29;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2590C6E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  *(v15 - 96) = v14;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100]((v15 - 96));

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULWiFiHistogramDO,ULWiFiHistogramMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590C71E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::vector<ULWiFiHistogramDO>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiHistogramDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590C7348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_60()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiHistogramDO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULWiFiHistogramDO>,ULWiFiHistogramDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(v6 + v7);
      *(v8 + 16) = *(v6 + v7 + 16);
      *v8 = v9;
      CLMicroLocationProto::WifiHistogram::WifiHistogram((a4 + v7 + 24), (v6 + v7 + 24));
      v7 += 72;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      CLMicroLocationProto::WifiHistogram::~WifiHistogram((v6 + 24));
      v6 += 72;
    }
  }
}

void sub_2590C7568(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 48);
    do
    {
      CLMicroLocationProto::WifiHistogram::~WifiHistogram(v5);
      v5 = (v6 - 72);
      v4 += 72;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    CLMicroLocationProto::WifiHistogram::~WifiHistogram((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ULWiFiHistogramDO>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 72;
        CLMicroLocationProto::WifiHistogram::~WifiHistogram((v3 - 48));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 72;
        CLMicroLocationProto::WifiHistogram::~WifiHistogram((v4 - 48));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZN9ULDBUtils17insertDataObjectsI17ULWiFiHistogramDO17ULWiFiHistogramMOEEbP7ULStoreRKNSt3__16vectorIT_NS5_9allocatorIS7_EEEENS5_8functionIFPT0_RKS7_EEE_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = (*(*v5 + 48))(v5, v3);
    if (!v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v12))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2113;
        v22 = v14;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create MO from DO", "{msg%{public}.0s:Failed to create MO from DO, MO:%{private, location:escape_only}@}", &v17, 0x1Cu);
      }

      v15 = [*(a1 + 32) managedObjectContext];
      [v15 reset];

      v16 = *MEMORY[0x277D85DE8];
      return;
    }

    v3 += 72;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v7 = *(a1 + 32);
  v8 = *MEMORY[0x277D85DE8];

  [v7 deleteOldestRecordsIfFull];
}

uint64_t std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}