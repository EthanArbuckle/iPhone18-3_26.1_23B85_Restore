__n128 __Block_byref_object_copy__27(__n128 *a1, __n128 *a2)
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

void ___ZN9ULDBUtils16fetchDataObjectsI17ULWiFiHistogramDO17ULWiFiHistogramMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(v5, &v8);
  v6 = *(*(a1 + 56) + 8);
  std::vector<ULWiFiHistogramDO>::__vdeallocate((v6 + 48));
  *(v6 + 48) = v8;
  *(v6 + 64) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = [*(a1 + 48) managedObjectContext];
  [v7 reset];
}

void ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v24 = 0uLL;
  v25 = 0;
  std::vector<ULWiFiHistogramDO>::reserve(&v24, [v3 count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v34 count:16];
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
      if ((BYTE8(v33) & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = *(&v24 + 1);
      if (*(&v24 + 1) >= v25)
      {
        v10 = std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<ULWiFiHistogramDO>(&v24, v32);
      }

      else
      {
        ULWiFiHistogramDO::ULWiFiHistogramDO(*(&v24 + 1), v32);
        v10 = v9 + 72;
      }

      *(&v24 + 1) = v10;
      v17 = 1;
LABEL_22:
      if (BYTE8(v33) == 1)
      {
        CLMicroLocationProto::WifiHistogram::~WifiHistogram((&v32[1] + 8));
      }

      if (!v17)
      {

        goto LABEL_29;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v20 objects:v34 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    v33 = 0u;
    memset(v32, 0, sizeof(v32));
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
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
      [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
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

LABEL_27:

  *a2 = v24;
  a2[2] = v25;
  v25 = 0;
  v24 = 0uLL;
LABEL_29:
  *&v32[0] = &v24;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](v32);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2590C80DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a21;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<ULWiFiHistogramDO>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiHistogramDO>>(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  ULWiFiHistogramDO::ULWiFiHistogramDO(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULWiFiHistogramDO>,ULWiFiHistogramDO*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(&v13);
  return v12;
}

void sub_2590C82BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ULDBUtils::fetchDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__28;
  v27 = __Block_byref_object_dispose__28;
  v28 = &unk_25929B3B7;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN9ULDBUtils16fetchDataObjectsI19ULWiFiMeasurementDO19ULWiFiMeasurementMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke;
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

void sub_2590C8598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULDBUtils::fetchAllAsDataObjectsWithLimit<ULWiFiMeasurementDO,ULWiFiMeasurementMO>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = MEMORY[0x277CCAC98];
  v7 = [objc_opt_class() defaultSortProperty];
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  ULDBUtils::fetchDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>(v5, 0, v9, a2, a3);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2590C8D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_61()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

__n128 __Block_byref_object_copy__28(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN9ULDBUtils16fetchDataObjectsI19ULWiFiMeasurementDO19ULWiFiMeasurementMOEENSt3__16vectorIT_NS3_9allocatorIS5_EEEEP7ULStoreP7NSArrayIP11NSPredicateEPSB_IP16NSSortDescriptorEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 32) sortDescriptors:*(a1 + 40) andLimit:*(a1 + 64)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>(v5, &v9);
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

void ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  std::vector<ULWiFiMeasurementDO>::reserve(__p, [v3 count]);
  v30 = a2;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v5)
  {
    v6 = *v34;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = v8;
        if (!v8)
        {
          v32 = 0;
          memset(v31, 0, sizeof(v31));
LABEL_28:
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>();
          }

          v23 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v9 entity];
            v25 = [v24 name];
            *buf = 68289283;
            v40 = 0;
            v41 = 2082;
            v42 = "";
            v43 = 2113;
            v44 = v25;
            _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to convert MO to DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::convertManagedObjectsToDataObjects<ULWiFiMeasurementDO,ULWiFiMeasurementMO>();
          }

          v26 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v26))
          {
            v27 = [v9 entity];
            v28 = [v27 name];
            *buf = 68289283;
            v40 = 0;
            v41 = 2082;
            v42 = "";
            v43 = 2113;
            v44 = v28;
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
        if ((v32 & 1) == 0)
        {
          goto LABEL_28;
        }

        v10 = __p[1];
        if (__p[1] >= v38)
        {
          v11 = (__p[1] - __p[0]) >> 5;
          if ((v11 + 1) >> 59)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v12 = (v38 - __p[0]) >> 4;
          if (v12 <= v11 + 1)
          {
            v12 = v11 + 1;
          }

          if (v38 - __p[0] >= 0x7FFFFFFFFFFFFFE0)
          {
            v13 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiMeasurementDO>>(__p, v13);
          }

          v14 = ULWiFiMeasurementDO::ULWiFiMeasurementDO(32 * v11, v31);
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
          v38 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          __p[1] = v22;
        }

        else
        {
          ULWiFiMeasurementDO::ULWiFiMeasurementDO(__p[1], v31);
          __p[1] = v10 + 32;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  *v30 = *__p;
  v30[2] = v38;
LABEL_38:

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2590C94C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<ULWiFiMeasurementDO>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiMeasurementDO>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2590C97FC(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F70](v3, v4);

  _Unwind_Resume(a1);
}

void sub_2590C9B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 + 31) < 0)
  {
    operator delete(*(v32 + 8));
  }

  ULConfigurationDO::~ULConfigurationDO(&a30);
  CLMicroLocationProto::Configuration::~Configuration(&a15);
  if (a28 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_62()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULConfigurationDO::~ULConfigurationDO(ULConfigurationDO *this)
{
  CLMicroLocationProto::Configuration::~Configuration((this + 56));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_2590C9E5C(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F70](v3, 0x1000C8077774924);

  _Unwind_Resume(a1);
}

void sub_2590CA110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CLMicroLocationProto::Measurement::~Measurement((v9 + 32));
  CLMicroLocationProto::Measurement::~Measurement(&a9);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_63()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CA4EC(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F70](v3, 0x1000C8077774924);

  _Unwind_Resume(a1);
}

void sub_2590CA9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ULRecordingEventDO a47)
{
  if (*(v47 + 47) < 0)
  {
    operator delete(*(v47 + 24));
  }

  ULRecordingEventDO::~ULRecordingEventDO(&a47);
  CLMicroLocationProto::RecordingEvent::~RecordingEvent(&a18);
  if (a42 == 1 && a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_64()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CACA4(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F70](v4, 0x1000C8077774924);

  _Unwind_Resume(a1);
}

void sub_2590CAF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v2 + 24));
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(va);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_65()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CB0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2590CB474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_66()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_67()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CBC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  if (a36 == 1 && a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_68()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_69()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CC2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_70()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CCA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, ULLabelDOAndObjectID *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, int a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_71()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590CD0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_72()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::optional<std::vector<float>>::operator=[abi:ne200100]<std::vector<float>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_73()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULMapLabelDO::~ULMapLabelDO(ULMapLabelDO *this)
{
  if (this[2].var2.var0.var0 == 1)
  {
    *&this[2].var1.var1 = -1;
  }

  if (SHIBYTE(this[2].var1.var0.var1.var0) < 0)
  {
    operator delete(*&this[2].var0.var0.var0);
  }

  if (this->var2.var1)
  {
    var0 = this->var2.var0.var1.var0;
    if (var0)
    {
      this->var2.var0.var1.var1 = var0;
      operator delete(var0);
    }
  }

  if (this->var1.var1)
  {
    v3 = this->var1.var0.var1.var0;
    if (v3)
    {
      this->var1.var0.var1.var1 = v3;
      operator delete(v3);
    }
  }
}

void sub_2590CEDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, ULModelDO a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  CLMicroLocationProto::Model::~Model(&a60);
  CLMicroLocationProto::Model::~Model(&a21);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x250]);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_74()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

CLMicroLocationProto::HomeSlamModel *std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<1ul,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>>(unsigned int *a1, CLMicroLocationProto::HomeSlamModel *this, CLMicroLocationProto::HomeSlamModel *a3)
{
  if (a1[52] == 1)
  {

    return CLMicroLocationProto::HomeSlamModel::Swap(this, a3);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(a1, a3);
    a1[52] = 1;
  }

  return result;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<2ul,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>(unsigned int *a1, CLMicroLocationProto::VMKModel *this, CLMicroLocationProto::VMKModel *a3)
{
  if (a1[52] == 2)
  {

    return CLMicroLocationProto::VMKModel::Swap(this, a3);
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(a1, a3);
    a1[52] = 2;
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<0ul,ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::Model>>(unsigned int *a1, CLMicroLocationProto::Model *this, CLMicroLocationProto::Model *a3)
{
  if (a1[52])
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(a1, a3);
    a1[52] = 0;
  }

  else
  {

    return CLMicroLocationProto::Model::Swap(this, a3);
  }

  return result;
}

void sub_2590CF524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(std::string *this, const std::string::value_type **a2)
{
  v3 = *a2;
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(this, *a2);
  }

  else
  {
    v4 = strlen(*a2);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&this->__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memmove(this, v3, v4);
    }

    this->__r_.__value_.__s.__data_[v5] = 0;
    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_2590CFA18(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F70](v4, 0x1000C8077774924);

  _Unwind_Resume(a1);
}

void sub_2590CFD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v29 + 31) < 0)
  {
    operator delete(*(v29 + 8));
  }

  ULRapportDO::~ULRapportDO(&a29);
  CLMicroLocationProto::RapportDevice::~RapportDevice(&a16);
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_75()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULRapportDO::~ULRapportDO(ULRapportDO *this)
{
  CLMicroLocationProto::RapportDevice::~RapportDevice((this + 32));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void sub_2590D0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24, uint64_t a25, char a26, void *a27, uint64_t a28, uint64_t a29, char a30, void *__pa, void *a32, uint64_t a33, char a34, void *a35, void *a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55, uint64_t a56, uint64_t a57, ULScanningEventDO *a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  if (a30 == 1)
  {
    *(v70 + 224) = &a27;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&a69);
  }

  if (a34 == 1 && __pa)
  {
    a32 = __pa;
    operator delete(__pa);
  }

  if (a38 == 1 && a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a42 == 1)
  {
    v72 = *(v70 + 32);
    if (v72)
    {
      *(v70 + 40) = v72;
      operator delete(v72);
    }
  }

  *(v70 + 224) = &a46;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&a69);
  if (a55 == 1)
  {
    *(v70 + 224) = &a49;
    std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&a69);
  }

  if (a66 == 1 && a65 < 0)
  {
    operator delete(*(v70 + 176));
  }

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_76()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

__n128 std::__optional_storage_base<std::vector<ULPhotoFeaturesDO>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<ULPhotoFeaturesDO>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      std::vector<ULPhotoFeaturesDO>::__vdeallocate(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_2590D12B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_77()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_78()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590D17E8(_Unwind_Exception *a1)
{
  MEMORY[0x259CA1F70](v4, 0x1000C8077774924);

  _Unwind_Resume(a1);
}

void sub_2590D1A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLMicroLocationProto::WifiHistogram::~WifiHistogram((v2 + 24));
  CLMicroLocationProto::WifiHistogram::~WifiHistogram(va);
  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_79()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void sub_2590D245C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590D2A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590D2B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2590D319C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590D3364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2590D3488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSAPathManager()
{
  if (SpaceAttributionLibrary_sOnce != -1)
  {
    initSAPathManager_cold_1();
  }

  result = objc_getClass("SAPathManager");
  classSAPathManager = result;
  getSAPathManagerClass[0] = SAPathManagerFunction;
  return result;
}

void *__SpaceAttributionLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpaceAttribution.framework/SpaceAttribution", 2);
  SpaceAttributionLibrary_sLib = result;
  return result;
}

Class initSAPathInfo()
{
  if (SpaceAttributionLibrary_sOnce != -1)
  {
    initSAPathManager_cold_1();
  }

  result = objc_getClass("SAPathInfo");
  classSAPathInfo = result;
  getSAPathInfoClass = SAPathInfoFunction;
  return result;
}

void sub_2590D45C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ULDatabase::ULDatabase(ULDatabase *this)
{
  *this = &unk_286A571B8;
  *(this + 1) = &unk_286A57338;
  *(this + 2) = &unk_286A573D8;
  *(this + 30) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(this + 30);
  *(this + 30) = v2;
}

void ULDatabase::~ULDatabase(ULDatabase *this)
{
  *this = &unk_286A571B8;
  *(this + 1) = &unk_286A57338;
  *(this + 2) = &unk_286A573D8;
  v2 = *(this + 3);
  if (v2)
  {
    [v2 disconnectFromStore];
    v3 = *(this + 3);
    *(this + 3) = 0;
  }
}

{
  ULDatabase::~ULDatabase(this);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toULDatabase::~ULDatabase(ULDatabase *this)
{
  ULDatabase::~ULDatabase((this - 8));
}

{
  ULDatabase::~ULDatabase((this - 16));
}

{
  ULDatabase::~ULDatabase((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULDatabase::~ULDatabase((this - 16));

  JUMPOUT(0x259CA1F90);
}

void ULDatabase::initDataStores(ULDatabase *this)
{
  v2 = [(ULStore *)[ULAssociatedStateStore alloc] initWithDbStore:this];
  v3 = *(this + 4);
  *(this + 4) = v2;

  v4 = [(ULStore *)[ULBluetoothIdentityStore alloc] initWithDbStore:this];
  v5 = *(this + 5);
  *(this + 5) = v4;

  v6 = [(ULStore *)[ULConfigurationStore alloc] initWithDbStore:this];
  v7 = *(this + 6);
  *(this + 6) = v6;

  v8 = [(ULStore *)[ULLabelStore alloc] initWithDbStore:this];
  v9 = *(this + 7);
  *(this + 7) = v8;

  v10 = [(ULStore *)[ULEventLogStore alloc] initWithDbStore:this];
  v11 = *(this + 8);
  *(this + 8) = v10;

  v12 = [(ULStore *)[ULLoiStore alloc] initWithDbStore:this];
  v13 = *(this + 9);
  *(this + 9) = v12;

  v14 = [(ULStore *)[ULMeasurementStore alloc] initWithDbStore:this];
  v15 = *(this + 10);
  *(this + 10) = v14;

  v16 = [(ULStore *)[ULModelStore alloc] initWithDbStore:this];
  v17 = *(this + 11);
  *(this + 11) = v16;

  v18 = [(ULStore *)[ULRapportStore alloc] initWithDbStore:this];
  v19 = *(this + 12);
  *(this + 12) = v18;

  v20 = [(ULStore *)[ULRecordingEventStore alloc] initWithDbStore:this];
  v21 = *(this + 13);
  *(this + 13) = v20;

  v22 = [(ULStore *)[ULServiceStore alloc] initWithDbStore:this];
  v23 = *(this + 14);
  *(this + 14) = v22;

  v24 = [(ULStore *)[ULCustomLoiStore alloc] initWithDbStore:this];
  v25 = *(this + 15);
  *(this + 15) = v24;

  v26 = [(ULStore *)[ULMigrationStore alloc] initWithDbStore:this];
  v27 = *(this + 16);
  *(this + 16) = v26;

  v28 = [[ULOdometryStore alloc] initWithDbStore:this];
  v29 = *(this + 17);
  *(this + 17) = v28;

  v30 = [(ULStore *)[ULHomeSlamAnalyticEventStore alloc] initWithDbStore:this];
  v31 = *(this + 18);
  *(this + 18) = v30;

  v32 = [(ULStore *)[ULScanningEventStore alloc] initWithDbStore:this];
  v33 = *(this + 19);
  *(this + 19) = v32;

  v34 = [(ULStore *)[ULMapLabelStore alloc] initWithDbStore:this];
  v35 = *(this + 20);
  *(this + 20) = v34;

  v36 = [(ULStore *)[ULWiFiHistogramStore alloc] initWithDbStore:this];
  v37 = *(this + 21);
  *(this + 21) = v36;

  v38 = [(ULStore *)[ULAnchorAppearanceMapStore alloc] initWithDbStore:this];
  v39 = *(this + 22);
  *(this + 22) = v38;

  v40 = [(ULStore *)[ULWiFiMeasurementStore alloc] initWithDbStore:this];
  v41 = *(this + 23);
  *(this + 23) = v40;

  v42 = [(ULStore *)[ULBLEMeasurementStore alloc] initWithDbStore:this];
  v43 = *(this + 24);
  *(this + 24) = v42;

  v44 = [(ULStore *)[ULUWBMeasurementStore alloc] initWithDbStore:this];
  v45 = *(this + 25);
  *(this + 25) = v44;

  v46 = [(ULStore *)[ULPhotoFeaturesStore alloc] initWithDbStore:this];
  v47 = *(this + 26);
  *(this + 26) = v46;

  v48 = [(ULStore *)[ULMagnetometerStore alloc] initWithDbStore:this];
  v49 = *(this + 27);
  *(this + 27) = v48;

  v50 = [(ULStore *)[ULScanningServiceAnalyticsStore alloc] initWithDbStore:this];
  v51 = *(this + 28);
  *(this + 28) = v50;
}

uint64_t ULDatabase::dropTables(ULDatabase *this)
{
  if ((*(*this + 272))(this))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "dropping MiLo database tables", v28, 2u);
    }

    v3 = [*(this + 9) deleteAllRecords];
    v4 = v3 & [*(this + 11) deleteAllRecords];
    v5 = [*(this + 19) deleteAllRecords];
    v6 = v4 & v5 & [*(this + 23) deleteAllRecords];
    v7 = [*(this + 24) deleteAllRecords];
    v8 = v7 & [*(this + 25) deleteAllRecords];
    v9 = v6 & v8 & [*(this + 7) deleteAllRecords];
    v10 = [*(this + 20) deleteAllRecords];
    v11 = v10 & [*(this + 15) deleteAllRecords];
    v12 = v11 & [*(this + 22) deleteAllRecords];
    v13 = v9 & v12 & [*(this + 21) deleteAllRecords];
    v14 = [*(this + 12) deleteAllRecords];
    v15 = v14 & [*(this + 4) deleteAllRecords];
    v16 = v15 & [*(this + 5) deleteAllRecords];
    v17 = v16 & [*(this + 8) deleteAllRecords];
    v18 = v13 & v17 & [*(this + 17) deleteAllRecords];
    v19 = [*(this + 18) deleteAllRecords];
    v20 = v19 & [*(this + 10) deleteAllRecords];
    v21 = v20 & [*(this + 13) deleteAllRecords];
    v22 = v21 & [*(this + 6) deleteAllRecords];
    v23 = v22 & [*(this + 26) deleteAllRecords];
    v24 = v18 & v23 & [*(this + 27) deleteAllRecords];
    return v24 & [*(this + 28) deleteAllRecords];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v26 = logObject_MicroLocation_Default;
    v27 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v27)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Attempt to drop tables without a backing database", buf, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t ULDatabase::deleteLSLLabelsOlderThan(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v7 = logObject_MicroLocation_Default;
    v8 = a2;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v8 / 1440.0;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Deleting similarity list labels older than %.3Lf days", &v11, 0xCu);
    }

    result = [*(a1 + 56) deleteSimilarityListLabelsOlderThan:a4 + v8 * -60.0 orNewerThan:a4 + 30.0];
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULDatabase::deleteDataOlderThan(id *a1, uint64_t a2, uint64_t a3, char a4)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 34))(a1))
  {
    v8 = cl::chrono::CFAbsoluteTimeClock::now();
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v9 = a2;
    v10 = v8 + a2 * -60.0;
    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v41 = v9 / 1440.0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "Deleting microlocation data older than %.3Lf days", buf, 0xCu);
    }

    v39 = [a1[9] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v38 = [a1[14] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v37 = [a1[11] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v36 = [a1[19] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v35 = [a1[23] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v34 = [a1[24] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v33 = [a1[25] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v32 = [a1[7] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v31 = ULDatabase::deleteLSLLabelsOlderThan(a1, a3, a4, v8);
    v30 = [a1[20] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v29 = [a1[15] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v28 = [a1[22] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v27 = [a1[21] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v26 = [a1[12] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v25 = [a1[4] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v12 = [a1[5] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v13 = [a1[8] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v14 = [a1[17] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v15 = [a1[18] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v16 = [a1[26] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v17 = [a1[27] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v18 = [a1[28] deleteRecordsOlderThan:v10 orNewerThan:v8 + 30.0];
    v19 = [a1[10] deleteAllRecords];
    v20 = [a1[13] deleteAllRecords];
    result = v39 & v38 & v37 & v36 & v35 & v34 & v33 & v32 & v31 & v30 & v29 & v28 & v27 & v26 & v25 & v12 & v13 & v14 & v15 & v16 & v17 & v18 & v19 & v20 & [a1[6] deleteAllRecords];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v22 = logObject_MicroLocation_Default;
    v23 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Attempt to deleteDataOlderThan without a backing database", buf, 2u);
      result = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULDatabase::deleteOrphanRecords(ULDatabase *this)
{
  v2 = [*(this + 19) deleteOrphanRecords];
  v3 = v2 & [*(this + 23) deleteOrphanRecords];
  v4 = [*(this + 24) deleteOrphanRecords];
  v5 = v3 & v4 & [*(this + 25) deleteOrphanRecords];
  v6 = [*(this + 11) deleteOrphanRecords];
  v7 = v6 & [*(this + 7) deleteOrphanRecords];
  v8 = v5 & v7 & [*(this + 20) deleteOrphanRecords];
  v9 = [*(this + 15) deleteOrphanRecords];
  v10 = v9 & [*(this + 4) deleteOrphanRecords];
  v11 = v10 & [*(this + 12) deleteOrphanRecords];
  v12 = v8 & v11 & [*(this + 22) deleteOrphanRecords];
  return v12 & [*(this + 21) deleteOrphanRecords];
}

uint64_t ULDatabase::initDb(ULDatabase *this)
{
  if (!*(this + 3))
  {
    v2 = objc_alloc_init(ULPersistenceManager);
    v3 = *(this + 3);
    *(this + 3) = v2;
  }

  return ULDatabase::connectToStore(this);
}

uint64_t ULDatabase::connectToStore(ULDatabase *this)
{
  v2 = [*(this + 3) connectToStore];
  if (v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Successfully connected to store", buf, 2u);
    }

    ULDatabase::initDataStores(this);
    ULDatabase::migrateToLatestModelVersionIfNecessary(this);
    ULDatabase::notifyClientsOnDatabaseValid(this);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "Failed to connect to store", v6, 2u);
    }
  }

  return v2;
}

uint64_t ULDatabase::migrateToLatestModelVersionIfNecessary(ULDatabase *this)
{
  v1 = [[ULPersistenceMigrator alloc] initWithDbStore:this andDbManagement:this + 8];
  v2 = [(ULPersistenceMigrator *)v1 migrateToLatestVersion];

  return v2;
}

uint64_t ULDatabase::notifyClientsOnDatabaseValid(ULDatabase *this)
{
  v15 = *MEMORY[0x277D85DE8];
  result = (*(*this + 264))(this);
  if (result)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Sending database valid notification to registered modules", buf, 2u);
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(this + 30);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * i) + 16))(*(*(&v9 + 1) + 8 * i));
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v5);
    }

    result = [*(this + 30) removeAllObjects];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULDatabase::initWithStoresDirectory(ULDatabase *this, NSURL *a2)
{
  v3 = a2;
  v4 = +[ULPersistenceManager defaultModelsDirectory];
  v5 = (*(*this + 304))(this, v4, v3, 1);

  return v5;
}

uint64_t ULDatabase::initWithModelsDirectoryAndStoresDirectory(ULDatabase *this, NSURL *a2, NSURL *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [[ULPersistenceManager alloc] initWithModelsDirectory:v7 storesDirectory:v8 useWal:a4];
  v10 = *(this + 3);
  *(this + 3) = v9;

  v11 = ULDatabase::connectToStore(this);
  return v11;
}

uint64_t ULDatabase::initWithModelsDirectoryStoresDirectoryAndModel(ULDatabase *this, NSURL *a2, NSURL *a3, NSManagedObjectModel *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [[ULPersistenceManager alloc] initWithModelsDirectory:v9 storesDirectory:v10 managedObjectModel:v11 useWal:a5];
  v13 = *(this + 3);
  *(this + 3) = v12;

  v14 = ULDatabase::connectToStore(this);
  return v14;
}

uint64_t ULDatabase::destroyStore(ULDatabase *this)
{
  [*(this + 17) flushStoreBuffer];
  v2 = *(this + 3);

  return [v2 destroyStore];
}

uint64_t non-virtual thunk toULDatabase::destroyStore(ULDatabase *this)
{
  [*(this + 16) flushStoreBuffer];
  v2 = *(this + 2);

  return [v2 destroyStore];
}

uint64_t ULDatabase::freeDatabaseSpace(ULDatabase *this)
{
  if ((*(*this + 272))(this))
  {
    v2 = [*(this + 9) deleteOldestRecordsIfFull];
    v3 = [*(this + 14) deleteOldestsServicesPerClientAboveMaxCount];
    v4 = *(this + 11);
    v5 = +[ULDefaultsSingleton shared];
    v6 = [v5 defaultsDictionary];

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumModelsToKeepForNonLSL"];
    v39 = v2;
    v8 = [v6 objectForKey:v7];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v8 unsignedIntValue];
    }

    else
    {
      v9 = [&unk_286A71D60 unsignedIntValue];
    }

    v13 = v9;

    v14 = +[ULDefaultsSingleton shared];
    v15 = [v14 defaultsDictionary];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumLSLModelsToKeep"];
    v17 = [v15 objectForKey:v16];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [v17 unsignedIntValue];
    }

    else
    {
      v18 = [&unk_286A71D48 unsignedIntValue];
    }

    v19 = v18;

    v20 = [v4 deleteUnneededModelsWithNumNonLslsModeltoKeep:v13 numLSLModelsToKeep:v19];
    v21 = v39 & v3 & v20 & [*(this + 11) deleteOldestRecordsIfFull];
    v22 = [*(this + 19) deleteOldestRecordsIfFull];
    v23 = v22 & [*(this + 23) deleteOldestRecordsIfFull];
    v24 = v21 & v23 & [*(this + 24) deleteOldestRecordsIfFull];
    v25 = [*(this + 25) deleteOldestRecordsIfFull];
    v26 = v25 & [*(this + 7) deleteOldestRecordsIfFull];
    v27 = v26 & [*(this + 20) deleteOldestRecordsIfFull];
    v28 = v24 & v27 & [*(this + 15) deleteOldestRecordsIfFull];
    v29 = [*(this + 22) deleteOldestRecordsIfFull];
    v30 = v29 & [*(this + 21) deleteOldestRecordsIfFull];
    v31 = v30 & [*(this + 12) deleteOldestRecordsIfFull];
    v32 = v31 & [*(this + 4) deleteOldestRecordsIfFull];
    v33 = v28 & v32 & [*(this + 5) deleteOldestRecordsIfFull];
    v34 = [*(this + 8) deleteOldestRecordsIfFull];
    v35 = v34 & [*(this + 17) deleteOldestRecordsIfFull];
    v36 = v35 & [*(this + 18) deleteOldestRecordsIfFull];
    v37 = v36 & [*(this + 26) deleteOldestRecordsIfFull];
    v38 = v37 & [*(this + 27) deleteOldestRecordsIfFull];
    return v33 & v38 & [*(this + 28) deleteOldestRecordsIfFull];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v10 = logObject_MicroLocation_Default;
    v11 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Attempt to freeDatabaseSpace() without a backing database", buf, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t ULDatabase::isDatabaseValid(ULDatabase *this)
{
  v2 = (*(*this + 320))(this, 0) - 3;
  LODWORD(result) = [*(this + 3) isStoreConnected];
  if (v2 < 0xFFFFFFFE)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

id ULDatabase::exportDatabase(ULDatabase *this)
{
  v84[1] = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULDatabase::dropTables();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Exporting milo database", buf, 2u);
  }

  if ((*(*this + 272))(this))
  {
    [*(this + 17) flushStoreBuffer];
    v60 = [MEMORY[0x277CCAA00] userLibraryDirectoryPath];
    v64 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v60 stringByAppendingPathComponent:@"/Logs/milod/miloexport"];
    v83 = *MEMORY[0x277CCA180];
    v84[0] = &unk_286A71D18;
    v58 = v3;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    if ([v64 fileExistsAtPath:v3 isDirectory:0])
    {
      v4 = 0;
    }

    else
    {
      v76 = 0;
      v7 = [v64 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v63 error:&v76];
      v8 = v76;
      v9 = v8;
      if ((v7 & 1) == 0)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULDatabase::exportDatabase();
        }

        v51 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v79 = v9;
          _os_log_impl(&dword_258FE9000, v51, OS_LOG_TYPE_ERROR, "failed to create directory for export with error: %@", buf, 0xCu);
        }

        v6 = 0;
LABEL_62:

        goto LABEL_63;
      }

      v4 = v8;
      v3 = v58;
    }

    v10 = MEMORY[0x277CBEBC0];
    v11 = MEMORY[0x277CCACA8];
    v12 = +[ULPersistenceManager defaultLocalStoreFilename];
    v13 = [v11 stringWithFormat:@"%@/%@", v3, v12];
    v61 = [v10 fileURLWithPath:v13 isDirectory:0];

    v14 = MEMORY[0x277CBEBC0];
    v15 = [v61 path];
    v16 = [v15 stringByAppendingString:@"-wal"];
    v57 = [v14 fileURLWithPath:v16 isDirectory:0];

    v17 = MEMORY[0x277CBEBC0];
    v18 = [v61 path];
    v19 = [v18 stringByAppendingString:@"-shm"];
    v59 = [v17 fileURLWithPath:v19 isDirectory:0];

    [MEMORY[0x277CBEA60] arrayWithObjects:{v61, v57, v59, 0}];
    v75 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v72 = 0u;
    v20 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v20)
    {
      v21 = *v73;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v72 + 1) + 8 * i);
          v24 = [v23 path];
          v25 = [v64 fileExistsAtPath:v24];

          if (v25)
          {
            v26 = [v23 path];
            v71 = v4;
            v27 = [v64 removeItemAtPath:v26 error:&v71];
            v9 = v71;

            if ((v27 & 1) == 0)
            {
              if (onceToken_MicroLocation_Default != -1)
              {
                ULDatabase::exportDatabase();
              }

              v49 = logObject_MicroLocation_Default;
              if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v79 = v23;
                v80 = 2112;
                v81 = v9;
                _os_log_impl(&dword_258FE9000, v49, OS_LOG_TYPE_ERROR, "failed to remove existing exported file: %@ with error: %@", buf, 0x16u);
              }

              v6 = 0;
              v50 = obj;
              goto LABEL_61;
            }

            v4 = v9;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v28 = [*(this + 3) persistenceStore];
    v55 = [v28 storeDescription];

    v29 = objc_alloc(MEMORY[0x277CBE4D8]);
    v30 = [*(this + 3) managedObjectModel];
    v56 = [v29 initWithManagedObjectModel:v30];

    v31 = [v55 options];
    v32 = [v55 URL];
    v33 = [v55 options];
    v34 = [v55 type];
    v70 = v4;
    v35 = [v56 replacePersistentStoreAtURL:v61 destinationOptions:v31 withPersistentStoreFromURL:v32 sourceOptions:v33 storeType:v34 error:&v70];
    v9 = v70;

    if (v35)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULDatabase::exportDatabase();
      }

      v36 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v61 path];
        *buf = 138412290;
        v79 = v37;
        _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_DEFAULT, "Successfully exported milo database to: %@", buf, 0xCu);
      }

      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v38 = obj;
      v39 = [v38 countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (v39)
      {
        v40 = *v67;
        do
        {
          v41 = 0;
          do
          {
            if (*v67 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v66 + 1) + 8 * v41);
            v43 = [v42 path];
            v44 = [v64 fileExistsAtPath:v43];

            if (v44)
            {
              v45 = [v42 path];
              v65 = v9;
              v46 = [v64 setAttributes:v63 ofItemAtPath:v45 error:&v65];
              v47 = v65;

              v9 = v47;
              if ((v46 & 1) == 0)
              {
                if (onceToken_MicroLocation_Default != -1)
                {
                  ULDatabase::exportDatabase();
                }

                v48 = logObject_MicroLocation_Default;
                if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v79 = v42;
                  v80 = 2112;
                  v81 = v47;
                  _os_log_impl(&dword_258FE9000, v48, OS_LOG_TYPE_ERROR, "failed to change access attributes for URL: %@ with error: %@", buf, 0x16u);
                }
              }

              [v6 addObject:v42];
            }

            ++v41;
          }

          while (v39 != v41);
          v39 = [v38 countByEnumeratingWithState:&v66 objects:v77 count:16];
        }

        while (v39);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULDatabase::exportDatabase();
      }

      v52 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v79 = v9;
        _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_ERROR, "failed to export database with error: %@", buf, 0xCu);
      }

      v6 = 0;
    }

    v50 = v55;
LABEL_61:

    goto LABEL_62;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULDatabase::exportDatabase();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Attempt to exportDatabase() while not connected to database", buf, 2u);
  }

  v6 = 0;
LABEL_63:
  v53 = *MEMORY[0x277D85DE8];

  return v6;
}

void ULDatabaseMigrationStatusAsString(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        *(a2 + 23) = 18;
        *(a2 + 16) = 29295;
        *a2 = *"CompletedWithError";
        return;
      }

      if (a1 == 4)
      {
        *(a2 + 23) = 11;
        *(a2 + 7) = 1263494245;
        v2 = *"CompletedOK";
LABEL_13:
        *a2 = v2;
        return;
      }

      goto LABEL_15;
    }

    *(a2 + 23) = 7;
    *a2 = 1684956496;
    v3 = 1735289188;
LABEL_10:
    *(a2 + 3) = v3;
    return;
  }

  if (!a1)
  {
    *(a2 + 23) = 8;
    v2 = 0x64656C6261736944;
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    *(a2 + 23) = 7;
    *a2 = 1852534357;
    v3 = 1853321070;
    goto LABEL_10;
  }

LABEL_15:
  if (onceToken_MicroLocation_Default != -1)
  {
    ULDatabase::dropTables();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "migrationStatus value not handled in conversion to string", v5, 2u);
  }
}

uint64_t ULDatabase::checkMigrationStatus(ULDatabase *this)
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableDataMigration"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v7 = v6;

  if ((v7 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v8 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(__p) = 0;
    v9 = "Migration from locationd disabled in settings";
    goto LABEL_15;
  }

  if ([MEMORY[0x277D28868] isMac])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v8 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(__p) = 0;
    v9 = "Migration is disabled on Macs";
LABEL_15:
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, v9, &__p, 2u);
    return 0;
  }

  if ((*(*this + 272))(this))
  {
    v12 = *(this + 16);
    if (v12)
    {
      [v12 fetchAllRecordsWithLimit:0];
      v13 = __p;
      if (__p == v19)
      {
        v10 = 2;
      }

      else
      {
        v14 = __p;
        while (v14[2] != 2)
        {
          v14 += 4;
          if (v14 == v19)
          {
            goto LABEL_34;
          }
        }

        if (v14 != v19)
        {
          v10 = 4;
          goto LABEL_48;
        }

LABEL_34:
        v16 = __p;
        while (v16[2] != 1)
        {
          v16 += 4;
          if (v16 == v19)
          {
            goto LABEL_40;
          }
        }

        if (v16 != v19)
        {
          v10 = 3;
          goto LABEL_48;
        }

LABEL_40:
        v17 = 0;
        do
        {
          if (v13[2] == 3)
          {
            ++v17;
          }

          v13 += 4;
        }

        while (v13 != v19);
        if (v17 < ULSettings::get<ULSettings::DataMigrationMaxAttempts>())
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }

        v13 = __p;
      }

LABEL_48:
      if (v13)
      {
        v19 = v13;
        operator delete(v13);
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDatabase::dropTables();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "failed to check migration status: local milo database is not connected", &__p, 2u);
    }

    return 1;
  }

  return v10;
}

void sub_2590D7938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ULSettings::get<ULSettings::DataMigrationMaxAttempts>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDataMigrationMaxAttempts"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A71D30 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

void ULDatabase::registerDatabaseValidCallback(void *a1, void *a2)
{
  aBlock = a2;
  if ((*(*a1 + 264))(a1))
  {
    aBlock[2]();
  }

  else
  {
    v3 = a1[30];
    v4 = _Block_copy(aBlock);
    [v3 addObject:v4];
  }
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_80()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

id ULDBUtils::NSStringArrayFromBoostUUIDs(uint64_t *a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:(a1[1] - *a1) >> 4];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v3];
      v6 = [v5 UUIDString];
      [v2 addObject:v6];

      v3 += 16;
    }

    while (v3 != v4);
  }

  return v2;
}

void ULDBUtils::boostUUIDsFromNSStringArray(void *a1@<X0>, void *a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  v19 = a1;
  std::vector<ULScanningServiceAnalyticsDO>::reserve(__p, [v19 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v19;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v4)
  {
    v5 = *v22;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (!v7)
        {
          v27 = 0uLL;
          v28 = 0;
LABEL_24:
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::boostUUIDsFromNSStringArray();
          }

          v17 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "Failed to convert NSUUID to boost UUID", buf, 2u);
          }

          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_30;
        }

        [v7 boostUUID];
        if ((v28 & 1) == 0)
        {
          goto LABEL_24;
        }

        v8 = __p[1];
        if (__p[1] >= v26)
        {
          v10 = (__p[1] - __p[0]) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v12 = v26 - __p[0];
          if ((v26 - __p[0]) >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(__p, v13);
          }

          v14 = (16 * v10);
          *v14 = v27;
          v9 = (16 * v10 + 16);
          v15 = (16 * v10 - (__p[1] - __p[0]));
          memcpy(v14 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v16 = __p[0];
          __p[0] = v15;
          __p[1] = v9;
          v26 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *__p[1] = v27;
          v9 = v8 + 16;
        }

        __p[1] = v9;
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  *a2 = *__p;
  a2[2] = v26;
LABEL_30:

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2590D7FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ULDBUtils::eventTypesToNSArray(unsigned int **a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1[1] - *a1];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  return v2;
}

id ULDBUtils::getPropertyAsArray(ULDBUtils *this, NSArray *a2, NSString *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = a2;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[ULDBUtils count](v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [(ULDBUtils *)v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:v5];
        v13 = v12 == 0;

        if (v13)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDBUtils::boostUUIDsFromNSStringArray();
          }

          v14 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = v5;
            v16 = [(NSArray *)v5 UTF8String];
            *buf = 136315138;
            v24 = v16;
            _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "got nil value in dict array for property %s", buf, 0xCu);
          }
        }

        else
        {
          v14 = [v11 objectForKeyedSubscript:v5];
          [v6 addObject:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(ULDBUtils *)v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_81()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULPowerLog::logMetrics(ULPowerLog *this, NSString *a2, NSDictionary *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = a2;
  if (+[ULPowerLogBridge ULPowerLogEnabled])
  {
    v6 = [@"MiLo" stringByAppendingString:v4];
    [ULPowerLogBridge ULPowerLogTimeInsensitive:v5 event:v6];

    if (onceToken_MicroLocation_Default != -1)
    {
      ULPowerLog::logMetrics();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      v8 = "Wrote microlocation metrics to power log: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_258FE9000, v9, v10, v8, &v14, v11);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULPowerLog::logMetrics();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      v8 = "PowerLog is not enabled so not writing microlocation metrics";
      v9 = v12;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 2;
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2590D84FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id ULPowerLog::buildPowerLogMetrics(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = [MEMORY[0x277CCACA8] stringWithUTF8String:"TriggerType"];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v26[0] = v24;
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NumLocalizations"];
  v25[1] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:a2 == 1];
  v26[1] = v22;
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NumRecordings"];
  v25[2] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a2 == 0];
  v26[2] = v11;
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"WiFiScanDuration"];
  v25[3] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v26[3] = v13;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BTScanDuration"];
  v25[4] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v26[4] = v15;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BleActiveScanRate"];
  v25[5] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v26[5] = v17;
  v18 = v25[0];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_82()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationProto::protobuf_ShutdownFile_microlocation_2eproto(CLMicroLocationProto *this)
{
  if (CLMicroLocationProto::BleLeechedBeacons::default_instance_)
  {
    (*(*CLMicroLocationProto::BleLeechedBeacons::default_instance_ + 8))(CLMicroLocationProto::BleLeechedBeacons::default_instance_);
  }

  if (CLMicroLocationProto::WiFiRssi::default_instance_)
  {
    (*(*CLMicroLocationProto::WiFiRssi::default_instance_ + 8))(CLMicroLocationProto::WiFiRssi::default_instance_);
  }

  if (CLMicroLocationProto::Direction::default_instance_)
  {
    (*(*CLMicroLocationProto::Direction::default_instance_ + 8))(CLMicroLocationProto::Direction::default_instance_);
  }

  if (CLMicroLocationProto::UwbRange::default_instance_)
  {
    (*(*CLMicroLocationProto::UwbRange::default_instance_ + 8))(CLMicroLocationProto::UwbRange::default_instance_);
  }

  if (CLMicroLocationProto::WiFiRange::default_instance_)
  {
    (*(*CLMicroLocationProto::WiFiRange::default_instance_ + 8))(CLMicroLocationProto::WiFiRange::default_instance_);
  }

  if (CLMicroLocationProto::ATVAirplayBluetoothRssi::default_instance_)
  {
    (*(*CLMicroLocationProto::ATVAirplayBluetoothRssi::default_instance_ + 8))(CLMicroLocationProto::ATVAirplayBluetoothRssi::default_instance_);
  }

  if (CLMicroLocationProto::HomeKitBluetoothRssi::default_instance_)
  {
    (*(*CLMicroLocationProto::HomeKitBluetoothRssi::default_instance_ + 8))(CLMicroLocationProto::HomeKitBluetoothRssi::default_instance_);
  }

  if (CLMicroLocationProto::Measurement::default_instance_)
  {
    (*(*CLMicroLocationProto::Measurement::default_instance_ + 8))(CLMicroLocationProto::Measurement::default_instance_);
  }

  if (CLMicroLocationProto::DeviceId::default_instance_)
  {
    (*(*CLMicroLocationProto::DeviceId::default_instance_ + 8))(CLMicroLocationProto::DeviceId::default_instance_);
  }

  if (CLMicroLocationProto::FingerprintMeasurement::default_instance_)
  {
    (*(*CLMicroLocationProto::FingerprintMeasurement::default_instance_ + 8))(CLMicroLocationProto::FingerprintMeasurement::default_instance_);
  }

  if (CLMicroLocationProto::PhotoFeatures::default_instance_)
  {
    (*(*CLMicroLocationProto::PhotoFeatures::default_instance_ + 8))(CLMicroLocationProto::PhotoFeatures::default_instance_);
  }

  if (CLMicroLocationProto::Fingerprint::default_instance_)
  {
    (*(*CLMicroLocationProto::Fingerprint::default_instance_ + 8))(CLMicroLocationProto::Fingerprint::default_instance_);
  }

  if (CLMicroLocationProto::ClusterRecordings::default_instance_)
  {
    (*(*CLMicroLocationProto::ClusterRecordings::default_instance_ + 8))(CLMicroLocationProto::ClusterRecordings::default_instance_);
  }

  if (CLMicroLocationProto::AnchorMetadata::default_instance_)
  {
    (*(*CLMicroLocationProto::AnchorMetadata::default_instance_ + 8))(CLMicroLocationProto::AnchorMetadata::default_instance_);
  }

  if (CLMicroLocationProto::AnchorAppearance::default_instance_)
  {
    (*(*CLMicroLocationProto::AnchorAppearance::default_instance_ + 8))(CLMicroLocationProto::AnchorAppearance::default_instance_);
  }

  if (CLMicroLocationProto::anchorAppearancesVector::default_instance_)
  {
    (*(*CLMicroLocationProto::anchorAppearancesVector::default_instance_ + 8))(CLMicroLocationProto::anchorAppearancesVector::default_instance_);
  }

  if (CLMicroLocationProto::AnchorValueStatistics::default_instance_)
  {
    (*(*CLMicroLocationProto::AnchorValueStatistics::default_instance_ + 8))(CLMicroLocationProto::AnchorValueStatistics::default_instance_);
  }

  if (CLMicroLocationProto::ClusterAnchorValueStatistics::default_instance_)
  {
    (*(*CLMicroLocationProto::ClusterAnchorValueStatistics::default_instance_ + 8))(CLMicroLocationProto::ClusterAnchorValueStatistics::default_instance_);
  }

  if (CLMicroLocationProto::ClusterAnchorValueStatisticsVector::default_instance_)
  {
    (*(*CLMicroLocationProto::ClusterAnchorValueStatisticsVector::default_instance_ + 8))(CLMicroLocationProto::ClusterAnchorValueStatisticsVector::default_instance_);
  }

  if (CLMicroLocationProto::LocationSimilarityListElement::default_instance_)
  {
    (*(*CLMicroLocationProto::LocationSimilarityListElement::default_instance_ + 8))(CLMicroLocationProto::LocationSimilarityListElement::default_instance_);
  }

  if (CLMicroLocationProto::LocationSimilarityListData::default_instance_)
  {
    (*(*CLMicroLocationProto::LocationSimilarityListData::default_instance_ + 8))(CLMicroLocationProto::LocationSimilarityListData::default_instance_);
  }

  if (CLMicroLocationProto::BlueAtlasData::default_instance_)
  {
    (*(*CLMicroLocationProto::BlueAtlasData::default_instance_ + 8))(CLMicroLocationProto::BlueAtlasData::default_instance_);
  }

  if (CLMicroLocationProto::Model::default_instance_)
  {
    (*(*CLMicroLocationProto::Model::default_instance_ + 8))(CLMicroLocationProto::Model::default_instance_);
  }

  if (CLMicroLocationProto::ULPointLocation::default_instance_)
  {
    (*(*CLMicroLocationProto::ULPointLocation::default_instance_ + 8))(CLMicroLocationProto::ULPointLocation::default_instance_);
  }

  if (CLMicroLocationProto::ULPointMovement::default_instance_)
  {
    (*(*CLMicroLocationProto::ULPointMovement::default_instance_ + 8))(CLMicroLocationProto::ULPointMovement::default_instance_);
  }

  if (CLMicroLocationProto::ULTrajectoryPoint::default_instance_)
  {
    (*(*CLMicroLocationProto::ULTrajectoryPoint::default_instance_ + 8))(CLMicroLocationProto::ULTrajectoryPoint::default_instance_);
  }

  if (CLMicroLocationProto::ULROIPoint::default_instance_)
  {
    (*(*CLMicroLocationProto::ULROIPoint::default_instance_ + 8))(CLMicroLocationProto::ULROIPoint::default_instance_);
  }

  if (CLMicroLocationProto::ULROI::default_instance_)
  {
    (*(*CLMicroLocationProto::ULROI::default_instance_ + 8))(CLMicroLocationProto::ULROI::default_instance_);
  }

  if (CLMicroLocationProto::ULPositionedImage::default_instance_)
  {
    (*(*CLMicroLocationProto::ULPositionedImage::default_instance_ + 8))(CLMicroLocationProto::ULPositionedImage::default_instance_);
  }

  if (CLMicroLocationProto::ModelMetadata::default_instance_)
  {
    (*(*CLMicroLocationProto::ModelMetadata::default_instance_ + 8))(CLMicroLocationProto::ModelMetadata::default_instance_);
  }

  if (CLMicroLocationProto::HomeSlamModel::default_instance_)
  {
    (*(*CLMicroLocationProto::HomeSlamModel::default_instance_ + 8))(CLMicroLocationProto::HomeSlamModel::default_instance_);
  }

  if (CLMicroLocationProto::VMKModel::default_instance_)
  {
    (*(*CLMicroLocationProto::VMKModel::default_instance_ + 8))(CLMicroLocationProto::VMKModel::default_instance_);
  }

  if (CLMicroLocationProto::BundleIdFeatures::default_instance_)
  {
    (*(*CLMicroLocationProto::BundleIdFeatures::default_instance_ + 8))(CLMicroLocationProto::BundleIdFeatures::default_instance_);
  }

  if (CLMicroLocationProto::ReceivedEventAction::default_instance_)
  {
    (*(*CLMicroLocationProto::ReceivedEventAction::default_instance_ + 8))(CLMicroLocationProto::ReceivedEventAction::default_instance_);
  }

  if (CLMicroLocationProto::RecordingRequest::default_instance_)
  {
    (*(*CLMicroLocationProto::RecordingRequest::default_instance_ + 8))(CLMicroLocationProto::RecordingRequest::default_instance_);
  }

  if (CLMicroLocationProto::AppLaunch::default_instance_)
  {
    (*(*CLMicroLocationProto::AppLaunch::default_instance_ + 8))(CLMicroLocationProto::AppLaunch::default_instance_);
  }

  if (CLMicroLocationProto::BacklightOn::default_instance_)
  {
    (*(*CLMicroLocationProto::BacklightOn::default_instance_ + 8))(CLMicroLocationProto::BacklightOn::default_instance_);
  }

  if (CLMicroLocationProto::BatteryChargerConnected::default_instance_)
  {
    (*(*CLMicroLocationProto::BatteryChargerConnected::default_instance_ + 8))(CLMicroLocationProto::BatteryChargerConnected::default_instance_);
  }

  if (CLMicroLocationProto::TruthLabelDonation::default_instance_)
  {
    (*(*CLMicroLocationProto::TruthLabelDonation::default_instance_ + 8))(CLMicroLocationProto::TruthLabelDonation::default_instance_);
  }

  if (CLMicroLocationProto::ForcedRecording::default_instance_)
  {
    (*(*CLMicroLocationProto::ForcedRecording::default_instance_ + 8))(CLMicroLocationProto::ForcedRecording::default_instance_);
  }

  if (CLMicroLocationProto::HomeKitAccessory::default_instance_)
  {
    (*(*CLMicroLocationProto::HomeKitAccessory::default_instance_ + 8))(CLMicroLocationProto::HomeKitAccessory::default_instance_);
  }

  if (CLMicroLocationProto::HomeKitScene::default_instance_)
  {
    (*(*CLMicroLocationProto::HomeKitScene::default_instance_ + 8))(CLMicroLocationProto::HomeKitScene::default_instance_);
  }

  if (CLMicroLocationProto::NowPlayingOutputDevice::default_instance_)
  {
    (*(*CLMicroLocationProto::NowPlayingOutputDevice::default_instance_ + 8))(CLMicroLocationProto::NowPlayingOutputDevice::default_instance_);
  }

  if (CLMicroLocationProto::NowPlaying::default_instance_)
  {
    (*(*CLMicroLocationProto::NowPlaying::default_instance_ + 8))(CLMicroLocationProto::NowPlaying::default_instance_);
  }

  if (CLMicroLocationProto::LearnModel::default_instance_)
  {
    (*(*CLMicroLocationProto::LearnModel::default_instance_ + 8))(CLMicroLocationProto::LearnModel::default_instance_);
  }

  if (CLMicroLocationProto::LearnCompleted::default_instance_)
  {
    (*(*CLMicroLocationProto::LearnCompleted::default_instance_ + 8))(CLMicroLocationProto::LearnCompleted::default_instance_);
  }

  if (CLMicroLocationProto::SensorsScanComplete::default_instance_)
  {
    (*(*CLMicroLocationProto::SensorsScanComplete::default_instance_ + 8))(CLMicroLocationProto::SensorsScanComplete::default_instance_);
  }

  if (CLMicroLocationProto::StartSpectating::default_instance_)
  {
    (*(*CLMicroLocationProto::StartSpectating::default_instance_ + 8))(CLMicroLocationProto::StartSpectating::default_instance_);
  }

  if (CLMicroLocationProto::StopSpectating::default_instance_)
  {
    (*(*CLMicroLocationProto::StopSpectating::default_instance_ + 8))(CLMicroLocationProto::StopSpectating::default_instance_);
  }

  if (CLMicroLocationProto::ServiceCreate::default_instance_)
  {
    (*(*CLMicroLocationProto::ServiceCreate::default_instance_ + 8))(CLMicroLocationProto::ServiceCreate::default_instance_);
  }

  if (CLMicroLocationProto::ServiceDelete::default_instance_)
  {
    (*(*CLMicroLocationProto::ServiceDelete::default_instance_ + 8))(CLMicroLocationProto::ServiceDelete::default_instance_);
  }

  if (CLMicroLocationProto::ServiceConnect::default_instance_)
  {
    (*(*CLMicroLocationProto::ServiceConnect::default_instance_ + 8))(CLMicroLocationProto::ServiceConnect::default_instance_);
  }

  if (CLMicroLocationProto::ServiceDisconnect::default_instance_)
  {
    (*(*CLMicroLocationProto::ServiceDisconnect::default_instance_ + 8))(CLMicroLocationProto::ServiceDisconnect::default_instance_);
  }

  if (CLMicroLocationProto::ServiceStartUpdating::default_instance_)
  {
    (*(*CLMicroLocationProto::ServiceStartUpdating::default_instance_ + 8))(CLMicroLocationProto::ServiceStartUpdating::default_instance_);
  }

  if (CLMicroLocationProto::ServiceStopUpdating::default_instance_)
  {
    (*(*CLMicroLocationProto::ServiceStopUpdating::default_instance_ + 8))(CLMicroLocationProto::ServiceStopUpdating::default_instance_);
  }

  if (CLMicroLocationProto::RequestObservation::default_instance_)
  {
    (*(*CLMicroLocationProto::RequestObservation::default_instance_ + 8))(CLMicroLocationProto::RequestObservation::default_instance_);
  }

  if (CLMicroLocationProto::RequestPrediction::default_instance_)
  {
    (*(*CLMicroLocationProto::RequestPrediction::default_instance_ + 8))(CLMicroLocationProto::RequestPrediction::default_instance_);
  }

  if (CLMicroLocationProto::MiloInit::default_instance_)
  {
    (*(*CLMicroLocationProto::MiloInit::default_instance_ + 8))(CLMicroLocationProto::MiloInit::default_instance_);
  }

  if (CLMicroLocationProto::MotionEvent::default_instance_)
  {
    (*(*CLMicroLocationProto::MotionEvent::default_instance_ + 8))(CLMicroLocationProto::MotionEvent::default_instance_);
  }

  if (CLMicroLocationProto::LegacyThrottle::default_instance_)
  {
    (*(*CLMicroLocationProto::LegacyThrottle::default_instance_ + 8))(CLMicroLocationProto::LegacyThrottle::default_instance_);
  }

  if (CLMicroLocationProto::RetrievedLoi::default_instance_)
  {
    (*(*CLMicroLocationProto::RetrievedLoi::default_instance_ + 8))(CLMicroLocationProto::RetrievedLoi::default_instance_);
  }

  if (CLMicroLocationProto::ReceivedEvent::default_instance_)
  {
    (*(*CLMicroLocationProto::ReceivedEvent::default_instance_ + 8))(CLMicroLocationProto::ReceivedEvent::default_instance_);
  }

  if (CLMicroLocationProto::AssociatedAccessPointInfo::default_instance_)
  {
    (*(*CLMicroLocationProto::AssociatedAccessPointInfo::default_instance_ + 8))(CLMicroLocationProto::AssociatedAccessPointInfo::default_instance_);
  }

  if (CLMicroLocationProto::RecordingEvent::default_instance_)
  {
    (*(*CLMicroLocationProto::RecordingEvent::default_instance_ + 8))(CLMicroLocationProto::RecordingEvent::default_instance_);
  }

  if (CLMicroLocationProto::TriggerEvent::default_instance_)
  {
    (*(*CLMicroLocationProto::TriggerEvent::default_instance_ + 8))(CLMicroLocationProto::TriggerEvent::default_instance_);
  }

  if (CLMicroLocationProto::LegacyClientStatusUpdate::default_instance_)
  {
    (*(*CLMicroLocationProto::LegacyClientStatusUpdate::default_instance_ + 8))(CLMicroLocationProto::LegacyClientStatusUpdate::default_instance_);
  }

  if (CLMicroLocationProto::SpectatingMotionUpdate::default_instance_)
  {
    (*(*CLMicroLocationProto::SpectatingMotionUpdate::default_instance_ + 8))(CLMicroLocationProto::SpectatingMotionUpdate::default_instance_);
  }

  if (CLMicroLocationProto::EnabledStateUpdate::default_instance_)
  {
    (*(*CLMicroLocationProto::EnabledStateUpdate::default_instance_ + 8))(CLMicroLocationProto::EnabledStateUpdate::default_instance_);
  }

  if (CLMicroLocationProto::ScreenStateUpdate::default_instance_)
  {
    (*(*CLMicroLocationProto::ScreenStateUpdate::default_instance_ + 8))(CLMicroLocationProto::ScreenStateUpdate::default_instance_);
  }

  if (CLMicroLocationProto::CloudBackupExport::default_instance_)
  {
    (*(*CLMicroLocationProto::CloudBackupExport::default_instance_ + 8))(CLMicroLocationProto::CloudBackupExport::default_instance_);
  }

  if (CLMicroLocationProto::CloudBackupImport::default_instance_)
  {
    (*(*CLMicroLocationProto::CloudBackupImport::default_instance_ + 8))(CLMicroLocationProto::CloudBackupImport::default_instance_);
  }

  if (CLMicroLocationProto::DataMigration::default_instance_)
  {
    (*(*CLMicroLocationProto::DataMigration::default_instance_ + 8))(CLMicroLocationProto::DataMigration::default_instance_);
  }

  if (CLMicroLocationProto::ChannelAndCount::default_instance_)
  {
    (*(*CLMicroLocationProto::ChannelAndCount::default_instance_ + 8))(CLMicroLocationProto::ChannelAndCount::default_instance_);
  }

  if (CLMicroLocationProto::WifiHistogram::default_instance_)
  {
    (*(*CLMicroLocationProto::WifiHistogram::default_instance_ + 8))(CLMicroLocationProto::WifiHistogram::default_instance_);
  }

  if (CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_)
  {
    (*(*CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_ + 8))(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance_);
  }

  if (CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_)
  {
    (*(*CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_ + 8))(CLMicroLocationProto::AnchorValueStatisticsConfiguration::default_instance_);
  }

  if (CLMicroLocationProto::Configuration::default_instance_)
  {
    (*(*CLMicroLocationProto::Configuration::default_instance_ + 8))(CLMicroLocationProto::Configuration::default_instance_);
  }

  if (CLMicroLocationProto::RapportDevice::default_instance_)
  {
    (*(*CLMicroLocationProto::RapportDevice::default_instance_ + 8))(CLMicroLocationProto::RapportDevice::default_instance_);
  }

  result = CLMicroLocationProto::ULLabelDataWiFi::default_instance_;
  if (CLMicroLocationProto::ULLabelDataWiFi::default_instance_)
  {
    v2 = *(*CLMicroLocationProto::ULLabelDataWiFi::default_instance_ + 8);

    return v2();
  }

  return result;
}

double CLMicroLocationProto::Measurement::Measurement(CLMicroLocationProto::Measurement *this)
{
  *this = &unk_286A57828;
  *(this + 8) = 1;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void *CLMicroLocationProto::DeviceId::DeviceId(void *this)
{
  *this = &unk_286A578A0;
  this[1] = 0;
  this[2] = MEMORY[0x277D82C30];
  this[3] = 0;
  return this;
}

double CLMicroLocationProto::FingerprintMeasurement::FingerprintMeasurement(CLMicroLocationProto::FingerprintMeasurement *this, __n128 a2)
{
  a2.n128_u64[0] = 0;
  *this = &unk_286A57918;
  *(this + 1) = 0;
  *(this + 2) = 1;
  *(this + 24) = a2;
  return a2.n128_f64[0];
}

double CLMicroLocationProto::PhotoFeatures::PhotoFeatures(CLMicroLocationProto::PhotoFeatures *this)
{
  *this = &unk_286A57990;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t CLMicroLocationProto::Fingerprint::Fingerprint(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A57A08;
  *(this + 24) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 124) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 56) = v1;
  *(this + 64) = v1;
  *(this + 72) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ClusterRecordings::ClusterRecordings(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_286A57A80;
  *(this + 8) = v1;
  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::AnchorAppearance::AnchorAppearance(uint64_t this)
{
  *(this + 32) = 0;
  *this = &unk_286A57B70;
  *(this + 8) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  *(this + 24) = v1;
  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::anchorAppearancesVector::anchorAppearancesVector(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A57BE8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CLMicroLocationProto::BlueAtlasData::BlueAtlasData(CLMicroLocationProto::BlueAtlasData *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286A57EB8;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

double CLMicroLocationProto::Model::Model(CLMicroLocationProto::Model *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286A57F30;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 104) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 108) = 0u;
  *(this + 124) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 43) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = v2;
  *(this + 50) = 0;
  return result;
}

uint64_t CLMicroLocationProto::ULPointLocation::ULPointLocation(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A57FA8;
  *(this + 24) = 0;
  return this;
}

void *CLMicroLocationProto::ULPointMovement::ULPointMovement(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_286A58020;
  return this;
}

double CLMicroLocationProto::ULTrajectoryPoint::ULTrajectoryPoint(CLMicroLocationProto::ULTrajectoryPoint *this)
{
  *this = &unk_286A58098;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *CLMicroLocationProto::ULROIPoint::ULROIPoint(void *this)
{
  *this = &unk_286A58110;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CLMicroLocationProto::ULROI::ULROI(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A58188;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

void *CLMicroLocationProto::ULPositionedImage::ULPositionedImage(void *this)
{
  *this = &unk_286A58200;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CLMicroLocationProto::ModelMetadata::ModelMetadata(CLMicroLocationProto::ModelMetadata *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_286A58278;
  *(this + 1) = v1;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  return result;
}

double CLMicroLocationProto::HomeSlamModel::HomeSlamModel(CLMicroLocationProto::HomeSlamModel *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286A582F0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 30) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  return result;
}

void *CLMicroLocationProto::VMKModel::VMKModel(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_286A58368;
  this[1] = v1;
  this[2] = 0;
  return this;
}

uint64_t CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A591F0;
  *(this + 24) = 0;
  return this;
}

double CLMicroLocationProto::RecordingEvent::RecordingEvent(CLMicroLocationProto::RecordingEvent *this)
{
  *this = &unk_286A59268;
  *(this + 18) = 1;
  *(this + 38) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  return result;
}

uint64_t CLMicroLocationProto::ChannelAndCount::ChannelAndCount(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A596A0;
  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::WifiHistogram::WifiHistogram(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286A59718;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(CLMicroLocationProto::AnchorAppearanceConfiguration *this)
{
  *&result = 1;
  *(this + 2) = 1;
  *this = &unk_286A59790;
  *(this + 1) = 0;
  *(this + 6) = 0;
  return result;
}

double CLMicroLocationProto::Configuration::Configuration(CLMicroLocationProto::Configuration *this)
{
  *this = &unk_286A59880;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *CLMicroLocationProto::RapportDevice::RapportDevice(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_286A598F8;
  this[1] = v1;
  this[2] = v1;
  this[3] = 0;
  return this;
}

void *CLMicroLocationProto::ULLabelDataWiFi::ULLabelDataWiFi(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_286A59970;
  return this;
}

void *CLMicroLocationProto::ReceivedEvent::InitAsDefaultInstance(void *this)
{
  v1 = CLMicroLocationProto::AppLaunch::default_instance_;
  this[1] = CLMicroLocationProto::ReceivedEventAction::default_instance_;
  this[2] = v1;
  v2 = CLMicroLocationProto::BatteryChargerConnected::default_instance_;
  this[3] = CLMicroLocationProto::BacklightOn::default_instance_;
  this[4] = v2;
  v3 = CLMicroLocationProto::HomeKitAccessory::default_instance_;
  this[5] = CLMicroLocationProto::ForcedRecording::default_instance_;
  this[6] = v3;
  v4 = CLMicroLocationProto::NowPlaying::default_instance_;
  this[7] = CLMicroLocationProto::HomeKitScene::default_instance_;
  this[8] = v4;
  v5 = CLMicroLocationProto::TruthLabelDonation::default_instance_;
  this[9] = CLMicroLocationProto::RecordingRequest::default_instance_;
  this[10] = v5;
  v6 = CLMicroLocationProto::LearnCompleted::default_instance_;
  this[11] = CLMicroLocationProto::LearnModel::default_instance_;
  this[12] = v6;
  v7 = CLMicroLocationProto::StartSpectating::default_instance_;
  this[13] = CLMicroLocationProto::SensorsScanComplete::default_instance_;
  this[14] = v7;
  v8 = CLMicroLocationProto::ServiceCreate::default_instance_;
  this[15] = CLMicroLocationProto::StopSpectating::default_instance_;
  this[16] = v8;
  v9 = CLMicroLocationProto::ServiceConnect::default_instance_;
  this[17] = CLMicroLocationProto::ServiceDelete::default_instance_;
  this[18] = v9;
  v10 = CLMicroLocationProto::ServiceStartUpdating::default_instance_;
  this[19] = CLMicroLocationProto::ServiceDisconnect::default_instance_;
  this[20] = v10;
  v11 = CLMicroLocationProto::RequestObservation::default_instance_;
  this[21] = CLMicroLocationProto::ServiceStopUpdating::default_instance_;
  this[22] = v11;
  v12 = CLMicroLocationProto::MiloInit::default_instance_;
  this[23] = CLMicroLocationProto::RequestPrediction::default_instance_;
  this[24] = v12;
  v13 = CLMicroLocationProto::LegacyThrottle::default_instance_;
  this[25] = CLMicroLocationProto::MotionEvent::default_instance_;
  this[26] = v13;
  v14 = CLMicroLocationProto::TriggerEvent::default_instance_;
  this[27] = CLMicroLocationProto::RetrievedLoi::default_instance_;
  this[28] = v14;
  v15 = CLMicroLocationProto::SpectatingMotionUpdate::default_instance_;
  this[29] = CLMicroLocationProto::LegacyClientStatusUpdate::default_instance_;
  this[30] = v15;
  v16 = CLMicroLocationProto::ScreenStateUpdate::default_instance_;
  this[31] = CLMicroLocationProto::EnabledStateUpdate::default_instance_;
  this[32] = v16;
  v17 = CLMicroLocationProto::CloudBackupImport::default_instance_;
  this[33] = CLMicroLocationProto::CloudBackupExport::default_instance_;
  this[34] = v17;
  this[35] = CLMicroLocationProto::DataMigration::default_instance_;
  return this;
}

void *CLMicroLocationProto::RecordingEvent::InitAsDefaultInstance(void *this)
{
  v1 = CLMicroLocationProto::AppLaunch::default_instance_;
  this[2] = CLMicroLocationProto::ReceivedEventAction::default_instance_;
  this[3] = v1;
  v2 = CLMicroLocationProto::BatteryChargerConnected::default_instance_;
  this[4] = CLMicroLocationProto::BacklightOn::default_instance_;
  this[5] = v2;
  v3 = CLMicroLocationProto::HomeKitAccessory::default_instance_;
  this[6] = CLMicroLocationProto::ForcedRecording::default_instance_;
  this[7] = v3;
  this[8] = CLMicroLocationProto::HomeKitScene::default_instance_;
  v4 = CLMicroLocationProto::RecordingRequest::default_instance_;
  this[10] = CLMicroLocationProto::NowPlaying::default_instance_;
  this[11] = v4;
  this[12] = CLMicroLocationProto::TruthLabelDonation::default_instance_;
  this[16] = CLMicroLocationProto::AssociatedAccessPointInfo::default_instance_;
  return this;
}

void CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(CLMicroLocationProto *this)
{
  v1 = CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x277D82C40] + 16;
    v2[1] = CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_2590DB934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::BleLeechedBeacons::MergeFrom(CLMicroLocationProto::BleLeechedBeacons *this, const CLMicroLocationProto::BleLeechedBeacons *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 4);
    if ((v5 - 1) >= 7)
    {
      CLMicroLocationProto::BleLeechedBeacons::MergeFrom();
    }

    *(this + 16) |= 1u;
    *(this + 4) = v5;
    v4 = *(a2 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 1);
    *(this + 16) |= 2u;
    *(this + 1) = v6;
    v4 = *(a2 + 16);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 5);
    *(this + 16) |= 4u;
    *(this + 5) = v7;
    v4 = *(a2 + 16);
  }

  v8 = MEMORY[0x277D82C30];
  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 3);
    *(this + 16) |= 8u;
    v10 = *(this + 3);
    if (v10 == v8)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 16);
    if ((v4 & 0x10) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_14;
      }

LABEL_21:
      v12 = *(a2 + 4);
      *(this + 16) |= 0x20u;
      *(this + 4) = v12;
      v4 = *(a2 + 16);
      if ((v4 & 0x40) == 0)
      {
LABEL_15:
        if ((v4 & 0x80) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v11 = *(a2 + 14);
  *(this + 16) |= 0x10u;
  *(this + 14) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_22:
  v13 = *(a2 + 5);
  *(this + 16) |= 0x40u;
  v14 = *(this + 5);
  if (v14 == v8)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  if ((*(a2 + 16) & 0x80) != 0)
  {
LABEL_25:
    v15 = *(a2 + 6);
    *(this + 16) |= 0x80u;
    v16 = *(this + 6);
    if (v16 == v8)
    {
      operator new();
    }

    std::string::operator=(v16, v15);
  }
}

void sub_2590DBBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::BleLeechedBeacons::~BleLeechedBeacons(CLMicroLocationProto::BleLeechedBeacons *this)
{
  *this = &unk_286A574E0;
  CLMicroLocationProto::BleLeechedBeacons::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::BleLeechedBeacons::~BleLeechedBeacons(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::BleLeechedBeacons::SharedDtor(CLMicroLocationProto::BleLeechedBeacons *this)
{
  v1 = this;
  v2 = *(this + 3);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 5);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 6);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::BleLeechedBeacons::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 5;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 24);
      if (v3 != MEMORY[0x277D82C30])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 56) = 0;
    *(this + 32) = 0;
    if ((*(this + 64) & 0x40) != 0)
    {
      v4 = *(this + 40);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 64) & 0x80) != 0)
    {
      v5 = *(this + 48);
      if (v5 != v2)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }
  }

  *(this + 64) = 0;
  return this;
}

uint64_t CLMicroLocationProto::BleLeechedBeacons::MergePartialFromCodedStream(CLMicroLocationProto::BleLeechedBeacons *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v14 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_60;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_68;
            }

            goto LABEL_35;
          }

          if (v7 != 7)
          {
            if (v7 == 8 && v8 == 2)
            {
              goto LABEL_82;
            }

            goto LABEL_35;
          }

          if (v8 != 2)
          {
            goto LABEL_35;
          }

          v15 = *(this + 16);
LABEL_76:
          *(this + 16) = v15 | 0x40;
          if (*(this + 5) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          if (v25 < *(a2 + 2) && *v25 == 66)
          {
            *(a2 + 1) = v25 + 1;
LABEL_82:
            *(this + 16) |= 0x80u;
            if (*(this + 6) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 == 5)
          {
            goto LABEL_50;
          }

          goto LABEL_35;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_35;
        }

        v11 = *(this + 16);
LABEL_54:
        *(this + 16) = v11 | 8;
        if (*(this + 3) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v20 < v9 && *v20 == 40)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_60:
          v26[0] = 0;
          if (v14 >= v9 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v26);
            if (!result)
            {
              return result;
            }

            v21 = v26[0];
            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 14) = v21;
          *(this + 16) |= 0x10u;
          if (v22 < v9 && *v22 == 48)
          {
            v10 = v22 + 1;
            *(a2 + 1) = v10;
LABEL_68:
            if (v10 >= v9 || (v23 = *v10, v23 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v23;
              v24 = v10 + 1;
              *(a2 + 1) = v24;
            }

            v15 = *(this + 16) | 0x20;
            *(this + 16) = v15;
            if (v24 < v9 && *v24 == 58)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_76;
            }
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_35;
      }

      v26[0] = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v26);
        if (!result)
        {
          return result;
        }

        v13 = v26[0];
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v13 - 1 <= 6)
      {
        *(this + 16) |= 1u;
        *(this + 4) = v13;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 17)
      {
        *(a2 + 1) = v17 + 1;
LABEL_46:
        *v26 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v26) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v26;
        *(this + 16) |= 2u;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 29)
        {
          *(a2 + 1) = v18 + 1;
LABEL_50:
          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v26) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v26[0];
          v11 = *(this + 16) | 4;
          *(this + 16) = v11;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 34)
          {
            *(a2 + 1) = v19 + 1;
            goto LABEL_54;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::BleLeechedBeacons::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v9 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::BleLeechedBeacons::ByteSize(CLMicroLocationProto::BleLeechedBeacons *this)
{
  LOBYTE(v2) = *(this + 64);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if (*(this + 64))
  {
    v5 = *(this + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 4) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v6 = *(this + 3);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v2 = *(this + 16);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = (v4 + v11 + v7 + 1);
    if ((v2 & 0x10) == 0)
    {
LABEL_17:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(this + 14);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v2 & 0x20) == 0)
  {
LABEL_18:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 16);
  if ((v2 & 0x40) == 0)
  {
LABEL_19:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

LABEL_37:
  v14 = *(this + 5);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v2 = *(this + 16);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v4 = (v4 + v19 + v15 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_46:
    v20 = *(this + 6);
    v21 = *(v20 + 23);
    v22 = v21;
    v23 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v24 = *(v20 + 23);
    }

    else
    {
      v24 = v23;
    }

    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
      v21 = *(v20 + 23);
      v23 = *(v20 + 8);
      v22 = *(v20 + 23);
    }

    else
    {
      v25 = 1;
    }

    if (v22 < 0)
    {
      v21 = v23;
    }

    v4 = (v4 + v25 + v21 + 1);
  }

LABEL_55:
  *(this + 15) = v4;
  return v4;
}

void CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom(CLMicroLocationProto::BleLeechedBeacons *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::BleLeechedBeacons::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::WiFiRssi::MergeFrom(CLMicroLocationProto::WiFiRssi *this, const CLMicroLocationProto::WiFiRssi *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 40))
  {
    v5 = *(a2 + 4);
    if ((v5 - 1) >= 7)
    {
      CLMicroLocationProto::WiFiRssi::MergeFrom();
    }

    *(this + 10) |= 1u;
    *(this + 4) = v5;
    v4 = *(a2 + 10);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 1);
  *(this + 10) |= 2u;
  *(this + 1) = v7;
  v4 = *(a2 + 10);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  v9 = *(a2 + 3);
  *(this + 10) |= 8u;
  *(this + 3) = v9;
  if ((*(a2 + 10) & 0x10) != 0)
  {
LABEL_11:
    v6 = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v6;
  }
}

void sub_2590DC784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::WiFiRssi::~WiFiRssi(CLMicroLocationProto::WiFiRssi *this)
{
  *this = &unk_286A57558;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::WiFiRssi::~WiFiRssi(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::WiFiRssi::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 16) = 1;
    *(this + 8) = 0;
    *(this + 28) = 0;
    *(this + 20) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::WiFiRssi::MergePartialFromCodedStream(CLMicroLocationProto::WiFiRssi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v21[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21);
          if (!result)
          {
            return result;
          }

          v12 = v21[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 1 <= 6)
        {
          *(this + 10) |= 1u;
          *(this + 4) = v12;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 17)
        {
          *(a2 + 1) = v14 + 1;
LABEL_34:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v21;
          *(this + 10) |= 2u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 29)
          {
            *(a2 + 1) = v15 + 1;
LABEL_38:
            v21[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v21[0];
            *(this + 10) |= 4u;
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v16 < v8 && *v16 == 32)
            {
              v10 = v16 + 1;
              *(a2 + 1) = v10;
              goto LABEL_42;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_42:
      if (v10 >= v8 || (v17 = *v10, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v17;
        v18 = v10 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 10) |= 8u;
      if (v18 < v8 && *v18 == 40)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_50:
        v21[0] = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21);
          if (!result)
          {
            return result;
          }

          v19 = v21[0];
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 8) = v19;
        *(this + 10) |= 0x10u;
        if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_50;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::WiFiRssi::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 24), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v7, a2, a4);
}

uint64_t CLMicroLocationProto::WiFiRssi::ByteSize(CLMicroLocationProto::WiFiRssi *this)
{
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 10);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
      v2 = *(this + 10);
    }

    if ((v2 & 0x10) != 0)
    {
      v6 = *(this + 8);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v4 = (v7 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 9) = v4;
  return v4;
}

void CLMicroLocationProto::WiFiRssi::CheckTypeAndMergeFrom(CLMicroLocationProto::WiFiRssi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::WiFiRssi::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::Direction::MergeFrom(CLMicroLocationProto::Direction *this, const CLMicroLocationProto::Direction *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = result;
    if ((*(a2 + 6) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = result;
  }

  return result;
}

void sub_2590DCE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Direction::~Direction(CLMicroLocationProto::Direction *this)
{
  *this = &unk_286A575D0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::Direction::~Direction(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::Direction::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::Direction::MergePartialFromCodedStream(CLMicroLocationProto::Direction *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v11;
        *(this + 6) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 5)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v13;
      *(this + 6) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 21)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 6) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 29)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::Direction::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t CLMicroLocationProto::Direction::ByteSize(CLMicroLocationProto::Direction *this)
{
  v1 = *(this + 24);
  if (*(this + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 5) = v1;
  return v1;
}

float CLMicroLocationProto::Direction::CheckTypeAndMergeFrom(CLMicroLocationProto::Direction *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::Direction::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::UwbRange::MergeFrom(CLMicroLocationProto::UwbRange *this, const CLMicroLocationProto::UwbRange *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (v5)
  {
    if (*(a2 + 56))
    {
      v6 = *(a2 + 4);
      if ((v6 - 1) >= 7)
      {
        CLMicroLocationProto::UwbRange::MergeFrom();
      }

      *(this + 14) |= 1u;
      *(this + 4) = v6;
      v5 = *(a2 + 14);
    }

    if ((v5 & 2) != 0)
    {
      v4 = *(a2 + 1);
      *(this + 14) |= 2u;
      *(this + 1) = v4;
      v5 = *(a2 + 14);
      if ((v5 & 4) == 0)
      {
LABEL_9:
        if ((v5 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    LODWORD(v4) = *(a2 + 5);
    *(this + 14) |= 4u;
    *(this + 5) = v4;
    v5 = *(a2 + 14);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_19:
    *(this + 14) |= 8u;
    v7 = *(this + 3);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 3);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v8 = *(CLMicroLocationProto::UwbRange::default_instance_ + 24);
    }

    *&v4 = CLMicroLocationProto::Direction::MergeFrom(v7, v8);
    v5 = *(a2 + 14);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_24:
    v9 = *(a2 + 4);
    *(this + 14) |= 0x10u;
    v10 = *(this + 4);
    if (v10 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v5 = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_27:
    v11 = *(a2 + 10);
    if ((v11 - 1) >= 2)
    {
      CLMicroLocationProto::UwbRange::MergeFrom();
    }

    *(this + 14) |= 0x20u;
    *(this + 10) = v11;
    v5 = *(a2 + 14);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    LODWORD(v4) = *(a2 + 11);
    *(this + 14) |= 0x40u;
    *(this + 11) = v4;
    v5 = *(a2 + 14);
LABEL_14:
    if ((v5 & 0x80) != 0)
    {
      LODWORD(v4) = *(a2 + 12);
      *(this + 14) |= 0x80u;
      *(this + 12) = v4;
    }
  }

  return *&v4;
}

void sub_2590DD4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::UwbRange::~UwbRange(CLMicroLocationProto::UwbRange *this)
{
  *this = &unk_286A57648;
  CLMicroLocationProto::UwbRange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::UwbRange::~UwbRange(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::UwbRange::SharedDtor(CLMicroLocationProto::UwbRange *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::UwbRange::default_instance_ != v1)
  {
    v4 = *(v1 + 3);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CLMicroLocationProto::UwbRange::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 6;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = *(this + 32);
      if (v3 != MEMORY[0x277D82C30])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 44) = 0;
    *(this + 48) = 0;
    *(this + 40) = 1;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t CLMicroLocationProto::UwbRange::MergePartialFromCodedStream(CLMicroLocationProto::UwbRange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v7 == 5)
            {
              if (v8 == 2)
              {
                goto LABEL_67;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_73;
            }

            goto LABEL_35;
          }

          if (v7 == 7)
          {
            if (v8 != 5)
            {
              goto LABEL_35;
            }

LABEL_83:
            v30[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v30) & 1) == 0)
            {
              return 0;
            }

            *(this + 11) = v30[0];
            *(this + 14) |= 0x40u;
            v29 = *(a2 + 1);
            if (v29 < *(a2 + 2) && *v29 == 69)
            {
              *(a2 + 1) = v29 + 1;
              goto LABEL_87;
            }
          }

          else
          {
            if (v7 != 8 || v8 != 5)
            {
              goto LABEL_35;
            }

LABEL_87:
            v30[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v30) & 1) == 0)
            {
              return 0;
            }

            *(this + 12) = v30[0];
            *(this + 14) |= 0x80u;
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_35;
          }

          v30[0] = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
            if (!result)
            {
              return result;
            }

            v13 = v30[0];
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v13 - 1 <= 6)
          {
            *(this + 14) |= 1u;
            *(this + 4) = v13;
          }

          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 17)
          {
            *(a2 + 1) = v15 + 1;
LABEL_45:
            *v30 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v30) & 1) == 0)
            {
              return 0;
            }

            *(this + 1) = *v30;
            *(this + 14) |= 2u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 29)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_49;
            }
          }
        }

        else
        {
          if (v7 == 2 && v8 == 1)
          {
            goto LABEL_45;
          }

LABEL_35:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 != 3)
      {
        if (v7 == 4 && v8 == 2)
        {
          v11 = *(this + 14);
          goto LABEL_53;
        }

        goto LABEL_35;
      }

      if (v8 != 5)
      {
        goto LABEL_35;
      }

LABEL_49:
      v30[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v30) & 1) == 0)
      {
        return 0;
      }

      *(this + 5) = v30[0];
      v11 = *(this + 14) | 4;
      *(this + 14) = v11;
      v17 = *(a2 + 1);
    }

    while (v17 >= *(a2 + 2) || *v17 != 34);
    *(a2 + 1) = v17 + 1;
LABEL_53:
    *(this + 14) = v11 | 8;
    v18 = *(this + 3);
    if (!v18)
    {
      operator new();
    }

    v30[0] = 0;
    v19 = *(a2 + 1);
    if (v19 >= *(a2 + 2) || *v19 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30))
      {
        return 0;
      }
    }

    else
    {
      v30[0] = *v19;
      *(a2 + 1) = v19 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLMicroLocationProto::Direction::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    if (v25 < *(a2 + 2) && *v25 == 42)
    {
      *(a2 + 1) = v25 + 1;
LABEL_67:
      *(this + 14) |= 0x10u;
      if (*(this + 4) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v26 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v26 < v9 && *v26 == 48)
      {
        v10 = v26 + 1;
        *(a2 + 1) = v10;
LABEL_73:
        v30[0] = 0;
        if (v10 >= v9 || (v27 = *v10, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v30);
          if (!result)
          {
            return result;
          }

          v27 = v30[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v27 - 1 <= 1)
        {
          *(this + 14) |= 0x20u;
          *(this + 10) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 < *(a2 + 2) && *v28 == 61)
        {
          *(a2 + 1) = v28 + 1;
          goto LABEL_83;
        }
      }
    }
  }
}

unsigned int *CLMicroLocationProto::UwbRange::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[14];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[4], a2, a4);
    v6 = v5[14];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 1), a3);
  v6 = v5[14];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 5), a3);
  v6 = v5[14];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(v5 + 3);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::UwbRange::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = v5[14];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(v5 + 4);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[14];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 11), a3);
    if ((v5[14] & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, v5[10], a2, a4);
  v6 = v5[14];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v9 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v9, a3);
}

uint64_t CLMicroLocationProto::UwbRange::ByteSize(CLMicroLocationProto::UwbRange *this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (!v2)
  {
    result = 0;
    goto LABEL_49;
  }

  if (*(this + 56))
  {
    this = *(this + 4);
    if ((this & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v3 = this + 1;
      v2 = *(v1 + 14);
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 4) != 0)
  {
    v5 = v3 + 5;
  }

  else
  {
    v5 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v6 = *(v1 + 3);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v6 = *(CLMicroLocationProto::UwbRange::default_instance_ + 24);
    }

    v7 = *(v6 + 24);
    v8 = (v7 << 31 >> 31) & 5;
    if ((v7 & 2) != 0)
    {
      v8 += 5;
    }

    if ((v7 & 4) != 0)
    {
      v8 += 5;
    }

    if (*(v6 + 24))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 20) = v9;
    v5 += v9 + 2;
    v2 = *(v1 + 14);
    if ((v2 & 0x10) == 0)
    {
LABEL_17:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(v1 + 4);
  v11 = *(v10 + 23);
  v12 = v11;
  v13 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    v11 = *(v10 + 23);
    v13 = *(v10 + 8);
    v2 = *(v1 + 14);
    v12 = *(v10 + 23);
  }

  else
  {
    v15 = 1;
  }

  if (v12 < 0)
  {
    v11 = v13;
  }

  v5 += v15 + v11 + 1;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v16 = *(v1 + 10);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(v1 + 14);
  }

  else
  {
    v17 = 2;
  }

  v5 += v17;
LABEL_44:
  v18 = v5 + 5;
  if ((v2 & 0x40) == 0)
  {
    v18 = v5;
  }

  if ((v2 & 0x80) != 0)
  {
    result = v18 + 5;
  }

  else
  {
    result = v18;
  }

LABEL_49:
  *(v1 + 13) = result;
  return result;
}

float CLMicroLocationProto::UwbRange::CheckTypeAndMergeFrom(CLMicroLocationProto::UwbRange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::UwbRange::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::WiFiRange::MergeFrom(CLMicroLocationProto::WiFiRange *this, const CLMicroLocationProto::WiFiRange *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 4);
      if ((v5 - 1) >= 7)
      {
        CLMicroLocationProto::WiFiRange::MergeFrom();
      }

      *(this + 10) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 10);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 3);
      *(this + 10) |= 0x10u;
      v10 = *(this + 3);
      if (v10 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      return;
    }

LABEL_14:
    v8 = *(a2 + 8);
    *(this + 10) |= 8u;
    *(this + 8) = v8;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_2590DE0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::WiFiRange::~WiFiRange(CLMicroLocationProto::WiFiRange *this)
{
  *this = &unk_286A576C0;
  CLMicroLocationProto::WiFiRange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::WiFiRange::~WiFiRange(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::WiFiRange::SharedDtor(CLMicroLocationProto::WiFiRange *this)
{
  v1 = *(this + 3);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x259CA1F90](v1, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::WiFiRange::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 2;
    *(this + 32) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLMicroLocationProto::WiFiRange::MergePartialFromCodedStream(CLMicroLocationProto::WiFiRange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_22;
          }

          goto LABEL_39;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_43:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v17[0];
          v9 = *(this + 10) | 8;
          *(this + 10) = v9;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 42)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_47;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_22;
          }

          v9 = *(this + 10);
LABEL_47:
          *(this + 10) = v9 | 0x10;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v17[0] = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v17);
        if (!result)
        {
          return result;
        }

        v11 = v17[0];
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v11 - 1 <= 6)
      {
        *(this + 10) |= 1u;
        *(this + 4) = v11;
      }

      v13 = *(a2 + 1);
      if (v13 < *(a2 + 2) && *v13 == 17)
      {
        *(a2 + 1) = v13 + 1;
LABEL_35:
        *v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v17;
        *(this + 10) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
LABEL_39:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17[0];
          *(this + 10) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 37)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_43;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_35;
    }

LABEL_22:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::WiFiRange::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t CLMicroLocationProto::WiFiRange::ByteSize(CLMicroLocationProto::WiFiRange *this)
{
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v5 = *(this + 4);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 10);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x10) != 0)
    {
      v6 = *(this + 3);
      v7 = *(v6 + 23);
      v8 = v7;
      v9 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v9;
      }

      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 1;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      v4 = (v4 + v11 + v7 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 9) = v4;
  return v4;
}

void CLMicroLocationProto::WiFiRange::CheckTypeAndMergeFrom(CLMicroLocationProto::WiFiRange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::WiFiRange::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ATVAirplayBluetoothRssi::MergeFrom(CLMicroLocationProto::ATVAirplayBluetoothRssi *this, const CLMicroLocationProto::ATVAirplayBluetoothRssi *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 44))
  {
    v5 = *(a2 + 4);
    if ((v5 - 1) >= 7)
    {
      CLMicroLocationProto::ATVAirplayBluetoothRssi::MergeFrom();
    }

    *(this + 11) |= 1u;
    *(this + 4) = v5;
    v4 = *(a2 + 11);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 1);
    *(this + 11) |= 2u;
    *(this + 1) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v9 = *(a2 + 8);
      *(this + 11) |= 8u;
      *(this + 8) = v9;
      v4 = *(a2 + 11);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 5);
  *(this + 11) |= 4u;
  *(this + 5) = v8;
  v4 = *(a2 + 11);
  if ((v4 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v10 = *(a2 + 3);
  *(this + 11) |= 0x10u;
  v11 = *(this + 3);
  if (v11 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 11) & 0x20) != 0)
  {
LABEL_12:
    v6 = *(a2 + 9);
    *(this + 11) |= 0x20u;
    *(this + 9) = v6;
  }
}

void sub_2590DE970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ATVAirplayBluetoothRssi::~ATVAirplayBluetoothRssi(CLMicroLocationProto::ATVAirplayBluetoothRssi *this)
{
  *this = &unk_286A57738;
  CLMicroLocationProto::WiFiRange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ATVAirplayBluetoothRssi::~ATVAirplayBluetoothRssi(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::ATVAirplayBluetoothRssi::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 3;
    *(this + 32) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 36) = 0;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ATVAirplayBluetoothRssi::MergePartialFromCodedStream(CLMicroLocationProto::ATVAirplayBluetoothRssi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_46;
            }

            goto LABEL_27;
          }

          if (v7 != 5)
          {
            if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_60;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

          v15 = *(this + 11);
LABEL_54:
          *(this + 11) = v15 | 0x10;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v22 < v9 && *v22 == 48)
          {
            v10 = v22 + 1;
            *(a2 + 1) = v10;
LABEL_60:
            v25[0] = 0;
            if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
              if (!result)
              {
                return result;
              }

              v23 = v25[0];
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v24 = v10 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 9) = v23;
            *(this + 11) |= 0x20u;
            if (v24 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v25[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
          if (!result)
          {
            return result;
          }

          v12 = v25[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 1 <= 6)
        {
          *(this + 11) |= 1u;
          *(this + 4) = v12;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 17)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_38;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_27;
      }

LABEL_38:
      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v25;
      *(this + 11) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 29)
      {
        *(a2 + 1) = v18 + 1;
LABEL_42:
        v25[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v25[0];
        *(this + 11) |= 4u;
        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v19 < v13 && *v19 == 32)
        {
          v14 = v19 + 1;
          *(a2 + 1) = v14;
LABEL_46:
          if (v14 >= v13 || (v20 = *v14, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v20;
            v21 = v14 + 1;
            *(a2 + 1) = v21;
          }

          v15 = *(this + 11) | 8;
          *(this + 11) = v15;
          if (v21 < v13 && *v21 == 42)
          {
            *(a2 + 1) = v21 + 1;
            goto LABEL_54;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 5)
    {
      goto LABEL_42;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::ATVAirplayBluetoothRssi::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v8, a2, a4);
}

uint64_t CLMicroLocationProto::ATVAirplayBluetoothRssi::ByteSize(CLMicroLocationProto::ATVAirplayBluetoothRssi *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(this + 44))
  {
    v5 = *(this + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 11);
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 4) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v6 = *(this + 8);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 11);
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
    if ((v2 & 0x10) == 0)
    {
LABEL_17:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v8 = *(this + 3);
  v9 = *(v8 + 23);
  v10 = v9;
  v11 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v2 = *(this + 11);
    v10 = *(v8 + 23);
  }

  else
  {
    v13 = 1;
  }

  if (v10 < 0)
  {
    v9 = v11;
  }

  v4 = (v4 + v13 + v9 + 1);
  if ((v2 & 0x20) != 0)
  {
LABEL_32:
    v14 = *(this + 9);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_38:
  *(this + 10) = v4;
  return v4;
}

void CLMicroLocationProto::ATVAirplayBluetoothRssi::CheckTypeAndMergeFrom(CLMicroLocationProto::ATVAirplayBluetoothRssi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ATVAirplayBluetoothRssi::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom(CLMicroLocationProto::HomeKitBluetoothRssi *this, const CLMicroLocationProto::HomeKitBluetoothRssi *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 44))
  {
    v5 = *(a2 + 4);
    if ((v5 - 1) >= 7)
    {
      CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom();
    }

    *(this + 11) |= 1u;
    *(this + 4) = v5;
    v4 = *(a2 + 11);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 1);
    *(this + 11) |= 2u;
    *(this + 1) = v6;
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_15:
      v8 = *(a2 + 3);
      *(this + 11) |= 8u;
      v9 = *(this + 3);
      if (v9 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 11);
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        if ((v4 & 0x20) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 5);
  *(this + 11) |= 4u;
  *(this + 5) = v7;
  v4 = *(a2 + 11);
  if ((v4 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v10 = *(a2 + 8);
  if ((v10 - 1) >= 0xF)
  {
    CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom();
  }

  *(this + 11) |= 0x10u;
  *(this + 8) = v10;
  if ((*(a2 + 11) & 0x20) != 0)
  {
LABEL_20:
    v11 = *(a2 + 9);
    if ((v11 - 1) >= 2)
    {
      CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom();
    }

    *(this + 11) |= 0x20u;
    *(this + 9) = v11;
  }
}

void sub_2590DF2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::HomeKitBluetoothRssi::~HomeKitBluetoothRssi(CLMicroLocationProto::HomeKitBluetoothRssi *this)
{
  *this = &unk_286A577B0;
  CLMicroLocationProto::WiFiRange::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::HomeKitBluetoothRssi::~HomeKitBluetoothRssi(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::HomeKitBluetoothRssi::Clear(uint64_t this)
{
  v1 = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 4;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 32) = 0x100000001;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLMicroLocationProto::HomeKitBluetoothRssi::MergePartialFromCodedStream(CLMicroLocationProto::HomeKitBluetoothRssi *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(a2 + 1);
                v14 = *(a2 + 2);
                goto LABEL_52;
              }
            }

            else if (v7 == 6 && (TagFallback & 7) == 0)
            {
              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_62;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

          v13 = *(this + 11);
LABEL_46:
          *(this + 11) = v13 | 8;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v20 < v14 && *v20 == 40)
          {
            v15 = v20 + 1;
            *(a2 + 1) = v15;
LABEL_52:
            v24[0] = 0;
            if (v15 >= v14 || (v21 = *v15, (v21 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v24);
              if (!result)
              {
                return result;
              }

              v21 = v24[0];
            }

            else
            {
              *(a2 + 1) = v15 + 1;
            }

            if (v21 - 1 <= 0xE)
            {
              *(this + 11) |= 0x10u;
              *(this + 8) = v21;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v22 < v9 && *v22 == 48)
            {
              v10 = v22 + 1;
              *(a2 + 1) = v10;
LABEL_62:
              v24[0] = 0;
              if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v24);
                if (!result)
                {
                  return result;
                }

                v23 = v24[0];
              }

              else
              {
                *(a2 + 1) = v10 + 1;
              }

              if (v23 - 1 <= 1)
              {
                *(this + 11) |= 0x20u;
                *(this + 9) = v23;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v24[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v24);
          if (!result)
          {
            return result;
          }

          v12 = v24[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 - 1 <= 6)
        {
          *(this + 11) |= 1u;
          *(this + 4) = v12;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 17)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_38;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_27;
      }

LABEL_38:
      *v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v24) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v24;
      *(this + 11) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 29)
      {
        *(a2 + 1) = v18 + 1;
LABEL_42:
        v24[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v24) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v24[0];
        v13 = *(this + 11) | 4;
        *(this + 11) = v13;
        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 34)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_46;
        }
      }
    }

    if (v7 == 3 && v8 == 5)
    {
      goto LABEL_42;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLMicroLocationProto::HomeKitBluetoothRssi::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 44);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, v8, a2, a4);
}

uint64_t CLMicroLocationProto::HomeKitBluetoothRssi::ByteSize(CLMicroLocationProto::HomeKitBluetoothRssi *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if (*(this + 44))
  {
    v5 = *(this + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 11);
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 4) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v6 = *(this + 3);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v2 = *(this + 11);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = (v4 + v11 + v7 + 1);
    if ((v2 & 0x10) == 0)
    {
LABEL_17:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(this + 8);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v2 & 0x20) != 0)
  {
LABEL_34:
    v14 = *(this + 9);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

LABEL_40:
  *(this + 10) = v4;
  return v4;
}

void CLMicroLocationProto::HomeKitBluetoothRssi::CheckTypeAndMergeFrom(CLMicroLocationProto::HomeKitBluetoothRssi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom(this, lpsrc);
}

CLMicroLocationProto::Measurement *CLMicroLocationProto::Measurement::Measurement(CLMicroLocationProto::Measurement *this, const CLMicroLocationProto::Measurement *a2)
{
  *this = &unk_286A57828;
  *(this + 8) = 1;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CLMicroLocationProto::Measurement::MergeFrom(this, a2);
  return this;
}

float CLMicroLocationProto::Measurement::MergeFrom(CLMicroLocationProto::Measurement *this, const CLMicroLocationProto::Measurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  LOBYTE(v5) = *(a2 + 72);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 72))
  {
    v6 = *(a2 + 16);
    if ((v6 - 1) >= 7)
    {
      CLMicroLocationProto::Measurement::MergeFrom();
    }

    *(this + 18) |= 1u;
    *(this + 16) = v6;
    v5 = *(a2 + 18);
  }

  if ((v5 & 2) != 0)
  {
    v4 = *(a2 + 1);
    *(this + 18) |= 2u;
    *(this + 1) = v4;
    v5 = *(a2 + 18);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(this + 18) |= 4u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::Measurement::default_instance_ + 16);
  }

  CLMicroLocationProto::WiFiRssi::MergeFrom(v7, v8);
  v5 = *(a2 + 18);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(this + 18) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::Measurement::default_instance_ + 24);
  }

  CLMicroLocationProto::WiFiRange::MergeFrom(v9, v10);
  v5 = *(a2 + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    *(this + 18) |= 0x20u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v14 = *(CLMicroLocationProto::Measurement::default_instance_ + 40);
    }

    CLMicroLocationProto::HomeKitBluetoothRssi::MergeFrom(v13, v14);
    v5 = *(a2 + 18);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        return *&v4;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 18) |= 0x10u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v12 = *(CLMicroLocationProto::Measurement::default_instance_ + 32);
  }

  CLMicroLocationProto::ATVAirplayBluetoothRssi::MergeFrom(v11, v12);
  v5 = *(a2 + 18);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_36:
  *(this + 18) |= 0x40u;
  v15 = *(this + 6);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 6);
  if (!v16)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v16 = *(CLMicroLocationProto::Measurement::default_instance_ + 48);
  }

  CLMicroLocationProto::BleLeechedBeacons::MergeFrom(v15, v16);
  if ((*(a2 + 18) & 0x80) != 0)
  {
LABEL_41:
    *(this + 18) |= 0x80u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v18 = *(CLMicroLocationProto::Measurement::default_instance_ + 56);
    }

    *&v4 = CLMicroLocationProto::UwbRange::MergeFrom(v17, v18);
  }

  return *&v4;
}

void sub_2590DFF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::Measurement::~Measurement(CLMicroLocationProto::Measurement *this)
{
  *this = &unk_286A57828;
  CLMicroLocationProto::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::Measurement::~Measurement(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::Measurement::SharedDtor(CLMicroLocationProto::Measurement *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::Measurement::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 7);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CLMicroLocationProto::Measurement::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    *(this + 64) = 1;
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 40))
        {
          *(v3 + 16) = 1;
          *(v3 + 8) = 0;
          *(v3 + 28) = 0;
          *(v3 + 20) = 0;
        }

        *(v3 + 40) = 0;
        v2 = *(this + 72);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = CLMicroLocationProto::WiFiRange::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLMicroLocationProto::ATVAirplayBluetoothRssi::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CLMicroLocationProto::HomeKitBluetoothRssi::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CLMicroLocationProto::BleLeechedBeacons::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CLMicroLocationProto::UwbRange::Clear(this);
      }
    }
  }

  *(v1 + 72) = 0;
  return this;
}

uint64_t CLMicroLocationProto::Measurement::MergePartialFromCodedStream(CLMicroLocationProto::Measurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v6 == 5)
            {
              if (v7 == 2)
              {
                goto LABEL_76;
              }
            }

            else if (v6 == 6 && v7 == 2)
            {
              goto LABEL_90;
            }

            goto LABEL_34;
          }

          if (v6 == 7)
          {
            if (v7 != 2)
            {
              goto LABEL_34;
            }

LABEL_104:
            *(this + 18) |= 0x40u;
            v43 = *(this + 6);
            if (!v43)
            {
              operator new();
            }

            v56[0] = 0;
            v44 = *(a2 + 1);
            if (v44 >= *(a2 + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
              {
                return 0;
              }
            }

            else
            {
              v56[0] = *v44;
              *(a2 + 1) = v44 + 1;
            }

            v45 = *(a2 + 14);
            v46 = *(a2 + 15);
            *(a2 + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLMicroLocationProto::BleLeechedBeacons::MergePartialFromCodedStream(v43, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v47 = *(a2 + 14);
            v19 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v19)
            {
              *(a2 + 14) = v48;
            }

            v49 = *(a2 + 1);
            if (v49 < *(a2 + 2) && *v49 == 66)
            {
              *(a2 + 1) = v49 + 1;
              goto LABEL_118;
            }
          }

          else
          {
            if (v6 != 8 || v7 != 2)
            {
              goto LABEL_34;
            }

LABEL_118:
            *(this + 18) |= 0x80u;
            v50 = *(this + 7);
            if (!v50)
            {
              operator new();
            }

            v56[0] = 0;
            v51 = *(a2 + 1);
            if (v51 >= *(a2 + 2) || *v51 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
              {
                return 0;
              }
            }

            else
            {
              v56[0] = *v51;
              *(a2 + 1) = v51 + 1;
            }

            v52 = *(a2 + 14);
            v53 = *(a2 + 15);
            *(a2 + 14) = v52 + 1;
            if (v52 >= v53)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLMicroLocationProto::UwbRange::MergePartialFromCodedStream(v50, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v54 = *(a2 + 14);
            v19 = __OFSUB__(v54, 1);
            v55 = v54 - 1;
            if (v55 < 0 == v19)
            {
              *(a2 + 14) = v55;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 != 3)
        {
          if (v6 == 4 && v7 == 2)
          {
            goto LABEL_62;
          }

          goto LABEL_34;
        }

        if (v7 != 2)
        {
          goto LABEL_34;
        }

        v10 = *(this + 18);
LABEL_48:
        *(this + 18) = v10 | 4;
        v14 = *(this + 2);
        if (!v14)
        {
          operator new();
        }

        v56[0] = 0;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
          {
            return 0;
          }
        }

        else
        {
          v56[0] = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v16 = *(a2 + 14);
        v17 = *(a2 + 15);
        *(a2 + 14) = v16 + 1;
        if (v16 >= v17)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::WiFiRssi::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 34)
        {
          *(a2 + 1) = v21 + 1;
LABEL_62:
          *(this + 18) |= 8u;
          v22 = *(this + 3);
          if (!v22)
          {
            operator new();
          }

          v56[0] = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
            {
              return 0;
            }
          }

          else
          {
            v56[0] = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLMicroLocationProto::WiFiRange::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v19 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v19)
          {
            *(a2 + 14) = v27;
          }

          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 42)
          {
            *(a2 + 1) = v28 + 1;
LABEL_76:
            *(this + 18) |= 0x10u;
            v29 = *(this + 4);
            if (!v29)
            {
              operator new();
            }

            v56[0] = 0;
            v30 = *(a2 + 1);
            if (v30 >= *(a2 + 2) || *v30 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
              {
                return 0;
              }
            }

            else
            {
              v56[0] = *v30;
              *(a2 + 1) = v30 + 1;
            }

            v31 = *(a2 + 14);
            v32 = *(a2 + 15);
            *(a2 + 14) = v31 + 1;
            if (v31 >= v32)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLMicroLocationProto::ATVAirplayBluetoothRssi::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v33 = *(a2 + 14);
            v19 = __OFSUB__(v33, 1);
            v34 = v33 - 1;
            if (v34 < 0 == v19)
            {
              *(a2 + 14) = v34;
            }

            v35 = *(a2 + 1);
            if (v35 < *(a2 + 2) && *v35 == 50)
            {
              *(a2 + 1) = v35 + 1;
LABEL_90:
              *(this + 18) |= 0x20u;
              v36 = *(this + 5);
              if (!v36)
              {
                operator new();
              }

              v56[0] = 0;
              v37 = *(a2 + 1);
              if (v37 >= *(a2 + 2) || *v37 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
                {
                  return 0;
                }
              }

              else
              {
                v56[0] = *v37;
                *(a2 + 1) = v37 + 1;
              }

              v38 = *(a2 + 14);
              v39 = *(a2 + 15);
              *(a2 + 14) = v38 + 1;
              if (v38 >= v39)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CLMicroLocationProto::HomeKitBluetoothRssi::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v40 = *(a2 + 14);
              v19 = __OFSUB__(v40, 1);
              v41 = v40 - 1;
              if (v41 < 0 == v19)
              {
                *(a2 + 14) = v41;
              }

              v42 = *(a2 + 1);
              if (v42 < *(a2 + 2) && *v42 == 58)
              {
                *(a2 + 1) = v42 + 1;
                goto LABEL_104;
              }
            }
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v56[0] = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56);
        if (!result)
        {
          return result;
        }

        v9 = v56[0];
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 - 1 <= 6)
      {
        *(this + 18) |= 1u;
        *(this + 16) = v9;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_44:
        *v56 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v56) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v56;
        v10 = *(this + 18) | 2;
        *(this + 18) = v10;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_48;
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_44;
    }

LABEL_34:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *CLMicroLocationProto::Measurement::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[18];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[16], a2, a4);
    v6 = v5[18];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 1), a3);
  v6 = v5[18];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 2);
  if (!v7)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v7 = *(CLMicroLocationProto::Measurement::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = v5[18];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v5 + 3);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::Measurement::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = v5[18];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 4);
  if (!v9)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v9 = *(CLMicroLocationProto::Measurement::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = v5[18];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 5);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::Measurement::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = v5[18];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 6);
  if (!v11)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v11 = *(CLMicroLocationProto::Measurement::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((v5[18] & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 7);
    if (!v12)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v12 = *(CLMicroLocationProto::Measurement::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v12, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::Measurement::ByteSize(CLMicroLocationProto::Measurement *this)
{
  LOBYTE(v2) = *(this + 72);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_56;
  }

  if (*(this + 72))
  {
    v5 = *(this + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 4) != 0)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::Measurement::default_instance_ + 16);
    }

    v7 = CLMicroLocationProto::WiFiRssi::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = (v4 + v8 + v9 + 1);
    v2 = *(this + 18);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v10 = *(CLMicroLocationProto::Measurement::default_instance_ + 24);
  }

  v11 = CLMicroLocationProto::WiFiRange::ByteSize(v10);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  v2 = *(this + 18);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v14 = *(this + 4);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v14 = *(CLMicroLocationProto::Measurement::default_instance_ + 32);
  }

  v15 = CLMicroLocationProto::ATVAirplayBluetoothRssi::ByteSize(v14);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 1);
  v2 = *(this + 18);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_38:
  v18 = *(this + 5);
  if (!v18)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v18 = *(CLMicroLocationProto::Measurement::default_instance_ + 40);
  }

  v19 = CLMicroLocationProto::HomeKitBluetoothRssi::ByteSize(v18);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 1);
  v2 = *(this + 18);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v22 = *(this + 6);
  if (!v22)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v22 = *(CLMicroLocationProto::Measurement::default_instance_ + 48);
  }

  v23 = CLMicroLocationProto::BleLeechedBeacons::ByteSize(v22);
  v24 = v23;
  if (v23 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
  }

  else
  {
    v25 = 1;
  }

  v4 = (v4 + v24 + v25 + 1);
  if ((*(this + 18) & 0x80) != 0)
  {
LABEL_50:
    v26 = *(this + 7);
    if (!v26)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v26 = *(CLMicroLocationProto::Measurement::default_instance_ + 56);
    }

    v27 = CLMicroLocationProto::UwbRange::ByteSize(v26);
    v28 = v27;
    if (v27 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    }

    else
    {
      v29 = 1;
    }

    v4 = (v4 + v28 + v29 + 1);
  }

LABEL_56:
  *(this + 17) = v4;
  return v4;
}

float CLMicroLocationProto::Measurement::CheckTypeAndMergeFrom(CLMicroLocationProto::Measurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::Measurement::MergeFrom(this, lpsrc);
}

double CLMicroLocationProto::Measurement::Swap(CLMicroLocationProto::Measurement *this, CLMicroLocationProto::Measurement *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    LODWORD(v9) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v9;
    LODWORD(v9) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v9;
  }

  return result;
}

void CLMicroLocationProto::DeviceId::MergeFrom(CLMicroLocationProto::DeviceId *this, const CLMicroLocationProto::DeviceId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 2u;
      v7 = *(this + 2);
      if (v7 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }
}

void sub_2590E1174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::DeviceId::~DeviceId(CLMicroLocationProto::DeviceId *this)
{
  *this = &unk_286A578A0;
  CLMicroLocationProto::DeviceId::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::DeviceId::~DeviceId(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::DeviceId::SharedDtor(CLMicroLocationProto::DeviceId *this)
{
  v1 = *(this + 2);
  if (v1 != MEMORY[0x277D82C30] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x259CA1F90](v1, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::DeviceId::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLMicroLocationProto::DeviceId::MergePartialFromCodedStream(CLMicroLocationProto::DeviceId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_14;
        }

        v12 = *(this + 7);
LABEL_23:
        *(this + 7) = v12 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      v12 = *(this + 7) | 1;
      *(this + 7) = v12;
      if (v11 < v8 && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
        goto LABEL_23;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLMicroLocationProto::DeviceId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t CLMicroLocationProto::DeviceId::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((*(this + 7) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v2 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v3 = this[2];
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 1);
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 1;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = (v2 + v8 + v4 + 1);
  }

  else
  {
    v2 = 0;
  }

LABEL_16:
  *(this + 6) = v2;
  return v2;
}

void CLMicroLocationProto::DeviceId::CheckTypeAndMergeFrom(CLMicroLocationProto::DeviceId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::DeviceId::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::FingerprintMeasurement::MergeFrom(CLMicroLocationProto::FingerprintMeasurement *this, const CLMicroLocationProto::FingerprintMeasurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      if ((v6 - 1) >= 7)
      {
        CLMicroLocationProto::FingerprintMeasurement::MergeFrom();
      }

      *(this + 9) |= 2u;
      *(this + 4) = v6;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      *(this + 9) |= 4u;
      *(this + 5) = v7;
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      *(this + 9) |= 8u;
      v8 = *(this + 3);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 3);
      if (!v9)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v9 = *(CLMicroLocationProto::FingerprintMeasurement::default_instance_ + 24);
      }

      CLMicroLocationProto::DeviceId::MergeFrom(v8, v9);
    }
  }
}