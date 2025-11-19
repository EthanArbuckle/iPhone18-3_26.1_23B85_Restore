void std::__hash_table<AttachmentDescriptorSimple,AttachmentDescriptorSimple::hash_t,AttachmentDescriptorSimple::equal_t,std::allocator<AttachmentDescriptorSimple>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<AttachmentDescriptorSimple,AttachmentDescriptorSimple::hash_t,AttachmentDescriptorSimple::equal_t,std::allocator<AttachmentDescriptorSimple>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<AttachmentDescriptorSimple,AttachmentDescriptorSimple::hash_t,AttachmentDescriptorSimple::equal_t,std::allocator<AttachmentDescriptorSimple>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

NSRange *std::__hash_table<std::__hash_value_type<AttachmentDescriptorSimple,unsigned int>,std::__unordered_map_hasher<AttachmentDescriptorSimple,std::__hash_value_type<AttachmentDescriptorSimple,unsigned int>,AttachmentDescriptorSimple::hash_t,AttachmentDescriptorSimple::equal_t,true>,std::__unordered_map_equal<AttachmentDescriptorSimple,std::__hash_value_type<AttachmentDescriptorSimple,unsigned int>,AttachmentDescriptorSimple::equal_t,AttachmentDescriptorSimple::hash_t,true>,std::allocator<std::__hash_value_type<AttachmentDescriptorSimple,unsigned int>>>::__emplace_unique_key_args<AttachmentDescriptorSimple,std::piecewise_construct_t const&,std::tuple<AttachmentDescriptorSimple const&>,std::tuple<>>(uint64_t a1, NSRange *a2)
{
  v2 = a2->length ^ a2->location;
  v3 = *(a1 + 8);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = a2->length ^ a2->location;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    length = v9->length;
    if (length == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (length >= *&v3)
      {
        length %= *&v3;
      }
    }

    else
    {
      length &= *&v3 - 1;
    }

    if (length != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = v9->location;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  LOBYTE(a1) = AttachmentDescriptorSimple::equal_t::operator()(a1, v9 + 1, a2);
  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

  return v9;
}

void emitComputePipelineUsage(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277CD7168];
    while (1)
    {
      v7 = *(v5 + 6);
      if (v7)
      {
        if (!*v6)
        {
          goto LABEL_7;
        }

        if (*v6 == 1)
        {
          break;
        }
      }

LABEL_9:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    printf("\n\nComputePipelineUsage, pipelineID=%u, kernelID=%u, usageCount=%u", *(v5 + 4), *(v5 + 5), v7);
LABEL_7:
    v8 = [a1 telemetryLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 4);
      v10 = *(v5 + 5);
      v11 = *(v5 + 6);
      *buf = 67109632;
      v31 = v9;
      v32 = 1024;
      v33 = v10;
      v34 = 1024;
      LODWORD(v35) = v11;
      _os_log_impl(&dword_22E0FF000, v8, OS_LOG_TYPE_DEFAULT, "ComputePipelineUsage, pipelineID=%u, kernelID=%u, usageCount=%u", buf, 0x14u);
    }

    goto LABEL_9;
  }

LABEL_10:
  context = objc_autoreleasePoolPush();
  v12 = *(a3 + 16);
  if (v12)
  {
    while (1)
    {
      v13 = [MEMORY[0x277CCAB68] string];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v12[4];
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [v13 appendFormat:@"%s=%u, ", objc_msgSend(*(*(&v26 + 1) + 8 * i), "UTF8String"), objc_msgSend(objc_msgSend(v12[4], "objectForKey:", *(*(&v26 + 1) + 8 * i)), "unsignedIntegerValue")];
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
        }

        while (v16);
      }

      if ([v13 length] >= 2)
      {
        [v13 deleteCharactersInRange:{objc_msgSend(v13, "length") - 2, 2}];
      }

      v19 = *(v12 + 6);
      if (!v19)
      {
        goto LABEL_26;
      }

      if (!*MEMORY[0x277CD7168])
      {
        goto LABEL_24;
      }

      if (*MEMORY[0x277CD7168] == 1)
      {
        break;
      }

LABEL_26:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    printf("\n\nKernelUsage, kernelID=%u, usageCount=%u%s", *(v12 + 4), v19, [v13 UTF8String]);
LABEL_24:
    v20 = [a1 telemetryLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v12 + 4);
      v22 = *(v12 + 6);
      v23 = [v13 UTF8String];
      *buf = 67109634;
      v31 = v21;
      v32 = 1024;
      v33 = v22;
      v34 = 2080;
      v35 = v23;
      _os_log_impl(&dword_22E0FF000, v20, OS_LOG_TYPE_DEFAULT, "KernelUsage, kernelID=%u, usageCount=%u%s", buf, 0x18u);
    }

    goto LABEL_26;
  }

LABEL_27:
  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];
}

void emitComputePipelineStats(void *a1, uint64_t a2, _DWORD *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAB68] stringWithString:{@"ComputeFunctionStats, "}];
  for (i = *(a2 + 16); i; i = *i)
  {
    v8 = i + 2;
    if (*(i + 39) < 0)
    {
      v8 = *v8;
    }

    [v6 appendFormat:@"min%s=%u, max%s=%u, avg%s=%f, total%s=%llu, count%s=%u, ", v8, *(i + 10), v8, *(i + 11), v8, (i[6] / *(i + 14)), v8, i[6], v8, *(i + 14)];
  }

  [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 2, 2}];
  v9 = MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      goto LABEL_10;
    }

    printf("\n\n%s", [v6 UTF8String]);
  }

  v10 = [a1 telemetryLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v19 = [v6 UTF8String];
    _os_log_impl(&dword_22E0FF000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_10:
  if (*a3)
  {
    if (*v9)
    {
      if (*v9 != 1)
      {
        goto LABEL_16;
      }

      printf("\n\nComputePipeline, total=%u, kernelRegisterSpill=%u, threadgroupBarrier=%u, deviceMemoryAtomics=%u, threadgroupMemoryAtomics=%u", *a3, a3[1], a3[2], a3[3], a3[4]);
    }

    v11 = [a1 telemetryLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a3;
      v13 = a3[1];
      v14 = a3[2];
      v15 = a3[3];
      v16 = a3[4];
      *buf = 67110144;
      *v19 = v12;
      *&v19[4] = 1024;
      *&v19[6] = v13;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      v24 = 1024;
      v25 = v16;
      _os_log_impl(&dword_22E0FF000, v11, OS_LOG_TYPE_DEFAULT, "ComputePipeline, total=%u, kernelRegisterSpill=%u, threadgroupBarrier=%u, deviceMemoryAtomics=%u, threadgroupMemoryAtomics=%u", buf, 0x20u);
    }
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_22E1AB4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_22E1ABB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1ABC64(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

unint64_t verifyCopyFromTensorToTensor(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = [a2 dataType];
  if (v11 != [a5 dataType])
  {
    verifyCopyFromTensorToTensor_cold_1(a2, a5);
  }

  [a2 dimensions];
  verifySlice();
  [a5 dimensions];
  verifySlice();
  if ([a4 rank])
  {
    v12 = 0;
    v13 = 1;
    v14 = 1;
    do
    {
      v14 *= [a4 extentAtDimensionIndex:v12];
      v12 = v13;
      v15 = [a4 rank] > v13++;
    }

    while (v15);
  }

  else
  {
    v14 = 1;
  }

  result = [a7 rank];
  if (result)
  {
    v17 = 0;
    v18 = 1;
    v19 = 1;
    do
    {
      v19 *= [a7 extentAtDimensionIndex:v17];
      v17 = v18;
      result = [a7 rank];
      v15 = result > v18++;
    }

    while (v15);
  }

  else
  {
    v19 = 1;
  }

  if (v14 != v19)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t validateArg(uint64_t a1, unint64_t a2, MTLDebugFunctionArgument *a3)
{
  result = MTLReportFailureTypeEnabled();
  if (result && a3->isValid && !a3->hasBeenUsed)
  {
    MTLArgumentTypeToString(a1);
    return MTLReportFailure();
  }

  return result;
}

void sub_22E1ADF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t validateBuiltinArguments(MTLDebugComputePipelineState *a1, MTLSize *a2, MTLSize *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MTLComputePipelineReflection *)[(MTLDebugComputePipelineState *)a1 validationReflection] builtInArguments];
  result = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        v30 = xmmword_22E27C270;
        depth = 1;
        v8 = [v7 builtInType];
        if (v8 > 10)
        {
          if ((v8 - 15) < 6)
          {
            goto LABEL_13;
          }

          if (v8 != 11)
          {
            if (v8 == 12)
            {
              goto LABEL_13;
            }

LABEL_20:
            v17 = [v7 name];
            MTLReportFailure();
            goto LABEL_13;
          }

          maxThreadgroupsPerGrid = a1->_maxThreadgroupsPerGrid;
          v30 = *&a3->width;
          depth = a3->depth;
          v10 = @"threadgroups_per_grid";
        }

        else if (v8 > 7)
        {
          if (v8 == 8)
          {
            maxThreadgroupsPerGrid = a1->_maxThreadIndexInThreadgroup;
            v30 = a2->height * a2->width * a3->depth;
            depth = 0;
            v10 = @"thread_index_in_threadgroup";
          }

          else if (v8 == 9)
          {
            maxThreadgroupsPerGrid = a1->_maxThreadsPerThreadgroup;
            v30 = *&a2->width;
            depth = a2->depth;
            v10 = @"threads_per_threadgroup";
          }

          else
          {
            maxThreadgroupsPerGrid = a1->_maxThreadgroupPositionInGrid;
            v30 = *&a3->width;
            depth = a3->depth;
            v10 = @"threadgroup_position_in_grid";
          }
        }

        else
        {
          switch(v8)
          {
            case 5:
              v11 = a3->height * a2->height;
              maxThreadgroupsPerGrid = a1->_maxThreadPositionInGrid;
              *&v30 = a3->width * a2->width;
              *(&v30 + 1) = v11;
              depth = a3->depth * a2->depth;
              v10 = @"thread_position_in_grid";
              break;
            case 6:
              v12 = a3->height * a2->height;
              maxThreadgroupsPerGrid = a1->_maxThreadsPerGrid;
              *&v30 = a3->width * a2->width;
              *(&v30 + 1) = v12;
              depth = a3->depth * a2->depth;
              v10 = @"threads_per_grid";
              break;
            case 7:
              maxThreadgroupsPerGrid = a1->_maxThreadPositionInThreadgroup;
              v30 = *&a2->width;
              depth = a2->depth;
              v10 = @"thread_position_in_threadgroup";
              break;
            default:
              goto LABEL_20;
          }
        }

        for (i = 0; i != 3; ++i)
        {
          v14 = *(&v30 + i);
          v15 = maxThreadgroupsPerGrid[i];
          if (v14 > v15)
          {
            v20 = [v7 name];
            v21 = v10;
            v18 = v14;
            v19 = v15;
            v17 = i;
            MTLReportFailure();
          }
        }

LABEL_13:
        ++v6;
      }

      while (v6 != v4);
      result = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      v4 = result;
    }

    while (result);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t enumerateFunctionArgumentWithArray(uint64_t result, unint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (a2)
  {
    v5 = result;
    for (i = 0; i < a2; ++i)
    {
      if (*(v5 + 88 * i) == 1)
      {
        result = (*(a3 + 16))(a3);
        if (v7)
        {
          break;
        }
      }
    }
  }

  return result;
}

void sub_22E1B1C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1B1DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1B1FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  return *a4;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return MTLReportFailure();
}

void sub_22E1B3ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MTLResourceID>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22E1B3C04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1B4C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

NSObject *createTimerWithInterval(dispatch_queue_t queue, void *a2, double a3)
{
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  if (v5)
  {
    v6 = a3 * 1000000000.0;
    v7 = dispatch_time(0, v6);
    dispatch_source_set_timer(v5, v7, v6, 0x5F5E100uLL);
    dispatch_source_set_event_handler(v5, a2);
    dispatch_resume(v5);
  }

  return v5;
}

void sub_22E1B5E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(int a1, void **__p)
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

uint64_t std::unordered_map<MTLPixelFormat,MTLTelemetryTextureDistribution>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryTextureDistribution> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryTextureDistribution> const&>(void *a1, unint64_t *a2)
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

uint64_t std::unordered_map<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryRenderTargetDistribution> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryRenderTargetDistribution> const&>(void *a1, unint64_t *a2)
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

uint64_t std::unordered_map<MTLPixelFormat,MTLTelemetryBlitDistribution>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryBlitDistribution> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryBlitDistribution> const&>(void *a1, unint64_t *a2)
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

uint64_t std::unordered_map<unsigned int,MTLTelemetryRenderPipelineUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderPipelineUsageRec> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderPipelineUsageRec> const&>(void *a1, unsigned int *a2)
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

uint64_t std::unordered_map<unsigned int,MTLTelemetryRenderFuncUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderFuncUsageRec> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderFuncUsageRec> const&>(void *a1, unsigned int *a2)
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

uint64_t std::unordered_map<unsigned int,MTLTelemetryComputePipelineUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryComputePipelineUsageRec> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryComputePipelineUsageRec> const&>(void *a1, unsigned int *a2)
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

uint64_t std::unordered_map<unsigned int,MTLTelemetryKernelUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryKernelUsageRec> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryKernelUsageRec> const&>(void *a1, unsigned int *a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

unint64_t checkBuffer(unint64_t result, void *a2, unint64_t a3, char a4)
{
  if (a2)
  {
    v6 = result;
    if (([a2 conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      checkBuffer();
    }

    if ([a2 device] != v6)
    {
      checkBuffer();
    }

    result = [a2 length];
    if (result <= a3)
    {
      [a2 length];
      return MTLReportFailure();
    }
  }

  else if ((a4 & 1) == 0 || a3)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t checkAccelerationStructure(uint64_t result, void *a2, char a3)
{
  if (a2)
  {
    v4 = result;
    if (([a2 conformsToProtocol:&unk_2842285B8] & 1) == 0)
    {
      checkAccelerationStructure_cold_1();
    }

    result = [a2 device];
    if (result != v4)
    {
      return checkAccelerationStructure_cold_2();
    }
  }

  else if ((a3 & 1) == 0)
  {
    return MTLReportFailure();
  }

  return result;
}

uint64_t checkMotionParameter(void *a1, void *a2)
{
  if (([a1 supportsPrimitiveMotionBlur] & 1) == 0)
  {
    checkMotionParameter();
  }

  [a2 motionEndTime];
  v4 = v3;
  result = [a2 motionStartTime];
  if (v4 < v6)
  {
    return checkMotionParameter(a2);
  }

  return result;
}

uint64_t checkPrimitiveData(unint64_t a1, void *a2, uint64_t a3)
{
  checkBuffer(a1, [a2 primitiveDataBuffer], objc_msgSend(a2, "primitiveDataBufferOffset"), 1);
  result = [a2 primitiveDataBuffer];
  if (result)
  {
    if (![a2 primitiveDataElementSize])
    {
      checkPrimitiveData();
    }

    v6 = [a2 primitiveDataElementSize];
    if (v6 > [a2 primitiveDataStride])
    {
      checkPrimitiveData(a2);
    }

    v7 = [a2 primitiveDataBufferOffset];
    if (v7 > [objc_msgSend(a2 "primitiveDataBuffer")])
    {
      checkPrimitiveData(a2);
    }

    v8 = [objc_msgSend(a2 "primitiveDataBuffer")];
    v9 = [a2 primitiveDataBufferOffset];
    v10 = v9 + [a2 primitiveDataStride] * (a3 - 1);
    if (v8 < v10 + [a2 primitiveDataElementSize])
    {
      checkPrimitiveData();
    }

    if (([a2 primitiveDataBufferOffset] & 3) != 0)
    {
      checkPrimitiveData(a2);
    }

    result = [a2 primitiveDataStride];
    if ((result & 3) != 0)
    {
      return checkPrimitiveData(a2);
    }
  }

  return result;
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions(void *a1, void *a2, int a3, int a4)
{
  v202 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
    v6 = objc_opt_class();
    if ([v6 isSubclassOfClass:objc_opt_class()])
    {
      if (![objc_msgSend(v4 "geometryDescriptors")])
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_33(v4);
      }

      v7 = [v4 usage];
      v8 = [objc_msgSend(v4 "geometryDescriptors")];
      if ((v7 & 4) != 0)
      {
        if (v8 >> 30)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_34(v4);
        }
      }

      else if (v8 >> 24)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_35(v4);
      }

      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      obj = [v4 geometryDescriptors];
      v163 = [obj countByEnumeratingWithState:&v191 objects:v201 count:16];
      v14 = 0;
      if (v163)
      {
        v159 = a4 & a3;
        v161 = *v192;
        v158 = v4;
        do
        {
          v15 = 0;
          do
          {
            if (*v192 != v161)
            {
              objc_enumerationMutation(obj);
            }

            v164 = v15;
            v165 = v14;
            v16 = *(*(&v191 + 1) + 8 * v15);
            [objc_msgSend(v4 "geometryDescriptors")];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_36();
            }

            v17 = objc_opt_class();
            if ([v17 isSubclassOfClass:objc_opt_class()])
            {
              if ([v16 intersectionFunctionTableOffset] >> 24)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_77(v16);
              }

              v18 = [v16 vertexFormat];
              v19 = [v16 vertexStride];
              if (MTLAttributeFormatComponentCount(v18) <= 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_68();
              }

              v20 = MTLAttributeFormatSize(v18);
              if (v19 && v20 > v19)
              {
                v153 = v19;
                v155 = v20;
                MTLReportFailure();
              }

              v21 = MTLAttributeFormatAlignment(v18);
              if (v19 % v21)
              {
                v153 = v19;
                v155 = v21;
                MTLReportFailure();
              }

              v22 = [v16 transformationMatrixBuffer];
              v23 = [v16 transformationMatrixBufferOffset];
              checkBuffer(a1, v22, v23, 1);
              if (v22)
              {
                if (v23 + 48 > [v22 length])
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_69(v22);
                }

                if ((v23 & 3) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_70();
                }
              }

              if ([v16 transformationMatrixLayout] == 1 && (objc_msgSend(a1, "supportsRayTracingMatrixLayout") & 1) == 0)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_81();
              }

              if (v159)
              {
                checkBuffer(a1, [v16 vertexBuffer], objc_msgSend(v16, "vertexBufferOffset"), 0);
                if (([v16 vertexBufferOffset] & 3) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_82(v16);
                }

                if ([v16 indexBuffer])
                {
                  checkBuffer(a1, [v16 indexBuffer], objc_msgSend(v16, "indexBufferOffset"), 1);
                  v24 = [v16 indexType];
                  if (v24)
                  {
                    v25 = 4;
                  }

                  else
                  {
                    v25 = 2;
                  }

                  if (((v25 - 1) & [v16 indexBufferOffset]) != 0)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_83(v16);
                  }

                  v26 = 3 * [v16 triangleCount];
                  v27 = 1;
                  if (v24)
                  {
                    v27 = 2;
                  }

                  v28 = (v26 << v27) + [v16 indexBufferOffset];
                  if (v28 > [objc_msgSend(v16 "indexBuffer")])
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_84();
                  }
                }

                else
                {
                  v69 = [v16 vertexBufferOffset];
                  if (v69 > [objc_msgSend(v16 "vertexBuffer")])
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_85(v16);
                  }

                  v70 = [v16 vertexStride];
                  v71 = [v16 vertexFormat];
                  if (!v70)
                  {
                    v70 = MTLAttributeFormatSize(v71);
                  }

                  v72 = 3 * v70 * [v16 triangleCount];
                  v73 = [objc_msgSend(v16 "vertexBuffer")];
                  if (v73 - [v16 vertexBufferOffset] < v72)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_86();
                  }
                }
              }

              v56 = [v16 triangleCount];
              goto LABEL_136;
            }

            v29 = objc_opt_class();
            if ([v29 isSubclassOfClass:objc_opt_class()])
            {
              if ([v16 intersectionFunctionTableOffset] >> 24)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_66(v16);
              }

              checkMotionParameter(a1, v4);
              v30 = [v4 motionKeyframeCount];
              if (v30 != [objc_msgSend(v16 "vertexBuffers")])
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_67(v4);
              }

              v31 = [v16 vertexFormat];
              v32 = [v16 vertexStride];
              if (MTLAttributeFormatComponentCount(v31) <= 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_68();
              }

              v33 = MTLAttributeFormatSize(v31);
              if (v32 && v33 > v32)
              {
                v153 = v32;
                v155 = v33;
                MTLReportFailure();
              }

              v34 = MTLAttributeFormatAlignment(v31);
              if (v32 % v34)
              {
                v153 = v32;
                v155 = v34;
                MTLReportFailure();
              }

              v35 = [v16 transformationMatrixBuffer];
              v36 = [v16 transformationMatrixBufferOffset];
              checkBuffer(a1, v35, v36, 1);
              if (v35)
              {
                if (v36 + 48 > [v35 length])
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_69(v35);
                }

                if ((v36 & 3) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_70();
                }
              }

              if ([v16 transformationMatrixLayout] == 1 && (objc_msgSend(a1, "supportsRayTracingMatrixLayout") & 1) == 0)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_71();
              }

              v37 = [v16 vertexStride];
              v38 = [v16 vertexFormat];
              if (!v37)
              {
                v37 = MTLAttributeFormatSize(v38);
              }

              v157 = v37;
              v39 = [v16 triangleCount];
              if (a3)
              {
                v40 = v39;
                v189 = 0u;
                v190 = 0u;
                v187 = 0u;
                v188 = 0u;
                v41 = [v16 vertexBuffers];
                v42 = [v41 countByEnumeratingWithState:&v187 objects:v200 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v188;
                  do
                  {
                    for (i = 0; i != v43; ++i)
                    {
                      if (*v188 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      v46 = *(*(&v187 + 1) + 8 * i);
                      checkBuffer(a1, [v46 buffer], objc_msgSend(v46, "offset"), 0);
                      if (([v46 offset] & 3) != 0)
                      {
                        checkAccelerationStructureDescriptorWithRefitOptions_cold_72(v46);
                      }
                    }

                    v43 = [v41 countByEnumeratingWithState:&v187 objects:v200 count:16];
                  }

                  while (v43);
                }

                if ([v16 indexBuffer])
                {
                  checkBuffer(a1, [v16 indexBuffer], objc_msgSend(v16, "indexBufferOffset"), 1);
                  v47 = [v16 indexType];
                  if (v47)
                  {
                    v48 = 4;
                  }

                  else
                  {
                    v48 = 2;
                  }

                  if (((v48 - 1) & [v16 indexBufferOffset]) != 0)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_73(v16);
                  }

                  v49 = 3 * [v16 triangleCount];
                  v50 = 1;
                  if (v47)
                  {
                    v50 = 2;
                  }

                  v51 = (v49 << v50) + [v16 indexBufferOffset];
                  if (v51 > [objc_msgSend(v16 "indexBuffer")])
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_74();
                  }
                }

                else
                {
                  v185 = 0u;
                  v186 = 0u;
                  v183 = 0u;
                  v184 = 0u;
                  v88 = [v16 vertexBuffers];
                  v89 = [v88 countByEnumeratingWithState:&v183 objects:v199 count:16];
                  if (v89)
                  {
                    v90 = v89;
                    v91 = *v184;
                    do
                    {
                      for (j = 0; j != v90; ++j)
                      {
                        if (*v184 != v91)
                        {
                          objc_enumerationMutation(v88);
                        }

                        v93 = *(*(&v183 + 1) + 8 * j);
                        v94 = [v93 offset];
                        if (v94 > [objc_msgSend(v93 "buffer")])
                        {
                          checkAccelerationStructureDescriptorWithRefitOptions_cold_75(v93);
                        }

                        v95 = [objc_msgSend(v93 "buffer")];
                        if (v95 - [v93 offset] < (3 * v157 * v40))
                        {
                          checkAccelerationStructureDescriptorWithRefitOptions_cold_76(v16);
                        }
                      }

                      v90 = [v88 countByEnumeratingWithState:&v183 objects:v199 count:16];
                    }

                    while (v90);
                  }
                }
              }

              v68 = [v16 triangleCount];
LABEL_187:
              v4 = v158;
              goto LABEL_188;
            }

            v52 = objc_opt_class();
            if ([v52 isSubclassOfClass:objc_opt_class()])
            {
              if ([v16 boundingBoxStride] <= 0x17)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_62(v16);
              }

              if (([v16 boundingBoxStride] & 3) != 0)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_63(v16);
              }

              if (a3)
              {
                checkBuffer(a1, [v16 boundingBoxBuffer], objc_msgSend(v16, "boundingBoxBufferOffset"), 0);
                if (([v16 boundingBoxBufferOffset] & 3) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_64(v16);
                }

                v53 = [objc_msgSend(v16 "boundingBoxBuffer")];
                v54 = [v16 boundingBoxBufferOffset];
                v55 = [v16 boundingBoxStride];
                if (v53 < v54 + [v16 boundingBoxCount] * v55)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_65(v16);
                }
              }

              v56 = [v16 boundingBoxCount];
              goto LABEL_136;
            }

            v57 = objc_opt_class();
            if ([v57 isSubclassOfClass:objc_opt_class()])
            {
              checkMotionParameter(a1, v4);
              v58 = [v4 motionKeyframeCount];
              if (v58 != [objc_msgSend(v16 "boundingBoxBuffers")])
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_57(v4);
              }

              if ([v16 boundingBoxStride] <= 0x17)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_58(v16);
              }

              if (([v16 boundingBoxStride] & 3) != 0)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_59(v16);
              }

              v181 = 0u;
              v182 = 0u;
              v179 = 0u;
              v180 = 0u;
              v59 = [v16 boundingBoxBuffers];
              v60 = [v59 countByEnumeratingWithState:&v179 objects:v198 count:16];
              if (v60)
              {
                v61 = v60;
                v62 = *v180;
                do
                {
                  for (k = 0; k != v61; ++k)
                  {
                    if (*v180 != v62)
                    {
                      objc_enumerationMutation(v59);
                    }

                    if (a3)
                    {
                      v64 = *(*(&v179 + 1) + 8 * k);
                      checkBuffer(a1, [v64 buffer], objc_msgSend(v64, "offset"), 0);
                      if (([v64 offset] & 3) != 0)
                      {
                        checkAccelerationStructureDescriptorWithRefitOptions_cold_60(v16);
                      }

                      v65 = [objc_msgSend(v64 "buffer")];
                      v66 = [v64 offset];
                      v67 = [v16 boundingBoxStride];
                      if (v65 < v66 + [v16 boundingBoxCount] * v67)
                      {
                        checkAccelerationStructureDescriptorWithRefitOptions_cold_61();
                      }
                    }
                  }

                  v61 = [v59 countByEnumeratingWithState:&v179 objects:v198 count:16];
                }

                while (v61);
              }

              v68 = [v16 boundingBoxCount];
              goto LABEL_187;
            }

            v74 = objc_opt_class();
            if ([v74 isSubclassOfClass:objc_opt_class()])
            {
              if ([v16 intersectionFunctionTableOffset] >> 24)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_48(v16);
              }

              checkCurveBasis([v16 curveBasis], objc_msgSend(v16, "segmentControlPointCount"));
              if ([v16 curveType] && objc_msgSend(v16, "curveType") != 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_49();
              }

              if ([v16 endCaps] && objc_msgSend(v16, "endCaps") != 1 && objc_msgSend(v16, "endCaps") != 2)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_50();
              }

              v75 = [v16 controlPointFormat];
              v76 = [v16 controlPointStride];
              if (MTLAttributeFormatComponentCount(v75) <= 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_41();
              }

              v77 = MTLAttributeFormatSize(v75);
              if (v76 && v77 > v76)
              {
                v153 = v76;
                v155 = v77;
                MTLReportFailure();
              }

              v78 = MTLAttributeFormatAlignment(v75);
              if (v76 % v78)
              {
                v153 = v76;
                v155 = v78;
                MTLReportFailure();
              }

              v79 = [v16 radiusFormat];
              v80 = [v16 radiusStride];
              if (MTLAttributeFormatComponentCount(v79) != 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_42();
              }

              v81 = MTLAttributeFormatSize(v79);
              if (v80 && v81 > v80)
              {
                v154 = v80;
                v156 = v81;
                MTLReportFailure();
              }

              v82 = MTLAttributeFormatAlignment(v79);
              if (v80 % v82)
              {
                v154 = v80;
                v156 = v82;
                MTLReportFailure();
              }

              if (v159)
              {
                checkBuffer(a1, [v16 controlPointBuffer], objc_msgSend(v16, "controlPointBufferOffset"), 0);
                checkBuffer(a1, [v16 radiusBuffer], objc_msgSend(v16, "radiusBufferOffset"), 0);
                checkBuffer(a1, [v16 indexBuffer], objc_msgSend(v16, "indexBufferOffset"), 0);
                if (([v16 controlPointBufferOffset] & 3) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_53(v16);
                }

                if (([v16 radiusBufferOffset] & 3) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_54(v16);
                }

                v83 = [v16 indexType];
                if (v83)
                {
                  v84 = 4;
                }

                else
                {
                  v84 = 2;
                }

                if (((v84 - 1) & [v16 indexBufferOffset]) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_55(v16);
                }

                v85 = [v16 segmentCount];
                v86 = 1;
                if (v83)
                {
                  v86 = 2;
                }

                v87 = (v85 << v86) + [v16 indexBufferOffset];
                if (v87 > [objc_msgSend(v16 "indexBuffer")])
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_56();
                }
              }

LABEL_248:
              v56 = [v16 segmentCount];
LABEL_136:
              v68 = v56;
              goto LABEL_188;
            }

            v96 = objc_opt_class();
            if ([v96 isSubclassOfClass:objc_opt_class()])
            {
              if ([v16 intersectionFunctionTableOffset] >> 24)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_37(v16);
              }

              checkCurveBasis([v16 curveBasis], objc_msgSend(v16, "segmentControlPointCount"));
              if ([v16 curveType] && objc_msgSend(v16, "curveType") != 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_38();
              }

              if ([v16 endCaps] && objc_msgSend(v16, "endCaps") != 1 && objc_msgSend(v16, "endCaps") != 2)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_39();
              }

              checkMotionParameter(a1, v4);
              v97 = [v4 motionKeyframeCount];
              if (v97 != [objc_msgSend(v16 "controlPointBuffers")])
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_40(v4);
              }

              v98 = [v16 controlPointFormat];
              v99 = [v16 controlPointStride];
              if (MTLAttributeFormatComponentCount(v98) <= 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_41();
              }

              v100 = MTLAttributeFormatSize(v98);
              if (v99 && v100 > v99)
              {
                v153 = v99;
                v155 = v100;
                MTLReportFailure();
              }

              v101 = MTLAttributeFormatAlignment(v98);
              if (v99 % v101)
              {
                v153 = v99;
                v155 = v101;
                MTLReportFailure();
              }

              v102 = [v16 radiusFormat];
              v103 = [v16 radiusStride];
              if (MTLAttributeFormatComponentCount(v102) != 1)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_42();
              }

              v104 = MTLAttributeFormatSize(v102);
              if (v103 && v104 > v103)
              {
                v154 = v103;
                v156 = v104;
                MTLReportFailure();
              }

              v105 = MTLAttributeFormatAlignment(v102);
              if (v103 % v105)
              {
                v154 = v103;
                v156 = v105;
                MTLReportFailure();
              }

              if (a3)
              {
                v106 = [objc_msgSend(v16 "controlPointBuffers")];
                if (v106 != [objc_msgSend(v16 "radiusBuffers")])
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_43(v16);
                }

                v177 = 0u;
                v178 = 0u;
                v175 = 0u;
                v176 = 0u;
                v107 = [v16 controlPointBuffers];
                v108 = [v107 countByEnumeratingWithState:&v175 objects:v197 count:16];
                if (v108)
                {
                  v109 = v108;
                  v110 = *v176;
                  do
                  {
                    for (m = 0; m != v109; ++m)
                    {
                      if (*v176 != v110)
                      {
                        objc_enumerationMutation(v107);
                      }

                      v112 = *(*(&v175 + 1) + 8 * m);
                      checkBuffer(a1, [v112 buffer], objc_msgSend(v112, "offset"), 0);
                      if (([v112 offset] & 3) != 0)
                      {
                        checkAccelerationStructureDescriptorWithRefitOptions_cold_44(v112);
                      }
                    }

                    v109 = [v107 countByEnumeratingWithState:&v175 objects:v197 count:16];
                  }

                  while (v109);
                }

                v173 = 0u;
                v174 = 0u;
                v171 = 0u;
                v172 = 0u;
                v113 = [v16 radiusBuffers];
                v114 = [v113 countByEnumeratingWithState:&v171 objects:v196 count:16];
                if (v114)
                {
                  v115 = v114;
                  v116 = *v172;
                  do
                  {
                    for (n = 0; n != v115; ++n)
                    {
                      if (*v172 != v116)
                      {
                        objc_enumerationMutation(v113);
                      }

                      v118 = *(*(&v171 + 1) + 8 * n);
                      checkBuffer(a1, [v118 buffer], objc_msgSend(v118, "offset"), 0);
                      if (([v118 offset] & 3) != 0)
                      {
                        checkAccelerationStructureDescriptorWithRefitOptions_cold_45(v118);
                      }
                    }

                    v115 = [v113 countByEnumeratingWithState:&v171 objects:v196 count:16];
                  }

                  while (v115);
                }

                checkBuffer(a1, [v16 indexBuffer], objc_msgSend(v16, "indexBufferOffset"), 1);
                v119 = [v16 indexType];
                if (v119)
                {
                  v120 = 4;
                }

                else
                {
                  v120 = 2;
                }

                if (((v120 - 1) & [v16 indexBufferOffset]) != 0)
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_46(v16);
                }

                v121 = [v16 segmentCount];
                v122 = 1;
                if (v119)
                {
                  v122 = 2;
                }

                v123 = (v121 << v122) + [v16 indexBufferOffset];
                if (v123 > [objc_msgSend(v16 "indexBuffer")])
                {
                  checkAccelerationStructureDescriptorWithRefitOptions_cold_47();
                }
              }

              goto LABEL_248;
            }

            MTLReportFailure();
            v68 = 0;
LABEL_188:
            if ((a4 & 2) != 0)
            {
              checkPrimitiveData(a1, v16, v68);
            }

            v14 = v68 + v165;
            v15 = v164 + 1;
          }

          while (v164 + 1 != v163);
          v124 = [obj countByEnumeratingWithState:&v191 objects:v201 count:16];
          v163 = v124;
        }

        while (v124);
      }

      result = [v4 usage];
      if ((result & 4) != 0)
      {
        if (v14 >> 30)
        {
          result = checkAccelerationStructureDescriptorWithRefitOptions_cold_87();
        }
      }

      else if (v14 >> 28)
      {
        result = checkAccelerationStructureDescriptorWithRefitOptions_cold_88();
      }

      goto LABEL_352;
    }

    v11 = objc_opt_class();
    if ([v11 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [v4 usage];
      v13 = [v4 instanceCount];
      if ((v12 & 4) != 0)
      {
        if (v13 >> 30)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_18(v4);
        }
      }

      else if (v13 >> 24)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_19(v4);
      }

      if ((isValidMTLAccelerationStructureInstanceDescriptorType([v4 instanceDescriptorType]) & 1) == 0)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_20(v4);
      }

      v128 = MTLAccelerationStructureInstanceDescriptorSize([v4 instanceDescriptorType]);
      if ([v4 instanceDescriptorStride] < v128)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_21(v4);
      }

      if (([v4 instanceDescriptorStride] & 3) != 0)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_22(v4);
      }

      result = [v4 instanceTransformationMatrixLayout];
      if (result == 1)
      {
        result = [a1 supportsRayTracingMatrixLayout];
        if ((result & 1) == 0)
        {
          result = checkAccelerationStructureDescriptorWithRefitOptions_cold_23();
        }
      }

      if (a3)
      {
        checkBuffer(a1, [v4 instanceDescriptorBuffer], objc_msgSend(v4, "instanceDescriptorBufferOffset"), 0);
        if (([v4 instanceDescriptorBufferOffset] & 3) != 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_24(v4);
        }

        v129 = [objc_msgSend(v4 "instanceDescriptorBuffer")];
        v130 = [v4 instanceDescriptorBufferOffset];
        v131 = [v4 instanceDescriptorStride];
        if (v129 < v130 + [v4 instanceCount] * v131)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_25(v4);
        }

        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v132 = [v4 instancedAccelerationStructures];
        v133 = [v132 countByEnumeratingWithState:&v167 objects:v195 count:16];
        if (v133)
        {
          v134 = v133;
          v135 = *v168;
          do
          {
            for (ii = 0; ii != v134; ++ii)
            {
              if (*v168 != v135)
              {
                objc_enumerationMutation(v132);
              }

              checkAccelerationStructure(a1, *(*(&v167 + 1) + 8 * ii), 0);
            }

            v134 = [v132 countByEnumeratingWithState:&v167 objects:v195 count:16];
          }

          while (v134);
        }

        if ([v4 instanceCount])
        {
          if ([v4 instanceDescriptorType] == 3 || objc_msgSend(v4, "instanceDescriptorType") == 4)
          {
            if ([v4 instancedAccelerationStructures])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_27();
            }
          }

          else if (![objc_msgSend(v4 "instancedAccelerationStructures")])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_26();
          }
        }

        if ([v4 instanceDescriptorType] == 2 || (result = objc_msgSend(v4, "instanceDescriptorType"), result == 4))
        {
          if ([v4 motionTransformType] == 1 && (objc_msgSend(a1, "supportsRayTracingPerComponentMotionInterpolation") & 1) == 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_28();
          }

          v148 = [v4 motionTransformType];
          if (v148)
          {
            v149 = (v148 == 1) << 6;
          }

          else
          {
            v149 = 48;
          }

          if ([v4 motionTransformStride])
          {
            if (([v4 motionTransformStride] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_29(v4);
            }

            if ([v4 motionTransformStride] < v149)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_30(v4);
            }

            v149 = [v4 motionTransformStride];
          }

          checkBuffer(a1, [v4 motionTransformBuffer], objc_msgSend(v4, "motionTransformBufferOffset"), 0);
          if (([v4 motionTransformBufferOffset] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_31(v4);
          }

          v150 = [objc_msgSend(v4 "motionTransformBuffer")];
          v151 = [v4 motionTransformBufferOffset];
          result = [v4 motionTransformCount];
          if (v150 < v151 + result * v149)
          {
            result = checkAccelerationStructureDescriptorWithRefitOptions_cold_32();
          }
        }
      }

LABEL_352:
      v152 = *MEMORY[0x277D85DE8];
      return result;
    }

    v125 = objc_opt_class();
    if ([v125 isSubclassOfClass:objc_opt_class()])
    {
      v126 = [v4 usage];
      v127 = [v4 maxInstanceCount];
      if ((v126 & 4) != 0)
      {
        if (v127 >> 30)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_1(v4);
        }
      }

      else if (v127 >> 24)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_2(v4);
      }

      if ([v4 instanceDescriptorType] != 3 && objc_msgSend(v4, "instanceDescriptorType") != 4)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_3(v4);
      }

      v138 = MTLAccelerationStructureInstanceDescriptorSize([v4 instanceDescriptorType]);
      if ([v4 instanceDescriptorStride] < v138)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_4(v4);
      }

      if (([v4 instanceDescriptorStride] & 3) != 0)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_5(v4);
      }

      result = [v4 instanceTransformationMatrixLayout];
      if (result == 1)
      {
        result = [a1 supportsRayTracingMatrixLayout];
        if ((result & 1) == 0)
        {
          result = checkAccelerationStructureDescriptorWithRefitOptions_cold_6();
        }
      }

      if (a3)
      {
        checkBuffer(a1, [v4 instanceDescriptorBuffer], objc_msgSend(v4, "instanceDescriptorBufferOffset"), 0);
        if (([v4 instanceDescriptorBufferOffset] & 0x3F) != 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_7(v4);
        }

        v139 = [objc_msgSend(v4 "instanceDescriptorBuffer")];
        v140 = [v4 instanceDescriptorBufferOffset];
        v141 = [v4 instanceDescriptorStride];
        if (v139 < v140 + [v4 maxInstanceCount] * v141)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_8(v4);
        }

        checkBuffer(a1, [v4 instanceCountBuffer], objc_msgSend(v4, "instanceCountBufferOffset"), 0);
        if (([v4 instanceCountBufferOffset] & 3) != 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_9(v4);
        }

        v142 = [objc_msgSend(v4 "instanceCountBuffer")];
        if (v142 < [v4 instanceCountBufferOffset] + 4)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_10(v4);
        }

        if ([v4 instanceDescriptorType] == 2 || (result = objc_msgSend(v4, "instanceDescriptorType"), result == 4))
        {
          if ([v4 motionTransformType] == 1 && (objc_msgSend(a1, "supportsRayTracingPerComponentMotionInterpolation") & 1) == 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_11();
          }

          v143 = [v4 motionTransformType];
          if (v143)
          {
            v144 = (v143 == 1) << 6;
          }

          else
          {
            v144 = 48;
          }

          if ([v4 motionTransformStride])
          {
            if (([v4 motionTransformStride] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_12(v4);
            }

            if ([v4 motionTransformStride] < v144)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_13(v4);
            }

            v144 = [v4 motionTransformStride];
          }

          checkBuffer(a1, [v4 motionTransformBuffer], objc_msgSend(v4, "motionTransformBufferOffset"), 0);
          if (([v4 motionTransformBufferOffset] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_14(v4);
          }

          v145 = [objc_msgSend(v4 "motionTransformBuffer")];
          v146 = [v4 motionTransformBufferOffset];
          if (v145 < v146 + [v4 maxMotionTransformCount] * v144)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_15();
          }

          checkBuffer(a1, [v4 motionTransformCountBuffer], objc_msgSend(v4, "motionTransformCountBufferOffset"), 0);
          if (([v4 motionTransformCountBufferOffset] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_16(v4);
          }

          v147 = [objc_msgSend(v4 "motionTransformCountBuffer")];
          result = [v4 motionTransformCountBufferOffset];
          if (v147 < result + 4)
          {
            result = checkAccelerationStructureDescriptorWithRefitOptions_cold_17(v4);
          }
        }
      }

      goto LABEL_352;
    }

    v137 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];
  }

  return MTLReportFailure();
}

uint64_t checkCurveBasis(uint64_t result, uint64_t a2)
{
  if (result > 1)
  {
    if (result == 2)
    {
      if (a2 != 2)
      {
        return checkCurveBasis();
      }
    }

    else
    {
      if (result != 3)
      {
LABEL_10:

        return MTLReportFailure();
      }

      if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        return checkCurveBasis();
      }
    }
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        if (a2 != 4)
        {
          return checkCurveBasis();
        }

        return result;
      }

      goto LABEL_10;
    }

    if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      return checkCurveBasis();
    }
  }

  return result;
}

__CFString *MTLDebugStageToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4BA0[a1];
  }
}

uint64_t MTLRenderStagesToDebugStage(uint64_t a1)
{
  v1 = __ROR8__(a1 - 2, 1);
  if (v1 > 7)
  {
    return 2;
  }

  else
  {
    return qword_22E27C290[v1];
  }
}

BOOL MTLDebugStageIsRenderStage(uint64_t a1, unint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFBLL) == 0;
  v3 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0;
  v4 = (a2 & 0xFFFFFFFFFFFFFFEFLL) == 0;
  if (a1 != 6)
  {
    v4 = 0;
  }

  if (a1 != 5)
  {
    v3 = v4;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  v5 = a2 < 2;
  v6 = (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  if (a1 != 3)
  {
    v6 = 0;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  if (a1 <= 3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t newDebugFunctionHandleWithFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __newDebugFunctionHandleWithFunction_block_invoke;
  v7[3] = &unk_2787B3E50;
  v7[4] = a2;
  v7[5] = a4;
  v7[6] = a3;
  v7[7] = a5;
  return [v5 getCachedObjectForKey:a2 onMiss:v7];
}

uint64_t __newDebugFunctionHandleWithFunction_block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 function:v5 stage:v6];
}

uint64_t newDebugFunctionHandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __newDebugFunctionHandle_block_invoke;
  v6[3] = &unk_2787B3E28;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  return [v4 getCachedObjectForKey:a2 onMiss:v6];
}

uint64_t __newDebugFunctionHandle_block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 stage:v5];
}

uint64_t newDebugFunctionHandleWithBinaryFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __newDebugFunctionHandleWithBinaryFunction_block_invoke;
  v7[3] = &unk_2787B3E50;
  v7[4] = a2;
  v7[5] = a4;
  v7[6] = a3;
  v7[7] = a5;
  return [v5 getCachedObjectForKey:a2 onMiss:v7];
}

uint64_t __newDebugFunctionHandleWithBinaryFunction_block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 binaryFunction:v5 stage:v6];
}

uint64_t validateNewDynamicLibraryWithURL(NSURL *a1, _MTLMessageContext *a2)
{
  if (a1)
  {
    result = [(NSURL *)a1 isFileURL];
    if ((result & 1) == 0)
    {
      result = _MTLMessageContextPush_();
    }

    if (a2->var0 <= 0)
    {
      v5 = 0;
      result = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      if (!result || v5 == 1)
      {
        return _MTLMessageContextPush_();
      }
    }
  }

  else
  {

    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t addReflectionOption(void *a1)
{
  v2 = [a1 options];
  if (!v2)
  {
    v2 = objc_opt_new();
  }

  [v2 setShaderReflection:{objc_msgSend(v2, "shaderReflection") | 1}];

  return [a1 setOptions:v2];
}

uint64_t validateUnspecializedProperties(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    v5 = a2;

    return validateUnspecializedProperties<MTL4RenderPipelineDescriptor>(v4, v5);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = a1;
    v5 = a2;

    return validateUnspecializedProperties<MTL4RenderPipelineDescriptor>(v4, v5);
  }

  return result;
}

uint64_t validateUnspecializedProperties<MTL4RenderPipelineDescriptor>(uint64_t a1, void *a2)
{
  for (i = 0; i != 8; ++i)
  {
    v4 = [objc_msgSend(a2 "colorAttachments")];
    if ([v4 blendingState] == 2)
    {
      [v4 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
LABEL_4:
      result = _MTLMessageContextPush_();
      continue;
    }

    result = [v4 blendingState];
    if (!result)
    {
      result = [v4 sourceRGBBlendFactor];
      if (result != 19)
      {
        result = [v4 destinationRGBBlendFactor];
        if (result != 19)
        {
          result = [v4 sourceAlphaBlendFactor];
          if (result != 19)
          {
            result = [v4 destinationAlphaBlendFactor];
            if (result != 19)
            {
              result = [v4 rgbBlendOperation];
              if (result != 5)
              {
                result = [v4 alphaBlendOperation];
                if (result != 5)
                {
                  goto LABEL_4;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t validateMTL4RenderPipelineDescriptor(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a2 vertexFunctionDescriptor])
    {
      goto LABEL_3;
    }

LABEL_20:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![a2 tileFunctionDescriptor])
    {
      _MTLMessageContextPush_();
    }

    if (hasUnspecializedProperties(a2))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    _MTLMessageContextPush_();
    goto LABEL_15;
  }

  if (![a2 meshFunctionDescriptor])
  {
    goto LABEL_20;
  }

LABEL_3:
  if (([a2 isRasterizationEnabled] & 1) == 0 && objc_msgSend(a2, "fragmentFunctionDescriptor"))
  {
    goto LABEL_14;
  }

LABEL_15:
  result = hasUnspecializedProperties(a2);
  if (result)
  {

    return validateUnspecializedProperties(a1, a2);
  }

  return result;
}

uint64_t hasUnspecializedProperties(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;

    return hasUnspecializedProperties<MTL4RenderPipelineDescriptor>(v2);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;

    return hasUnspecializedProperties<MTL4RenderPipelineDescriptor>(v2);
  }

  return 0;
}

uint64_t hasUnspecializedProperties<MTL4RenderPipelineDescriptor>(void *a1)
{
  if ([a1 alphaToCoverageState] != 2 && objc_msgSend(a1, "alphaToOneState") != 2)
  {
    v3 = -1;
    while (1)
    {
      v4 = [objc_msgSend(a1 "colorAttachments")];
      if ([v4 pixelFormat] == 263 || objc_msgSend(v4, "pixelFormat") && (objc_msgSend(v4, "blendingState") == 2 || objc_msgSend(v4, "blendingState") == 1 && (objc_msgSend(v4, "sourceRGBBlendFactor") == 19 || objc_msgSend(v4, "destinationRGBBlendFactor") == 19 || objc_msgSend(v4, "sourceAlphaBlendFactor") == 19 || objc_msgSend(v4, "destinationAlphaBlendFactor") == 19 || objc_msgSend(v4, "rgbBlendOperation") == 5 || objc_msgSend(v4, "alphaBlendOperation") == 5) || (objc_msgSend(v4, "writeMask") & 0x10) != 0))
      {
        break;
      }

      if (++v3 == 7)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t specializeMTL4PipelineDescriptor<MTL4RenderPipelineDescriptor>(void *a1, void *a2)
{
  if ([a1 alphaToCoverageState] == 2)
  {
    if ([a2 alphaToCoverageState] == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [a2 alphaToCoverageState];
    }

    [a1 setAlphaToCoverageState:v4];
  }

  if ([a1 alphaToOneState] == 2)
  {
    if ([a2 alphaToOneState] == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [a2 alphaToOneState];
    }

    [a1 setAlphaToOneState:v5];
  }

  for (i = 0; i != 8; ++i)
  {
    v7 = [objc_msgSend(a1 "colorAttachments")];
    v8 = [objc_msgSend(a2 "colorAttachments")];
    if ([v7 pixelFormat] == 263)
    {
      if ([v8 pixelFormat] == 263)
      {
        v9 = 0;
      }

      else
      {
        v9 = [v8 pixelFormat];
      }

      [v7 setPixelFormat:v9];
    }

    if ([v7 blendingState] == 2)
    {
      if ([v8 blendingState] == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v8 blendingState];
      }

      [v7 setBlendingState:v10];
    }

    if ([v7 sourceRGBBlendFactor] == 19)
    {
      if ([v8 sourceRGBBlendFactor] == 19)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v8 sourceRGBBlendFactor];
      }

      [v7 setSourceRGBBlendFactor:v11];
    }

    if ([v7 destinationRGBBlendFactor] == 19)
    {
      if ([v8 destinationRGBBlendFactor] == 19)
      {
        v12 = 1;
      }

      else
      {
        v12 = [v8 destinationRGBBlendFactor];
      }

      [v7 setDestinationRGBBlendFactor:v12];
    }

    if ([v7 sourceAlphaBlendFactor] == 19)
    {
      if ([v8 sourceAlphaBlendFactor] == 19)
      {
        v13 = 1;
      }

      else
      {
        v13 = [v8 sourceAlphaBlendFactor];
      }

      [v7 setSourceAlphaBlendFactor:v13];
    }

    if ([v7 destinationAlphaBlendFactor] == 19)
    {
      if ([v8 destinationAlphaBlendFactor] == 19)
      {
        v14 = 1;
      }

      else
      {
        v14 = [v8 destinationAlphaBlendFactor];
      }

      [v7 setDestinationAlphaBlendFactor:v14];
    }

    if ([v7 rgbBlendOperation] == 5)
    {
      if ([v8 rgbBlendOperation] == 5)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v8 rgbBlendOperation];
      }

      [v7 setRgbBlendOperation:v15];
    }

    if ([v7 alphaBlendOperation] == 5)
    {
      if ([v8 alphaBlendOperation] == 5)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v8 alphaBlendOperation];
      }

      [v7 setAlphaBlendOperation:v16];
    }

    result = [v7 writeMask];
    if ((result & 0x10) != 0)
    {
      if (([v8 writeMask] & 0x10) != 0)
      {
        v18 = 15;
      }

      else
      {
        v18 = [v8 writeMask];
      }

      result = [v7 setWriteMask:{objc_msgSend(v7, "writeMask") | v18}];
    }
  }

  return result;
}

void sub_22E1C18C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__9(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__10(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22E1C1EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_handle_merge_unique[abi:ne200100]<std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>>(uint64_t *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 4);
      result = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_unique_prepare[abi:ne200100](v4, v5, v2 + 4);
      v6 = *v2;
      if (!result)
      {
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a2, v2, v7);
        v2[1] = v5;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::__node_insert_unique_perform[abi:ne200100](v4, v2);
      }

      v2 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

void emitRenderPipelineUsage(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277CD7168];
    while (1)
    {
      v7 = *(v5 + 7);
      if (v7)
      {
        if (!*v6)
        {
          goto LABEL_7;
        }

        if (*v6 == 1)
        {
          break;
        }
      }

LABEL_9:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    printf("\n\nRenderPipelineUsage, pipelineID=%u, vertexShaderID=%u, fragmentShaderID=%u, usageCount=%u", *(v5 + 4), *(v5 + 5), *(v5 + 6), v7);
LABEL_7:
    v8 = [a1 telemetryLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 4);
      v10 = *(v5 + 5);
      v11 = *(v5 + 6);
      v12 = *(v5 + 7);
      *buf = 67109888;
      v34 = v9;
      v35 = 1024;
      *v36 = v10;
      *&v36[4] = 1024;
      *&v36[6] = v11;
      *v37 = 1024;
      *&v37[2] = v12;
      _os_log_impl(&dword_22E0FF000, v8, OS_LOG_TYPE_DEFAULT, "RenderPipelineUsage, pipelineID=%u, vertexShaderID=%u, fragmentShaderID=%u, usageCount=%u", buf, 0x1Au);
    }

    goto LABEL_9;
  }

LABEL_10:
  context = objc_autoreleasePoolPush();
  v13 = *(a3 + 16);
  if (v13)
  {
    while (1)
    {
      v14 = [MEMORY[0x277CCAB68] string];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v13[5];
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v14 appendFormat:@"%s=%u, ", objc_msgSend(*(*(&v29 + 1) + 8 * i), "UTF8String"), objc_msgSend(objc_msgSend(v13[5], "objectForKey:", *(*(&v29 + 1) + 8 * i)), "unsignedIntegerValue")];
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v17);
      }

      if ([v14 length] >= 2)
      {
        [v14 deleteCharactersInRange:{objc_msgSend(v14, "length") - 2, 2}];
      }

      v20 = *(v13 + 8);
      if (!v20)
      {
        goto LABEL_32;
      }

      if (!*MEMORY[0x277CD7168])
      {
        goto LABEL_27;
      }

      if (*MEMORY[0x277CD7168] == 1)
      {
        break;
      }

LABEL_32:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    if (v13[3] == 1)
    {
      v21 = "vertex";
    }

    else
    {
      v21 = "fragment";
    }

    printf("\n\nFunctionUsage, functionID=%u, type=%s, usageCount=%u, %s", *(v13 + 4), v21, v20, [v14 UTF8String]);
LABEL_27:
    v22 = [a1 telemetryLog];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v13 + 4);
      if (v13[3] == 1)
      {
        v24 = "vertex";
      }

      else
      {
        v24 = "fragment";
      }

      v25 = *(v13 + 8);
      v26 = [v14 UTF8String];
      *buf = 67109890;
      v34 = v23;
      v35 = 2080;
      *v36 = v24;
      *&v36[8] = 1024;
      *v37 = v25;
      *&v37[4] = 2080;
      v38 = v26;
      _os_log_impl(&dword_22E0FF000, v22, OS_LOG_TYPE_DEFAULT, "FunctionUsage, functionID=%u, type=%s, usageCount=%u, %s", buf, 0x22u);
    }

    goto LABEL_32;
  }

LABEL_33:
  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];
}

void emitRenderPipelineStats(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CCAB68] stringWithString:{@"VertexFunctionStats, "}];
  for (i = *(a2 + 16); i; i = *i)
  {
    v11 = i + 2;
    if (*(i + 39) < 0)
    {
      v11 = *v11;
    }

    [v9 appendFormat:@"min%s=%u, max%s=%u, avg%s=%f, total%s=%llu, count%s=%u, ", v11, *(i + 10), v11, *(i + 11), v11, (i[6] / *(i + 14)), v11, i[6], v11, *(i + 14)];
  }

  if ([v9 length] > 1)
  {
    [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 2, 2}];
  }

  v12 = MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      goto LABEL_12;
    }

    printf("\n\n%s", [v9 UTF8String]);
  }

  v13 = [a1 telemetryLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v56 = [v9 UTF8String];
    _os_log_impl(&dword_22E0FF000, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_12:
  v14 = [MEMORY[0x277CCAB68] stringWithString:{@"FragmentFunctionStats, "}];
  for (j = *(a3 + 16); j; j = *j)
  {
    v16 = j + 2;
    if (*(j + 39) < 0)
    {
      v16 = *v16;
    }

    [v14 appendFormat:@"min%s=%u, max%s=%u, avg%s=%f, total%s=%llu, count%s=%u, ", v16, *(j + 10), v16, *(j + 11), v16, (j[6] / *(j + 14)), v16, j[6], v16, *(j + 14)];
  }

  if ([v14 length] > 1)
  {
    [v14 deleteCharactersInRange:{objc_msgSend(v14, "length") - 2, 2}];
  }

  if (*v12)
  {
    if (*v12 != 1)
    {
      goto LABEL_23;
    }

    printf("\n\n%s", [v14 UTF8String]);
  }

  v17 = [a1 telemetryLog];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v14 UTF8String];
    *buf = 136315138;
    *v56 = v18;
    _os_log_impl(&dword_22E0FF000, v17, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_23:
  objc_autoreleasePoolPop(v8);
  v19 = a4[30];
  if (v19)
  {
    if (*v12)
    {
      if (*v12 != 1)
      {
        goto LABEL_37;
      }

      v20 = a4[22];
      v21 = *(a4 + 10);
      v22 = 0.0;
      v23 = 0.0;
      if (v20)
      {
        v23 = (v21 / v20);
      }

      v24 = a4[16];
      if (v24)
      {
        v22 = (*(a4 + 7) / v24);
      }

      printf("\n\nRenderPipeline, total=%u, color0Blend=%u, color1Blend=%u, color2Blend=%u, color3Blend=%u, color4Blend=%u, color5Blend=%u, color6Blend=%u, color7Blend=%u, alphaTest=%u, alphaToOne=%u, alphaToCoverage=%u, fragmentUsesDiscard=%u, fragmentWritesSampleMask=%u, fragmentWritesDepth=%u, vertexRegisterSpill=%u, fragmentRegisterSpill=%u, fragmentReadsFramebufferValues=%u, minRasterSampleCount=%u, maxRasterSampleCount=%u, avgRasterSampleCount=%f, totalRasterSampleCount=%llu, countRasterSampleCount=%u, minColorSampleCount=%u, maxColorSampleCount=%u, avgColorSampleCount=%f, totalColorSampleCount=%llu, countColorSampleCount=%u", v19, *a4, a4[1], a4[2], a4[3], a4[4], a4[5], a4[6], a4[7], a4[8], a4[9], a4[10], a4[24], a4[25], a4[26], a4[27], a4[28], a4[29], a4[18], a4[19], v23, v21, v20, a4[12], a4[13], v22, *(a4 + 7), v24);
    }

    v25 = [a1 telemetryLog];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a4[22];
      v27 = *(a4 + 10);
      v28 = 0.0;
      v29 = 0.0;
      if (v26)
      {
        v29 = (v27 / v26);
      }

      v30 = a4[29];
      v31 = a4[30];
      v33 = *a4;
      v32 = a4[1];
      v35 = a4[2];
      v34 = a4[3];
      v37 = a4[4];
      v36 = a4[5];
      v39 = a4[6];
      v38 = a4[7];
      v41 = a4[8];
      v40 = a4[9];
      v42 = a4[10];
      v44 = a4[24];
      v43 = a4[25];
      v46 = a4[26];
      v45 = a4[27];
      v47 = a4[28];
      v49 = a4[18];
      v48 = a4[19];
      v51 = a4[12];
      v50 = a4[13];
      v52 = a4[16];
      v53 = *(a4 + 7);
      if (v52)
      {
        v28 = (v53 / v52);
      }

      *buf = 67116032;
      *v56 = v31;
      *&v56[4] = 1024;
      *&v56[6] = v33;
      v57 = 1024;
      v58 = v32;
      v59 = 1024;
      v60 = v35;
      v61 = 1024;
      v62 = v34;
      v63 = 1024;
      v64 = v37;
      v65 = 1024;
      v66 = v36;
      v67 = 1024;
      v68 = v39;
      v69 = 1024;
      v70 = v38;
      v71 = 1024;
      v72 = v41;
      v73 = 1024;
      v74 = v40;
      v75 = 1024;
      v76 = v42;
      v77 = 1024;
      v78 = v44;
      v79 = 1024;
      v80 = v43;
      v81 = 1024;
      v82 = v46;
      v83 = 1024;
      v84 = v45;
      v85 = 1024;
      v86 = v47;
      v87 = 1024;
      v88 = v30;
      v89 = 1024;
      v90 = v49;
      v91 = 1024;
      v92 = v48;
      v93 = 2048;
      v94 = v29;
      v95 = 2048;
      v96 = v27;
      v97 = 1024;
      v98 = v26;
      v99 = 1024;
      v100 = v51;
      v101 = 1024;
      v102 = v50;
      v103 = 2048;
      v104 = v28;
      v105 = 2048;
      v106 = v53;
      v107 = 1024;
      v108 = v52;
      _os_log_impl(&dword_22E0FF000, v25, OS_LOG_TYPE_DEFAULT, "RenderPipeline, total=%u, color0Blend=%u, color1Blend=%u, color2Blend=%u, color3Blend=%u, color4Blend=%u, color5Blend=%u, color6Blend=%u, color7Blend=%u, alphaTest=%u, alphaToOne=%u, alphaToCoverage=%u, fragmentUsesDiscard=%u, fragmentWritesSampleMask=%u, fragmentWritesDepth=%u, vertexRegisterSpill=%u, fragmentRegisterSpill=%u, fragmentReadsFramebufferValues=%u, minRasterSampleCount=%u, maxRasterSampleCount=%u, avgRasterSampleCount=%f, totalRasterSampleCount=%llu, countRasterSampleCount=%u, minColorSampleCount=%u, maxColorSampleCount=%u, avgColorSampleCount=%f, totalColorSampleCount=%llu, countColorSampleCount=%u", buf, 0xBAu);
    }
  }

LABEL_37:
  v54 = *MEMORY[0x277D85DE8];
}

void sub_22E1C358C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

void sub_22E1C5B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C5C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C5CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C6390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<objc_object  {objcproto10MTLTexture}*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22E1C640C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<objc_object  {objcproto15MTLSamplerState}*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22E1C6484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<objc_object  {objcproto20MTLDepthStencilState}*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22E1C64FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,MTLTextureType>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MemberRef::~MemberRef(MemberRef *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 2);
    std::vector<MemberRef>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x2318E4940](v2, 0x20C40960023A9);
  }
}

NSUInteger initMemberWithArrayType(MemberRef *a1, MTLArrayType *a2)
{
  v4 = [(MTLArrayType *)a2 elementType];
  if (v4 > MTLDataTypeRenderPipeline)
  {
    if (v4 > MTLDataTypeVisibleFunctionTable)
    {
      if (v4 <= MTLDataTypePrimitiveAccelerationStructure)
      {
        if (v4 == MTLDataTypeIntersectionFunctionTable)
        {
          v5 = 9;
        }

        else
        {
          v5 = 10;
        }

        goto LABEL_30;
      }

      if (v4 == MTLDataTypeInstanceAccelerationStructure)
      {
        v5 = 11;
        goto LABEL_30;
      }

      if (v4 == (MTLDataTypeFloat3x3|0x80))
      {
        v5 = 12;
        goto LABEL_30;
      }

LABEL_32:
      *a1 = 0;
      goto LABEL_31;
    }

    if (v4 == MTLDataTypeComputePipeline)
    {
      v5 = 6;
      goto LABEL_30;
    }

    if (v4 == MTLDataTypeIndirectCommandBuffer)
    {
      v5 = 7;
      goto LABEL_30;
    }

    if (v4 != MTLDataTypeVisibleFunctionTable)
    {
      goto LABEL_32;
    }

    v5 = 8;
LABEL_30:
    *a1 = v5;
    goto LABEL_31;
  }

  if (v4 > MTLDataTypeTexture)
  {
    if (v4 == MTLDataTypeSampler)
    {
      v5 = 2;
      goto LABEL_30;
    }

    if (v4 == MTLDataTypePointer)
    {
      v5 = 3;
      goto LABEL_30;
    }

    if (v4 != MTLDataTypeRenderPipeline)
    {
      goto LABEL_32;
    }

    v5 = 5;
    goto LABEL_30;
  }

  if (v4 == MTLDataTypeStruct)
  {
    *a1 = 4;
    operator new();
  }

  if (v4 != MTLDataTypeArray)
  {
    if (v4 != MTLDataTypeTexture)
    {
      goto LABEL_32;
    }

    v5 = 1;
    goto LABEL_30;
  }

  initMemberWithArrayType(a1, [(MTLArrayType *)a2 elementArrayType]);
LABEL_31:
  result = [(MTLArrayType *)a2 arrayLength];
  *(a1 + 3) *= result;
  return result;
}

uint64_t StructType::initWithStructType(StructType *this, MTLStructType *a2)
{
  v4 = [(NSArray *)[(MTLStructType *)a2 members] count];
  std::vector<MemberRef>::resize(this, v4);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)[(MTLStructType *)a2 members] objectAtIndexedSubscript:v6];
      v8 = *this;
      v9 = (*this + v5);
      v9[1] = [v7 indirectArgumentIndex];
      v9[2] = 1;
      v10 = [v7 dataType];
      if (v10 > 78)
      {
        break;
      }

      if (v10 > 58)
      {
        switch(v10)
        {
          case ';':
            v11 = 2;
            break;
          case '<':
            *v9 = 3;
            if ([objc_msgSend(v7 "pointerType")])
            {
              *(v8 + v5 + 24) = [objc_msgSend(v7 "pointerType")];
            }

            goto LABEL_31;
          case 'N':
            v11 = 5;
            break;
          default:
LABEL_36:
            *v9 = 0;
            goto LABEL_31;
        }

        goto LABEL_30;
      }

      switch(v10)
      {
        case 1:
          *(v8 + v5) = 4;
          operator new();
        case 2:
          initMemberWithArrayType(v9, [v7 arrayType]);
          break;
        case 58:
          *v9 = 1;
          break;
        default:
          goto LABEL_36;
      }

LABEL_31:
      ++v6;
      v5 += 32;
      if (v4 == v6)
      {
        return (*(*this + 32 * v4 - 28) + *(*this + 32 * v4 - 20) * *(*this + 32 * v4 - 24));
      }
    }

    if (v10 <= 115)
    {
      switch(v10)
      {
        case 'O':
          v11 = 6;
          break;
        case 'P':
          v11 = 7;
          break;
        case 's':
          v11 = 8;
          break;
        default:
          goto LABEL_36;
      }
    }

    else if (v10 > 117)
    {
      if (v10 == 118)
      {
        v11 = 11;
      }

      else
      {
        if (v10 != 139)
        {
          goto LABEL_36;
        }

        v11 = 12;
      }
    }

    else if (v10 == 116)
    {
      v11 = 9;
    }

    else
    {
      v11 = 10;
    }

LABEL_30:
    *v9 = v11;
    goto LABEL_31;
  }

  return (*(*this + 32 * v4 - 28) + *(*this + 32 * v4 - 20) * *(*this + 32 * v4 - 24));
}

void std::vector<MemberRef>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        MemberRef::~MemberRef((v3 - 32));
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<MemberRef>::__append(a1, v5);
  }
}

uint64_t StructType::findMemberContainingIndex(StructType *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, _MTLMessageContext *a6)
{
  v6 = *this;
  if (a3 != a4)
  {
    v7 = a4;
    while (1)
    {
      v8 = (a3 + v7) >> 1;
      v9 = (v6 + 32 * v8);
      v10 = v9[1];
      if (v10 <= a2)
      {
        if (v10 + v9[2] * v9[3] - 1 >= a2)
        {
          return (a3 + v7) >> 1;
        }

        LODWORD(a3) = v8 + 1;
      }

      else
      {
        v7 = (v8 - 1);
      }

      if (a3 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = a3;
LABEL_9:
  v11 = (v6 + 32 * v7);
  v12 = v11[1];
  if (v12 > a2 || v12 + v11[3] * v11[2] - 1 < a2)
  {
    _MTLMessageContextPush_();
  }

  return v7;
}

uint64_t StructType::findMemberAtIndex(StructType *this, unsigned int a2, unsigned int a3, _MTLMessageContext *a4)
{
  v6 = a2;
  v7 = this;
  var0 = a4->var0;
  v9 = ((*(this + 1) - *this) >> 5) - 1;
  while (1)
  {
    MemberContainingIndex = StructType::findMemberContainingIndex(this, a2, 0, v9, a3, a4);
    if (a4->var0 != var0)
    {
      break;
    }

    result = *v7 + 32 * MemberContainingIndex;
    v12 = *(result + 8);
    v13 = *(result + 12);
    if (v13)
    {
      v13 = (v6 - *(result + 4)) / v12;
    }

    if (*result != 4)
    {
      return result;
    }

    v7 = *(result + 16);
    v14 = *(result + 4) + v13 * v12;
    v6 -= v14;
    a3 += v14;
    v9 = ((*(v7 + 1) - *v7) >> 5) - 1;
    this = v7;
    a2 = v6;
  }

  return 0;
}

uint64_t StructType::indexRangeIsValueType(StructType *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, _MTLMessageContext *a6)
{
  v8 = a1;
  LODWORD(v9) = 0;
  var0 = a6->var0;
  v11 = ((*(a1 + 1) - *a1) >> 5) - 1;
  LODWORD(v12) = v11;
  do
  {
    v13 = (v12 + v9 + 1) >> 1;
    v14 = (*a1 + 32 * v13);
    v15 = v14[1];
    v16 = v15 + v14[3] * v14[2] - 1;
    if (v16 >= a3)
    {
      v17 = (v12 + v9 + 1) >> 1;
    }

    else
    {
      v17 = v12;
    }

    if (v15 <= a3)
    {
      v12 = v17;
    }

    else
    {
      v12 = (v13 - 1);
    }

    if (v15 <= a2)
    {
      v18 = v13;
    }

    else
    {
      v18 = v9;
    }

    if (v16 < a2)
    {
      v9 = (v13 + 1);
    }

    else
    {
      v9 = v18;
    }

    v38 = v11 == v12 - v9;
    v11 = v12 - v9;
  }

  while (!v38);
  if (v12 >= v9 || (result = _MTLMessageContextPush_(), a6->var0 == var0))
  {
    MemberContainingIndex = StructType::findMemberContainingIndex(v8, a2, v9, v12, a4, a6);
    LODWORD(v9) = MemberContainingIndex;
    result = StructType::findMemberContainingIndex(v8, a3, MemberContainingIndex, v12, a4, a6);
    if (a6->var0 == var0)
    {
      v21 = result;
      if (v9 <= result)
      {
        v40 = v8;
        v39 = result;
        do
        {
          v22 = *v8 + 32 * v9;
          if (*v22 == 4)
          {
            v24 = *(v22 + 4);
            v23 = *(v22 + 8);
            v25 = v24 + a4;
            if (a2 >= v24)
            {
              v26 = a2 - v24;
            }

            else
            {
              v26 = 0;
            }

            v27 = v24 + *(v22 + 12) * v23 - 1;
            if (v27 >= a3)
            {
              v27 = a3;
            }

            v28 = v27 - v24;
            v29 = v26 / v23;
            v30 = (v27 - v24) / v23;
            v31 = v26 / v23 + 1;
            v32 = *(v22 + 16);
            if (v31 >= v30)
            {
              v33 = v29 * v23;
              v34 = v26 % v23;
              v35 = v28 - v29 * v23;
              v36 = v23 - 1;
              if (v36 >= v35)
              {
                v37 = v35;
              }

              else
              {
                v37 = v36;
              }

              result = StructType::indexRangeIsValueType(v32, v34, v37, (v33 + v25), a5, a6);
              v38 = v29 == v30 || v26 == v33;
              v21 = v39;
              v8 = v40;
              if (!v38)
              {
                result = StructType::indexRangeIsValueType(*(v22 + 16), 0, v28 - *(v22 + 8) * v30, *(v22 + 8) * v30 + v25, a5, a6);
              }
            }

            else
            {
              result = StructType::indexRangeIsValueType(v32, 0, v23 - 1, v25 + v31 * v23, a5, a6);
              v8 = v40;
            }
          }

          else if (*v22 != a5)
          {
            MemberRef::typeToString(a5);
            *(v22 + 4);
            MemberRef::typeToString(*v22);
            result = _MTLMessageContextPush_();
          }

          if (v9 == v21)
          {
            LODWORD(v9) = v9 + 1;
          }

          else
          {
            v9 = (v9 + 1);
            if (*(v22 + 4) + *(v22 + 12) * *(v22 + 8) != *(*v8 + 32 * v9 + 4))
            {
              result = _MTLMessageContextPush_();
            }
          }
        }

        while (v9 <= v21);
      }
    }
  }

  return result;
}

__CFString *MemberRef::typeToString(unsigned int a1)
{
  if (a1 >= 0xD)
  {
    abort();
  }

  return off_2787B4D68[a1];
}

StructType *StructType::indexRangeIsValueType(StructType *result, unint64_t *a2, unsigned int a3, _MTLMessageContext *a4)
{
  v5 = a2[1];
  if (v5)
  {
    v7 = (*result + 32 * (((*(result + 1) - *result) >> 5) - 1));
    v8 = (v7[1] + v7[3] * v7[2] - 1);
    v9 = *a2;
    v10 = v5 + v9 - 1;
    if (v9 < *(*result + 4) || v10 > v8)
    {
      return _MTLMessageContextPush_();
    }

    else
    {

      return StructType::indexRangeIsValueType(result, v9, v10, 0, a3, a4);
    }
  }

  return result;
}

uint64_t StructType::indexIsValueType(StructType *a1, unint64_t a2, unsigned int a3, _MTLMessageContext *a4)
{
  v5 = (*a1 + 32 * (((*(a1 + 1) - *a1) >> 5) - 1));
  v6 = (v5[1] + v5[3] * v5[2] - 1);
  if (*(*a1 + 4) > a2 || v6 < a2)
  {
    v8 = *(*a1 + 4);
    return _MTLMessageContextPush_();
  }

  else
  {

    return StructType::indexRangeIsValueType(a1, a2, a2, 0, a3, a4);
  }
}

void sub_22E1CB094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1CB2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1CB54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *MTLArgumentTypeToString(uint64_t a1)
{
  if (a1 <= 23)
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          return "Sampler";
        case 16:
          return "Imageblock Data";
        case 17:
          return "Imageblock";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return "Buffer";
        case 1:
          return "Threadgroup Memory";
        case 2:
          return "Texture";
      }
    }

    return "Unknown";
  }

  if (a1 > 26)
  {
    switch(a1)
    {
      case 27:
        return "Intersection Function Table";
      case 34:
        return "Object Payload";
      case 37:
        return "Tensor";
    }

    return "Unknown";
  }

  if (a1 == 24)
  {
    return "Visible Function Table";
  }

  if (a1 == 25)
  {
    return "Primitive Acceleration Structure";
  }

  return "Instance Acceleration Structure";
}

void std::vector<MemberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        MemberRef::~MemberRef((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<MemberRef>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = result[2];
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v10 = v3 + 32 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 12) = 1;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        v3 += 32;
      }

      while (v3 != v10);
      v3 = v10;
    }

    result[1] = v3;
  }

  else
  {
    v5 = v3 - *result;
    v6 = a2 + (v5 >> 5);
    if (v6 >> 59)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v5 >> 5;
    v8 = v4 - *result;
    if (v8 >> 4 > v6)
    {
      v6 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    v12[4] = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MemberRef>>(result, v9);
    }

    v11 = 32 * v7;
    v12[0] = 0;
    v12[1] = 32 * v7;
    v12[3] = 0;
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 12) = 1;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v11 += 32;
    }

    while (v11 != 32 * v7 + 32 * a2);
    v12[2] = 32 * v7 + 32 * a2;
    std::vector<MemberRef>::__swap_out_circular_buffer(result, v12);
    return std::__split_buffer<MemberRef>::~__split_buffer(v12);
  }

  return result;
}

void sub_22E1CCDA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MemberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

MemberRef *std::vector<MemberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v8 = (v8 + 32);
      *v9 = v10;
      v9[1] = v11;
      v9 += 2;
    }

    while (v8 != v5);
    do
    {
      MemberRef::~MemberRef(result);
      result = (v12 + 32);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  *(a1 + 8) = v13;
  a2[1] = v13;
  v14 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v14;
  v15 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MemberRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<MemberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    MemberRef::~MemberRef((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void CheckerboardRenderTargetPipelineCache::init(CheckerboardRenderTargetPipelineCache *this, MTLDebugDevice *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [-[MTLToolsObject baseObject](a2 "baseObject")];
  this->_library = v5;
  this->_vertexFunction = [(MTLLibrary *)v5 newFunctionWithName:@"simple_vertex"];
  this->_fConstants = objc_alloc_init(MEMORY[0x277CD6D70]);
  v6 = objc_alloc_init(MEMORY[0x277CD6D60]);
  [v6 setDepthCompareFunction:7];
  [v6 setDepthWriteEnabled:0];
  this->_depthStencilState[0] = [-[MTLLibrary device](this->_library "device")];
  [v6 setDepthWriteEnabled:1];
  this->_depthStencilState[1] = [-[MTLLibrary device](this->_library "device")];

  objc_autoreleasePoolPop(v4);
}

BOOL _MTLDebugIsValidSparsePageSize(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - 101) >= 3;
  }

  else
  {
    v1 = 0;
  }

  return !v1;
}

unint64_t _validateTextureBufferDescriptor(void *a1, void *a2)
{
  v4 = [a1 width];
  if (v4 > [a2 maxTextureBufferWidth])
  {
    _validateTextureBufferDescriptor_cold_1(a1, a2);
  }

  if ([a1 height] != 1)
  {
    _validateTextureBufferDescriptor_cold_2(a1);
  }

  if ([a1 depth] != 1)
  {
    _validateTextureBufferDescriptor_cold_3(a1);
  }

  if ([a1 mipmapLevelCount] != 1)
  {
    _validateTextureBufferDescriptor_cold_4(a1);
  }

  if ([a1 sampleCount] != 1)
  {
    _validateTextureBufferDescriptor_cold_5(a1);
  }

  if ([a1 arrayLength] != 1)
  {
    _validateTextureBufferDescriptor_cold_6(a1);
  }

  if (![a1 usage])
  {
    _MTLMessageContextPush_();
  }

  if (([a1 usage] & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  v5 = [a1 usage];
  if (!([a1 usage] & 2 | v5 & 1))
  {
    _MTLMessageContextPush_();
  }

  [a1 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  result = [a1 pixelFormat];
  v7 = result - 62;
  if (result - 62 > 0x3F)
  {
    goto LABEL_29;
  }

  if (((1 << v7) & 0xE03D0E0000001D0FLL) != 0)
  {
    return result;
  }

  if (((1 << v7) & 0x70000000) != 0)
  {
    result = [a1 usage];
    if ((result & 2) != 0)
    {
      result = [a2 supportsPacked32TextureBufferWrites];
      if ((result & 1) == 0)
      {
        return _MTLMessageContextPush_();
      }
    }

    return result;
  }

  if (result != 80)
  {
LABEL_29:
    if (result > 0x3C || ((1 << result) & 0x10E0000743D07402) == 0)
    {
      return _MTLMessageContextPush_();
    }

    return result;
  }

  result = [a1 usage];
  if ((result & 2) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

BOOL validateSharedTextureHandleWithDevice(void *a1, void *a2)
{
  if (!a1)
  {
    validateSharedTextureHandleWithDevice();
  }

  v4 = [a1 ioSurface];
  if (!v4)
  {
    validateSharedTextureHandleWithDevice();
  }

  v5 = IOSurfaceCopyValue(v4, *MEMORY[0x277CD29D0]);
  if (!v5)
  {
    validateSharedTextureHandleWithDevice();
  }

  v6 = MEMORY[0x277CD70F0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD70F0]];
  if (v7)
  {
    v8 = [objc_msgSend(v5 objectForKeyedSubscript:{*v6), "unsignedLongLongValue"}];
    if ([a2 registryID] != v8)
    {
      validateSharedTextureHandleWithDevice();
    }
  }

  else
  {
  }

  return v7 != 0;
}

void sub_22E1D02A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_22E1D1438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CheckerboardRenderTargetPipelineCache::getColorPipelineState(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v24 = 0;
  v25 = 0;
  v23 = *a3;
  do
  {
    v7 = [objc_msgSend(a2 "colorAttachments")];
    v8 = [objc_msgSend(v7 "texture")];
    v9 = [v7 storeAction];
    v26[v6] = v8;
    if (v8 && !v9)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      [*(a1 + 8) device];
      MTLPixelFormatGetInfoForDevice();
      v24 &= ~(3 << v5);
    }

    ++v6;
    v5 += 2;
  }

  while (v6 != 8);
  v25 = [objc_msgSend(objc_msgSend(a2 "depthAttachment")];
  if (v25)
  {
    if ([objc_msgSend(a2 "depthAttachment")])
    {
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      v24 |= 0x10000uLL;
    }
  }

  else if (!v24)
  {
    return 0;
  }

  os_unfair_lock_lock(a1);
  v11 = std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::find<MTLDebugCheckerboardFillHashKey>((a1 + 48), &v23);
  if (v11)
  {
    v10 = v11[13];
  }

  else
  {
    *&v21[0] = v24;
    [*(a1 + 40) setConstantValue:v21 type:33 atIndex:0];
    [*(a1 + 40) setConstantValue:v21 + 4 type:33 atIndex:1];
    v12 = [*(a1 + 8) newFunctionWithName:@"fill_checkboard_fragment" constantValues:*(a1 + 40) error:0];
    v13 = objc_alloc_init(MEMORY[0x277CD6F78]);
    [v13 setVertexFunction:*(a1 + 16)];
    [v13 setFragmentFunction:v12];
    v14 = 0;
    v15 = 0;
    for (i = 0; i != 8; ++i)
    {
      v17 = [objc_msgSend(v13 "colorAttachments")];
      [v17 setPixelFormat:v26[i]];
      if (((v24 >> v15) & 3) != 0)
      {
        v18 = (v23 >> v14) & 0xF;
      }

      else
      {
        v18 = 0;
      }

      [v17 setWriteMask:v18];
      v15 += 2;
      v14 += 4;
    }

    [v13 setDepthAttachmentPixelFormat:v25];
    v20 = [objc_msgSend(*(a1 + 8) "device")];
    std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::__emplace_unique_key_args<MTLDebugCheckerboardFillHashKey,MTLDebugCheckerboardFillHashKey&,objc_object  {objcproto22MTLRenderPipelineState}&>((a1 + 48), &v23);

    v10 = v20;
  }

  os_unfair_lock_unlock(a1);
  return v10;
}

__CFString *_MTL4DebugFunctionDescriptorName(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    return [a1 name];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a1 specializedName];
    }

    else
    {
      return &stru_2841C04D0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::find<MTLDebugCheckerboardFillHashKey>(void *a1, void *a2)
{
  v4 = _MTLHashState();
  v5 = a1[1];
  if (!v5)
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
    if (v5 <= v4)
    {
      v9 = v4 % v5;
    }
  }

  else
  {
    v9 = (v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (MTLDebugCheckerboardFillHashKey::operator==(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL MTLDebugCheckerboardFillHashKey::operator==(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 3;
  do
  {
    v4 = v3[v2];
    v5 = a2[v2 + 3];
    result = v4 == v5;
    if (v4 != v5)
    {
      break;
    }
  }

  while (v2++ != 7);
  return result;
}

void *std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::__emplace_unique_key_args<MTLDebugCheckerboardFillHashKey,MTLDebugCheckerboardFillHashKey&,objc_object  {objcproto22MTLRenderPipelineState}&>(void *a1, void *a2)
{
  v4 = _MTLHashState();
  v5 = v4;
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v6 <= v4)
    {
      v9 = v4 % v6;
    }
  }

  else
  {
    v9 = (v6 - 1) & v4;
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
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
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

  if (!MTLDebugCheckerboardFillHashKey::operator==(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void CheckerboardRenderTargetPipelineCache::~CheckerboardRenderTargetPipelineCache(CheckerboardRenderTargetPipelineCache *this)
{
  for (i = &this->_cache.__table_.__first_node_; ; i[13].__next_)
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&this->_cache);
}

void *std::__hash_table<MTLDebugCommandBuffer *,std::hash<MTLDebugCommandBuffer *>,std::equal_to<MTLDebugCommandBuffer *>,std::allocator<MTLDebugCommandBuffer *>>::__emplace_unique_key_args<MTLDebugCommandBuffer *,MTLDebugCommandBuffer * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void MetalBuffer::MetalBuffer(MetalBuffer *this, MetalBufferHeap *a2, unsigned int a3)
{
  this->heap = a2;
  this->index = a3;
}

{
  this->heap = a2;
  this->index = a3;
}

void MetalBufferHeap::freeBuffer(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  v4 = *(a2 + 8);
  v5 = *(a1 + 112) + 1;
  *(a1 + 112) = v5;
  *(*(a1 + 88) + 4 * v5) = v4;
  *(a1 + 128) -= *(a1 + 136);
  *a2 = 0;

  std::mutex::unlock(a1);
}

uint64_t MetalBufferHeap::init(uint64_t this, MTLGPUDebugDevice *a2, uint64_t a3)
{
  *(this + 136) = a3;
  *(this + 144) = a2;
  return this;
}

void *MetalBufferHeap::grow(MetalBufferHeap *this, unsigned int a2)
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  v4 = *(this + 8);
  v5 = *(this + 9);
  result = (this + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 != a2)
  {
    v8 = a2;
    std::vector<MTLGPUDebugBuffer *>::resize(result, a2);
    std::vector<unsigned int>::resize((this + 88), v8);
    if (v6 < *(this + 9) - *(this + 8))
    {
      do
      {
        *(*(this + 8) + 8 * v7) = [*(this + 18) newInternalBufferWithLength:*(this + 17) options:256];
        [*(*(this + 18) + 680) addAllocation:*(*(this + 8) + 8 * v7)];
        v9 = *(this + 15) + *(this + 17);
        *(this + 15) = v9;
        v10 = MTLGPUDebugLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          MetalBufferHeap::grow(v13, v9, v14, v10);
        }

        v11 = *(this + 28) + 1;
        *(this + 28) = v11;
        *(*(this + 11) + 4 * v11) = v7++;
      }

      while (v7 < (*(this + 9) - *(this + 8)) >> 3);
    }

    result = [*(*(this + 18) + 680) commit];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

std::mutex *MetalBufferHeap::allocBuffer(std::mutex *this)
{
  std::mutex::lock(this);
  if ((*&this[1].__m_.__opaque[40] & 0x80000000) != 0)
  {
    MetalBufferHeap::grow(this, ((*this[1].__m_.__opaque - this[1].__m_.__sig) >> 3) + 1);
  }

  v2 = this[2].__m_.__sig + *this[2].__m_.__opaque;
  this[2].__m_.__sig = v2;
  v3 = MTLGPUDebugLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    MetalBufferHeap::allocBuffer(v2, this, v3);
  }

  v4 = *&this[1].__m_.__opaque[40];
  *&this[1].__m_.__opaque[40] = v4 - 1;
  v5 = *(*&this[1].__m_.__opaque[16] + 4 * v4);
  std::mutex::unlock(this);
  return this;
}

void MetalBufferHeap::~MetalBufferHeap(std::mutex *this)
{
  sig = this[1].__m_.__sig;
  v3 = *this[1].__m_.__opaque;
  while (sig != v3)
  {
  }

  v4 = *&this[1].__m_.__opaque[16];
  if (v4)
  {
    *&this[1].__m_.__opaque[24] = v4;
    operator delete(v4);
  }

  v5 = this[1].__m_.__sig;
  if (v5)
  {
    *this[1].__m_.__opaque = v5;
    operator delete(v5);
  }

  std::mutex::~mutex(this);
}

__CFString *MTLDebugFunctionArgumentTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return &stru_2841C04D0;
  }

  else
  {
    return off_2787B4EC0[a1];
  }
}

__CFString *argumentFormattedDescription(uint64_t a1, uint64_t a2)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v4 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  if (*a2 == 1)
  {
    v6 = v4;
    v7 = *(a2 + 8);
    result = &stru_2841C04D0;
    if (v7 <= 2)
    {
      switch(v7)
      {
        case 0:
          v9 = MEMORY[0x277CCACA8];
          v30[0] = v6;
          v30[1] = @"buffer =";
          v17 = *(a2 + 16);
          if (v17)
          {
            v18 = [v17 formattedDescription:a1 + 4];
          }

          else
          {
            v18 = @"<null>";
          }

          v30[2] = v18;
          v30[3] = v6;
          v30[4] = @"bufferOffset =";
          v30[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 40)];
          v30[6] = @"bufferAttributeStride =";
          v30[7] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 48)];
          v14 = MEMORY[0x277CBEA60];
          v15 = v30;
          v16 = 8;
          goto LABEL_32;
        case 1:
          v9 = MEMORY[0x277CCACA8];
          v29[0] = v6;
          v29[1] = @"texture =";
          v19 = *(a2 + 16);
          if (v19)
          {
            v20 = [v19 formattedDescription:a1 + 4];
          }

          else
          {
            v20 = @"<null>";
          }

          v29[2] = v20;
          v29[3] = v6;
          v29[4] = @"baseLevel =";
          v29[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 24)];
          v14 = MEMORY[0x277CBEA60];
          v15 = v29;
          v16 = 6;
          goto LABEL_32;
        case 2:
          v9 = MEMORY[0x277CCACA8];
          if (*(a2 + 72) == 1)
          {
            v28[0] = v6;
            v28[1] = @"sampler =";
            v12 = *(a2 + 16);
            if (v12)
            {
              v13 = [v12 formattedDescription:a1 + 4];
            }

            else
            {
              v13 = @"<null>";
            }

            v28[2] = v13;
            v28[3] = v6;
            v28[4] = @"lodMinClamp =";
            LODWORD(v5) = *(a2 + 76);
            v28[5] = [MEMORY[0x277CCABB0] numberWithFloat:v5];
            v28[6] = v6;
            v28[7] = @"lodMaxClamp =";
            LODWORD(v23) = *(a2 + 80);
            v28[8] = [MEMORY[0x277CCABB0] numberWithFloat:v23];
            v14 = MEMORY[0x277CBEA60];
            v15 = v28;
            v16 = 9;
            goto LABEL_32;
          }

          v27[0] = v6;
          v27[1] = @"sampler =";
          v21 = *(a2 + 16);
          if (v21)
          {
            v22 = [v21 formattedDescription:a1 + 4];
          }

          else
          {
            v22 = @"<null>";
          }

          v27[2] = v22;
          v14 = MEMORY[0x277CBEA60];
          v15 = v27;
          goto LABEL_31;
      }
    }

    else
    {
      if ((v7 - 4) < 3)
      {
        v9 = MEMORY[0x277CCACA8];
        v25[0] = v6;
        v25[1] = MTLDebugFunctionArgumentTypeToString(v7);
        v25[2] = @"=";
        v10 = *(a2 + 16);
        if (v10)
        {
          v11 = [v10 formattedDescription:a1 + 4];
        }

        else
        {
          v11 = @"<null>";
        }

        v25[3] = v11;
        v14 = MEMORY[0x277CBEA60];
        v15 = v25;
        v16 = 4;
        goto LABEL_32;
      }

      if (v7 == 3)
      {
        v9 = MEMORY[0x277CCACA8];
        v26[0] = v6;
        v26[1] = @"threadgroupMemoryLength =";
        v26[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 56)];
        v14 = MEMORY[0x277CBEA60];
        v15 = v26;
LABEL_31:
        v16 = 3;
LABEL_32:
        result = [v9 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(v14, "arrayWithObjects:count:", v15, v16), "componentsJoinedByString:", @" "];
      }
    }
  }

  else
  {
    result = @"<null>";
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void emitDispatchDistribution(MTLTelemetryDevice *a1, MTLTelemetryDispatchDistributionRec *a2)
{
  v216 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD7168];
  v5 = *MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    computeEncoderDispatchDistribution = a1->computeEncoderDispatchDistribution;
    min = computeEncoderDispatchDistribution->min;
    max = computeEncoderDispatchDistribution->max;
    count = computeEncoderDispatchDistribution->count;
    total = computeEncoderDispatchDistribution->total;
    if (count)
    {
      v11 = (total / count);
    }

    else
    {
      v11 = 0.0;
    }

    printf("\n\nDispatchesPerComputeEncoder, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", min, max, v11, total, count);
  }

  v12 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1->computeEncoderDispatchDistribution;
    v15 = v13->min;
    v14 = v13->max;
    v16 = v13->count;
    v17 = v13->total;
    if (v16)
    {
      v18 = (v17 / v16);
    }

    else
    {
      v18 = 0.0;
    }

    *buf = 67110144;
    v117 = v15;
    v118 = 1024;
    v119 = v14;
    v120 = 2048;
    v121 = v18;
    v122 = 2048;
    v123 = v17;
    v124 = 1024;
    v125 = v16;
    _os_log_impl(&dword_22E0FF000, v12, OS_LOG_TYPE_DEFAULT, "DispatchesPerComputeEncoder, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", buf, 0x28u);
  }

  v5 = *v4;
LABEL_13:
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_24;
    }

    commandBufferDispatchDistribution = a1->commandBufferDispatchDistribution;
    v20 = commandBufferDispatchDistribution->min;
    v21 = commandBufferDispatchDistribution->max;
    v22 = commandBufferDispatchDistribution->count;
    v23 = commandBufferDispatchDistribution->total;
    if (v22)
    {
      v24 = (v23 / v22);
    }

    else
    {
      v24 = 0.0;
    }

    printf("\n\nComputeDispatchesPerCommandBuffer, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", v20, v21, v24, v23, v22);
  }

  v25 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = a1->commandBufferDispatchDistribution;
    v28 = v26->min;
    v27 = v26->max;
    v29 = v26->count;
    v30 = v26->total;
    if (v29)
    {
      v31 = (v30 / v29);
    }

    else
    {
      v31 = 0.0;
    }

    *buf = 67110144;
    v117 = v28;
    v118 = 1024;
    v119 = v27;
    v120 = 2048;
    v121 = v31;
    v122 = 2048;
    v123 = v30;
    v124 = 1024;
    v125 = v29;
    _os_log_impl(&dword_22E0FF000, v25, OS_LOG_TYPE_DEFAULT, "ComputeDispatchesPerCommandBuffer, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", buf, 0x28u);
  }

LABEL_24:
  if (a2->var0)
  {
    if (*v4)
    {
      if (*v4 != 1)
      {
        goto LABEL_70;
      }

      v32 = a2->var1.count;
      v33 = a2->var1.total;
      v34 = 0.0;
      v35 = 0.0;
      if (v32)
      {
        v35 = (v33 / v32);
      }

      v36 = a2->var2.count;
      v37 = a2->var2.total;
      if (v36)
      {
        v34 = (v37 / v36);
      }

      v38 = a2->var3.count;
      v39 = 0.0;
      v40 = 0.0;
      if (v38)
      {
        v40 = (a2->var3.total / v38);
      }

      v41 = a2->var4.count;
      v42 = a2->var4.total;
      if (v41)
      {
        v39 = (v42 / v41);
      }

      v43 = a2->var5.count;
      v44 = a2->var5.total;
      v45 = 0.0;
      v46 = 0.0;
      if (v43)
      {
        v46 = (v44 / v43);
      }

      v47 = a2->var6.count;
      v48 = a2->var6.total;
      if (v47)
      {
        v45 = (v48 / v47);
      }

      v49 = a2->var7.count;
      v50 = a2->var7.total;
      v51 = 0.0;
      v52 = 0.0;
      if (v49)
      {
        v52 = (v50 / v49);
      }

      v53 = a2->var8.count;
      v54 = a2->var8.total;
      if (v53)
      {
        v51 = (v54 / v53);
      }

      v105 = a2->var5.total;
      v107 = a2->var4.total;
      v111 = a2->var2.total;
      v114 = a2->var1.total;
      v55 = a2->var9.count;
      v56 = a2->var9.total;
      v57 = 0.0;
      v58 = 0.0;
      if (v55)
      {
        v58 = (v56 / v55);
      }

      v59 = a2->var10.count;
      if (v59)
      {
        v57 = (a2->var10.total / v59);
      }

      printf("\n\nDispatch, minThreadGroupsPerGridWidth=%u, maxThreadGroupsPerGridWidth=%u, avgThreadGroupsPerGridWidth=%f, totalThreadGroupsPerGridWidth=%llu, countThreadGroupsPerGridWidth=%u, minThreadGroupsPerGridHeight=%u, maxThreadGroupsPerGridHeight=%u, avgThreadGroupsPerGridHeight=%f, totalThreadGroupsPerGridHeight=%llu, countThreadGroupsPerGridHeight=%u, minThreadGroupsPerGridDepth=%u, maxThreadGroupsPerGridDepth=%u, avgThreadGroupsPerGridDepth=%f, totalThreadGroupsPerGridDepth=%llu, countThreadGroupsPerGridDepth=%u, minThreadsPerGridWidth=%u, maxThreadsPerGridWidth=%u, avgThreadsPerGridWidth=%f, totalThreadsPerGridWidth=%llu, countThreadsPerGridWidth=%u, minThreadsPerGridHeight=%u, maxThreadsPerGridHeight=%u, avgThreadsPerGridHeight=%f, totalThreadsPerGridHeight=%llu, countThreadsPerGridHeight=%u, minThreadsPerGridDepth=%u, maxThreadsPerGridDepth=%u, avgThreadsPerGridDepth=%f, totalThreadsPerGridDepth=%llu, countThreadsPerGridDepth=%u, minThreadsPerGroupWidth=%u, maxThreadsPerGroupWidth=%u, avgThreadsPerGroupWidth=%f, totalThreadsPerGroupWidth=%llu, countThreadsPerGroupWidth=%u, minThreadsPerGroupHeight=%u, maxThreadsPerGroupHeight=%u, avgThreadsPerGroupHeight=%f, totalThreadsPerGroupHeight=%llu, countThreadsPerGroupHeight=%u, minThreadsPerGroupDepth=%u, maxThreadsPerGroupDepth=%u, avgThreadsPerGroupDepth=%f, totalThreadsPerGroupDepth=%llu, countThreadsPerGroupDepth=%u, minThreadGroupMemoryLength=%u, maxThreadGroupMemoryLength=%u, avgThreadGroupMemoryLength=%f, totalThreadGroupMemoryLength=%llu, countThreadGroupMemoryLength=%u", a2->var1.min, a2->var1.max, v35, v33, v32, a2->var2.min, a2->var2.max, v34, v37, v36, a2->var3.min, a2->var3.max, v40, a2->var3.total, v38, a2->var4.min, a2->var4.max, v39, v42, v41, a2->var5.min, a2->var5.max, v46, v44, v43, a2->var6.min, a2->var6.max, v45, v48, v47, a2->var7.min, a2->var7.max, v52, v50, v49, a2->var8.min, a2->var8.max, v51, v54, v53, a2->var9.min, a2->var9.max, v58, v56, v55, a2->var10.min, a2->var10.max, v57, a2->var10.total, v59);
    }

    v60 = [(MTLTelemetryDevice *)a1 telemetryLog];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = a2->var1.count;
      v62 = 0.0;
      v63 = 0.0;
      if (v61)
      {
        v63 = (a2->var1.total / v61);
      }

      v64 = a2->var2.count;
      v65 = a2->var2.total;
      if (v64)
      {
        v62 = (v65 / v64);
      }

      v106 = a2->var1.total;
      v66 = a2->var3.count;
      v67 = a2->var3.total;
      v68 = 0.0;
      v69 = 0.0;
      if (v66)
      {
        v69 = (v67 / v66);
      }

      v70 = a2->var4.count;
      if (v70)
      {
        v68 = (a2->var4.total / v70);
      }

      v71 = a2->var5.count;
      v72 = 0.0;
      v73 = 0.0;
      if (v71)
      {
        v73 = (a2->var5.total / v71);
      }

      v74 = a2->var6.count;
      if (v74)
      {
        v72 = (a2->var6.total / v74);
      }

      v75 = a2->var7.count;
      v76 = 0.0;
      v77 = 0.0;
      if (v75)
      {
        v77 = (a2->var7.total / v75);
      }

      v78 = a2->var8.count;
      if (v78)
      {
        v76 = (a2->var8.total / v78);
      }

      v109 = a2->var8.total;
      v110 = a2->var7.total;
      v112 = a2->var6.total;
      v113 = a2->var5.total;
      v115 = a2->var4.total;
      v79 = a2->var9.count;
      v80 = 0.0;
      v81 = 0.0;
      if (v79)
      {
        v81 = (a2->var9.total / v79);
      }

      v108 = a2->var9.total;
      v82 = a2->var1.min;
      v83 = a2->var1.max;
      v84 = a2->var2.min;
      v85 = a2->var2.max;
      v86 = a2->var3.min;
      v87 = a2->var3.max;
      v89 = a2->var4.min;
      v88 = a2->var4.max;
      v91 = a2->var5.min;
      v90 = a2->var5.max;
      v93 = a2->var6.min;
      v92 = a2->var6.max;
      v94 = a2->var7.min;
      v98 = a2->var7.max;
      v99 = a2->var8.min;
      v100 = a2->var8.max;
      v101 = a2->var9.min;
      v102 = a2->var9.max;
      v103 = a2->var10.min;
      v104 = a2->var10.max;
      v95 = a2->var10.count;
      v96 = a2->var10.total;
      if (v95)
      {
        v80 = (v96 / v95);
      }

      v117 = v82;
      v119 = v83;
      v123 = v106;
      v125 = v61;
      v127 = v84;
      v129 = v85;
      v133 = v65;
      v135 = v64;
      v137 = v86;
      v139 = v87;
      v143 = v67;
      *buf = 67121664;
      v145 = v66;
      v118 = 1024;
      v147 = v89;
      v120 = 2048;
      v121 = v63;
      v122 = 2048;
      v124 = 1024;
      v126 = 1024;
      v128 = 1024;
      v130 = 2048;
      v131 = v62;
      v132 = 2048;
      v134 = 1024;
      v136 = 1024;
      v138 = 1024;
      v140 = 2048;
      v141 = v69;
      v142 = 2048;
      v144 = 1024;
      v146 = 1024;
      v148 = 1024;
      v149 = v88;
      v150 = 2048;
      v151 = v68;
      v152 = 2048;
      v153 = v115;
      v154 = 1024;
      v155 = v70;
      v156 = 1024;
      v157 = v91;
      v158 = 1024;
      v159 = v90;
      v160 = 2048;
      v161 = v73;
      v162 = 2048;
      v163 = v113;
      v164 = 1024;
      v165 = v71;
      v166 = 1024;
      v167 = v93;
      v168 = 1024;
      v169 = v92;
      v170 = 2048;
      v171 = v72;
      v172 = 2048;
      v173 = v112;
      v174 = 1024;
      v175 = v74;
      v176 = 1024;
      v177 = v94;
      v178 = 1024;
      v179 = v98;
      v180 = 2048;
      v181 = v77;
      v182 = 2048;
      v183 = v110;
      v184 = 1024;
      v185 = v75;
      v186 = 1024;
      v187 = v99;
      v188 = 1024;
      v189 = v100;
      v190 = 2048;
      v191 = v76;
      v192 = 2048;
      v193 = v109;
      v194 = 1024;
      v195 = v78;
      v196 = 1024;
      v197 = v101;
      v198 = 1024;
      v199 = v102;
      v200 = 2048;
      v201 = v81;
      v202 = 2048;
      v203 = v108;
      v204 = 1024;
      v205 = v79;
      v206 = 1024;
      v207 = v103;
      v208 = 1024;
      v209 = v104;
      v210 = 2048;
      v211 = v80;
      v212 = 2048;
      v213 = v96;
      v214 = 1024;
      v215 = v95;
      _os_log_impl(&dword_22E0FF000, v60, OS_LOG_TYPE_DEFAULT, "Dispatch, minThreadGroupsPerGridWidth=%u, maxThreadGroupsPerGridWidth=%u, avgThreadGroupsPerGridWidth=%f, totalThreadGroupsPerGridWidth=%llu, countThreadGroupsPerGridWidth=%u, minThreadGroupsPerGridHeight=%u, maxThreadGroupsPerGridHeight=%u, avgThreadGroupsPerGridHeight=%f, totalThreadGroupsPerGridHeight=%llu, countThreadGroupsPerGridHeight=%u, minThreadGroupsPerGridDepth=%u, maxThreadGroupsPerGridDepth=%u, avgThreadGroupsPerGridDepth=%f, totalThreadGroupsPerGridDepth=%llu, countThreadGroupsPerGridDepth=%u, minThreadsPerGridWidth=%u, maxThreadsPerGridWidth=%u, avgThreadsPerGridWidth=%f, totalThreadsPerGridWidth=%llu, countThreadsPerGridWidth=%u, minThreadsPerGridHeight=%u, maxThreadsPerGridHeight=%u, avgThreadsPerGridHeight=%f, totalThreadsPerGridHeight=%llu, countThreadsPerGridHeight=%u, minThreadsPerGridDepth=%u, maxThreadsPerGridDepth=%u, avgThreadsPerGridDepth=%f, totalThreadsPerGridDepth=%llu, countThreadsPerGridDepth=%u, minThreadsPerGroupWidth=%u, maxThreadsPerGroupWidth=%u, avgThreadsPerGroupWidth=%f, totalThreadsPerGroupWidth=%llu, countThreadsPerGroupWidth=%u, minThreadsPerGroupHeight=%u, maxThreadsPerGroupHeight=%u, avgThreadsPerGroupHeight=%f, totalThreadsPerGroupHeight=%llu, countThreadsPerGroupHeight=%u, minThreadsPerGroupDepth=%u, maxThreadsPerGroupDepth=%u, avgThreadsPerGroupDepth=%f, totalThreadsPerGroupDepth=%llu, countThreadsPerGroupDepth=%u, minThreadGroupMemoryLength=%u, maxThreadGroupMemoryLength=%u, avgThreadGroupMemoryLength=%f, totalThreadGroupMemoryLength=%llu, countThreadGroupMemoryLength=%u", buf, 0x17Eu);
    }
  }

LABEL_70:
  v97 = *MEMORY[0x277D85DE8];
}

void std::unordered_map<unsigned long,anonymous namespace::EncoderResourceUsage>::clear[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_22E1DCBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_22E1DD914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DD9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DDC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DDD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DE148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_22E1DE22C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t newArgumentEncoder(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a5, "count")}];
    if (v10 && [a5 count])
    {
      v11 = 0;
      do
      {
        [v10 setObject:objc_msgSend(objc_msgSend(a5 atIndexedSubscript:{"objectAtIndexedSubscript:", v11), "baseObject"), v11}];
        ++v11;
      }

      while (v11 < [a5 count]);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [a1 baseObject];
  if (a4)
  {
    v13 = [v12 reflectionWithOptions:3 pipelineLibrary:{objc_msgSend(a4, "baseObject")}];
  }

  else
  {
    v13 = [v12 reflectionWithOptions:3 binaryArchives:v10];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [v13 arguments];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
LABEL_13:
    v18 = 0;
    while (1)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v28 + 1) + 8 * v18);
      if (![v19 type] && objc_msgSend(v19, "index") == a2)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_20:
    newArgumentEncoder(a1);
    v19 = 0;
  }

  if (([objc_msgSend(v19 "dataTypeDescription")] & 1) == 0)
  {
    newArgumentEncoder(v19, a1);
  }

  v27 = 0;
  v20 = [a1 baseObject];
  if (a4)
  {
    v21 = [v20 newArgumentEncoderWithBufferIndex:a2 reflection:&v27 pipelineLibrary:a4];
  }

  else
  {
    v21 = [v20 newArgumentEncoderWithBufferIndex:a2 reflection:&v27 binaryArchives:v10];
  }

  v22 = v21;
  if (a3)
  {
    *a3 = v27;
  }

  v23 = [MTLDebugArgumentEncoder alloc];
  v24 = -[MTLDebugArgumentEncoder initWithBaseObject:structType:parent:](v23, "initWithBaseObject:structType:parent:", v22, [v27 bufferStructType], a1);

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t validateNewFunctionWithConstantArguments(NSString *a1, MTLFunctionConstantValues *a2)
{
  if (!a1)
  {
    validateNewFunctionWithConstantArguments();
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (a2)
    {
      return result;
    }

    return validateNewFunctionWithConstantArguments();
  }

  result = validateNewFunctionWithConstantArguments();
  if (!a2)
  {
    return validateNewFunctionWithConstantArguments();
  }

  return result;
}

uint64_t _validateUniqueNames(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  result = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  v8 = result;
  if (result)
  {
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [objc_msgSend(*(*(&v23 + 1) + 8 * v10) name];
        v12 = strlen(v11);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        v22 = v12;
        if (v12)
        {
          memmove(&__dst, v11, v12);
        }

        *(&__dst + v13) = 0;
        v14 = std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::find<std::string>(a2, &__dst);
        if (a1)
        {
          if (!v14)
          {
            goto LABEL_18;
          }

          p_dst = &__dst;
          if (v22 < 0)
          {
            p_dst = __dst;
          }

          v19 = v27;
          v20 = v14[5];
          v18 = p_dst;
          _MTLMessageContextPush_();
        }

        else
        {
          if (!v14)
          {
LABEL_18:
            std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::__emplace_unique_key_args<std::string,std::string&,char const*&>(a2, &__dst);
            goto LABEL_19;
          }

          v16 = &__dst;
          if (v22 < 0)
          {
            v16 = __dst;
          }

          v19 = v27;
          v20 = v14[5];
          v18 = v16;
          MTLReportFailure();
        }

LABEL_19:
        if (v22 < 0)
        {
          operator delete(__dst);
        }

        ++v10;
      }

      while (v8 != v10);
      result = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v8 = result;
    }

    while (result);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22E1DF030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t validateLinkedFunctionsHaveUniqueNames(MTLFunctionDescriptor *a1)
{
  LODWORD(v3) = 1065353216;
  _validateUniqueNames(0, &v2, [(MTLFunctionDescriptor *)a1 privateFunctions:0], "privateFunctions");
  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::find<std::string>(void *a1, const void **a2)
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

const void **std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::__emplace_unique_key_args<std::string,std::string&,char const*&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::__construct_node_hash<std::string&,char const*&>();
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

void sub_22E1DFA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DFB48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void InitResourceIdentifier(MTLLegacySVTexture *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(MTLToolsObject *)a1->super.super.super._device baseObject];
  if (([objc_msgSend(v2 "vendorName")] & 1) != 0 || objc_msgSend(objc_msgSend(v2, "vendorName"), "containsString:", @"Intel"))
  {
    v3 = [v2 newBufferWithLength:8 options:0];
    v4 = objc_alloc_init(MEMORY[0x277CD6C70]);
    [v4 setIndex:0];
    [v4 setDataType:58];
    [v4 setAccess:1];
    v7[0] = v4;
    v5 = [v2 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 1)}];

    [v5 setArgumentBuffer:v3 offset:0];
    [v5 setTexture:-[MTLLegacySVTexture baseObject](a1 atIndex:{"baseObject"), 0}];

    a1->_identifier = *[v3 contents];
  }

  else
  {
    a1->_identifier = [(MTLToolsTexture *)a1 uniqueIdentifier];
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t _MTLDebugValidateBuffer(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a2 device];
    if (result != a1)
    {
      return _MTLMessageContextPush_();
    }
  }

  return result;
}

uint64_t _MTLDebugIndexTypeSize(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  if (a1 == 1)
  {
    return 4;
  }

  _MTLMessageContextPush_();
  return 0;
}

uint64_t _MTLDebugValidateIndexBuffer(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  _MTLMessageContextBegin_();
  _MTLDebugValidateBuffer(a1, a3);
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0;
      v14 = 4;
      if (!a6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      _MTLMessageContextPush_();
      v14 = 0;
      v13 = 1;
      if (!a6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 2;
    if (!a6)
    {
LABEL_10:
      if (v13)
      {
        return _MTLMessageContextEnd();
      }

      goto LABEL_11;
    }
  }

  if (a5 + v14 * a7 > [a3 length])
  {
    [a3 length];
    _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_10;
    }
  }

  else if (a7)
  {
    goto LABEL_10;
  }

  _MTLMessageContextPush_();
  if (v13)
  {
    return _MTLMessageContextEnd();
  }

LABEL_11:
  if (((v14 - 1) & a5) != 0)
  {
    _MTLMessageContextPush_();
  }

  return _MTLMessageContextEnd();
}

unint64_t _MTLDebugValidateIndexBufferWithContext(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t *a8)
{
  v14 = *a8;
  result = _MTLDebugValidateBuffer(a1, a3);
  if (a2)
  {
    if (a2 == 1)
    {
      v16 = 0;
      v17 = 4;
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = _MTLMessageContextPush_();
      v17 = 0;
      v16 = 1;
      if (!a6)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 2;
    if (!a6)
    {
LABEL_11:
      if (v16)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  if (*a8 == v14 && (result = [a3 length], a5 + v17 * a7 > result))
  {
    [a3 length];
    result = _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_11;
    }
  }

  else if (a7)
  {
    goto LABEL_11;
  }

  result = _MTLMessageContextPush_();
  if (v16)
  {
    return result;
  }

LABEL_12:
  if (((v17 - 1) & a5) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t _MTLDebugValidatePatchIndexBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _MTLMessageContextBegin_();
  if (a2)
  {
    _MTLDebugValidateBuffer(a1, a2);
    if (!a5)
    {
      goto LABEL_7;
    }

    if (a4 + 4 * (a7 + a6) > [a2 length])
    {
      [a2 length];
      _MTLMessageContextPush_();
    }

    if (a7)
    {
      if (a9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _MTLMessageContextPush_();
      if (a9)
      {
        goto LABEL_7;
      }
    }

    _MTLMessageContextPush_();
LABEL_7:
    if ((a4 & 3) != 0)
    {
      goto LABEL_11;
    }

    return _MTLMessageContextEnd();
  }

  if (a4)
  {
LABEL_11:
    _MTLMessageContextPush_();
  }

  return _MTLMessageContextEnd();
}

unint64_t _MTLDebugValidatePatchIndexBufferWithContext(unint64_t result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a2)
  {
    v15 = *a10;
    result = _MTLDebugValidateBuffer(result, a2);
    if (!a5)
    {
      goto LABEL_8;
    }

    if (*a10 == v15)
    {
      result = [a2 length];
      if (a4 + 4 * (a7 + a6) > result)
      {
        [a2 length];
        result = _MTLMessageContextPush_();
      }
    }

    if (a7)
    {
      if (a9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = _MTLMessageContextPush_();
      if (a9)
      {
        goto LABEL_8;
      }
    }

    result = _MTLMessageContextPush_();
LABEL_8:
    if ((a4 & 3) != 0)
    {
      return _MTLMessageContextPush_();
    }

    return result;
  }

  if (a4)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

__CFString *_MTLDebugWindingString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"MTLWindingCounterClockwise";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLWindingClockwise";
  }
}

__CFString *_MTLDebugCullModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4FB0[a1];
  }
}

__CFString *_MTLDebugDepthClipModeString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"MTLDepthClipModeClamp";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLDepthClipModeClip";
  }
}

__CFString *_MTLDebugTriangleFillModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4FC8[a1];
  }
}

__CFString *_MTLDebugVisibilityResultModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4FE0[a1];
  }
}

_OWORD *std::vector<MTLViewport>::assign(void *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 4) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<MTLViewport>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - result) >> 4);
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - result) >> 4);
  }

  for (; v11; --v11)
  {
    v12 = *a3;
    v13 = a3[2];
    result[1] = a3[1];
    result[2] = v13;
    *result = v12;
    result += 3;
  }

  if (a2 <= v10)
  {
    a1[1] = *a1 + 48 * a2;
  }

  else
  {
    v14 = a1[1];
    v15 = &v14[3 * (a2 - v10)];
    v16 = 48 * a2 - 48 * v10;
    do
    {
      v17 = *a3;
      v18 = a3[2];
      v14[1] = a3[1];
      v14[2] = v18;
      *v14 = v17;
      v14 += 3;
      v16 -= 48;
    }

    while (v16);
    a1[1] = v15;
  }

  return result;
}

_OWORD *std::vector<MTLScissorRect>::assign(void *a1, unint64_t a2, _OWORD *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 59))
    {
      v7 = v5 >> 4;
      if (v5 >> 4 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFE0)
      {
        v8 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<MTLScissorRect>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - result) >> 5;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 5;
  }

  for (; v10; --v10)
  {
    v11 = a3[1];
    *result = *a3;
    result[1] = v11;
    result += 2;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 32 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[2 * (a2 - v9)];
    v14 = 32 * a2 - 32 * v9;
    do
    {
      v15 = a3[1];
      *v12 = *a3;
      v12[1] = v15;
      v12 += 2;
      v14 -= 32;
    }

    while (v14);
    a1[1] = v13;
  }

  return result;
}

uint64_t hasMemorylessAttachments(MTLRenderPassDescriptor *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = [*-[MTLRenderPassDescriptor _descriptorPrivate](a1 "_descriptorPrivate")];
    if (v3)
    {
      v4 = *[v3 _descriptorPrivate];
      if (v4)
      {
        if ([v4 storageMode] == 3)
        {
          break;
        }
      }
    }

    if (++v2 == 8)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_8:
  v6 = [*-[MTLRenderPassDescriptor _descriptorPrivate](a1 "_descriptorPrivate")];
  if (v6)
  {
    v7 = *[v6 _descriptorPrivate];
    if (v7)
    {
      if ([v7 storageMode] == 3)
      {
        v5 = 1;
      }
    }
  }

  v8 = [*-[MTLRenderPassDescriptor _descriptorPrivate](a1 "_descriptorPrivate")];
  if (v8)
  {
    v9 = *[v8 _descriptorPrivate];
    if (v9)
    {
      v5 |= [v9 storageMode] == 3;
    }
  }

  return v5 & 1;
}

uint64_t validateArg(uint64_t a1, unint64_t a2, MTLDebugFunctionArgument *a3, _MTLMessageContext *a4)
{
  result = MTLReportFailureTypeEnabled();
  if (result && a3->isValid && !a3->hasBeenUsed)
  {
    MTLArgumentTypeToString(a1);
    return _MTLMessageContextPush_();
  }

  return result;
}

void sub_22E1E4774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t validateFunctionArguments(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, void *a12, const char *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v178 = *MEMORY[0x277D85DE8];
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  result = [a4 countByEnumeratingWithState:&v167 objects:v176 count:16];
  v152 = result;
  if (!result)
  {
    v156 = 0;
    goto LABEL_186;
  }

  v156 = 0;
  v145 = ~a13;
  v150 = *v168;
  v151 = a5;
  do
  {
    v23 = 0;
    do
    {
      if (*v168 != v150)
      {
        objc_enumerationMutation(a4);
      }

      v24 = *(*(&v167 + 1) + 8 * v23);
      v157 = v23;
      if ([v24 isActive])
      {
        v25 = [v24 type];
        v26 = [v24 name];
        v27 = [v24 arrayLength];
        v162 = v24;
        v28 = v24;
        v29 = v27;
        v30 = [v28 index];
        if (v29)
        {
          v31 = v25 > 0x22 || ((1 << v25) & 0x40F03000FLL) == 0;
          if (v31)
          {
LABEL_204:
            abort();
          }

          v32 = 0;
          v148 = v25 - 25;
          v153 = v25;
          v160 = v30;
          v161 = v29;
          while (1)
          {
            v33 = v32 + v30;
            if (v25 <= 2)
            {
              break;
            }

            if ((v25 - 16) >= 2)
            {
              if (v25 == 3)
              {
                v34 = a7 + 88 * v33;
                if ((*v34 & 1) == 0 || *(v34 + 8) != 2)
                {
                  v132 = v26;
                  v133 = v32;
                  v122 = MTLArgumentTypeToString(3);
                  v131 = v33;
                  v104 = a2;
                  v113 = a3;
                  _MTLMessageContextPush_();
                  v34 = a7 + 88 * v33;
                  goto LABEL_166;
                }

LABEL_167:
                *(v34 + 1) = 1;
                goto LABEL_168;
              }

              if (v25 != 34)
              {
                goto LABEL_40;
              }
            }

LABEL_168:
            if (++v32 == v29)
            {
              goto LABEL_182;
            }
          }

          if (v25)
          {
            if (v25 != 1)
            {
              if (v25 != 2)
              {
LABEL_40:
                v34 = a5 + 88 * v33;
                if (*v34)
                {
                  goto LABEL_41;
                }

                v132 = v26;
                v133 = v32;
                v122 = MTLArgumentTypeToString(v25);
                v131 = v33;
                v104 = a2;
                v113 = a3;
                _MTLMessageContextPush_();
                v34 = a5 + 88 * v33;
                v30 = v160;
                if (*v34)
                {
LABEL_41:
                  if (v148 > 2)
                  {
                    v47 = (v34 + 8);
                    if (*(v34 + 8) == 6)
                    {
                      v58 = v34;
                      v59 = [a1 requiresRaytracingEmulation];
                      v34 = v58;
                      v31 = v59 == 0;
                      v30 = v160;
                      v46 = 5;
                      if (!v31)
                      {
                        v46 = 6;
                      }
                    }

                    else
                    {
                      v46 = 5;
                    }
                  }

                  else
                  {
                    v46 = qword_22E27C340[v148];
                    v47 = (v34 + 8);
                  }

                  if (*v47 != v46)
                  {
                    v86 = v34;
                    v87 = MTLArgumentTypeToString(v25);
                    v133 = v32;
                    v134 = MTLDebugFunctionArgumentTypeToString(*v47);
                    v131 = v33;
                    v132 = v26;
                    v113 = a3;
                    v122 = v87;
                    v29 = v161;
                    v104 = a2;
                    _MTLMessageContextPush_();
                    v34 = v86;
                    v30 = v160;
                  }

                  a5 = v151;
                }

                goto LABEL_167;
              }

              v34 = a6 + 88 * v33;
              if (!*(v34 + 16))
              {
                v29 = v161;
                goto LABEL_167;
              }

              v158 = a6 + 88 * v33;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v113 = a3;
                v122 = v33;
                v104 = a2;
                goto LABEL_81;
              }

              v35 = *(v158 + 16);
              v29 = v161;
              if ([v35 usage] & 4) != 0 && (objc_msgSend(v35, "usage"))
              {
                v36 = a8;
                if (a8)
                {
                  v37 = 0;
                  do
                  {
                    v38 = [v36 _descriptorAtIndex:{v37, v104, v113, v122}];
                    if (v38)
                    {
                      v39 = v38;
                      if ([v38 texture])
                      {
                        if ([v39 storeAction] == 1 && objc_msgSend(objc_msgSend(a9, "objectAtIndexedSubscript:", v37), "writeMask"))
                        {
                          v40 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v39 _descriptorPrivate], a10);
                          v41 = [(MTLDebugRenderTargetAttachmentInfo *)v40 intersectsTexture:v35];
                          if (v41)
                          {
                            v42 = "resolve";
                            if (v41 != 2)
                            {
                              if (v41 != 1)
                              {
                                goto LABEL_204;
                              }

                              v42 = "color";
                            }

                            v135 = v37;
                            v133 = v32;
                            v134 = v42;
                            v131 = v33;
                            v132 = v26;
                            v113 = a3;
                            v122 = MTLArgumentTypeToString(2);
                            v104 = a2;
                            MTLReportFailure();
                            v36 = a8;
                          }
                        }
                      }
                    }

                    ++v37;
                  }

                  while (v37 != 8);
                  v43 = [v36 _descriptorAtIndex:8];
                  v142 = [v36 _descriptorAtIndex:9];
                  v44 = [v35 pixelFormat];
                  v45 = a11;
                  if (a11)
                  {
                    v138 = [a11 isDepthWriteEnabled];
                    v45 = writesStencilTexture([a11 backFaceStencil]) || writesStencilTexture(objc_msgSend(a11, "frontFaceStencil"));
                  }

                  else
                  {
                    v138 = 0;
                  }

                  v140 = (v44 - 253) & 0xFFFFFFFFFFFFFFF7;
                  if (v43 && [v43 texture] && objc_msgSend(v43, "storeAction") == 1 && ((v138 ^ 1) & 1) == 0 && v140)
                  {
                    v60 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v43 _descriptorPrivate], a10);
                    v61 = [(MTLDebugRenderTargetAttachmentInfo *)v60 intersectsTexture:v35];
                    if (v61)
                    {
                      v62 = "resolve";
                      if (v61 != 2)
                      {
                        if (v61 != 1)
                        {
                          goto LABEL_204;
                        }

                        v62 = "depth";
                      }

                      v134 = v62;
                      v135 = v62;
                      v132 = v26;
                      v133 = v32;
                      v122 = MTLArgumentTypeToString(2);
                      v131 = v33;
                      v104 = a2;
                      v113 = a3;
                      MTLReportFailure();
                    }
                  }

                  if (v142 && [v142 texture])
                  {
                    v63 = [v142 storeAction];
                    v64 = !v45;
                    if (v63 != 1)
                    {
                      v64 = 1;
                    }

                    if ((v64 & 1) == 0 && !v140)
                    {
                      v65 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v142 _descriptorPrivate], a10);
                      v66 = [(MTLDebugRenderTargetAttachmentInfo *)v65 intersectsTexture:v35];
                      if (v66)
                      {
                        v67 = "resolve";
                        if (v66 != 2)
                        {
                          if (v66 != 1)
                          {
                            goto LABEL_204;
                          }

                          v67 = "stencil";
                        }

                        v134 = v67;
                        v135 = v67;
                        v132 = v26;
                        v133 = v32;
                        v122 = MTLArgumentTypeToString(2);
                        v131 = v33;
                        v104 = a2;
                        v113 = a3;
                        MTLReportFailure();
                      }
                    }
                  }
                }

                v173 = 0u;
                v174 = 0u;
                v171 = 0u;
                v172 = 0u;
                v68 = [a12 countByEnumeratingWithState:&v171 objects:v177 count:{16, v104, v113, v122}];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v172;
                  do
                  {
                    for (i = 0; i != v69; ++i)
                    {
                      if (*v172 != v70)
                      {
                        objc_enumerationMutation(a12);
                      }

                      if ([*(*(&v171 + 1) + 8 * i) intersectsTexture:{v35, v104, v113, v122}])
                      {
                        v132 = v26;
                        v133 = v32;
                        v122 = MTLArgumentTypeToString(2);
                        v131 = v33;
                        v104 = a2;
                        v113 = a3;
                        MTLReportFailure();
                      }
                    }

                    v69 = [a12 countByEnumeratingWithState:&v171 objects:v177 count:16];
                  }

                  while (v69);
                }

                a5 = v151;
                v25 = v153;
                v29 = v161;
              }

              if (*v158)
              {
                if (*(v158 + 8) != 1)
                {
                  v132 = v26;
                  v133 = v32;
                  v122 = MTLArgumentTypeToString(2);
                  v131 = v33;
                  v104 = a2;
                  v113 = a3;
                  _MTLMessageContextPush_();
                }

                v72 = [v162 textureType];
                v73 = [*(v158 + 16) textureType];
                if (v72 != v73)
                {
                  v74 = v73;
                  if (![a1 relaxedTextureArrayBindingsEnabled] || (validateFunctionArguments(v72, v74) & 1) != 0)
                  {
                    v143 = MTLTextureTypeString();
                    v75 = MTLArgumentTypeToString(2);
                    v134 = v26;
                    v135 = v32;
                    v132 = v33;
                    v133 = MTLTextureTypeString();
                    v125 = v143;
                    v131 = v75;
                    v107 = a2;
                    v116 = a3;
                    _MTLMessageContextPush_();
                  }
                }

                v76 = [v35 usage];
                if ([v162 access])
                {
                  v77 = (*&v76 & 0x10000) != 0 ? 16 : 2;
                  if ((v35[20] & v77) == 0)
                  {
                    [*(v158 + 16) pixelFormat];
                    Name = MTLPixelFormatGetName();
                    v131 = v33;
                    v108 = a2;
                    v117 = a3;
                    _MTLMessageContextPush_();
                  }
                }

                v78 = v162;
                [v162 textureDataType];
                a5 = v151;
                if ((_MTLCompatibleTextureDataTypeAndPixelFormatInfo() & 1) == 0)
                {
                  [*(v158 + 16) pixelFormat];
                  v144 = MTLPixelFormatGetName();
                  v141 = MTLArgumentTypeToString(2);
                  v91 = [*(v158 + 16) label];
                  if (!v91)
                  {
                    v91 = [MEMORY[0x277CBEB68] null];
                  }

                  v139 = v91;
                  v78 = v162;
                  [v162 textureDataType];
                  v137 = MTLDataTypeString();
                  v136 = MTLArgumentTypeToString(2);
                  MTLArgumentTypeToString(2);
                  [*(v158 + 16) pixelFormat];
                  MTLPixelFormatGetName();
                  [*(v158 + 16) pixelFormat];
                  MTLPixelFormatCompatibilityString();
                  v135 = v136;
                  v133 = v33;
                  v134 = v137;
                  v131 = v141;
                  v132 = v139;
                  v118 = a3;
                  v127 = v144;
                  v109 = a2;
                  _MTLMessageContextPush_();
                  a5 = v151;
                  v25 = v153;
                }

                if ([v78 access] <= 1 && (objc_msgSend(v35, "requireUsage:", 1) & 1) == 0)
                {
                  v132 = [v35 usage];
                  v133 = 1;
                  v128 = v26;
                  v131 = v33;
                  v110 = a2;
                  v119 = a3;
                  _MTLMessageContextPush_();
                }

                if (([v162 access] - 1) <= 1 && (objc_msgSend(v35, "requireUsage:", 2) & 1) == 0)
                {
                  v132 = [v35 usage];
                  v133 = 2;
                  v129 = v26;
                  v131 = v33;
                  v111 = a2;
                  v120 = a3;
                  _MTLMessageContextPush_();
                }

                if (([a1 supportsFamily:{1010, v111, v120, v129}] & 1) == 0)
                {
                  v79 = [a1 supportsMTL4PlacementSparse];
                  v80 = [v162 access];
                  if (v79)
                  {
                    if (v80 && [v35 isSparse] && objc_msgSend(v35, "sparseTextureTier") != 1)
                    {
                      goto LABEL_181;
                    }
                  }

                  else if (v80 && [v35 isSparse])
                  {
LABEL_181:
                    v121 = a3;
                    v130 = v33;
                    v112 = a2;
                    _MTLMessageContextPush_();
                  }
                }

                if ([v162 access] == 1)
                {
                  [v35 pixelFormat];
                  if ((MTLReadWriteTextureIsSupported() & 1) == 0)
                  {
                    v122 = v26;
                    v131 = v33;
                    v104 = a2;
                    v113 = a3;
                    _MTLMessageContextPush_();
                  }
                }

                v34 = a6 + 88 * v33;
                v81 = *(v158 + 16);
                if (v81)
                {
                  if ([v162 access] != 2 && (objc_msgSend(v81, "protectionOptions") & v145) != 0)
                  {
                    v131 = [v81 protectionOptions];
                    v132 = a13;
                    v113 = a3;
                    v122 = v33;
                    v104 = a2;
                    _MTLMessageContextPush_();
                  }

                  if ([v162 access])
                  {
                    v82 = *(v158 + 16);
                    if ((a13 & ~[v82 protectionOptions]) != 0)
                    {
                      v131 = [v82 protectionOptions];
                      v132 = a13;
                      v113 = a3;
                      v122 = v33;
                      v104 = a2;
LABEL_81:
                      _MTLMessageContextPush_();
                    }
                  }

                  v30 = v160;
                  v29 = v161;
                  v34 = a6 + 88 * v33;
                  goto LABEL_167;
                }

LABEL_165:
                v29 = v161;
              }

              else
              {
                v132 = v26;
                v133 = v32;
                v122 = MTLArgumentTypeToString(2);
                v131 = v33;
                v104 = a2;
                v113 = a3;
                _MTLMessageContextPush_();
                v34 = a6 + 88 * v33;
              }

LABEL_166:
              v30 = v160;
              goto LABEL_167;
            }

            v34 = a14 + 88 * v33;
            if (!*v34)
            {
              v132 = v26;
              v133 = v32;
              v122 = MTLArgumentTypeToString(1);
              v131 = v33;
              v104 = a2;
              v113 = a3;
              _MTLMessageContextPush_();
              v34 = a14 + 88 * v33;
              v30 = v160;
              if ((*v34 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            if (*(v34 + 8) != 3)
            {
              v83 = v34;
              v132 = v26;
              v133 = v32;
              v122 = MTLArgumentTypeToString(1);
              v131 = v33;
              v104 = a2;
              v113 = a3;
              _MTLMessageContextPush_();
              v34 = v83;
            }

            v48 = v34;
            v57 = *(v34 + 56);
            if (v57 < [v162 threadgroupMemoryDataSize])
            {
              v84 = *(v48 + 56);
              v85 = [v162 threadgroupMemoryDataSize];
              v134 = v26;
              v135 = v32;
              v132 = MTLArgumentTypeToString(1);
              v133 = v33;
              v122 = v84;
              v131 = v85;
              a5 = v151;
              v104 = a2;
              v113 = a3;
              _MTLMessageContextPush_();
            }

            ++v156;
          }

          else
          {
            v34 = a5 + 88 * v33;
            v48 = v34;
            if ((a19 & 1) != 0 || *v34)
            {
              if ((*v34 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              v132 = v26;
              v133 = v32;
              v122 = MTLArgumentTypeToString(0);
              v131 = v33;
              v104 = a2;
              v113 = a3;
              _MTLMessageContextPush_();
              v34 = a5 + 88 * v33;
              v30 = v160;
              if ((*v48 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            if (*(v34 + 8))
            {
              v132 = v26;
              v133 = v32;
              v122 = MTLArgumentTypeToString(0);
              v131 = v33;
              v104 = a2;
              v113 = a3;
              _MTLMessageContextPush_();
            }

            v49 = [a1 supportsUnalignedVertexFetch];
            if (!a17 || !v49 || (*(a17 + v33) & 1) == 0)
            {
              v50 = *(v48 + 40);
              v51 = [v162 bufferAlignment];
              v52 = v51 <= 1 ? 1 : v51;
              if (v50 % v52)
              {
                v88 = MTLArgumentTypeToString(0);
                v133 = [v162 bufferAlignment];
                v134 = *(v48 + 40);
                v131 = v88;
                v132 = v33;
                v114 = a3;
                v123 = v26;
                v105 = a2;
                _MTLMessageContextPush_();
              }
            }

            v53 = *(v48 + 32) - *(v48 + 40);
            if (v53 < [v162 bufferDataSize] && objc_msgSend(v162, "bufferDataSize") != -1)
            {
              v159 = MTLArgumentTypeToString(0);
              v89 = *(v48 + 32);
              v90 = *(v48 + 40);
              [v162 bufferDataSize];
              v134 = v90;
              v135 = v89;
              a5 = v151;
              v132 = v159;
              v133 = v33;
              v124 = v26;
              v131 = v32;
              v106 = a2;
              v115 = a3;
              _MTLMessageContextPush_();
            }

            v54 = [v162 access];
            v34 = v48;
            if (v54 && !*(v48 + 16))
            {
              v113 = a3;
              v122 = v33;
              v104 = a2;
              _MTLMessageContextPush_();
              v34 = v48;
            }

            v55 = *(v34 + 16);
            v25 = v153;
            if (!v55)
            {
              goto LABEL_165;
            }

            if ([v162 access] != 2 && (objc_msgSend(v55, "protectionOptions") & v145) != 0)
            {
              v131 = [v55 protectionOptions];
              v132 = a13;
              v113 = a3;
              v122 = v33;
              v104 = a2;
              _MTLMessageContextPush_();
            }

            if ([v162 access])
            {
              v56 = *(v48 + 16);
              if ((a13 & ~[v56 protectionOptions]) != 0)
              {
                v131 = [v56 protectionOptions];
                v132 = a13;
                v113 = a3;
                v122 = v33;
                v104 = a2;
                _MTLMessageContextPush_();
              }
            }
          }

          v30 = v160;
          v29 = v161;
          v34 = v48;
          goto LABEL_167;
        }
      }

LABEL_182:
      v23 = v157 + 1;
    }

    while (v157 + 1 != v152);
    result = [a4 countByEnumeratingWithState:&v167 objects:v176 count:16];
    v152 = result;
  }

  while (result);
LABEL_186:
  if (a16)
  {
    v92 = a15;
    v93 = [MEMORY[0x277CBEB18] arrayWithCapacity:v156];
    if (a15)
    {
      v94 = (a14 + 64);
      do
      {
        if (*(v94 - 64) == 1)
        {
          [v93 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", *v94, *(v94 - 1))}];
        }

        v94 += 11;
        --v92;
      }

      while (v92);
    }

    v95 = [v93 sortedArrayUsingComparator:{&__block_literal_global_1703, v104, v113, v122}];
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    result = [v95 countByEnumeratingWithState:&v163 objects:v175 count:16];
    if (result)
    {
      v96 = result;
      v97 = 0;
      v98 = *v164;
      do
      {
        v99 = 0;
        do
        {
          if (*v164 != v98)
          {
            objc_enumerationMutation(v95);
          }

          v100 = *(*(&v163 + 1) + 8 * v99);
          if (v97)
          {
            v101 = [v97 rangeValue];
            if (v101 + v102 > [v100 rangeValue])
            {
              _MTLMessageContextPush_();
            }
          }

          else
          {
            v97 = *(*(&v163 + 1) + 8 * v99);
          }

          ++v99;
        }

        while (v96 != v99);
        result = [v95 countByEnumeratingWithState:&v163 objects:v175 count:16];
        v96 = result;
      }

      while (result);
    }
  }

  v103 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22E1EBEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1EC0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1EC3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1EC560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *validateMTLViewport(void *result, MTLViewport *a2, _MTLMessageContext *a3)
{
  v3 = result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = *result;
    result = _MTLMessageContextPush_();
  }

  if ((v3[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = v3[1];
    result = _MTLMessageContextPush_();
  }

  if ((v3[2] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = v3[2];
    result = _MTLMessageContextPush_();
  }

  if ((v3[3] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = v3[3];
    result = _MTLMessageContextPush_();
  }

  if ((v3[4] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v8 = v3[4];
    result = _MTLMessageContextPush_();
  }

  if ((v3[5] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = v3[5];
    return _MTLMessageContextPush_();
  }

  return result;
}

unint64_t validateMTLScissorRect(MTLDebugRenderCommandEncoder *a1, const MTLScissorRect *a2, _MTLMessageContext *a3)
{
  v5 = [(MTLDebugRenderCommandEncoder *)a1 width];
  result = [(MTLDebugRenderCommandEncoder *)a1 height];
  v7 = result;
  width = a2->width;
  if (width + a2->x > v5)
  {
    v13 = width + a2->x;
    x = a2->x;
    v11 = a2->width;
    result = _MTLMessageContextPush_();
  }

  if (a2->height + a2->y > v7)
  {
    y = a2->y;
    height = a2->height;
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t _MTLDebugValidateDeferredStoreActionOnDevice(void *a1, unint64_t a2, void *a3, unint64_t a4, unsigned int a5)
{
  _MTLMessageContextBegin_();
  v10 = [a3 _descriptorPrivate];
  if (a2 == 4)
  {
    _MTLMessageContextPush_();
  }

  if (((a5 >> a4) & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (a2 > 4 || ((1 << a2) & 0x1A) == 0) && (*(v10 + 48))
  {
    if (a4 == 8)
    {
      v15 = @"the depth attachment";
    }

    else if (a4 == 9)
    {
      v15 = @"the stencil attachment";
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"color attachment %lu", a4];
    }

    if (a2 > 2)
    {
      v17 = @"Unknown";
    }

    else
    {
      v17 = off_2787B4FF8[a2];
    }

    v18 = v15;
    v19 = v17;
    _MTLMessageContextPush_();
  }

  if (!*v10)
  {
    return _MTLMessageContextEnd();
  }

  v11 = [*v10 storageMode];
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0 && v11 == 3)
  {
    _MTLMessageContextPush_();
  }

  v12 = a2 & 0xFFFFFFFFFFFFFFFELL;
  if (v12 == 2)
  {
    if (a4 == 9)
    {
      if ([a1 supportsMSAAStencilResolve])
      {
        goto LABEL_22;
      }

      v13 = *(v10 + 40);
      if (v13 <= 4)
      {
LABEL_16:
        v14 = off_2787B5010[v13];
LABEL_42:
        [(__CFString *)v14 UTF8String:v18];
        _MTLMessageContextPush_();
        goto LABEL_22;
      }
    }

    else
    {
      if (a4 != 8 || ([a1 supportsMSAADepthResolve] & 1) != 0)
      {
LABEL_22:
        if (!*(v10 + 112))
        {
          _MTLDebugValidateDeferredStoreActionOnDevice_cold_1(v10);
        }

        goto LABEL_24;
      }

      v13 = *(v10 + 40);
      if (v13 < 5)
      {
        goto LABEL_16;
      }
    }

    v14 = @"Unknown";
    goto LABEL_42;
  }

LABEL_24:
  if (*(v10 + 112))
  {
    if (a4 > 7)
    {
      if (a4 == 9)
      {
        if (v12 != 2)
        {
LABEL_43:
          _MTLMessageContextPush_();
        }
      }

      else if (a4 == 8 && v12 != 2)
      {
        goto LABEL_43;
      }
    }

    else if (v12 != 2)
    {
      goto LABEL_43;
    }
  }

  return _MTLMessageContextEnd();
}

uint64_t _MTLDebugValidateDeferredStoreActionOptionsOnDevice(void *a1, char a2, void *a3, uint64_t a4, unsigned int a5)
{
  _MTLMessageContextBegin_();
  if (((a5 >> a4) & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v10 = [a3 _descriptorPrivate];
  if (a2)
  {
    v11 = v10;
    if (a4 == 8)
    {
      v12 = @"the depth attachment";
    }

    else if (a4 == 9)
    {
      v12 = @"the stencil attachment";
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"color attachment %lu", a4];
    }

    if (([a1 areProgrammableSamplePositionsSupported] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v13 = *(v11 + 40);
    if (v13 > 2)
    {
      if ((v13 - 3) >= 2)
      {
LABEL_15:
        _MTLMessageContextPush_();
      }
    }

    else if (v13 != 1)
    {
      goto LABEL_15;
    }
  }

  return _MTLMessageContextEnd();
}

unint64_t _MTLDebugValidateMTLPrimitiveType(unint64_t result, char a2)
{
  if (result >= 5 && (result - 5 > 4 || (a2 & 1) == 0))
  {
    return MTLReportFailure();
  }

  return result;
}

unint64_t _MTLDebugValidateMTLPrimitiveTypeWithContext(unint64_t result, char a2)
{
  if (result >= 5 && (result - 5 > 4 || (a2 & 1) == 0))
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

BOOL writesStencilTexture(MTLStencilDescriptor *a1)
{
  v2 = [(MTLStencilDescriptor *)a1 stencilCompareFunction];
  v3 = [(MTLStencilDescriptor *)a1 writeMask];
  if (v2 == MTLCompareFunctionAlways)
  {
    if (!v3)
    {
      return 0;
    }

    return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
  }

  if (v3)
  {
    if ([(MTLStencilDescriptor *)a1 stencilFailureOperation])
    {
      return 1;
    }

    return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
  }

  return 0;
}

unint64_t validateIndirectBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  result = _MTLDebugValidateBuffer(a1, a2);
  if (*a6 == v10)
  {
    result = [a2 length];
    if (a4 + a3 > result)
    {
      [a2 length];
      result = _MTLMessageContextPush_();
    }
  }

  if ((a3 & 3) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t validateCommonTessellationErrors(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 originalObject];
  }

  MTLValidateFeatureSupport();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  _MTLMessageContextBegin_();
  if ((*a3 & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![objc_msgSend(a2 "vertexFunction")])
  {
    v34 = a8;
    _MTLMessageContextPush_();
  }

  v20 = [objc_msgSend(a2 vertexFunction];
  if (v20 == -1)
  {
    if (a5 >= 0x21)
    {
      v35 = a5;
      goto LABEL_44;
    }
  }

  else if (v20 != a5)
  {
    v35 = a5;
    v38 = v20;
    _MTLMessageContextPush_();
  }

  if (!a5 && a7)
  {
    v35 = 0;
LABEL_44:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  _MTLMessageContextBegin_();
  v21 = [a2 tessellationFactorFormat];
  if (v21 == 1)
  {
    v24 = [objc_msgSend(a2 "vertexFunction")];
    if (v24 == 1)
    {
      v23 = 16;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_61;
      }

      v23 = 24;
    }
  }

  else
  {
    if (v21)
    {
      goto LABEL_61;
    }

    v22 = [objc_msgSend(a2 "vertexFunction")];
    if (v22 == 1)
    {
      v23 = 8;
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_61;
      }

      v23 = 12;
    }
  }

  v25 = [a2 tessellationFactorStepFunction];
  if (v25 - 2 < 2)
  {
    if (!a4)
    {
      v36 = 0;
      _MTLMessageContextPush_();
    }

    if (a4 % v23)
    {
      v36 = a4;
      v39 = v23;
      goto LABEL_42;
    }
  }

  else
  {
    if (v25 > 1)
    {
      goto LABEL_61;
    }

    if (a4)
    {
      v36 = a4;
LABEL_42:
      _MTLMessageContextPush_();
    }
  }

  v26 = [a2 tessellationControlPointIndexType];
  if (v26 == 2)
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (v26 == 1)
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (!a6)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (v26)
  {
    goto LABEL_61;
  }

  if ((a7 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_45:
  v37 = a8;
  _MTLMessageContextPush_();
  if (!a6)
  {
LABEL_46:
    v32 = [a2 tessellationFactorStepFunction];
    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_55;
      }

      if (v32 == 1)
      {
        v23 *= a10 + a9;
        goto LABEL_55;
      }

LABEL_61:
      abort();
    }

    if (v32 != 2)
    {
      if (v32 != 3)
      {
        goto LABEL_61;
      }

      if (v23 * (a10 + a9) > a4)
      {
        _MTLMessageContextPush_();
      }
    }

    v23 = (a12 + a11) * a4;
LABEL_55:
    if (a10)
    {
      if (a12)
      {
LABEL_57:
        v27 = *(a3 + 16);
        v28 = *(a3 + 40);
        v29 = a1;
        v30 = 1;
        v31 = v23;
        goto LABEL_58;
      }
    }

    else
    {
      _MTLMessageContextPush_();
      if (a12)
      {
        goto LABEL_57;
      }
    }

    _MTLMessageContextPush_();
    goto LABEL_57;
  }

LABEL_39:
  v27 = *(a3 + 16);
  v28 = *(a3 + 40);
  v29 = a1;
  v30 = 0;
  v31 = 0;
LABEL_58:
  validateTessellationFactorBuffer(v29, v27, v28, v30, v31, &v40);
  return _MTLMessageContextEnd();
}

uint64_t _MTLTessellationControlPointIndexTypeToMTLIndexType(MTLTessellationControlPointIndexType a1)
{
  if (a1 == MTLTessellationControlPointIndexTypeUInt16)
  {
    return 0;
  }

  if (a1 != MTLTessellationControlPointIndexTypeUInt32)
  {
    abort();
  }

  return 1;
}

uint64_t validateCommonBarrier(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = result;
  if (a3 >= 4)
  {
    v8 = a3;
    result = _MTLMessageContextPush_();
    if ((a4 & 4) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_4;
  }

  result = [v7 supportsTileShaders];
  if (!result)
  {
LABEL_7:
    result = _MTLMessageContextPush_();
    goto LABEL_8;
  }

LABEL_4:
  if ((a4 & 0x18) != 0)
  {
    result = [v7 supportsMeshShaders];
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if (a4 >= 0x20)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a5 & 4) != 0)
  {
    result = [v7 supportsTileShaders];
    if (!result)
    {
      return _MTLMessageContextPush_();
    }
  }

  if ((a5 & 0x18) != 0)
  {
    result = [v7 supportsMeshShaders];
    if (!result)
    {
      return _MTLMessageContextPush_();
    }
  }

  if (a5 >= 0x20)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

void sub_22E1F7E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL25validateFunctionArgumentsPU19objcproto9MTLDevice11objc_objectP8NSStringS2_P7NSArrayP24MTLDebugFunctionArgumentmS6_mS6_mP43MTLRenderPassColorAttachmentDescriptorArrayP47MTLRenderPipelineColorAttachmentDescriptorArraymP25MTLDepthStencilDescriptorP12NSMutableSetIP34MTLDebugRenderTargetAttachmentInfoEyS6_mbPKbP18_MTLMessageContextb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 rangeValue];
  v5 = [a3 rangeValue];
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

BOOL usesStencilTexture(MTLStencilDescriptor *a1)
{
  if ([(MTLStencilDescriptor *)a1 stencilCompareFunction]== MTLCompareFunctionAlways)
  {
    if ([(MTLStencilDescriptor *)a1 writeMask])
    {
      return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
    }
  }

  else
  {
    if ([(MTLStencilDescriptor *)a1 readMask])
    {
      return 1;
    }

    if ([(MTLStencilDescriptor *)a1 writeMask])
    {
      if ([(MTLStencilDescriptor *)a1 stencilFailureOperation])
      {
        return 1;
      }

      return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
    }
  }

  return 0;
}

unint64_t validateTessellationFactorBuffer(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  result = _MTLDebugValidateBuffer(a1, a2);
  if (a4)
  {
    if (*a6 == v11)
    {
      result = [a2 length];
      if (a5 + a3 > result)
      {
        [a2 length];
        result = _MTLMessageContextPush_();
      }
    }
  }

  if ((a3 & 3) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

void std::vector<MTLViewport>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::vector<MTLScissorRect>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<MTLViewport>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v20 = a3 - __src;
    if (v20)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v8[v20];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 2);
        *(v16 + 1) = *(v14 + 1);
        *(v16 + 2) = v18;
        *v16 = v17;
        v16 += 48;
        v14 += 48;
        v15 += 48;
      }

      while (v14 != a3);
    }

    v19 = v15;
  }

  v6[1] = v19;
  return result;
}

void *std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLScissorRect>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v19 = a3 - __src;
    if (v19)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
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
      v15 = v11;
      do
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v13 += 32;
        *v15 = v16;
        *(v15 + 1) = v17;
        v15 += 32;
        v14 += 32;
      }

      while (v13 != a3);
    }

    v18 = v14;
  }

  v6[1] = v18;
  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}