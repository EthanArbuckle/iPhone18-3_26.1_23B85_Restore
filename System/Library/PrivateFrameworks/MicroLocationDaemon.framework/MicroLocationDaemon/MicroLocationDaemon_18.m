void sub_259145C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__pa, uint64_t a15, char a16, uint64_t a17, void *a18, ULMapLabelDO *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  a27 = &a24;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void ULService::releaseOutstandingPredictionRequests(void *a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 29;
  }

  else
  {
    v2 = -1;
  }

  if (a1[20])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    while (a1[20])
    {
      v5 = *(a1[16] + 8 * (a1[19] / 0x78uLL)) + 34 * (a1[19] % 0x78uLL);
      (*(**a1 + 40))(*a1, a1 + 1, v5, v2);
      buf[0] = 0;
      BYTE4(v9) = 0;
      BYTE2(v10) = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      (*(**a1 + 32))(*a1, a1 + 1, v5, buf);
      *(a1 + 19) = vaddq_s64(*(a1 + 19), xmmword_259220430);
      std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100]((a1 + 15), 1);
      if (*(&v15 + 1))
      {
        *&v16 = *(&v15 + 1);
        operator delete(*(&v15 + 1));
      }

      if (v14)
      {
        *(&v14 + 1) = v14;
        operator delete(v14);
      }

      if (BYTE4(v9) == 1 && *buf)
      {
        v8 = *buf;
        operator delete(*buf);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25914601C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void ULService::appendMapItems(void *a1, uint64_t *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if (std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(a1 + 40, (v2 + 88)))
      {
        v6 = v41;
        if (v41 >= v42)
        {
          v7 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO const&>(&v40, v2);
        }

        else
        {
          ULMapLabelDO::ULMapLabelDO(v41, v2);
          v7 = (v6 + 232);
        }

        v41 = v7;
      }

      v2 += 232;
    }

    while (v2 != v3);
    v8 = v40;
    v9 = v41;
    if (v40 != v41)
    {
      v38 = a1 + 34;
      v39 = *MEMORY[0x277D28838];
      while (1)
      {
        v10 = ULMapLabelDO::create(v8, v5);
        v11 = a1[34];
        v12 = a1[35];
        if (v11 == v12)
        {
          goto LABEL_23;
        }

        do
        {
          v13 = *v11;
          v14 = [v13 name];
          v15 = v14;
          v16 = [v14 UTF8String];
          v17 = strlen(v16);
          v18 = v17;
          var0_high = SHIBYTE(v8[2].var1.var0.var1.var0);
          if (var0_high < 0)
          {
            if (v17 != *&v8[2].var0.var0.var1.var2)
            {
              goto LABEL_18;
            }

            if (v17 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v20 = *&v8[2].var0.var0.var0;
          }

          else
          {
            v20 = v8 + 2;
            if (v18 != var0_high)
            {
              goto LABEL_18;
            }
          }

          if (memcmp(v20, v16, v18))
          {
LABEL_18:

            goto LABEL_19;
          }

          v21 = *&v8[1].var0.var0.var1.var2;
          LOBYTE(v21) = v21 == [v13 contextLayerEnum];

          if (v21)
          {
            goto LABEL_22;
          }

LABEL_19:
          ++v11;
        }

        while (v11 != v12);
        v11 = v12;
LABEL_22:
        v12 = a1[35];
LABEL_23:
        if (v11 == v12)
        {
          v28 = objc_alloc(MEMORY[0x277D287C8]);
          v23 = [v10 name];
          v48[0] = v10;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
          v29 = [v28 initWithName:v23 labels:v24 mapItemType:v39];
          v31 = a1[35];
          v30 = a1[36];
          if (v31 >= v30)
          {
            v33 = (v31 - *v38) >> 3;
            if ((v33 + 1) >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v34 = v30 - *v38;
            v35 = v34 >> 2;
            if (v34 >> 2 <= (v33 + 1))
            {
              v35 = v33 + 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            v47 = a1 + 34;
            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(v38, v36);
            }

            v43 = 0;
            v44 = (8 * v33);
            v46 = 0;
            *v44 = v29;
            v45 = 8 * v33 + 8;
            std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(v38, &v43);
            v32 = a1[35];
            std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(&v43);
          }

          else
          {
            *v31 = v29;
            v32 = v31 + 1;
            a1[35] = v32;
          }

          a1[35] = v32;
        }

        else
        {
          v22 = objc_alloc(MEMORY[0x277D287C8]);
          v23 = [*v11 name];
          v24 = [*v11 labels];
          v25 = [v24 arrayByAddingObject:v10];
          v26 = [v22 initWithName:v23 labels:v25 mapItemType:v39];
          v27 = *v11;
          *v11 = v26;
        }

        v8 = (v8 + 232);
        if (v8 == v9)
        {
          ULService::updateState(a1);
          break;
        }
      }
    }
  }

  v43 = &v40;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v43);
  v37 = *MEMORY[0x277D85DE8];
}

void sub_2591463B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t ULService::sendInitialBlueAtlasPrediction(uint64_t this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!*(this + 96))
  {
    v1 = this;
    v8 = 0;
    v9 = 0;
    *buf = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(buf);
    v8 = boost::uuids::random_generator_pure::operator()(buf);
    v9 = v2;
    boost::uuids::detail::random_provider_base::destroy(buf);
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    v4 = *v1;
    v7 = *(v1 + 8);
    CLMicroLocationClientUtils::getClientIdAndServiceUuid((v1 + 40));
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_259146930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  operator delete(v21);

  _Unwind_Resume(a1);
}

uint64_t ULService::getModelPtr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t ULService::sendGenericEvent(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(result + 96))
  {
    v5 = result;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    result = (*(**v5 + 64))(*v5, v5 + 1, a2, a3);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259146BB0(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::updateModel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v7 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 272);
  for (i = *(a1 + 280); i != v8; i -= 8)
  {
    v10 = *(i - 8);
  }

  *(a1 + 280) = v8;
  ULService::releaseAllOutstandingLabelRequests(a1);
  if (ULService::shouldEnableServiceInLocation(a1, **(a1 + 264)))
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = a2[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a1 + 112);
      *(a1 + 104) = v11;
      *(a1 + 112) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      std::vector<ULMapItem * {__strong}>::__vdeallocate((a1 + 272));
      *(a1 + 272) = *a3;
      *(a1 + 288) = *(a3 + 16);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  ULService::updateState(a1);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_259146E5C(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::releaseAllOutstandingLabelRequests(ULService *this)
{
  v4 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  std::vector<ULMapLabelDO>::__base_destruct_at_end[abi:ne200100](this + 296, *(this + 37));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_259146FDC(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::updateState(ULService *this)
{
  v2 = *(this + 12);
  v3 = ULService::requiresLocalization(this);
  v4 = v3 ^ 1u;
  *(this + 12) = v4;
  if (v2 != v4)
  {
    if (v3)
    {
      ULService::didStateChangeToRunning(this);
    }

    else
    {
      ULService::didStateChangeToSuspended(this);
    }
  }

  ULService::sendStatus(this);
}

BOOL ULService::internalQualityToIsMapValid(int a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = a1;
    v12 = 1026;
    v13 = a2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:internalToExternalServiceQuality, qualityLevel:%{public}d, candidateQualityLevel:%{public}d}", v7, 0x1Eu);
  }

  result = a1 == 3;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULService::requiresLocalization(ULService *this)
{
  result = ULService::shouldEnableServiceInLocation(this, **(this + 33));
  if (result)
  {
    v3 = *(this + 13);
    if (v3 && (ULModelAndStates::acceptsScanEventLocalization(v3) & 1) != 0 || *(this + 31) == 2)
    {
      return 1;
    }

    else
    {

      return ULSettings::get<ULSettings::ForceLowLatency>();
    }
  }

  return result;
}

void ULService::didStateChangeToRunning(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  *(a1 + 96) = 0;
  v3 = *MEMORY[0x277D85DE8];
}

void sub_259147308(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::didStateChangeToSuspended(ULService *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  ULService::releaseAllOutstandingRequestsAsFailed(a1);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_259147468(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::sendStatus(ULService *this)
{
  v12 = *MEMORY[0x277D85DE8];
  ULService::getCurrentStatus(this, &v4);
  (*(**this + 72))(*this, &v4);
  if (v11 == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&v10, 0);
    v3 = &v9;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  v3 = &v8;
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = &v7;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_259147578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ULService::ServiceStatus::~ServiceStatus(va);
  _Unwind_Resume(a1);
}

void ULService::releaseAllOutstandingRequestsAsFailed(ULService *this)
{
  ULService::releaseOutstandingPredictionRequests(this, 1);
  v5[0] = 0;
  v5[1] = 0;
  memset(v3, 0, sizeof(v3));
  v4 = v5;
  v6 = 2;
  v2 = 2;
  std::__tree<ULRecordingCompletionMetaInformation::RecordingError>::__emplace_unique_key_args<ULRecordingCompletionMetaInformation::RecordingError,ULRecordingCompletionMetaInformation::RecordingError>(&v4, &v2);
  ULService::releaseOutstandingObservationRequests(this, v3);
  ULService::releaseAllOutstandingLabelRequests(this);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v4, v5[0]);
}

void ULService::releaseOutstandingObservationRequests(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48))
  {
    v2 = 12;
  }

  else
  {
    v2 = -1;
  }

  if (a1[26])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    while (a1[26])
    {
      v6 = *(a1[22] + 8 * (a1[25] / 0x78uLL)) + 34 * (a1[25] % 0x78uLL);
      if (*(v6 + 33))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULService::ingestLocalizationResults();
        }

        v7 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      else
      {
        (*(**a1 + 40))(*a1, a1 + 1, v6, v2);
        if (onceToken_MicroLocation_Default != -1)
        {
          ULService::ingestLocalizationResults();
        }

        v7 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }
      }

      (*(**a1 + 48))(*a1, a1 + 1, v6, a2);
      *(a1 + 25) = vaddq_s64(*(a1 + 25), xmmword_259220430);
      std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100]((a1 + 21), 1);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_259147A78(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

BOOL ULService::predictionRequest(void *a1, __int128 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  if (!v4)
  {
    v5 = *a1;
    v6 = a1[14];
    v10 = a1[13];
    v11 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 16))(buf);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v22 == 1)
    {
      (*(**a1 + 32))(*a1, a1 + 1, a2, buf);
    }

    else
    {
      v12 = *a2;
      v13 = 0;
      v14 = 0;
      std::deque<ULService::OutstandingRequest>::push_back((a1 + 15), &v12);
    }

    if (v22 == 1)
    {
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }

      if (v17 == 1 && *buf)
      {
        v16 = *buf;
        operator delete(*buf);
      }
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4 == 0;
}

void sub_259147DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::optional<ULLocalizationResult>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t ULService::observationRequest(unint64_t **a1, _OWORD *a2, __int128 *a3, uint64_t a4, char a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (ULService::shouldEnableServiceInLocation(a1, *a1[33]) && (*(**a1 + 24))())
  {
    v9 = *a3;
    v14[0] = *a2;
    v14[1] = v9;
    v15 = *(a3 + 16);
    v16 = a5;
    std::deque<ULService::OutstandingRequest>::push_back((a1 + 21), v14);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_2591480E8(_Unwind_Exception *a1)
{
  operator delete(v4);
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

__n128 std::deque<ULService::OutstandingRequest>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 120 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<ULService::OutstandingRequest>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x78)) + 34 * (v8 % 0x78);
  result = *a2;
  v11 = *(a2 + 16);
  *(v9 + 32) = *(a2 + 32);
  *v9 = result;
  *(v9 + 16) = v11;
  ++*(a1 + 40);
  return result;
}

void ULService::didRecordingStop(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  ULService::releaseOutstandingObservationRequests(a1, a2);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_25914833C(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

uint64_t ULService::getCurrentStatus@<X0>(ULService *this@<X0>, uint64_t *a2@<X8>)
{
  v184[19] = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  v4 = (a2 + 1);
  a2[2] = 0;
  a2[3] = 0;
  a2[7] = 0;
  *(a2 + 64) = 0;
  v5 = a2 + 8;
  *(a2 + 6) = 0u;
  v6 = a2 + 12;
  *(a2 + 88) = 0;
  *(a2 + 9) = 0u;
  v7 = (a2 + 18);
  *(a2 + 224) = 0;
  *(a2 + 7) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 192) = 0;
  *a2 = *(this + 12);
  v8 = ULService::requiresIO(this);
  v9 = *(this + 30);
  if (v8 && v9[8] == 1)
  {
    *a2 = 1;
  }

  if (*v9)
  {
    goto LABEL_5;
  }

  if (v9[1] != 1 || v9[2] != 1 || v9[3] != 1 || v9[4] != 1 || (v9[6] & 1) != 0 || (v9[7] & 1) != 0 || v9[5] != 1)
  {
LABEL_28:
    if ((v9[1] & 1) == 0)
    {
      v22 = a2[2];
      v21 = a2[3];
      if (v22 >= v21)
      {
        v24 = *v4;
        v25 = v22 - *v4;
        v26 = v25 >> 3;
        v27 = (v25 >> 3) + 1;
        if (v27 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v28 = v21 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        v18 = v28 >= 0x7FFFFFFFFFFFFFF8;
        v29 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v29);
        }

        *(8 * v26) = 5;
        v23 = 8 * v26 + 8;
        memcpy(0, v24, v25);
        v30 = a2[1];
        a2[1] = 0;
        a2[2] = v23;
        a2[3] = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v22 = 5;
        v23 = (v22 + 8);
      }

      a2[2] = v23;
      v9 = *(this + 30);
    }

    if ((v9[2] & 1) == 0)
    {
      v32 = a2[2];
      v31 = a2[3];
      if (v32 >= v31)
      {
        v34 = *v4;
        v35 = v32 - *v4;
        v36 = v35 >> 3;
        v37 = (v35 >> 3) + 1;
        if (v37 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v38 = v31 - v34;
        if (v38 >> 2 > v37)
        {
          v37 = v38 >> 2;
        }

        v18 = v38 >= 0x7FFFFFFFFFFFFFF8;
        v39 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v39 = v37;
        }

        if (v39)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v39);
        }

        *(8 * v36) = 6;
        v33 = 8 * v36 + 8;
        memcpy(0, v34, v35);
        v40 = a2[1];
        a2[1] = 0;
        a2[2] = v33;
        a2[3] = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v32 = 6;
        v33 = (v32 + 8);
      }

      a2[2] = v33;
      v9 = *(this + 30);
    }

    if ((v9[3] & 1) == 0)
    {
      v42 = a2[2];
      v41 = a2[3];
      if (v42 >= v41)
      {
        v44 = *v4;
        v45 = v42 - *v4;
        v46 = v45 >> 3;
        v47 = (v45 >> 3) + 1;
        if (v47 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v48 = v41 - v44;
        if (v48 >> 2 > v47)
        {
          v47 = v48 >> 2;
        }

        v18 = v48 >= 0x7FFFFFFFFFFFFFF8;
        v49 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v49 = v47;
        }

        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v49);
        }

        *(8 * v46) = 8;
        v43 = 8 * v46 + 8;
        memcpy(0, v44, v45);
        v50 = a2[1];
        a2[1] = 0;
        a2[2] = v43;
        a2[3] = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v42 = 8;
        v43 = (v42 + 8);
      }

      a2[2] = v43;
      v9 = *(this + 30);
    }

    if ((v9[4] & 1) == 0)
    {
      v52 = a2[2];
      v51 = a2[3];
      if (v52 >= v51)
      {
        v54 = *v4;
        v55 = v52 - *v4;
        v56 = v55 >> 3;
        v57 = (v55 >> 3) + 1;
        if (v57 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v58 = v51 - v54;
        if (v58 >> 2 > v57)
        {
          v57 = v58 >> 2;
        }

        v18 = v58 >= 0x7FFFFFFFFFFFFFF8;
        v59 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v59 = v57;
        }

        if (v59)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v59);
        }

        *(8 * v56) = 7;
        v53 = 8 * v56 + 8;
        memcpy(0, v54, v55);
        v60 = a2[1];
        a2[1] = 0;
        a2[2] = v53;
        a2[3] = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v52 = 7;
        v53 = (v52 + 8);
      }

      a2[2] = v53;
      v9 = *(this + 30);
    }

    if (v9[6] == 1)
    {
      v62 = a2[2];
      v61 = a2[3];
      if (v62 >= v61)
      {
        v64 = *v4;
        v65 = v62 - *v4;
        v66 = v65 >> 3;
        v67 = (v65 >> 3) + 1;
        if (v67 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v68 = v61 - v64;
        if (v68 >> 2 > v67)
        {
          v67 = v68 >> 2;
        }

        v18 = v68 >= 0x7FFFFFFFFFFFFFF8;
        v69 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v69 = v67;
        }

        if (v69)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v69);
        }

        *(8 * v66) = 9;
        v63 = 8 * v66 + 8;
        memcpy(0, v64, v65);
        v70 = a2[1];
        a2[1] = 0;
        a2[2] = v63;
        a2[3] = 0;
        if (v70)
        {
          operator delete(v70);
        }
      }

      else
      {
        *v62 = 9;
        v63 = (v62 + 8);
      }

      a2[2] = v63;
      v9 = *(this + 30);
    }

    if ((v9[5] & 1) == 0)
    {
      v72 = a2[2];
      v71 = a2[3];
      if (v72 >= v71)
      {
        v74 = *v4;
        v75 = v72 - *v4;
        v76 = v75 >> 3;
        v77 = (v75 >> 3) + 1;
        if (v77 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v78 = v71 - v74;
        if (v78 >> 2 > v77)
        {
          v77 = v78 >> 2;
        }

        v18 = v78 >= 0x7FFFFFFFFFFFFFF8;
        v79 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v79 = v77;
        }

        if (v79)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v79);
        }

        *(8 * v76) = 4;
        v73 = 8 * v76 + 8;
        memcpy(0, v74, v75);
        v80 = a2[1];
        a2[1] = 0;
        a2[2] = v73;
        a2[3] = 0;
        if (v80)
        {
          operator delete(v80);
        }
      }

      else
      {
        *v72 = 4;
        v73 = (v72 + 8);
      }

      a2[2] = v73;
      v9 = *(this + 30);
    }

    if (v9[7] == 1)
    {
      v82 = a2[2];
      v81 = a2[3];
      if (v82 >= v81)
      {
        v84 = *v4;
        v85 = v82 - *v4;
        v86 = v85 >> 3;
        v87 = (v85 >> 3) + 1;
        if (v87 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v88 = v81 - v84;
        if (v88 >> 2 > v87)
        {
          v87 = v88 >> 2;
        }

        v18 = v88 >= 0x7FFFFFFFFFFFFFF8;
        v89 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v89 = v87;
        }

        if (v89)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v89);
        }

        *(8 * v86) = 10;
        v83 = 8 * v86 + 8;
        memcpy(0, v84, v85);
        v90 = a2[1];
        a2[1] = 0;
        a2[2] = v83;
        a2[3] = 0;
        if (v90)
        {
          operator delete(v90);
        }
      }

      else
      {
        *v82 = 10;
        v83 = (v82 + 8);
      }

      a2[2] = v83;
      v9 = *(this + 30);
    }

    if (v9[8] == 1)
    {
      v92 = a2[2];
      v91 = a2[3];
      if (v92 >= v91)
      {
        v94 = *v4;
        v95 = v92 - *v4;
        v96 = (v95 >> 3) + 1;
        if (v96 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v97 = v91 - v94;
        if (v97 >> 2 > v96)
        {
          v96 = v97 >> 2;
        }

        v18 = v97 >= 0x7FFFFFFFFFFFFFF8;
        v98 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v98 = v96;
        }

        if (v98)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v98);
        }

        v99 = (8 * (v95 >> 3));
        *v99 = 11;
        v93 = v99 + 1;
        memcpy(0, v94, v95);
        v100 = a2[1];
        a2[1] = 0;
        a2[2] = v93;
        a2[3] = 0;
        if (v100)
        {
          operator delete(v100);
        }
      }

      else
      {
        *v92 = 11;
        v93 = v92 + 1;
      }

      a2[2] = v93;
    }

    if (*(a2 + 88) == 1)
    {
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v170, "None");
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v101 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    if (SHIBYTE(v171) < 0)
    {
      operator delete(*v170);
    }

    goto LABEL_140;
  }

  if (ULService::requiresIO(this))
  {
    v9 = *(this + 30);
    if (v9[8] == 1)
    {
      if (*v9)
      {
LABEL_5:
        v11 = a2[2];
        v10 = a2[3];
        if (v11 >= v10)
        {
          v13 = *v4;
          v14 = v11 - *v4;
          v15 = v14 >> 3;
          v16 = (v14 >> 3) + 1;
          if (v16 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v17 = v10 - v13;
          if (v17 >> 2 > v16)
          {
            v16 = v17 >> 2;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
          v19 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v19);
          }

          *(8 * v15) = 2;
          v12 = 8 * v15 + 8;
          memcpy(0, v13, v14);
          v20 = a2[1];
          a2[1] = 0;
          a2[2] = v12;
          a2[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = 2;
          v12 = (v11 + 8);
        }

        a2[2] = v12;
        v9 = *(this + 30);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  v144 = **(this + 33);
  if (v144 >= 0x20)
  {
    std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
  }

  if (((*(this + 4) >> v144) & 1) == 0)
  {
    v150 = a2[2];
    v149 = a2[3];
    if (v150 < v149)
    {
      *v150 = 0;
      v148 = v150 + 1;
      goto LABEL_236;
    }

    v151 = *v4;
    v152 = v150 - *v4;
    v153 = (v152 >> 3) + 1;
    if (v153 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v154 = v149 - v151;
    if (v154 >> 2 > v153)
    {
      v153 = v154 >> 2;
    }

    v18 = v154 >= 0x7FFFFFFFFFFFFFF8;
    v155 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v155 = v153;
    }

    if (v155)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v155);
    }

    v159 = (8 * (v152 >> 3));
    *v159 = 0;
    v148 = v159 + 1;
LABEL_234:
    memcpy(0, v151, v152);
    v161 = a2[1];
    a2[1] = 0;
    a2[2] = v148;
    a2[3] = 0;
    if (v161)
    {
      operator delete(v161);
    }

    goto LABEL_236;
  }

  v145 = *(this + 13);
  if (v145)
  {
    LOBYTE(v145) = ULModelAndStates::acceptsScanEventLocalization(v145);
  }

  v102 = *a2;
  if ((v145 & 1) == 0 && v102 == 1)
  {
    v147 = a2[2];
    v146 = a2[3];
    if (v147 < v146)
    {
      *v147 = 1;
      v148 = v147 + 1;
LABEL_236:
      a2[2] = v148;
LABEL_140:
      v102 = *a2;
      goto LABEL_141;
    }

    v151 = *v4;
    v152 = v147 - *v4;
    v156 = (v152 >> 3) + 1;
    if (v156 >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v157 = v146 - v151;
    if (v157 >> 2 > v156)
    {
      v156 = v157 >> 2;
    }

    v18 = v157 >= 0x7FFFFFFFFFFFFFF8;
    v158 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v158 = v156;
    }

    if (v158)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v4, v158);
    }

    v160 = (8 * (v152 >> 3));
    *v160 = 1;
    v148 = v160 + 1;
    goto LABEL_234;
  }

LABEL_141:
  if (v102)
  {
    if (v102 == 1 && a2[1] == a2[2])
    {
      v103 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v173 = 2082;
        *v174 = "";
        *&v174[8] = 2082;
        *&v174[10] = "assert";
        *&v174[18] = 2081;
        *&v174[20] = "status.state != ULServiceState::ULServiceStateSuspended || !status.suspendReasons.empty()";
        _os_log_impl(&dword_258FE9000, v103, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If run state is suspended then suspend reason cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v104 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_signpost_enabled(v104))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v173 = 2082;
        *v174 = "";
        *&v174[8] = 2082;
        *&v174[10] = "assert";
        *&v174[18] = 2081;
        *&v174[20] = "status.state != ULServiceState::ULServiceStateSuspended || !status.suspendReasons.empty()";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v104, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If run state is suspended then suspend reason cannot be empty", "{msg%{public}.0s:If run state is suspended then suspend reason cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v105 = _CLLogObjectForCategory_MicroLocation_Default();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[4] = 0;
        v173 = 2082;
        *v174 = "";
        *&v174[8] = 2082;
        *&v174[10] = "assert";
        *&v174[18] = 2081;
        *&v174[20] = "status.state != ULServiceState::ULServiceStateSuspended || !status.suspendReasons.empty()";
        _os_log_impl(&dword_258FE9000, v105, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If run state is suspended then suspend reason cannot be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

LABEL_243:

      result = abort_report_np();
      __break(1u);
      return result;
    }
  }

  else if (a2[1] != a2[2])
  {
    v162 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v173 = 2082;
      *v174 = "";
      *&v174[8] = 2082;
      *&v174[10] = "assert";
      *&v174[18] = 2081;
      *&v174[20] = "status.state != ULServiceState::ULServiceStateRunning || status.suspendReasons.empty()";
      _os_log_impl(&dword_258FE9000, v162, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:If run state is running then suspend reason must be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v163 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v163))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v173 = 2082;
      *v174 = "";
      *&v174[8] = 2082;
      *&v174[10] = "assert";
      *&v174[18] = 2081;
      *&v174[20] = "status.state != ULServiceState::ULServiceStateRunning || status.suspendReasons.empty()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v163, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "If run state is running then suspend reason must be empty", "{msg%{public}.0s:If run state is running then suspend reason must be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v105 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v173 = 2082;
      *v174 = "";
      *&v174[8] = 2082;
      *&v174[10] = "assert";
      *&v174[18] = 2081;
      *&v174[20] = "status.state != ULServiceState::ULServiceStateRunning || status.suspendReasons.empty()";
      _os_log_impl(&dword_258FE9000, v105, OS_LOG_TYPE_INFO, "{msg%{public}.0s:If run state is running then suspend reason must be empty, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_243;
  }

  v106 = *(this + 24);
  *(a2 + 2) = *(this + 8);
  *(a2 + 3) = v106;
  v107 = *(this + 13);
  if (v107)
  {
    if (v107[304] == 1)
    {
      QualityIndicator = CLMicroLocationModel::getQualityIndicator(v107);
      v109 = *(this + 13);
      if (*(v109 + 304) == 1)
      {
        CandidateQualityIndicator = CLMicroLocationModel::getCandidateQualityIndicator(v109);
        *(a2 + 232) = ULService::internalQualityToIsMapValid(QualityIndicator, CandidateQualityIndicator);
        v111 = *(this + 13);
        if (*(v111 + 304) == 1)
        {
          *v6 = CLMicroLocationModel::numClusters(v111);
          v112 = *(this + 13);
          if (*(v112 + 304) == 1)
          {
            *(a2 + 26) = *(v112 + 148);
            *(a2 + 29) = CLMicroLocationModel::numRecordingsBeforePruning(v112);
            v113 = *(this + 13);
            if (*(v113 + 304) == 1)
            {
              *(a2 + 30) = (*(v113 + 184) - *(v113 + 176)) >> 5;
              *(a2 + 124) = *(v113 + 160);
              *(a2 + 33) = *(v113 + 168);
              *(a2 + 25) = *(v113 + 144);
              *(a2 + 108) = *(v113 + 152);
              goto LABEL_167;
            }
          }
        }
      }

LABEL_244:
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v107[520] == 1)
    {
      *(a2 + 232) = 1;
      Rois = ULHomeSlamModel::getRois((v107 + 312));
      *v6 = (Rois[1] - *Rois) >> 5;
      v115 = *(this + 13);
      if (*(v115 + 520) != 1)
      {
        goto LABEL_244;
      }

      v116 = ULHomeSlamModel::getRois((v115 + 312));
      if (a2 + 21 != v116)
      {
        std::vector<ULROI>::__assign_with_size[abi:ne200100]<ULROI*,ULROI*>((a2 + 21), *v116, v116[1], (v116[1] - *v116) >> 5);
      }

      v117 = *(this + 13);
      if ((*(v117 + 520) & 1) == 0)
      {
        goto LABEL_244;
      }

      TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud((v117 + 312));
      std::__optional_storage_base<ULTrajectoryPointCloud,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULTrajectoryPointCloud,false> const&>((a2 + 24), TrajectoryPointCloud);
      v119 = *(this + 13);
      if ((*(v119 + 520) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULHomeSlamModel::getMetadata((v119 + 312), buf);
      v120 = v175;
      *(a2 + 26) = *&v174[18];
      *(a2 + 124) = v176;
      *(a2 + 33) = v177;
      *(a2 + 34) = v120;
      if ((v174[13] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_167:
  v121 = *(this + 33);
  v122 = *(a2 + 88);
  v123 = *(v121 + 16);
  *v5 = *v121;
  v5[2] = v123;
  if ((v122 & 1) == 0)
  {
    *(a2 + 88) = 1;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  v124 = a2[1];
  for (i = a2[2]; v124 != i; ++v124)
  {
    v126 = *v124;
    v127 = ULServiceSuspendReasonToString();
    v128 = v127;
    v129 = [v127 UTF8String];
    v130 = strlen(v129);
    v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v174[6], v129, v130);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, " ", 1);
  }

  if ((v183 & 0x10) != 0)
  {
    v133 = v182;
    if (v182 < v179)
    {
      v182 = v179;
      v133 = v179;
    }

    v134 = __src;
    goto LABEL_178;
  }

  if ((v183 & 8) != 0)
  {
    v134 = v175;
    v133 = v177;
LABEL_178:
    v132 = (v133 - v134);
    if (v133 - v134 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v132 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v169) = v133 - v134;
    if (v132)
    {
      memmove(&__p, v134, v132);
    }

    goto LABEL_184;
  }

  v132 = 0;
  HIBYTE(v169) = 0;
LABEL_184:
  *(&__p + v132) = 0;
  if (*(a2 + 88) == 1)
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v166, "None");
  v135 = *(a2 + 88);
  if (v135 == 1)
  {
    v136 = *v5;
    v132 = ULLocationTypeToString();
    v137 = v132;
    v138 = [v132 UTF8String];
  }

  else
  {
    v138 = "None";
  }

  std::string::basic_string[abi:ne200100]<0>(&v164, v138);
  if (v135)
  {
  }

  if (v7 != (this + 272))
  {
    std::vector<ULMapItem * {__strong}>::__assign_with_size[abi:ne200100]<ULMapItem * {__strong}*,ULMapItem * {__strong}*>(v7, *(this + 34), *(this + 35), (*(this + 35) - *(this + 34)) >> 3);
  }

  if (onceToken_MicroLocationQE_Default != -1)
  {
    ULService::getCurrentStatus();
  }

  v139 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 63) < 0)
    {
      v140 = *(this + 5);
    }

    operator new();
  }

  if (v165 < 0)
  {
    operator delete(v164);
  }

  if (SHIBYTE(v167) < 0)
  {
    operator delete(v166);
  }

  if (SHIBYTE(v169) < 0)
  {
    operator delete(__p);
  }

  *buf = *MEMORY[0x277D82818];
  v141 = *(MEMORY[0x277D82818] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v174[6] = v141;
  *&v174[14] = MEMORY[0x277D82878] + 16;
  if (v181 < 0)
  {
    operator delete(v180);
  }

  *&v174[14] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v174[22]);
  std::iostream::~basic_iostream();
  result = MEMORY[0x259CA1EE0](v184);
  v143 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULService::requiresIO(ULService *this)
{
  result = ULService::shouldEnableServiceInLocation(this, **(this + 33));
  if (result)
  {
    if (*(this + 31) == 2)
    {
      v3 = *(this + 13);
      if (v3)
      {
        return ULModelAndStates::requiresBlueAtlasLocalizationScanType(v3) ^ 1;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ULService::ServiceStatus::~ServiceStatus(ULService::ServiceStatus *this)
{
  if (*(this + 224) == 1)
  {
    std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](this + 27, 0);
    v3 = (this + 192);
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  v3 = (this + 168);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 144);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void ULService::addLabel(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((*(a1 + 24) - 2) > 2)
  {
    shouldEnableServiceInLocation = 0;
  }

  else
  {
    shouldEnableServiceInLocation = ULService::shouldEnableServiceInLocation(a1, **(a1 + 264));
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 name];
    v9 = [v5 contextLayer];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:shouldEnableServiceInLocation];
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v26 = v10;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "ULService: addLabel with name: %@, contextLayer: %@, isLabelingAllowed: %@", buf, 0x20u);
  }

  if (shouldEnableServiceInLocation)
  {
    v24[0] = 0;
    v24[12] = 0;
    LOBYTE(v22[0]) = 0;
    v23 = 0;
    LOBYTE(v20[0]) = 0;
    v21 = 0;
    v19 = cl::chrono::CFAbsoluteTimeClock::now();
    v45 = *(a1 + 8);
    v46 = 1;
    v43.var0 = 0;
    v44 = 0;
    ULLabelDO::create(v5, &v45, &v43, &v47);
    ULMapLabelDO::ULMapLabelDO(buf, v24, v22, v20, &v19, &v47, *(a1 + 104) + 536);
    v11 = *(a1 + 304);
    if (v11 >= *(a1 + 312))
    {
      v12 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO>(a1 + 296, buf);
    }

    else
    {
      ULMapLabelDO::ULMapLabelDO(*(a1 + 304), buf);
      v12 = v11 + 232;
      *(a1 + 304) = v11 + 232;
    }

    *(a1 + 304) = v12;
    if (v41 == 1)
    {
      v40 = -1;
    }

    if (v39 < 0)
    {
      operator delete(__p);
    }

    if (v31[8] == 1 && v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v28 == 1 && *&buf[16])
    {
      v26 = *&buf[16];
      operator delete(*&buf[16]);
    }

    if (v54 == 1)
    {
      v53 = -1;
    }

    if (v50 < 0)
    {
      operator delete(v48);
    }

    if (v21 == 1 && v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    if (v23 == 1 && v22[0])
    {
      v22[1] = v22[0];
      operator delete(v22[0]);
    }

    v13 = *a1;
    v14 = *(a1 + 112);
    v17 = *(a1 + 104);
    v18 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v22[0]) = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(v22);
    *buf = boost::uuids::random_generator_pure::operator()(v22);
    *&buf[8] = v15;
    (*(*v13 + 16))(&v47, v13, 0, &v17, buf);
    boost::uuids::detail::random_provider_base::destroy(v22);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    *&v45 = cl::chrono::CFAbsoluteTimeClock::now();
    ULService::applyLocalizationResultsToOutstandingLabels(a1, &v47, &v45, a3);
    if (v54 == 1)
    {
      buf[0] = 0;
      v42 = 0;
      ULService::ingestLocalizationResults(a1, &v47, buf, &v45);
      if (v42 == 1)
      {
        v22[0] = &v40;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v22);
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v22[0] = v31;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v22);
        if (v27 < 0)
        {
          operator delete(*&buf[16]);
        }
      }

      if (v54)
      {
        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v47.var2.var0.var1.data[8] == 1 && v47.var0)
        {
          v47.var1 = v47.var0;
          operator delete(v47.var0);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25914A158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, uint64_t a7, char a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *__pa, uint64_t a14, ULMapLabelDO *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::optional<ULScanningEventDO>::~optional(&a23);
  std::optional<ULLocalizationResult>::~optional(v24 - 216);

  _Unwind_Resume(a1);
}

void ULService::addLabelBetweenDates(void *a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ((a1[3] - 2) > 2)
  {
    shouldEnableServiceInLocation = 0;
  }

  else
  {
    shouldEnableServiceInLocation = ULService::shouldEnableServiceInLocation(a1, *a1[33]);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:shouldEnableServiceInLocation];
    v13 = [v7 contextLayer];
    *buf = 138413314;
    v20 = v12;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "ULService: addLabel: isLabelingAllowed: %@, label: %@ contextLayer: %@, startDate: %@ endDate: %@", buf, 0x34u);
  }

  if (shouldEnableServiceInLocation)
  {
    v17 = *(a1 + 1);
    v18 = 1;
    v15.var0 = 0;
    v16 = 0;
    ULLabelDO::create(v7, &v17, &v15, buf);
    (*(**a1 + 80))(*a1, buf, v8, v9);
    if (v32 == 1)
    {
      v31 = -1;
    }

    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_25914A47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35 == 1)
  {
    *(v38 + 112) = -1;
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULService::updateConfiguration(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    operator new();
  }

  v5 = [v3 predictionsUpdateType];
  v6 = [v3 deviceClass];
  *(a1 + 248) = v5;
  *(a1 + 256) = v6;

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25914A640(_Unwind_Exception *a1)
{
  operator delete(v3);

  _Unwind_Resume(a1);
}

uint64_t ULService::locationTypesBitsetFromVector(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*v1 >= 0x20uLL)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
    }

    result |= 1 << *v1++;
  }

  while (v1 != v2);
  return result;
}

BOOL ULService::requestMicroLocationLearning(ULService *this, const uuid *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 232) == 1)
  {
    (*(**this + 40))(*this, this + 8, a2, 31);
    v3 = 0;
  }

  else
  {
    v4 = *(this + 12);
    v3 = v4 < 2;
    if (v4 <= 1)
    {
      *(this + 216) = *a2;
      *(this + 232) = 1;
      v5 = *this;
      (*(**this + 96))();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_25914A8C8(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

_BYTE *ULService::onLearningCompleted(_BYTE *this)
{
  v4 = *MEMORY[0x277D85DE8];
  if (this[232] == 1)
  {
    v1 = this;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULService::ingestLocalizationResults();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (v1[232])
      {
        operator new();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((v1[232] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    this = (*(**v1 + 40))(*v1, v1 + 8, v1 + 216, -1);
    if (v1[232] == 1)
    {
      v1[232] = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_25914AA90(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULService::onLocalizationStart(ULService *this, uuid a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULService::ingestLocalizationResults();
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoService::onLocalizationStart send event to client}", &__p, 0x12u);
  }

  v4 = *this;
  operator new();
}

void sub_25914AC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ULService::onOdometryUpdate(ULService *this, ULOdometryStatus *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ULOdometryStatus *)v3 deltaPositionX];
  v6 = [v5 stringValue];
  v7 = [(ULOdometryStatus *)v3 deltaPositionY];
  v8 = [v7 stringValue];
  v9 = [(ULOdometryStatus *)v3 deltaPositionZ];
  v10 = [v9 stringValue];
  v11 = [v4 stringWithFormat:@"%@, %@, %@", v6, v8, v10];
  std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);

  (*(**this + 64))(*this, this + 8, 2, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25914AD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::ForceLowLatency>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULForceLowLatency"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULService::requiresLowLatencyLocalization(ULService *this)
{
  if (ULService::requiresLocalization(this) && (*(this + 31) == 2 || (ULSettings::get<ULSettings::ForceLowLatency>() & 1) != 0))
  {
    return 1;
  }

  result = *(this + 13);
  if (result)
  {

    return ULModelAndStates::requiresBlueAtlasLocalizationScanType(result);
  }

  return result;
}

ULModelAndStates *ULService::requiresBlueAtlasLocalizationScanType(ULService *this)
{
  result = *(this + 13);
  if (result)
  {
    return ULModelAndStates::requiresBlueAtlasLocalizationScanType(result);
  }

  return result;
}

uint64_t ULService::requiresAcceleratedRecording(ULService *this)
{
  result = ULService::shouldEnableServiceInLocation(this, **(this + 33));
  if (result)
  {
    v3 = *(this + 13);
    if (!v3)
    {
      return 1;
    }

    result = ULModelAndStates::requiresAcceleratedRecording(v3);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 13);
    if (v4)
    {
      return ULModelAndStates::requiresBlueAtlasLocalizationScanType(v4) ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ULService::requiresHomeSlamBootstrapping(ULService *this)
{
  result = ULService::shouldEnableServiceInLocation(this, **(this + 33));
  if (result)
  {
    result = *(this + 13);
    if (result)
    {
      if (ULModelAndStates::acceptsIOLocalization(result))
      {
        return 0;
      }

      else
      {
        v3 = *(this + 13);
        if (v3)
        {
          return ULModelAndStates::requiresBlueAtlasLocalizationScanType(v3) ^ 1;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL ULService::registerToContextLayers(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 16);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if ((ULModelLoader::hasReadAccessToContextLayer(*(a1 + 8), *(a1 + 16), v4[2]) & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULService::ingestLocalizationResults();
      }

      v5 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 63) < 0)
        {
          v6 = *(a1 + 40);
        }

        operator new();
      }

      goto LABEL_13;
    }
  }

  if (a1 + 320 != a2)
  {
    *(a1 + 352) = *(a2 + 32);
    std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<ULContextLayerEnum,void *> *>>((a1 + 320), *(a2 + 16), 0);
  }

LABEL_13:
  result = v4 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25914B1D4(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_110()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void std::vector<ULMapItem * {__strong}>::__vdeallocate(void **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
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

uint64_t std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULMapLabelDO const&>(uint64_t a1, const ULMapLabelDO *a2)
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
  ULMapLabelDO::ULMapLabelDO((232 * v2), a2);
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

void sub_25914B3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ULMapItem * {__strong}>::__assign_with_size[abi:ne200100]<ULMapItem * {__strong}*,ULMapItem * {__strong}*>(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    std::vector<ULMapItem * {__strong}>::__vdeallocate(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<NSManagedObjectID * {__strong}>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULMapItem * {__strong}*,ULMapItem * {__strong}*,ULMapItem * {__strong}*>(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        v18 -= 8;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:ne200100]<ULMapItem * {__strong}*,ULMapItem * {__strong}*,ULMapItem * {__strong}*>(&v20, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        v13 += 8;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void **std::__copy_impl::operator()[abi:ne200100]<ULMapItem * {__strong}*,ULMapItem * {__strong}*,ULMapItem * {__strong}*>(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_5()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

uint64_t std::deque<ULService::OutstandingRequest>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x78)
  {
    a2 = 1;
  }

  if (v2 < 0xF0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 120;
  }

  return v4 ^ 1u;
}

uint64_t *std::__tree<ULRecordingCompletionMetaInformation::RecordingError>::__emplace_unique_key_args<ULRecordingCompletionMetaInformation::RecordingError,ULRecordingCompletionMetaInformation::RecordingError>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

void *std::deque<ULService::OutstandingRequest>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x78;
  v3 = v1 - 120;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<ULService::OutstandingRequest *>::emplace_back<ULService::OutstandingRequest *&>(a1, &v10);
}

void sub_25914B890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<ULService::OutstandingRequest *>::emplace_back<ULService::OutstandingRequest *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(result, v11);
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

const void **std::__split_buffer<ULService::OutstandingRequest *>::emplace_front<ULService::OutstandingRequest *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<ULService::OutstandingRequest *>::emplace_back<ULService::OutstandingRequest *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(result[4], v11);
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

const void **std::__split_buffer<ULService::OutstandingRequest *>::emplace_front<ULService::OutstandingRequest *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<ULContextLayerEnum,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__emplace_multi<ULContextLayerEnum const&>();
  }
}

void sub_25914BDDC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void ULServiceManagementHelper::queryServices(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v41 = v6;
  if (v6)
  {
    [v6 fetchAllServicesForClientId:a1 andUserId:a2];
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  v36 = ULSettings::get<ULSettings::ClientIdLocationdToMilodMapping>();
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v7, v36}];
  v38 = ___ZN25ULServiceManagementHelper13queryServicesERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_P14ULServiceStore_block_invoke(v8, v37, v8);

  if ([v38 count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v38;
    v9 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v9)
    {
      v10 = *v45;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v44 + 1) + 8 * i) UTF8String];
          v13 = strlen(v12);
          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v14 = v13;
          if (v13 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v43) = v13;
          if (v13)
          {
            memmove(&__dst, v12, v13);
          }

          *(&__dst + v14) = 0;
          if (v41)
          {
            [v41 fetchAllServicesForClientId:&__dst andUserId:a2];
          }

          else
          {
            memset(buf, 0, 24);
          }

          if (SHIBYTE(v43) < 0)
          {
            operator delete(__dst);
          }

          if (*buf != *&buf[8])
          {
            std::vector<ULServiceDO>::reserve(&v48, 0x2E8BA2E8BA2E8BA3 * ((*&buf[8] - *buf) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((v49 - v48) >> 3));
            std::vector<ULServiceDO>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULServiceDO*>,std::__wrap_iter<ULServiceDO*>>(&v48, v49, *buf, *&buf[8], 0x2E8BA2E8BA2E8BA3 * ((*&buf[8] - *buf) >> 3));
          }

          __dst = buf;
          std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&__dst);
        }

        v9 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v9);
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManagementHelper::queryServices();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v16;
    *&buf[28] = 2050;
    *&buf[30] = 0x2E8BA2E8BA2E8BA3 * ((v49 - v48) >> 3);
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager Client queried services, ClientId:%{public, location:escape_only}s, NumServicesFound:%{public}llu}", buf, 0x26u);
  }

  v17 = v48;
  v18 = v49;
  if (v48 != v49)
  {
    do
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManagementHelper::queryServices();
      }

      v19 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          v20 = *a1;
        }

        v21 = *v17;
        operator new();
      }

      v17 += 88;
    }

    while (v17 != v18);
    v17 = v48;
    v18 = v49;
  }

  if (v17 != v18)
  {
    do
    {
      v22 = v17 + 8;
      ULService::ServiceDescriptor::ServiceDescriptor(buf, (v17 + 8), *v17, *(v17 + 56));
      v23 = a4[1];
      v24 = a4[2];
      if (v23 >= v24)
      {
        v27 = *a4;
        v28 = v23 - *a4;
        v29 = v28 >> 5;
        v30 = (v28 >> 5) + 1;
        if (v30 >> 59)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v31 = v24 - v27;
        if (v31 >> 4 > v30)
        {
          v30 = v31 >> 4;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFE0)
        {
          v30 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(a4, v30);
        }

        v32 = (32 * v29);
        v33 = *&buf[16];
        *v32 = *buf;
        v32[1] = v33;
        v26 = 32 * v29 + 32;
        memcpy(0, v27, v28);
        v34 = *a4;
        *a4 = 0;
        a4[1] = v26;
        a4[2] = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        v25 = *&buf[16];
        *v23 = *buf;
        *(v23 + 1) = v25;
        v26 = (v23 + 32);
      }

      a4[1] = v26;
      v17 = v22 + 80;
    }

    while (v22 + 80 != v18);
  }

  *buf = &v48;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](buf);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_25914C85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  __p = &a33;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

id ULSettings::get<ULSettings::ClientIdLocationdToMilodMapping>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClientIdLocationdToMilodMapping"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_286A733B8;
  }

  return v4;
}

id ___ZN25ULServiceManagementHelper13queryServicesERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_P14ULServiceStore_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v7 objectForKey:{v11, v16}];
        v13 = [v12 isEqualToString:v5];

        if (v13)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t ULServiceManagementHelper::createService(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = a2;
  v52 = a3;
  v38 = a6;
  v12 = a8;
  v13 = (*(*a7 + 56))(a7);
  if (v13)
  {
    if (v12)
    {
      v13 = [v12 fetchAllServicesForClientId:a1 andUserId:a5];
      v14 = v35;
      v15 = v36;
      if (v35 != v36)
      {
        v16 = 0;
        while (1)
        {
          v34[0] = ULService::uint64ToLocationTypesBitset(v14[7]);
          v13 = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(&v38, 0, &v38, 0x20u, v34);
          if (v14[1] == v51 && v14[2] == v52)
          {
            break;
          }

          v18 = *v14;
          v14 += 11;
          if (v18 == a4)
          {
            v19 = v13;
          }

          else
          {
            v19 = 0;
          }

          v16 += v19;
          if (v14 == v15)
          {
            goto LABEL_24;
          }
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManagementHelper::queryServices();
        }

        v31 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        v22 = 5;
        goto LABEL_51;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
    }

LABEL_24:
    if (ULServiceManagementHelper::isNewServiceAllowed(v13, a4, v16))
    {
      v23 = v51;
      v24 = v52;
      v25 = cl::chrono::CFAbsoluteTimeClock::now();
      ULServiceDO::ULServiceDO(buf, v23, v24, a4, a1, v38, a5, v25);
      memset(v34, 0, sizeof(v34));
      std::vector<ULServiceDO>::__init_with_size[abi:ne200100]<ULServiceDO const*,ULServiceDO const*>(v34, buf, &v51, 1uLL);
      [v12 insertDataObjects:v34];
      v39 = v34;
      std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v39);
      if (v50 < 0)
      {
        operator delete(__p);
      }

      if (v48 < 0)
      {
        operator delete(*&v46[2]);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManagementHelper::queryServices();
      }

      v26 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) < 0)
        {
          v27 = *a1;
        }

        if (*(a5 + 23) < 0)
        {
          v28 = *a5;
        }

        operator new();
      }

      v22 = -1;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManagementHelper::queryServices();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) >= 0)
        {
          v30 = a1;
        }

        else
        {
          v30 = *a1;
        }

        *buf = 68289794;
        *&buf[4] = 0;
        v41 = 2082;
        v42 = "";
        v43 = 2082;
        v44 = v30;
        v45 = 2050;
        *v46 = a4;
        *&v46[8] = 2050;
        v47 = v16;
        _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MiLoServiceManager Client tried to create service, failed since not allowed, ClientId:%{public, location:escape_only}s, ServiceType:%{public}llu, NumIdenticalServices:%{public}llu}", buf, 0x30u);
      }

      v22 = 21;
    }

LABEL_51:
    *buf = &v35;
    std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_52;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManagementHelper::createService();
  }

  v20 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2082;
    v44 = v21;
    v45 = 2050;
    *v46 = a4;
    _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MiLoServiceManager cannot create service since database is not available, ClientId:%{public, location:escape_only}s, ServiceType:%{public}llu}", buf, 0x26u);
  }

  v22 = 22;
LABEL_52:

  v32 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_25914D10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ULServiceDO *a17)
{
  operator delete(v19);

  a17 = &a12;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&a17);

  _Unwind_Resume(a1);
}

BOOL ULServiceManagementHelper::isNewServiceAllowed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v14 = +[ULDefaultsSingleton shared];
      v6 = [v14 defaultsDictionary];

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedMulticlassServicesPerClient"];
      v8 = [v6 objectForKey:v7];
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_26;
        }
      }

      goto LABEL_29;
    }

    if (a2 == 4)
    {
      v9 = +[ULDefaultsSingleton shared];
      v6 = [v9 defaultsDictionary];

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedSimilarityListServicesPerClient"];
      v8 = [v6 objectForKey:v7];
      if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v15 = [&unk_286A722A0 unsignedLongValue];
        goto LABEL_30;
      }

LABEL_26:
      v15 = [v8 unsignedLongValue];
LABEL_30:
      v16 = v15;

      v12 = v16 > a3;
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManagementHelper::createService();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 68290050;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2050;
        v25 = a2;
        v26 = 2050;
        v27 = v16;
        v28 = 2050;
        v29 = a3;
        v30 = 1026;
        v31 = v16 > a3;
        _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager::isNewServiceAllowed, ServiceType:%{public}lu, Allowed:%{public}lu, AlreadyCreated:%{public}lu, Verdict:%{public}hhd}", &v20, 0x36u);
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v13 = +[ULDefaultsSingleton shared];
      v6 = [v13 defaultsDictionary];

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedUnsupervisedServicesPerClient"];
      v8 = [v6 objectForKey:v7];
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_26;
        }
      }

      goto LABEL_29;
    }

    if (a2 == 2)
    {
      v5 = +[ULDefaultsSingleton shared];
      v6 = [v5 defaultsDictionary];

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedBinaryRoiServicesPerClient"];
      v8 = [v6 objectForKey:v7];
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_26;
        }
      }

LABEL_29:
      v15 = [&unk_286A72288 unsignedLongValue];
      goto LABEL_30;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManagementHelper::createService();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v20 = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = a2;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:unhandled serviceType, ServiceType:%{public}lu}", &v20, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManagementHelper::queryServices();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v20 = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = a2;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unhandled serviceType", "{msg%{public}.0s:unhandled serviceType, ServiceType:%{public}lu}", &v20, 0x1Cu);
  }

  v12 = 0;
LABEL_34:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

void ULServiceManagementHelper::deleteService(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v37 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    *__p = 0u;
    v35 = 0u;
    *v32 = 0u;
    v33 = 0u;
    goto LABEL_25;
  }

  [v9 fetchServiceByUUID:{a2, a3}];
  if ((BYTE8(v35) & 1) == 0)
  {
LABEL_25:
    v26 = 24;
LABEL_26:
    a5[1] = 0;
    a5[2] = 0;
    *a5 = v26;
    goto LABEL_38;
  }

  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[1];
  }

  v13 = BYTE7(v33);
  if (SBYTE7(v33) < 0)
  {
    v13 = v32[1];
  }

  if (v12 != v13 || (v11 >= 0 ? (v14 = a1) : (v14 = *a1), (SBYTE7(v33) & 0x80u) == 0 ? (v15 = v32) : (v15 = v32[0]), memcmp(v14, v15, v12)))
  {
    v16 = ULSettings::get<ULSettings::ClientIdLocationdToMilodMapping>();
    if ((BYTE8(v35) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if ((SBYTE7(v33) & 0x80u) == 0)
    {
      v17 = v32;
    }

    else
    {
      v17 = v32[0];
    }

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
    v19 = [v16 objectForKey:v18];

    if (!v19)
    {
      goto LABEL_31;
    }

    v20 = v19;
    v21 = [v19 UTF8String];
    v22 = strlen(v21);
    v23 = v22;
    v24 = *(a1 + 23);
    if (v24 < 0)
    {
      if (v22 != a1[1])
      {
LABEL_31:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManagementHelper::queryServices();
        }

        v27 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 23) < 0)
          {
            v28 = *a1;
          }

          operator new();
        }

        a5[1] = 0;
        a5[2] = 0;
        *a5 = 25;

        goto LABEL_38;
      }

      if (v22 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v25 = *a1;
    }

    else
    {
      v25 = a1;
      if (v23 != v24)
      {
        goto LABEL_31;
      }
    }

    if (memcmp(v25, v21, v23))
    {
      goto LABEL_31;
    }
  }

  if (![v10 deleteServiceForUUID:{a2, a3}])
  {
    v26 = 25;
    goto LABEL_26;
  }

  if ((BYTE8(v35) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v30 = *(&v33 + 1);
  *a5 = -1;
  a5[1] = v31;
  a5[2] = v30;
LABEL_38:
  if (BYTE8(v35) == 1)
  {
    if (SBYTE7(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(v32[0]);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_25914DA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULServiceDO>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULServiceDO*>,std::__wrap_iter<ULServiceDO*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x2E8BA2E8BA2E8BA3 * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 88 * a5;
        std::vector<ULServiceDO>::__move_range(a1, a2, a1[1], a2 + 88 * a5);
        v17 = v18 + a3;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*,ULServiceDO*,ULServiceDO*>(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ULServiceDO>::__move_range(a1, v5, v10, v5 + 88 * a5);
        v17 = v16 + a3;
      }

      std::__copy_impl::operator()[abi:ne200100]<ULServiceDO *,ULServiceDO *,ULServiceDO *>(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x2E8BA2E8BA2E8BA3 * ((v10 - *a1) >> 3);
    if (v12 > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceDO>>(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<ULServiceDO>::__construct_at_end_with_size<std::__wrap_iter<ULServiceDO*>>(&v20, a3, a5);
    v5 = std::vector<ULServiceDO>::__swap_out_circular_buffer(a1, &v20, v5);
    std::__split_buffer<ULServiceDO>::~__split_buffer(&v20);
  }

  return v5;
}

uint64_t std::vector<ULServiceDO>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v10 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 16) = v10;
      v11 = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 32) = v11;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = 0;
      *(v8 + 56) = *(v9 + 56);
      v12 = *(v9 + 64);
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 64) = v12;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 64) = 0;
      v9 += 88;
      v8 += 88;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULServiceDO *,ULServiceDO *,ULServiceDO *>(&v14, a2, v7, v6);
}

void std::__split_buffer<ULServiceDO>::__construct_at_end_with_size<std::__wrap_iter<ULServiceDO*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 88 * a3;
    v8 = 88 * a3;
    do
    {
      v9 = a2 + v6;
      v10 = v4 + v6;
      v11 = *(a2 + v6 + 16);
      *v10 = *(a2 + v6);
      *(v10 + 16) = v11;
      if (*(a2 + v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v10 + 32), *(v9 + 32), *(v9 + 40));
      }

      else
      {
        v12 = *(v9 + 32);
        *(v10 + 48) = *(v9 + 48);
        *(v10 + 32) = v12;
      }

      v13 = v4 + v6;
      *(v4 + v6 + 56) = *(v9 + 56);
      v14 = a2 + v6;
      if (*(v9 + 87) < 0)
      {
        std::string::__init_copy_ctor_external((v13 + 64), *(v14 + 64), *(v14 + 72));
      }

      else
      {
        v15 = *(v14 + 64);
        *(v13 + 80) = *(v14 + 80);
        *(v13 + 64) = v15;
      }

      v6 += 88;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *(a1 + 16) = v7;
}

uint64_t std::vector<ULServiceDO>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*>(a1, v7, a3, v9);
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

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO*,ULServiceDO*,ULServiceDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7 + 16);
      *v9 = *(a2 + v7);
      *(v9 + 16) = v10;
      if (*(a2 + v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v9 + 32), *(v8 + 32), *(v8 + 40));
      }

      else
      {
        v11 = *(v8 + 32);
        *(v9 + 48) = *(v8 + 48);
        *(v9 + 32) = v11;
      }

      v12 = a4 + v7;
      *(a4 + v7 + 56) = *(v8 + 56);
      v13 = a2 + v7;
      if (*(v8 + 87) < 0)
      {
        std::string::__init_copy_ctor_external((v12 + 64), *(v13 + 64), *(v13 + 72));
      }

      else
      {
        v14 = *(v13 + 64);
        *(v12 + 80) = *(v13 + 80);
        *(v12 + 64) = v14;
      }

      v7 += 88;
    }

    while (v8 + 88 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_25914E008(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 88;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULServiceDO,0>(v4);
      v4 -= 88;
      v5 += 88;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULServiceDO *,ULServiceDO *,ULServiceDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 88);
      *(v9 - 72) = *(a3 + v7 - 72);
      *(v9 - 88) = v10;
      v11 = (a4 + v7 - 56);
      if (*(a4 + v7 - 33) < 0)
      {
        operator delete(*v11);
      }

      v12 = *(v8 - 56);
      *(a4 + v7 - 40) = *(v8 - 40);
      *v11 = v12;
      *(v8 - 33) = 0;
      *(v8 - 56) = 0;
      *(v9 - 32) = *(v8 - 32);
      v13 = (v9 - 24);
      if (*(v9 - 1) < 0)
      {
        operator delete(*v13);
      }

      v14 = a3 + v7;
      v15 = *(a3 + v7 - 24);
      *(v9 - 8) = *(a3 + v7 - 8);
      *v13 = v15;
      *(v14 - 1) = 0;
      *(v14 - 24) = 0;
      v7 -= 88;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ULServiceDO *,ULServiceDO *,ULServiceDO *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    std::string::operator=((a4 + 32), (v5 + 32));
    *(a4 + 56) = *(v5 + 56);
    std::string::operator=((a4 + 64), (v5 + 64));
    a4 += 88;
    v5 += 88;
  }

  while (v5 != v6);
  return v6;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_111()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULServiceDO::~ULServiceDO(ULServiceDO *this)
{
  if (this[3].var1.data[7] < 0)
  {
    operator delete(*&this[2].var1.data[8]);
  }

  if (SHIBYTE(this[2].var0) < 0)
  {
    operator delete(*this[1].var1.data);
  }
}

uint64_t std::vector<ULServiceDO>::__init_with_size[abi:ne200100]<ULServiceDO const*,ULServiceDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULServiceDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25914E2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULServiceDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULServiceDO>,ULServiceDO const*,ULServiceDO const*,ULServiceDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7 + 16);
      *v9 = *(a2 + v7);
      *(v9 + 16) = v10;
      if (*(a2 + v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v9 + 32), *(v8 + 32), *(v8 + 40));
      }

      else
      {
        v11 = *(v8 + 32);
        *(v9 + 48) = *(v8 + 48);
        *(v9 + 32) = v11;
      }

      v12 = a4 + v7;
      *(a4 + v7 + 56) = *(v8 + 56);
      v13 = a2 + v7;
      if (*(v8 + 87) < 0)
      {
        std::string::__init_copy_ctor_external((v12 + 64), *(v13 + 64), *(v13 + 72));
      }

      else
      {
        v14 = *(v13 + 64);
        *(v12 + 80) = *(v13 + 80);
        *(v12 + 64) = v14;
      }

      v7 += 88;
    }

    while (v8 + 88 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_25914E3E8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 88;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<ULServiceDO,0>(v4);
      v4 -= 88;
      v5 += 88;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,32ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ULServiceManager::ULServiceManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *a1 = &unk_286A5BCC0;
  *(a1 + 8) = &unk_286A5BE98;
  *(a1 + 16) = &unk_286A5BF70;
  *(a1 + 24) = &unk_286A5BFD8;
  *(a1 + 32) = &unk_286A5C000;
  *(a1 + 40) = &unk_286A5C038;
  *(a1 + 48) = &unk_286A5C070;
  *(a1 + 56) = &unk_286A5C098;
  *(a1 + 64) = &unk_286A5C0C0;
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometrySource"];
  v12 = a2;
  v13 = [v10 objectForKey:v11];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v13 unsignedIntValue];
  }

  else
  {
    v14 = [&unk_286A72330 unsignedIntValue];
  }

  v15 = v14;

  *(a1 + 72) = v15;
  v16 = +[ULDefaultsSingleton shared];
  v17 = [v16 defaultsDictionary];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULReferenceOdometrySource"];
  v19 = [v17 objectForKey:v18];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [v19 unsignedIntValue];
  }

  else
  {
    v20 = [&unk_286A72348 unsignedIntValue];
  }

  v21 = v20;

  *(a1 + 80) = v21;
  v22 = *a5;
  *a5 = 0;
  *(a1 + 88) = v22;
  *(a1 + 96) = 0u;
  *(a1 + 111) = 0;
  *(a1 + 115) = 1;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = a1 + 152;
  *(a1 + 160) = a1 + 152;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = a3;
  *(a1 + 208) = a4;
  *(a1 + 216) = 30;
  *(a1 + 224) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 240) = v12;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 632) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 852) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  v26 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v26);
  *(a1 + 745) = boost::uuids::random_generator_pure::operator()(&v26);
  *(a1 + 753) = v23;
  boost::uuids::detail::random_provider_base::destroy(&v26);
  return a1;
}

void ULScanParameters::~ULScanParameters(id *this)
{
  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void ULServiceManager::setDependencies(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v44 = a2;
  v43 = a4;
  v36 = a5;
  v42 = a5;
  v41 = a7;
  v20 = a8;
  v21 = a9;
  v38 = a10;
  v40 = a11;
  v39 = a12;
  v22 = a13;
  objc_storeStrong((a1 + 640), a2);
  v23 = *a3;
  *a3 = 0;
  v24 = *(a1 + 96);
  *(a1 + 96) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  objc_storeStrong((a1 + 648), a4);
  objc_storeStrong((a1 + 656), v36);
  v25 = *a6;
  *a6 = 0;
  v26 = *(a1 + 104);
  *(a1 + 104) = v25;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  objc_storeStrong((a1 + 712), a7);
  objc_storeStrong((a1 + 792), a13);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = ___ZN16ULServiceManager15setDependenciesEP15ULBLEKeyManagerNSt3__110unique_ptrI22ULScanServiceInterfaceNS2_14default_deleteIS4_EEEEP18ULOdometryProviderS9_NS3_I36ULCustomLoiRecordingMonitorInterfaceNS5_ISA_EEEEP15ULDeviceManagerPU28objcproto17OS_dispatch_queue8NSObjectP25ULVisualMappingKitManagerP19ULPeripheralControlP40ULVisualMappingKitManagerDelegateWrapperP34ULPeripheralControlDelegateWrapperPU35objcproto24ULAudioOdometryProviding11objc_object_block_invoke;
  v46[3] = &__block_descriptor_40_e8_v16__0Q8l;
  v46[4] = a1;
  [*(a1 + 712) setDeviceConnectedHandler:v46];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = ___ZN16ULServiceManager15setDependenciesEP15ULBLEKeyManagerNSt3__110unique_ptrI22ULScanServiceInterfaceNS2_14default_deleteIS4_EEEEP18ULOdometryProviderS9_NS3_I36ULCustomLoiRecordingMonitorInterfaceNS5_ISA_EEEEP15ULDeviceManagerPU28objcproto17OS_dispatch_queue8NSObjectP25ULVisualMappingKitManagerP19ULPeripheralControlP40ULVisualMappingKitManagerDelegateWrapperP34ULPeripheralControlDelegateWrapperPU35objcproto24ULAudioOdometryProviding11objc_object_block_invoke_2;
  v45[3] = &__block_descriptor_40_e8_v16__0Q8l;
  v45[4] = a1;
  [*(a1 + 712) setDeviceDisconnectedHandler:v45];
  v27 = *(a1 + 728);
  *(a1 + 728) = v20;
  v28 = v20;

  v29 = *(a1 + 768);
  *(a1 + 768) = v21;
  v30 = v21;

  v31 = *(a1 + 776);
  *(a1 + 776) = v38;
  v32 = v38;

  v33 = *(a1 + 784);
  *(a1 + 784) = v40;
  v34 = v40;

  v35 = *(a1 + 800);
  *(a1 + 800) = v39;
}

uint64_t ___ZN16ULServiceManager15setDependenciesEP15ULBLEKeyManagerNSt3__110unique_ptrI22ULScanServiceInterfaceNS2_14default_deleteIS4_EEEEP18ULOdometryProviderS9_NS3_I36ULCustomLoiRecordingMonitorInterfaceNS5_ISA_EEEEP15ULDeviceManagerPU28objcproto17OS_dispatch_queue8NSObjectP25ULVisualMappingKitManagerP19ULPeripheralControlP40ULVisualMappingKitManagerDelegateWrapperP34ULPeripheralControlDelegateWrapperPU35objcproto24ULAudioOdometryProviding11objc_object_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 32);
  v3 = v2[16];
  for (i = v2[17]; v3 != i; v3 += 2)
  {
    result = *v3;
    if (*(*v3 + 520) == 1)
    {
      ULModelAndStates::initState(result, a2);
      result = (*(*v2[11] + 16))(v2[11], v2 + 16, a2);
    }
  }

  return result;
}

uint64_t *___ZN16ULServiceManager15setDependenciesEP15ULBLEKeyManagerNSt3__110unique_ptrI22ULScanServiceInterfaceNS2_14default_deleteIS4_EEEEP18ULOdometryProviderS9_NS3_I36ULCustomLoiRecordingMonitorInterfaceNS5_ISA_EEEEP15ULDeviceManagerPU28objcproto17OS_dispatch_queue8NSObjectP25ULVisualMappingKitManagerP19ULPeripheralControlP40ULVisualMappingKitManagerDelegateWrapperP34ULPeripheralControlDelegateWrapperPU35objcproto24ULAudioOdometryProviding11objc_object_block_invoke_2(uint64_t *result, unint64_t a2)
{
  v5 = a2;
  v2 = result[4];
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  while (v3 != v4)
  {
    if (*(*v3 + 520) == 1)
    {
      result = std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__erase_unique<ULDeviceClass>((*v3 + 608), &v5);
    }

    v3 += 16;
  }

  return result;
}

void ULServiceManager::queryServices(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v7 = (*(**(a1 + 200) + 104))(*(a1 + 200));
  ULServiceManagementHelper::queryServices(a2, a3, v7, a4);
}

void ULServiceManager::createService(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, __n128 *a8@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v21.n128_u64[0] = a3;
  v21.n128_u64[1] = a4;
  v15 = ULService::locationTypesBitsetFromVector(a6);
  v16 = *(a1 + 208);
  v17 = (*(**(a1 + 200) + 104))(*(a1 + 200));
  Service = ULServiceManagementHelper::createService(a2, a3, a4, a5, a7, v15, v16, v17);

  if (Service == -1)
  {
    ULService::ServiceDescriptor::ServiceDescriptor(a8, &v21, a5, v15);
    v19 = 1;
  }

  else
  {
    v19 = 0;
    a8->n128_u8[0] = 0;
  }

  a8[2].n128_u8[0] = v19;
  a8[2].n128_u64[1] = Service;
  v20 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::deleteService(uuid a1@<0:X2, 8:X3>, ULServiceManager *a2@<X0>, const void **a3@<X1>, __n128 *a4@<X8>)
{
  v4 = *&a1.data[8];
  v5 = *a1.data;
  v17 = *MEMORY[0x277D85DE8];
  v16 = a1;
  ULServiceManager::loadedServiceByUuid(a2, a1);
  if (v9)
  {
    a4->n128_u8[0] = 0;
    a4[2].n128_u8[0] = 0;
    a4[2].n128_u64[1] = 23;
  }

  else
  {
    v10 = (*(**(a2 + 25) + 104))(*(a2 + 25));
    ULServiceManagementHelper::deleteService(a3, v5, v4, v10, v14);

    v11 = v14[0];
    if (v14[0] == -1)
    {
      ULService::ServiceDescriptor::ServiceDescriptor(a4, &v16, v14[1], v15);
      v12 = 1;
    }

    else
    {
      v12 = 0;
      a4->n128_u8[0] = 0;
    }

    a4[2].n128_u8[0] = v12;
    a4[2].n128_u64[1] = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void *ULServiceManager::loadedServiceByUuid(ULServiceManager *this, uuid a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = this + 152;
  v3 = *(this + 20);
  if (v3 == this + 152)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = ULService::uuid((v3 + 16));
      if (v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = 1;
      }

      if (!(v6 ^ *a2.data | v7 ^ *&a2.data[8]))
      {
        v5 = v3 + 16;
        v4 = v8;
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ULServiceManager::runWithConfiguration(ULServiceManager *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v22 = *MEMORY[0x277D85DE8];
  *v21.data = a3;
  *&v21.data[8] = a4;
  *v20.data = a6;
  *&v20.data[8] = a7;
  v19 = a8;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      v11 = *a2;
    }

    operator new();
  }

  ULServiceManager::loadedServiceByUuid(a1, v21);
  if ((v12 & 1) == 0)
  {
    +[ULEventLog shared];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  ULServiceManager::loadedServiceByConnectionToken(a1, v20);
  if (v13)
  {
    v14 = ULServiceManager::loadConfiguration(a1, &v20, v19);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) < 0)
      {
        v16 = *a2;
      }

      operator new();
    }

    v14 = 18;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_25914FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  ULService::~ULService(&a34);
  std::optional<ULServiceDO>::~optional(v35 - 232);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::addToRequestsAwaitingDb(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v52 = *MEMORY[0x277D85DE8];
  *&v51 = a3;
  *(&v51 + 1) = a4;
  *&v50 = a6;
  *(&v50 + 1) = a7;
  v44 = a8;
  v13 = a1[42];
  v12 = a1[43];
  if (v13 != v12)
  {
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    if (v14 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v17 = *(a9 + 23);
    if (v17 >= 0)
    {
      v18 = *(a9 + 23);
    }

    else
    {
      v18 = *(a9 + 8);
    }

    if (v17 >= 0)
    {
      v19 = a9;
    }

    else
    {
      v19 = *a9;
    }

    while (1)
    {
      v20 = *(v13 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v13 + 8);
      }

      if (v20 == v15)
      {
        v22 = v21 >= 0 ? v13 : *v13;
        if (!memcmp(v22, v16, v15) && *(v13 + 24) == v51 && *(v13 + 32) == *(&v51 + 1) && *(v13 + 57) == v50 && *(v13 + 65) == *(&v50 + 1))
        {
          v25 = *(v13 + 111);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(v13 + 96);
          }

          if (v25 == v18)
          {
            v27 = v26 >= 0 ? (v13 + 88) : *(v13 + 88);
            if (!memcmp(v27, v19, v18))
            {
              break;
            }
          }
        }
      }

      v13 += 112;
      if (v13 == v12)
      {
        goto LABEL_39;
      }
    }
  }

  if (v13 == v12)
  {
LABEL_39:
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    *&buf[24] = v51;
    v46 = *a5;
    v47[0] = *(a5 + 16);
    *&v47[1] = v50;
    v28 = v44;
    v48 = v44;
    if (*(a9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a9, *(a9 + 8));
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *a9;
      __p.__r_.__value_.__r.__words[2] = *(a9 + 16);
    }

    v31 = a1[43];
    if (v31 >= a1[44])
    {
      v38 = std::vector<ULServiceManagerConnectionRequestParams>::__emplace_back_slow_path<ULServiceManagerConnectionRequestParams>(a1 + 42, buf);
      v39 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a1[43] = v38;
      if (v39 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v32 = *buf;
      *(v31 + 16) = *&buf[16];
      *v31 = v32;
      *buf = 0;
      *&buf[8] = 0;
      v33 = v46;
      v34 = *v47;
      v35 = v47[16];
      *(v31 + 24) = *&buf[24];
      *(v31 + 72) = v35;
      *(v31 + 56) = v34;
      *(v31 + 40) = v33;
      v36 = v48;
      *&buf[16] = 0;
      v48 = 0;
      *(v31 + 80) = v36;
      v37 = *&__p.__r_.__value_.__l.__data_;
      *(v31 + 104) = *(&__p.__r_.__value_.__l + 2);
      *(v31 + 88) = v37;
      memset(&__p, 0, sizeof(__p));
      a1[43] = v31 + 112;
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v40 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 0x6DB6DB6DB6DB6DB7 * ((a1[43] - a1[42]) >> 4);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v41;
      _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager adding a pending connection requests, NumRequests cached:%{public}lu}", buf, 0x1Cu);
    }

    v30 = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v28 = v44;
    v29 = logObject_MicroLocation_Default;
    v30 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager adding a pending connection requests failed, request already cached}", buf, 0x12u);
      v30 = 0;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_25915032C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ULServiceManager::migrateLegacyServiceIdToServiceId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  if (*(a4 + 16) == 1 && (v13 != *a4 || v14 != *(a4 + 8)))
  {
    v8 = (*(**(a1 + 200) + 104))(*(a1 + 200));
    v9 = v8;
    if ((*(a4 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v10 = [v8 updateAllServicesWithMatchingServiceUUID:*a4 withNewServiceUUID:{*(a4 + 8), a2, a3}];

    if ((v10 & 1) == 0)
    {
      ULServiceManager::migrateLegacyServiceIdToServiceId();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 16))
      {
        operator new();
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_259150580(_Unwind_Exception *a1)
{
  v4 = v2;
  operator delete(v4);
  operator delete(v3);

  _Unwind_Resume(a1);
}

void ULServiceManager::migrateLegacyFocusServiceIfNecessary(ULServiceManager *this, uuid a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a2;
  operator new();
}

void ULServiceManager::findOrCreateServiceEntryWithServiceId(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v34[8] = *MEMORY[0x277D85DE8];
  v34[6] = a2;
  v34[7] = a3;
  v16 = (*(*a1[25] + 104))(a1[25]);
  v17 = v16;
  if (v16)
  {
    [v16 fetchServiceByUUID:{a2, a3}];
  }

  else
  {
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  v18 = *(a8 + 88);
  if (a7 && (*(a8 + 88) & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v33 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum const*,ULLocationTypeEnum const*>(&v24, &v33, v34, 1uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    ((*a1)[14])(v34, a1, a4, a2, a3, a5, &v24, __p);
    if (SBYTE7(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    if (v34[5] != -1)
    {
      ULServiceManager::findOrCreateServiceEntryWithServiceId(__p);

      abort_report_np();
      __break(1u);
      return;
    }

    v19 = (*(*a1[25] + 104))(a1[25]);
    v20 = v19;
    if (v19)
    {
      [v19 fetchServiceByUUID:{a2, a3}];
    }

    else
    {
      *v31 = 0u;
      v32 = 0u;
      *v29 = 0u;
      v30 = 0u;
      *__p = 0u;
      v28 = 0u;
    }

    std::__optional_storage_base<ULServiceDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULServiceDO,false>>(a8, __p);
    if (BYTE8(v32) == 1)
    {
      if (SBYTE7(v32) < 0)
      {
        operator delete(v31[0]);
      }

      if (SBYTE7(v30) < 0)
      {
        operator delete(v29[0]);
      }
    }

    v18 = *(a8 + 88);
  }

  if ((v18 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v21 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a4 + 23) < 0)
      {
        v22 = *a4;
      }

      operator new();
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_259150B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  operator delete(v22);

  std::optional<ULServiceDO>::~optional(v20);
  _Unwind_Resume(a1);
}

void ULServiceManager::migrateLegacyClientIdToClientIdIfNecessary(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a2 + 88) == 1)
  {
    v6 = (a2 + 32);
    v7 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v7 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v9 = *(a2 + 55);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 40);
    }

    if (size != v9 || (v7 >= 0 ? (v11 = a3) : (v11 = a3->__r_.__value_.__r.__words[0]), (v12 = v6->__r_.__value_.__r.__words[0], v10 >= 0) ? (v13 = (a2 + 32)) : (v13 = v6->__r_.__value_.__r.__words[0]), memcmp(v11, v13, size)))
    {
      v14 = +[ULDefaultsSingleton shared];
      v15 = [v14 defaultsDictionary];

      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULClientIdLocationdToMilodMapping"];
      v17 = [v15 objectForKey:v16];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v37 = v17;
      }

      else
      {
        v37 = &unk_286A733E0;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = a3->__r_.__value_.__r.__words[0];
      }

      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
      v20 = ___ZN16ULServiceManager42migrateLegacyClientIdToClientIdIfNecessaryERNSt3__18optionalI11ULServiceDOEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(v19, v37, v19);

      v36 = v20;
      if ([v20 count])
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v22)
        {
          v23 = *v42;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v42 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v41 + 1) + 8 * i);
              v26 = (*(**(a1 + 200) + 104))(*(a1 + 200));
              v27 = v25;
              std::string::basic_string[abi:ne200100]<0>(__p, [v25 UTF8String]);
              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v38, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
              }

              else
              {
                v38 = *a3;
              }

              v28 = [v26 updateAllServicesWithMatchingClientId:__p withNewClientId:&v38];
              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v38.__r_.__value_.__l.__data_);
              }

              if (v40 < 0)
              {
                operator delete(__p[0]);
              }

              if ((v28 & 1) == 0)
              {
                ULServiceManager::migrateLegacyClientIdToClientIdIfNecessary();
                abort_report_np();
                __break(1u);
                return;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v29 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = a3->__r_.__value_.__r.__words[0];
          }

          if (*(a2 + 88))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if ((*(a2 + 88) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        std::string::operator=(v6, a3);
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v31 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v32 = a3->__r_.__value_.__r.__words[0];
          }

          if (*(a2 + 88))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v33 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v33))
        {
          if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = a3->__r_.__value_.__r.__words[0];
          }

          if (*(a2 + 88))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2591512C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  operator delete(v26);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::isClientAllowedToConnect(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  result = 3;
  if (*a2 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        goto LABEL_30;
      }

      v14 = +[ULDefaultsSingleton shared];
      v11 = [v14 defaultsDictionary];

      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfConnectedSimilarityListServicesPerClient"];
      v13 = [v11 objectForKey:v12];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v17 = [&unk_286A72318 unsignedLongValue];
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    v16 = +[ULDefaultsSingleton shared];
    v11 = [v16 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfConnectedMulticlassServicesPerClient"];
    v13 = [v11 objectForKey:v12];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_30;
      }

      v10 = +[ULDefaultsSingleton shared];
      v11 = [v10 defaultsDictionary];

      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfConnectedBinaryRoiServicesPerClient"];
      v13 = [v11 objectForKey:v12];
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }
      }

      goto LABEL_20;
    }

    v15 = +[ULDefaultsSingleton shared];
    v11 = [v15 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfConnectedUnsupervisedServicesPerClient"];
    v13 = [v11 objectForKey:v12];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_17:
        v17 = [v13 unsignedLongValue];
        goto LABEL_21;
      }
    }
  }

LABEL_20:
  v17 = [&unk_286A722D0 unsignedLongValue];
LABEL_21:
  v18 = v17;

  if (v18 >= (a6 + 1))
  {
    result = 0;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) < 0)
      {
        v20 = *a3;
      }

      operator new();
    }

    result = 32;
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL ULServiceManager::registerServiceToContextLayers(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 contextLayers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [MEMORY[0x277D28788] contextLayerEnumFromStringType:*(*(&v12 + 1) + 8 * v7)];
        if (v11)
        {
          std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__emplace_unique_key_args<ULContextLayerEnum,ULContextLayerEnum const&>(v16, &v11);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = ULService::registerToContextLayers(a2, v16);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v16);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_2591519D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *ULServiceManager::loadedServiceByConnectionToken(ULServiceManager *this, uuid a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a2;
  ULServiceManagerBiDirectionalUuidMap::lookupByValue((this + 176), &v14, v12);
  if (v13 != 1 || (v3 = this + 152, v4 = *(this + 20), v4 == this + 152))
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = ULService::uuid((v4 + 16));
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (!(v7 ^ v12[0] | v8 ^ v12[1]))
      {
        v6 = v4 + 16;
        v5 = v9;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ULServiceManager::loadConfiguration(ULServiceManager *a1, uuid *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ULServiceManager::loadedServiceByConnectionToken(a1, *a2);
  if (v7)
  {
    v8 = v6;
    if (ULServiceManager::registerServiceToContextLayers(v6, v6, v5))
    {
      if ((*(**(a1 + 26) + 56))(*(a1 + 26)))
      {
        ULService::updateConfiguration(v8, v5);
        v9 = +[ULTransactionManager shared];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = ___ZN16ULServiceManager17loadConfigurationERKN5boost5uuids4uuidEPK15ULConfiguration_block_invoke;
        v16[3] = &__block_descriptor_48_e5_v8__0l;
        v16[4] = a1;
        v16[5] = v8;
        [v9 performUnderTransaction:@"com.apple.locationd.microlocation-service-loadConfiguration" block:v16];

        ULServiceManager::createAggregatedRequirements(a1);
        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "Requesting prediction for newly loaded service", buf, 2u);
        }

        v15 = 0;
        boost::uuids::detail::random_provider_base::random_provider_base(&v15);
        *buf = boost::uuids::random_generator_pure::operator()(&v15);
        *&buf[8] = v11;
        cl::chrono::CFAbsoluteTimeClock::now();
        ULService::predictionRequest(v8, buf);
        boost::uuids::detail::random_provider_base::destroy(&v15);
        v12 = -1;
      }

      else
      {
        v12 = 33;
      }
    }

    else
    {
      v12 = 42;
    }
  }

  else
  {
    v12 = 10;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_259151D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  boost::uuids::detail::random_provider_base::destroy(&a11);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::disconnect(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  *v38.data = a3;
  *&v38.data[8] = a4;
  ULServiceManagerBiDirectionalUuidMap::lookupByValue((a1 + 176), &v38, &v36);
  if (v37)
  {
    v35 = v36;
    v8 = ULServiceManager::loadedServiceByUuid(a1, v36);
    if (v9)
    {
      v10 = v8;
      Rois = ULHomeSlamModel::getRois(v8);
      v12 = *(Rois + 23);
      if (v12 >= 0)
      {
        v13 = *(Rois + 23);
      }

      else
      {
        v13 = Rois[1];
      }

      v14 = *(a2 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = a2[1];
      }

      if (v13 != v14)
      {
        goto LABEL_27;
      }

      if (v12 < 0)
      {
        Rois = *Rois;
      }

      v16 = *a2;
      v17 = v15 >= 0 ? a2 : *a2;
      if (memcmp(Rois, v17, v13))
      {
        goto LABEL_27;
      }

      AnchorsAppearanceMap = ULHomeSlamModel::getAnchorsAppearanceMap(v10);
      v19 = *(AnchorsAppearanceMap + 23);
      if (v19 >= 0)
      {
        v20 = *(AnchorsAppearanceMap + 23);
      }

      else
      {
        v20 = AnchorsAppearanceMap[1];
      }

      v21 = *(a5 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = a5[1];
      }

      if (v20 != v21)
      {
        goto LABEL_27;
      }

      if (v19 < 0)
      {
        AnchorsAppearanceMap = *AnchorsAppearanceMap;
      }

      v23 = *a5;
      v24 = v22 >= 0 ? a5 : *a5;
      if (memcmp(AnchorsAppearanceMap, v24, v20))
      {
LABEL_27:
        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v25 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          operator new();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v26 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v26))
        {
          operator new();
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManager::runWithConfiguration();
      }

      v27 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        LOWORD(v34) = 2082;
        *(&v34 + 2) = "";
        _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager::disconnect, releasing model and updating service time}", buf, 0x12u);
      }

      v34 = 0uLL;
      *buf = 30;
      ULServiceManager::enterLocationPerService(a1, v10, buf);
      +[ULEventLog shared];
      objc_claimAutoreleasedReturnValue();
      *buf = ULService::uuid(v10);
      *&v34 = v28;
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v30 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }
  }

  result = 27;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259152540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  operator delete(v20);

  _Unwind_Resume(a1);
}

void *ULServiceManagerBiDirectionalUuidMap::lookupByValue@<X0>(ULServiceManagerBiDirectionalUuidMap *this@<X0>, const uuid *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *this;
  result = (this + 8);
  v4 = v5;
  if (v5 == result)
  {
LABEL_12:
    v9 = 0;
    *a3 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *(v4 + 41) == *a2->data && *(v4 + 49) == *&a2->data[8];
      if (v6)
      {
        break;
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v6 = *v8 == v4;
          v4 = v8;
        }

        while (!v6);
      }

      v4 = v8;
      if (v8 == result)
      {
        goto LABEL_12;
      }
    }

    *a3 = *(v4 + 25);
    v9 = 1;
  }

  a3[16] = v9;
  return result;
}

void ULServiceManager::enterLocationPerService(ULServiceManager *a1, ULService *a2, ULDatabaseStoreInterface *a3)
{
  if (ULService::shouldEnableServiceInLocation(a2, a3->var0))
  {
    v6 = ULService::deviceClass(a2);
    if (v6 == 1)
    {
      ULServiceManager::processServiceAndLoadVMKModel(a1, a2, a3);
    }

    else if (!v6)
    {
      ULServiceManager::processServiceAndLoadModel(a1, a2, a3);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    memset(v7, 0, sizeof(v7));
    ULService::updateModel(a2, &v8, v7);
    v10 = v7;
    std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v10);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  ULServiceManager::cleanUnusedModels(a1);
  if (*(a1 + 17) == *(a1 + 16))
  {
    ULServiceManager::endSpecatatingTransaction(a1);
  }

  else
  {
    ULServiceManager::beginSpecatatingTransaction(a1);
  }
}

void sub_259152730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](va);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::updateServiceLastActiveTime(ULServiceManager *this, const ULService *a2)
{
  v3 = (*(**(this + 25) + 104))(*(this + 25));
  v4 = cl::chrono::CFAbsoluteTimeClock::now();
  v5 = ULService::uuid(a2);
  v7 = [v3 updateLastActiveTime:v5 forService:{v6, v4}];

  return v7;
}

uint64_t ULServiceManager::releaseServiceByUuid(ULServiceManager *this, uuid a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v3 = this + 152;
  v4 = *(this + 20);
  v12 = a2;
  if (v4 != (this + 152))
  {
    while (ULService::uuid((v4 + 2)) != *v12.data || v5 != *&v12.data[8])
    {
      v4 = v4[1];
      if (v4 == v3)
      {
        v4 = v3;
        break;
      }
    }
  }

  v8 = *v4;
  v7 = v4[1];
  *(v8 + 8) = v7;
  *v7 = v8;
  --*(this + 21);
  std::__list_imp<ULService>::__delete_node[abi:ne200100](v3, v4);
  result = ULServiceManagerBiDirectionalUuidMap::eraseByKey(this + 22, &v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void ULServiceManager::cleanUnusedModels(ULServiceManager *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  v4 = *(this + 17);
  v3 = this + 128;
  v5 = v4 - v2;
  if (v4 == v2)
  {
LABEL_7:
    v9 = *(this + 17);
  }

  else
  {
    v6 = (v2 + 16);
    while (1)
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        if (!*(v7 + 8))
        {
          break;
        }
      }

      v8 = v6 == v4;
      v6 += 2;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v10 = v6 - 2;
    if (v6 - 2 == v4 || v6 == v4)
    {
      v9 = *(this + 17);
    }

    else
    {
      do
      {
        v11 = v6[1];
        if (!v11 || *(v11 + 8))
        {
          v12 = *v6;
          *v6 = 0;
          v6[1] = 0;
          v13 = v10[1];
          *v10 = v12;
          v10[1] = v11;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v10 += 2;
        }

        v6 += 2;
      }

      while (v6 != v4);
      v9 = *(this + 17);
    }

    v4 = v10;
  }

  std::vector<std::shared_ptr<ULModelAndStates>>::erase(v3, v4, v9);
  v15 = *(this + 16);
  v14 = *(this + 17);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v16 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 68289538;
    v18[1] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = v5 >> 4;
    v23 = 2050;
    v24 = (v14 - v15) >> 4;
    _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager::cleaned models, NumModelsBefore:%{public}lu, NumModelsAfter:%{public}lu}", v18, 0x26u);
  }

  CLMicroLocationFingerprintPool::removeInactiveEntries((this + 248));
  v17 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::createAggregatedRequirements(ULServiceManager *this)
{
  v130 = *MEMORY[0x277D85DE8];
  v99 = 0;
  v98 = 0;
  __p = 0u;
  v101 = 0u;
  v102 = 0;
  v2 = this + 152;
  v3 = *(this + 20);
  if (v3 == this + 152)
  {
    v4 = 0;
  }

  else
  {
    do
    {
      v4 = ULService::requiresRecord((v3 + 16));
      if (v4)
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
    v3 = *(this + 20);
  }

  BYTE1(v98) = v4;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    do
    {
      v5 = ULService::requiresLocalization((v3 + 16));
      if (v5)
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
    v3 = *(this + 20);
  }

  LOBYTE(v98) = v5;
  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v6 = ULService::requiresBlueAtlasLocalizationScanType((v3 + 16));
      if (v6)
      {
        break;
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  BYTE4(v98) = v6;
  BYTE5(v98) = (*(**(this + 13) + 32))(*(this + 13));
  v7 = *(this + 20);
  if (v7 == v2)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v8 = ULService::requiresLowLatencyLocalization((v7 + 16));
      if (v8)
      {
        break;
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v2);
    v7 = *(this + 20);
  }

  BYTE2(v98) = v8;
  if (v7 == v2)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v9 = ULService::requiresAcceleratedRecording((v7 + 16));
      if (v9)
      {
        break;
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v2);
    v7 = *(this + 20);
  }

  BYTE3(v98) = v9;
  if (v7 == v2)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v10 = ULService::requiresHomeSlamBootstrapping((v7 + 16));
      if (v10)
      {
        break;
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v2);
  }

  HIBYTE(v98) = v10;
  p_superclass = ULRapportMonitor.superclass;
  v12 = +[ULDefaultsSingleton shared];
  v13 = [v12 defaultsDictionary];

  v14 = 0x277CCA000uLL;
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOffScreenScanEnabled"];
  v16 = [v13 objectForKey:v15];
  v17 = 0x277CCA000uLL;
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v16 BOOLValue];
  }

  else
  {
    v18 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v19 = v18;

  BYTE6(v98) = v19;
  v20 = (*(**(this + 25) + 160))(*(this + 25));
  v22 = *(this + 28);
  v21 = *(this + 29);
  ULLoiTypes::locationTypeToString(*(this + 27), v96);
  ULWifiHistogramLoader::loadWifiChannelHistogram(v20, v22, v21, v96, buf);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  __p = *buf;
  *&v101 = v87;
  v87 = 0;
  memset(buf, 0, sizeof(buf));
  if (v97 < 0)
  {
    operator delete(v96[0]);
  }

  v23 = +[ULDefaultsSingleton shared];
  v24 = [v23 defaultsDictionary];

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULForcePeriodicLocalizationTrigger"];
  v26 = [v24 objectForKey:v25];
  if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v27 = [v26 BOOLValue];
  }

  else
  {
    v27 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v28 = v27;

  v99 = v28;
  if (((BYTE1(v98) & 1) != 0 || v98 == 1) && (BYTE4(v98) & 1) == 0)
  {
    v29 = BYTE5(v98) ^ 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 & 1;
  if (*(this + 865) != v30)
  {
    *(this + 865) = v29 & 1;
    (*(*(*(this + 30) + 8) + 40))();
    ULServiceManager::requestBLEKeyMonitoring(this, v30);
  }

  v31 = [*(this + 80) sameAccountBleIdentities];
  v32 = [v31 copy];
  v33 = v102;
  v102 = v32;

  v34 = [*(this + 80) oobKeys];
  v35 = [v34 copy];
  v36 = *(&v101 + 1);
  *(&v101 + 1) = v35;

  v37 = (this + 808);
  if ((ULScanParameters::operator==(this + 808, &v98) & 1) == 0)
  {
    if (v98 != 1 || BYTE2(v98) != *(this + 810))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManager::runWithConfiguration();
      }

      v38 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v38, OS_LOG_TYPE_DEFAULT, "Reset cached localization scan event", buf, 2u);
      }

      std::__optional_destruct_base<ULScanningEventDO,false>::reset[abi:ne200100](this + 360);
    }

    (*(**(this + 12) + 16))(*(this + 12), &v98);
    *v37 = v98;
    *(this + 816) = v99;
    if (v37 != &v98)
    {
      std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(this + 103, __p, *(&__p + 1), (*(&__p + 1) - __p) >> 3);
    }

    objc_storeStrong(this + 106, *(&v101 + 1));
    objc_storeStrong(this + 107, v102);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v39 = *(&__p + 1);
    for (i = __p; i != v39; i += 2)
    {
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "channel: ", 9);
      v42 = MEMORY[0x259CA1DC0](v41, *i);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " count: ", 8);
      v44 = MEMORY[0x259CA1DC0](v43, i[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ", ", 2);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v17 = 0x277CCA000;
    v14 = 0x277CCA000;
    p_superclass = (ULRapportMonitor + 8);
    v45 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    v46 = *(this + 813);
    v47 = *(this + 814);
    v48 = *(this + 815);
    v82 = *(this + 811);
    v83 = *(this + 812);
    v80 = *(this + 808);
    v81 = *(this + 810);
    v79 = *(this + 809);
    if ((v94 & 0x10) != 0)
    {
      v78 = *(this + 813);
      v50 = v93;
      if (v93 < v90)
      {
        v93 = v90;
        v50 = v90;
      }

      locale = v89[4].__locale_;
    }

    else
    {
      if ((v94 & 8) == 0)
      {
        v49 = 0;
        v85 = 0;
LABEL_79:
        *(&__dst + v49) = 0;
        if (v85 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        v53 = [*(this + 107) count];
        v54 = [*(this + 106) count];
        v55 = *(this + 816);
        v103 = 68292098;
        v104 = 2082;
        v105 = "";
        v106 = 1026;
        v107 = v79;
        v108 = 1026;
        v109 = v80;
        v110 = 1026;
        v111 = v81;
        v112 = 1026;
        v113 = v82;
        v114 = 1026;
        v115 = v83;
        v116 = 1026;
        v117 = v46;
        v118 = 1026;
        v119 = v47;
        v120 = 1026;
        v121 = v48;
        v122 = 2082;
        v123 = p_dst;
        v124 = 2050;
        v125 = v53;
        v126 = 2050;
        v127 = v54;
        v128 = 1026;
        v129 = v55;
        _os_log_impl(&dword_258FE9000, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:scanning requirements updated, isActiveRecord:%{public}hhd, isActiveLocalize:%{public}hhd, isLowLatency:%{public}hhd, isBoostMode:%{public}hhd, isBlueAtlasLocalization:%{public}hhd, isBlueAtlasRecordings:%{public}hhd, isOffScreenStopMotionScanRequired:%{public}hhd, isInMotionScanRequired:%{public}hhd, wifiChannelHistogram:%{public, location:escape_only}s, sameAccountBleIdentitiesSize:%{public}lu, oobKeysSize:%{public}lu, isForcePeriodicLocalizationScan:%{public}hhd}", &v103, 0x66u);
        v17 = 0x277CCA000uLL;
        if (v85 < 0)
        {
          operator delete(__dst);
        }

        v14 = 0x277CCA000uLL;
        p_superclass = ULRapportMonitor.superclass;
LABEL_85:

        *buf = *MEMORY[0x277D82818];
        v56 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        v87 = v56;
        v88 = MEMORY[0x277D82878] + 16;
        if (v92 < 0)
        {
          operator delete(v91);
        }

        v88 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v89);
        std::iostream::~basic_iostream();
        MEMORY[0x259CA1EE0](&v95);
        goto LABEL_88;
      }

      v78 = *(this + 813);
      locale = v89[1].__locale_;
      v50 = v89[3].__locale_;
    }

    v49 = v50 - locale;
    if ((v50 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v49 >= 0x17)
    {
      operator new();
    }

    v85 = v50 - locale;
    if (v49)
    {
      memmove(&__dst, locale, v49);
    }

    v46 = v78;
    goto LABEL_79;
  }

LABEL_88:
  v57 = *(this + 20);
  if (v57 == v2)
  {
    v58 = 0;
  }

  else
  {
    do
    {
      v58 = ULService::requiresIO((v57 + 16));
      if (v58)
      {
        break;
      }

      v57 = *(v57 + 8);
    }

    while (v57 != v2);
  }

  v59 = [p_superclass + 269 shared];
  v60 = [v59 defaultsDictionary];

  v61 = [*(v14 + 3240) stringWithUTF8String:"ULOdometryTrackingEnabled"];
  v62 = [v60 objectForKey:v61];
  if (v62 && (v63 = *(v17 + 2992), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v64 = [v62 BOOLValue];
  }

  else
  {
    v64 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v65 = v64;

  if (v65 && *(this + 809) == 1 && *(this + 810) == 1 && (*(this + 812) & 1) == 0)
  {
    v66 = *(this + 813) ^ 1;
  }

  else
  {
    v66 = 0;
  }

  v67 = v58 | v66;
  v68 = v67 & 1;
  if (*(this + 864) != v68)
  {
    *(this + 864) = v67 & 1;
    (*(*this + 352))(this, v68);
    ULServiceManager::iodControl(this, v68);
  }

  v69 = [p_superclass + 269 shared];
  v70 = [v69 defaultsDictionary];

  v71 = [*(v14 + 3240) stringWithUTF8String:"ULMagnetometerSensorEnbaled"];
  v72 = [v70 objectForKey:v71];
  if (v72 && (v73 = *(v17 + 2992), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v74 = [v72 BOOLValue];
  }

  else
  {
    v74 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v75 = v74;

  if (v75)
  {
    if ((v98 & 1) != 0 || BYTE1(v98) == 1)
    {
      v76 = +[ULMagnetometerProvider sharedInstance];
      [v76 startUpdates];
    }

    else
    {
      v76 = +[ULMagnetometerProvider sharedInstance];
      [v76 stopUpdates];
    }
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v77 = *MEMORY[0x277D85DE8];
}

void ___ZN16ULServiceManager17loadConfigurationERKN5boost5uuids4uuidEPK15ULConfiguration_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  ULServiceManager::updateServiceLastActiveTime(v2, *(a1 + 40));
  v3 = *(a1 + 40);

  ULServiceManager::enterLocationPerService(v2, v3, v2 + 27);
}

uint64_t ULServiceManager::requestBLEKeyMonitoring(ULServiceManager *this, int a2)
{
  v3 = *(this + 80);
  if (a2)
  {
    [v3 loadSameAccountBleIdentitiesFromDb];
    v4 = *(this + 80);

    return [v4 startMonitoringEvents];
  }

  else
  {
    [v3 backupSameAccountBleIdentities];
    [*(this + 80) resetSameAccountBleIdentities];
    v6 = *(this + 80);

    return [v6 stopMonitoringEvents];
  }
}

uint64_t ULScanParameters::operator==(unsigned __int8 *a1, int **a2)
{
  if (a1[2] != *(a2 + 2) || a1[3] != *(a2 + 3) || a1[4] != *(a2 + 4) || a1[5] != *(a2 + 5) || *a1 != *a2 || a1[1] != *(a2 + 1) || a1[6] != *(a2 + 6) || a1[7] != *(a2 + 7) || !std::operator==[abi:ne200100]<ULWiFiChannelHistogram,std::allocator<ULWiFiChannelHistogram>>(a1 + 2, a2 + 2) || a1[8] != *(a2 + 8) || ![*(a1 + 5) isEqual:a2[5]])
  {
    return 0;
  }

  v4 = *(a1 + 6);
  v5 = a2[6];

  return [v4 isEqual:v5];
}

void std::__optional_destruct_base<ULScanningEventDO,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v7[3] = v1;
    v7[4] = v2;
    v7[0] = (a1 + 200);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v7);
    v4 = *(a1 + 136);
    if (v4)
    {
      *(a1 + 144) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 112);
    if (v5)
    {
      *(a1 + 120) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      *(a1 + 96) = v6;
      operator delete(v6);
    }

    v7[0] = (a1 + 64);
    std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v7);
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 272) = 0;
  }
}

uint64_t ULServiceManager::iodControl(ULServiceManager *this, int a2)
{
  v3 = *(this + 81);
  if (a2)
  {
    result = [v3 startBackgroundUpdates];
    if (*(this + 10))
    {
      v5 = *(this + 82);

      return [v5 startBackgroundUpdates];
    }
  }

  else
  {
    result = [v3 stopBackgroundUpdates];
    if (*(this + 10))
    {
      v6 = *(this + 82);

      return [v6 stopBackgroundUpdates];
    }
  }

  return result;
}

uint64_t ULServiceManager::enterLocation(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  a1[27] = ULLoiTypes::rtLoiStringToLocationType(a2);
  a1[28] = a3;
  a1[29] = a4;
  v7 = *(*a1 + 232);

  return v7(a1);
}

uint64_t non-virtual thunk toULServiceManager::enterLocation(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v7 = ULLoiTypes::rtLoiStringToLocationType(a2);
  v9 = *(a1 - 8);
  v8 = (a1 - 8);
  v8[27] = v7;
  v8[28] = a3;
  v8[29] = a4;
  v10 = *(v9 + 232);

  return v10(v8);
}

__n128 ULServiceManager::currentLoiTypeAndId@<Q0>(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  ULLoiTypes::locationTypeToString(this[13].n128_i64[1], &v5);
  *a2 = v5;
  *(a2 + 16) = v6;
  result = this[14];
  *(a2 + 24) = result;
  return result;
}

__n128 non-virtual thunk toULServiceManager::currentLoiTypeAndId@<Q0>(ULServiceManager *this@<X0>, uint64_t a2@<X8>)
{
  ULLoiTypes::locationTypeToString(*(this + 26), a2);
  result = *(this + 216);
  *(a2 + 24) = result;
  return result;
}

uint64_t ULServiceManager::predictionRequest(ULServiceManager *a1, uuid a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ULServiceManager::loadedServiceByConnectionToken(a1, a2);
  if (v3)
  {
    v4 = v2;
    +[ULEventLog shared];
    objc_claimAutoreleasedReturnValue();
    v8 = ULService::uuid(v4);
    v9 = v5;
    operator new();
  }

  result = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259153DC8(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::enableMiLoAtCurrentLocation(ULServiceManager *this, const uuid *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = ULServiceManager::loadedServiceByConnectionToken(this, *a2);
  if (v5)
  {
    v6 = v4;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = ULService::uuid(v6);
      v17 = v8;
      operator new();
    }

    buf = *a2;
    std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::push_back(this + 288, &buf);
    if ((ULService::isLocationTypeEnabled(v6, 2uLL) & 1) == 0)
    {
      ULService::enableInLocationType(v6, 2uLL);
      v9 = (*(**(this + 25) + 104))(*(this + 25));
      v10 = ULService::uuid(v6);
      [v9 updateServiceLocationTypes:v10 withLocationTypes:{v11, ULService::locationTypes(v6)}];
    }

    v12 = *(this + 30);
    buf.n128_u64[0] = ULService::uuid(v6);
    buf.n128_u64[1] = v13;
    result = (*(*(v12 + 8) + 24))(v12 + 8, &buf);
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULServiceManager::removeCustomLoiWithIdentifier(ULServiceManager *this, const uuid *a2, const uuid *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = ULServiceManager::loadedServiceByConnectionToken(this, *a3);
  if (v6)
  {
    v7 = v5;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }

    if (ULService::isLocationTypeEnabled(v7, 2uLL))
    {
      ULService::disableInLocationType(v7, 2uLL);
    }

    (*(**(this + 13) + 24))(*(this + 13));
    ULServiceManager::createAggregatedRequirements(this);
    v9 = *(this + 30);
    *buf = ULService::uuid(v7);
    v14 = v10;
    result = (*(*(v9 + 8) + 32))(v9 + 8, a2, buf);
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591542E8(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

void ULServiceManager::ingestLocalizationResults(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  if (0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3) != (a2[1] - *a2) >> 4)
  {
    ULServiceManager::ingestLocalizationResults();
  }

  v44 = cl::chrono::CFAbsoluteTimeClock::now();
  v43 = [*(a1 + 712) getTrackedDeviceClass];
  v8 = *a4;
  if (a4[1] == *a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = a1 + 152;
    do
    {
      v12 = *(a1 + 160);
      if (v12 != v11)
      {
        do
        {
          ULService::getModelPtr(v12 + 16, buf);
          if (*buf)
          {
            ULService::getModelPtr(v12 + 16, &v35);
            v13 = v35 == *(*a2 + 16 * v10);
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }
          }

          else
          {
            v13 = 0;
          }

          if (*v46)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*v46);
          }

          if (v13)
          {
            v14 = std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>((*a4 + 40 * v10), &v43);
            v15 = *a4;
            if (v14)
            {
              v16 = std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>((v15 + 40 * v10), &v43);
              if (!v16)
              {
                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }
            }

            else
            {
              v16 = *(v15 + 40 * v10 + 16);
            }

            std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](buf, (v16 + 3));
            ULService::getModelPtr(v12 + 16, &v33);
            ULServiceManager::adjustLocalizationResultBasedOnPDRFenceForLabel(a1, &v33, buf, &v35);
            std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(buf, &v35);
            if (v42 == 1)
            {
              if (__p)
              {
                v41 = __p;
                operator delete(__p);
              }

              if (v38)
              {
                v39 = v38;
                operator delete(v38);
              }

              if (v37 == 1 && v35)
              {
                v36 = v35;
                operator delete(v35);
              }
            }

            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            ULService::ingestLocalizationResults((v12 + 16), buf, a3, &v44);
            if (v55 == 1)
            {
              if (v53)
              {
                v54 = v53;
                operator delete(v53);
              }

              if (v51)
              {
                v52 = v51;
                operator delete(v51);
              }

              if (BYTE4(v48) == 1 && *buf)
              {
                *v46 = *buf;
                operator delete(*buf);
              }
            }
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
        v8 = *a4;
      }

      for (i = *(v8 + 40 * v10 + 16); i; i = *i)
      {
        if (*(i + 144) == 1)
        {
          v18 = *(i + 88);
        }

        else
        {
          v18 = 0;
        }

        v9 = v18 | v9 & 1;
      }

      ++v10;
    }

    while (v10 < 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - v8) >> 3));
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 720);
    *buf = 68289538;
    *&buf[4] = 0;
    *v46 = 2082;
    *&v46[2] = "";
    v47 = 2050;
    v48 = v9 & 1;
    v49 = 2050;
    v50 = v20;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ServiceManager::ingestLocalizationResults, AnyModelRequestRf:%{public}lu, ConsecutiveLocalizationRequestsCounter:%{public}lu}", buf, 0x26u);
  }

  if (v9)
  {
    v21 = *(a1 + 720);
    v22 = +[ULDefaultsSingleton shared];
    v23 = [v22 defaultsDictionary];

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxConsecutiveLocalizationRfScanRetryRequests"];
    v25 = [v23 objectForKey:v24];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v26 = [v25 unsignedLongValue];
    }

    else
    {
      v26 = [&unk_286A72300 unsignedLongValue];
    }

    v27 = v26;

    if (v27 > v21)
    {
      ++*(a1 + 720);
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManager::runWithConfiguration();
      }

      v28 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 720);
        *buf = 68289282;
        *&buf[4] = 0;
        *v46 = 2082;
        *&v46[2] = "";
        v47 = 2050;
        v48 = v29;
        _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Update RFScan is required, ConsecutiveLocalizationRequestsCounter:%{public}lu}", buf, 0x1Cu);
      }

      v30 = *(a1 + 96);
      LODWORD(v35) = 0;
      boost::uuids::detail::random_provider_base::random_provider_base(&v35);
      *buf = boost::uuids::random_generator_pure::operator()(&v35);
      *v46 = v31;
      (*(*v30 + 32))(v30, buf);
      boost::uuids::detail::random_provider_base::destroy(&v35);
    }
  }

  else
  {
    *(a1 + 720) = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::adjustLocalizationResultBasedOnPDRFenceForLabel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLabeledSpacePDRFenceEnabled"];
  v11 = [v9 objectForKey:v10];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v13 = v12;

  if ((v13 & 1) != 0 && (*(a1 + 744) & 1) != 0 && (*(a3 + 120) & 1) != 0 && *(*a2 + 520) == 1 && !ULHomeSlamModel::getWorkMode((*a2 + 312)))
  {
    if ((*(a3 + 120) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](__p, a3);
    v15 = *(a3 + 48);
    v22 = *(a3 + 32);
    *v23 = v15;
    *&v23[15] = *(a3 + 63);
    v25 = 0;
    v24 = 0uLL;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v24, *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 4);
    v26 = 0uLL;
    v27 = 0;
    std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(&v26, *(a3 + 96), *(a3 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 104) - *(a3 + 96)) >> 2));
    __src = *(a1 + 745);
    std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&v24, &__src, v29, 1uLL);
    *a4 = 0;
    *(a4 + 24) = 0;
    v16 = v21;
    if (v21 == 1)
    {
      *a4 = *__p;
      *(a4 + 16) = v20;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      *(a4 + 24) = 1;
    }

    v17 = *v23;
    *(a4 + 32) = v22;
    *(a4 + 48) = v17;
    *(a4 + 63) = *&v23[15];
    *(a4 + 72) = v24;
    *(a4 + 88) = v25;
    v25 = 0;
    v24 = 0uLL;
    *(a4 + 96) = v26;
    *(a4 + 112) = v27;
    v27 = 0;
    v26 = 0uLL;
    *(a4 + 120) = 1;
    if (v16 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](a4, a3);
  }
}

void ULServiceManager::localize(void **this, const ULScanningEventDO *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v18[0] = &unk_286A5C290;
  v18[3] = v18;
  filterModels(this + 16, v18, v6);
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v18);
  (*(*this[11] + 32))(v5);
  ULScanningEventDO::ULScanningEventDO(&v8, a2);
  v17 = 1;
  ULServiceManager::ingestLocalizationResults(this, v6, &v8, v5);
  if (v17 == 1)
  {
    v7 = &v16;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }

    v7 = &v9;
    std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (*(&v8.var1.var0.var1 + 23) < 0)
    {
      operator delete(v8.var1.var0.var1.var0);
    }
  }

  *v8.var0.data = v5;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  *v8.var0.data = v6;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_259154DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  std::optional<ULScanningEventDO>::~optional(&a17);
  a17 = &a10;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = &a13;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void **filterModels@<X0>(void **result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    do
    {
      v7 = *(a2 + 24);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        v8 = a3[1];
        v9 = a3[2];
        if (v8 >= v9)
        {
          v12 = (v8 - *a3) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v14 = v9 - *a3;
          if (v14 >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          v22[4] = a3;
          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>>(a3, v15);
          }

          v16 = 16 * v12;
          v17 = *v3;
          *(16 * v12) = *v3;
          if (*(&v17 + 1))
          {
            atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v11 = (v16 + 16);
          v18 = a3[1] - *a3;
          v19 = v16 - v18;
          memcpy((v16 - v18), *a3, v18);
          v20 = *a3;
          *a3 = v19;
          a3[1] = v11;
          v21 = a3[2];
          a3[2] = 0;
          v22[2] = v20;
          v22[3] = v21;
          v22[0] = v20;
          v22[1] = v20;
          result = std::__split_buffer<std::shared_ptr<ULTrajectoryPoint>>::~__split_buffer(v22);
        }

        else
        {
          v10 = v3[1];
          *v8 = *v3;
          v8[1] = v10;
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v8 + 2;
        }

        a3[1] = v11;
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_259154F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ULServiceManager::localize(uint64_t a1, void *a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v41[0] = &unk_286A5C320;
  v41[3] = v41;
  filterModels((a1 + 128), v41, &v19);
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v41);
  if (v19 != v20)
  {
    if (v20 - v19 != 16)
    {
      ULServiceManager::localize(&v23);

      abort_report_np();
      __break(1u);
    }

    LOBYTE(v12[0]) = 0;
    v13 = 0;
    v15[8] = 0;
    *&v15[16] = 0;
    v15[18] = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    [v3 coordinates];
    v9 = v4;
    [v3 coordinates];
    v8 = v5;
    [v3 coordinates];
    *&v14 = __PAIR64__(v8, v9);
    DWORD2(v14) = v6;
    *v15 = 2;
    v15[8] = 1;
    v23 = 1;
    std::__optional_copy_base<std::vector<ULLocalizationResultInternal>,false>::__optional_copy_base[abi:ne200100](&v24, v12);
    v28 = v14;
    *v29 = *v15;
    *&v29[15] = *&v15[15];
    v31 = 0;
    v32 = 0;
    v30 = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v30, v16, *(&v16 + 1), (*(&v16 + 1) - v16) >> 4);
    __p = 0;
    v34 = 0;
    v35 = 0;
    std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(&__p, *(&v17 + 1), v18, 0xCCCCCCCCCCCCCCCDLL * ((v18 - *(&v17 + 1)) >> 2));
    v36 = 1;
    std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(v11, &v23, 1);
    if (v36 == 1)
    {
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v26 == 1 && v24)
      {
        v25 = v24;
        operator delete(v24);
      }
    }

    LOBYTE(v23) = 0;
    v40 = 0;
    std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(v22, v11);
    memset(v10, 0, sizeof(v10));
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__init_with_size[abi:ne200100]<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>> const*,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>> const*>(v10, v22, &v23, 1uLL);
    ULServiceManager::ingestLocalizationResults(a1, &v19, &v23, v10);
    v21 = v10;
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&v21);
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v22);
    if (v40 == 1)
    {
      v22[0] = &v39;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v22);
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      v22[0] = &v29[8];
      std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v22);
      if (v27 < 0)
      {
        operator delete(v25);
      }
    }

    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v11);
    if (*(&v17 + 1))
    {
      *&v18 = *(&v17 + 1);
      operator delete(*(&v17 + 1));
    }

    if (v16)
    {
      *(&v16 + 1) = v16;
      operator delete(v16);
    }

    if (v13 == 1 && v12[0])
    {
      v12[1] = v12[0];
      operator delete(v12[0]);
    }
  }

  v23 = &v19;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v23);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_259155324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49, void *a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a43);
  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(&a44);
  std::optional<ULScanningEventDO>::~optional(&a49);
  std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(&a20);
  ULLocalizationResult::~ULLocalizationResult(&a25);
  a49 = &a40;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&a49);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::requestObservation(ULServiceManager *a1, uuid a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v4 = ULServiceManager::loadedServiceByConnectionToken(a1, a2);
  if (v5)
  {
    v6 = v4;
    +[ULEventLog shared];
    objc_claimAutoreleasedReturnValue();
    v10 = ULService::uuid(v6);
    v11 = v7;
    operator new();
  }

  result = 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259155590(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::verifyWriteAccessToLabelContextLayer(uint64_t a1, ULService *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ULService::uuid(a2);
  v7 = ULModelLoader::hasWriteAccessToContextLayer(v5, v6, [v4 contextLayerEnum]);
  if ((v7 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      Rois = ULHomeSlamModel::getRois(a2);
      if (*(Rois + 23) < 0)
      {
        v10 = *Rois;
      }

      v18 = ULService::uuid(a2);
      v19 = v11;
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      v13 = ULHomeSlamModel::getRois(a2);
      if (*(v13 + 23) < 0)
      {
        v14 = *v13;
      }

      __p = ULService::uuid(a2);
      *&v21 = v15;
      operator new();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2591558FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  operator delete(v18);

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::addLabel(ULServiceManager *a1, uuid *a2, void *a3)
{
  v5 = a3;
  v6 = ULServiceManager::loadedServiceByConnectionToken(a1, *a2);
  if (v7 & 1) != 0 && (v8 = v6, (ULServiceManager::verifyWriteAccessToLabelContextLayer(v6, v6, v5)))
  {
    ULService::getModelPtr(v8, &v12);
    ULServiceManager::setPDRFenceForLabel(a1, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v9 = [v5 deviceClass];
    if (v9)
    {
      if (v9 == 1)
      {
        ULServiceManager::addVisualMappingKitLabel(a1, v5);
      }
    }

    else
    {
      ULService::addLabel(v8, v5, a1 + 360);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_259155A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::setPDRFenceForLabel(uint64_t result, uint64_t *a2)
{
  if ((*(result + 744) & 1) == 0)
  {
    v2 = *a2;
    if (*a2)
    {
      if (*(v2 + 520) == 1)
      {
        v3 = result;
        result = ULHomeSlamModel::getWorkMode((v2 + 312));
        if (!result)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULServiceManager::runWithConfiguration();
          }

          v4 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "[ULServiceManager]: setPDRFenceForLabel", buf, 2u);
          }

          v5 = *(v3 + 736);
          if (!v5)
          {
            v6 = [ULCMPDRFenceProvider alloc];
            v7 = *(v3 + 728);
            v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:ULSettings::get<ULSettings::LabeledSpacePDRFenceRadiusInMeters>()];
            v12[0] = MEMORY[0x277D85DD0];
            v12[1] = 3221225472;
            v12[2] = ___ZN16ULServiceManager19setPDRFenceForLabelERKNSt3__110shared_ptrI16ULModelAndStatesEE_block_invoke;
            v12[3] = &__block_descriptor_40_e29_v24__0__NSDate_8__NSString_16l;
            v12[4] = v3;
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = ___ZN16ULServiceManager19setPDRFenceForLabelERKNSt3__110shared_ptrI16ULModelAndStatesEE_block_invoke_3;
            v11[3] = &__block_descriptor_40_e41_v32__0__NSError_8__NSDate_16__NSString_24l;
            v11[4] = v3;
            v9 = [(ULCMPDRFenceProvider *)v6 initWithFenceIdentifier:@"LabeledSpace" queue:v7 radiusInMeters:v8 callback:v12 statusCallback:&__block_literal_global_222 errorCallback:v11];
            v10 = *(v3 + 736);
            *(v3 + 736) = v9;

            v5 = *(v3 + 736);
          }

          [v5 startSession];
          result = [*(v3 + 736) setFence];
          *(v3 + 744) = 1;
        }
      }
    }
  }

  return result;
}

void ULServiceManager::addVisualMappingKitLabel(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v3 = *(a1 + 768);
  v4 = [MEMORY[0x277CCAD78] UUID];
  v38 = 0;
  v5 = [v3 addAnchorWithIdentifiedBy:v4 error:&v38];
  v6 = v38;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 uniqueIdentifier];
      v11 = [v10 UUIDString];
      v12 = [v5 location];
      buf.var0.var0.var1.var0 = 5.778e-34;
      *&buf.var0.var0.var1.var1 = v11;
      *&buf.var0.var1 = 2112;
      *(&buf.var0.var1 + 2) = v12;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Added anchor using ULVisualMappingKitManager with identifier %@, and location: %@", &buf, 0x16u);
    }

    buf.var0.var0.var0 = 0;
    buf.var1.var0.var0 = 0;
    v13 = [v5 uniqueIdentifier];
    *&__p[0].var0.var0.var0 = [v13 toBoostUUID];
    *&__p[0].var0.var0.var1.var2 = v14;
    __p[0].var1.var0.var0 = 1;
    ULLabelDO::create(v28, &buf.var0.var0.var0, __p, &v54);

    v15 = (*(**(a1 + 200) + 48))(*(a1 + 200));
    ULLabelDO::ULLabelDO(&buf, &v54);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    std::vector<ULLabelDO>::__init_with_size[abi:ne200100]<ULLabelDO const*,ULLabelDO const*>(&v35, &buf, &v49, 1uLL);
    (*(*a1 + 360))(__p, a1);
    [v15 insertDataObjects:&v35 atLoiUUID:&__p[0].var1.var0.var1.var1];
    if (SHIBYTE(__p[0].var1.var0.var1.var0) < 0)
    {
      operator delete(*&__p[0].var0.var0.var0);
    }

    *&__p[0].var0.var0.var0 = &v35;
    std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v48 == 1)
    {
      v47 = -1;
    }

    if (v46 < 0)
    {
      operator delete(*&buf.var2.var1);
    }

    v16 = [v5 location];
    [v16 coordinates];
    v29 = v17;
    v18 = [v5 location];
    [v18 coordinates];
    v27 = v19;
    v20 = [v5 location];
    [v20 coordinates];
    v26 = v21;

    v22 = *(a1 + 160);
    if (v22 != a1 + 152)
    {
      v30 = __PAIR64__(v27, v29);
      do
      {
        v23 = ULService::serviceType((v22 + 16));
        ULServiceManager::modelByServiceType(a1, v23, &v33);
        v24 = v33;
        if (!v33)
        {
          goto LABEL_57;
        }

        v35 = v30;
        LODWORD(v36) = v26;
        BYTE4(v36) = 1;
        __p[0].var0.var0.var0 = 0;
        LOBYTE(__p[0].var1.var0.var1.var1) = 0;
        LOBYTE(v31[0]) = 0;
        v32 = 0;
        v39 = cl::chrono::CFAbsoluteTimeClock::now();
        ULMapLabelDO::ULMapLabelDO(&buf, &v35, __p, v31, &v39, &v54, v24 + 536);
        if (v32 == 1 && v31[0])
        {
          v31[1] = v31[0];
          operator delete(v31[0]);
        }

        if (LOBYTE(__p[0].var1.var0.var1.var1) == 1 && *&__p[0].var0.var0.var0)
        {
          *&__p[0].var0.var0.var1.var2 = *&__p[0].var0.var0.var0;
          operator delete(*&__p[0].var0.var0.var0);
        }

        ULMapLabelDO::ULMapLabelDO(__p, &buf);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        std::vector<ULMapLabelDO>::__init_with_size[abi:ne200100]<ULMapLabelDO const*,ULMapLabelDO const*>(&v35, __p, &buf, 1uLL);
        ULService::appendMapItems((v22 + 16), &v35);
        v39 = COERCE_DOUBLE(&v35);
        std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v39);
        if (v44 == 1)
        {
          v43 = -1;
        }

        if (v42 < 0)
        {
          operator delete(v41);
        }

        if (__p[0].var2.var1 && __p[0].var2.var0.var1.var0)
        {
          __p[0].var2.var0.var1.var1 = __p[0].var2.var0.var1.var0;
          operator delete(__p[0].var2.var0.var1.var0);
        }

        if (__p[0].var1.var1 && __p[0].var1.var0.var1.var0)
        {
          __p[0].var1.var0.var1.var1 = __p[0].var1.var0.var1.var0;
          operator delete(__p[0].var1.var0.var1.var0);
        }

        if (v53 == 1)
        {
          v52 = -1;
        }

        if (v51 < 0)
        {
          operator delete(v50);
        }

        if (buf.var2.var1 && buf.var2.var0.var1.var0)
        {
          buf.var2.var0.var1.var1 = buf.var2.var0.var1.var0;
          operator delete(buf.var2.var0.var1.var0);
        }

        if (buf.var1.var1 && buf.var1.var0.var1.var0)
        {
          buf.var1.var0.var1.var1 = buf.var1.var0.var1.var0;
          operator delete(buf.var1.var0.var1.var0);
        }

        if (!v33)
        {
LABEL_57:
          ULServiceManager::addVisualMappingKitLabel(&buf);

          abort_report_np();
          __break(1u);
        }

        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        v22 = *(v22 + 8);
      }

      while (v22 != a1 + 152);
    }

    if (v58 == 1)
    {
      v57 = -1;
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      buf.var0.var0.var1.var0 = 5.7779e-34;
      *&buf.var0.var0.var1.var1 = v6;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "Got addAnchorFailed error: %@", &buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t ULServiceManager::modelByServiceType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_286A5C4A0;
  v13[3] = v13;
  if (a2 == 4)
  {
    v5 = &unk_286A5C5A0;
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v5 = &unk_286A5C520;
  }

  v14[0] = v5;
  v14[3] = v14;
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::swap[abi:ne200100](v14, v13);
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v14);
LABEL_6:
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::__value_func[abi:ne200100](v11, v13);
  if (v6 != v7)
  {
    while (1)
    {
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v12 + 48))(v12, v6))
      {
        break;
      }

      v6 += 2;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v11);
  if (v6 == *(a1 + 136))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = *v6;
    v8 = v6[1];
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  result = std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v13);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259156558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::addLabelBetweenDates(ULServiceManager *a1, uuid *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = ULServiceManager::loadedServiceByConnectionToken(a1, *a2);
  if (v13 & 1) != 0 && (v14 = v12, (ULServiceManager::verifyWriteAccessToLabelContextLayer(v12, v12, v9)))
  {
    ULService::addLabelBetweenDates(v14, v9, v10, v11);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void ULServiceManager::addLabelToScanEventsBetweenDates(ULServiceManager *this, const ULLabelDO *a2, NSDate *a3, NSDate *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((a2[1].var2.var0.var1.data[8] & 1) == 0)
  {
    ULServiceManager::addLabelToScanEventsBetweenDates(&v29);

    abort_report_np();
    __break(1u);
  }

  v9 = (*(**(this + 25) + 144))(*(this + 25));
  [(NSDate *)v7 timeIntervalSinceReferenceDate];
  v11 = v10;
  [(NSDate *)v8 timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = +[ULDefaultsSingleton shared];
  v15 = [v14 defaultsDictionary];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxLabelsBetweenDates"];
  v17 = [v15 objectForKey:v16];
  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = [v17 unsignedIntValue];
  }

  else
  {
    v18 = [&unk_286A72318 unsignedIntValue];
  }

  v19 = v18;

  if (v9)
  {
    [v9 fetchDistinctScanningEventsUUIDsFromTime:0 toTime:v19 withScanType:v11 Limit:v13];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  v20 = v25;
  v21 = v26;
  if (v25 != v26)
  {
    do
    {
      v34 = *v20;
      v22 = (*(**(this + 25) + 48))(*(this + 25));
      ULLabelDO::ULLabelDO(&v29, a2);
      memset(v24, 0, sizeof(v24));
      std::vector<ULLabelDO>::__init_with_size[abi:ne200100]<ULLabelDO const*,ULLabelDO const*>(v24, &v29, &v34, 1uLL);
      if ((a2[1].var2.var0.var1.data[8] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      [v22 insertDataObjects:v24 forScanningEventUUID:&v34 andServiceUUID:&a2[1].var1];
      v28 = v24;
      std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v28);
      if (v33 == 1)
      {
        v32 = -1;
      }

      if (v31 < 0)
      {
        operator delete(__p);
      }

      ++v20;
    }

    while (v20 != v21);
    v20 = v25;
  }

  if (v20)
  {
    v26 = v20;
    operator delete(v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::onInsertMapLabelsToDB(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v7 = (*(**(a1 + 200) + 152))(*(a1 + 200));
      [v7 insertLabelDOAndMapLabelDO:v3 forScanningEventUUID:a3];

      v3 += 232;
    }

    while (v3 != v4);
  }
}

void ULServiceManager::onScanEvent(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 200) != *(a2 + 208))
  {
    if (*(a1 + 216))
    {
      goto LABEL_32;
    }

    v4 = a1 + 152;
    v5 = *(a1 + 160);
    if (v5 != a1 + 152)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        ULService::sendGenericEvent(v5 + 16, 3, &__p);
        if (__p.var1.var0.var0.var0[7] < 0)
        {
          operator delete(*__p.var0.data);
        }

        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  *(a2 + 160) = *(a1 + 224);
  v6 = (*(**(a1 + 200) + 144))(*(a1 + 200));
  ULScanningEventDO::ULScanningEventDO(&__p, a2);
  memset(v11, 0, sizeof(v11));
  std::vector<ULScanningEventDO>::__init_with_size[abi:ne200100]<ULScanningEventDO const*,ULScanningEventDO const*>(v11, &__p, v24, 1uLL);
  [v6 insertDataObjects:v11 atLoiUUID:a2 + 160];
  v12 = v11;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = v23;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v12 = v16;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (*(&__p.var1.var0.var1 + 23) < 0)
  {
    operator delete(__p.var1.var0.var1.var0);
  }

  if (*(a2 + 40))
  {
    if (*(a2 + 40) == 1 && *(a1 + 808) == 1)
    {
      ULServiceManager::localize(a1, a2);
      if (*(a1 + 810) == 1)
      {
        ULScanningEventDO::ULScanningEventDO(&__p, a2);
        v24[0] = 1;
        std::__optional_storage_base<ULScanningEventDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULScanningEventDO,false>>(a1 + 360, &__p);
        if (v24[0] == 1)
        {
          v11[0] = v23;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v11);
          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          if (v19)
          {
            v20 = v19;
            operator delete(v19);
          }

          if (v17)
          {
            v18 = v17;
            operator delete(v17);
          }

          v11[0] = v16;
          std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v11);
          if (*(&__p.var1.var0.var1 + 23) < 0)
          {
            operator delete(__p.var1.var0.var1.var0);
          }
        }
      }
    }
  }

  else
  {
    (*(**(a1 + 104) + 40))(*(a1 + 104));
    for (i = *(a1 + 160); i != a1 + 152; i = *(i + 8))
    {
      *(&__p.var1.var0.var1 + 2) = 0;
      v14 = 0;
      v8 = (*(a2 + 120) - *(a2 + 112)) >> 5;
      v9 = (*(a2 + 144) - *(a2 + 136)) >> 5;
      *__p.var0.data = (*(a2 + 96) - *(a2 + 88)) >> 5;
      *&__p.var0.data[8] = v8;
      __p.var1.var0.var1.var0 = v9;
      __p.var1.var0.var1.var1 = (&__p.var1.var0.var1 + 1);
      v15 = 0;
      if (*(a2 + 56) == 3)
      {
        LODWORD(v11[0]) = 0;
        std::__tree<ULRecordingCompletionMetaInformation::RecordingError>::__emplace_unique_key_args<ULRecordingCompletionMetaInformation::RecordingError,ULRecordingCompletionMetaInformation::RecordingError>(&__p.var1.var0.var1.var1, v11);
      }

      ULService::didRecordingStop((i + 16), &__p);
      std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&__p.var1.var0.var1.var1, *(&__p.var1.var0.var1 + 2));
    }
  }

LABEL_32:
  v10 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::onInvalidateLastScanEvent(void **this)
{
  v36[4] = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "onInvalidateLastScanEvent, invalidation of the last scan event", buf, 2u);
  }

  if (*(this + 632) != 1 || this[70] == this[71])
  {
    std::__optional_destruct_base<ULScanningEventDO,false>::reset[abi:ne200100]((this + 45));
    v36[0] = &unk_286A5C3A0;
    v36[3] = v36;
    filterModels(this + 16, v36, v18);
    std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v36);
    v4 = v18[0];
    v3 = v18[1];
    v5 = [this[89] getThisDeviceClass];
    v14 = 0;
    v12 = 0u;
    *v13 = 0u;
    v10 = 0u;
    *v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    *v7 = 0u;
    v15 = 1;
    *buf = v5;
    std::__optional_move_base<ULLocalizationResult,false>::__optional_move_base[abi:ne200100](&v20, v7);
    std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(v16, buf, 1);
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::vector[abi:ne200100](v17, (v3 - v4) >> 4);
    std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v16);
    if (v31 == 1)
    {
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v22 == 1 && v20)
      {
        v21 = v20;
        operator delete(v20);
      }
    }

    if (v15 == 1)
    {
      if (v13[0])
      {
        v13[1] = v13[0];
        operator delete(v13[0]);
      }

      if (v11[1])
      {
        *&v12 = v11[1];
        operator delete(v11[1]);
      }

      if (BYTE8(v8) == 1 && v7[0])
      {
        v7[1] = v7[0];
        operator delete(v7[0]);
      }
    }

    buf[0] = 0;
    v35 = 0;
    ULServiceManager::ingestLocalizationResults(this, v18, buf, v17);
    if (v35 == 1)
    {
      v7[0] = &v34;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v7);
      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      v7[0] = &v24;
      std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v7);
      if (v23 < 0)
      {
        operator delete(v21);
      }
    }

    *buf = v17;
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v18;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::onWiFiAssociationEvent(void **a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = a3;
  ((*a1)[45])(v32);
  if (v34[0])
  {
LABEL_2:
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (*(a4 + 16) != 1 || (v5 & 1) == 0)
    {
      __p[0] = COERCE_VOID_(cl::chrono::CFAbsoluteTimeClock::now());
      v21 = 0;
      std::string::basic_string[abi:ne200100]<0>(buf, "");
      v20 = CLMacAddress::newFromCLStr(buf);
      v18 = 0;
      v19 = 2;
      v24 = std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<std::string &,boost::uuids::uuid &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,BOOL,CLMacAddress,ULAssociatedStateDO::Band,int>(&v23, v32, v34, __p, &v21, &v20, &v19, &v18);
      if (v31 < 0)
      {
        operator delete(*buf);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManager::runWithConfiguration();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      goto LABEL_45;
    }

    LODWORD(v20) = 0;
    if (v6 > 1u)
    {
      if (v6 == 2)
      {
        v12 = 5;
      }

      else
      {
        if (v6 != 3)
        {
          goto LABEL_38;
        }

        v12 = 6;
      }
    }

    else
    {
      if (v6)
      {
        if (v6 != 1)
        {
LABEL_38:
          *buf = cl::chrono::CFAbsoluteTimeClock::now();
          LOBYTE(__p[0]) = 1;
          if (*(a4 + 16) != 1 || (v27 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v24 = std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<std::string &,boost::uuids::uuid &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,BOOL,CLMacAddress &,ULAssociatedStateDO::Band &,unsigned int &>(&v23, v32, v34, buf, __p, a4, &v20, &v26 + 1);
          if (onceToken_MicroLocation_Default != -1)
          {
            ULServiceManager::runWithConfiguration();
          }

          v15 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            operator new();
          }

LABEL_45:
          v16 = (*(*a1[25] + 24))(a1[25]);
          [v16 insertDataObjects:&v23 atLoiUUID:v34];

          *buf = &v23;
          std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](buf);
          goto LABEL_46;
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v13 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v29 = 2082;
          v30 = "";
          _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:ULServiceManager, onWiFiAssociationEvent event invalid band}", buf, 0x12u);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v14 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(logObject_MicroLocation_Default))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v29 = 2082;
          v30 = "";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ULServiceManager, onWiFiAssociationEvent event invalid band", "{msg%{public}.0s:ULServiceManager, onWiFiAssociationEvent event invalid band}", buf, 0x12u);
        }
      }

      v12 = 2;
    }

    LODWORD(v20) = v12;
    goto LABEL_38;
  }

  v8 = 0;
  while (v8 != 15)
  {
    if (v34[++v8])
    {
      if ((v8 - 1) < 0xF)
      {
        goto LABEL_2;
      }

      break;
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v29 = 2082;
    v30 = "";
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ULServiceManager, onWiFiAssociationEvent event ignored - nil currentRtLoiId}", buf, 0x12u);
  }

LABEL_46:
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_259157850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete(v30);

  a24 = &a19;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  _Unwind_Resume(a1);
}

void ULServiceManager::onCustomLoiRecordingSessionCompleted(ULServiceManager *this)
{
  (*(*(*(this + 30) + 8) + 48))();

  ULServiceManager::createAggregatedRequirements(this);
}

void non-virtual thunk toULServiceManager::onCustomLoiRecordingSessionCompleted(ULServiceManager *this)
{
  v1 = (this - 48);
  (*(*(*(this + 24) + 8) + 48))();

  ULServiceManager::createAggregatedRequirements(v1);
}

void ULServiceManager::onIOD(void **this, ULOdometryStatus *a2, NSError *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v23[0] = &unk_286A5C420;
  v23[3] = v23;
  filterModels(this + 16, v23, v10);
  std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](v23);
  (*(*this[11] + 24))(v9);
  for (i = this[20]; i != this + 19; i = i[1])
  {
    ULService::onOdometryUpdate((i + 2), v5);
  }

  LOBYTE(v12[0]) = 0;
  v22 = 0;
  ULServiceManager::ingestLocalizationResults(this, v10, v12, v9);
  if (v22 == 1)
  {
    v11 = &v21;
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    v11 = &v14;
    std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (v13 < 0)
    {
      operator delete(v12[2]);
    }
  }

  v12[0] = v9;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](v12);
  v12[0] = v10;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](v12);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_259157BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  std::optional<ULScanningEventDO>::~optional(&a17);
  a17 = &a10;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  a17 = &a13;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&a17);

  _Unwind_Resume(a1);
}

void ULServiceManager::didReceiveOdometryUpdate(ULServiceManager *this, objc_object *a2, ULOdometryStatus *a3, NSUUID *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v7 = a3;
  v8 = a4;
  v9 = (*(**(this + 25) + 128))(*(this + 25));
  v10 = [MEMORY[0x277D28868] deviceClass];
  std::string::basic_string[abi:ne200100]<0>(v25, [v10 UTF8String]);
  v11 = [(ULOdometryStatus *)v7 deltaPositionX];
  [v11 floatValue];
  v13 = v12;
  v14 = [(ULOdometryStatus *)v7 deltaPositionY];
  [v14 floatValue];
  v16 = v15;
  v17 = [(ULOdometryStatus *)v7 deltaPositionZ];
  [v17 floatValue];
  v19 = v18;
  v20 = [(ULOdometryStatus *)v7 statusDate];
  [v20 timeIntervalSinceReferenceDate];
  ULOdometryDO::ULOdometryDO(__p, v25, v8, [(ULOdometryStatus *)v7 odometrySourceType], v13, v16, v19, v21);
  memset(v27, 0, sizeof(v27));
  std::vector<ULOdometryDO>::__init_with_size[abi:ne200100]<ULOdometryDO const*,ULOdometryDO const*>(v27, __p, &v32, 1uLL);
  [v9 insertDataObjectsBuffered:v27 atLoiUUID:this + 224];
  v28 = v27;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v28);

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v22 = *(this + 81);
  if (v22 && v22 == v24)
  {
    ULServiceManager::onIOD(this, v7, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_259157E60(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, void *__pa, uint64_t a11, ULOdometryDO *a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17)
{
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&a16);
  ULOdometryDO::~ULOdometryDO(&a17);

  if (SHIBYTE(a12) < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

void ULOdometryDO::~ULOdometryDO(ULOdometryDO *this)
{
  if (*(&this->var0.var0.var1 + 23) < 0)
  {
    operator delete(this->var0.var0.var1.var0);
  }
}

void ULServiceManager::didReceiveOdometryProviderState(ULServiceManager *this, objc_object *a2, int a3)
{
  v5 = a2;
  v6 = *(this + 81);
  v10 = v5;
  if (v6)
  {
    v7 = v6 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    (*(*this + 352))(this, *(this + 864) & (a3 ^ 1u));
    v8 = this + 152;
    for (i = *(this + 20); i != v8; i = *(i + 8))
    {
      ULService::updateState((i + 16));
    }
  }
}

void ULServiceManager::didReceiveOdometryError(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v53 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v43 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(NSError *)v11 domain];
  v14 = [v13 isEqualToString:@"ULOdometryProviderDomain"];

  if (v14)
  {
    v15 = *(a1 + 160);
    if (v15 != a1 + 152)
    {
      while (1)
      {
        Rois = ULHomeSlamModel::getRois((v15 + 16));
        std::string::basic_string[abi:ne200100]<0>(buf, [@"com.apple.MiLoLSL2" UTF8String]);
        v17 = *(Rois + 23);
        if (v17 >= 0)
        {
          v18 = *(Rois + 23);
        }

        else
        {
          v18 = *(Rois + 8);
        }

        v19 = v51;
        v20 = v51;
        if ((v51 & 0x80u) != 0)
        {
          v19 = *&buf[8];
        }

        if (v18 != v19)
        {
          break;
        }

        v21 = v17 >= 0 ? Rois : *Rois;
        v22 = (v51 & 0x80u) == 0 ? buf : *buf;
        if (memcmp(v21, v22, v18))
        {
          break;
        }

        v30 = 1;
        if ((v20 & 0x80) == 0)
        {
LABEL_33:
          if (v30)
          {
            goto LABEL_37;
          }

          goto LABEL_40;
        }

LABEL_36:
        operator delete(*buf);
        if (v30)
        {
LABEL_37:
          v31 = [(NSError *)v11 description];
          v32 = v31;
          std::string::basic_string[abi:ne200100]<0>(buf, [v31 UTF8String]);
          ULService::sendGenericEvent(v15 + 16, 1, buf);
          if (v51 < 0)
          {
            operator delete(*buf);
          }
        }

LABEL_40:
        v15 = *(v15 + 8);
        if (v15 == a1 + 152)
        {
          goto LABEL_53;
        }
      }

      v23 = ULHomeSlamModel::getRois((v15 + 16));
      std::string::basic_string[abi:ne200100]<0>(&__p, [@"com.apple.HomeSlam" UTF8String]);
      v24 = *(v23 + 23);
      if (v24 >= 0)
      {
        v25 = *(v23 + 23);
      }

      else
      {
        v25 = *(v23 + 8);
      }

      v26 = HIBYTE(v48);
      v27 = SHIBYTE(v48);
      if (v48 < 0)
      {
        v26 = v47;
      }

      if (v25 == v26)
      {
        if (v24 >= 0)
        {
          v28 = v23;
        }

        else
        {
          v28 = *v23;
        }

        if (v48 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v30 = memcmp(v28, p_p, v25) == 0;
        if ((v27 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v51 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v30 = 0;
        if ((SHIBYTE(v48) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }
      }

      operator delete(__p);
      goto LABEL_32;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v33 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_258FE9000, v33, OS_LOG_TYPE_ERROR, "ULServiceManager, got odometry error, timestamp: %@, error: %@", buf, 0x16u);
    }

    [v12 timeIntervalSinceReferenceDate];
    v35 = v34;
    v36 = (*(**(a1 + 200) + 128))(*(a1 + 200));
    v37 = [(ULOdometryStatus *)v43 deviceIdentifier];
    v38 = v37;
    std::string::basic_string[abi:ne200100]<0>(v44, [v37 UTF8String]);
    v39 = [MEMORY[0x277CCAD78] nilUUID];
    ULOdometryDO::ULOdometryDO(buf, v44, v39, a4, 0.0, 0.0, 0.0, v35);
    __p = 0;
    v47 = 0;
    v48 = 0;
    std::vector<ULOdometryDO>::__init_with_size[abi:ne200100]<ULOdometryDO const*,ULOdometryDO const*>(&__p, buf, &v53, 1uLL);
    [v36 insertDataObjectsBuffered:&__p atLoiUUID:a1 + 224];
    v49 = &__p;
    std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v49);

    if (v51 < 0)
    {
      operator delete(*buf);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    v40 = *(a1 + 648);
    if (v40 && v40 == v42)
    {
      ULServiceManager::onIOD(a1, v43, v11);
    }
  }

LABEL_53:

  v41 = *MEMORY[0x277D85DE8];
}

void sub_259158454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, void *a10, void *a11, void *__pa, uint64_t a13, ULOdometryDO *a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19)
{
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&a18);
  ULOdometryDO::~ULOdometryDO(&a19);

  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<ULModelAndStates>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ULModelAndStates> *,std::shared_ptr<ULModelAndStates> *,std::shared_ptr<ULModelAndStates> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t ULServiceManagerBiDirectionalUuidMap::eraseByKey(uint64_t **this, const uuid *a2)
{
  v3 = (this + 1);
  v2 = *this;
  if (*this == (this + 1))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (*(v2 + 25) == *a2->data && *(v2 + 33) == *&a2->data[8])
      {
        v10 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(this, v2);
        operator delete(v2);
        v6 = 1;
        v2 = v10;
      }

      else
      {
        v8 = v2[1];
        if (v8)
        {
          do
          {
            v2 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v2;
            v2 = v2[2];
          }

          while (*v2 != v9);
        }
      }
    }

    while (v2 != v3);
  }

  return v6 & 1;
}

void ULServiceManager::processServiceAndLoadModel(uint64_t a1, ULService *this, ULDatabaseStoreInterface *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (ULService::deviceClass(this))
  {
    ULServiceManager::processServiceAndLoadModel();
  }

  v6 = ULService::serviceType(this);
  ULServiceManager::modelByServiceType(a1, v6, &v25);
  v7 = v25;
  if (!v25)
  {
    v8 = [*(a1 + 712) getThisDeviceClass];
    v9 = ULService::serviceType(this);
    v10 = ULService::uuid(this);
    v12 = v11;
    Rois = ULHomeSlamModel::getRois(this);
    ULModelLoader::loadModelForServiceOrCreateNewIfNecessary(v9, v10, v12, Rois, *(a1 + 200), (a1 + 248), a3);
    v14 = v22;
    v15 = v23;
    v22 = 0;
    v23 = 0;
    v16 = *(&v25 + 1);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    ULModelAndStates::initState(v14, v8);
    v26 = v14;
    v27 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<std::shared_ptr<ULModelAndStates>>::__init_with_size[abi:ne200100]<std::shared_ptr<ULModelAndStates> const*,std::shared_ptr<ULModelAndStates> const*>(&v22, &v26, &v28, 1uLL);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    (*(**(a1 + 88) + 16))(*(a1 + 88), &v22, v8);
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::push_back[abi:ne200100]((a1 + 128), &v25);
    v26 = &v22;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v26);
    v7 = v25;
    if (!v25)
    {
      ULServiceManager::processServiceAndLoadModel(&v22);

      abort_report_np();
      __break(1u);
    }
  }

  v17 = *(v7 + 536);
  v18 = *(v7 + 544);
  v19 = ULService::registeredContextLayers(this);
  ULModelLoader::loadMapItemsForService(v17, v18, v19, *(a1 + 200), &v22);
  v21 = v25;
  if (*(&v25 + 1))
  {
    atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  ULService::updateModel(this, &v21, &v22);
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  v26 = &v22;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_259158904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void ULServiceManager::processServiceAndLoadVMKModel(uint64_t a1, ULService *this, uint64_t a3)
{
  v26[3] = *MEMORY[0x277D85DE8];
  if (ULService::deviceClass(this) != 1)
  {
    ULServiceManager::processServiceAndLoadVMKModel();
  }

  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v6 != v7)
  {
    while ((ULModelAndStates::acceptsVMKLocalization(*v6) & 1) == 0)
    {
      v6 += 16;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(a1 + 136);
  }

  v24 = 0uLL;
  if (v6 == v7)
  {
    v26[0] = boost::uuids::string_generator::operator()<char const*>(&v23, "6ba7b810-9dad-11d1-80b4-00c04fd430c8", "");
    v26[1] = v11;
    ULHomeSlamModel::getTrajectoryPointCloud(&v22);
    v25 = cl::chrono::CFAbsoluteTimeClock::now();
    std::allocate_shared[abi:ne200100]<ULModelAndStates,std::allocator<ULModelAndStates>,boost::uuids::uuid,ULVisualMappingKitModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,0>();
  }

  v9 = *v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v10 = *(&v24 + 1);
    *&v24 = v9;
    *(&v24 + 1) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v24 = v9;
  }

  v12 = *(a1 + 768);
  v13 = [MEMORY[0x277CCAD78] fromBoostUUID:a3 + 8];
  v21 = 0;
  [v12 setupFor:v13 error:&v21];
  v14 = v21;

  if (v14)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "[ULServiceManager]: failed to setup VMK manager for locationID", buf, 2u);
    }
  }

  v16 = ULService::registeredContextLayers(this);
  v17 = [*(a1 + 768) getAnchors];
  ULServiceManager::fetchAndProcessVMKLabelsForLocation(a1, a3, v16, &v24, v17, buf);

  v19 = v24;
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  ULModelLoader::convertMapLabelsToMapItems(buf, v26);
  ULService::updateModel(this, &v19, v26);
  v25 = COERCE_DOUBLE(v26);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  v26[0] = buf;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](v26);

  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_259158C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void ULServiceManager::beginSpecatatingTransaction(ULServiceManager *this)
{
  if ((*(this + 866) & 1) == 0)
  {
    v2 = +[ULTransactionManager shared];
    [v2 beginTransaction:@"com.apple.milod.spectating"];

    *(this + 866) = 1;
  }
}

void ULServiceManager::endSpecatatingTransaction(ULServiceManager *this)
{
  if (*(this + 866) == 1)
  {
    v2 = +[ULTransactionManager shared];
    [v2 endTransaction:@"com.apple.milod.spectating"];

    *(this + 866) = 0;
  }
}

void ULServiceManager::fetchAndProcessVMKLabelsForLocation(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v39 = a6;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v13)
  {
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [v16 uniqueIdentifier];
        v18 = v17 == 0;

        if (!v18)
        {
          v19 = [v16 uniqueIdentifier];
          [v11 setObject:v16 forKeyedSubscript:v19];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v13);
  }

  v20 = (*(**(a1 + 200) + 48))(*(a1 + 200));
  v21 = v20;
  if (v20)
  {
    [v20 fetchLabelsWithLOIGroupUUID:a2 + 8 andContextLayers:a3 limit:0 ascending:0];
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  *v39 = 0;
  v39[1] = 0;
  v39[2] = 0;
  v40 = v44;
  if (v43 != v44)
  {
    v22 = v43 + 40;
    do
    {
      if (*(v22 - 8) == 1)
      {
        v23 = [MEMORY[0x277CCAD78] fromBoostUUID:v22 - 24];
        if (v23)
        {
          v24 = [v11 objectForKeyedSubscript:v23];
          v25 = v24;
          if (v24)
          {
            v26 = [v24 location];
            [v26 coordinates];
            LODWORD(v41) = v27;
            v28 = [v25 location];
            [v28 coordinates];
            HIDWORD(v41) = v29;
            v30 = [v25 location];
            [v30 coordinates];
            v31 = v22 - 40;
            v42 = v32;
            v33 = *a4;
            v34 = v39[1];
            if (v34 >= v39[2])
            {
              v35 = std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &>(v39, &v41, &std::nullopt, &std::nullopt, v22, v31, v33 + 536);
            }

            else
            {
              std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(v39[1], &v41, &std::nullopt, &std::nullopt, v22, v31, v33 + 536);
              v35 = v34 + 232;
            }

            v39[1] = v35;
          }
        }
      }

      v36 = v22 + 96;
      v22 += 136;
    }

    while (v36 != v40);
  }

  v41 = &v43;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v41);

  v37 = *MEMORY[0x277D85DE8];
}