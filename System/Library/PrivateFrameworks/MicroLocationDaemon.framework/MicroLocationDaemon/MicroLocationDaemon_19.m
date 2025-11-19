void ULServiceManager::updateAllModels(ULServiceManager *this)
{
  v2 = +[ULTransactionManager shared];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN16ULServiceManager15updateAllModelsEv_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = this;
  [v2 performUnderTransaction:@"com.apple.locationd.microlocation-update-all-models" block:v4];

  std::__optional_destruct_base<ULScanningEventDO,false>::reset[abi:ne200100](this + 360);
  (*(**(this + 13) + 24))(*(this + 13));
  ULServiceManager::createAggregatedRequirements(this);
  *(this + 180) = 0;
  v3 = (*(**(this + 25) + 128))(*(this + 25));
  [v3 flushStoreBuffer];
}

void ___ZN16ULServiceManager15updateAllModelsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  for (i = v1[20].var0; i != &v1[19]; i = i[1].var0)
  {
    ULServiceManager::enterLocationPerService(v1, &i[2], v1 + 27);
  }
}

void ULServiceManager::onLocalizationRequest(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) != 0 || (*(a1 + 632) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "Requesting a scan since there is no cached scan event", buf, 2u);
    }

    (*(**(a1 + 96) + 32))(*(a1 + 96), a4);
    *a5 = 0;
    a5[120] = 0;
    goto LABEL_30;
  }

  v9 = *(a3 + 8);
  *buf = *a3;
  *&buf[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v21, 0, sizeof(v21));
  std::vector<std::shared_ptr<ULModelAndStates>>::__init_with_size[abi:ne200100]<std::shared_ptr<ULModelAndStates> const*,std::shared_ptr<ULModelAndStates> const*>(v21, buf, &v24, 1uLL);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v19 = 0uLL;
  v20 = 0;
  if (ULModelAndStates::acceptsIOLocalization(*a3))
  {
    v10 = *(a1 + 88);
    v11 = [ULOdometryStatus alloc];
    [*(a1 + 712) getThisDeviceClass];
    v12 = ULDeviceClassToString();
    v13 = *(a1 + 72);
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(ULOdometryStatus *)v11 initWithDeviceIdentifier:v12 odometrySourceType:v13 deltaPositionX:&unk_286A722B8 deltaPositionY:&unk_286A722B8 deltaPositionZ:&unk_286A722B8 date:v14];
    (*(*v10 + 24))(buf, v10, v21, v15, 0);
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vdeallocate(&v19);
    v19 = *buf;
    v20 = v24;
    v24 = 0;
    v22 = buf;
    memset(buf, 0, sizeof(buf));
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  else
  {
    if ((*(a1 + 632) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    (*(**(a1 + 88) + 32))(buf);
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vdeallocate(&v19);
    v19 = *buf;
    v20 = v24;
    v24 = 0;
    v22 = buf;
    memset(buf, 0, sizeof(buf));
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  if (*(&v19 + 1) - v19 == 40)
  {
    v22 = [*(a1 + 712) getTrackedDeviceClass];
    if (std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::find<ULDeviceClass>(v19, &v22))
    {
      v17 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(v19, &v22);
      if (!v17)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }
    }

    else
    {
      v17 = *(v19 + 16);
    }

    std::__optional_copy_base<ULLocalizationResult,false>::__optional_copy_base[abi:ne200100](buf, (v17 + 3));
    ULServiceManager::adjustLocalizationResultBasedOnPDRFenceForLabel(a1, a3, buf, a5);
    if (v30 == 1)
    {
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v25 == 1)
      {
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }
    }

    *buf = &v19;
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v21;
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_30:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  ULServiceManager::onLocalizationRequest(buf);

  abort_report_np();
  __break(1u);
}

void sub_2591596C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a13;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a17;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t ULServiceManager::onSendPredictionResultsToClient(ULServiceManager *this, const uuid *a2, const uuid *a3, const ULLocalizationResult *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = ULServiceManagerBiDirectionalUuidMap::lookupByKey((this + 176), a2, v11);
  if ((v11[16] & 1) == 0)
  {
    ULServiceManager::onSendPredictionResultsToClient(v8);
  }

  result = (*(**(this + 30) + 48))(*(this + 30), a2, a3, a4, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *ULServiceManagerBiDirectionalUuidMap::lookupByKey@<X0>(ULServiceManagerBiDirectionalUuidMap *this@<X0>, const uuid *a2@<X1>, _BYTE *a3@<X8>)
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
      v6 = *(v4 + 25) == *a2->data && *(v4 + 33) == *&a2->data[8];
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

    *a3 = *(v4 + 41);
    v9 = 1;
  }

  a3[16] = v9;
  return result;
}

uint64_t ULServiceManager::onSendRequestResponseToClient(uint64_t a1, const uuid *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = ULServiceManagerBiDirectionalUuidMap::lookupByKey((a1 + 176), a2, v11);
  if ((v11[16] & 1) == 0)
  {
    ULServiceManager::onSendRequestResponseToClient(v8);
  }

  result = (*(**(a1 + 240) + 24))(*(a1 + 240), a2, a3, a4, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULServiceManager::onSendRecordingMetaInfoToClient(uint64_t a1, const uuid *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = ULServiceManagerBiDirectionalUuidMap::lookupByKey((a1 + 176), a2, v11);
  if ((v11[16] & 1) == 0)
  {
    ULServiceManager::onSendRecordingMetaInfoToClient(v8);
  }

  result = (*(**(a1 + 240) + 32))(*(a1 + 240), a2, a3, a4, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULServiceManager::onSendPredictionMetaInfoToClient(uint64_t a1, const uuid *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = ULServiceManagerBiDirectionalUuidMap::lookupByKey((a1 + 176), a2, v11);
  if ((v11[16] & 1) == 0)
  {
    ULServiceManager::onSendPredictionMetaInfoToClient(v8);
  }

  result = (*(**(a1 + 240) + 40))(*(a1 + 240), a2, a3, a4, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULServiceManager::onSendGenericEventResponseToClient(uint64_t a1, const uuid *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = ULServiceManagerBiDirectionalUuidMap::lookupByKey((a1 + 176), a2, v10);
  if ((v10[16] & 1) == 0)
  {
    ULServiceManager::onSendGenericEventResponseToClient(v7);
  }

  result = (*(**(a1 + 240) + 56))(*(a1 + 240), a3, a4, v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ULServiceManager::onSendStatusToClient(uint64_t a1, const uuid *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = ULServiceManagerBiDirectionalUuidMap::lookupByKey((a1 + 176), a2 + 2, v7);
  if ((v7[16] & 1) == 0)
  {
    ULServiceManager::onSendStatusToClient(v4);
  }

  result = (*(**(a1 + 240) + 16))(*(a1 + 240), a2, v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void ULServiceManager::didEnableMiLoAtCurrentLocation(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 328))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 328) != 0;
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18[0] = v5;
      LOWORD(v18[1]) = 1026;
      *(&v18[1] + 2) = a2 == -1;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager releasing create custom LOI at current location requests: , NumRequests:%{public}hhd, Success:%{public}hhd}", buf, 0x1Eu);
    }

    while (*(a1 + 328))
    {
      v6 = (*(*(a1 + 296) + ((*(a1 + 320) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 320));
      v12 = *v6;
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManager::runWithConfiguration();
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      if (a2 == -1)
      {
        v8 = ULServiceManager::loadedServiceByConnectionToken(a1, *v6);
        if (v9)
        {
          ULService::sendInitialBlueAtlasPrediction(v8);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          ULServiceManager::runWithConfiguration();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "starting custom LOI recording scan", buf, 2u);
        }

        (*(**(a1 + 104) + 16))(*(a1 + 104));
        ULServiceManager::createAggregatedRequirements(a1);
      }

      (*(**(a1 + 240) + 64))(*(a1 + 240), a2, &v12);
      *(a1 + 320) = vaddq_s64(*(a1 + 320), xmmword_259220430);
      std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__maybe_remove_front_spare[abi:ne200100](a1 + 288, 1);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_259159F78(_Unwind_Exception *a1)
{
  operator delete(v2);

  _Unwind_Resume(a1);
}

BOOL ULServiceManager::requestMicroLocationLearning(ULServiceManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, const uuid *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  *v14.data = a3;
  *&v14.data[8] = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  v8 = ULServiceManager::loadedServiceByConnectionToken(a1, v14);
  if (v9)
  {
    result = ULService::requestMicroLocationLearning(v8, a5);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "#requestMicroLocationLearning, can't load service for connectionToken, possibly not connected to a service", &v13, 2u);
    }

    ULService::ServiceDescriptor::ServiceDescriptor(&v13);
    (*(**(a1 + 30) + 24))(*(a1 + 30), &v13, a5, 10, &v14);
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25915A1D4(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);

  _Unwind_Resume(a1);
}

_BYTE *ULServiceManager::onLearningCompleted(_BYTE *this)
{
  v1 = this + 152;
  v2 = *(this + 20);
  if (v2 != this + 152)
  {
    v3 = this;
    do
    {
      ULServiceManager::updateServiceLastActiveTime(v3, (v2 + 16));
      this = ULService::onLearningCompleted((v2 + 16));
      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }

  return this;
}

void ULServiceManager::logState(ULServiceManager *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = this + 152;
  v2 = *(this + 20);
  if (v2 != this + 152)
  {
    do
    {
      ULService::getCurrentStatus((v2 + 16), &v6);
      if (v13 == 1)
      {
        v3 = v12;
        v12 = 0;
        if (v3)
        {
          v5 = (v3 + 80);
          std::vector<std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>>::__destroy_vector::operator()[abi:ne200100](&v5);
          v5 = (v3 + 56);
          std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
          MEMORY[0x259CA1F90](v3, 0x1020C40B3163EAALL);
        }

        v5 = &v11;
        std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      v5 = &v10;
      std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v5);
      v5 = &v9;
      std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v5);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      v2 = *(v2 + 1);
    }

    while (v2 != v1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t ULServiceManager::onLocalizationStart(uint64_t this, uuid a2)
{
  v2 = *(this + 160);
  if (v2 != this + 152)
  {
    ULService::onLocalizationStart((v2 + 16), a2);
  }

  return this;
}

uint64_t non-virtual thunk toULServiceManager::onLocalizationStart(uint64_t this, uuid a2)
{
  v2 = *(this + 152);
  if (v2 != this + 144)
  {
    ULService::onLocalizationStart((v2 + 16), a2);
  }

  return this;
}

uint64_t ULServiceManager::triggerLearning(ULServiceManager *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager::triggerLearning}", v5, 0x12u);
  }

  result = (*(*(*(this + 30) + 8) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ULServiceManager::processConnectionRequestsAwaitingDb(ULServiceManager *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(this + 42);
  v2 = *(this + 43);
  if (v3 != v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 43) - *(this + 42)) >> 4);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v11 = 2050;
      v12 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager releasing pending connection requests: , NumRequests:%{public}lu}", buf, 0x1Cu);
    }

    v3 = *(this + 42);
    v2 = *(this + 43);
  }

  if (v3 != v2)
  {
    do
    {
      v6 = *(v3 + 24);
      v7 = *(v3 + 32);
      *buf = *(v3 + 40);
      buf[16] = *(v3 + 56);
      (*(*this + 136))(this, v3, v6, v7, buf, *(v3 + 57), *(v3 + 65), *(v3 + 80), v3 + 88);
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *>(buf, (v3 + 112), *(this + 43), v3);
      std::vector<ULServiceManagerConnectionRequestParams>::__base_destruct_at_end[abi:ne200100](this + 336, v8);
    }

    while (v3 != *(this + 43));
  }

  v9 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::removePendingConnectionRequestsByConnectionToken(ULServiceManager *this, uuid a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(this + 42);
  v3 = *(this + 43);
  v22 = *a2.data;
  *v23 = *&a2.data[8];
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4;
    while (*(v4 + 57) != v22 || *(v4 + 65) != *v23)
    {
      v4 += 112;
      v6 += 112;
      if (v4 == v3)
      {
        v8 = v3;
        goto LABEL_28;
      }
    }
  }

  v9 = (v4 + 112);
  if (v6 == v3 || v9 == v3)
  {
    v8 = v3;
  }

  else
  {
    do
    {
      if (*(v9 + 57) != v22 || *(v9 + 65) != *v23)
      {
        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        v12 = *v9;
        *(v4 + 16) = *(v9 + 2);
        *v4 = v12;
        *(v9 + 23) = 0;
        *v9 = 0;
        v13 = *(v9 + 24);
        v14 = *(v9 + 40);
        v15 = *(v9 + 56);
        *(v4 + 72) = *(v9 + 72);
        *(v4 + 56) = v15;
        *(v4 + 40) = v14;
        *(v4 + 24) = v13;
        v16 = *(v9 + 10);
        *(v9 + 10) = 0;
        v17 = *(v4 + 80);
        *(v4 + 80) = v16;

        if (*(v4 + 111) < 0)
        {
          operator delete(*(v4 + 88));
        }

        v18 = *(v9 + 88);
        *(v4 + 104) = *(v9 + 13);
        *(v4 + 88) = v18;
        *(v9 + 111) = 0;
        *(v9 + 88) = 0;
        v4 += 112;
      }

      v9 += 7;
    }

    while (v9 != v3);
    v8 = *(this + 43);
  }

  v3 = v4;
LABEL_28:
  std::vector<ULServiceManagerConnectionRequestParams>::erase(this + 336, v3, v8);
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 4) - 0x6DB6DB6DB6DB6DB7 * ((*(this + 43) - *(this + 42)) >> 4);
    v22 = 68289282;
    *v23 = 2082;
    *&v23[2] = "";
    v24 = 2050;
    v25 = v20;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoServiceManager remove pending connection requests: , NumRequests removed:%{public}lu}", &v22, 0x1Cu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<ULServiceManagerConnectionRequestParams>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *>(&v7, a3, *(a1 + 8), a2);
    std::vector<ULServiceManagerConnectionRequestParams>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

id ___ZN16ULServiceManager42migrateLegacyClientIdToClientIdIfNecessaryERNSt3__18optionalI11ULServiceDOEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t ULServiceManager::updateEnablement(ULServiceManager *this, BOOL *a2, BOOL a3)
{
  v5 = *(this + 14);
  v4 = this + 112;
  v7 = v5;
  v8 = v4[8];
  *a2 = a3;
  result = ULEnablement::operator==(v4, &v7);
  if ((result & 1) == 0)
  {
    return (*(*this + 232))(this);
  }

  return result;
}

uint64_t ULSettings::get<ULSettings::LabeledSpacePDRFenceRadiusInMeters>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLabeledSpacePDRFenceRadiusInMeters"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A722E8 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

void ULServiceManager::handlePDRFenceForLabel(ULServiceManager *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "[ULServiceManager]: handlePDRFenceForLabel", v9, 2u);
  }

  ULServiceManager::clearPDRFenceForLabel(this);
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearnModelOnLabeledSpacePDRFence"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v8 = v7;

  if (v8)
  {
    (*(*this + 96))(this);
  }
}

uint64_t ULServiceManager::clearPDRFenceForLabel(uint64_t this)
{
  if (*(this + 744) == 1)
  {
    v1 = this;
    if (onceToken_MicroLocation_Default != -1)
    {
      ULServiceManager::runWithConfiguration();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "[ULServiceManager]: clearPDRFenceForLabel", buf, 2u);
    }

    [*(v1 + 736) clearFence];
    [*(v1 + 736) endSession];
    *(v1 + 744) = 0;
    v4 = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(&v4);
    *(v1 + 745) = boost::uuids::random_generator_pure::operator()(&v4);
    *(v1 + 753) = v3;
    return boost::uuids::detail::random_provider_base::destroy(&v4);
  }

  return this;
}

void ULServiceManager::didUpdateLocation(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "[ULServiceManager]: didUpdateLocation with location: %@, anchors count: %@", buf, 0x16u);
  }

  if ([v6 count])
  {
    v9 = a1[16];
    v10 = a1[17];
    if (v9 != v10)
    {
      while ((ULModelAndStates::acceptsVMKLocalization(*v9) & 1) == 0)
      {
        v9 += 16;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      v10 = a1[17];
    }

    if (v9 != v10)
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v21 = v12;
      v22 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = a1[20];
      if (v13 != a1 + 19)
      {
        v17 = v5;
        do
        {
          ULService::getModelPtr((v13 + 2), buf);
          v14 = *buf;
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          if (v14 == v12)
          {
            v15 = ULService::registeredContextLayers((v13 + 2));
            ULServiceManager::fetchAndProcessVMKLabelsForLocation(a1, (a1 + 27), v15, &v21, v6, buf);
            v19 = v12;
            v20 = v11;
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ULModelLoader::convertMapLabelsToMapItems(buf, v18);
            ULService::updateModel((v13 + 2), &v19, v18);
            v23 = v18;
            std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v23);
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            }

            v18[0] = buf;
            std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](v18);
          }

          v13 = v13[1];
        }

        while (v13 != a1 + 19);
        v11 = v22;
        v5 = v17;
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  ULServiceManager::localize(a1, v5);

  v16 = *MEMORY[0x277D85DE8];
}

void ULServiceManager::onPeripheralAvailable(ULServiceManager *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "[ULServiceManager]: peripheral available", buf, 2u);
  }

  if (!*(this + 27))
  {
    v3 = *(this + 96);
    v4 = [MEMORY[0x277CCAD78] fromBoostUUID:this + 224];
    v8 = 0;
    [v3 setupFor:v4 error:&v8];
    v5 = v8;

    if (v5)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULServiceManager::runWithConfiguration();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "[ULServiceManager]: failed to setup VMK manager for locationID", v7, 2u);
      }
    }
  }
}

uint64_t ULServiceManager::onPeripheralUnavailable(id *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    ULServiceManager::runWithConfiguration();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "[ULServiceManager]: peripheral unavailable", v4, 2u);
  }

  return [this[96] teardown];
}

void ULServiceManager::~ULServiceManager(ULServiceManager *this)
{
  ULServiceManager::~ULServiceManager(this);

  JUMPOUT(0x259CA1F90);
}

{
  *this = &unk_286A5BCC0;
  *(this + 1) = &unk_286A5BE98;
  *(this + 2) = &unk_286A5BF70;
  *(this + 3) = &unk_286A5BFD8;
  *(this + 4) = &unk_286A5C000;
  *(this + 5) = &unk_286A5C038;
  *(this + 6) = &unk_286A5C070;
  *(this + 7) = &unk_286A5C098;
  *(this + 8) = &unk_286A5C0C0;

  v2 = *(this + 103);
  if (v2)
  {
    *(this + 104) = v2;
    operator delete(v2);
  }

  if (*(this + 704) == 1)
  {
    ULPowerAssertion::~ULPowerAssertion((this + 664));
  }

  if (*(this + 632) == 1)
  {
    v9 = (this + 560);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v9);
    v3 = *(this + 62);
    if (v3)
    {
      *(this + 63) = v3;
      operator delete(v3);
    }

    v4 = *(this + 59);
    if (v4)
    {
      *(this + 60) = v4;
      operator delete(v4);
    }

    v5 = *(this + 56);
    if (v5)
    {
      *(this + 57) = v5;
      operator delete(v5);
    }

    v9 = (this + 424);
    std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&v9);
    if (*(this + 399) < 0)
    {
      operator delete(*(this + 47));
    }
  }

  v9 = (this + 336);
  std::vector<ULServiceManagerConnectionRequestParams>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::~deque[abi:ne200100](this + 36);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(this + 248);
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(this + 176, *(this + 23));
  std::__list_imp<ULService>::clear(this + 19);
  v9 = (this + 128);
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

void non-virtual thunk toULServiceManager::~ULServiceManager(ULServiceManager *this)
{
  ULServiceManager::~ULServiceManager((this - 8));
}

{
  ULServiceManager::~ULServiceManager((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 16));
}

{
  ULServiceManager::~ULServiceManager((this - 16));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 24));
}

{
  ULServiceManager::~ULServiceManager((this - 24));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 32));
}

{
  ULServiceManager::~ULServiceManager((this - 32));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 40));
}

{
  ULServiceManager::~ULServiceManager((this - 40));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 48));
}

{
  ULServiceManager::~ULServiceManager((this - 48));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 56));
}

{
  ULServiceManager::~ULServiceManager((this - 56));

  JUMPOUT(0x259CA1F90);
}

{
  ULServiceManager::~ULServiceManager((this - 64));
}

{
  ULServiceManager::~ULServiceManager((this - 64));

  JUMPOUT(0x259CA1F90);
}

void std::vector<ULServiceManagerConnectionRequestParams>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULServiceManagerConnectionRequestParams>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULServiceManagerConnectionRequestParams>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(a1, i))
  {
    i -= 112;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<ULServiceManagerOutstandingEnableCustomLoiRequest *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<ULServiceManagerOutstandingEnableCustomLoiRequest *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__list_imp<ULService>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<ULService>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<ULService>::__delete_node[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 336);
  v4 = (a2 + 312);
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 288);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::deque<ULService::OutstandingRequest>::~deque[abi:ne200100]((a2 + 184));
  std::deque<ULService::OutstandingRequest>::~deque[abi:ne200100]((a2 + 136));
  v3 = *(a2 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  operator delete(a2);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_112()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::__optional_copy_base<ULServiceDO,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    if (*(a2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = *(a2 + 56);
    if (*(a2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
    }

    else
    {
      v6 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v6;
    }

    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_25915BC88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 88) == 1)
  {
    ULServiceDO::~ULServiceDO(v1);
  }

  _Unwind_Resume(exception_object);
}

void ULService::~ULService(ULService *this)
{
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 320);
  v3 = (this + 296);
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 272);
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::deque<ULService::OutstandingRequest>::~deque[abi:ne200100](this + 21);
  std::deque<ULService::OutstandingRequest>::~deque[abi:ne200100](this + 15);
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

uint64_t std::deque<ULService::OutstandingRequest>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 60;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 120;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<ULServiceManagerOutstandingEnableCustomLoiRequest *>::~__split_buffer(a1);
}

BOOL std::operator==[abi:ne200100]<ULWiFiChannelHistogram,std::allocator<ULWiFiChannelHistogram>>(int **a1, int **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v5 = *v3;
    v6 = v3[1];
    v3 += 2;
    v7 = *v4;
    v8 = v4[1];
    v4 += 2;
    result = v5 == v7 && v6 == v8;
  }

  while (result && v3 != v2);
  return result;
}

uint64_t std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__init_with_size[abi:ne200100]<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>> const*,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915BEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>> const*,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>> const*,std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_25915BF84(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ULLabelDO>::__init_with_size[abi:ne200100]<ULLabelDO const*,ULLabelDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULLabelDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915C010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

ULLabelDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULLabelDO>,ULLabelDO const*,ULLabelDO const*,ULLabelDO*>(uint64_t a1, ULLabelDO *a2, ULLabelDO *a3, ULLabelDO *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULLabelDO::ULLabelDO(v4, v6);
      v6 = (v6 + 128);
      v4 = (v11 + 128);
      v11 = (v11 + 128);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULLabelDO>,ULLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ULMapLabelDO>::__init_with_size[abi:ne200100]<ULMapLabelDO const*,ULMapLabelDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULMapLabelDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915C13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULMapLabelDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

ULMapLabelDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULMapLabelDO>,ULMapLabelDO const*,ULMapLabelDO const*,ULMapLabelDO*>(uint64_t a1, ULMapLabelDO *a2, ULMapLabelDO *a3, ULMapLabelDO *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v4, v6);
      v6 = (v6 + 232);
      v4 = (v11 + 232);
      v11 = (v11 + 232);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDO>,ULMapLabelDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ULScanningEventDO>::__init_with_size[abi:ne200100]<ULScanningEventDO const*,ULScanningEventDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULScanningEventDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915C2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULScanningEventDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULScanningEventDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

ULScanningEventDO *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULScanningEventDO>,ULScanningEventDO const*,ULScanningEventDO const*,ULScanningEventDO*>(uint64_t a1, ULScanningEventDO *a2, ULScanningEventDO *a3, ULScanningEventDO *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULScanningEventDO::ULScanningEventDO(v4, v6);
      v6 = (v6 + 272);
      v4 = (v11 + 272);
      v11 = (v11 + 272);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULScanningEventDO>,ULScanningEventDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::__optional_storage_base<ULScanningEventDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULScanningEventDO,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 272) == *(a2 + 272))
  {
    if (*(a1 + 272))
    {

      ULScanningEventDO::operator=(a1, a2);
    }
  }

  else if (*(a1 + 272))
  {

    std::__optional_destruct_base<ULScanningEventDO,false>::reset[abi:ne200100](a1);
  }

  else
  {
    *(ULScanningEventDO::ULScanningEventDO(a1) + 272) = 1;
  }
}

_BYTE *std::__optional_move_base<ULLocalizationResult,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[120] = 0;
  if (*(a2 + 120) == 1)
  {
    std::optional<ULLocalizationResult>::optional[abi:ne200100]<ULLocalizationResult,0>(a1, a2);
  }

  return a1;
}

void *std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<std::string &,boost::uuids::uuid &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,BOOL,CLMacAddress &,ULAssociatedStateDO::Band &,unsigned int &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v8 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v9)
  {
    v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v12 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v12 = v9;
  }

  v22 = a1;
  if (v12)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(a1, v12);
  }

  v19 = 0;
  v20 = 72 * v8;
  v21 = 72 * v8;
  ULAssociatedStateDO::ULAssociatedStateDO(72 * v8, a2, a3, a4, *a5, a6, *a7, *a8);
  *&v21 = 72 * v8 + 72;
  v13 = *(a1 + 8);
  v14 = 72 * v8 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(&v19);
  return v18;
}

void sub_25915C68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<std::string &,boost::uuids::uuid &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,BOOL,CLMacAddress,ULAssociatedStateDO::Band,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v8 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v9)
  {
    v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v12 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v12 = v9;
  }

  v22 = a1;
  if (v12)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(a1, v12);
  }

  v19 = 0;
  v20 = 72 * v8;
  v21 = 72 * v8;
  ULAssociatedStateDO::ULAssociatedStateDO(72 * v8, a2, a3, a4, *a5, a6, *a7, *a8);
  *&v21 = 72 * v8 + 72;
  v13 = *(a1 + 8);
  v14 = 72 * v8 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(&v19);
  return v18;
}

void sub_25915C81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULOdometryDO>::__init_with_size[abi:ne200100]<ULOdometryDO const*,ULOdometryDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULOdometryDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915C898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<ULModelAndStates> *,std::shared_ptr<ULModelAndStates> *,std::shared_ptr<ULModelAndStates> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<std::shared_ptr<ULModelAndStates>>::__init_with_size[abi:ne200100]<std::shared_ptr<ULModelAndStates> const*,std::shared_ptr<ULModelAndStates> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ULModelAndStates>>,std::shared_ptr<ULModelAndStates> const*,std::shared_ptr<ULModelAndStates> const*,std::shared_ptr<ULModelAndStates>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULModelAndStates>>,std::shared_ptr<ULModelAndStates>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULModelAndStates>>,std::shared_ptr<ULModelAndStates>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ULTrajectoryPoint>>,std::shared_ptr<ULTrajectoryPoint>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<ULMapLabelDO>::__emplace_back_slow_path<ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v8)
  {
    v8 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v11 = 0x11A7B9611A7B961;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDO>>(a1, v11);
  }

  v18 = 0;
  v19 = 232 * v7;
  std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(232 * v7, a2, a3, a4, a5, a6, a7);
  v20 = (232 * v7 + 232);
  v12 = *(a1 + 8);
  v13 = (232 * v7 + *a1 - v12);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDO>,ULMapLabelDO*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(&v18);
  return v17;
}

void sub_25915CBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULMapLabelDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  v15 = 1;
  LOBYTE(v11[0]) = 0;
  v12 = 0;
  LOBYTE(__p[0]) = 0;
  v10 = 0;
  ULMapLabelDO::ULMapLabelDO(a1, &v13, v11, __p, a5, a6, a7);
  if (v10 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12 == 1 && v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  return a1;
}

void sub_25915CC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (a12 == 1)
  {
    std::construct_at[abi:ne200100]<ULMapLabelDO,ULPointLocation,std::nullopt_t const&,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULLabelDO const&,boost::uuids::uuid &,ULMapLabelDO*>(&a9);
  }

  if (a16 == 1)
  {
    if (__p)
    {
      a14 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::~__hash_table(v3 - 40);
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

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *,ULServiceManagerConnectionRequestParams *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      v8 = *(v5 + 24);
      v9 = *(v5 + 40);
      v10 = *(v5 + 56);
      *(a4 + 72) = *(v5 + 72);
      *(a4 + 56) = v10;
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v11 = *(v5 + 10);
      *(v5 + 10) = 0;
      v12 = *(a4 + 80);
      *(a4 + 80) = v11;

      if (*(a4 + 111) < 0)
      {
        operator delete(*(a4 + 88));
      }

      v13 = *(v5 + 88);
      *(a4 + 104) = *(v5 + 13);
      *(a4 + 88) = v13;
      *(v5 + 111) = 0;
      *(v5 + 88) = 0;
      v5 += 7;
      a4 += 112;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<ULServiceManagerConnectionRequestParams>::__emplace_back_slow_path<ULServiceManagerConnectionRequestParams>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>>(a1, v6);
  }

  v7 = 112 * v2;
  v20 = 0;
  v21 = v7;
  *(&v22 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 56) = v11;
  *(v7 + 40) = v10;
  *(v7 + 24) = v9;
  v12 = *(a2 + 10);
  *(a2 + 10) = 0;
  *(v7 + 80) = v12;
  v13 = *(a2 + 88);
  *(v7 + 104) = *(a2 + 13);
  *(v7 + 88) = v13;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *&v22 = 112 * v2 + 112;
  v14 = a1[1];
  v15 = 112 * v2 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<ULServiceManagerConnectionRequestParams>::~__split_buffer(&v20);
  return v19;
}

void sub_25915CF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULServiceManagerConnectionRequestParams>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      v10 = *(v7 + 40);
      v11 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v11;
      *(a4 + 40) = v10;
      *(a4 + 24) = v9;
      v12 = *(v7 + 80);
      *(v7 + 80) = 0;
      *(a4 + 80) = v12;
      v13 = *(v7 + 88);
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 88) = v13;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 88) = 0;
      v7 += 112;
      a4 += 112;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(a1, v5);
      v5 += 112;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULServiceManagerConnectionRequestParams>,ULServiceManagerConnectionRequestParams*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 112;
      std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ULServiceManagerConnectionRequestParams>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ULServiceManagerConnectionRequestParams>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ULServiceManagerConnectionRequestParams>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 112;
    std::allocator_traits<std::allocator<ULServiceManagerConnectionRequestParams>>::destroy[abi:ne200100]<ULServiceManagerConnectionRequestParams,void,0>(v5, v4 - 112);
  }
}

void ULServiceManagerConnectionRequestParams::~ULServiceManagerConnectionRequestParams(void **this)
{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum const*,ULLocationTypeEnum const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915D2AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<ULServiceDO,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULServiceDO,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      *(a2 + 55) = 0;
      *(a2 + 32) = 0;
      *(a1 + 56) = *(a2 + 56);
      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      result = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = result;
      *(a2 + 87) = 0;
      *(a2 + 64) = 0;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v8;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = *(a2 + 56);
    result = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = result;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = 1;
  }

  return result;
}

void *std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
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
        v13 += 16;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::__erase_unique<ULDeviceClass>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,ULHomeSlamLocalizerState>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ULDeviceClass const,ULHomeSlamLocalizerState>,0>(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t ULService::ULService(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 136) = *(a2 + 17);
  v8 = *(a2 + 19);
  *(a1 + 144) = *(a2 + 18);
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a1 + 152) = v8;
  v9 = *(a2 + 21);
  *(a1 + 160) = *(a2 + 20);
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a1 + 168) = v9;
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 184) = *(a2 + 23);
  v10 = *(a2 + 25);
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a1 + 200) = v10;
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v11 = *(a2 + 216);
  v12 = *(a2 + 232);
  v13 = *(a2 + 33);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v12;
  *(a1 + 216) = v11;
  *(a1 + 264) = v13;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 304) = a2[19];
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a1 + 320, a2 + 40);
  return a1;
}

void sub_25915DA98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<ULContextLayerEnum,std::hash<ULContextLayerEnum>,std::equal_to<ULContextLayerEnum>,std::allocator<ULContextLayerEnum>>::__emplace_unique_key_args<ULContextLayerEnum,ULContextLayerEnum const&>(void *a1, unint64_t *a2)
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

__n128 std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

void *std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_25915DEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ULServiceManager::localize(ULScanningEventDO const&)::$_0,std::allocator<ULServiceManager::localize(ULScanningEventDO const&)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ULServiceManager::localize(ULVisualMappingKitLocation *)::$_0,std::allocator<ULServiceManager::localize(ULVisualMappingKitLocation *)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<ULDeviceClass,std::optional<ULLocalizationResult>>::unordered_map(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 136 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::__unordered_map_hasher<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::hash<ULDeviceClass>,std::equal_to<ULDeviceClass>,true>,std::__unordered_map_equal<ULDeviceClass,std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>,std::equal_to<ULDeviceClass>,std::hash<ULDeviceClass>,true>,std::allocator<std::__hash_value_type<ULDeviceClass,std::optional<ULLocalizationResult>>>>::__emplace_unique_key_args<ULDeviceClass,std::pair<ULDeviceClass const,std::optional<ULLocalizationResult>> const&>(a1, a2);
      a2 += 17;
      v5 -= 136;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__function::__func<ULServiceManager::onInvalidateLastScanEvent(void)::$_0,std::allocator<ULServiceManager::onInvalidateLastScanEvent(void)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULServiceManager::onIOD(ULOdometryStatus const*,NSError *)::$_0,std::allocator<ULServiceManager::onIOD(ULOdometryStatus const*,NSError *)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<ULModelAndStates>::__shared_ptr_emplace[abi:ne200100]<boost::uuids::uuid,ULVisualMappingKitModel,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,std::allocator<ULModelAndStates>,0>(void *a1, uint64_t a2, uint64_t a3, double *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286A5BC10;
  ULModelAndStates::ULModelAndStates(a1 + 3, *a4);
  return a1;
}

uint64_t std::__function::__func<ULServiceManager::modelByServiceType(ULServiceType)::$_0,std::allocator<ULServiceManager::modelByServiceType(ULServiceType)::$_0>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ULServiceManager::modelByServiceType(ULServiceType)::$_1,std::allocator<ULServiceManager::modelByServiceType(ULServiceType)::$_1>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25915E8C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<ULServiceManager::modelByServiceType(ULServiceType)::$_2,std::allocator<ULServiceManager::modelByServiceType(ULServiceType)::$_2>,BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<ULModelAndStates> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::deque<ULServiceManagerOutstandingEnableCustomLoiRequest>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
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
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t std::__tree<std::pair<boost::uuids::uuid,boost::uuids::uuid>>::__emplace_unique_key_args<std::pair<boost::uuids::uuid,boost::uuids::uuid>,std::pair<boost::uuids::uuid,boost::uuids::uuid>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::pair<boost::uuids::uuid,boost::uuids::uuid>>::__find_equal<std::pair<boost::uuids::uuid,boost::uuids::uuid>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::pair<boost::uuids::uuid,boost::uuids::uuid>>::__find_equal<std::pair<boost::uuids::uuid,boost::uuids::uuid>>(uint64_t a1, void *a2, unint64_t *a3)
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
        if ((std::operator<=>[abi:ne200100]<boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid>(a3, (v4 + 25)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid>((v7 + 25), a3) & 0x80) == 0)
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

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:ne200100]<boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid,boost::uuids::uuid>(unint64_t *a1, unint64_t *a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 != v3 || (v2 = bswap64(a1[1]), v3 = bswap64(a2[1]), v2 != v3))
  {
    v4 = v2 < v3 ? -1 : 1;
    if (v4 < 0)
    {
      return 255;
    }
  }

  v5 = bswap64(*a2);
  v6 = bswap64(*a1);
  if (v5 != v6 || (v5 = bswap64(a2[1]), v6 = bswap64(a1[1]), v5 != v6))
  {
    v7 = v5 < v6 ? -1 : 1;
    if ((v7 & 0x80000000) != 0)
    {
      return v7 >> 31;
    }
  }

  v8 = bswap64(a1[2]);
  v9 = bswap64(a2[2]);
  if (v8 != v9 || (v8 = bswap64(a1[3]), v9 = bswap64(a2[3]), v8 != v9))
  {
    v11 = v8 < v9 ? -1 : 1;
    if (v11 < 0)
    {
      return 255;
    }
  }

  v12 = bswap64(a2[2]);
  v13 = bswap64(a1[2]);
  if (v12 == v13 && (v12 = bswap64(a2[3]), v13 = bswap64(a1[3]), v12 == v13))
  {
    v7 = 0;
  }

  else if (v12 < v13)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7 >> 31;
}

unint64_t ULStaticTokenHelper::staticServiceTypeById(ULStaticTokenHelper *this, uuid a2)
{
  v109[2] = *MEMORY[0x277D85DE8];
  v109[0] = this;
  v109[1] = *a2.data;
  v2 = [@"00000000-0000-0000-0000-000000000001" UTF8String];
  v3 = strlen(v2);
  v108[0] = boost::uuids::string_generator::operator()<char const*>(&v106, v2, &v2[v3]);
  v108[1] = v4;
  v108[2] = 4;
  v5 = [@"00000000-0000-0000-0000-000000000002" UTF8String];
  v6 = strlen(v5);
  v108[3] = boost::uuids::string_generator::operator()<char const*>(&v105, v5, &v5[v6]);
  v108[4] = v7;
  v108[5] = 4;
  v8 = [@"00000000-0000-0000-0000-000000000003" UTF8String];
  v9 = strlen(v8);
  v108[6] = boost::uuids::string_generator::operator()<char const*>(&v104, v8, &v8[v9]);
  v108[7] = v10;
  v108[8] = 4;
  v11 = [@"00000000-0000-0000-0000-000000000004" UTF8String];
  v12 = strlen(v11);
  v108[9] = boost::uuids::string_generator::operator()<char const*>(&v103, v11, &v11[v12]);
  v108[10] = v13;
  v108[11] = 4;
  v14 = [@"00000000-0000-0000-0000-000000000005" UTF8String];
  v15 = strlen(v14);
  v108[12] = boost::uuids::string_generator::operator()<char const*>(&v102, v14, &v14[v15]);
  v108[13] = v16;
  v108[14] = 4;
  v17 = [@"00000000-0000-0000-0000-000000000006" UTF8String];
  v18 = strlen(v17);
  v108[15] = boost::uuids::string_generator::operator()<char const*>(&v101, v17, &v17[v18]);
  v108[16] = v19;
  v108[17] = 4;
  v20 = [@"00000000-0000-0000-0000-000000000007" UTF8String];
  v21 = strlen(v20);
  v108[18] = boost::uuids::string_generator::operator()<char const*>(&v100, v20, &v20[v21]);
  v108[19] = v22;
  v108[20] = 4;
  v23 = [@"00000000-0000-0000-0000-000000000008" UTF8String];
  v24 = strlen(v23);
  v108[21] = boost::uuids::string_generator::operator()<char const*>(&v99, v23, &v23[v24]);
  v108[22] = v25;
  v108[23] = 4;
  v26 = [@"00000000-0000-0000-0000-000000000009" UTF8String];
  v27 = strlen(v26);
  v108[24] = boost::uuids::string_generator::operator()<char const*>(&v98, v26, &v26[v27]);
  v108[25] = v28;
  v108[26] = 4;
  v29 = [@"00000000-0000-0000-0000-000000000025" UTF8String];
  v30 = strlen(v29);
  v108[27] = boost::uuids::string_generator::operator()<char const*>(&v97, v29, &v29[v30]);
  v108[28] = v31;
  v108[29] = 4;
  v32 = [@"00000000-0000-0000-0000-000000000010" UTF8String];
  v33 = strlen(v32);
  v108[30] = boost::uuids::string_generator::operator()<char const*>(&v96, v32, &v32[v33]);
  v108[31] = v34;
  v108[32] = 4;
  v35 = [@"00000000-0000-0000-0000-000000000023" UTF8String];
  v36 = strlen(v35);
  v108[33] = boost::uuids::string_generator::operator()<char const*>(&v95, v35, &v35[v36]);
  v108[34] = v37;
  v108[35] = 4;
  v38 = [@"00000000-0000-0000-0000-000000000024" UTF8String];
  v39 = strlen(v38);
  v108[36] = boost::uuids::string_generator::operator()<char const*>(&v94, v38, &v38[v39]);
  v108[37] = v40;
  v108[38] = 4;
  v41 = [@"00000000-0000-0000-0000-000000000022" UTF8String];
  v42 = strlen(v41);
  v108[39] = boost::uuids::string_generator::operator()<char const*>(&v93, v41, &v41[v42]);
  v108[40] = v43;
  v108[41] = 4;
  v44 = [@"00000000-0000-0000-0000-000000000011" UTF8String];
  v45 = strlen(v44);
  v108[42] = boost::uuids::string_generator::operator()<char const*>(&v92, v44, &v44[v45]);
  v108[43] = v46;
  v108[44] = 4;
  v47 = [@"00000000-0000-0000-0000-000000000012" UTF8String];
  v48 = strlen(v47);
  v108[45] = boost::uuids::string_generator::operator()<char const*>(&v91, v47, &v47[v48]);
  v108[46] = v49;
  v108[47] = 1;
  v50 = [@"00000000-0000-0000-0000-000000000013" UTF8String];
  v51 = strlen(v50);
  v108[48] = boost::uuids::string_generator::operator()<char const*>(&v90, v50, &v50[v51]);
  v108[49] = v52;
  v108[50] = 2;
  v53 = [@"00000000-0000-0000-0000-000000000014" UTF8String];
  v54 = strlen(v53);
  v108[51] = boost::uuids::string_generator::operator()<char const*>(&v89, v53, &v53[v54]);
  v108[52] = v55;
  v108[53] = 3;
  v56 = [@"00000000-0000-0000-0000-000000000015" UTF8String];
  v57 = strlen(v56);
  v108[54] = boost::uuids::string_generator::operator()<char const*>(&v88, v56, &v56[v57]);
  v108[55] = v58;
  v108[56] = 4;
  v59 = [@"00000000-0000-0000-0000-000000000016" UTF8String];
  v60 = strlen(v59);
  v108[57] = boost::uuids::string_generator::operator()<char const*>(&v87, v59, &v59[v60]);
  v108[58] = v61;
  v108[59] = 1;
  v62 = [@"00000000-0000-0000-0000-000000000017" UTF8String];
  v63 = strlen(v62);
  v108[60] = boost::uuids::string_generator::operator()<char const*>(&v86, v62, &v62[v63]);
  v108[61] = v64;
  v108[62] = 4;
  v65 = [@"00000000-0000-0000-0000-000000000018" UTF8String];
  v66 = strlen(v65);
  v108[63] = boost::uuids::string_generator::operator()<char const*>(&v85, v65, &v65[v66]);
  v108[64] = v67;
  v108[65] = 4;
  v68 = [@"00000000-0000-0000-0000-000000000019" UTF8String];
  v69 = strlen(v68);
  v108[66] = boost::uuids::string_generator::operator()<char const*>(&v84, v68, &v68[v69]);
  v108[67] = v70;
  v108[68] = 1;
  v71 = [@"00000000-0000-0000-0000-000000000020" UTF8String];
  v72 = strlen(v71);
  v108[69] = boost::uuids::string_generator::operator()<char const*>(&v83, v71, &v71[v72]);
  v108[70] = v73;
  v108[71] = 4;
  v74 = [@"00000000-0000-0000-0000-000000000021" UTF8String];
  v75 = strlen(v74);
  v108[72] = boost::uuids::string_generator::operator()<char const*>(&v82, v74, &v74[v75]);
  v108[73] = v76;
  v108[74] = 4;
  std::unordered_map<boost::uuids::uuid,ULServiceType>::unordered_map(v107, v108, 25);
  v77 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v107, v109);
  if (v77)
  {
    v78 = v77[4] & 0xFFFFFFFFFFFFFF00;
    v79 = v77[4];
  }

  else
  {
    v79 = 0;
    v78 = 0;
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v107);
  v80 = *MEMORY[0x277D85DE8];
  return v78 | v79;
}

void sub_25915F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<boost::uuids::uuid,ULServiceType>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,ULServiceType>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,ULServiceType> const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,ULServiceType>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,ULServiceType>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,ULServiceType> const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
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
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void ULWifiHistogramLoader::loadWifiChannelHistogram(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, void **a5@<X8>)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v50[0] = a2;
  v50[1] = a3;
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    [v7 fetchMostRecentWifiHistogramAtLoiGroupId:v50 beforeTime:{0, 0}];
  }

  else
  {
    v49 = 0u;
    memset(v48, 0, sizeof(v48));
    v47 = 0u;
  }

  *buf = xmmword_259220BF0;
  v38 = xmmword_259220C00;
  v39 = xmmword_259220C10;
  v40 = xmmword_259220C20;
  *__src = xmmword_259220C30;
  v42 = xmmword_259220C40;
  *&v43 = 13;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(a5, buf, &v43 + 8, 0xDuLL);
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (*(a4 + 1) != 6)
    {
      goto LABEL_15;
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v9 != 6)
    {
      goto LABEL_15;
    }
  }

  v11 = *v10;
  v12 = v10[2];
  if (v11 == 1953723747 && v12 == 28015)
  {
    *buf = xmmword_259220BF0;
    v38 = xmmword_259220C00;
    v39 = xmmword_259220C10;
    v40 = xmmword_259220C20;
    *__src = xmmword_259220C30;
    v42 = xmmword_259220C40;
    v43 = xmmword_259220C50;
    v44 = xmmword_259220C60;
    v45[0] = xmmword_259220C70;
    v45[1] = xmmword_259220C80;
    v45[2] = xmmword_259220C90;
    v45[3] = xmmword_259220CA0;
    v45[4] = xmmword_259220CB0;
    std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(a5, buf, v46, 0x1AuLL);
  }

LABEL_15:
  if (BYTE8(v49) == 1)
  {
    ULWiFiChannelHistogramAnalyzer::histogramFromProtobuf(&v48[8], a4, buf);
    v14 = *a5;
    if (*a5)
    {
      a5[1] = v14;
      operator delete(v14);
    }

    *a5 = *buf;
    a5[2] = v38;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWifiHistogramLoader::loadWifiChannelHistogram();
  }

  v15 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "Reloaded wifi channel histogram", buf, 2u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULWifiHistogramLoader::loadWifiChannelHistogram();
  }

  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    v16 = *a5;
    v17 = a5[1];
    if (*a5 != v17)
    {
      do
      {
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "channel: ", 9);
        v19 = MEMORY[0x259CA1DC0](v18, *v16);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " count: ", 8);
        v21 = MEMORY[0x259CA1DC0](v20, v16[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
        v16 += 2;
      }

      while (v16 != v17);
    }

    if ((BYTE8(v44) & 0x10) != 0)
    {
      v23 = v44;
      if (v44 < __src[1])
      {
        *&v44 = __src[1];
        v23 = __src[1];
      }

      v24 = __src[0];
    }

    else
    {
      if ((BYTE8(v44) & 8) == 0)
      {
        v22 = 0;
        v30 = 0;
LABEL_41:
        *(&__dst + v22) = 0;
        if (onceToken_MicroLocation_Default != -1)
        {
          ULWifiHistogramLoader::loadWifiChannelHistogram();
        }

        v25 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
        {
          p_dst = &__dst;
          if (v30 < 0)
          {
            p_dst = __dst;
          }

          *v31 = 68289283;
          v32 = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2081;
          v36 = p_dst;
          _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wifi channel histogram:, Histogram:%{private, location:escape_only}s}", v31, 0x1Cu);
        }

        if (v30 < 0)
        {
          operator delete(__dst);
        }

        *buf = *MEMORY[0x277D82818];
        v27 = *(MEMORY[0x277D82818] + 72);
        *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
        *&v38 = v27;
        *(&v38 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v43) < 0)
        {
          operator delete(*(&v42 + 1));
        }

        *(&v38 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v39);
        std::iostream::~basic_iostream();
        MEMORY[0x259CA1EE0](v45);
        goto LABEL_52;
      }

      v24 = *(&v39 + 1);
      v23 = *(&v40 + 1);
    }

    v22 = v23 - v24;
    if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v30 = v23 - v24;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_41;
  }

LABEL_52:
  if (BYTE8(v49) == 1)
  {
    CLMicroLocationProto::WifiHistogram::~WifiHistogram(&v48[8]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_25915FC40(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  if (*(v3 - 136) == 1)
  {
    CLMicroLocationProto::WifiHistogram::~WifiHistogram((v3 - 184));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25915FD18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<ULWiFiChannelHistogram>::__assign_with_size[abi:ne200100]<ULWiFiChannelHistogram const*,ULWiFiChannelHistogram const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
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
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_113()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

id ULSettings::getFingerprintDistanceFunctionParamsForType(int a1)
{
  if (a1 <= 2)
  {
    if (a1 < 2)
    {
      v3 = MEMORY[0x277CBEC10];
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      v8 = +[ULDefaultsSingleton shared];
      v5 = [v8 defaultsDictionary];

      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWeightedEuclideanJaccardParams"];
      v7 = [v5 objectForKey:v6];
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v3 = &unk_286A734F8;
        goto LABEL_17;
      }

LABEL_15:
      v3 = v7;
      v7 = v3;
      goto LABEL_17;
    }

LABEL_21:
    FingerprintDistanceFunctionParamsForType = ULSettings::getFingerprintDistanceFunctionParamsForType();

    _Unwind_Resume(FingerprintDistanceFunctionParamsForType);
  }

  if (a1 == 3)
  {
    v9 = +[ULDefaultsSingleton shared];
    v5 = [v9 defaultsDictionary];

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxLikelihoodDistanceFunctionParams"];
    v7 = [v5 objectForKey:v6];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v3 = MEMORY[0x277CBEC10];
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a1 != 4)
  {
    goto LABEL_21;
  }

  v4 = +[ULDefaultsSingleton shared];
  v5 = [v4 defaultsDictionary];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWeightedEuclideanJaccardIndicativeAPsParams"];
  v7 = [v5 objectForKey:v6];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }
  }

  v3 = &unk_286A73610;
LABEL_17:

LABEL_18:

  return v3;
}

void ULSettings::refresh(ULSettings *this)
{
  v1 = +[ULDefaultsSingleton shared];
  [v1 refresh];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_114()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULDiskUtils::removeAllTrackedTempFiles(ULDiskUtils *this)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULDiskUtils::removeAllTrackedTempFiles();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Tracked temp file cleanup}", buf, 0x12u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = tempFilePaths;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v5)
  {
    v7 = *v24;
    *&v6 = 68289539;
    v21 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v22 = v4;
        v10 = [v1 removeItemAtPath:v9 error:{&v22, v21}];
        v11 = v22;

        v4 = v11;
        if (v10)
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            ULDiskUtils::removeAllTrackedTempFiles();
          }

          v12 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v9;
            v14 = [v9 UTF8String];
            *buf = 68289283;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2081;
            v32 = v14;
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Removed file:, FilePath:%{private, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_21;
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            ULDiskUtils::removeAllTrackedTempFiles();
          }

          v12 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v9;
            v16 = [v9 UTF8String];
            v17 = [v4 localizedDescription];
            v18 = v17;
            v19 = [v17 UTF8String];
            *buf = v21;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2081;
            v32 = v16;
            v33 = 2081;
            v34 = v19;
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Failed to remove file:, FilePath:%{private, location:escape_only}s, Error: :%{private, location:escape_only}s}", buf, 0x26u);
          }
        }

LABEL_21:
        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void ULDiskUtils::trackTempFileWithCleanup(ULDiskUtils *this, NSString *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = this;
  v3 = tempFilePaths;
  if (!tempFilePaths)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = tempFilePaths;
    tempFilePaths = v4;

    v3 = tempFilePaths;
  }

  [v3 addObject:v2];
  v6 = [tempFilePaths count];
  v7 = +[ULDefaultsSingleton shared];
  v8 = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSaveSensitiveImagesMaxCount"];
  v10 = [v8 objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 unsignedLongValue];
  }

  else
  {
    v11 = [&unk_286A723A8 unsignedLongValue];
  }

  v12 = v11;

  if (v6 > v12)
  {
    v13 = [tempFilePaths firstObject];
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    [v14 removeItemAtPath:v13 error:0];
    if (onceToken_MicroLocation_Default != -1)
    {
      ULDiskUtils::removeAllTrackedTempFiles();
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "[ULLearnedFeatures]: delete old file from disk: %@, ", &v17, 0xCu);
    }

    [tempFilePaths removeObjectAtIndex:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_115()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void ULPowerAssertion::~ULPowerAssertion(id *this)
{
  ULPowerAssertion::releaseOSTransaction(this);
  ULPowerAssertion::releasePowerAssertion(this);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t ULPowerAssertion::releaseOSTransaction(ULPowerAssertion *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = (this + 16);
  if (*(this + 39) < 0)
  {
    v1 = *v1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
  v3 = +[ULTransactionManager shared];
  [v3 endTransaction:v2];

  if (onceToken_MicroLocation_Default != -1)
  {
    ULPowerAssertion::releaseOSTransaction();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#pa release os transaction for %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_2591610B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

BOOL ULPowerAssertion::releasePowerAssertion(IOPMAssertionID *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!v2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULPowerAssertion::releaseOSTransaction();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = this + 4;
      if (*(this + 39) < 0)
      {
        v10 = *v10;
      }

      v15 = 136315138;
      *v16 = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "#pa power assertion ID is already null for %s", &v15, 0xCu);
    }

    goto LABEL_22;
  }

  v3 = IOPMAssertionRelease(v2);
  if (!v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULPowerAssertion::releaseOSTransaction();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *this;
      v13 = this + 4;
      if (*(this + 39) < 0)
      {
        v13 = *v13;
      }

      v15 = 67109378;
      *v16 = v12;
      *&v16[4] = 2080;
      *&v16[6] = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "#pa Successfully released powerAssertionId (%u) for %s", &v15, 0x12u);
    }

    *this = 0;
LABEL_22:
    result = 1;
    goto LABEL_23;
  }

  v4 = v3;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULPowerAssertion::releaseOSTransaction();
  }

  v5 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v7 = *this;
    v8 = this + 4;
    if (*(this + 39) < 0)
    {
      v8 = *v8;
    }

    v15 = 67109634;
    *v16 = v7;
    *&v16[4] = 2080;
    *&v16[6] = v8;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "#pa Failed to release powerAssertionId (%u) for %s, return value: 0x%x", &v15, 0x18u);
    result = 0;
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_116()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t ULThrottle::ULThrottle(uint64_t result, double a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_117()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *CLMicroLocationAnalytics::CLMicroLocationAnalytics(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  a1[1] = a3;
  v7[0] = &unk_286A5C6E0;
  v7[1] = a1;
  v7[3] = v7;
  v8[0] = &unk_286A5C770;
  v8[1] = a1;
  v8[3] = v8;
  v9[0] = &unk_286A5C7F0;
  v9[1] = a1;
  v9[3] = v9;
  v10[0] = &unk_286A5C870;
  v10[1] = a1;
  v10[3] = v10;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>((a1 + 2), v7, &v11, 4uLL);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](&v7[i]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2591614A0(_Unwind_Exception *a1)
{
  for (i = 96; i != -32; i -= 32)
  {
    std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v1 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationAnalytics::executeWorkItems(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  for (i = *(result + 24); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v7);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationAnalytics::analyzeAssociationState(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v18, a2);
    CLMicroLocationAnalytics::analyzeAssociationStateInternal(a1, v18, &v11);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v18);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v4 = logObject_MicroLocation_Default;
    v5 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
    v6 = v11;
    v7 = v12;
    if (v5)
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v12 - v11;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending CoreAnalytics com.apple.MicroLocation.AssociatedState, num events:%{public}lu}", buf, 0x1Cu);
    }

    for (; v6 != v7; ++v6)
    {
      v9 = *v6;
      AnalyticsSendEvent();
    }

    *buf = &v11;
    std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not analyzing associated state, since sending to core-analytics is disabled}", buf, 0x12u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_259161794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::AnalyticsSendEventEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsSendEventEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationAnalytics::analyzeAssociationStateInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    *buf_8 = 2082;
    *&buf_8[2] = "";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing associated state}", &buf, 0x12u);
  }

  v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v7 = v6;
  if (v6)
  {
    [v6 getAllDistinctAssociatedStateLoiIds];
  }

  else
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  if (v64 == v65)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzeAssociationState, no LOI IDs found}", &buf, 0x12u);
    }
  }

  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToAnalyzeAssociationState"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = [&unk_286A72408 intValue];
  }

  v14 = v13;

  v15 = [MEMORY[0x277CBEAA8] date];
  v62 = 0uLL;
  v63 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  ULSettings::get<ULSettings::AssociatedStateCALoiTypes>(&buf);
  v16 = buf;
  v17 = *buf_8;
  while (v16 != v17)
  {
    LOBYTE(p_buf) = 0;
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::string const&,BOOL>(&v60, v16);
    v16 += 3;
  }

  p_buf = &buf;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_buf);
  v59[0] = 0;
  v59[1] = 0;
  p_buf = v59;
  ULSettings::get<ULSettings::AssociatedStateCALoiTypes>(&buf);
  v18 = buf;
  v19 = *buf_8;
  while (v18 != v19)
  {
    LOBYTE(v55) = 0;
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::string const&,BOOL>(&p_buf, v18);
    v18 += 3;
  }

  v55 = &buf;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v55);
  v20 = v64;
  v21 = v65;
  if (v64 == v65)
  {
LABEL_64:
    v56 = 0;
    v57 = 0;
    v55 = &v56;
    LODWORD(buf) = 2;
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__emplace_unique_key_args<int,int,std::map<std::string,BOOL>&>(&v55, &buf);
    LODWORD(buf) = 5;
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__emplace_unique_key_args<int,int,std::map<std::string,BOOL>&>(&v55, &buf);
    v36 = v55;
    if (v55 != &v56)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&buf, "");
        v69 = 0;
        v70 = 0;
        *&buf_8[16] = 0;
        v37 = v36[5];
        if (v37 != v36 + 6)
        {
          do
          {
            if ((v37[7] & 1) == 0)
            {
              std::string::operator=(&buf, (v37 + 4));
              v38 = *(v36 + 8);
              v39 = std::string::basic_string[abi:ne200100]<0>(v48, "");
              v52 = CLMicroLocationAnalytics::createMetricDicts(v39, &buf, v38, v48);
              if (v49 < 0)
              {
                operator delete(v48[0]);
              }

              std::vector<NSMutableDictionary * {__strong}>::push_back[abi:ne200100](&v62, &v52);
            }

            v40 = v37[1];
            if (v40)
            {
              do
              {
                v41 = v40;
                v40 = *v40;
              }

              while (v40);
            }

            else
            {
              do
              {
                v41 = v37[2];
                v32 = *v41 == v37;
                v37 = v41;
              }

              while (!v32);
            }

            v37 = v41;
          }

          while (v41 != v36 + 6);
        }

        if ((buf_8[15] & 0x80000000) != 0)
        {
          operator delete(buf);
        }

        v42 = v36[1];
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = v36[2];
            v32 = *v43 == v36;
            v36 = v43;
          }

          while (!v32);
        }

        v36 = v43;
      }

      while (v43 != &v56);
    }

    *a3 = v62;
    *(a3 + 16) = v63;
    v63 = 0;
    v62 = 0uLL;
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(&v55, v56);
  }

  else
  {
    v46 = xmmword_25921C590;
    while (1)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      if (v14 >= 1)
      {
        break;
      }

      v51 = v20;
LABEL_57:
      if (v53 != v52)
      {
        CLMicroLocationAnalytics::analyzeAssociationStateInternal(std::function<BOOL ()(void)>)::$_2::operator()(&v51, &v52, &p_buf, &buf);
        if (v71 == 1)
        {
          operator new();
        }

        if ((v71 & 1) != 0 && (buf_8[15] & 0x80000000) != 0)
        {
          operator delete(buf);
        }
      }

      buf = &v52;
      std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
      buf = &v55;
      std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
      v20 += 16;
      if (v20 == v21)
      {
        goto LABEL_64;
      }
    }

    v22 = 0;
    while (1)
    {
      v23 = *(a2 + 24);
      if (!v23)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v23 + 48))(v23))
      {
        break;
      }

      CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v15, ~v22);
      v25 = v24;
      CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v15, -v22);
      v27 = v26;
      v28 = (*(**(a1 + 8) + 24))(*(a1 + 8));
      v29 = v28;
      if (v28)
      {
        [v28 fetchAllAssociatedStateBetweenTimes:v20 toTime:v25 atLoiGroupId:{v27, v46}];
      }

      else
      {
        buf = 0;
        *buf_8 = 0;
        *&buf_8[8] = 0;
      }

      v30 = *buf_8;
      v31 = buf;
      if (buf != *buf_8)
      {
        do
        {
          v32 = *(v31 + 48) == 1 && *(v31 + 64) == 2;
          if (v32)
          {
            std::vector<ULAssociatedStateDO>::push_back[abi:ne200100](&v55, v31);
          }

          v31 += 72;
        }

        while (v31 != v30);
        v34 = buf;
        v33 = *buf_8;
        while (v34 != v33)
        {
          if (*(v34 + 48) == 1 && *(v34 + 64) == 5)
          {
            std::vector<ULAssociatedStateDO>::push_back[abi:ne200100](&v52, v34);
          }

          v34 += 72;
        }
      }

      v50 = &buf;
      std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&v50);
      if (++v22 == v14)
      {
        v51 = v20;
        if (v56 != v55)
        {
          CLMicroLocationAnalytics::analyzeAssociationStateInternal(std::function<BOOL ()(void)>)::$_2::operator()(&v51, &v55, &v60, &buf);
          if (v71 == 1)
          {
            operator new();
          }

          if ((v71 & 1) != 0 && (buf_8[15] & 0x80000000) != 0)
          {
            operator delete(buf);
          }
        }

        goto LABEL_57;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v44 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289282;
      *buf_8 = 2082;
      *&buf_8[2] = "";
      *&buf_8[10] = 2082;
      *&buf_8[12] = "MicroLocationAnalytics";
      _os_log_impl(&dword_258FE9000, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzeAssociationState cancelled, Activity:%{public, location:escape_only}s}", &buf, 0x1Cu);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    buf = &v52;
    std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
    buf = &v55;
    std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100](&buf);
  }

  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&p_buf, v59[0]);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&v60, v61[0]);
  buf = &v62;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&buf);

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_259162208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char *a46, uint64_t a47, uint64_t a48, char *a49)
{
  if (*(v50 - 128) == 1 && *(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  *(v50 - 176) = &a39;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100]((v50 - 176));
  *(v50 - 176) = &a42;
  std::vector<ULAssociatedStateDO>::__destroy_vector::operator()[abi:ne200100]((v50 - 176));
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a45, a46);
  std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(&a48, a49);
  a48 = v50 - 224;
  std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a48);

  v52 = *(v50 - 200);
  if (v52)
  {
    *(v50 - 192) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

void ULSettings::get<ULSettings::AssociatedStateCALoiTypes>(std::vector<std::string> *a1@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAssociatedStateCALoiTypes"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    memset(&v13, 0, sizeof(v13));
    std::vector<std::string>::reserve(&v13, [v6 count]);
    v16 = 0u;
    v17 = 0u;
    memset(v15, 0, sizeof(v15));
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:v15 objects:v18 count:16];
    if (v8)
    {
      v9 = **&v15[16];
      do
      {
        v10 = 0;
        do
        {
          if (**&v15[16] != v9)
          {
            objc_enumerationMutation(v7);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v15[8] + 8 * v10) UTF8String]);
          std::vector<std::string>::push_back[abi:ne200100](&v13, &__p);
          if (SHIBYTE(__p.__end_cap_.__value_) < 0)
          {
            operator delete(__p.__begin_);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:v15 objects:v18 count:16];
      }

      while (v8);
    }

    *a1 = v13;
    memset(&v13, 0, sizeof(v13));
    v18[0] = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
  }

  else
  {
    memset(v15, 0, 24);
    memset(&__p, 0, sizeof(__p));
    std::vector<std::string>::reserve(&__p, 8uLL);
    for (i = 0; i != 8; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(v18, _ZGRN10ULSettings14SettingsTraitsINS_25AssociatedStateCALoiTypesEE12defaultValueE_[i]);
      std::vector<std::string>::push_back[abi:ne200100](&__p, v18);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    std::vector<std::string>::__vdeallocate(v15);
    *v15 = __p;
    memset(&__p, 0, sizeof(__p));
    v18[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
    *&a1->__begin_ = *v15;
    a1->__end_cap_.__value_ = *&v15[16];
    memset(v15, 0, 24);
    v18[0] = v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2591626FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  a13 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationAnalytics::analyzeAssociationStateInternal(std::function<BOOL ()(void)>)::$_2::operator()@<X0>(uint64_t result@<X0>, const void ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  if (v6 == *a2)
  {
    *a4 = 0;
    *(a4 + 48) = 0;
  }

  else
  {
    v8 = result;
    v27 = 0u;
    v28 = 0u;
    v29 = 1065353216;
    v24 = 0u;
    v25 = 0u;
    v26 = 1065353216;
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v27, v5);
      v9 = (v5 + 7);
      __p.__r_.__value_.__r.__words[0] = CLMacAddress::toUint64(v9);
      buf.__r_.__value_.__r.__words[0] = &__p;
      v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::set<int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v21, &__p);
      v9 = (v9 + 12);
      std::__tree<ULRecordingCompletionMetaInformation::RecordingError>::__emplace_unique_key_args<ULRecordingCompletionMetaInformation::RecordingError,ULRecordingCompletionMetaInformation::RecordingError>((v10 + 3), v9);
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v24, v9);
      v5 = (&v9->var0 + 4);
    }

    while (v5 != v6);
    if (*(&v28 + 1) <= 1uLL)
    {
      if (*(v28 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v28 + 16), *(v28 + 24));
      }

      else
      {
        __p = *(v28 + 16);
      }

      buf.__r_.__value_.__r.__words[0] = &__p;
      *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &__p.__r_.__value_.__l.__data_) + 56) = 1;
      v15 = v22;
      if (v22)
      {
        v16 = 0;
        do
        {
          if (v15[5] > 1uLL)
          {
            ++v16;
          }

          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(&v22 + 1);
      v18 = *(&v25 + 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      *&v31 = v17;
      *(&v31 + 1) = v18;
      *a4 = buf;
      *(a4 + 40) = v16;
      *(a4 + 24) = v31;
      *(a4 + 48) = 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *v8;
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v13 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v13))
      {
        v14 = *v8;
        operator new();
      }

      *a4 = 0;
      *(a4 + 48) = 0;
    }

    std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(&v21);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v24);
    result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v27);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259162C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<int,std::multiset<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::multiset<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::multiset<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::multiset<double>>>>::~__hash_table(&a16);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a22);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a28);
  _Unwind_Resume(a1);
}

id CLMicroLocationAnalytics::createMetricDicts(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [v7 setObject:v8 forKeyedSubscript:@"Band"];

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [v7 setObject:v10 forKeyedSubscript:@"rtLoiType"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2[3]];
  [v7 setObject:v11 forKeyedSubscript:@"NumberOfMacAddresses"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2[4]];
  [v7 setObject:v12 forKeyedSubscript:@"NumberOfChannels"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2[5]];
  [v7 setObject:v13 forKeyedSubscript:@"NumberOfMacAddressAppearingOnMultipleChannels"];

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    v21[0] = 68290563;
    v21[1] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2081;
    v25 = a4;
    v26 = 2082;
    v27 = v15;
    v28 = 1026;
    v29 = a3;
    v30 = 2050;
    v31 = v16;
    v32 = 2050;
    v33 = v17;
    v34 = 2050;
    v35 = v18;
    _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationAnalytics, analyzeAssociationState, rtGroupLoiId:%{private, location:escape_only}s, rtLoiType:%{public, location:escape_only}s, Band:%{public}d, numberOfMacAddresses:%{public}llu, NumberOfChannels:%{public}llu, NumberOfMacAddressAppearingOnMultipleChannels:%{public}llu}", v21, 0x4Au);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

id std::vector<NSMutableDictionary * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_25916302C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationAnalytics::analyzeLocationOfInterestUsage(CLMicroLocationAnalytics *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v41 = 2082;
    *&v41[2] = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing LOI usage}", buf, 0x12u);
  }

  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v5 + 48))(v5))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v6 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v41 = 2082;
        *&v41[2] = "";
        *&v41[10] = 2082;
        *&v41[12] = "MicroLocationAnalytics";
        v7 = "{msg%{public}.0s:LOI usage analytics canceled, Activity:%{public, location:escape_only}s}";
        v8 = v6;
        v9 = 28;
LABEL_16:
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else
    {
      v33 = CLMicroLocationAnalytics::createLoiVisitsEvent(a1);
      if (v33)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [@"com.apple.MicroLocation.Visit" UTF8String];
          *buf = 68289282;
          *&buf[4] = 0;
          *v41 = 2082;
          *&v41[2] = "";
          *&v41[10] = 2082;
          *&v41[12] = v12;
          _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending analytics event., Event name:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        AnalyticsSendEvent();
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      v13 = (*(**(a1 + 1) + 64))(*(a1 + 1));
      v14 = v13;
      if (v13)
      {
        [v13 fetchAllDistinctLoiGroups];
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
      }

      v15 = v34;
      v16 = v35;
      if (v34 == v35)
      {
LABEL_43:
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v26 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [@"com.apple.MicroLocation.Location" UTF8String];
          *buf = 68289538;
          *&buf[4] = 0;
          *v41 = 2082;
          *&v41[2] = "";
          *&v41[10] = 2082;
          *&v41[12] = v27;
          *&v41[20] = 2050;
          *&v41[22] = v38 - v37;
          _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending analytics events., Event name:%{public, location:escape_only}s, Number of events:%{public}lu}", buf, 0x26u);
        }

        v28 = v37;
        for (i = v38; v28 != i; ++v28)
        {
          v30 = *v28;
          AnalyticsSendEvent();
        }
      }

      else
      {
        while (1)
        {
          v17 = *(a2 + 24);
          if (!v17)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          if ((*(*v17 + 48))(v17))
          {
            break;
          }

          v18 = CLMicroLocationAnalytics::createLoiInformationEvent(a1, (v15 + 24));
          v19 = v18;
          if (v18)
          {
            v20 = v18;
            v21 = v38;
            if (v38 >= v39)
            {
              v23 = v38 - v37;
              if ((v23 + 1) >> 61)
              {
                std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
              }

              v24 = (v39 - v37) >> 2;
              if (v24 <= v23 + 1)
              {
                v24 = v23 + 1;
              }

              if (v39 - v37 >= 0x7FFFFFFFFFFFFFF8)
              {
                v25 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              *&v41[24] = &v37;
              if (v25)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float *>>(&v37, v25);
              }

              *buf = 0;
              *v41 = 8 * v23;
              *&v41[16] = 0;
              **v41 = v20;
              *&v41[8] = 8 * v23 + 8;
              std::vector<NSManagedObjectID * {__strong}>::__swap_out_circular_buffer(&v37, buf);
              v22 = v38;
              std::__split_buffer<NSManagedObjectID * {__strong}>::~__split_buffer(buf);
            }

            else
            {
              *v38 = v20;
              v22 = v21 + 1;
            }

            v38 = v22;
          }

          v15 += 64;
          if (v15 == v16)
          {
            goto LABEL_43;
          }
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v31 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *v41 = 2082;
          *&v41[2] = "";
          *&v41[10] = 2082;
          *&v41[12] = "MicroLocationAnalytics";
          _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI usage analytics canceled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
        }
      }

      *buf = &v34;
      std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v37;
      std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v41 = 2082;
      *&v41[2] = "";
      v7 = "{msg%{public}.0s:not analyzing Locations of Interest usage, since sending to core-analytics is disabled}";
      v8 = v10;
      v9 = 18;
      goto LABEL_16;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

id CLMicroLocationAnalytics::createLoiVisitsEvent(CLMicroLocationAnalytics *this)
{
  v44 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = [@"com.apple.MicroLocation.Visit" UTF8String];
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Creating analytics event., Event name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v3 = (*(**(this + 1) + 64))(*(this + 1));
  v4 = v3;
  if (v3)
  {
    [v3 fetchAllDistinctLoiGroups];
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  v6 = v38;
  v5 = v39;
  if (v38 == v39)
  {
    v8 = 0;
  }

  else
  {
    v7 = (v38 + 64);
    do
    {
      v8 = *(v7 - 40) == 0;
      v9 = *(v7 - 40) == 0 || v7 == v39;
      v7 += 4;
    }

    while (!v9);
    while (*(v6 + 24) != 0)
    {
      v6 += 64;
      if (v6 == v39)
      {
        v6 = v39;
        goto LABEL_28;
      }
    }

    if (v6 != v39)
    {
      v10 = v6 + 64;
      if ((v6 + 64) != v39)
      {
        do
        {
          *buf = 0;
          *&buf[8] = 0;
          if (*(v10 + 24) != 0)
          {
            v11 = *v10;
            v12 = *(v10 + 16);
            *(v6 + 32) = *(v10 + 32);
            *v6 = v11;
            *(v6 + 16) = v12;
            if (*(v6 + 63) < 0)
            {
              operator delete(*(v6 + 40));
            }

            v13 = *(v10 + 40);
            *(v6 + 56) = *(v10 + 56);
            *(v6 + 40) = v13;
            *(v10 + 63) = 0;
            *(v10 + 40) = 0;
            v6 += 64;
          }

          v10 += 64;
        }

        while (v10 != v5);
        v5 = v39;
      }
    }
  }

LABEL_28:
  std::vector<ULLoiDO>::erase(&v38, v6, v5);
  memset(buf, 0, sizeof(buf));
  v43 = 1065353216;
  v15 = v38;
  v14 = v39;
  if (v38 == v39)
  {
    v17 = v38;
  }

  else
  {
    do
    {
      __p[0] = (v15 + 40);
      v16 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(buf, (v15 + 40));
      v16[5] = v16[5] + 1;
      v15 += 64;
    }

    while (v15 != v14);
    v15 = v38;
    v17 = v39;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "home");
  v41 = __p;
  v18 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p)[5];
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "work");
  v41 = __p;
  v19 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p)[5];
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "airplay");
  v41 = __p;
  v20 = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p)[5];
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = (*(**(this + 1) + 64))(*(this + 1));
  v22 = [v21 count];
  v23 = (*(**(this + 1) + 64))(*(this + 1));
  v24 = [v23 countDistinctLoiGroups];

  v25 = [MEMORY[0x277CBEB38] dictionary];
  v26 = (v17 - v15) >> 6;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26];
  [v25 setObject:v27 forKeyedSubscript:@"loiCount"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v18];
  [v25 setObject:v28 forKeyedSubscript:@"loiHomeCount"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
  [v25 setObject:v29 forKeyedSubscript:@"loiWorkCount"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
  [v25 setObject:v30 forKeyedSubscript:@"loiAirplayCount"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v26 - v18];
  [v25 setObject:v31 forKeyedSubscript:@"loiNotHomeCount"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [v25 setObject:v32 forKeyedSubscript:@"hasLegacy"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v22 - v24)];
  [v25 setObject:v33 forKeyedSubscript:@"deduplicatedLoiCount"];

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(buf);
  *buf = &v38;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
  v34 = *MEMORY[0x277D85DE8];

  return v25;
}

id CLMicroLocationAnalytics::createLoiInformationEvent(CLMicroLocationAnalytics *this, const uuid *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  boost::lexical_cast<std::string,boost::uuids::uuid>(a2, &v70);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [@"com.apple.MicroLocation.Location" UTF8String];
    v6 = &v70;
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v70.__r_.__value_.__r.__words[0];
    }

    buf[0].__r_.__value_.__r.__words[0] = 68289538;
    LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
    *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v5;
    WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2082;
    *(buf[1].__r_.__value_.__r.__words + 6) = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Creating analytics event., Event name:%{public, location:escape_only}s, LOI Group ID:%{public, location:escape_only}s}", buf, 0x26u);
  }

  v7 = (*(**(this + 1) + 64))(*(this + 1));
  v8 = v7;
  if (v7)
  {
    [v7 fetchLoiIdEntriesInLoiGroupId:a2];
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
  }

  v10 = v67;
  v9 = v68;
  if (v68 == v67)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v37 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(a2, &v66);
      v38 = (v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v66 : v66.__r_.__value_.__r.__words[0];
      buf[0].__r_.__value_.__r.__words[0] = 68289282;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v38;
      _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:No LOI entries for specified LOI Group ID, LOIGroupId:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v39 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v39))
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>(a2, &v66);
      v40 = (v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v66 : v66.__r_.__value_.__r.__words[0];
      buf[0].__r_.__value_.__r.__words[0] = 68289282;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v40;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No LOI entries for specified LOI Group ID", "{msg%{public}.0s:No LOI entries for specified LOI Group ID, LOIGroupId:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }

    v41 = 0;
  }

  else
  {
    memset(&v66, 0, sizeof(v66));
    do
    {
      boost::lexical_cast<std::string,boost::uuids::uuid>((v10 + 1), buf);
      std::vector<std::string>::push_back[abi:ne200100](&v66, buf);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      v10 += 8;
    }

    while (v10 != v9);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
      v13 = v70.__r_.__value_.__r.__words[0];
      boost::algorithm::join<std::vector<std::string>,char [2]>(",", &v66, &__p);
      v14 = &v70;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((v65 & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      buf[0].__r_.__value_.__r.__words[0] = 68289538;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = "";
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2082;
      *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v14;
      WORD2(buf[1].__r_.__value_.__r.__words[0]) = 2082;
      *(buf[1].__r_.__value_.__r.__words + 6) = p_p;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LOIs for LOI Group Id, LOI Group ID:%{public, location:escape_only}s, LOI IDs:%{public, location:escape_only}s}", buf, 0x26u);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p);
      }
    }

    v16 = (*(**(this + 1) + 144))(*(this + 1));
    v17 = COERCE_DOUBLE([v16 getMostRecentScanTimeForLoiGroupId:a2]);
    v19 = v18;

    __p = 0;
    v64 = 0;
    v65 = 0;
    v20 = v67;
    v21 = v68;
    if (v67 == v68)
    {
      v34 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = *v20;
        if (v22 >= v65)
        {
          v24 = __p;
          v25 = v22 - __p;
          v26 = (v22 - __p) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v28 = v65 - __p;
          if ((v65 - __p) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__p, v29);
          }

          v30 = (v22 - __p) >> 3;
          v31 = (8 * v26);
          v32 = (8 * v26 - 8 * v30);
          *v31 = v23;
          v22 = (v31 + 1);
          memcpy(v32, v24, v25);
          v33 = __p;
          __p = v32;
          v64 = v22;
          v65 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v22 = v23;
          v22 += 8;
        }

        v64 = v22;
        v20 += 8;
      }

      while (v20 != v21);
      v34 = __p;
      v35 = (__p + 8);
      if (__p != v22 && v35 != v22)
      {
        v42 = *__p;
        v43 = (__p + 8);
        do
        {
          v44 = *v43++;
          v45 = v44;
          if (v42 < v44)
          {
            v42 = v45;
            v34 = v35;
          }

          v35 = v43;
        }

        while (v43 != v22);
      }
    }

    v46 = cl::chrono::CFAbsoluteTimeClock::now();
    v47 = (*(**(this + 1) + 80))(*(this + 1));
    v48 = v47;
    v71 = *a2;
    v72 = 1;
    if (v47)
    {
      [v47 fetchMostRecentModelOfModelType:0 atLoiGroupId:&v71];
    }

    else
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      *v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v41 = [MEMORY[0x277CBEB38] dictionary];
    if (a2->data[0])
    {
      v49 = 0;
    }

    else
    {
      v50 = 0;
      v51 = &a2->data[1];
      do
      {
        v52 = v50;
        if (v50 == 15)
        {
          break;
        }

        v53 = v51[v50++];
      }

      while (!v51[v52]);
      v49 = v52 > 0xE;
    }

    v54 = [MEMORY[0x277CCABB0] numberWithBool:v49];
    [v41 setObject:v54 forKeyedSubscript:@"isLoiLegacy"];

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:((v68 - v67) >> 6) - 1];
    [v41 setObject:v55 forKeyedSubscript:@"deduplicatedLoiCount"];

    if (v34 != v64)
    {
      v56 = [MEMORY[0x277CCABB0] numberWithDouble:v46 - *v34];
      [v41 setObject:v56 forKeyedSubscript:@"lastSeenAge"];
    }

    v57 = [MEMORY[0x277CCABB0] numberWithBool:v19 & 1];
    [v41 setObject:v57 forKeyedSubscript:@"hasRecordings"];

    if (v19)
    {
      v58 = [MEMORY[0x277CCABB0] numberWithDouble:v46 - v17];
      [v41 setObject:v58 forKeyedSubscript:@"lastRecordingAge"];
    }

    v59 = [MEMORY[0x277CCABB0] numberWithBool:v91];
    [v41 setObject:v59 forKeyedSubscript:@"isModelExists"];

    if (v91 == 1)
    {
      if (LODWORD(v86[0]))
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v60 = [MEMORY[0x277CCABB0] numberWithBool:BYTE8(v79)];
      [v41 setObject:v60 forKeyedSubscript:@"isModelStable"];
    }

    if (v91 == 1)
    {
      if (v88 == 1 && SHIBYTE(v87) < 0)
      {
        operator delete(v86[1]);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf[1].__r_.__value_.__r.__words[1]);
    }

    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    buf[0].__r_.__value_.__r.__words[0] = &v66;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  buf[0].__r_.__value_.__r.__words[0] = &v67;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  v61 = *MEMORY[0x277D85DE8];

  return v41;
}

void sub_259164588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a14 = &a17;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ULLoiDO>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULLoiDO *,ULLoiDO *,ULLoiDO *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 24));
        }

        v7 -= 64;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t *boost::algorithm::join<std::vector<std::string>,char [2]>@<X0>(char *__s@<X1>, uint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, a3, v8, &v8[v9], v9); ; result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    std::string::__insert_with_size<char const*,char const*>(a3, v11 + v12, __s, &__s[v13], v13);
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_25916485C(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationAnalytics::analyzeTriggerTypes(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzing daily trigger usage}", &v13, 0x12u);
    }

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v21, a2);
    v5 = CLMicroLocationAnalytics::analyzeTriggerTypesInternal(a1, v21);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v21);
    if (v5)
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if (!(*(*v6 + 48))(v6))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v10 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [@"com.apple.Microlocation.ScanEvents.daily" UTF8String];
          v13 = 68289539;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 2082;
          v18 = v11;
          v19 = 2113;
          v20 = v5;
          _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending analytics event, Event name:%{public, location:escape_only}s, event:%{private, location:escape_only}@}", &v13, 0x26u);
        }

        AnalyticsSendEvent();
        goto LABEL_27;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v7 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        goto LABEL_28;
      }

      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v8 = "{msg%{public}.0s:Trigger types analytics canceled}";
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v7 = logObject_MicroLocation_Default;
      if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v8 = "{msg%{public}.0s:daily trigger analytics event was not created.}";
    }

    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x12u);
    goto LABEL_27;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not analyzing trigger types, since sending to core-analytics is disabled}", &v13, 0x12u);
  }

LABEL_28:
  v12 = *MEMORY[0x277D85DE8];
}

id CLMicroLocationAnalytics::analyzeTriggerTypesInternal(uint64_t a1, uint64_t a2)
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] date];
  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v4, 0xFFFFFFFFLL);
  v6 = v5;
  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v4, 0);
  v8 = v7;
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnalyticsTriggerCountThreshold"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = [&unk_286A723D8 unsignedIntValue];
  }

  v14 = v13;

  v15 = *(a2 + 24);
  if (!v15)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v15 + 48))(v15))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v95 = 0;
      v96 = 2082;
      v97 = "";
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Trigger types analytics canceled}", buf, 0x12u);
    }

    v17 = 0;
  }

  else
  {
    v90 = v4;
    SpecificAnalyticsCount = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0, v6, v8);
    v92 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0, v6, v8);
    v88 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10000u, 0, 0, v6, v8);
    v87 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10001u, 0, 0, v6, v8);
    v19 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10002u, 0, 0, v6, v8);
    v89 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10000u, 0x10001u, 0, v6, v8);
    v93 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10002u, 0x10001u, 0, v6, v8);
    v20 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10001u, 0x10001u, 0, v6, v8);
    v86 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10002u, 0x10000u, 0, v6, v8);
    v85 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0x10005u, 0, 0, v6, v8);
    v84 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10005u, 0, 0, v6, v8);
    v83 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0x10006u, 0, 0, v6, v8);
    v82 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10006u, 0, 0, v6, v8);
    v81 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0x10003u, 0, 0, v6, v8);
    v80 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0x10003u, 0, 0, v6, v8);
    v79 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0, 0x10004u, 0, 0, v6, v8);
    v21 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0x10004u, v6, v8);
    v76 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0x10004u, v6, v8);
    v77 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0x10003u, v6, v8);
    v75 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0x10003u, v6, v8);
    v74 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10000u, 0, 0, 0x10002u, v6, v8);
    v73 = CLMicroLocationAnalytics::getSpecificAnalyticsCount(a1, 0x10001u, 0, 0, 0x10002u, v6, v8);
    v72 = v21;
    v78 = [ULHomeSlamAnalyticEventAnalyzer countEventOccurrences:20 fromDate:*(a1 + 8) untilDate:v6 fromDBStore:v8];
    v91 = v14;
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:14 andEvent:15 startDate:v22 endDate:v23 withDBStore:*(a1 + 8)];
    v25 = v24;

    v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:18 andEvent:19 startDate:v26 endDate:v27 withDBStore:*(a1 + 8)];
    v29 = v28;

    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    [ULHomeSlamAnalyticEventAnalyzer aggregateTimeBetweenEvent:16 andEvent:17 startDate:v30 endDate:v31 withDBStore:*(a1 + 8)];
    v33 = v32;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = v90;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:SpecificAnalyticsCount];
    [v17 setObject:v34 forKeyedSubscript:@"TotalRecordings"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v92];
    [v17 setObject:v35 forKeyedSubscript:@"TotalLocalizations"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
    [v17 setObject:v36 forKeyedSubscript:@"TotalStopMotionLocalizations"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v87 + v88 + v19];
    [v17 setObject:v37 forKeyedSubscript:@"TotalMotionLocalizations"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v89];
    [v17 setObject:v38 forKeyedSubscript:@"TotalStartMotionLocalizationsWhileDisplayOn"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v20];
    [v17 setObject:v39 forKeyedSubscript:@"TotalInMotionLocalizationsWhileDisplayOn"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v93];
    [v17 setObject:v40 forKeyedSubscript:@"TotalStopMotionLocalizationsWhileDisplayOn"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v93 + v89 + v20];
    [v17 setObject:v41 forKeyedSubscript:@"TotalMotionLocalizationsWhileDisplayOn"];

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v86];
    [v17 setObject:v42 forKeyedSubscript:@"TotalStopMotionLocalizationWhileDisplayOff"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v85];
    [v17 setObject:v43 forKeyedSubscript:@"TotalRecordingPeriodicTriggers"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v84];
    [v17 setObject:v44 forKeyedSubscript:@"TotalLocalizationPeriodicTriggers"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v83];
    [v17 setObject:v45 forKeyedSubscript:@"TotalRecordingSystemTriggers"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v82];
    [v17 setObject:v46 forKeyedSubscript:@"TotalLocalizationSystemTriggers"];

    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v81];
    [v17 setObject:v47 forKeyedSubscript:@"TotalRecordingClientRequestTriggers"];

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v80];
    [v17 setObject:v48 forKeyedSubscript:@"TotalLocalizationClientRequestTriggers"];

    v49 = [MEMORY[0x277CCABB0] numberWithInteger:v78];
    [v17 setObject:v49 forKeyedSubscript:@"TotalLocalizationsWhenDisplayTurnedOn"];

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v79];
    [v17 setObject:v50 forKeyedSubscript:@"TotalLocalizationsWhenRetried"];

    *&v51 = v33;
    v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
    [v17 setObject:v52 forKeyedSubscript:@"TotalAcceleratedTriggerDuration"];

    *&v53 = v25;
    v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
    [v17 setObject:v54 forKeyedSubscript:@"MotionDuration"];

    v55 = [MEMORY[0x277CCABB0] numberWithInt:v25];
    [v17 setObject:v55 forKeyedSubscript:@"MotionDurationBounded"];

    *&v56 = v29;
    v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
    [v17 setObject:v57 forKeyedSubscript:@"Duration"];

    v58 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    [v17 setObject:v58 forKeyedSubscript:@"DurationBounded"];

    v59 = [MEMORY[0x277CCABB0] numberWithBool:v25 > 0.0];
    [v17 setObject:v59 forKeyedSubscript:@"LowLatencyEnabled"];

    v60 = [MEMORY[0x277CCABB0] numberWithBool:v33 > 0.0];
    [v17 setObject:v60 forKeyedSubscript:@"AcceleratedTriggeringEnabled"];

    v62 = v92 + SpecificAnalyticsCount;
    if (v92 + SpecificAnalyticsCount >= v91)
    {
      v63 = v62;
      *&v61 = (v75 + v77) / v62;
      v64 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
      [v17 setObject:v64 forKeyedSubscript:@"ScanEventsWithWiFiErrorAndTotalScanEventsRatio"];

      *&v65 = (v73 + v74) / v63;
      v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
      [v17 setObject:v66 forKeyedSubscript:@"ScanEventsTimeoutAndTotalScanEventsRatio"];

      *&v67 = (v76 + v72) / v63;
      v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
      [v17 setObject:v68 forKeyedSubscript:@"ScanEventsAbortedAndTotalScanEventsRatio"];
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v69 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      v95 = 0;
      v96 = 2082;
      v97 = "";
      v98 = 1026;
      v99 = v91;
      v100 = 2050;
      v101 = v87 + v88 + v19;
      _os_log_impl(&dword_258FE9000, v69, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Adding ratios to trigger analytics if appropriate, TriggerThreshold:%{public}d, TotalMotionLocalizations:%{public}lu}", buf, 0x22u);
    }
  }

  v70 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t CLMicroLocationAnalytics::getSpecificAnalyticsCount(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, double a6, double a7)
{
  v13 = (*(**(a1 + 8) + 216))(*(a1 + 8));
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a6];
  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a7];
  if (v13)
  {
    [v13 fetchScanningServiceEventsForType:a2 triggerType:a3 displayState:a4 scanResult:a5 startDate:v14 endDate:v15];
    v16 = v19;
    v17 = v20;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return (v17 - v16) >> 4;
}

uint64_t CLMicroLocationAnalytics::generateWiFiChannelHistogramForBlueAtlas@<X0>(CLMicroLocationAnalytics *this@<X0>, uuid a2@<0:X1, 8:X2>, uint64_t a3@<X8>)
{
  v4 = *&a2.data[8];
  v75 = *MEMORY[0x277D85DE8];
  *&v74 = this;
  *(&v74 + 1) = *a2.data;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    operator new();
  }

  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  v7 = (*(*v4 + 80))(v4);
  v8 = v7;
  v63 = v74;
  v64 = 1;
  if (v7)
  {
    [v7 fetchMostRecentModelOfModelType:3 atLoiGroupId:&v63];
  }

  else
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(v67, 0, sizeof(v67));
    buf = 0u;
    v66 = 0u;
  }

  if (v73)
  {
    if (v68)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    CLMicroLocationModel::fromProtobuf(v67, v44, &__p);
    if ((v56 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      *a3 = 0;
      *(a3 + 24) = 0;
      goto LABEL_64;
    }

    v43[0] = 0;
    v43[1] = 0;
    v42 = v43;
    v9 = v54;
    v10 = v55;
    while (v9 != v10)
    {
      *v47 = *v9;
      *&v37[0] = CLMacAddress::toUint64(v47);
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(&v42, v37);
      ++v9;
    }

    v13 = (*(*v4 + 176))(v4);
    std::set<unsigned long long>::set[abi:ne200100](v47, &v42);
    LOBYTE(v51) = 1;
    if (v13)
    {
      [v13 getChannelsUsedByMeasurementsAtLoiGroupID:&v74 withSourceBSSIDinSet:v47 fromScanTime:0 toScanTime:{0, 0, 0}];
      if ((v51 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
    }

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v47, v48);
LABEL_29:

    memset(v37, 0, sizeof(v37));
    v38 = 1065353216;
    ULWiFiChannelHistogramAnalyzer::update(v37, &v39);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    if (ULWiFiChannelHistogramAnalyzer::isEmpty(v37))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationAnalytics::analyzeAssociationState();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      *a3 = 0;
      *(a3 + 24) = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v47, "custom");
      ULWiFiChannelHistogramAnalyzer::getHistogram(v37, v47, &v32);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*v47);
      }

      CLMicroLocationProto::WifiHistogram::WifiHistogram(v47);
      v15 = v32;
      v16 = v33;
      if (v32 != v33)
      {
        v17 = v49;
        do
        {
          v18 = v50;
          if (v17 >= v50)
          {
            if (v50 == v51)
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v48);
              v18 = v50;
            }

            v50 = v18 + 1;
            wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::ChannelAndCount>::New();
          }

          v49 = v17 + 1;
          v19 = v48[v17++];
          v20 = *v15;
          v21 = *(v19 + 24);
          *(v19 + 24) = v21 | 1;
          *(v19 + 16) = v20;
          v22 = v15[1];
          *(v19 + 24) = v21 | 3;
          *(v19 + 8) = v22;
          v15 += 2;
        }

        while (v15 != v16);
      }

      *v46 = cl::chrono::CFAbsoluteTimeClock::now();
      v23 = v35;
      if (v35 >= v36)
      {
        v24 = std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,boost::uuids::uuid const&,CLMicroLocationProto::WifiHistogram &>(&v34, v46, &v74, v47);
      }

      else
      {
        ULWiFiHistogramDO::ULWiFiHistogramDO(v35, v46, &v74, v47);
        v24 = v23 + 72;
      }

      v35 = v24;
      v25 = (*(*v4 + 160))(v4);
      v26 = [v25 insertDataObjects:&v34 atLoiUUID:&v74];

      if (v26)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v27 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          operator new();
        }

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(a3, v32, v33, (v33 - v32) >> 3);
        v28 = 1;
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnalytics::analyzeAssociationState();
        }

        v29 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          operator new();
        }

        v28 = 0;
        *a3 = 0;
      }

      *(a3 + 24) = v28;
      CLMicroLocationProto::WifiHistogram::~WifiHistogram(v47);
      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }
    }

    *v47 = &v34;
    std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](v47);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v37);
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v42, v43[0]);
LABEL_64:
    if (v62 < 0)
    {
      operator delete(v61);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v58);
    *v47 = &v57;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v47);
    if (v56 == 1 && v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v53);
    goto LABEL_72;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    operator new();
  }

  *a3 = 0;
  *(a3 + 24) = 0;
LABEL_72:
  if (v73 == 1)
  {
    if (v70 == 1 && SHIBYTE(v69) < 0)
    {
      operator delete(*(&v68 + 1));
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v67);
  }

  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v44);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591664E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  operator delete(v50);

  CLMicroLocationProto::WifiHistogram::~WifiHistogram(&a43);
  if (__p)
  {
    operator delete(__p);
  }

  a43 = &a16;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&a43);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a19);
  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a28, a29);
  CLMicroLocationModel::~CLMicroLocationModel(&a49);
  std::optional<ULModelDO>::~optional(&STACK[0x290]);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(&a31);
  _Unwind_Resume(a1);
}

void CLMicroLocationAnalytics::analyzeModelLoiTypes(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v5, a2);
  v3 = CLMicroLocationAnalytics::analyzeModelLoiTypesInternal(a1, v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v5);
  if (v3 && ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    AnalyticsSendEvent();
  }

  v4 = *MEMORY[0x277D85DE8];
}

id CLMicroLocationAnalytics::analyzeModelLoiTypesInternal(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = *(a2 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v5 + 48))(v5))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationAnalytics::analyzeAssociationState();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v49 = 2082;
      v50 = "";
      v51 = 2082;
      *v52 = "MicroLocationAnalytics";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:analyzeModelLoiTypes cancelled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
    goto LABEL_55;
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToAnalyzeWiFiChannels"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = [&unk_286A723C0 intValue];
  }

  v14 = v13;

  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v8, -v14);
  v16 = v15;
  v17 = +[ULDefaultsSingleton shared];
  v18 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v20 = [v18 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = [v20 unsignedIntValue];
  }

  else
  {
    v21 = [&unk_286A723F0 unsignedIntValue];
  }

  v22 = v21;

  v23 = (*(**(a1 + 8) + 144))(*(a1 + 8));
  v24 = v23;
  if (v23)
  {
    [v23 selectAllScanningLOITypesFromTime:v22 withLimit:v16];
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  v26 = v45;
  v25 = v46;
  if (v45 != v46)
  {
    v27 = v45;
    while (1)
    {
      v28 = *(v27 + 23);
      if (v28 < 0)
      {
        if (*(v27 + 8) == 4)
        {
          v29 = *v27;
LABEL_26:
          if (*v29 == 1701670760)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v29 = v27;
        if (v28 == 4)
        {
          goto LABEL_26;
        }
      }

      v27 += 24;
      if (v27 == v46)
      {
        v27 = v46;
LABEL_29:
        v30 = v27 != v46;
        v31 = v45;
        while (2)
        {
          v32 = *(v31 + 23);
          if (v32 < 0)
          {
            if (*(v31 + 8) != 4)
            {
              goto LABEL_36;
            }

            v33 = *v31;
          }

          else
          {
            v33 = v31;
            if (v32 != 4)
            {
              goto LABEL_36;
            }
          }

          if (*v33 == 1802661751)
          {
            goto LABEL_38;
          }

LABEL_36:
          v31 += 24;
          if (v31 != v46)
          {
            continue;
          }

          break;
        }

        v31 = v46;
LABEL_38:
        while (2)
        {
          v34 = *(v26 + 23);
          if (v34 < 0)
          {
            if (*(v26 + 8) != 7)
            {
              goto LABEL_47;
            }

            v35 = *v26;
          }

          else
          {
            v35 = v26;
            if (v34 != 7)
            {
              goto LABEL_47;
            }
          }

          v36 = *v35;
          v37 = *(v35 + 3);
          if (v36 == 1886546273 && v37 == 2036427888)
          {
            goto LABEL_50;
          }

LABEL_47:
          v26 += 24;
          if (v26 == v46)
          {
            v26 = v46;
            goto LABEL_50;
          }

          continue;
        }
      }
    }
  }

  v30 = 0;
  v31 = v45;
LABEL_50:
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnalytics::analyzeAssociationState();
  }

  v39 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    *&buf[4] = 0;
    v49 = 2082;
    v50 = "";
    v51 = 1025;
    *v52 = v30;
    *&v52[4] = 1025;
    *&v52[6] = v31 != v46;
    v53 = 1025;
    v54 = v26 != v46;
    _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending Model LOI Types event, foundHome:%{private}hhd, foundWork:%{private}hhd, foundAirPlay:%{private}hhd}", buf, 0x24u);
  }

  v40 = [MEMORY[0x277CCABB0] numberWithBool:v30];
  [v4 setObject:v40 forKeyedSubscript:@"foundHome"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:v31 != v25];
  [v4 setObject:v41 forKeyedSubscript:@"foundWork"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:v26 != v25];
  [v4 setObject:v42 forKeyedSubscript:@"foundAirPlay"];

  v7 = v4;
  *buf = &v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);

LABEL_55:
  v43 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__init_with_size[abi:ne200100]<std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259166E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(std::function<BOOL ()(void)>)>>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(std::function<BOOL ()(void)>)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::function<void ()(std::function<BOOL ()(void)>)>>,std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)> const*,std::function<void ()(std::function<BOOL ()(void)>)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::__value_func[abi:ne200100](a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_259166F24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_118()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULAssociatedStateDO>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<ULAssociatedStateDO const&>(a1, a2);
  }

  else
  {
    std::vector<ULAssociatedStateDO>::__construct_one_at_end[abi:ne200100]<ULAssociatedStateDO const&>(a1, a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

__n128 std::vector<ULAssociatedStateDO>::__construct_one_at_end[abi:ne200100]<ULAssociatedStateDO const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  v7 = *(a2 + 40);
  *(v4 + 56) = *(a2 + 56);
  *(v4 + 40) = v7;
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t std::vector<ULAssociatedStateDO>::__emplace_back_slow_path<ULAssociatedStateDO const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAssociatedStateDO>>(a1, v6);
  }

  v7 = 72 * v2;
  v19 = 0;
  v20 = v7;
  v21 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v20;
    v10 = v21;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v12;
  *(v7 + 56) = v11;
  *&v21 = v10 + 72;
  v13 = *(a1 + 8);
  v14 = v9 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULAssociatedStateDO>,ULAssociatedStateDO*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(&v19);
  return v18;
}

void sub_259167254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULAssociatedStateDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t boost::algorithm::join<std::unordered_set<std::string>,char [2]>@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v3)
  {
    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = (v3 + 2);
    }

    else
    {
      v7 = v3[2];
    }

    v8 = v3[3];
    if (v6 >= 0)
    {
      v9 = *(v3 + 39);
    }

    else
    {
      v9 = v3[3];
    }

    for (result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, a3, v7, &v7[v9], v9); ; result = std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a3, v15 + v14, v17, &v17[v18], v18))
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v10 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      v13 = strlen(a2);
      std::string::__insert_with_size<char const*,char const*>(a3, v11 + v12, a2, &a2[v13], v13);
      v14 = *(a3 + 23);
      if ((v14 & 0x80u) == 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 8);
      }

      v16 = *(v3 + 39);
      if (v16 >= 0)
      {
        v17 = (v3 + 2);
      }

      else
      {
        v17 = v3[2];
      }

      if (v16 >= 0)
      {
        v18 = *(v3 + 39);
      }

      else
      {
        v18 = v3[3];
      }
    }
  }

  return result;
}

void sub_259167368(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
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

void sub_2591675C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259167688(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::set<int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, a3, a4);
}

void sub_259167A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void std::string::__init_with_sentinel[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_259167BF4(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t std::string::__insert_with_size<char const*,char const*>(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    std::string::__init_with_sentinel[abi:ne200100]<char const*,char const*>(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v8, a3, a4);
}

void sub_259167D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_with_sentinel[abi:ne200100]<char const*,char const*>(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_259167DA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_259167F0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
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

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULLoiDO *,ULLoiDO *,ULLoiDO *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      v8 = v5[1];
      *(a4 + 32) = *(v5 + 4);
      *a4 = v7;
      *(a4 + 16) = v8;
      if (*(a4 + 63) < 0)
      {
        operator delete(*(a4 + 40));
      }

      v9 = *(v5 + 40);
      *(a4 + 56) = *(v5 + 7);
      *(a4 + 40) = v9;
      *(v5 + 63) = 0;
      *(v5 + 40) = 0;
      v5 += 4;
      a4 += 64;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::set<unsigned long long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned long long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(v5, v5 + 1, v4 + 4);
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

uint64_t std::__tree<unsigned long long>::__emplace_hint_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::vector<ULWiFiHistogramDO>::__emplace_back_slow_path<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>,boost::uuids::uuid const&,CLMicroLocationProto::WifiHistogram &>(uint64_t *a1, void *a2, _OWORD *a3, CLMicroLocationProto::WifiHistogram *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v8 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULWiFiHistogramDO>>(a1, v8);
  }

  v15 = 0;
  v16 = 72 * v4;
  ULWiFiHistogramDO::ULWiFiHistogramDO(72 * v4, a2, a3, a4);
  v17 = 72 * v4 + 72;
  v9 = a1[1];
  v10 = 72 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULWiFiHistogramDO>,ULWiFiHistogramDO*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(&v15);
  return v14;
}

void sub_259168364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULWiFiHistogramDO>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULWiFiChannelHistogram>::__init_with_size[abi:ne200100]<ULWiFiChannelHistogram*,ULWiFiChannelHistogram*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2591683D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C6E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationAnalytics::analyzeAssociationState(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259168518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C770;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationAnalytics::analyzeLocationOfInterestUsage(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25916872C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C7F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationAnalytics::analyzeTriggerTypes(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591688C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5C870;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationAnalytics::analyzeModelLoiTypes(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259168A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3,std::allocator<CLMicroLocationAnalytics::CLMicroLocationAnalytics(CLMicroLocationAnalytics::IAnalyticsDelegate &,ULDatabaseStoreInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::string const&,BOOL>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::string const&,BOOL>();
  }

  return result;
}

void sub_259168BEC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__emplace_unique_key_args<int,int,std::map<std::string,BOOL>&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<int,std::map<std::string,BOOL>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,BOOL>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,BOOL>>>>::__construct_node<int,std::map<std::string,BOOL>&>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

void sub_259168DA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::map<std::string,BOOL>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,BOOL>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,BOOL>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL>,std::__tree_node<std::__value_type<std::string,BOOL>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,BOOL>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL>,std::__tree_node<std::__value_type<std::string,BOOL>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BOOL> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BOOL> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__construct_node<std::pair<std::string const,BOOL> const&>();
  }

  return result;
}

void sub_259168FC0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::map<std::string,BOOL>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_259169290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_259169358(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(uint64_t a1, unint64_t *a2)
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

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsNumDaysToKeepEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsNumDaysToKeepEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72420 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsNumValidDaysForPurging>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsNumValidDaysForPurging"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72450 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::AdaptiveAnchorsMaxEntriesInAppearanceMap>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsMaxEntriesInAppearanceMap"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72438 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

void CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(CLMicroLocationAnchorAppearanceMap *this)
{
  v2 = ULSettings::get<ULSettings::AdaptiveAnchorsNumDaysToKeepEnabled>();
  valid = ULSettings::get<ULSettings::AdaptiveAnchorsNumValidDaysForPurging>();
  v4 = ULSettings::get<ULSettings::AdaptiveAnchorsMaxEntriesInAppearanceMap>();
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 10) = v2;
  *(this + 11) = valid;
  *(this + 6) = v4;
}

void CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(CLMicroLocationAnchorAppearanceMap *this, const CLMicroLocationProto::anchorAppearancesVector *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(this);
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(a2 + 1);
    for (i = 8 * v4; i; i -= 8)
    {
      v7 = *v5;
      v8 = *(*v5 + 24);
      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] != 16)
        {
LABEL_9:
          if (onceToken_MicroLocation_Default != -1)
          {
            CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap();
          }

          v12 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14[0]) = 0;
            _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "#Warning The protobuf Anchor Appearance struct does not have a valid device ID", v14, 2u);
          }

          goto LABEL_13;
        }

        v8 = *v8;
      }

      else if (v9 != 16)
      {
        goto LABEL_9;
      }

      v16 = *v8;
      v10 = *(v7 + 32);
      v11 = *(v7 + 8);
      v14[0] = v16;
      v14[1] = v11;
      v15 = v10;
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance>>(this, v14);
LABEL_13:
      ++v5;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void CLMicroLocationAnchorAppearanceMap::toProtobuf(CLMicroLocationAnchorAppearanceMap *this@<X0>, int *a2@<X8>)
{
  CLMicroLocationProto::anchorAppearancesVector::anchorAppearancesVector(a2);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2));
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<CLMicroLocationProto::AnchorAppearance>::New();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        CLMicroLocationProto::AnchorAppearance::AnchorAppearance(v13);
        v14 = *(v4 + 2);
        v10 = *(v4 + 12);
        v16 |= 7u;
        v15 = v10;
        CLMicroLocationProto::AnchorAppearance::CopyFrom(v9, v13);
        CLMicroLocationProto::AnchorAppearance::~AnchorAppearance(v13);
        *(v9 + 40) |= 8u;
        v11 = *(v9 + 24);
        if (v11 == v5)
        {
          operator new();
        }

        if (*(v11 + 23) < 0)
        {
          v11[1] = 16;
          v11 = *v11;
        }

        else
        {
          *(v11 + 23) = 16;
        }

        *v11 = *(v4 + 1);
        *(v11 + 16) = 0;
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "Got nullptr from CLMicroLocationProto add_anchorappearances", v13, 2u);
        }
      }

      v4 = *v4;
    }

    while (v4);
  }
}

double *CLMicroLocationAnchorAppearanceMap::updateSeenAnchor(void *a1, void *a2, double a3, double a4)
{
  v14 = *MEMORY[0x277D85DE8];
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, a2);
  if (result)
  {
    result[5] = a4;
    *(result + 12) = 0;
  }

  else
  {
    v10 = *a2;
    v11 = a3;
    v12 = a4;
    v13 = 0;
    result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance>>(a1, &v10);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationAnchorAppearanceMap::updateSeenAnchors(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 24);
  if (a3)
  {
    for (i = *(a1 + 16); i; i = *i)
    {
      if (!std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a2, i + 2))
      {
        __src = i + 2;
        v11 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(a1, i + 2);
        ++*(v11 + 12);
      }
    }
  }

  for (j = a2[2]; j; j = *j)
  {
    CLMicroLocationAnchorAppearanceMap::updateSeenAnchor(a1, j + 2, a4, a5);
  }

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = v14;
  if (v13)
  {
    do
    {
      if (*(v13 + 48) >= *(a1 + 44))
      {
        v13 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::erase(a1, v13);
      }

      else
      {
        v13 = *v13;
      }
    }

    while (v13);
    v15 = *(a1 + 24);
  }

  v16 = *(a1 + 48);
  v17 = v15 - v16;
  if (v15 > v16 && v16 != 0)
  {
    __src = 0;
    *v43 = 0;
    *&v43[8] = 0;
    std::vector<double>::reserve(&__src, v15);
    v40 = v14;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = *v43;
      do
      {
        if (v20 >= *&v43[8])
        {
          v21 = __src;
          v22 = v20 - __src;
          v23 = (v20 - __src) >> 3;
          v24 = v23 + 1;
          if ((v23 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v25 = *&v43[8] - __src;
          if ((*&v43[8] - __src) >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v26);
          }

          v27 = v23;
          v28 = (8 * v23);
          v29 = &v28[-v27];
          *v28 = v19[5];
          v20 = (v28 + 1);
          memcpy(v29, v21, v22);
          v30 = __src;
          __src = v29;
          *v43 = v20;
          *&v43[8] = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v20 = v19[5];
          v20 += 8;
        }

        *v43 = v20;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      v20 = *v43;
    }

    v31 = 126 - 2 * __clz((v20 - __src) >> 3);
    v32 = v20 == __src ? 0 : v31;
    std::__introsort<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,false>(__src, v20, &v41, v32, 1);
    v14 = v40;
    v33 = __src;
    v34 = *(a1 + 16);
    if (!v34 || !v17)
    {
      goto LABEL_47;
    }

    v35 = *(__src + *(a1 + 48) - 1);
    do
    {
      if (*(v34 + 40) <= v35)
      {
        v34 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::erase(a1, v34);
        --v17;
        if (!v34)
        {
          break;
        }
      }

      else
      {
        v34 = *v34;
        if (!v34)
        {
          break;
        }
      }
    }

    while (v17);
    v33 = __src;
    if (__src)
    {
LABEL_47:
      *v43 = v33;
      operator delete(v33);
    }
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap();
  }

  v36 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v37 = a2[3];
    v38 = *(a1 + 24);
    __src = 68290307;
    *v43 = 2082;
    *&v43[2] = "";
    *&v43[10] = 2049;
    *&v43[12] = v9;
    v44 = 2049;
    v45 = v37;
    v46 = 2049;
    v47 = v14;
    v48 = 2049;
    v49 = v15;
    v50 = 2049;
    v51 = v38;
    _os_log_impl(&dword_258FE9000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updateSeenAnchors, Anchors map initial size:%{private}lu, Received daily IDS ID set size:%{private}lu, Size with new anchors:%{private}lu, Size after purging:%{private}lu, Size after max entries limit:%{private}lu}", &__src, 0x44u);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_25916A19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLMicroLocationAnchorAppearanceMap::isAnchorValid(uint64_t a1, uint64_t a2, double *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 8) - 5) > 1)
  {
LABEL_11:
    result = 1;
    goto LABEL_12;
  }

  if (*(a2 + 40) != 1)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 16);
  result = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(a1, &v10);
  if (result)
  {
    v7 = *(result + 32);
    if (v7 <= *a2)
    {
      v8 = *(result + 40);
      if ((*a2 <= v8 || *(result + 48) < *(a1 + 40)) && v7 <= *a3 && (*a3 <= v8 || *(result + 48) < *(a1 + 40)))
      {
        goto LABEL_11;
      }
    }

LABEL_8:
    result = 0;
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *CLMicroLocationAnchorAppearanceMap::updateAnchorIdSetFromMeasurements(void *result, void *a2)
{
  v3 = result;
  v4 = a2[14];
  v5 = a2[15];
  while (v4 != v5)
  {
    result = std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v3, (v4 + 12));
    v4 += 32;
  }

  v7 = a2[17];
  v6 = a2[18];
  while (v7 != v6)
  {
    result = std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v3, (v7 + 12));
    v7 += 32;
  }

  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_119()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

double *std::__introsort<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,false>(double *result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v57 = *(a2 - 1);
        v58 = *v9;
        if (v57 > *v9)
        {
          *v9 = v57;
          *(a2 - 1) = v58;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v59 = v9 + 1;
      v60 = v9[1];
      v61 = v9 + 2;
      v62 = v9[2];
      v63 = *v9;
      if (v60 <= *v9)
      {
        if (v62 <= v60)
        {
          goto LABEL_121;
        }

        *v59 = v62;
        *v61 = v60;
        v64 = v9;
        v65 = v9 + 1;
        v66 = v60;
        if (v62 > v63)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v64 = v9;
        v65 = v9 + 2;
        v66 = *v9;
        if (v62 <= v60)
        {
          *v9 = v60;
          v9[1] = v63;
          v64 = v9 + 1;
          v65 = v9 + 2;
          v66 = v63;
          if (v62 <= v63)
          {
LABEL_121:
            v60 = v62;
            goto LABEL_122;
          }
        }

LABEL_113:
        *v64 = v62;
        *v65 = v63;
        v60 = v66;
      }

LABEL_122:
      v80 = *(a2 - 1);
      if (v80 <= v60)
      {
        return result;
      }

      *v61 = v80;
      *(a2 - 1) = v60;
      v76 = *v61;
      v81 = *v59;
      goto LABEL_139;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v49 = v9 + 2;
      v50 = v9[2];
      v51 = *v9;
      if (v48 <= *v9)
      {
        if (v50 <= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          *v47 = v50;
          *v49 = v48;
          v52 = v9;
          v53 = v9 + 1;
          v54 = v50;
          v55 = v51;
          v56 = v48;
          if (v50 > v51)
          {
            goto LABEL_128;
          }

          v54 = v51;
          v51 = v50;
          v50 = v48;
        }
      }

      else
      {
        if (v50 > v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          v55 = v9[1];
          v56 = *v9;
          goto LABEL_128;
        }

        *v9 = v48;
        v9[1] = v51;
        v52 = v9 + 1;
        v53 = v9 + 2;
        v54 = v48;
        v55 = v50;
        v56 = v51;
        if (v50 <= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_128:
          *v52 = v50;
          *v53 = v51;
          v51 = v55;
          v50 = v56;
        }
      }

      v83 = v9[3];
      if (v83 <= v50)
      {
        v50 = v9[3];
      }

      else
      {
        v9[2] = v83;
        v9[3] = v50;
        if (v83 > v51)
        {
          *v47 = v83;
          *v49 = v51;
          if (v83 > v54)
          {
            *v9 = v83;
            v9[1] = v54;
          }
        }
      }

      v84 = *(a2 - 1);
      if (v84 <= v50)
      {
        return result;
      }

      v9[3] = v84;
      *(a2 - 1) = v50;
      v85 = v9[2];
      v76 = v9[3];
      if (v76 <= v85)
      {
        return result;
      }

      v9[2] = v76;
      v9[3] = v85;
      v81 = v9[1];
LABEL_139:
      if (v76 <= v81)
      {
        return result;
      }

      v9[1] = v76;
      v9[2] = v81;
LABEL_141:
      v86 = *v9;
      if (v76 > *v9)
      {
        *v9 = v76;
        *(v9 + 1) = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v67 = v9 + 1;
      v69 = v9 == a2 || v67 == a2;
      if (a5)
      {
        if (!v69)
        {
          v70 = 0;
          v71 = v9;
          do
          {
            v73 = *v71;
            v72 = v71[1];
            v71 = v67;
            if (v72 > v73)
            {
              v74 = v70;
              while (1)
              {
                *(v9 + v74 + 8) = v73;
                if (!v74)
                {
                  break;
                }

                v73 = *(v9 + v74 - 8);
                v74 -= 8;
                if (v73 >= v72)
                {
                  v75 = (v9 + v74 + 8);
                  goto LABEL_99;
                }
              }

              v75 = v9;
LABEL_99:
              *v75 = v72;
            }

            v67 = v71 + 1;
            v70 += 8;
          }

          while (v71 + 1 != a2);
        }
      }

      else if (!v69)
      {
        do
        {
          v78 = *v8;
          v77 = v8[1];
          v8 = v67;
          if (v77 > v78)
          {
            v79 = v67;
            do
            {
              *v79 = v78;
              v78 = *(v79 - 2);
              --v79;
            }

            while (v78 < v77);
            *v79 = v77;
          }

          ++v67;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 <= *v9)
      {
        if (v15 > v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 > *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 > v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 > v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 <= v25)
      {
        if (v26 > v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 > v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 > v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 > v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v31 = v13[1];
      v30 = v13 + 1;
      v32 = v31;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v31 <= v33)
      {
        if (v34 > v32)
        {
          *v30 = v34;
          *(a2 - 3) = v32;
          v35 = v9[2];
          if (*v30 > v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 > v32)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v32;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 > v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 <= *v23)
      {
        if (v39 > v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 > v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 <= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 <= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 > *v13)
    {
      if (v15 > v18)
      {
        *v13 = v15;
        goto LABEL_38;
      }

      *v13 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 > v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 <= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v13;
    if (*v9 <= *v13)
    {
      goto LABEL_39;
    }

    *v13 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> *,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>> &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>*,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 <= *v9)
  {
    if (v46 <= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v76 = v9[1];
    goto LABEL_141;
  }

  if (v46 <= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v82 = *(a2 - 1);
    if (v82 <= v44)
    {
      return result;
    }

    v9[1] = v82;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}