void re::AudioManagerTelemetryReporter::addPreparedSourceState(uint64_t a1, uint64_t *a2)
{
  v3 = re::AudioManagerTelemetryReporter::m_audioManagerTelemetryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re29AudioManagerTelemetryReporter22addPreparedSourceStateENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEE_block_invoke;
  block[3] = &__block_descriptor_56_ea8_40c64_ZTSKNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE_e5_v8__0l;
  v5 = *a2;
  v4 = a2[1];
  block[4] = a1;
  block[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, block);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter22addPreparedSourceStateENSt3__110shared_ptrINS_5audio24REPHASESoundPrepareStateEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  ++v1[25];
  v3 = *(v2 + 100);
  if (v3 == 2)
  {
    ++v1[28];
  }

  else if (v3 == 1)
  {
    ++v1[26];
  }

  else if (!*(v2 + 100))
  {
    ++v1[27];
    v4 = *(v2 + 304);
    switch(v4)
    {
      case 3:
        ++v1[31];
        break;
      case 1:
        ++v1[30];
        break;
      case 0:
        ++v1[29];
        break;
    }
  }

  return result;
}

uint64_t __copy_helper_block_ea8_40c64_ZTSKNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c64_ZTSKNSt3__110shared_ptrIN2re5audio24REPHASESoundPrepareStateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter31updateCalibrationModeStatisticsE22REAudioCalibrationModed_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 48);
  switch(v2)
  {
    case 2:
      v7 = *(v1 + 168);
      v8 = *(v1 + 136) + 1;
      *(v1 + 176) = *(v1 + 176) + (*(result + 40) - *(v1 + 176)) / v8;
      *(v1 + 136) = v8;
      v9 = *(result + 40);
      if (v9 >= v7)
      {
        v9 = v7;
      }

      *(v1 + 168) = v9;
      v10 = *(result + 40);
      if (v10 <= *(v1 + 184))
      {
        v10 = *(v1 + 184);
      }

      *(v1 + 184) = v10;
      break;
    case 1:
      v3 = *(v1 + 144);
      v4 = *(v1 + 132) + 1;
      *(v1 + 152) = *(v1 + 152) + (*(result + 40) - *(v1 + 152)) / v4;
      *(v1 + 132) = v4;
      v5 = *(result + 40);
      if (v5 >= v3)
      {
        v5 = v3;
      }

      *(v1 + 144) = v5;
      v6 = *(result + 40);
      if (v6 <= *(v1 + 160))
      {
        v6 = *(v1 + 160);
      }

      *(v1 + 160) = v6;
      break;
    case 0:
      ++*(v1 + 128);
      break;
  }

  return result;
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter25updateConcurrentPlayCountEj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v2 <= *(v1 + 92))
  {
    v2 = *(v1 + 92);
  }

  *(v1 + 92) = v2;
  return result;
}

uint64_t ___ZN2re29AudioManagerTelemetryReporter28updateConcurrentPrepareCountEj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v2 <= *(v1 + 96))
  {
    v2 = *(v1 + 96);
  }

  *(v1 + 96) = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<PHASESource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
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

void *std::__hash_table<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::__unordered_map_hasher<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::hash<re::AudioManager_PHASE const*>,std::equal_to<re::AudioManager_PHASE const*>,true>,std::__unordered_map_equal<re::AudioManager_PHASE const*,std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>,std::equal_to<re::AudioManager_PHASE const*>,std::hash<re::AudioManager_PHASE const*>,true>,std::allocator<std::__hash_value_type<re::AudioManager_PHASE const*,std::vector<NSObject  {objcproto18OS_dispatch_source}* {__strong}>>>>::find<re::AudioManager_PHASE const*>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void REAudioServicesNotificationCallbackRegistry::registerCallback(void *a1, unsigned __int8 *a2, void *a3)
{
  v5 = a3;
  v6 = _Block_copy(v5);
  v7 = std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<REAudioServicesNotificationCallbackConfiguration,std::piecewise_construct_t const&,std::tuple<REAudioServicesNotificationCallbackConfiguration const&>,std::tuple<>>(a1, a2);
  v8 = v7[4];
  v7[4] = v6;
}

uint64_t **REAudioServicesNotificationCallbackRegistry::unregisterCallback(REAudioServicesNotificationCallbackRegistry *this, const REAudioServicesNotificationCallbackConfiguration *a2)
{
  result = std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::find<REAudioServicesNotificationCallbackConfiguration>(this, &a2->var0);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::remove(this, result, v4);
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:ne200100](v4);
  }

  return result;
}

void REAudioServicesNotificationCallbackRegistry::getCallbacksForType(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    v6 = *(i + 17);
    v7 = _Block_copy(i[4]);
    v8 = v7;
    if (v6 == a2)
    {
      v9 = [v7 copy];
      v11 = a3[1];
      v10 = a3[2];
      if (v11 >= v10)
      {
        v13 = (v11 - *a3) >> 3;
        if ((v13 + 1) >> 61)
        {
          std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v10 - *a3;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        v21 = a3;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PHASESource * {__strong}>>(a3, v16);
        }

        v17 = 0;
        v18 = (8 * v13);
        v20 = 0;
        *v18 = v9;
        v19 = 8 * v13 + 8;
        std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__swap_out_circular_buffer(a3, &v17);
        v12 = a3[1];
        std::__split_buffer<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)> &>::~__split_buffer(&v17);
      }

      else
      {
        *v11 = v9;
        v12 = v11 + 1;
      }

      a3[1] = v12;
    }
  }
}

void std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t **std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<REAudioServicesNotificationCallbackConfiguration,std::piecewise_construct_t const&,std::tuple<REAudioServicesNotificationCallbackConfiguration const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = (4 * a2[1]) | (2 * v2) | (8 * v3);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (4 * a2[1]) | (2 * v2) | (8 * v3);
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
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v9 + 17), *(v9 + 16)) != __PAIR64__(a2[1], v2) || v9[3] != v3)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_1E21648D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::__unordered_map_hasher<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,true>,std::__unordered_map_equal<REAudioServicesNotificationCallbackConfiguration,std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>,std::equal_to<REAudioServicesNotificationCallbackConfiguration>,REAudioServicesNotificationCallbackRegistry::ConfigHasher,true>,std::allocator<std::__hash_value_type<REAudioServicesNotificationCallbackConfiguration,void({block_pointer} {__strong})(void)>>>::find<REAudioServicesNotificationCallbackConfiguration>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = (4 * a2[1]) | (2 * v3) | (8 * v4);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (4 * a2[1]) | (2 * v3) | (8 * v4);
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (__PAIR64__(*(result + 17), *(result + 16)) == __PAIR64__(a2[1], v3) && result[3] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)> &>::~__split_buffer(uint64_t a1)
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

void *re::allocInfo_AudioSourceSyncState(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_122, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_122))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D208, "AudioSourceSyncState");
    __cxa_guard_release(&_MergedGlobals_122);
  }

  return &unk_1EE19D208;
}

void re::initInfo_AudioSourceSyncState(re *this, re::IntrospectionBase *a2)
{
  v94[0] = 0x66DEFDF30BAE648ALL;
  v94[1] = "AudioSourceSyncState";
  if (v94[0])
  {
    if (v94[0])
    {
    }
  }

  *(this + 2) = v95;
  if ((atomic_load_explicit(&qword_1EE19D1F0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE19D1F0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_AssetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "asset";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x1800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE19D298 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = introspect_REAudioPlaybackState(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "playbackState";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3000000003;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE19D2A0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "playbackSpeed";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3800000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE19D2A8 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "reverbSendLevel";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x4800000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE19D2B0 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "currentGain";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x6000000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE19D2B8 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "targetGain";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x6400000007;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE19D2C0 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_double(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "fadeDuration";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x7000000008;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE19D2C8 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_uint64_t(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "version";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x100000000BLL;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE19D2D0 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_uint64_t(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "timebaseID";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x400000000CLL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE19D2D8 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_uint64_t(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "firstHalfExternalStreamUUID";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0xE00000000FLL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE19D2E0 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_uint64_t(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "secondHalfExternalStreamUUID";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0xE800000010;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE19D2E8 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_float(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "directSendLevel";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x5800000012;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE19D2F0 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::IntrospectionInfo<re::DynamicString>::get(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "stsLabel";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0xF000000013;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE19D2F8 = v57;
      v58 = re::introspectionAllocator(v57);
      v60 = re::introspect_BOOL(1, v59);
      v61 = (*(*v58 + 32))(v58, 72, 8);
      *v61 = 1;
      *(v61 + 8) = "deferToSystemAcousticTuning";
      *(v61 + 16) = v60;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0x11000000016;
      *(v61 + 40) = 0;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 0;
      qword_1EE19D300 = v61;
      v62 = re::introspectionAllocator(v61);
      v64 = re::introspect_uint32_t(1, v63);
      v65 = (*(*v62 + 32))(v62, 72, 8);
      *v65 = 1;
      *(v65 + 8) = "gainActivationCounter";
      *(v65 + 16) = v64;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0x6800000017;
      *(v65 + 40) = 0;
      *(v65 + 48) = 0;
      *(v65 + 56) = 0;
      *(v65 + 64) = 0;
      qword_1EE19D308 = v65;
      v66 = re::introspectionAllocator(v65);
      v68 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v67);
      v69 = (*(*v66 + 32))(v66, 72, 8);
      *v69 = 1;
      *(v69 + 8) = "mixGroupName";
      *(v69 + 16) = v68;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0x8000000018;
      *(v69 + 40) = 0;
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      qword_1EE19D310 = v69;
      v70 = re::introspectionAllocator(v69);
      v72 = re::introspect_BOOL(1, v71);
      v73 = (*(*v70 + 32))(v70, 72, 8);
      *v73 = 1;
      *(v73 + 8) = "oneShotSound";
      *(v73 + 16) = v72;
      *(v73 + 24) = 0;
      *(v73 + 32) = 0x5C00000019;
      *(v73 + 40) = 0;
      *(v73 + 48) = 0;
      *(v73 + 56) = 0;
      *(v73 + 64) = 0;
      qword_1EE19D318 = v73;
      v74 = re::introspectionAllocator(v73);
      v75 = re::audio::introspect_AudioSourceDirectivityConfiguration(1);
      v76 = (*(*v74 + 32))(v74, 72, 8);
      *v76 = 1;
      *(v76 + 8) = "directivityConfig";
      *(v76 + 16) = v75;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0xD00000001CLL;
      *(v76 + 40) = 0;
      *(v76 + 48) = 0;
      *(v76 + 56) = 0;
      *(v76 + 64) = 0;
      qword_1EE19D320 = v76;
      v77 = re::introspectionAllocator(v76);
      v79 = re::introspect_BOOL(1, v78);
      v80 = (*(*v77 + 32))(v77, 72, 8);
      *v80 = 1;
      *(v80 + 8) = "shouldRedactSensitiveInfoFromLogs";
      *(v80 + 16) = v79;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0x1110000001DLL;
      *(v80 + 40) = 0;
      *(v80 + 48) = 0;
      *(v80 + 56) = 0;
      *(v80 + 64) = 0;
      qword_1EE19D328 = v80;
      v81 = re::introspectionAllocator(v80);
      v83 = re::introspect_float(1, v82);
      v84 = (*(*v81 + 32))(v81, 72, 8);
      *v84 = 1;
      *(v84 + 8) = "rolloffFactor";
      *(v84 + 16) = v83;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0x540000001ELL;
      *(v84 + 40) = 0;
      *(v84 + 48) = 0;
      *(v84 + 56) = 0;
      *(v84 + 64) = 0;
      qword_1EE19D330 = v84;
      v85 = re::introspectionAllocator(v84);
      v87 = re::introspect_uint64_t(1, v86);
      v88 = (*(*v85 + 32))(v85, 72, 8);
      *v88 = 1;
      *(v88 + 8) = "groupToken";
      *(v88 + 16) = v87;
      *(v88 + 24) = 0;
      *(v88 + 32) = 0x80000001FLL;
      *(v88 + 40) = 0;
      *(v88 + 48) = 0;
      *(v88 + 56) = 0;
      *(v88 + 64) = 0;
      qword_1EE19D338 = v88;
      v89 = re::introspectionAllocator(v88);
      v91 = re::introspect_BOOL(1, v90);
      v92 = (*(*v89 + 32))(v89, 72, 8);
      *v92 = 1;
      *(v92 + 8) = "isGroupPlaybackSound";
      *(v92 + 16) = v91;
      *(v92 + 24) = 0;
      *(v92 + 32) = 32;
      *(v92 + 40) = 0;
      *(v92 + 48) = 0;
      *(v92 + 56) = 0;
      *(v92 + 64) = 0;
      qword_1EE19D340 = v92;
      __cxa_guard_release(&qword_1EE19D1F0);
    }
  }

  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 22;
  *(this + 8) = &qword_1EE19D298;
  *(this + 9) = re::internal::defaultConstruct<re::AudioSourceSyncState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioSourceSyncState>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioSourceSyncState>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioSourceSyncState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v93 = v95;
}

void *re::internal::defaultConstruct<re::AudioSourceSyncState>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 48) = 9;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 84) = 1065353216;
  *(a3 + 92) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 96) = _D0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1065353216;
  *(a3 + 128) = 0;
  *(a3 + 168) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 176) = 0u;
  v9 = (a3 + 176);
  v10 = re::DynamicString::setCapacity(v9, 0);
  *(v3 + 240) = 0u;
  v3 += 240;
  *(v3 - 32) = 1;
  *(v3 - 28) = 0x3E051EB800000000;
  *(v3 - 20) = 1106247680;
  *(v3 - 16) = 0u;
  *(v3 + 16) = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AudioSourceSyncState>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  re::DynamicString::deinit((a3 + 240));
  re::DynamicString::deinit((a3 + 176));
  if (a3[128] == 1)
  {
    re::DynamicString::deinit((a3 + 136));
  }

  re::AssetHandle::~AssetHandle((a3 + 24));
}

void *re::internal::defaultConstructV2<re::AudioSourceSyncState>(uint64_t a1)
{
  v1 = a1;
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 9;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 1065353216;
  *(a1 + 92) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 96) = _D0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  v7 = (a1 + 176);
  v8 = re::DynamicString::setCapacity(v7, 0);
  *(v1 + 240) = 0u;
  v1 += 240;
  *(v1 - 32) = 1;
  *(v1 - 28) = 0x3E051EB800000000;
  *(v1 - 20) = 1106247680;
  *(v1 - 16) = 0u;
  *(v1 + 16) = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 32) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AudioSourceSyncState>(_BYTE *a1)
{
  re::DynamicString::deinit((a1 + 240));
  re::DynamicString::deinit((a1 + 176));
  if (a1[128] == 1)
  {
    re::DynamicString::deinit((a1 + 136));
  }

  re::AssetHandle::~AssetHandle((a1 + 24));
}

re::AudioSourceState *re::AudioSourceState::AudioSourceState(re::AudioSourceState *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CCCC38;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 9;
  *(this + 24) = 1065353216;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 124) = 1065353216;
  *(this + 132) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 17) = _D0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 40) = 1065353216;
  *(this + 168) = 0;
  *(this + 208) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  v8 = re::DynamicString::setCapacity(this + 27, 0);
  *(this + 62) = 1;
  *(this + 252) = 0x3E051EB800000000;
  *(this + 65) = 1106247680;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  re::DynamicString::setCapacity(this + 35, 0);
  *(this + 156) = 0;
  *(this + 80) = 0;
  *(this + 324) = 0;
  *(this + 41) = 1065353216;
  *(this + 42) = 0;
  *(this + 86) = 1065353216;
  v9 = MEMORY[0x1E69E9B18];
  v10 = *MEMORY[0x1E69E9B18];
  v11 = *(MEMORY[0x1E69E9B18] + 16);
  *(this + 22) = *MEMORY[0x1E69E9B18];
  *(this + 23) = v11;
  v12 = *(v9 + 32);
  v13 = *(v9 + 48);
  *(this + 24) = v12;
  *(this + 25) = v13;
  *(this + 26) = v10;
  *(this + 27) = v11;
  *(this + 28) = v12;
  *(this + 29) = v13;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = -1;
  *(this + 126) = 6553601;
  *(this + 508) = 0;
  *(this + 513) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 556) = 0u;
  *(this + 572) = 0x7FFFFFFFLL;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 0;
  *(this + 620) = 0x7FFFFFFFLL;
  *(this + 632) = 0;
  *(this + 656) = 0;
  *(this + 660) = 0;
  *(this + 684) = 0;
  *(this + 688) = 0;
  *(this + 696) = 0;
  *(this + 704) = 0;
  *(this + 189) = 0;
  *(this + 760) = 0;
  *(this + 768) = 0;
  *(this + 97) = 0;
  *(this + 196) = 0;
  *(this + 737) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 412) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  return this;
}

void re::AudioSourceState::~AudioSourceState(re::AudioSourceState *this)
{
  *this = &unk_1F5CCCC38;
  v2 = *(this + 61);
  *(this + 61) = 0;

  *(this + 64) = 0;
  *(this + 90) = 0;
  v3 = *(this + 102);
  if (v3)
  {
    CFRelease(v3);
  }

  re::AudioSourceState::setTimebase(this, 0, 0, 0);
  re::AudioSourceState::setTimebaseDispatchSource(this, 0);
  v4 = *(this + 92);
  *(this + 92) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = __Block_byref_object_copy__9;
    v8[4] = __Block_byref_object_dispose__9;
    v8[5] = 256;
    v9 = v5;
    if (qword_1EE19D200 != -1)
    {
      dispatch_once(&qword_1EE19D200, &__block_literal_global_10);
    }

    v6 = qword_1EE19D1F8;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZNK2re16AudioSourceState24releaseAudioSessionAsyncEv_block_invoke;
    v7[3] = &unk_1E871BDA8;
    v7[4] = v8;
    dispatch_async(v6, v7);

    _Block_object_dispose(v8, 8);
  }

  v8[0] = (this + 792);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](v8);

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 73);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 67);

  re::DynamicString::deinit((this + 280));
  re::DynamicString::deinit((this + 216));
  if (*(this + 168) == 1)
  {
    re::DynamicString::deinit((this + 176));
  }

  re::AssetHandle::~AssetHandle((this + 64));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AudioSourceState::~AudioSourceState(this);

  JUMPOUT(0x1E6906520);
}

void re::AudioSourceState::setTimebase(re::AudioSourceState *this, CFTypeRef cf, char a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v6 = *(this + 91);
  *(this + 91) = cf;
  v7 = MEMORY[0x1E6960CE8];
  v8 = MEMORY[0x1E6960CD0];
  if (cf)
  {
    CFRetain(cf);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, this, a4, *v7, *(this + 91), CFNotificationSuspensionBehaviorDrop);
    v11 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v11, this, a4, *v8, *(this + 91), CFNotificationSuspensionBehaviorDrop);
    v12 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v12, this, a4, *MEMORY[0x1E6960CE0], *(this + 91), CFNotificationSuspensionBehaviorDrop);
    v13 = *(this + 93);
    if (v13)
    {
      CMTimebaseAddTimerDispatchSource(*(this + 91), v13);
    }
  }

  if (v6)
  {
    v14 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v14, this, *v7, v6);
    v15 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v15, this, *v8, v6);
    v16 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(v16, this, *MEMORY[0x1E6960CD8], v6);
    v17 = *(this + 93);
    if (v17)
    {
      CMTimebaseRemoveTimerDispatchSource(v6, v17);
    }

    CFRelease(v6);
  }

  *(this + 752) = a3;
}

void re::AudioSourceState::setTimebaseDispatchSource(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = (a1 + 744);
  v5 = *(a1 + 744);
  if (v5)
  {
    v6 = *(a1 + 728);
    if (v6)
    {
      CMTimebaseRemoveTimerDispatchSource(v6, v5);
      v5 = *v4;
    }

    dispatch_source_cancel(v5);
  }

  objc_storeStrong((a1 + 744), a2);
  if (*v4)
  {
    dispatch_resume(*v4);
    v7 = *(a1 + 728);
    if (v7)
    {
      CMTimebaseAddTimerDispatchSource(v7, *v4);
    }
  }
}

void ___ZN2re13getAsyncQueueEv_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.re.AudioSourceState_SessionRelease", attr);
  v2 = qword_1EE19D1F8;
  qword_1EE19D1F8 = v1;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void **___ZNK2re16AudioSourceState24releaseAudioSessionAsyncEv_block_invoke(re *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *re::audioLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(*(a1 + 4) + 8) + 48);
    v6 = 138412290;
    v7 = v4;
    v5 = v2;
    _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "AudioSourceState::releaseAudioSessionAsync: releasing %@", &v6, 0xCu);
  }

  return re::ObjCObject::operator=((*(*(a1 + 4) + 8) + 48), 0);
}

void re::AudioSourceState::enqueuePendingCallback(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 784));
  v4 = *(a1 + 800);
  if (v4 >= *(a1 + 808))
  {
    v5 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)> const&>((a1 + 792), a2);
  }

  else
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](*(a1 + 800), a2);
    v5 = v4 + 32;
    *(a1 + 800) = v4 + 32;
  }

  *(a1 + 800) = v5;

  os_unfair_lock_unlock((a1 + 784));
}

void re::AudioSourceState::callPendingCallbacks(re::AudioSourceState *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  os_unfair_lock_lock(this + 196);
  if (&v6 != (this + 792))
  {
    std::vector<std::function<void ()(void)>>::__assign_with_size[abi:ne200100]<std::function<void ()(void)>*,std::function<void ()(void)>*>(&v6, *(this + 99), *(this + 100), (*(this + 100) - *(this + 99)) >> 5);
  }

  v2 = *(this + 100);
  v3 = *(this + 99);
  while (v2 != v3)
  {
    v2 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 - 32);
  }

  *(this + 100) = v3;
  os_unfair_lock_unlock(this + 196);
  v4 = v6;
  v5 = v7;
  while (v4 != v5)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v9, v4);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
    v4 += 32;
  }

  v9[0] = &v6;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](v9);
}

void sub_1E2166444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  os_unfair_lock_unlock(v12 + 196);
  a12 = &a9;
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t re::AudioSourceState::playbackHostConnectionIdentifier(re::AudioSourceState *this)
{
  v1 = *(this + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(v6);
  }

  v16 = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](32 * v2, a2);
  v7 = 32 * v2;
  v8 = *a1;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v17 + *a1 - v9;
    do
    {
      v13 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v12, v11);
      v11 += 32;
      v12 = v13 + 32;
    }

    while (v11 != v9);
    do
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v8);
      v8 += 32;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7 + 32;
  v14 = a1[2];
  a1[2] = v19;
  v18 = v8;
  v19 = v14;
  v16 = v8;
  v17 = v8;
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&v16);
  return v7 + 32;
}

void sub_1E216667C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<std::function<void ()(void)>>::__assign_with_size[abi:ne200100]<std::function<void ()(void)>*,std::function<void ()(void)>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 5)
  {
    if (v9)
    {
      v10 = result[1];
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          v10 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v10 - 32);
        }

        while (v10 != v9);
        v11 = *v7;
      }

      v7[1] = v9;
      operator delete(v11);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v12 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v12 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 59))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)>>>(v13);
      }
    }

    std::vector<PHASESource * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v14 = result[1];
  v15 = v14 - v9;
  if (a4 <= (v14 - v9) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        result = std::function<void ()(void)>::operator=(v9, v6);
        v6 += 32;
        v9 += 32;
      }

      while (v6 != a3);
      v14 = v7[1];
    }

    while (v14 != v9)
    {
      v14 -= 32;
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
    }

    v7[1] = v9;
  }

  else
  {
    if (v14 != v9)
    {
      v16 = v14 - v9;
      v17 = a2;
      do
      {
        std::function<void ()(void)>::operator=(v9, v17);
        v17 += 32;
        v9 += 32;
        v16 -= 32;
      }

      while (v16);
      v14 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*,std::function<void ()(void)>*,std::function<void ()(void)>*>(v6 + v15, a3, v14);
    v7[1] = result;
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(void)>>,std::function<void ()(void)>*,std::function<void ()(void)>*,std::function<void ()(void)>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a3, v5);
      v5 += 32;
      a3 += 32;
      v6 -= 32;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1E2166924(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
  return a1;
}

void sub_1E2166BC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL re::internal::BindNodeImplBase::readBindingKey(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 16) = 0;
  }

  v6 = 0uLL;
  result = re::internal::parseNextBindingKey(a2, &v6, a3);
  if (result)
  {
    *a4 = v6;
    if (*(a4 + 16) == 1)
    {
      *(a4 + 16) = 0;
    }
  }

  return result;
}

double re::BindNode::deinit(re::BindNode *this)
{
  if (*this)
  {
    (**this)(this);
  }

  else
  {
    v2 = *(this + 2);
    if (!v2)
    {
      return result;
    }

    v3 = *(this + 1);
    (**v2)(*(this + 2));
    (*(*v3 + 40))(v3, v2);
  }

  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t re::BindNode::copy(re::BindNode *this, const re::BindNode *a2)
{
  v4.n128_f64[0] = re::BindNode::deinit(this);
  v5 = *a2;
  if (*a2)
  {
    v6 = this;
  }

  else
  {
    result = *(a2 + 2);
    if (!result)
    {
      return result;
    }

    v9 = *(a2 + 1);
    v10 = (*(*result + 16))(result, v4.n128_f64[0]);
    v6 = (*(*v9 + 32))(v9, *v10, v10[1]);
    *this = 0;
    *(this + 1) = v9;
    *(this + 2) = v6;
    v5 = *a2;
    if (!*a2)
    {
      a2 = *(a2 + 2);
      v5 = *a2;
    }
  }

  v7 = *(v5 + 24);

  return v7(a2, v6, v4);
}

uint64_t re::BindNode::move(re::BindNode *this, re::BindNode *a2)
{
  v4.n128_f64[0] = re::BindNode::deinit(this);
  v5 = *a2;
  if (*a2)
  {
    v6 = this;
  }

  else
  {
    result = *(a2 + 2);
    if (!result)
    {
      return result;
    }

    v9 = *(a2 + 1);
    v10 = (*(*result + 16))(result, v4.n128_f64[0]);
    v6 = (*(*v9 + 32))(v9, *v10, v10[1]);
    *this = 0;
    *(this + 1) = v9;
    *(this + 2) = v6;
    v5 = *a2;
    if (!*a2)
    {
      a2 = *(a2 + 2);
      v5 = *a2;
    }
  }

  v7 = *(v5 + 32);

  return v7(a2, v6, v4);
}

uint64_t re::BindNode::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a2;
    v4 = a2[2];
    if (!*a2)
    {
      a2 = a2[2];
    }

    if (a2 != a1)
    {
      v5 = v3 | v4;
      if (!v5)
      {
        return v5;
      }

      return (*(v2 + 40))();
    }
  }

  else
  {
    v6 = a1[2];
    v7 = *a2;
    v8 = a2[2];
    if (!*a2)
    {
      a2 = a2[2];
    }

    if (v6 != a2)
    {
      v5 = 0;
      v9 = (v7 | v8) == 0;
      if (!v6 || v9)
      {
        return v5;
      }

      v2 = *v6;
      return (*(v2 + 40))();
    }
  }

  return 1;
}

double re::BindNode::relativeNode@<D0>(re::BindNode *a1@<X0>, __int128 *a2@<X1>, re::BindNode *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 || *(a1 + 2)) && *(a2 + 1))
  {
    v11 = 0u;
    v12 = 0u;
    re::BindNode::copy(&v11, a1);
    v9 = *a2;
    while (1)
    {
      v5 = v11;
      if (v11)
      {
        if (!*(&v9 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12)
        {
          v6 = *(&v9 + 1) == 0;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
LABEL_19:
          *a3 = 0u;
          *(a3 + 1) = 0u;
          re::BindNode::move(a3, &v11);
          return re::BindNode::deinit(&v11);
        }

        v5 = *v12;
      }

      if (((*(v5 + 64))() & 1) == 0)
      {
        break;
      }

      if (v11)
      {
        v7 = &v11;
      }

      else
      {
        v7 = v12;
      }

      (*(*v7 + 56))(v10);
      re::BindNode::move(&v11, v10);
      re::BindNode::deinit(v10);
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    return re::BindNode::deinit(&v11);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

double re::BindNode::bindPoint@<D0>(re::BindNode **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (re::BindNode::processBindingPath(a1, a3, &v10, v8))
  {
    if (v10)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v11;
    }

    (*(*v6 + 72))(v6, a2, v8);
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
  }

  return re::BindNode::deinit(&v10);
}

uint64_t re::BindNode::processBindingPath(re::BindNode **a1, uint64_t *a2, re::BindNode **this, uint64_t a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (!*a1 && !a1[2])
  {
    return 0;
  }

  if (this != a1)
  {
    re::BindNode::copy(this, a1);
  }

  v12 = *a2;
  v11[0] = 0;
  v11[1] = 0;
  if (re::internal::parseBindingURI(a2, v11, &v12))
  {
    if (*this)
    {
      v7 = this;
    }

    else
    {
      v7 = this[2];
    }

    (*(*v7 + 48))(v13);
    if (v13 != this)
    {
      re::BindNode::move(this, v13);
    }

    re::BindNode::deinit(v13);
    if (!(*this | this[2]))
    {
      return 0;
    }
  }

  if (!*(&v12 + 1))
  {
    return 0;
  }

  while (1)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    if (*(a4 + 16) == 1)
    {
      *(a4 + 16) = 0;
    }

    v8 = *this;
    if (!*this)
    {
      v8 = *this[2];
    }

    result = (*(v8 + 8))();
    if (!result)
    {
      break;
    }

    if (!*(&v12 + 1))
    {
      return 1;
    }

    if (*this)
    {
      v10 = this;
    }

    else
    {
      v10 = this[2];
    }

    (*(*v10 + 56))(v13);
    if (v13 != this)
    {
      re::BindNode::move(this, v13);
    }

    re::BindNode::deinit(v13);
    if (!(*this | this[2]))
    {
      return 0;
    }
  }

  return result;
}

double re::BindNode::bindPointWithOverride@<D0>(re::BindNode **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  if (re::BindNode::processBindingPath(a1, a3, &v10, v8))
  {
    if (v10)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v11;
    }

    (*(*v6 + 80))(v6, a2, v8);
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
  }

  return re::BindNode::deinit(&v10);
}

uint64_t re::DynamicArray<re::BindPoint::BindPointData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 32 * v4;
        do
        {
          re::BindPoint::BindPointData::deinit(v3);
          v3 = (v3 + 32);
          v5 -= 32;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::BindPoint::addToBindPointStack(re::BindPoint *this, const re::BindPoint *a2)
{
  v4 = *(a2 + 3);
  v5 = v4 + *(this + 3);
  if (*(this + 2) < v5)
  {
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(this + 1, v5);
    v4 = *(a2 + 3);
  }

  if (v4)
  {
    v6 = *(a2 + 5);
    v7 = 32 * v4;
    do
    {
      re::DynamicArray<re::BindPoint::BindPointData>::add((this + 8), v6);
      v6 = (v6 + 32);
      v7 -= 32;
    }

    while (v7);
  }
}

void re::DynamicArray<re::BindPoint::BindPointData>::add(_anonymous_namespace_ *this, re::BindPoint::BindPointData *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BindPoint::BindPointData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  re::BindPoint::BindPointData::copy(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
}

void re::BindPoint::addToBindPointStack(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = v4 + a1[3];
  if (a1[2] < v5)
  {
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(a1 + 1, v5);
    v4 = *(a2 + 24);
  }

  if (v4)
  {
    v6 = *(a2 + 40);
    v7 = 32 * v4;
    do
    {
      re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v6);
      v6 += 2;
      v7 -= 32;
    }

    while (v7);
  }
}

BOOL re::BindPoint::operator==(re::BindPoint *a1, re::BindPoint *a2)
{
  v4 = re::BindPoint::baseValueUntyped(a1);
  if (v4 == re::BindPoint::baseValueUntyped(a2) && (v5 = re::BindPoint::overrideValueUntyped(a1), v5 == re::BindPoint::overrideValueUntyped(a2)))
  {
    return *a1 == *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::BindPoint::baseValueUntyped(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 88))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::overrideValueUntyped(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 120))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::isWeak(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 56))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::isAlive(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 64))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::makeAlive(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    MEMORY[0x1EEE9AC00](this);
    v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + 24);
    do
    {
      if (v8 == v7)
      {
        v10[1] = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        v14 = 797;
        v15 = 2048;
        v16 = v8;
        v17 = 2048;
        v18 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(v2 + 40) + v6);
      if (!*v9)
      {
        v9 = v9[2];
      }

      v4[v7++] = v9;
      v6 += 32;
    }

    while (v1 != v7);
    return (*(**v4 + 72))(*v4, 0, v4 + 1, v1 - 1);
  }

  return this;
}

uint64_t re::BindPoint::targetIdentifier(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 80))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::boundOwner(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 136))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::supportsOverrideValue(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 96))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::isOverridden(re::BindPoint *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](this);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v3;
  }

  bzero(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = 0;
  v7 = 0;
  v8 = *(this + 3);
  do
  {
    if (v8 == v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 797;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (*(this + 5) + v6);
    if (!*v9)
    {
      v9 = v9[2];
    }

    v4[v7++] = v9;
    v6 += 32;
  }

  while (v1 != v7);
  return (*(**v4 + 104))(*v4, 0, v4 + 1, v1 - 1);
}

uint64_t re::BindPoint::valueUntyped(re::BindPoint *this)
{
  if (re::BindPoint::isOverridden(this))
  {

    return re::BindPoint::overrideValueUntyped(this);
  }

  else
  {

    return re::BindPoint::baseValueUntyped(this);
  }
}

uint64_t re::BindPoint::setIsOverridden(uint64_t this, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (v2)
  {
    v4 = this;
    MEMORY[0x1EEE9AC00](this);
    v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v5 >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = v5;
    }

    bzero(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v8 = 0;
    v9 = 0;
    v10 = *(v4 + 24);
    do
    {
      if (v10 == v9)
      {
        v12[1] = 0;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v13 = 136315906;
        v14 = "operator[]";
        v15 = 1024;
        v16 = 797;
        v17 = 2048;
        v18 = v10;
        v19 = 2048;
        v20 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = (*(v4 + 40) + v8);
      if (!*v11)
      {
        v11 = v11[2];
      }

      v6[v9++] = v11;
      v8 += 32;
    }

    while (v2 != v9);
    return (*(**v6 + 112))(*v6, 0, v6 + 1, v2 - 1, a2);
  }

  return this;
}

uint64_t re::BindPoint::willSet(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    MEMORY[0x1EEE9AC00](this);
    v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + 24);
    do
    {
      if (v8 == v7)
      {
        v10[1] = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        v14 = 797;
        v15 = 2048;
        v16 = v8;
        v17 = 2048;
        v18 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(v2 + 40) + v6);
      if (!*v9)
      {
        v9 = v9[2];
      }

      v4[v7++] = v9;
      v6 += 32;
    }

    while (v1 != v7);
    return (*(**v4 + 144))(*v4, 0, v4 + 1, v1 - 1);
  }

  return this;
}

uint64_t re::BindPoint::markAsWritten(uint64_t this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    MEMORY[0x1EEE9AC00](this);
    v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x200)
    {
      v5 = 512;
    }

    else
    {
      v5 = v3;
    }

    bzero(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v6 = 0;
    v7 = 0;
    v8 = *(v2 + 24);
    do
    {
      if (v8 == v7)
      {
        v10[1] = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        v14 = 797;
        v15 = 2048;
        v16 = v8;
        v17 = 2048;
        v18 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = (*(v2 + 40) + v6);
      if (!*v9)
      {
        v9 = v9[2];
      }

      v4[v7++] = v9;
      v6 += 32;
    }

    while (v1 != v7);
    return (*(**v4 + 128))(*v4, 0, v4 + 1, v1 - 1);
  }

  return this;
}

void re::BindPoint::BindPointData::copy(re::BindPoint::BindPointData *this, const re::BindPoint::BindPointData *a2)
{
  v3 = this;
  v4.n128_f64[0] = re::BindPoint::BindPointData::deinit(this);
  v5 = *a2;
  if (!*a2)
  {
    v6 = *(a2 + 2);
    if (!v6)
    {
      return;
    }

    v7 = *(a2 + 1);
    v8 = (*(*v6 + 16))(v6, v4.n128_f64[0]);
    v9 = (*(*v7 + 32))(v7, *v8, v8[1]);
    *v3 = 0;
    *(v3 + 1) = v7;
    *(v3 + 2) = v9;
    v5 = *v6;
    a2 = v6;
    v3 = v9;
  }

  v10 = *(v5 + 24);

  v10(a2, v3, v4);
}

double re::BindPoint::BindPointData::move(re::BindPoint::BindPointData *a1, _OWORD *a2)
{
  v4.n128_f64[0] = re::BindPoint::BindPointData::deinit(a1);
  if (*a2)
  {
    v5 = *(*a2 + 32);

    v5(a2, a1, v4);
  }

  else if (*(a2 + 2))
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v6;
    v4.n128_u64[0] = 0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return v4.n128_f64[0];
}

uint64_t re::makeBindNode@<X0>(re *this@<X0>, const re::IntrospectionBase *a2@<X1>, uint64_t a3@<X8>)
{
  v8[0] = this;
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  v7 = 0;
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 + 8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 + 8);
}

double anonymous namespace::makeBindNodeInternal@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 || (*(a1 + 24) & 1) != 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *v6 = &unk_1F5CCCCB0;
    v7 = *(a1 + 16);
    *(v6 + 8) = *a1;
    *(v6 + 24) = v7;
    re::BindPoint::BindPoint(v6 + 40, a2);
    *(a3 + 16) = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double re::makeRelativeBindNode@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  re::DynamicArray<re::BindPoint::BindPointData>::add((a2 + 1), &v8);
  re::BindPoint::BindPointData::deinit(&v8);
  v6 = a2[5] + 32 * a2[3];
  *(v6 - 32) = &unk_1F5CCDAF0;
  *(v6 - 24) = a1;
  *&v9 = 0;
  v8 = a1;
  BYTE8(v9) = 0;
}

void re::makeBindPoint(re *this@<X0>, const re::IntrospectionBase *a2@<X1>, uint64_t a3@<X8>)
{
  if (this && a2)
  {
    if (*(this + 4) == 8 && (v7 = *(this + 14), v7))
    {
      v8 = *(this + 8);
      while (**v8 != 7)
      {
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_8;
        }
      }

      v9 = *(*v8 + 8);

      v9(a2, this);
    }

    else
    {
LABEL_8:
      *(a3 + 40) = 0;
      *a3 = this;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      v10[0] = this;
      v10[1] = 0;
      v10[2] = a2;
      v11 = 0;
    }
  }

  else
  {
    *(a3 + 40) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
  }
}

double re::makeBindPoint@<D0>(re *this@<X0>, const re::IntrospectionBase *a2@<X1>, BOOL *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (this && a2 && a3 && a4)
  {
    *a5 = this;
    *(a5 + 40) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    *(a5 + 8) = 0;
    memset(v12, 0, sizeof(v12));
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 8), v12);
    result = re::BindPoint::BindPointData::deinit(v12);
    v11 = *(a5 + 40) + 32 * *(a5 + 24);
    *(v11 - 32) = &unk_1F5CCDBC8;
    *(v11 - 24) = a3;
    *(v11 - 16) = a4;
    *(v11 - 8) = a2;
  }

  else
  {
    *(a5 + 40) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return result;
}

void re::makeBindPoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    *(a1 + 40) = 0;
    *a1 = a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    re::BindPoint::addToBindPointStack(a1, a4);
    if (*(a2 + 16) == 8 && (v8 = *(a2 + 56), v8))
    {
      v9 = *(a2 + 64);
      while (**v9 != 7)
      {
        v9 += 8;
        if (!--v8)
        {
          goto LABEL_7;
        }
      }

      (*(*v9 + 8))(&v10, a3, a2);
      re::BindPoint::addToBindPointStack(a1, &v10);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
    }

    else
    {
LABEL_7:
      v10 = a2;
      v11[0] = 0;
      v11[1] = a3;
      v12 = 0;
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }
}

uint64_t re::BindPoint::BindPoint(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 40) = 0;
  *result = v2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v3 = a2[2];
  *(result + 8) = a2[1];
  *(result + 16) = v3;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(result + 24);
  *(result + 24) = a2[3];
  a2[3] = v4;
  v5 = *(result + 40);
  *(result + 40) = a2[5];
  a2[5] = v5;
  ++*(a2 + 8);
  ++*(result + 32);
  return result;
}

void anonymous namespace::IntrospectionBindNodeImpl::~IntrospectionBindNodeImpl(_anonymous_namespace_::IntrospectionBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 48);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::IntrospectionBindNodeImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCCB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 40) = *(a1 + 40);
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(a2 + 48, (a1 + 48));
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::IntrospectionBindNodeImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCCB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return re::BindPoint::BindPoint(a2 + 40, (a1 + 40));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::IntrospectionBindNodeImpl>::equals(void *a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != "X" || a1[3] != a2[3] || a1[2] != a2[2])
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 5), (a2 + 5));
}

double anonymous namespace::IntrospectionBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t anonymous namespace::IntrospectionBindNodeImpl::relativeNodeForKey@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a2;
  v7 = a1[5];
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v8, a1 + 6);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8);
}

void anonymous namespace::IntrospectionBindNodeImpl::bindPointForKey(uint64_t a1@<X0>, uint64_t a2@<X1>, const re::IntrospectionBase *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7 && (*(a1 + 32) & 1) == 0)
  {
    goto LABEL_18;
  }

  v20 = *a3;
  if (*(&v20 + 1))
  {
    v24 = 0;
    v21 = a2;
    v22 = 0uLL;
    v23 = 0;
    re::BindPoint::addToBindPointStack(&v21, (a1 + 40));
    if (v17[0] || (v19 & 1) != 0)
    {
      if (!v17[1])
      {
        if (v18)
        {
          if (a2)
          {
            v14 = a2;
          }

          else
          {
            v14 = v17[0];
          }

          re::makeBindPoint(buf, v14, v18, &v21);
          *&v21 = *buf;
          re::DynamicArray<re::RigDataValue>::operator=(&v21 + 8, &buf[8]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
        }

        v15 = v22;
        *a4 = v21;
        *(a4 + 16) = v15;
        *(&v21 + 1) = 0;
        v22 = 0uLL;
        *(a4 + 40) = v24;
        v24 = 0;
        ++v23;
        *(a4 + 32) = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *re::foundationBindingLogObjects(v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Invalid binding key: %s.", buf, 0xCu);
      }
    }

    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
LABEL_25:
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v21 + 8);
LABEL_26:
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v21 + 8);
    return;
  }

  {
LABEL_18:
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    return;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    if (a2 || (a2 = *v8) != 0)
    {
      *(a4 + 40) = 0;
      *a4 = a2;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      re::BindPoint::addToBindPointStack(a4, (a1 + 40));
      if (*(a2 + 16) != 8 || (v12 = *(a2 + 56), !v12))
      {
LABEL_17:
        v21 = a2;
        *&v22 = v10;
        BYTE8(v22) = 0;
        return;
      }

      v13 = *(a2 + 64);
      while (**v13 != 7)
      {
        v13 += 8;
        if (!--v12)
        {
          goto LABEL_17;
        }
      }

      (*(*v13 + 8))(&v21, v10, a2);
      re::BindPoint::addToBindPointStack(a4, &v21);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v21 + 8);
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    a2 = *v8;
  }

  *(a4 + 40) = 0;
  *a4 = a2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;

  re::BindPoint::addToBindPointStack(a4, (a1 + 40));
}

void anonymous namespace::walk(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, const char **a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24) == 1)
  {
    *buf = 0u;
    v33 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
    v9 = re::BindPoint::BindPointData::deinit(buf);
    v10 = a5[5] + 32 * a5[3];
    *(v10 - 32) = 0;
    *v11 = &unk_1F5CCCD48;
    *(v11 + 8) = a3;
    v12 = *a4;
    v13 = a4[1];
    *(v11 + 16) = 0;
    *(v11 + 24) = &str_67;
    *(v11 + 57) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 120) = 0;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0;
    *(v10 - 16) = v11;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 24) = 1;
    return;
  }

  if (a2[1])
  {
    v31 = 0;
    v15 = *a4;
    if (**a4 == 45 || (v15 = sscanf(v15, "%zu", &v31), v15 != 1))
    {
      v25 = *re::foundationBindingLogObjects(v15);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Invalid binding key: Array index expected.";
LABEL_12:
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      }
    }

    else
    {
      v17 = *(a2[1] + 16);
      if (isCompatibleType)
      {
        if (a2[2])
        {
          *buf = *a2;
          *&buf[8] = 0;
          *&v33 = a2[2];
          BYTE8(v33) = 0;
          v20 = a2[1];
          *buf = 0u;
          v33 = 0u;
          re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
          re::BindPoint::BindPointData::deinit(buf);
          v21 = a5[5] + 32 * a5[3];
          *(v21 - 32) = &unk_1F5CCCE20;
          *(v21 - 24) = v20;
        }

        v22 = v31;
        *buf = 0u;
        v33 = 0u;
        re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
        re::BindPoint::BindPointData::deinit(buf);
        v23 = a5[5] + 32 * a5[3];
        *(v23 - 32) = &unk_1F5CCCEF8;
        *(v23 - 24) = v22;
        v24 = *(v17 + 48);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = v24;
        *(a1 + 24) = 0;
        return;
      }

      v25 = *re::foundationBindingLogObjects(isCompatibleType);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v26 = "Invalid binding key: Array type does not match expected type.";
        goto LABEL_12;
      }
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v27 = *(*a2 + 16);
  if (v27 <= 5)
  {
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v30 = *a4;
      }

      else
      {
        if (v27 != 4)
        {
          goto LABEL_37;
        }

        v29 = *a4;
      }
    }

    else
    {
      switch(v27)
      {
        case 0:
          goto LABEL_37;
        case 1:

          break;
        case 2:
          v28 = *a4;

          break;
        default:
          goto LABEL_50;
      }
    }
  }

  else
  {
    if (v27 > 8)
    {
      if ((v27 - 9) < 3)
      {
        goto LABEL_37;
      }

      if (v27 == 13)
      {

        return;
      }

LABEL_50:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected introspection type.", "!Unreachable code", "walk", 919);
      _os_crash();
      __break(1u);
      return;
    }

    if (v27 == 6)
    {
      goto LABEL_37;
    }

    if (v27 == 7)
    {
    }

    else
    {
    }
  }
}

void anonymous namespace::walkCStyleArray(re *a1, void *a2, uint64_t a3, char *a4, void *a5)
{
  v5 = a1;
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (*a4 == 45 || (a1 = sscanf(a4, "%zu", &v19), a1 != 1))
  {
    v10 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Invalid binding key: Array index expected.";
      goto LABEL_10;
    }

LABEL_11:
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 24) = 0;
    *(v5 + 2) = 0;
    return;
  }

  v9 = *a2;
  if (v19 >= *(*a2 + 64))
  {
    v10 = *re::foundationBindingLogObjects(a1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v11 = "Invalid binding key: Array index out of range.";
    goto LABEL_10;
  }

  if (a3 && *(v9 + 48) != a3)
  {
    v10 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Invalid binding key: Array type does not match expected type.";
LABEL_10:
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(v9 + 48);
    v14 = v12 + v19 * *(v13 + 20);
    *v5 = v13;
    *(v5 + 1) = 0;
    *(v5 + 2) = v14;
  }

  else
  {
    v15 = *(v9 + 48);
    v16 = v19 * *(v15 + 20);
    *buf = 0u;
    v21 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
    re::BindPoint::BindPointData::deinit(buf);
    v17 = a5[5] + 32 * a5[3];
    *(v17 - 32) = &unk_1F5CCCFD0;
    *(v17 - 24) = v15;
    *(v17 - 16) = v16;
    v18 = *(v9 + 48);
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = v18;
  }

  *(v5 + 24) = 0;
}

void anonymous namespace::walkDynamicArray(re *a1, uint64_t *a2, _anonymous_namespace_ *a3, char *a4, void *a5)
{
  v5 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (*a4 == 45 || (a1 = sscanf(a4, "%zu", &v17), a1 != 1))
  {
    v15 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Array index expected.";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else
  {
    if (a2[2])
    {
    }

    v10 = *a2;
    if (isCompatibleType)
    {
      v12 = v17;
      *buf = 0u;
      v19 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
      re::BindPoint::BindPointData::deinit(buf);
      v13 = a5[5] + 32 * a5[3];
      *(v13 - 32) = &unk_1F5CCD180;
      *(v13 - 24) = v10;
      *(v13 - 16) = v12;
      v14 = *(v10 + 48);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = v14;
      *(v5 + 24) = 0;
      return;
    }

    v15 = *re::foundationBindingLogObjects(isCompatibleType);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Dynamic Array type does not match expected type.";
      goto LABEL_9;
    }
  }

  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 24) = 0;
  *(v5 + 2) = 0;
}

void anonymous namespace::walkFixedArray(re *a1, uint64_t *a2, _anonymous_namespace_ *a3, char *a4, void *a5)
{
  v5 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (*a4 == 45 || (a1 = sscanf(a4, "%zu", &v17), a1 != 1))
  {
    v15 = *re::foundationBindingLogObjects(a1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Array index expected.";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else
  {
    if (a2[2])
    {
    }

    v10 = *a2;
    if (isCompatibleType)
    {
      v12 = v17;
      *buf = 0u;
      v19 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
      re::BindPoint::BindPointData::deinit(buf);
      v13 = a5[5] + 32 * a5[3];
      *(v13 - 32) = &unk_1F5CCD258;
      *(v13 - 24) = v10;
      *(v13 - 16) = v12;
      v14 = *(v10 + 48);
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = v14;
      *(v5 + 24) = 0;
      return;
    }

    v15 = *re::foundationBindingLogObjects(isCompatibleType);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "Invalid binding key: Fixed Array type does not match expected type.";
      goto LABEL_9;
    }
  }

  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 24) = 0;
  *(v5 + 2) = 0;
}

void anonymous namespace::walkPointer(_anonymous_namespace_ *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v33 = *MEMORY[0x1E69E9840];
  if (a2[2])
  {
  }

  v10 = *a2;
  v11 = *(*a2 + 48);
  if ((atomic_load_explicit(&qword_1EE19D350, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19D350);
    if (a1)
    {
      _MergedGlobals_123 = re::introspect_KeyValueStoreInterface(0);
      __cxa_guard_release(&qword_1EE19D350);
    }
  }

  if (v11 == _MergedGlobals_123)
  {
    v23 = *a4;
    v24 = *(a4 + 8);
    *&v29.var0 = 0;
    v29.var1 = &str_67;
    v30 = a3;
    v31 = 0u;
    v32 = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v31);
    re::BindPoint::BindPointData::deinit(&v31);
    v26 = a5[5] + 32 * a5[3];
    *(v26 - 32) = &unk_1F5CCD330;
    v27 = re::StringID::StringID((v26 - 24), &v29);
    *(v26 - 8) = v30;
    if (*&v29.var0)
    {
      if (*&v29.var0)
      {
      }
    }

    v28 = *(v10 + 48);
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    *v9 = v28;
    *(v9 + 24) = 0;
  }

  else
  {
    v12 = *(v10 + 48);
    v13 = *(v12 + 56);
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = *(v12 + 64);
    v15 = v14;
    v16 = v13;
    do
    {
      v17 = *v15;
      if (**v15 == 2)
      {
        goto LABEL_10;
      }

      ++v15;
      --v16;
    }

    while (v16);
    v17 = 0;
LABEL_10:
    while (1)
    {
      v18 = *v14;
      if (**v14 == 3)
      {
        break;
      }

      ++v14;
      if (!--v13)
      {
        v18 = 0;
        break;
      }
    }

    if (v17 && (v18 ? (v19 = *(v17 + 1) == 0) : (v19 = 1), !v19 && *(v18 + 1)))
    {
      v31 = 0u;
      v32 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v31);
      re::BindPoint::BindPointData::deinit(&v31);
      v20 = a5[5] + 32 * a5[3];
      *(v20 - 32) = &unk_1F5CCD408;
      *(v20 - 24) = v10;
      v31 = 0uLL;
      *&v32 = 0;
      BYTE8(v32) = 1;
    }

    else
    {
LABEL_20:
      v31 = 0u;
      v32 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v31);
      re::BindPoint::BindPointData::deinit(&v31);
      v21 = a5[5] + 32 * a5[3];
      *(v21 - 32) = &unk_1F5CCD4E0;
      *(v21 - 24) = v10;
      v22 = *(v10 + 48);
      *&v32 = 0;
      v31 = v22;
      BYTE8(v32) = 0;
    }
  }
}

void anonymous namespace::walkHashTable(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, uint64_t a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*(*a2 + 48) + 16);
  if (v7 != 6 && v7 != 10)
  {
    v21 = *re::foundationBindingLogObjects(a1);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v23) = 0;
    v20 = "Failed to create binding. Hash table keys need to be of type DynamicString or StringID.";
    goto LABEL_20;
  }

  if (!isCompatibleType)
  {
    v21 = *re::foundationBindingLogObjects(isCompatibleType);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      return;
    }

    LOWORD(v23) = 0;
    v20 = "Invalid binding key: Hash Table Value type does not match expected type.";
LABEL_20:
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, v20, &v23, 2u);
    goto LABEL_21;
  }

  if (a2[2])
  {
  }

  v23 = v6;
  v26 = 0;
  v27 = 0;
  v14 = *(a4 + 8);
  if (v14)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 0;
  }

  v25 = 0;
  re::DynamicString::setCapacity(&v24, v15);
  re::DynamicString::operator=(&v24, a4);
  memset(v28, 0, sizeof(v28));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), v28);
  v16 = re::BindPoint::BindPointData::deinit(v28);
  v17 = a5[5] + 32 * a5[3];
  *(v17 - 32) = 0;
  *v18 = &unk_1F5CCD5B8;
  v18[1] = v23;
  re::DynamicString::DynamicString((v18 + 2), &v24);
  *(v17 - 16) = v18;
  if (v24 && (v25 & 1) != 0)
  {
    (*(*v24 + 40))();
  }

  v19 = *(v6 + 64);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v19;
  *(a1 + 24) = 0;
}

void anonymous namespace::walkStructure(uint64_t a1, uint64_t *a2, _anonymous_namespace_ *a3, uint64_t a4, void *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*(*a2 + 56))
  {
LABEL_15:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v41 = a1;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(*(v5 + 64) + 8 * v9);
    if (*v11 != 1)
    {
      goto LABEL_9;
    }

    if (*(v11 + 40) != 3)
    {
      a1 = re::introspectionPrettyNameCompare(*(v11 + 8), *a4, *(a4 + 8));
      if (!a1)
      {
        goto LABEL_9;
      }

      v16 = a2[2];
      if (v16)
      {
        if (!*(v11 + 40))
        {
          v36 = *(v11 + 36);
          if (isCompatibleType)
          {
            *v41 = *(v11 + 16);
            *(v41 + 8) = 0;
            *(v41 + 16) = v16 + v36;
            *(v41 + 24) = 0;
            return;
          }

          v38 = *re::foundationBindingLogObjects(isCompatibleType);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          *buf = 0;
          v39 = "Invalid binding key: Absolute struct member type does not match expected type.";
          goto LABEL_48;
        }
      }

      v17 = *(v11 + 40);
      if (v17 == 2)
      {
        *buf = 0u;
        v45 = 0u;
        re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
        re::BindPoint::BindPointData::deinit(buf);
        v35 = a5[5] + 32 * a5[3];
        *(v35 - 32) = &unk_1F5CCD940;
        *(v35 - 24) = v11;
        goto LABEL_39;
      }

      if (v17 == 1)
      {
        if (v33)
        {
          *buf = 0u;
          v45 = 0u;
          re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
          re::BindPoint::BindPointData::deinit(buf);
          v34 = a5[5] + 32 * a5[3];
          *(v34 - 32) = &unk_1F5CCCE20;
          *(v34 - 24) = v11;
          v23 = v41;
          *v41 = *a2;
          *(v41 + 8) = v11;
          *(v41 + 16) = 0;
          goto LABEL_37;
        }

        v38 = *re::foundationBindingLogObjects(v33);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v39 = "Invalid binding key: Struct array member type does not match expected type.";
LABEL_48:
          _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 2u);
        }
      }

      else
      {
        if (v17)
        {
          re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Invalid structure member type.", "!Unreachable code", "walkStructure", 838);
          _os_crash();
          __break(1u);
          return;
        }

        if (v18)
        {
          v19 = *(v11 + 36);
          v20 = *(v11 + 16);
          *buf = 0u;
          v45 = 0u;
          re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
          re::BindPoint::BindPointData::deinit(buf);
          v21 = a5[5] + 32 * a5[3];
          *(v21 - 32) = &unk_1F5CCCFD0;
          *(v21 - 24) = v20;
          *(v21 - 16) = v19;
          v22 = *(v11 + 16);
          v23 = v41;
          *(v41 + 8) = 0;
          *(v41 + 16) = 0;
          *v41 = v22;
LABEL_37:
          *(v23 + 24) = 0;
          return;
        }

        v38 = *re::foundationBindingLogObjects(v18);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v39 = "Invalid binding key: Struct member type does not match expected type.";
          goto LABEL_48;
        }
      }

LABEL_49:
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 24) = 0;
      *(v41 + 16) = 0;
      return;
    }

    v12 = *(v11 + 16);
    if ((atomic_load_explicit(&qword_1EE19D350, memory_order_acquire) & 1) == 0)
    {
      a1 = __cxa_guard_acquire(&qword_1EE19D350);
      if (a1)
      {
        _MergedGlobals_123 = re::introspect_KeyValueStoreInterface(0);
        __cxa_guard_release(&qword_1EE19D350);
      }
    }

    v10 = v11;
    if (v12 == _MergedGlobals_123)
    {
      if (a2[2])
      {
      }

      if (a3)
      {
        v26 = *a4;
        v25 = *(a4 + 8);
        *&v42.var0 = a3;
        v42.var1 = 0;
        v43 = &str_67;
        *buf = 0u;
        v45 = 0u;
        re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
        re::BindPoint::BindPointData::deinit(buf);
        v27 = a5[5] + 32 * a5[3];
        *(v27 - 32) = &unk_1F5CCD790;
        *(v27 - 24) = *&v42.var0;
        v28 = re::StringID::StringID((v27 - 16), &v42.var1);
        if (v42.var1)
        {
          if (v42.var1)
          {
          }
        }

        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
        *v41 = a3;
        *(v41 + 24) = 0;
        return;
      }

      v29 = *a4;
      v30 = *(a4 + 8);
      *&v42.var0 = 0;
      v42.var1 = &str_67;
      *buf = 0u;
      v45 = 0u;
      re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), buf);
      re::BindPoint::BindPointData::deinit(buf);
      v31 = a5[5] + 32 * a5[3];
      *(v31 - 32) = &unk_1F5CCD868;
      v32 = re::StringID::StringID((v31 - 24), &v42);
      if (*&v42.var0)
      {
        if (*&v42.var0)
        {
        }
      }

LABEL_39:
      *v41 = 0u;
      *(v41 + 16) = 0u;
      *(v41 + 24) = 1;
      return;
    }

LABEL_9:
    ++v9;
  }

  while (v9 < *(v5 + 56));
  a1 = v41;
  if (!v10)
  {
    goto LABEL_15;
  }

  v15 = a2[2] + *(v10 + 36);
  *buf = *(v10 + 16);
  *&buf[8] = 0;
  *&v45 = v15;
  BYTE8(v45) = 0;
}

uint64_t anonymous namespace::walkOptional(_anonymous_namespace_ *a1, uint64_t *a2, int a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v15 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (a2[2])
  {
  }

  v13 = 0u;
  v14 = 0u;
  re::DynamicArray<re::BindPoint::BindPointData>::add((a5 + 1), &v13);
  re::BindPoint::BindPointData::deinit(&v13);
  v10 = a5[5] + 32 * a5[3];
  *(v10 - 32) = &unk_1F5CCDA18;
  *(v10 - 24) = v8;
  v11 = *(v8 + 48);
  *&v14 = 0;
  v13 = v11;
  BYTE8(v14) = 0;
}

void anonymous namespace::PolymorphicMemberBindPointImpl::~PolymorphicMemberBindPointImpl(_anonymous_namespace_::PolymorphicMemberBindPointImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::StringID::destroyString((this + 16));
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::StringID::destroyString((this + 16));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PolymorphicMemberBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CCCD48;
  *(a2 + 8) = v4;
  re::StringID::StringID((a2 + 16), (a1 + 16));
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v5;
  *(a2 + 80) = *(a1 + 80);

  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(a2 + 88, (a1 + 88));
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PolymorphicMemberBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCD48;
  *(a2 + 8) = *(a1 + 8);
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  *(a2 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 16) & 1;
  *(a2 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  *(a2 + 24) = *(a1 + 24);
  *(a1 + 24) = &str_67;
  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a2 + 32) = v6;
  v7 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v7;
  re::BindPoint::BindPoint(a2 + 80, (a1 + 80));
  *&v10[0] = 0;
  *(&v10[0] + 1) = &str_67;
  v8 = re::StringID::operator=(v4, v10);
  if (v10[0])
  {
  }

  *(v5 + 25) = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  *(a1 + 80) = 0;
  re::DynamicArray<re::RigDataValue>::operator=(a1 + 88, v10 + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + 8);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + 8);
}

BOOL re::internal::BindPointImpl<anonymous namespace::PolymorphicMemberBindPointImpl>::equals(uint64_t a1, void *a2)
{
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 16), a2 + 2);
}

unint64_t anonymous namespace::PolymorphicMemberBindPointImpl::hash(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v7 = re::BindPoint::baseValueUntyped((a1 + 5));
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  if (v7 && a4)
  {
    v10 = a1[4];
    v15 = a1[3];
    v17 = *(&v10 + 1);
    v16 = v7;
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v18, 1uLL, a4);
    v9 ^= (v9 << 6) + (v9 >> 2) + (*(*v11 + 48))(v11, &v15, v12, v13) - 0x61C8864680B583E9;
  }

  return v9;
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::isAlive(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  result = re::BindPoint::baseValueUntyped((a1 + 5));
  if (result)
  {
    v8 = a1[4];
    v12 = a1[3];
    v14 = *(&v8 + 1);
    v13 = result;
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v9 + 64))(v9, &v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::baseValueUntyped(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  result = re::BindPoint::baseValueUntyped((a1 + 5));
  if (result)
  {
    v8 = a1[4];
    v12 = a1[3];
    v14 = *(&v8 + 1);
    v13 = result;
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v9 + 88))(v9, &v12, v10, v11);
    }
  }

  return result;
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::supportsOverrideValue(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 96))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::supportsOverrideValue((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::isOverridden(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 104))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::isOverridden((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::setIsOverridden(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v18[0] = a3;
  v18[1] = a4;
  if (a4)
  {
    v9 = re::BindPoint::baseValueUntyped((a1 + 5));
    if (v9)
    {
      v10 = a1[4];
      v15 = a1[3];
      v17 = *(&v10 + 1);
      v16 = v9;
      v11 = *a3;
      v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v18, 1uLL, a4);
      (*(*v11 + 112))(v11, &v15, v12, v13, a5);
    }
  }

  return re::BindPoint::setIsOverridden((a1 + 5), a5);
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::overrideValueUntyped(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 120))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::overrideValueUntyped((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::markAsWritten(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 128))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::markAsWritten((a1 + 5));
  }
}

uint64_t anonymous namespace::PolymorphicMemberBindPointImpl::willSet(_OWORD *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  {
    v8 = a1[4];
    v13 = a1[3];
    v15 = *(&v8 + 1);
    v14 = v7;
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    return (*(*v9 + 144))(v9, &v13, v10, v11);
  }

  else
  {

    return re::BindPoint::willSet((a1 + 5));
  }
}

void anonymous namespace::PolymorphicMemberBindPointImpl::updateCachedBinding(_anonymous_namespace_::PolymorphicMemberBindPointImpl *this, uint64_t *a2)
{
  v4 = a2[2];
  if (*a2 != *(this + 5) || v4 != *(this + 4))
  {
    *(this + 4) = v4;
    v5 = *(this + 1);
    v14 = 0;
    *v12 = v5;
    *&v12[16] = 0;
    *&v12[24] = 0;
    v13 = 0;
    *(this + 10) = v5;
    v6 = (this + 80);
    re::DynamicArray<re::RigDataValue>::operator=(this + 88, &v12[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
    *(this + 5) = 0;
    v7 = *(this + 1);
    v8 = strlen(*(this + 3));
    v11[0] = *(this + 3);
    v11[1] = v8;
    *(this + 3) = *v12;
    *(this + 57) = *&v12[9];
    v9 = *(this + 6);
    if (v9 || *(this + 72) == 1)
    {
      *(this + 5) = *a2;
      v10 = *(this + 8);
      if (v10)
      {
        re::makeBindPoint(v12, v9, v10, v6);
        *v6 = *v12;
        re::DynamicArray<re::RigDataValue>::operator=((v6 + 1), &v12[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12[8]);
      }
    }
  }
}

uint64_t re::Slice<re::internal::BindPointImplBase const*>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL anonymous namespace::isCompatibleType(_anonymous_namespace_ *this, const re::IntrospectionBase *a2, const re::IntrospectionBase *a3)
{
  if (!this)
  {
    return 1;
  }

  v3 = &unk_1EE187000;
  {
    v33 = this;
    v29 = a2;
    v3 = &unk_1EE187000;
    a2 = v29;
    v19 = v18;
    this = v33;
    if (v19)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v29);
      v3 = &unk_1EE187000;
      this = v33;
      a2 = v29;
    }
  }

  v4 = *(v3 + 40);
  {
    v34 = this;
    v26 = v4;
    v30 = a2;
    v4 = v26;
    a2 = v30;
    v3 = &unk_1EE187000;
    v21 = v20;
    this = v34;
    if (v21)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v30);
      v4 = v26;
      a2 = v30;
      v3 = &unk_1EE187000;
      this = v34;
    }
  }

  v6 = v4 != this && *(v3 + 40) != a2;
  v7 = &unk_1EE187000;
  {
    v35 = this;
    v31 = a2;
    v27 = v6;
    v6 = v27;
    v7 = &unk_1EE187000;
    a2 = v31;
    v23 = v22;
    this = v35;
    if (v23)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v31);
      v6 = v27;
      v7 = &unk_1EE187000;
      this = v35;
      a2 = v31;
    }
  }

  if (v7[41] == this)
  {
    v6 = 0;
  }

  {
    v36 = this;
    v32 = a2;
    v28 = v6;
    v6 = v28;
    v7 = &unk_1EE187000;
    a2 = v32;
    v25 = v24;
    this = v36;
    if (v25)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v32);
      v6 = v28;
      v7 = &unk_1EE187000;
      this = v36;
      a2 = v32;
    }
  }

  v8 = v7[41];
  v9 = *(this + 4);
  if (v9)
  {
    v10 = v9 == 9;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = *(a2 + 4);
  if (v12)
  {
    v13 = v12 == 9;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  v15 = !v6;
  if (v8 == a2)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0 && v11 && v14)
  {
    return *(this + 5) == *(a2 + 5);
  }

  else
  {
    return this == a2;
  }
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCE20;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCE20;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::hash(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  v4 = a2[2];
  v5 = *(a1 + 8);
  v6 = *(v4 + *(v5 + 36));
  if (v6)
  {
    v6 = *a2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v13[0] = v6;
  v13[1] = v5;
  v13[2] = v4;
  v14 = 0;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (a4 && v4)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
    v8 ^= (v8 << 6) + (v8 >> 2) + (*(*v9 + 48))(v9, v13, v10, v11) - 0x61C8864680B583E9;
  }

  return v8;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::isAlive(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::baseValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = a2[2];
  v6 = *(a1 + 8);
  if (!*(result + *(v6 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = result;
  v11 = 0;
  if (a4)
  {
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v7 + 88))(v7, v10, v8, v9);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::supportsOverrideValue(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::isOverridden(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::setIsOverridden(uint64_t result, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v5 = a2[2];
    v6 = *(result + 8);
    if (*(v5 + *(v6 + 36)))
    {
      v11[0] = *a2;
      v11[1] = v6;
      v11[2] = v5;
      v12 = 0;
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::overrideValueUntyped(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = a2[2];
  v5 = *(a1 + 8);
  if (!*(v4 + *(v5 + 36)))
  {
    return 0;
  }

  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = v4;
  v11 = 0;
  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::markAsWritten(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = a2[2];
    v5 = *(result + 8);
    if (*(v4 + *(v5 + 36)))
    {
      v9[0] = *a2;
      v9[1] = v5;
      v9[2] = v4;
      v10 = 0;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizePointerInfo>::willSet(uint64_t result, void *a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = a2[2];
    v5 = *(result + 8);
    if (*(v4 + *(v5 + 36)))
    {
      v9[0] = *a2;
      v9[1] = v5;
      v9[2] = v4;
      v10 = 0;
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCEF8;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCCEF8;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::setIsOverridden(void *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::markAsWritten(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayMemberWithSizeIndexPointerInfo>::willSet(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::ArrayMemberWithSizeIndexPointerInfo::pointerReference(void *result, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(a3 + 40) == 1 && (v6 = *(a3 + 48)) != 0 && (v9 = *(a3 + 64), __dst = 0, result = memcpy(&__dst, (a4 + v9), *(v6 + 20)), v10 = *a2, *a2 < __dst) && (v11 = *(a4 + *(a3 + 36))) != 0)
  {
    v12 = *(*(a3 + 16) + 48);
    *v4 = v12;
    v4[1] = 0;
    v4[2] = v11 + v10 * *(v12 + 20);
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    *(v4 + 24) = 0;
    v4[2] = 0;
  }

  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCFD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCCFD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = *(a1 + 16);
  v12[0] = *(a1 + 8);
  v12[1] = 0;
  v5 = v4 + *(a2 + 16);
  v12[2] = v5;
  v13 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v5)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  result = v4 + v5;
  v10[2] = v4 + v5;
  if (v4 + v5)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v5 = *(result + 16);
    v11[0] = *(result + 8);
    v11[1] = 0;
    v6 = *(a2 + 16);
    v12 = 0;
    v11[2] = v5 + v6;
    if (v5 + v6)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v10[0] = *(a1 + 8);
  v10[1] = 0;
  v5 = *(a2 + 16);
  v11 = 0;
  v10[2] = v4 + v5;
  if (!(v4 + v5))
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v9[0] = *(result + 8);
    v9[1] = 0;
    v5 = *(a2 + 16);
    v10 = 0;
    v9[2] = v4 + v5;
    if (v4 + v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RelativeMemberOffsetPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v9[0] = *(result + 8);
    v9[1] = 0;
    v5 = *(a2 + 16);
    v10 = 0;
    v9[2] = v4 + v5;
    if (v4 + v5)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void re::BindPoint::addToBindPointStack<anonymous namespace::IntrospectionBindPointImpl,anonymous namespace::IntrospectedObject const&>(void *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v7);
  re::BindPoint::BindPointData::deinit(v7);
  v4 = a1[5] + 32 * a1[3];
  v5 = *a2;
  v6 = a2[2];
  *(v4 - 32) = &unk_1F5CCD0A8;
  *(v4 - 24) = v5;
  *(v4 - 16) = v6;
}

__n128 re::internal::BindPointImpl<anonymous namespace::IntrospectionBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD0A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::IntrospectionBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD0A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  if (!a4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 56))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 64))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v5 = *(a1 + 8);
  result = *(a1 + 16);
  v9[0] = v5;
  v9[1] = 0;
  v9[2] = result;
  v10 = 0;
  if (a4)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v6 + 88))(v6, v9, v7, v8);
  }

  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 96))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 104))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = *(result + 16);
    v10[0] = *(result + 8);
    v10[1] = 0;
    v10[2] = v6;
    v11 = 0;
    v7 = *a3;
    v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
    return (*(*v7 + 112))(v7, v10, v8, v9, a5);
  }

  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v9[0] = *(a1 + 8);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 120))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v8[0] = *(result + 8);
    v8[1] = 0;
    v8[2] = v4;
    v9 = 0;
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v5 + 128))(v5, v8, v6, v7);
  }

  return result;
}

uint64_t anonymous namespace::IntrospectionBindPointImpl::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = *(result + 16);
    v8[0] = *(result + 8);
    v8[1] = 0;
    v8[2] = v4;
    v9 = 0;
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v5 + 144))(v5, v8, v6, v7);
  }

  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionDynamicArrayBase>::pointerReference(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  if (v6 >= (*(**a2 + 88))(*a2, *(a3 + 16)))
  {
    v7 = 0;
    result = 0;
  }

  else
  {
    v7 = (*(**a2 + 40))(*a2, 0);
    result = (*(**a2 + 96))(*a2, *(a3 + 16), a2[1]);
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD258;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::ArrayIndexPointerInfo<re::IntrospectionFixedArrayBase>::pointerReference(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  if (v6 >= (*(**a2 + 80))(*a2, *(a3 + 16)))
  {
    v7 = 0;
    result = 0;
  }

  else
  {
    v7 = (*(**a2 + 40))(*a2, 0);
    result = (*(**a2 + 96))(*a2, *(a3 + 16), a2[1]);
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>>::copyInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CCD330;
  result = re::StringID::StringID((a2 + 1), (a1 + 8));
  a2[3] = *(a1 + 24);
  return result;
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CCD330;
  result = re::StringID::StringID((a2 + 1), (a1 + 8));
  a2[3] = *(a1 + 24);
  return result;
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != " ")
  {
    return 0;
  }

  result = re::StringID::operator==((a1 + 8), a2 + 1);
  if (result)
  {
    return *(a1 + 24) == a2[3];
  }

  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  v6 = **(a2 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = (*(*v6 + 8))(**(a2 + 16), v7, a1 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v15[0] = v7;
  v15[1] = 0;
  v15[2] = v8;
  v16 = 0;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (a4 && v8)
  {
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v17, 1uLL, a4);
    v10 ^= (v10 << 6) + (v10 >> 2) + (*(*v11 + 48))(v11, v15, v12, v13) - 0x61C8864680B583E9;
  }

  return v10;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  result = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v12[0] = v7;
  v12[1] = 0;
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 64))(v9, v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  result = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v12[0] = v7;
  v12[1] = 0;
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 88))(v9, v12, v10, v11);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v13[0] = v7;
  v13[1] = 0;
  v13[2] = v8;
  v14 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v9 + 96))(v9, v13, v10, v11);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v13[0] = v7;
  v13[1] = 0;
  v13[2] = v8;
  v14 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v9 + 104))(v9, v13, v10, v11);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v15[1] = a4;
  if (a4)
  {
    v5 = **(a2 + 16);
    if (v5)
    {
      v9 = *(result + 24);
      result = (*(*v5 + 8))(**(a2 + 16), v9, result + 8);
      v13[0] = v9;
      v13[1] = 0;
      v13[2] = result;
      v14 = 0;
      if (result)
      {
        v10 = *a3;
        v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
        return (*(*v10 + 112))(v10, v13, v11, v12, a5);
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = (*(*v4 + 8))(**(a2 + 16), v7, a1 + 8);
  v13[0] = v7;
  v13[1] = 0;
  v13[2] = v8;
  v14 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *a3;
  v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
  return (*(*v9 + 120))(v9, v13, v10, v11);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v7 = *(result + 24);
      result = (*(*v4 + 8))(**(a2 + 16), v7, result + 8);
      v11[0] = v7;
      v11[1] = 0;
      v11[2] = result;
      v12 = 0;
      if (result)
      {
        v8 = *a3;
        v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
        return (*(*v8 + 128))(v8, v11, v9, v10);
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStorePointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v7 = *(result + 24);
      result = (*(*v4 + 8))(**(a2 + 16), v7, result + 8);
      v11[0] = v7;
      v11[1] = 0;
      v11[2] = result;
      v12 = 0;
      if (result)
      {
        v8 = *a3;
        v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
        return (*(*v8 + 144))(v8, v11, v9, v10);
      }
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD408;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD408;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::setIsOverridden(void *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::markAsWritten(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicPointerInfo>::willSet(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PolymorphicPointerInfo::pointerReference(void *result, uint64_t a2, re::IntrospectionBase *a3)
{
  v3 = result;
  if (a3)
  {
    re::PolymorphicData::makeWithPointer(*(*a2 + 48), a3, v5);
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 24) = 0;
    result[2] = 0;
  }

  return result;
}

void *anonymous namespace::makePolymorphicPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  __dst = 0;
  result = memcpy(&__dst, v6, *(v7 + 20));
  v9 = *(a2 + 16);
  v10 = *v9;
  if (v10)
  {
    v11 = (*(v9 + 1) + 32);
    while (*(v11 - 1) != __dst)
    {
      v11 += 10;
      if (!--v10)
      {
        v12 = 0;
        goto LABEL_8;
      }
    }

    v10 = a3 + *v11;
    v12 = *(v11 - 3);
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

LABEL_8:
  *a1 = v12;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD4E0;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD4E0;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v4 = **(a2 + 16);
  if (v4)
  {
    v5 = *(*(a1 + 8) + 48);
  }

  else
  {
    v5 = 0;
  }

  v12[0] = v5;
  v12[1] = 0;
  v12[2] = v4;
  v13 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v4)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 64))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  result = **(a2 + 16);
  if (result)
  {
    v9[0] = *(*(a1 + 8) + 48);
    v9[1] = 0;
    v9[2] = result;
    v10 = 0;
    if (a4)
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
      return (*(*v6 + 88))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 96))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 104))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v5 = **(a2 + 16);
    if (v5)
    {
      v10[0] = *(*(result + 8) + 48);
      v10[1] = 0;
      v10[2] = v5;
      v11 = 0;
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 112))(v7, v10, v8, v9, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = **(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v9[0] = *(*(a1 + 8) + 48);
  v9[1] = 0;
  v9[2] = v4;
  v10 = 0;
  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v5 + 120))(v5, v9, v6, v7);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v8[0] = *(*(result + 8) + 48);
      v8[1] = 0;
      v8[2] = v4;
      v9 = 0;
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v5 + 128))(v5, v8, v6, v7);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::RawPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v4 = **(a2 + 16);
    if (v4)
    {
      v8[0] = *(*(result + 8) + 48);
      v8[1] = 0;
      v8[2] = v4;
      v9 = 0;
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v5 + 144))(v5, v8, v6, v7);
    }
  }

  return result;
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 16));

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CCD5B8;
  a2[1] = v2;
  return re::DynamicString::DynamicString((a2 + 2), (a1 + 16));
}

re::DynamicString *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CCD5B8;
  a2[1] = v2;
  return re::DynamicString::DynamicString((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != "0" || *(a1 + 8) != a2[1])
  {
    return 0;
  }

  return re::DynamicString::operator==(a1 + 16, (a2 + 2));
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::HashTableKeyPointerInfo>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }
}

void anonymous namespace::HashTableKeyPointerInfo::pointerReference(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *(*a2 + 64);
  *(a1 + 8) = 0;
  v4 = *(v3 + 48);
  v5 = &unk_1EE187000;
  {
    v12 = v4;
    v5 = &unk_1EE187000;
    v4 = v12;
    if (v8)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v9);
      v5 = &unk_1EE187000;
      v4 = v12;
    }
  }

  if (v4 == v5[231])
  {
    operator new();
  }

  v6 = *(v3 + 48);
  v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v13 = v6;
    v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v6 = v13;
    if (v10)
    {
      re::introspect<re::StringID>(BOOL)::info = re::IntrospectionInfo<re::StringID>::get(0, v11);
      v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      v6 = v13;
    }
  }

  if (v6 == *(v7 + 407))
  {
    operator new();
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

__n128 std::__function::__func<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD690;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = *(*a2 + 8);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (*(v5 + 8) != v7)
  {
    return 1;
  }

  v9 = *a3;
  v10 = v4 + 9;
  v11 = *(v4 + 16);
  v12 = ((v6 & 1) != 0 ? v11 : v10);
  result = memcmp(*v5, v12, v7);
  if (result)
  {
    return 1;
  }

  **(a1 + 24) = v9;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::DynamicString>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void const*,void *)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCD710;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a1 + 16);
  v6 = *(*a2 + 8);
  v7 = strlen(v6);
  if (*(v5 + 8) != v7)
  {
    return 1;
  }

  result = memcmp(*v5, v6, v7);
  if (result)
  {
    return 1;
  }

  **(a1 + 24) = v4;
  return result;
}

uint64_t std::__function::__func<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1},std::allocator<void * anonymous namespace::tryGetValue<re::StringID>(re::IntrospectionHashTableBase const*,void *,re::StringSlice const&)::{lambda(void const*,void *)#1}>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  JUMPOUT(0x1E6906520);
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>>::copyInto(const StringID *a1, void *a2)
{
  var1 = a1->var1;
  *a2 = &unk_1F5CCD790;
  a2[1] = var1;
  return re::StringID::StringID((a2 + 2), a1 + 1);
}

re::StringID *re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>>::moveInto(const StringID *a1, void *a2)
{
  var1 = a1->var1;
  *a2 = &unk_1F5CCD790;
  a2[1] = var1;
  return re::StringID::StringID((a2 + 2), a1 + 1);
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != " " || *(a1 + 8) != a2[1])
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 16), a2 + 2);
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  v6 = *(a2 + 16);
  v14[0] = *(a1 + 8);
  v14[1] = 0;
  v7 = (*(*v6 + 8))(v6);
  v14[2] = v7;
  v15 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  if (a4 && v7)
  {
    v10 = *a3;
    v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
    v9 ^= (v9 << 6) + (v9 >> 2) + (*(*v10 + 48))(v10, v14, v11, v12) - 0x61C8864680B583E9;
  }

  return v9;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    if (a4)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 64))(v8, v11, v9, v10);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    if (a4)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 88))(v8, v11, v9, v10);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v8 + 96))(v8, v11, v9, v10);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v8 + 104))(v8, v11, v9, v10);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a4)
  {
    v8 = *(a2 + 16);
    v12[0] = *(result + 8);
    v12[1] = 0;
    result = (*(*v8 + 8))(v8);
    v12[2] = result;
    v13 = 0;
    if (result)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 112))(v9, v12, v10, v11, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v11[0] = *(a1 + 8);
  v11[1] = 0;
  result = (*(*v6 + 8))(v6);
  v11[2] = result;
  v12 = 0;
  if (result)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
    return (*(*v8 + 120))(v8, v11, v9, v10);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = *(a2 + 16);
    v10[0] = *(result + 8);
    v10[1] = 0;
    result = (*(*v6 + 8))(v6);
    v10[2] = result;
    v11 = 0;
    if (result)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 128))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreTypedMemberPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    v6 = *(a2 + 16);
    v10[0] = *(result + 8);
    v10[1] = 0;
    result = (*(*v6 + 8))(v6);
    v10[2] = result;
    v11 = 0;
    if (result)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 144))(v7, v10, v8, v9);
    }
  }

  return result;
}

void anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::~PointerBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>>::equals(uint64_t a1, void *a2)
{
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v17[0] = a3;
  v17[1] = a4;
  v7 = *(a2 + 16);
  v15[0] = (*(*v7 + 24))(v7, a1 + 8);
  v15[1] = 0;
  v8 = (*(*v7 + 8))(v7, 0, a1 + 8);
  v15[2] = v8;
  v16 = 0;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  if (a4 && v8)
  {
    v11 = *a3;
    v12 = re::Slice<re::internal::BindPointImplBase const*>::range(v17, 1uLL, a4);
    v10 ^= (v10 << 6) + (v10 >> 2) + (*(*v11 + 48))(v11, v15, v12, v13) - 0x61C8864680B583E9;
  }

  return v10;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 64))(v9, v12, v10, v11);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    if (a4)
    {
      v9 = *a3;
      v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
      return (*(*v9 + 88))(v9, v12, v10, v11);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    return (*(*v9 + 96))(v9, v12, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    return (*(*v9 + 104))(v9, v12, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v15[1] = a4;
  if (a4)
  {
    v8 = result;
    v9 = *(a2 + 16);
    v13[0] = (*(*v9 + 24))(v9, result + 8);
    v13[1] = 0;
    result = (*(*v9 + 8))(v9, 0, v8 + 8);
    v13[2] = result;
    v14 = 0;
    if (result)
    {
      v10 = *a3;
      v11 = re::Slice<re::internal::BindPointImplBase const*>::range(v15, 1uLL, a4);
      return (*(*v10 + 112))(v10, v13, v11, v12, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v12[0] = (*(*v7 + 24))(v7, a1 + 8);
  v12[1] = 0;
  result = (*(*v7 + 8))(v7, 0, a1 + 8);
  v12[2] = result;
  v13 = 0;
  if (result)
  {
    v9 = *a3;
    v10 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    return (*(*v9 + 120))(v9, v12, v10, v11);
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v6 = result;
    v7 = *(a2 + 16);
    v11[0] = (*(*v7 + 24))(v7, result + 8);
    v11[1] = 0;
    result = (*(*v7 + 8))(v7, 0, v6 + 8);
    v11[2] = result;
    v12 = 0;
    if (result)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 128))(v8, v11, v9, v10);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::KeyValueStoreMemberPointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  if (a4)
  {
    v6 = result;
    v7 = *(a2 + 16);
    v11[0] = (*(*v7 + 24))(v7, result + 8);
    v11[1] = 0;
    result = (*(*v7 + 8))(v7, 0, v6 + 8);
    v11[2] = result;
    v12 = 0;
    if (result)
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v13, 1uLL, a4);
      return (*(*v8 + 144))(v8, v11, v9, v10);
    }
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD940;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCD940;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::setIsOverridden(void *result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::markAsWritten(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PointerBindPointImpl<anonymous namespace::PolymorphicMemberPointerInfo>::willSet(void *result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

void *anonymous namespace::PolymorphicMemberPointerInfo::pointerReference(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(a2 + 36));
  if (v4)
  {
    v5 = *(*(*(a2 + 16) + 48) + 64);
    v6 = *v5;
    if (**v5 != 2)
    {
      v7 = (v5 + 1);
      do
      {
        v8 = *v7++;
        v6 = v8;
      }

      while (*v8 != 2);
    }

    v9 = *(a2 + 48);
    v10[0] = a3 + *(a2 + 64);
    v10[1] = v9;
    v10[2] = *(v6 + 1);
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 24) = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDA18;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDA18;
  a2[1] = v2;
  return result;
}

unint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v14[0] = a3;
  v14[1] = a4;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4 && v13)
  {
    v8 = *a3;
    v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v14, 1uLL, a4);
    v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v8 + 48))(v8, v12, v9, v10) - 0x61C8864680B583E9;
  }

  return v7;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!v10[2])
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 64))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  result = v11;
  if (v11)
  {
    if (a4)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v7 + 88))(v7, v10, v8, v9);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 96))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 104))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[0] = a3;
  v12[1] = a4;
  if (a4)
  {
    if (v11[2])
    {
      v8 = *a3;
      v9 = re::Slice<re::internal::BindPointImplBase const*>::range(v12, 1uLL, a4);
      return (*(*v8 + 112))(v8, v11, v9, v10, a5);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  if (!a4)
  {
    return 0;
  }

  if (!v10[2])
  {
    return 0;
  }

  v6 = *a3;
  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
  return (*(*v6 + 120))(v6, v10, v7, v8);
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 128))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::PointerBindPointImpl<anonymous namespace::OptionalValuePointerInfo>::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    if (v9[2])
    {
      v6 = *a3;
      v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      return (*(*v6 + 144))(v6, v9, v7, v8);
    }
  }

  return result;
}

uint64_t anonymous namespace::OptionalValuePointerInfo::pointerReference(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(**a2 + 56))(*a2, *(a3 + 16)))
  {
    v6 = *a2;
    v7 = *(*a2 + 48);
    result = (*(*v6 + 72))(v6, *(a3 + 16));
  }

  else
  {
    v7 = 0;
    result = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::RelativeBindPointImpl>::copyInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDAF0;
  a2[1] = v2;
  return result;
}

uint64_t re::internal::BindPointImpl<anonymous namespace::RelativeBindPointImpl>::moveInto(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CCDAF0;
  a2[1] = v2;
  return result;
}

uint64_t anonymous namespace::RelativeBindPointImpl::isWeak(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 56))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 1;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 64))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (a4)
  {
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v4 + 88))(v4, v8, v5, v6);
  }

  return a2;
}

uint64_t anonymous namespace::RelativeBindPointImpl::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 96))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
  return (*(*v4 + 104))(v4, v8, v5, v6);
}

uint64_t anonymous namespace::RelativeBindPointImpl::setIsOverridden(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v11[0] = a3;
  v11[1] = a4;
  if (a4)
  {
    v9[0] = *(result + 8);
    v9[1] = 0;
    v9[2] = a2;
    v10 = 0;
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v11, 1uLL, a4);
    return (*(*v6 + 112))(v6, v9, v7, v8, a5);
  }

  return result;
}

uint64_t anonymous namespace::RelativeBindPointImpl::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = *(a1 + 8);
  v8[1] = 0;
  v8[2] = a2;
  v9 = 0;
  if (a4)
  {
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
    return (*(*v4 + 120))(v4, v8, v5, v6);
  }

  return a2;
}

uint64_t anonymous namespace::RelativeBindPointImpl::markAsWritten(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v7[0] = *(result + 8);
    v7[1] = 0;
    v7[2] = a2;
    v8 = 0;
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 128))(v4, v7, v5, v6);
  }

  return result;
}

uint64_t anonymous namespace::RelativeBindPointImpl::willSet(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (a4)
  {
    v7[0] = *(result + 8);
    v7[1] = 0;
    v7[2] = a2;
    v8 = 0;
    v4 = *a3;
    v5 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v4 + 144))(v4, v7, v5, v6);
  }

  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::OverridableBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCDBC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

__n128 re::internal::BindPointImpl<anonymous namespace::OverridableBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CCDBC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  return result;
}

void *re::allocInfo_KeyValueStoreInterface(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_124, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_124))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19D360, "KeyValueStoreInterface");
    __cxa_guard_release(&_MergedGlobals_124);
  }

  return &unk_1EE19D360;
}

void re::initInfo_KeyValueStoreInterface(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x8BFD87A3D5E850D4;
  v6[1] = "KeyValueStoreInterface";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_KeyValueStoreInterface(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t *re::foundationBindingLogObjects(re *this)
{
  {
    re::foundationBindingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Binding");
  }

  return &re::foundationBindingLogObjects(void)::logObjects;
}

BOOL re::internal::doesBindingKeyNeedUnescaping(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 0;
    v3 = *a1;
    v4 = 1;
    while (1)
    {
      if (v2 >= v1 - 1 || *(v3 + v2) != 92)
      {
        goto LABEL_20;
      }

      v5 = *(v3 + v2 + 1);
      if (v5 == 46)
      {
        v7 = 0;
      }

      else if (v5 == 93)
      {
        v7 = 2u;
      }

      else
      {
        v6 = 0;
        if (v5 != 91)
        {
          goto LABEL_12;
        }

        v7 = 1u;
      }

      v6 = &str_1_38[v7];
LABEL_12:
      if (v6)
      {
        v8 = v6 == "";
      }

      else
      {
        v8 = 1;
      }

      v9 = !v8;
      if (v5 == 92 || (v9 & 1) != 0)
      {
        return v4;
      }

LABEL_20:
      v4 = ++v2 < v1;
      if (v1 == v2)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t re::internal::escapeBindingKey(void *a1, re::DynamicString *this)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v4 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v4 = this + 9;
  }

  *v4 = 0;
  result = re::DynamicString::setCapacity(this, a1[1] + 10);
  v7 = a1[1];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = *(*a1 + i);
      if (v9 == 46)
      {
        v11 = 0;
      }

      else if (v9 == 93)
      {
        v11 = 2u;
      }

      else
      {
        v10 = 0;
        if (v9 != 91)
        {
          goto LABEL_13;
        }

        v11 = 1u;
      }

      v10 = &str_1_38[v11];
LABEL_13:
      if (v10)
      {
        v12 = v10 == "";
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      if (v9 == 92 || v13 != 0)
      {
        __src = 92;
        re::DynamicString::append(this, &__src, 1uLL);
        v7 = a1[1];
      }

      if (v7 <= i)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v7);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v16 = *(*a1 + i);
      result = re::DynamicString::append(this, &v16, 1uLL);
      v7 = a1[1];
    }
  }

  return result;
}

uint64_t re::internal::unescapeBindingKey(uint64_t *a1, re::DynamicString *this)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v4 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v4 = this + 9;
  }

  *v4 = 0;
  result = re::DynamicString::setCapacity(this, a1[1]);
  v7 = a1[1];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *a1;
      if (*(*a1 + v8) != 92)
      {
        goto LABEL_23;
      }

      if (v8 >= v7 - 1)
      {
        return result;
      }

      v10 = *(v9 + v8 + 1);
      if (v10 == 46)
      {
        v12 = 0;
        goto LABEL_14;
      }

      if (v10 == 93)
      {
        break;
      }

      v11 = 0;
      if (v10 == 91)
      {
        v12 = 1u;
LABEL_14:
        v11 = &str_1_38[v12];
      }

      if (v11 != "" && v11 != 0 || v10 == 92)
      {
        ++v8;
      }

LABEL_23:
      if (v7 <= v8)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v7);
        result = _os_crash();
        __break(1u);
        return result;
      }

      __src = *(v9 + v8);
      result = re::DynamicString::append(this, &__src, 1uLL);
      ++v8;
      v7 = a1[1];
      if (v8 >= v7)
      {
        return result;
      }
    }

    v12 = 2u;
    goto LABEL_14;
  }

  return result;
}

uint64_t re::internal::parseBindingURI(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[1];
  if (v3 < 3)
  {
    v14 = 0;
    return v14 & v3;
  }

  v7 = *a1;
  v8 = 1;
  while (1)
  {
    if (v8 - v3 == 1)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1[1], v3);
      _os_crash();
      __break(1u);
      goto LABEL_33;
    }

    v9 = *(v7 + v8 - 1);
    if (v9 == 46)
    {
      v11 = 0;
    }

    else if (v9 == 93)
    {
      v11 = 2u;
    }

    else
    {
      v10 = 0;
      if (v9 != 91)
      {
        goto LABEL_11;
      }

      v11 = 1u;
    }

    v10 = &str_1_38[v11];
LABEL_11:
    if (v10)
    {
      v12 = v10 == "";
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12 || v9 == 92;
    v14 = v13;
    if (v13)
    {
LABEL_23:
      LODWORD(v3) = 0;
      return v14 & v3;
    }

    if (v9 == 58)
    {
      break;
    }

    if (++v8 - v3 == -1)
    {
      goto LABEL_23;
    }
  }

  if (v3 <= v8)
  {
LABEL_33:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v3);
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

  if (*(v7 + v8) != 47)
  {
LABEL_31:
    LODWORD(v3) = 0;
    v14 = 1;
    return v14 & v3;
  }

  v16 = v8 + 1;
  if (v3 > v8 + 1)
  {
    if (*(v7 + v8 + 1) == 47)
    {
      *a2 = re::Slice<char>::range(a1, 0, v8 - 1);
      a2[1] = v17;
      *a3 = re::Slice<char>::range(a1, v8 + 2, a1[1]);
      a3[1] = v18;
      v14 = 1;
      LODWORD(v3) = 1;
      return v14 & v3;
    }

    goto LABEL_31;
  }

LABEL_34:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::internal::parseNextBindingKey(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a2 = *a1;
  a2[1] = 0;
  *a3 = *a1;
  v3 = a1[1];
  if (!v3)
  {
    return 1;
  }

  v18 = 0;
  v7 = *a1;
  if (**a1 == 91)
  {
    v16 = "]";
    v17 = 1;
    if (v18 >= v3)
    {
      v12 = *re::foundationBindingLogObjects(v8);
      result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      LOWORD(v16) = 0;
      v14 = "Invalid binding path: Closing bracket is missing.";
LABEL_17:
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 2u);
      return 0;
    }

    v9 = v18 - 1;
    v10 = v7 + 1;
    v11 = v18 + 1;
  }

  else
  {
    v16 = ".[]";
    v17 = 3;
    v11 = v18;
    v10 = v7;
    v9 = v18;
  }

  if (v11 >= v3)
  {
LABEL_12:
    *a2 = v10;
    a2[1] = v9;
    *a3 = re::Slice<char>::range(a1, v11, a1[1]);
    *(a3 + 8) = v15;
    return 1;
  }

  if (*(v7 + v11) == 46)
  {
    ++v11;
    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v12 = *re::foundationBindingLogObjects(v8);
  result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(v16) = 0;
    v14 = "Delimiter . expected";
    goto LABEL_17;
  }

  return result;
}

uint64_t *anonymous namespace::extractBindingKey(uint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  *a4 = a2;
  v5 = result[1];
  if (v5 > a2)
  {
    v6 = a2;
    v7 = 0;
    v8 = *result;
    v9 = *a3;
    v10 = *(a3 + 8);
    v11 = (*a3 + v10);
    while (1)
    {
      if (v7)
      {
        goto LABEL_11;
      }

      v12 = *(v8 + v6);
      if (v12 != 92)
      {
        break;
      }

      v7 = 1;
LABEL_12:
      if (v5 == ++v6)
      {
        goto LABEL_13;
      }
    }

    result = memchr(v9, v12, v10);
    if (result)
    {
      v13 = result == v11;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v5 = v6;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_13:
  *a4 = v5;
  return result;
}

uint64_t *re::internal::parseSkeletalPoseJointPinName(uint64_t a1, uint64_t a2, re::StringID *this, re::StringID *a4, re::StringID *a5)
{
  re::StringID::destroyString(this);
  *this = 0;
  *(this + 1) = "";
  re::StringID::destroyString(a4);
  *a4 = 0;
  *(a4 + 1) = "";
  re::StringID::destroyString(a5);
  *a5 = 0;
  *(a5 + 1) = "";
  v33 = a1;
  v34 = a2;
  v32[0] = 0;
  v32[1] = 0;
  v10 = re::internal::parseNextBindingKey(&v33, v32, &v33);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  re::DynamicString::setCapacity(&v28, 0);
  re::internal::unescapeBindingKey(v32, &v28);
  re::StringID::StringID(&v23, &v28);
  v11 = re::StringID::operator=(this, &v23);
  if (v23)
  {
    if (v23)
    {
    }
  }

  if (v34)
  {
    v27[0] = 0;
    v27[1] = 0;
    v12 = re::internal::parseNextBindingKey(&v33, v27, &v33);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    re::DynamicString::setCapacity(&v23, 0);
    re::internal::unescapeBindingKey(v27, &v23);
    re::StringID::StringID(&v18, &v23);
    v13 = re::StringID::operator=(a4, &v18);
    if (v18)
    {
      if (v18)
      {
      }
    }

    if (v34)
    {
      v22[0] = 0;
      v22[1] = 0;
      v14 = re::internal::parseNextBindingKey(&v33, v22, &v33);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      re::DynamicString::setCapacity(&v18, 0);
      re::internal::unescapeBindingKey(v22, &v18);
      re::StringID::StringID(v17, &v18);
      v15 = re::StringID::operator=(a5, v17);
      if (v17[0])
      {
        if (v17[0])
        {
        }
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }
    }

    if (v23 && (v24 & 1) != 0)
    {
      (*(*v23 + 40))();
    }
  }

  result = v28;
  if (v28)
  {
    if (v29)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

uint64_t re::GeometricObjectBase::aabb(re::GeometricObjectBase *this)
{
  v2 = (*(*this + 24))(this);
  (*(*this + 40))(v4, this);
  return (*(*v2 + 16))(v2, v4);
}

uint64_t re::GeometricObjectBase::scalePose(float32x4_t *a1, float32x4_t *a2, char a3)
{
  v6 = (*(a1->i64[0] + 16))(a1);
  result = (*(*v6 + 24))(v6);
  if (result == 7)
  {
    result = (*(a1->i64[0] + 16))(a1);
    v8 = *(result + 32);
    if (v8)
    {
      v9 = *(result + 40);
      v10 = 240 * v8;
      do
      {
        result = re::GeometricObjectBase::scalePose(v9, a2, 0);
        v9 += 240;
        v10 -= 240;
      }

      while (v10);
    }
  }

  if ((a3 & 1) == 0)
  {
    v11 = a1[2];
    v12[0] = a1[1];
    v12[1] = v11;
    v12[0] = vmulq_f32(v12[0], *a2);
    return (*(a1->i64[0] + 64))(a1, v12);
  }

  return result;
}

void *re::GeometricObjectBase::parentPose@<X0>(void *this@<X0>, float32x4_t *a2@<X8>)
{
  a2->i64[0] = 0;
  a2->i64[1] = 0;
  a2[1].i64[0] = 0;
  a2[1].i64[1] = 0x3F80000000000000;
  v3 = this[6];
  if (v3)
  {
    if (v3[6])
    {
      v4 = xmmword_1E30474D0;
      v5 = 0uLL;
      do
      {
        v19 = v5;
        v20 = v4;
        this = (*(*v3 + 40))(&v21, v3);
        _Q1 = v22;
        _Q2 = vextq_s8(vuzp1q_s32(_Q1, _Q1), v22, 0xCuLL);
        v8 = vnegq_f32(v22);
        v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v8), v19, _Q2);
        v10 = vaddq_f32(v9, v9);
        _Q3 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
        v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v8), _Q3, _Q2);
        v5 = vaddq_f32(v21, vaddq_f32(vaddq_f32(v19, vmulq_laneq_f32(_Q3, v22, 3)), vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL)));
        v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v8), v20, _Q2);
        _Q2.i32[0] = v20.i32[3];
        v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), v20, v22, 3), v22, v20, 3);
        __asm { FMLA            S3, S2, V1.S[3] }

        v18.i32[3] = _Q3.i32[0];
        v3 = v3[6];
        v4 = v18;
      }

      while (v3[6]);
    }

    else
    {
      v18 = xmmword_1E30474D0;
      v5 = 0uLL;
    }

    *a2 = v5;
    a2[1] = v18;
  }

  return this;
}

uint64_t re::GeometricObject::deinit(uint64_t this)
{
  v1 = this;
  v2 = *(this + 232);
  if (v2)
  {
    v3 = *(this + 64);
    if (v3)
    {
      (**v3)(*(this + 64));
      this = (*(*v2 + 40))(v2, v3);
    }

    *(v1 + 64) = 0;
  }

  v5 = *(v1 + 144);
  v4 = v1 + 144;
  if (v5)
  {

    return re::DynamicArray<unsigned long>::deinit(v4);
  }

  return this;
}

void re::GeometricObject::setPoseInternal(uint64_t a1, uint64_t a2)
{
  if (!re::areAlmostEqual<float>(a2, (a1 + 112)))
  {
    v4 = *(a2 + 16);
    *(a1 + 112) = *a2;
    *(a1 + 128) = v4;

    re::Event<re::GeometricObjectBase>::raise(a1 + 144, a1);
  }
}

BOOL re::areAlmostEqual<float>(float *a1, float *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  if (v2 != v3 && vabds_f32(v2, v3) >= (((fabsf(v2) + fabsf(v3)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a2[5];
  if (v4 != v5 && vabds_f32(v4, v5) >= (((fabsf(v4) + fabsf(v5)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6 != v7 && vabds_f32(v6, v7) >= (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8 != v9 && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001))
  {
    return 0;
  }

  if (*a1 != *a2 && vabds_f32(*a1, *a2) >= (((fabsf(*a1) + fabsf(*a2)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v10 = a1[1];
  v11 = a2[1];
  if (v10 != v11 && vabds_f32(v10, v11) >= (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v12 = a1[2];
  v13 = a2[2];
  return v12 == v13 || vabds_f32(v12, v13) < (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001);
}

{
  v2 = a1[4];
  v3 = a2[4];
  if (v2 != v3 && vabds_f32(v2, v3) > 0.00001)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a2[5];
  if (v4 != v5 && vabds_f32(v4, v5) > 0.00001)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6 != v7 && vabds_f32(v6, v7) > 0.00001)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8 != v9 && vabds_f32(v8, v9) > 0.00001)
  {
    return 0;
  }

  if (*a1 != *a2 && vabds_f32(*a1, *a2) > 0.00001)
  {
    return 0;
  }

  v10 = a1[1];
  v11 = a2[1];
  if (v10 != v11 && vabds_f32(v10, v11) > 0.00001)
  {
    return 0;
  }

  v13 = a1[2];
  v14 = a2[2];
  return vabds_f32(v13, v14) <= 0.00001 || v13 == v14;
}

{
  if (*a1 != *a2 && vabds_f32(*a1, *a2) > 0.00001)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3 && vabds_f32(v2, v3) > 0.00001)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4 != v5 && vabds_f32(v4, v5) > 0.00001)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  return vabds_f32(v7, v8) <= 0.00001 || v7 == v8;
}

{
  if (*a1 != *a2 && vabds_f32(*a1, *a2) >= (((fabsf(*a1) + fabsf(*a2)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3 && vabds_f32(v2, v3) >= (((fabsf(v2) + fabsf(v3)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4 != v5 && vabds_f32(v4, v5) >= (((fabsf(v4) + fabsf(v5)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  if (v6 != v7 && vabds_f32(v6, v7) >= (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8 != v9 && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10 != v11 && vabds_f32(v10, v11) >= (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v12 = a1[6];
  v13 = a2[6];
  if (v12 != v13 && vabds_f32(v12, v13) >= (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v14 = a1[7];
  v15 = a2[7];
  if (v14 != v15 && vabds_f32(v14, v15) >= (((fabsf(v14) + fabsf(v15)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v16 = a1[8];
  v17 = a2[8];
  if (v16 != v17 && vabds_f32(v16, v17) >= (((fabsf(v16) + fabsf(v17)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v18 = a1[9];
  v19 = a2[9];
  if (v18 != v19 && vabds_f32(v18, v19) >= (((fabsf(v18) + fabsf(v19)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v20 = a1[10];
  v21 = a2[10];
  if (v20 != v21 && vabds_f32(v20, v21) >= (((fabsf(v20) + fabsf(v21)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v22 = a1[11];
  v23 = a2[11];
  if (v22 != v23 && vabds_f32(v22, v23) >= (((fabsf(v22) + fabsf(v23)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v24 = a1[12];
  v25 = a2[12];
  if (v24 != v25 && vabds_f32(v24, v25) >= (((fabsf(v24) + fabsf(v25)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v26 = a1[13];
  v27 = a2[13];
  if (v26 != v27 && vabds_f32(v26, v27) >= (((fabsf(v26) + fabsf(v27)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v28 = a1[14];
  v29 = a2[14];
  if (v28 != v29 && vabds_f32(v28, v29) >= (((fabsf(v28) + fabsf(v29)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v30 = a1[15];
  v31 = a2[15];
  return v30 == v31 || vabds_f32(v30, v31) < (((fabsf(v30) + fabsf(v31)) + 1.0) * 0.00001);
}

void re::Event<re::GeometricObjectBase>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {

    re::Event<re::GeometricObjectBase>::doDeferredActions(a1);
  }
}

void *re::introspect_GeometricObjectType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Unknown";
      re::introspect_GeometricObjectType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "GeometricObject";
      qword_1ECF1C220 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "RigidBody";
      qword_1ECF1C228 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_GeometricObjectType(BOOL)::info, "GeometricObjectType", 4, 4, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::introspect_GeometricObjectType(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_GeometricObjectType(BOOL)::isInitialized)
    {
      return &re::introspect_GeometricObjectType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::introspect_GeometricObjectType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::introspect_GeometricObjectType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_GeometricObjectType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_GeometricObjectType(BOOL)::info;
    }
  }

  re::introspect_GeometricObjectType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_GeometricObjectType(BOOL)::info, a2);
  v17[0] = 0x871260762363F434;
  v17[1] = "GeometricObjectType";
  xmmword_1ECF1C258 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_GeometricObjectType(BOOL)::info;
}

void re::internal::registerEnumType<re::GeometricObjectType>(re::TypeRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *&v35.var0 = 208862;
  v35.var1 = "int";
  v8 = re::TypeRegistry::typeID(a1, &v35, v34);
  v10 = v34[0];
  v11 = v34[1];
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  if (v10)
  {
    v12 = *(a2 + 64);
    v33[0] = v10;
    v33[1] = v11;
    re::TypeBuilder::beginEnumType(v34, a3, 1, 1, v33);
    v13 = *v12;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v15 = *(*(v12 + 1) + 8 * i);
        if (*v15 == 1)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v17 = *v16;
            if (*v16)
            {
              v18 = v16[1];
              if (v18)
              {
                v19 = (v16 + 2);
                do
                {
                  v17 = 31 * v17 + v18;
                  v20 = *v19++;
                  v18 = v20;
                }

                while (v20);
              }
            }
          }

          else
          {
            v17 = 0;
          }

          v21 = *(v15 + 8);
          *&v35.var0 = 2 * v17;
          v35.var1 = v16;
          re::TypeBuilder::addEnumConstant(v34, v21, &v35);
          if (*&v35.var0)
          {
            if (*&v35.var0)
            {
            }
          }

          v13 = *v12;
        }
      }

      if (v13)
      {
        for (j = 0; j < v13; ++j)
        {
          v24 = *(*(v12 + 1) + 8 * j);
          if (*v24 == 2)
          {
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = *v25;
              if (*v25)
              {
                v27 = v25[1];
                if (v27)
                {
                  v28 = (v25 + 2);
                  do
                  {
                    v26 = 31 * v26 + v27;
                    v29 = *v28++;
                    v27 = v29;
                  }

                  while (v29);
                }
              }
            }

            else
            {
              v26 = 0;
            }

            v30 = *(v24 + 8);
            *&v35.var0 = 2 * v26;
            v35.var1 = v25;
            re::TypeBuilder::addEnumConstantRenaming(v34, v30, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
              {
              }
            }

            v13 = *v12;
          }
        }
      }
    }

    re::TypeBuilder::commitTo(v34, a1, a4);
    re::TypeBuilder::~TypeBuilder(v34, v32);
  }

  else
  {
    re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, a3[1]);
    _os_crash();
    __break(1u);
  }
}

void re::GeometricObject::~GeometricObject(re::GeometricObject *this)
{
  re::GeometricObject::deinit(this);
  re::Event<re::GeometricObjectBase>::~Event(this + 18);
}

{
  re::GeometricObject::deinit(this);
  re::Event<re::GeometricObjectBase>::~Event(this + 18);

  JUMPOUT(0x1E6906520);
}

uint64_t re::GeometricObject::shape(re::GeometricObject *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

__n128 re::GeometricObject::pose@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[7];
  v3 = this[8];
  *a2 = result;
  a2[1] = v3;
  return result;
}

void *re::Event<re::GeometricObjectBase>::~Event(void *a1)
{
  if (*a1)
  {
    re::DynamicArray<unsigned long>::deinit(a1);
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 5));
  re::DynamicArray<unsigned long>::deinit(a1);
  return a1;
}

void re::Event<re::GeometricObjectBase>::doDeferredActions(_anonymous_namespace_ *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 7);
  if (v1)
  {
    v3 = 0;
    for (i = 0; i != v1; ++i)
    {
      v5 = *(a1 + 7);
      if (v5 <= i)
      {
        memset(v19, 0, sizeof(v19));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        v14 = 789;
        v15 = 2048;
        v16 = i;
        v17 = 2048;
        v18 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(a1 + 9) + v3;
      v7 = *(v6 + 32);
      v8 = *(v6 + 16);
      v9[0] = *v6;
      v9[1] = v8;
      v10 = v7;
      if (LOBYTE(v9[0]) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v9 + 1, v19);
        if ((v19[0] & 1) == 0)
        {
          re::DynamicArray<re::EvaluationRegister>::add(a1, v9 + 8);
        }
      }

      else
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v9 + 1);
      }

      v3 += 40;
    }
  }
}

void *re::introspect_CollisionObjectType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Default";
      re::introspect_CollisionObjectType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "Trigger";
      qword_1EE1C6528 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_CollisionObjectType(BOOL)::info, "CollisionObjectType", 1, 1, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::introspect_CollisionObjectType(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_CollisionObjectType(BOOL)::isInitialized)
    {
      return &re::introspect_CollisionObjectType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::introspect_CollisionObjectType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::introspect_CollisionObjectType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_CollisionObjectType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_CollisionObjectType(BOOL)::info;
    }
  }

  re::introspect_CollisionObjectType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_CollisionObjectType(BOOL)::info, a2);
  v15[0] = 0x601C7BD2D83C0796;
  v15[1] = "CollisionObjectType";
  xmmword_1EE1C64F8 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_CollisionObjectType(BOOL)::info;
}

double re::PhysXCapsuleShape::aabb@<D0>(re::PhysXCapsuleShape *a1@<X0>, float32x4_t *a2@<X1>, _OWORD *a3@<X8>)
{
  re::PhysXCapsuleShape::localTransform(a1);
  _Q0 = a2[1];
  v7 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
  v8 = vnegq_f32(_Q0);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(xmmword_1EE19D400, xmmword_1EE19D400), xmmword_1EE19D400, 0xCuLL), v8), xmmword_1EE19D400, v7);
  v10 = vaddq_f32(v9, v9);
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vaddq_f32(xmmword_1EE19D400, vmulq_laneq_f32(v11, _Q0, 3));
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v8), v11, v7);
  v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
  v15 = vaddq_f32(*a2, vaddq_f32(v12, v14));
  _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&qword_1EE19D410, *&qword_1EE19D410), *&qword_1EE19D410, 0xCuLL), v8), *&qword_1EE19D410, v7);
  v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), *&qword_1EE19D410, _Q0, 3);
  _Q3.i32[0] = unk_1EE19D41C;
  v18 = vmlaq_laneq_f32(v17, _Q0, *&qword_1EE19D410, 3);
  _D4 = vmulq_f32(_Q0, *&qword_1EE19D410).u64[0];
  v14.f32[0] = vaddv_f32(_D4);
  v31 = v18.i32[2];
  __asm { FMLA            S4, S3, V0.S[3] }

  v32 = _D4.i32[0];
  v33 = v15.i64[0];
  v34 = v15.i32[2];
  _Q0.i64[0] = 0;
  v15.i32[0] = 1.0;
  physx::Gu::computeBounds(v35, a1 + 20, &v30, 0, _Q0, *v15.i64, *v18.i64, *_Q3.i64, *&_D4, *v14.i64, v8, v24, v25, v26, v27, v18.i8[0]);
  result = *v35;
  *&v29 = *&v35[12];
  DWORD2(v29) = v36;
  *a3 = *v35;
  a3[1] = v29;
  return result;
}

__int128 *re::PhysXCapsuleShape::localTransform(re::PhysXCapsuleShape *this)
{
  if ((atomic_load_explicit(_MergedGlobals_125, memory_order_acquire) & 1) == 0)
  {
    v7 = v1;
    v8 = v2;
    if (__cxa_guard_acquire(_MergedGlobals_125))
    {
      v6.i64[0] = 0;
      v6.i64[1] = 1065353216;
      Rotation = re::Quaternion<float>::makeRotation(&v6, 1.5708);
      xmmword_1EE19D400 = 0uLL;
      qword_1EE19D410 = Rotation;
      unk_1EE19D418 = v5;
      __cxa_guard_release(_MergedGlobals_125);
    }
  }

  return &xmmword_1EE19D400;
}

void re::introspect_CollisionQueryType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19D428, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19D430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D430))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19D470, "CollisionQueryType", 1, 1, 1, 1);
      qword_1EE19D470 = &unk_1F5D0C658;
      qword_1EE19D4B0 = &re::introspect_CollisionQueryType(BOOL)::enumTable;
      dword_1EE19D480 = 9;
      __cxa_guard_release(&qword_1EE19D430);
    }

    if (_MergedGlobals_126)
    {
      break;
    }

    _MergedGlobals_126 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19D470, a2);
    v35 = 0x139DD67E02300A60;
    v36 = "CollisionQueryType";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19D4B0;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE19D490 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE19D428);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Nearest";
      qword_1EE19D458 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "All";
      qword_1EE19D460 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Any";
      qword_1EE19D468 = v34;
      __cxa_guard_release(&qword_1EE19D428);
    }
  }
}