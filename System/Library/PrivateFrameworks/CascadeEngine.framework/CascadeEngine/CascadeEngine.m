id _sharedQueue()
{
  if (_sharedQueue_onceToken != -1)
  {
    _sharedQueue_cold_1();
  }

  v1 = _sharedQueue_sharedQueue;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

__CFString *CCDifferentialUpdateTypeDescription(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_1E85C3210[(a1 - 1)];
  }

  return v2;
}

uint64_t _recursivelyWaitForTransactionProgress(void *a1, void *a2, int a3, double a4, double a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = fmax(a5 - a4, 0.0);
  if (a5 - a4 >= 60.0)
  {
    v12 = 60.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = dispatch_time(0, (v12 * 1000000000.0));
  if (dispatch_semaphore_wait(v9, v13))
  {
    v14 = v12 + a4;
    if (v14 + 0.00000011920929 >= a5)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        _recursivelyWaitForTransactionProgress_cold_1();
      }
    }

    else
    {
      v15 = [v10 clientAddOrUpdateCount];
      v16 = [v10 clientRemoveCount];
      v17 = v16 + v15;
      if ([v10 clientFinished])
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 134218496;
          v29 = v14;
          v30 = 1024;
          v31 = v15;
          v32 = 1024;
          *v33 = v16;
          v19 = "Client progress check-in after ~%.2lf seconds:\t {%u items added or updated, %u removed}\t[CLIENT FINISHED]";
          v20 = v18;
          v21 = 24;
LABEL_18:
          _os_log_impl(&dword_1DA444000, v20, OS_LOG_TYPE_DEFAULT, v19, &v28, v21);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      v23 = v17 - a3;
      v24 = (v17 - a3) / v12;
      v25 = __biome_log_for_category();
      v18 = v25;
      if (v24 >= 1.0)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 134218752;
          v29 = v14;
          v30 = 1024;
          v31 = v15;
          v32 = 1024;
          *v33 = v16;
          *&v33[4] = 2048;
          *&v33[6] = v23 / v12;
          v19 = "Client progress check-in after ~%.2lf seconds:\t {%u items added or updated, %u removed}\t(~%.2lf operations/s)";
          v20 = v18;
          v21 = 34;
          goto LABEL_18;
        }

LABEL_19:

        v22 = _recursivelyWaitForTransactionProgress(v9, v10, v17, v14, a5);
        goto LABEL_20;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = 134219010;
        v29 = v12;
        v30 = 1024;
        v31 = v23;
        v32 = 2048;
        *v33 = v23 / v12;
        *&v33[8] = 2048;
        *&v33[10] = 0x3FF0000000000000;
        v34 = 2112;
        v35 = v10;
        _os_log_error_impl(&dword_1DA444000, v18, OS_LOG_TYPE_ERROR, "Client has made insufficient progress since last check-in ~%.2lf seconds ago completing only %u operations (%.2lf/s with threshold of %lf/s). Aborting update: %@", &v28, 0x30u);
      }
    }

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

LABEL_20:

  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void sub_1DA44780C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_1DA447D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA448D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 - 136));
  _Unwind_Resume(a1);
}

void sub_1DA4494A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DA449CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

__CFString *CCRapportSyncErrorDescription(uint64_t a1)
{
  if ((a1 - 1) >= 0x14)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_1E85C2998[a1 - 1];
  }

  return v1;
}

id CCRapportSyncErrorWithDetails(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = CCRapportSyncErrorDescription(a1);
  v9 = v8;
  if (v6)
  {
    v10 = [v8 stringByAppendingFormat:@" | %@", v6];

    v9 = v10;
  }

  [v7 setObject:v9 forKey:*MEMORY[0x1E696A278]];
  if (v5)
  {
    [v7 setObject:v5 forKey:*MEMORY[0x1E696AA08]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CCRapportSyncErrorDomain" code:a1 userInfo:v7];

  return v11;
}

id CCRapportSyncErrorWithDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 userInfo];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x1E696AEC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
  v10 = [v7 stringWithFormat:@"%@ -> %@", v9, v3];

  [v6 setObject:v10 forKey:v8];
  v11 = MEMORY[0x1E696ABC0];
  v12 = [v4 domain];
  v13 = [v4 code];

  v14 = [v11 errorWithDomain:v12 code:v13 userInfo:v6];

  return v14;
}

__CFString *CCRapportSyncInteractionTypeDescription(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Client";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
    }
  }

  else
  {
    v2 = @"Server";
  }

  return v2;
}

void sub_1DA44EA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CCRapportSyncInteractionStateDescription(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_1E85C2BF0[(a1 - 1)];
  }

  return v2;
}

id CCRapportSyncOptionsDescription(int a1)
{
  if (!a1)
  {
    v4 = MEMORY[0x1E696AEC0];
    goto LABEL_9;
  }

  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (v1)
  {
    [v2 addObject:@"IncludeRelayedDeltas"];
    if ((v1 & 2) == 0)
    {
LABEL_4:
      if ((v1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"SkipSetDiscovery"];
  if ((v1 & 4) != 0)
  {
LABEL_5:
    [v3 addObject:@"AdditionalSetsToDiscover"];
  }

LABEL_6:
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [v3 componentsJoinedByString:@"|"];
    v6 = [v4 stringWithFormat:@"[%@]", v5];

    goto LABEL_10;
  }

LABEL_9:
  v6 = [v4 stringWithFormat:@"[%@]", &stru_1F55F1328];
LABEL_10:

  return v6;
}

void sub_1DA45006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1DA4519D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 184));
  _Unwind_Resume(a1);
}

void sub_1DA4520A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA452514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA4529BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DA4532C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 64));
  objc_destroyWeak(&a30);
  objc_destroyWeak((v31 - 160));
  _Unwind_Resume(a1);
}

void sub_1DA453B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 72));
  _Unwind_Resume(a1);
}

void sub_1DA455C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1DA459B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKDistributedTimestampStateVectorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85C3050;
    v6 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CKDistributedTimestampStateVector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1();
  }

  getCKDistributedTimestampStateVectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA45A550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DA45AC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1DA45BDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___sharedQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("DifferentialUpdater", v2);
  v1 = _sharedQueue_sharedQueue;
  _sharedQueue_sharedQueue = v0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

__CFString *CCDonateRequestTerminationTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_1E85C3250[a1];
  }
}

void sub_1DA45E54C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

__CFString *CCSyncReasonDescription(uint64_t a1)
{
  if ((a1 - 1) >= 8u)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_1E85C32A0[(a1 - 1)];
  }

  return v2;
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKDistributedTimestampStateVectorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSetVersionedMergeable.m" lineNumber:26 description:{@"Unable to find class %s", "CKDistributedTimestampStateVector"}];

  __break(1u);
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCSetVersionedMergeable.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void _recursivelyWaitForTransactionProgress_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}