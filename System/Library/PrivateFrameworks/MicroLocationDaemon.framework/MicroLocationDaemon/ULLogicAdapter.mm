@interface ULLogicAdapter
+ (id)_newULServiceDescriptorFromInternalDescriptor:(const void *)a3;
- (BOOL)isDataAvailable;
- (BOOL)purgeMicroLocationData;
- (ULLogicAdapter)init;
- (id)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4 clientId:(id)a5;
- (id)deleteServiceWithIdentifier:(id)a3 clientIdentifier:(id)a4;
- (id)diagnosticInfo;
- (id)exportDatabase;
- (id)getMicroLocationInternalVersion;
- (id)imageFeaturesDebugWithTask:(unint64_t)a3 additionalInformation:(id)a4;
- (id)polarisDebugWithTask:(unint64_t)a3;
- (id)purgeDatabase;
- (id)queryServicesForClient:(id)a3;
- (uint64_t)_analyticsExecute:;
- (uint64_t)_exportiCloudBackupExecute:;
- (uint64_t)_maintenanceExecute:;
- (uint64_t)_routineStateAnalyzerExecute:;
- (uint64_t)_wifiAnalyticsExecute:;
- (void)_analyticsExecute:(id)a3;
- (void)_exportiCloudBackupExecute:(id)a3;
- (void)_handleULAirplaneModeMonitorEventAirplaneMode:(id)a3;
- (void)_handleULBatteryModeMonitorEventLowPowerMode:(id)a3;
- (void)_handleULBatteryModeMonitorEventUnlimitedPower:(id)a3;
- (void)_handleULBluetoothMonitorEventPowerOn:(id)a3;
- (void)_handleULBuddyMonitorEventBuddyComplete:(id)a3;
- (void)_handleULDataProtectionMonitorEventDataAvailable:(id)a3;
- (void)_handleULDisplayMonitorEventDisplayState:(id)a3;
- (void)_handleULDisplayMonitorEventDisplayState_OSX:(id)a3;
- (void)_handleULInternalNotifyMonitorEventLocalize:(id)a3;
- (void)_handleULInternalNotifyMonitorEventPurge:(id)a3;
- (void)_handleULInternalNotifyMonitorEventRecord:(id)a3;
- (void)_handleULInternalNotifyMonitorEventSettingsRefrsh:(id)a3;
- (void)_handleULPrivacyMonitorEventLocationServices:(id)a3;
- (void)_handleULRapportMonitorEventDeviceFound:(id)a3;
- (void)_handleULSleepWakeMonitorEvent:(id)a3;
- (void)_learnExecute:(id)a3;
- (void)_maintenanceExecute:(id)a3;
- (void)_registerOnDatabaseValidNotification;
- (void)_registerOrUnregisterForActivities:(BOOL)a3;
- (void)_registerOrUnregisterForBackgroundTaskWithRequest:(id)a3 withSelector:(SEL)a4 isRegister:(BOOL)a5;
- (void)_routineStateAnalyzerExecute:(id)a3;
- (void)_start;
- (void)_startMonitoringEvents;
- (void)_stop;
- (void)_stopMonitoringEvents;
- (void)_wifiAnalyticsExecute:(id)a3;
- (void)addLabelForConnectionToken:(id)a3 label:(id)a4;
- (void)addLabelForConnectionToken:(id)a3 label:(id)a4 betweenStartDate:(id)a5 andEndDate:(id)a6;
- (void)createCustomLoiAtCurrentLocationForConnectionToken:(id)a3 withConfiguration:(id)a4;
- (void)dealloc;
- (void)disconnectWithConnectionToken:(id)a3 clientIdentifier:(id)a4 requestIdentifier:(id)a5;
- (void)removeCustomLoiWithIdentifier:(id)a3 forConnectionToken:(id)a4;
- (void)removePendingConnectionRequestsByConnectionToken:(id)a3;
- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3 clientId:(id)a4;
- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 clientId:(id)a4;
- (void)requestModelLearningForConnectionToken:(id)a3 requestIdentifier:(id)a4;
- (void)requestObservationForConnectionToken:(id)a3 clientIdentifier:(id)a4 requestIdentifier:(id)a5;
- (void)requestPredictionForConnectionToken:(id)a3 clientIdentifier:(id)a4 requestIdentifier:(id)a5;
- (void)runWithConfiguration:(id)a3 serviceIdentifier:(id)a4 legacyServiceIdentifier:(id)a5 clientIdentifier:(id)a6 connectionToken:(id)a7 requestIdentifier:(id)a8;
- (void)setDependencies:()unique_ptr<ULLogicAdapterImpl peripheralControl:(std:(id)a4 :(id)a5 default_delete<ULLogicAdapterImpl>>)a3 environment:;
- (void)start;
- (void)startRapportSession;
- (void)stopRapportSession;
@end

@implementation ULLogicAdapter

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULDisplayMonitorEventDisplayState:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULDataProtectionMonitorEventDataAvailable:v5];
  }
}

- (BOOL)isDataAvailable
{
  v2 = [(ULLogicAdapter *)self environment];
  v3 = [v2 dataProtectionMonitor];
  v4 = [v3 isDataAvailable];

  return v4;
}

- (ULLogicAdapter)init
{
  v3.receiver = self;
  v3.super_class = ULLogicAdapter;
  return [(ULLogicAdapter *)&v3 init];
}

- (void)setDependencies:()unique_ptr<ULLogicAdapterImpl peripheralControl:(std:(id)a4 :(id)a5 default_delete<ULLogicAdapterImpl>>)a3 environment:
{
  v12 = a4;
  v8 = a5;
  v9 = [v8 queue];
  dispatch_assert_queue_V2(v9);

  if (self->logicAdapterImpl.__ptr_)
  {
    [ULLogicAdapter setDependencies:? peripheralControl:? environment:?];

    abort_report_np();
    __break(1u);
  }

  else
  {
    v10 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    ptr = self->logicAdapterImpl.__ptr_;
    self->logicAdapterImpl.__ptr_ = v10;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    [(ULLogicAdapter *)self setPeripheralControl:v12];
    [(ULLogicAdapter *)self setEnvironment:v8];
  }
}

- (void)start
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Method start can only be called after setDependencies, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Method start can only be called after setDependencies", "{msg%{public}.0s:Method start can only be called after setDependencies, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Method start can only be called after setDependencies, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void __23__ULLogicAdapter_start__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "databaseValid - log daemon started", v4, 2u);
  }

  v3 = +[ULHomeSlamAnalytics shared];
  [v3 logEventDaemonStartedAtTimestamp:*(a1 + 32)];
}

- (void)dealloc
{
  [(ULLogicAdapter *)self _stop];
  v3.receiver = self;
  v3.super_class = ULLogicAdapter;
  [(ULLogicAdapter *)&v3 dealloc];
}

- (BOOL)purgeMicroLocationData
{
  v3 = [(ULLogicAdapter *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = CLMicroLocationLogic::onResetLocationData(*(self->logicAdapterImpl.__ptr_ + 13));
  if (([MEMORY[0x277D28868] isMac] & 1) == 0)
  {
    +[ULCoreDuetPublisher clearMicroLocationVisitStream];
  }

  return v5;
}

- (id)createServiceWithServiceType:(unint64_t)a3 locationTypes:(id)a4 clientId:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v42 = a4;
  v43 = a5;
  v41 = self;
  v8 = [(ULLogicAdapter *)self environment];
  v9 = [v8 queue];
  dispatch_assert_queue_V2(v9);

  std::vector<ULLocationTypeEnum>::vector[abi:ne200100](&__src, [v42 count]);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = v42;
  v11 = [v10 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v11)
  {
    v12 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v52 + 1) + 8 * i) locationType];
        v15 = v57;
        if (v57 >= v58)
        {
          v17 = __src;
          v18 = v57 - __src;
          v19 = (v57 - __src) >> 3;
          v20 = v19 + 1;
          if ((v19 + 1) >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v21 = v58 - __src;
          if ((v58 - __src) >> 2 > v20)
          {
            v20 = v21 >> 2;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v22);
          }

          *(8 * v19) = v14;
          v16 = (8 * v19 + 8);
          memcpy(0, v17, v18);
          v23 = __src;
          __src = 0;
          v57 = v16;
          v58 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v57 = v14;
          v16 = v15 + 1;
        }

        v57 = v16;
      }

      v11 = [v10 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v11);
  }

  std::string::basic_string[abi:ne200100]<0>(v50, "");
  v24 = +[ULEventLog shared];
  v25 = MEMORY[0x277CCACA8];
  v26 = ULServiceTypeToString();
  v27 = v43;
  v28 = [v25 stringWithFormat:@"Service Created Event type: %@, ClientId: %s", v26, objc_msgSend(v43, "UTF8String")];
  [v24 log:v28];

  v29 = *(v41->logicAdapterImpl.__ptr_ + 15);
  v30 = v43;
  std::string::basic_string[abi:ne200100]<0>(v48, [v43 UTF8String]);
  v47 = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(&v47);
  v31 = boost::uuids::random_generator_pure::operator()(&v47);
  v33 = v32;
  __p = 0;
  v45 = 0;
  v46 = 0;
  std::vector<ULLocationTypeEnum>::__init_with_size[abi:ne200100]<ULLocationTypeEnum*,ULLocationTypeEnum*>(&__p, __src, v57, (v57 - __src) >> 3);
  (*(*v29 + 16))(v61, v29, v48, v31, v33, a3, &__p, v50);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  boost::uuids::detail::random_provider_base::destroy(&v47);
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  v34 = objc_opt_new();
  if (v62 == 1)
  {
    v35 = [ULLogicAdapter _newULServiceDescriptorFromInternalDescriptor:v61];
    [v34 setServiceDescriptor:v35];
  }

  if (v63 != -1)
  {
    v59 = *MEMORY[0x277CCA450];
    v60 = @"createServiceWithServiceType failed internally";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v37 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = [v37 initWithDomain:@"ULLogicDomain" code:v63 userInfo:v36];
    [v34 setError:v38];
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (__src)
  {
    v57 = __src;
    operator delete(__src);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)deleteServiceWithIdentifier:(id)a3 clientIdentifier:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ULLogicAdapter *)self environment];
  v9 = [v8 queue];
  dispatch_assert_queue_V2(v9);

  std::string::basic_string[abi:ne200100]<0>(v29, "");
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v6, v36);
  if ((v37 & 1) == 0)
  {
    [ULLogicAdapter deleteServiceWithIdentifier:? clientIdentifier:?];

    abort_report_np();
    __break(1u);
  }

  v10 = +[ULEventLog shared];
  if ((v37 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v11 = MEMORY[0x277CCACA8];
  boost::lexical_cast<std::string,boost::uuids::uuid>(v36, &__p);
  v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v13 = __p.__r_.__value_.__r.__words[0];
  v14 = v7;
  v15 = [v7 UTF8String];
  p_p = &__p;
  if (v12 < 0)
  {
    p_p = v13;
  }

  v17 = [v11 stringWithFormat:@"Service Deleted Event serviceId: %s, clientId: %s", p_p, v15];
  [v10 log:v17];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *(self->logicAdapterImpl.__ptr_ + 15);
  v19 = v7;
  std::string::basic_string[abi:ne200100]<0>(v27, [v7 UTF8String]);
  if ((v37 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  (*(*v18 + 24))(&__p, v18, v27, v36[0], v36[1], v29);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v20 = objc_opt_new();
  if (v34 == 1)
  {
    v21 = [ULLogicAdapter _newULServiceDescriptorFromInternalDescriptor:&__p];
    [v20 setServiceDescriptor:v21];
  }

  if (v35 != -1)
  {
    v31 = *MEMORY[0x277CCA450];
    v32 = @"deleteServiceWithIdentifier failed internally";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v23 initWithDomain:@"ULLogicDomain" code:v35 userInfo:v22];
    [v20 setError:v24];
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)queryServicesForClient:(id)a3
{
  v4 = a3;
  v5 = [(ULLogicAdapter *)self environment];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  std::string::basic_string[abi:ne200100]<0>(v18, "");
  v7 = *(self->logicAdapterImpl.__ptr_ + 15);
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  (*(*v7 + 32))(&v16, v7, __p, v18);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = objc_opt_new();
  v9 = v16;
  v10 = v17;
  if (v16 != v17)
  {
    do
    {
      v11 = [ULLogicAdapter _newULServiceDescriptorFromInternalDescriptor:v9];
      [v8 addObject:v11];

      v9 += 32;
    }

    while (v9 != v10);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v8];

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  return v12;
}

- (void)runWithConfiguration:(id)a3 serviceIdentifier:(id)a4 legacyServiceIdentifier:(id)a5 clientIdentifier:(id)a6 connectionToken:(id)a7 requestIdentifier:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v44 = a4;
  v43 = a5;
  v15 = a6;
  v16 = a7;
  v42 = a8;
  v17 = [(ULLogicAdapter *)self environment];
  v18 = [v17 queue];
  dispatch_assert_queue_V2(v18);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v44, v62);
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v16, v60);
  if ((v63 & 1) == 0)
  {
    v37 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      v57 = "assert";
      v58 = 2081;
      v59 = "serviceId.has_value()";
      _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:runWithConfiguration without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v38 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v38))
    {
      __p = 68289539;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      v57 = "assert";
      v58 = 2081;
      v59 = "serviceId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "runWithConfiguration without identifier", "{msg%{public}.0s:runWithConfiguration without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v39 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      v57 = "assert";
      v58 = 2081;
      v59 = "serviceId.has_value()";
      _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:runWithConfiguration without identifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

LABEL_38:

    abort_report_np();
    __break(1u);
  }

  if ((v61 & 1) == 0)
  {
    v40 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      __p = 68289539;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      v57 = "assert";
      v58 = 2081;
      v59 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:runWithConfiguration without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v41 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v41))
    {
      __p = 68289539;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      v57 = "assert";
      v58 = 2081;
      v59 = "connectionId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "runWithConfiguration without connectionToken", "{msg%{public}.0s:runWithConfiguration without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    v39 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      __p = 68289539;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      v57 = "assert";
      v58 = 2081;
      v59 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:runWithConfiguration without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
    }

    goto LABEL_38;
  }

  v19 = +[ULEventLog shared];
  if ((v63 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v20 = MEMORY[0x277CCACA8];
  boost::lexical_cast<std::string,boost::uuids::uuid>(v62, &__p);
  v21 = SBYTE3(v57);
  v22 = __p;
  v23 = v15;
  v24 = [v15 UTF8String];
  p_p = &__p;
  if (v21 < 0)
  {
    p_p = v22;
  }

  v26 = [v20 stringWithFormat:@"Service runWithConfiguration Event serviceId: %s, clientId: %s, configuration: %@", p_p, v24, v14];
  [v19 log:v26];

  if (SBYTE3(v57) < 0)
  {
    operator delete(__p);
  }

  if ((v61 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v27 = (*(**(self->logicAdapterImpl.__ptr_ + 15) + 104))(*(self->logicAdapterImpl.__ptr_ + 15), v60);
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (v43)
  {
    CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v43, &v51);
  }

  else
  {
    LOBYTE(v51) = 0;
    v52 = 0;
  }

  v28 = *(self->logicAdapterImpl.__ptr_ + 15);
  v29 = v15;
  std::string::basic_string[abi:ne200100]<0>(v45, [v15 UTF8String]);
  if (v63 != 1 || (v49 = v51, v50 = v52, (v61 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v30 = (*(*v28 + 40))(v28, v45, v62[0], v62[1], &v49, v60[0], v60[1], v14, &__p);
  v32 = v31;
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v30 == -1)
  {
    v35 = 0;
  }

  else
  {
    v33 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA450];
    v48 = @"runWithConfiguration failed internally";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v35 = [v33 errorWithDomain:@"ULLogicDomain" code:v30 userInfo:v34];

    if ((v27 & 1) == 0)
    {
      [*(self->logicAdapterImpl.__ptr_ + 8) didFailWithError:v35 toConnection:v16];
      goto LABEL_22;
    }
  }

  if ((v32 & 1) == 0)
  {
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:v42 withError:v35 toConnection:v16];
  }

LABEL_22:

  if (SBYTE3(v57) < 0)
  {
    operator delete(__p);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)disconnectWithConnectionToken:(id)a3 clientIdentifier:(id)a4 requestIdentifier:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  dispatch_assert_queue_V2(v12);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v8, v25);
  if ((v26 & 1) == 0)
  {
    [ULLogicAdapter disconnectWithConnectionToken:v21 clientIdentifier:? requestIdentifier:?];

    abort_report_np();
    __break(1u);
  }

  std::string::basic_string[abi:ne200100]<0>(v21, "");
  v13 = *(self->logicAdapterImpl.__ptr_ + 15);
  v14 = v9;
  std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
  if ((v26 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v15 = (*(*v13 + 48))(v13, __p, v25[0], v25[1], v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 != -1)
  {
    v23 = *MEMORY[0x277CCA450];
    v24 = @"disconnect service failed internally";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:v15 userInfo:v16];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:v10 withError:v17 toConnection:v8];
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)requestObservationForConnectionToken:(id)a3 clientIdentifier:(id)a4 requestIdentifier:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  dispatch_assert_queue_V2(v12);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v8, v35);
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v10, v33);
  if ((v36 & 1) == 0)
  {
    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request observation without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v18))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "connectionId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request observation without connectionToken", "{msg%{public}.0s:request observation without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request observation without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_21:

    abort_report_np();
    __break(1u);
  }

  if ((v34 & 1) == 0)
  {
    v20 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request observation without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v21))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "requestId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request observation without requestIdentifier", "{msg%{public}.0s:request observation without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request observation without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_21;
  }

  v22 = cl::chrono::CFAbsoluteTimeClock::now();
  if (v36 != 1 || (v34 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v13 = *(self->logicAdapterImpl.__ptr_ + 15);
  buf[0] = 0;
  BYTE6(v28) = 0;
  if (((*(*v13 + 64))(v13, v35[0], v35[1], v33[0], v33[1], buf, &v22) & 1) == 0)
  {
    v23 = *MEMORY[0x277CCA450];
    v24 = @"request observation failed internally";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:12 userInfo:v14];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:v10 withError:v15 toConnection:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)requestPredictionForConnectionToken:(id)a3 clientIdentifier:(id)a4 requestIdentifier:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  dispatch_assert_queue_V2(v12);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v8, v32);
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v10, v30);
  if ((v33 & 1) == 0)
  {
    v16 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request prediction without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v17))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "connectionId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request prediction without connectionToken", "{msg%{public}.0s:request prediction without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "connectionId.has_value()";
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request prediction without connectionToken, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_21:

    abort_report_np();
    __break(1u);
  }

  if ((v31 & 1) == 0)
  {
    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:request prediction without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v20))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "requestId.has_value()";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "request prediction without requestIdentifier", "{msg%{public}.0s:request prediction without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "requestId.has_value()";
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:request prediction without requestIdentifier, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_21;
  }

  *buf = cl::chrono::CFAbsoluteTimeClock::now();
  if (v33 != 1 || (v31 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (((*(**(self->logicAdapterImpl.__ptr_ + 15) + 56))(*(self->logicAdapterImpl.__ptr_ + 15), v32[0], v32[1], v30, buf, 1) & 1) == 0)
  {
    v21 = *MEMORY[0x277CCA450];
    v22 = @"request prediction failed internally";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:29 userInfo:v13];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCompleteRequest:v10 withError:v14 toConnection:v8];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addLabelForConnectionToken:(id)a3 label:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ULLogicAdapter *)self environment];
  v9 = [v8 queue];
  dispatch_assert_queue_V2(v9);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v6, v12);
  if ((v12[16] & 1) == 0)
  {
    [ULLogicAdapter addLabelForConnectionToken:? label:?];

    abort_report_np();
    __break(1u);
  }

  (*(**(self->logicAdapterImpl.__ptr_ + 15) + 72))(*(self->logicAdapterImpl.__ptr_ + 15), v12, v7);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addLabelForConnectionToken:(id)a3 label:(id)a4 betweenStartDate:(id)a5 andEndDate:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ULLogicAdapter *)self environment];
  v15 = [v14 queue];
  dispatch_assert_queue_V2(v15);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v10, v18);
  if ((v18[16] & 1) == 0)
  {
    [ULLogicAdapter addLabelForConnectionToken:? label:? betweenStartDate:? andEndDate:?];

    abort_report_np();
    __break(1u);
  }

  (*(**(self->logicAdapterImpl.__ptr_ + 15) + 80))(*(self->logicAdapterImpl.__ptr_ + 15), v18, v11, v12, v13);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)createCustomLoiAtCurrentLocationForConnectionToken:(id)a3 withConfiguration:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "createCustomLoiAtCurrentLocationForConnectionToken: %@ withConfiguration: %@", buf, 0x16u);
  }

  v9 = [(ULLogicAdapter *)self environment];
  v10 = [v9 queue];
  dispatch_assert_queue_V2(v10);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v6, buf);
  if ((BYTE2(v20) & 1) == 0)
  {
    [ULLogicAdapter createCustomLoiAtCurrentLocationForConnectionToken:? withConfiguration:?];

    abort_report_np();
    __break(1u);
  }

  if ((CLMicroLocationLogic::createCustomLoiAtCurrentLocation(*(self->logicAdapterImpl.__ptr_ + 13), buf, v7) & 1) == 0)
  {
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Enable MicroLocation at current location failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:34 userInfo:v11];
    [*(self->logicAdapterImpl.__ptr_ + 8) didCreateCustomLoiAtCurrentLocationWithError:v12 forConnection:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeCustomLoiWithIdentifier:(id)a3 forConnectionToken:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "removeCustomLoiWithIdentifier: %@, forConnectionToken: %@", buf, 0x16u);
  }

  v9 = [(ULLogicAdapter *)self environment];
  v10 = [v9 queue];
  dispatch_assert_queue_V2(v10);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v7, buf);
  if ((buf[16] & 1) == 0)
  {
    [ULLogicAdapter removeCustomLoiWithIdentifier:? forConnectionToken:?];

    abort_report_np();
    goto LABEL_17;
  }

  if (!v6)
  {
    *v17.data = 0;
    *&v17.data[8] = 0;
    v18 = 0;
    goto LABEL_15;
  }

  [v6 boostUUID];
  if ((v18 & 1) == 0)
  {
LABEL_15:
    [ULLogicAdapter removeCustomLoiWithIdentifier:? forConnectionToken:?];

    abort_report_np();
LABEL_17:
    __break(1u);
  }

  if ((buf[16] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (CLMicroLocationLogic::removeCustomLoiWithIdentifier(*(self->logicAdapterImpl.__ptr_ + 13), &v17, *buf))
  {
    v11 = 0;
  }

  else
  {
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Remove Custom Loi failed";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:0 userInfo:v12];
  }

  [*(self->logicAdapterImpl.__ptr_ + 8) didRemoveCustomLoiWithIdentifier:v6 forConnection:v7 withError:v11];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removePendingConnectionRequestsByConnectionToken:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf.data = 138412290;
    *&buf.data[4] = v4;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "remove pending connection requests by ConnectionToken: %@", buf.data, 0xCu);
  }

  v6 = [(ULLogicAdapter *)self environment];
  v7 = [v6 queue];
  dispatch_assert_queue_V2(v7);

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v4, &buf);
  if ((v11 & 1) == 0)
  {
    [ULLogicAdapter removePendingConnectionRequestsByConnectionToken:?];

    abort_report_np();
    __break(1u);
  }

  CLMicroLocationLogic::removePendingConnectionRequestsByConnectionToken(*(self->logicAdapterImpl.__ptr_ + 13), buf);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)exportDatabase
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = (*(**(self->logicAdapterImpl.__ptr_ + 12) + 80))(*(self->logicAdapterImpl.__ptr_ + 12));
  [v3 setExportedURLs:v4];

  v5 = [v3 exportedURLs];
  v6 = [v5 count];

  if (!v6)
  {
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"export database failed internally";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:36 userInfo:v7];
    [v3 setError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)purgeDatabase
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([(ULLogicAdapter *)self purgeMicroLocationData])
  {
    v2 = 0;
  }

  else
  {
    v6 = *MEMORY[0x277CCA450];
    v7[0] = @"purge database failed internally";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:37 userInfo:v3];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)imageFeaturesDebugWithTask:(unint64_t)a3 additionalInformation:(id)a4
{
  v6 = a4;
  if ([MEMORY[0x277D28868] isInternalInstall])
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v7 = [(ULLogicAdapter *)self peripheralControl];
        [v7 saveWithIdentifiers:v6];
        goto LABEL_16;
      }

      if (a3 == 3)
      {
        v7 = [(ULLogicAdapter *)self peripheralControl];
        [v7 dropWithIdentifiers:v6];
        goto LABEL_16;
      }
    }

    else
    {
      if (!a3)
      {
        v10 = [(ULLogicAdapter *)self peripheralControl];
        v11 = [v10 getPoseEstimation];

        if (v11)
        {
          v9 = [v11 debugDescription];
LABEL_18:

          goto LABEL_19;
        }

LABEL_17:
        v9 = 0;
        goto LABEL_18;
      }

      if (a3 == 1)
      {
        v7 = [(ULLogicAdapter *)self peripheralControl];
        [v7 load];
LABEL_16:

        v11 = 0;
        goto LABEL_17;
      }
    }

    [ULLogicAdapter imageFeaturesDebugWithTask:? additionalInformation:?];

    abort_report_np();
    __break(1u);
    goto LABEL_23;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
LABEL_23:
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_FAULT, "imageFeaturesDebugWithTask called on non-internal platform. ignored", buf, 2u);
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (id)polarisDebugWithTask:(unint64_t)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  if (a3 == 2)
  {
    v3 = [(ULLogicAdapter *)self peripheralControl];
    v4 = (v14 + 5);
    obj = v14[5];
    [v3 teardownPolarisGraphsAndReturnError:&obj];
    objc_storeStrong(v4, obj);
  }

  else
  {
    if (a3 != 1)
    {
      [(ULLogicAdapter *)&v19 polarisDebugWithTask:a2];

      result = abort_report_np();
      __break(1u);
      return result;
    }

    v3 = [(ULLogicAdapter *)self peripheralControl];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__ULLogicAdapter_polarisDebugWithTask___block_invoke;
    v12[3] = &unk_2798D4438;
    v12[4] = &v13;
    [v3 setupPolarisGraphsWithCompletionHandler:v12];
  }

  v5 = v14[5];
  if (v5)
  {
    v20[0] = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"polarisDebugWithTask failed with error: %@", v5];
    v20[1] = @"internalError";
    v21[0] = v6;
    v21[1] = v14[5];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ULLogicDomain" code:0 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __39__ULLogicAdapter_polarisDebugWithTask___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "polarisDebugWithTask failed with error: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestModelLearningForConnectionToken:(id)a3 requestIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v6, v13);
  if ((v14 & 1) == 0)
  {
    [ULLogicAdapter requestModelLearningForConnectionToken:? requestIdentifier:?];

    abort_report_np();
    goto LABEL_10;
  }

  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(v7, v12);
  if ((v12[16] & 1) == 0)
  {
    [ULLogicAdapter requestModelLearningForConnectionToken:? requestIdentifier:?];

    abort_report_np();
LABEL_10:
    __break(1u);
  }

  v8 = *(self->logicAdapterImpl.__ptr_ + 15);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  if ((v14 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  (*(*v8 + 88))(v8, __p, v13[0], v13[1], v12);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)a3 clientId:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138412290;
    *&__p[4] = v7;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Client request Current microlocation, clientIdentifier: %@", __p, 0xCu);
  }

  v9 = v7;
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  if (CLMicroLocationLegacyClient::isHomeKitRequest(*(self->logicAdapterImpl.__ptr_ + 14), v6))
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6 copyItems:1];
    [(NSDictionary *)v10 setObject:&unk_286A71718 forKeyedSubscript:@"shouldTriggerLocalizationScan"];
    CLMicroLocationLegacyClient::onHomeKit(*(self->logicAdapterImpl.__ptr_ + 14), v10);
  }

  else
  {
    CLMicroLocationLegacyClient::onLocalizationRequest(*(self->logicAdapterImpl.__ptr_ + 14), __p);
  }

  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)a3 clientId:(id)a4
{
  v6 = a3;
  v7 = a4;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v7 UTF8String]);
  if (CLMicroLocationLegacyClient::isHomeKitRequest(*(self->logicAdapterImpl.__ptr_ + 14), v6))
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6 copyItems:1];
    [(NSDictionary *)v8 setObject:&unk_286A71718 forKeyedSubscript:@"shouldTriggerRecordingScan"];
    CLMicroLocationLegacyClient::onHomeKit(*(self->logicAdapterImpl.__ptr_ + 14), v8);
  }

  else
  {
    CLMicroLocationLegacyClient::onRecordingRequest(*(self->logicAdapterImpl.__ptr_ + 14), v6);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

- (id)getMicroLocationInternalVersion
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULVersion"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSString * {__strong},std::string>(v6, v13);
    *&__p[16] = *&v13[16];
    *__p = *v13;
    v7 = HIBYTE(*&v13[16]);
    v8 = *v13;
  }

  else
  {
    ULSettings::convert<NSString * {__strong},std::string>(@"4.0.26", v13);
    v8 = *v13;
    *__p = *v13;
    *&__p[15] = *&v13[15];
    LOBYTE(v7) = v13[23];
    __p[23] = v13[23];
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v2 stringWithUTF8String:{v9, *__p, *&__p[8], *&__p[16]}];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return v10;
}

- (void)startRapportSession
{
  objc_initWeak(&location, self);
  v3 = [(ULLogicAdapter *)self environment];
  v4 = [v3 rapportMonitor];
  v5 = +[(ULEvent *)ULRapportMonitorEventDeviceFound];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ULLogicAdapter_startRapportSession__block_invoke;
  v6[3] = &unk_2798D4460;
  objc_copyWeak(&v7, &location);
  [v4 addObserver:self eventName:v5 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __37__ULLogicAdapter_startRapportSession__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULRapportMonitorEventDeviceFound:v5];
  }
}

- (void)stopRapportSession
{
  v4 = [(ULLogicAdapter *)self environment];
  v3 = [v4 rapportMonitor];
  [v3 removeObserver:self];
}

- (void)_start
{
  [(ULLogicAdapter *)self _registerOnDatabaseValidNotification];
  [(ULLogicAdapter *)self _startMonitoringEvents];
  v3 = [(ULLogicAdapter *)self environment];
  v4 = [v3 diagnostics];
  [v4 addProvider:self];

  [(ULLogicAdapter *)self _registerOrUnregisterForActivities:1];
}

- (void)_registerOnDatabaseValidNotification
{
  v2 = *(self->logicAdapterImpl.__ptr_ + 12);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke;
  v3[3] = &unk_2798D4160;
  v3[4] = self;
  (*(*v2 + 136))(v2, v3);
}

void __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v3 = [v2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke_2;
  block[3] = &unk_2798D4160;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __54__ULLogicAdapter__registerOnDatabaseValidNotification__block_invoke_2(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "handling database valid notification", v4, 2u);
  }

  CLMicroLocationLogic::onDatabaseBecameValid(*(*(*(a1 + 32) + 8) + 104));
  CLMicroLocationLegacyClient::databaseAvailable(*(*(*(a1 + 32) + 8) + 112));
  return notify_post([*MEMORY[0x277D28828] UTF8String]);
}

- (void)_stop
{
  [(ULLogicAdapter *)self _stopMonitoringEvents];
  [(ULLogicAdapter *)self _registerOrUnregisterForActivities:0];
  v4 = [(ULLogicAdapter *)self environment];
  v3 = [v4 diagnostics];
  [v3 removeProvider:self];
}

- (void)_startMonitoringEvents
{
  objc_initWeak(location, self);
  v3 = [(ULLogicAdapter *)self environment];
  v4 = [v3 dataProtectionMonitor];
  v5 = +[(ULEvent *)ULDataProtectionMonitorEventDataAvailable];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke;
  v77[3] = &unk_2798D4460;
  objc_copyWeak(&v78, location);
  [v4 addObserver:self eventName:v5 handler:v77];

  v6 = [(ULLogicAdapter *)self environment];
  v7 = [v6 airplaneModeMonitor];
  v8 = +[(ULEvent *)ULAirplaneModeMonitorEventAirplaneMode];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_2;
  v75[3] = &unk_2798D4460;
  objc_copyWeak(&v76, location);
  [v7 addObserver:self eventName:v8 handler:v75];

  v9 = [(ULLogicAdapter *)self environment];
  v10 = [v9 batteryModeMonitor];
  v11 = +[(ULEvent *)ULBatteryModeMonitorEventUnlimitedPower];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_3;
  v73[3] = &unk_2798D4460;
  objc_copyWeak(&v74, location);
  [v10 addObserver:self eventName:v11 handler:v73];

  v12 = [(ULLogicAdapter *)self environment];
  v13 = [v12 batteryModeMonitor];
  v14 = +[(ULEvent *)ULBatteryModeMonitorEventLowPowerMode];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_4;
  v71[3] = &unk_2798D4460;
  objc_copyWeak(&v72, location);
  [v13 addObserver:self eventName:v14 handler:v71];

  v15 = [(ULLogicAdapter *)self environment];
  v16 = [v15 bluetoothMonitor];
  v17 = +[(ULEvent *)ULBluetoothMonitorEventPowerOn];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_5;
  v69[3] = &unk_2798D4460;
  objc_copyWeak(&v70, location);
  [v16 addObserver:self eventName:v17 handler:v69];

  v18 = [(ULLogicAdapter *)self environment];
  v19 = [v18 displayMonitor];
  v20 = +[(ULEvent *)ULDisplayMonitorEventDisplayState];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_6;
  v67[3] = &unk_2798D4460;
  objc_copyWeak(&v68, location);
  [v19 addObserver:self eventName:v20 handler:v67];

  v21 = [(ULLogicAdapter *)self environment];
  v22 = [v21 displayMonitor_OSX];
  v23 = +[(ULEvent *)ULDisplayMonitorEventDisplayState_OSX];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_7;
  v65[3] = &unk_2798D4460;
  objc_copyWeak(&v66, location);
  [v22 addObserver:self eventName:v23 handler:v65];

  v24 = [(ULLogicAdapter *)self environment];
  v25 = [v24 internalNotifyMonitor];
  v26 = +[(ULEvent *)ULInternalNotifyMonitorEventLocalize];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_8;
  v63[3] = &unk_2798D4460;
  objc_copyWeak(&v64, location);
  [v25 addObserver:self eventName:v26 handler:v63];

  v27 = [(ULLogicAdapter *)self environment];
  v28 = [v27 internalNotifyMonitor];
  v29 = +[(ULEvent *)ULInternalNotifyMonitorEventRecord];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_9;
  v61[3] = &unk_2798D4460;
  objc_copyWeak(&v62, location);
  [v28 addObserver:self eventName:v29 handler:v61];

  v30 = [(ULLogicAdapter *)self environment];
  v31 = [v30 internalNotifyMonitor];
  v32 = +[(ULEvent *)ULInternalNotifyMonitorEventPurge];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_10;
  v59[3] = &unk_2798D4460;
  objc_copyWeak(&v60, location);
  [v31 addObserver:self eventName:v32 handler:v59];

  v33 = [(ULLogicAdapter *)self environment];
  v34 = [v33 internalNotifyMonitor];
  v35 = +[(ULEvent *)ULInternalNotifyMonitorEventSettingsRefresh];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_11;
  v57[3] = &unk_2798D4460;
  objc_copyWeak(&v58, location);
  [v34 addObserver:self eventName:v35 handler:v57];

  v36 = [(ULLogicAdapter *)self environment];
  v37 = [v36 privacyMonitor];
  v38 = +[(ULEvent *)ULPrivacyMonitorEventLocationServices];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_12;
  v55[3] = &unk_2798D4460;
  objc_copyWeak(&v56, location);
  [v37 addObserver:self eventName:v38 handler:v55];

  v39 = [(ULLogicAdapter *)self environment];
  v40 = [v39 buddyMonitor];
  v41 = +[(ULEvent *)ULBuddyMonitorEventBuddyComplete];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_13;
  v53[3] = &unk_2798D4460;
  objc_copyWeak(&v54, location);
  [v40 addObserver:self eventName:v41 handler:v53];

  v42 = +[ULDefaultsSingleton shared];
  v43 = [v42 defaultsDictionary];

  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOffScreenScanEnabled"];
  v45 = [v43 objectForKey:v44];
  if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v46 = [v45 BOOLValue];
  }

  else
  {
    v46 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v47 = v46;

  if (v47)
  {
    v48 = [(ULLogicAdapter *)self environment];
    v49 = [v48 sleepWakeMonitor];
    v50 = +[(ULEvent *)ULSleepWakeEvent];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __40__ULLogicAdapter__startMonitoringEvents__block_invoke_14;
    v51[3] = &unk_2798D4460;
    objc_copyWeak(&v52, location);
    [v49 addObserver:self eventName:v50 handler:v51];

    objc_destroyWeak(&v52);
  }

  objc_destroyWeak(&v54);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v78);
  objc_destroyWeak(location);
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULAirplaneModeMonitorEventAirplaneMode:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBatteryModeMonitorEventUnlimitedPower:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBatteryModeMonitorEventLowPowerMode:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBluetoothMonitorEventPowerOn:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULDisplayMonitorEventDisplayState_OSX:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventLocalize:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_9(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventRecord:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_10(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventPurge:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_11(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULInternalNotifyMonitorEventSettingsRefrsh:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_12(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULPrivacyMonitorEventLocationServices:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_13(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULBuddyMonitorEventBuddyComplete:v5];
  }
}

void __40__ULLogicAdapter__startMonitoringEvents__block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULSleepWakeMonitorEvent:v5];
  }
}

- (void)_stopMonitoringEvents
{
  v13 = [(ULLogicAdapter *)self environment];
  v3 = [v13 dataProtectionMonitor];
  [v3 removeObserver:self];

  v14 = [(ULLogicAdapter *)self environment];
  v4 = [v14 airplaneModeMonitor];
  [v4 removeObserver:self];

  v15 = [(ULLogicAdapter *)self environment];
  v5 = [v15 batteryModeMonitor];
  [v5 removeObserver:self];

  v16 = [(ULLogicAdapter *)self environment];
  v6 = [v16 bluetoothMonitor];
  [v6 removeObserver:self];

  v17 = [(ULLogicAdapter *)self environment];
  v7 = [v17 displayMonitor];
  [v7 removeObserver:self];

  v18 = [(ULLogicAdapter *)self environment];
  v8 = [v18 displayMonitor_OSX];
  [v8 removeObserver:self];

  v19 = [(ULLogicAdapter *)self environment];
  v9 = [v19 internalNotifyMonitor];
  [v9 removeObserver:self];

  v20 = [(ULLogicAdapter *)self environment];
  v10 = [v20 privacyMonitor];
  [v10 removeObserver:self];

  v21 = [(ULLogicAdapter *)self environment];
  v11 = [v21 buddyMonitor];
  [v11 removeObserver:self];

  v22 = [(ULLogicAdapter *)self environment];
  v12 = [v22 sleepWakeMonitor];
  [v12 removeObserver:self];
}

- (void)_registerOrUnregisterForActivities:(BOOL)a3
{
  v4 = +[ULBGRepeatingSystemTaskRequest learningULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v5 = +[ULBGRepeatingSystemTaskRequest maintenanceULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v6 = +[ULBGRepeatingSystemTaskRequest routineStateAnalyzerULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v7 = +[ULBGRepeatingSystemTaskRequest analyticsULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v8 = +[ULBGRepeatingSystemTaskRequest wifiAnalyzerULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];

  v9 = +[ULBGRepeatingSystemTaskRequest exportBackupULBGRepeatingSystemTaskRequest];
  [ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:"_registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:" withSelector:? isRegister:?];
}

- (void)_registerOrUnregisterForBackgroundTaskWithRequest:(id)a3 withSelector:(SEL)a4 isRegister:(BOOL)a5
{
  v5 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = NSStringFromSelector(a4);
      location = 68289795;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = [v18 UTF8String];
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "[self respondsToSelector:selector]";
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ULLogicAdapter does not respond to selector, selector:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &location, 0x30u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v19))
    {
      v20 = NSStringFromSelector(a4);
      v21 = v20;
      v22 = [v20 UTF8String];
      location = 68289795;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = v22;
      v33 = 2082;
      v34 = "assert";
      v35 = 2081;
      v36 = "[self respondsToSelector:selector]";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ULLogicAdapter does not respond to selector", "{msg%{public}.0s:ULLogicAdapter does not respond to selector, selector:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &location, 0x30u);
    }

    v23 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(a4);
      v25 = v24;
      -[ULLogicAdapter _registerOrUnregisterForBackgroundTaskWithRequest:withSelector:isRegister:].cold.1([v24 UTF8String], &location, v23, v24);
    }

    abort_report_np();
    __break(1u);
  }

  if (v5)
  {
    objc_initWeak(&location, self);
    v9 = [(ULLogicAdapter *)self environment];
    v10 = [v9 backgroundSystemTaskManager];
    v11 = [(ULLogicAdapter *)self environment];
    v12 = [v11 queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __92__ULLogicAdapter__registerOrUnregisterForBackgroundTaskWithRequest_withSelector_isRegister___block_invoke;
    v26[3] = &unk_2798D4488;
    objc_copyWeak(v27, &location);
    v27[1] = a4;
    [v10 registerAndSubmitTaskWithRequest:v8 usingQueue:v12 launchHandler:v26];

    objc_destroyWeak(v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(ULLogicAdapter *)self environment];
    v14 = [v13 backgroundSystemTaskManager];
    v15 = [v8 identifier];
    [v14 deregisterAndCancelTaskWithIdentifier:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __92__ULLogicAdapter__registerOrUnregisterForBackgroundTaskWithRequest_withSelector_isRegister___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained environment];
    v7 = [v6 queue];
    dispatch_assert_queue_V2(v7);

    v8 = +[ULTransactionManager shared];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __92__ULLogicAdapter__registerOrUnregisterForBackgroundTaskWithRequest_withSelector_isRegister___block_invoke_2;
    v10[3] = &unk_2798D4188;
    v9 = *(a1 + 40);
    v10[4] = v5;
    v12 = v9;
    v11 = v3;
    [v8 performUnderTransaction:@"com.apple.milod.backgroundTasks" block:v10];
  }
}

- (void)_learnExecute:(id)a3
{
  v4 = a3;
  v5 = +[ULTransactionManager shared];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ULLogicAdapter__learnExecute___block_invoke;
  v7[3] = &unk_2798D44B0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performUnderTransaction:@"com.apple.milod.learning" block:v7];
}

void __32__ULLogicAdapter__learnExecute___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) environment];
  [ULMapItemGenerator generateMapItemsWithEnvironment:v3 dbStore:*(*(*v2 + 8) + 88) task:*(a1 + 40)];

  CLMicroLocationLearner::CLMicroLocationLearner(v5, *(*(a1 + 32) + 8) + 8, *(*(*(a1 + 32) + 8) + 88), *(*(*(a1 + 32) + 8) + 96));
  v10[0] = &unk_286A55080;
  v10[1] = a1 + 40;
  v10[3] = v10;
  CLMicroLocationLearner::executeWorkItems(v5, v10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v10);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::~__hash_table(&v8);
  v9 = &v7;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v9);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_maintenanceExecute:(id)a3
{
  v9[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  CLMicroLocationMaintenance::CLMicroLocationMaintenance(v5, *(self->logicAdapterImpl.__ptr_ + 11), *(self->logicAdapterImpl.__ptr_ + 12));
  v9[0] = &unk_286A55110;
  v9[1] = &v7;
  v9[3] = v9;
  CLMicroLocationMaintenance::executeWorkItems(v5, v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v9);
  v8 = &v6;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v8);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_routineStateAnalyzerExecute:(id)a3
{
  v9[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  CLMicroLocationRoutineStateAnalyzer::CLMicroLocationRoutineStateAnalyzer(v5, self->logicAdapterImpl.__ptr_ + 16);
  v9[0] = &unk_286A55190;
  v9[1] = &v7;
  v9[3] = v9;
  CLMicroLocationRoutineStateAnalyzer::executeWorkItems(v5, v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v9);
  v8 = &v6;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v8);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_analyticsExecute:(id)a3
{
  v9[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  CLMicroLocationAnalytics::CLMicroLocationAnalytics(v5, self->logicAdapterImpl.__ptr_ + 24, *(self->logicAdapterImpl.__ptr_ + 11));
  v9[0] = &unk_286A55210;
  v9[1] = &v7;
  v9[3] = v9;
  CLMicroLocationAnalytics::executeWorkItems(v5, v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v9);
  v8 = &v6;
  std::vector<std::function<void ()(std::function<BOOL ()(void)>)>>::__destroy_vector::operator()[abi:ne200100](&v8);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_wifiAnalyticsExecute:(id)a3
{
  v8[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  ULWiFiHistogramAnalyzer::ULWiFiHistogramAnalyzer(v7, self->logicAdapterImpl.__ptr_ + 32, *(self->logicAdapterImpl.__ptr_ + 11));
  v6[0] = &unk_286A55290;
  v6[1] = &v5;
  v6[3] = v6;
  ULWiFiHistogramAnalyzer::executeWiFiItem(v7, v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(std::function<BOOL ()(void)>)>::~__value_func[abi:ne200100](v8);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_exportiCloudBackupExecute:(id)a3
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v4 = [[ULBackupAndRestore alloc] initWithDbStore:*(self->logicAdapterImpl.__ptr_ + 11) andDbManagement:*(self->logicAdapterImpl.__ptr_ + 12)];
  v7[0] = &unk_286A55310;
  v7[1] = &v6;
  v7[3] = v7;
  [(ULBackupAndRestore *)v4 exportiCloudBackupWithCancelFunc:v7];
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleULDataProtectionMonitorEventDataAvailable:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 dataAvailable];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULDataProtectionMonitorEventDataAvailable: dataAvailable: %@", buf, 0xCu);
  }

  if ([v7 dataAvailable])
  {
    v11 = [(ULLogicAdapter *)self environment];
    v12 = [v11 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ULLogicAdapter__handleULDataProtectionMonitorEventDataAvailable___block_invoke;
    block[3] = &unk_2798D4160;
    block[4] = self;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleULAirplaneModeMonitorEventAirplaneMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 airplaneMode];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULAirplaneModeMonitorEventAirplaneMode: airplaneMode: %@", buf, 0xCu);
  }

  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__ULLogicAdapter__handleULAirplaneModeMonitorEventAirplaneMode___block_invoke;
  v15[3] = &unk_2798D44B0;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ULLogicAdapter__handleULAirplaneModeMonitorEventAirplaneMode___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 104);
  v2 = [*(a1 + 40) airplaneMode];
  v3 = *(*v1 + 192);

  return v3(v1, v2);
}

- (void)_handleULBatteryModeMonitorEventUnlimitedPower:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 unlimitedPower];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBatteryModeMonitorEventUnlimitedPower: unlimitedPower: %@", buf, 0xCu);
  }

  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ULLogicAdapter__handleULBatteryModeMonitorEventUnlimitedPower___block_invoke;
  v15[3] = &unk_2798D44B0;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

CLMicroLocationLegacyClient *__65__ULLogicAdapter__handleULBatteryModeMonitorEventUnlimitedPower___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 112);
  v2 = [*(a1 + 40) unlimitedPower];

  return CLMicroLocationLegacyClient::onBatteryState(v1, v2);
}

- (void)_handleULBatteryModeMonitorEventLowPowerMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 lowPowerMode];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBatteryModeMonitorEventLowPowerMode: lowPowerMode: %@", buf, 0xCu);
  }

  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__ULLogicAdapter__handleULBatteryModeMonitorEventLowPowerMode___block_invoke;
  v15[3] = &unk_2798D44B0;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __63__ULLogicAdapter__handleULBatteryModeMonitorEventLowPowerMode___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 104);
  v2 = [*(a1 + 40) lowPowerMode];
  v3 = *(*v1 + 136);

  return v3(v1, v2);
}

- (void)_handleULBluetoothMonitorEventPowerOn:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 powerOn];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBluetoothMonitorEventPowerOn: powerOn: %@", &v14, 0xCu);
  }

  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  dispatch_async(v12, &__block_literal_global_30);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleULRapportMonitorEventDeviceFound:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 device];
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULRapportMonitorEventDeviceFound: new device: %@", buf, 0xCu);
  }

  v10 = [(ULLogicAdapter *)self environment];
  v11 = [v10 queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ULLogicAdapter__handleULRapportMonitorEventDeviceFound___block_invoke;
  v14[3] = &unk_2798D44B0;
  v15 = v7;
  v16 = self;
  v12 = v7;
  dispatch_async(v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __58__ULLogicAdapter__handleULRapportMonitorEventDeviceFound___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) device];
  v2 = [v14 idsDeviceIdentifier];
  if (v2)
  {
    v3 = [*(a1 + 32) device];
    v4 = [v3 model];
    if (v4)
    {
      v5 = [*(a1 + 32) device];
      v6 = [v5 name];

      if (v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 104);
        v8 = [*(a1 + 32) device];
        v9 = [v8 idsDeviceIdentifier];
        std::string::basic_string[abi:ne200100]<0>(v19, [v9 UTF8String]);
        v10 = [*(a1 + 32) device];
        v11 = [v10 model];
        std::string::basic_string[abi:ne200100]<0>(v17, [v11 UTF8String]);
        v12 = [*(a1 + 32) device];
        v13 = [v12 name];
        std::string::basic_string[abi:ne200100]<0>(&__p, [v13 UTF8String]);
        CLMicroLocationLogic::onRapportCompanionDeviceFound(v7, v19, v17);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

      return;
    }
  }
}

- (void)_handleULDisplayMonitorEventDisplayState:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(ULLogicAdapter *)self environment];
  v9 = [v8 queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke;
  v11[3] = &unk_2798D44B0;
  v12 = v7;
  v13 = self;
  v10 = v7;
  dispatch_async(v9, v11);
}

void __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = cl::chrono::CFAbsoluteTimeClock::now();
  if ([*(a1 + 32) displayOnChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) displayOn];
      v4 = @"Off";
      if (v3)
      {
        v4 = @"On";
      }

      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState: display: %@", buf, 0xCu);
    }

    CLMicroLocationLogic::setDisplayState(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) displayOn], &v17);
    CLMicroLocationLegacyClient::onDisplayState(*(*(*(a1 + 40) + 8) + 112), [*(a1 + 32) displayOn]);
  }

  if ([*(a1 + 32) screenLockedChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke_cold_2();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) screenLocked];
      v7 = @"Unlocked";
      if (v6)
      {
        v7 = @"Locked";
      }

      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState: screen: %@", buf, 0xCu);
    }

    CLMicroLocationLogic::setLockScreenState(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) screenLocked]);
    if (([*(a1 + 32) screenLocked] & 1) == 0)
    {
      v8 = *(*(*(a1 + 40) + 8) + 136);
      (*(*v8 + 40))(v8);
    }
  }

  if ([*(a1 + 32) appInFocusChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke_cold_2();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) appInFocus];
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState: appInFocus: %@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) appInFocus];
    v12 = v11 == 0;

    if (!v12)
    {
      v13 = *(*(*(a1 + 40) + 8) + 136);
      v14 = [*(a1 + 32) appInFocus];
      v15 = v14;
      std::string::basic_string[abi:ne200100]<0>(buf, [v14 UTF8String]);
      (*(*v13 + 16))(v13, buf);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleULDisplayMonitorEventDisplayState_OSX:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(ULLogicAdapter *)self environment];
  v9 = [v8 queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ULLogicAdapter__handleULDisplayMonitorEventDisplayState_OSX___block_invoke;
  v11[3] = &unk_2798D44B0;
  v12 = v7;
  v13 = self;
  v10 = v7;
  dispatch_async(v9, v11);
}

void __63__ULLogicAdapter__handleULDisplayMonitorEventDisplayState_OSX___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) screenOnChanged])
  {
    CLMicroLocationLogic::onDisplayStateChange_OSX(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) screenOn]);
    v2 = *(*(*(a1 + 40) + 8) + 136);
    (*(*v2 + 32))(v2, [*(a1 + 32) screenOn]);
  }

  if ([*(a1 + 32) clamshellModeChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) clamshellMode];
      v5 = @"Off";
      if (v4)
      {
        v5 = @"On";
      }

      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState_OSX: clamshellMode: %@", &v10, 0xCu);
    }
  }

  if ([*(a1 + 32) screenLockedChanged])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __59__ULLogicAdapter__handleULDisplayMonitorEventDisplayState___block_invoke_cold_2();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) screenLocked];
      v8 = @"Off";
      if (v7)
      {
        v8 = @"On";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULDisplayMonitorEventDisplayState_OSX: screenLock: %@", &v10, 0xCu);
    }

    CLMicroLocationLogic::setLockScreenState(*(*(*(a1 + 40) + 8) + 104), [*(a1 + 32) screenLocked]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleULInternalNotifyMonitorEventLocalize:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventLocalize: localize", buf, 2u);
  }

  v7 = [(ULLogicAdapter *)self environment];
  v8 = [v7 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ULLogicAdapter__handleULInternalNotifyMonitorEventLocalize___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(v8, block);
}

void __62__ULLogicAdapter__handleULInternalNotifyMonitorEventLocalize___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 112);
  std::string::basic_string[abi:ne200100]<0>(__p, "NotificationCenter");
  CLMicroLocationLegacyClient::onLocalizationRequest(v1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)_handleULInternalNotifyMonitorEventRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventRecord: record", buf, 2u);
  }

  v7 = [(ULLogicAdapter *)self environment];
  v8 = [v7 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ULLogicAdapter__handleULInternalNotifyMonitorEventRecord___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)_handleULInternalNotifyMonitorEventPurge:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventPurge: purge", buf, 2u);
  }

  v7 = [(ULLogicAdapter *)self environment];
  v8 = [v7 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ULLogicAdapter__handleULInternalNotifyMonitorEventPurge___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)_handleULInternalNotifyMonitorEventSettingsRefrsh:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  objc_opt_isKindOfClass();

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "_handleULInternalNotifyMonitorEventSettingsRefrsh: refresh", buf, 2u);
  }

  v7 = [(ULLogicAdapter *)self environment];
  v8 = [v7 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ULLogicAdapter__handleULInternalNotifyMonitorEventSettingsRefrsh___block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(v8, block);
}

uint64_t __68__ULLogicAdapter__handleULInternalNotifyMonitorEventSettingsRefrsh___block_invoke(ULSettings *a1)
{
  ULSettings::refresh(a1);
  v2 = *(*(*(a1 + 4) + 8) + 104);

  return CLMicroLocationLogic::refreshSettings(v2);
}

- (void)_handleULPrivacyMonitorEventLocationServices:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 locationServicesEnabled];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULPrivacyMonitorEventLocationServices: locationServicesEnabled: %@", buf, 0xCu);
  }

  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__ULLogicAdapter__handleULPrivacyMonitorEventLocationServices___block_invoke;
  v15[3] = &unk_2798D44B0;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __63__ULLogicAdapter__handleULPrivacyMonitorEventLocationServices___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 104);
  (*(*v2 + 144))(v2, [*(a1 + 40) locationServicesEnabled]);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 104);
  v5 = [v3 locationServicesEnabled];
  v6 = *(*v4 + 152);

  return v6(v4, v5);
}

- (void)_handleULBuddyMonitorEventBuddyComplete:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 buddyComplete];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "_handleULBuddyMonitorEventBuddyComplete: buddyComplete: %@", buf, 0xCu);
  }

  v11 = [(ULLogicAdapter *)self environment];
  v12 = [v11 queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__ULLogicAdapter__handleULBuddyMonitorEventBuddyComplete___block_invoke;
  v15[3] = &unk_2798D44B0;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __58__ULLogicAdapter__handleULBuddyMonitorEventBuddyComplete___block_invoke(uint64_t a1)
{
  CLMicroLocationLogic::onBuddyComplete(*(*(*(a1 + 32) + 8) + 104), [*(a1 + 40) buddyComplete]);
  if ([*(a1 + 40) buddyComplete])
  {
    v3 = [*(a1 + 32) environment];
    v2 = [v3 buddyMonitor];
    [v2 removeObserver:*(a1 + 32)];
  }
}

- (void)_handleULSleepWakeMonitorEvent:(id)a3
{
  v4 = a3;
  if (![MEMORY[0x277D28868] isInternalInstall])
  {
    goto LABEL_11;
  }

  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLogAPSleepStateEnabled"];
  v8 = [v6 objectForKey:v7];
  if (!v8)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
LABEL_5:
    v9 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v10 = v9;

  if (v10)
  {
    objc_opt_class();
    v11 = v4;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [(ULLogicAdapter *)self environment];
    v15 = [v14 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ULLogicAdapter__handleULSleepWakeMonitorEvent___block_invoke;
    block[3] = &unk_2798D4160;
    v19 = v13;
    v16 = v13;
    dispatch_async(v15, block);
  }

  else
  {
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default();
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "_handleULSleepWakeMonitorEvent, ignore on customer build", buf, 2u);
    }
  }
}

void __49__ULLogicAdapter__handleULSleepWakeMonitorEvent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sleepWakeState];
  v2 = +[ULHomeSlamAnalytics shared];
  [v2 handleSleepWakeMonitorEvent:v1];
}

+ (id)_newULServiceDescriptorFromInternalDescriptor:(const void *)a3
{
  v4 = objc_opt_new();
  for (i = 0; i != 32; ++i)
  {
    if ((*(a3 + 3) >> i))
    {
      v6 = [objc_alloc(MEMORY[0x277D287B8]) initWithLocationTypeEnum:i];
      [v4 addObject:v6];
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  v8 = objc_alloc(MEMORY[0x277D28800]);
  v9 = *(a3 + 2);
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];
  v11 = [v8 initWithServiceIdentifier:v7 serviceType:v9 locationTypes:v10];

  return v11;
}

- (id)diagnosticInfo
{
  v3 = [(ULLogicAdapter *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_not_V2(v4);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(ULLogicAdapter *)self environment];
  v6 = [v5 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ULLogicAdapter_ULDiagnosticsProvider__diagnosticInfo__block_invoke;
  v9[3] = &unk_2798D44D8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v6, v9);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __55__ULLogicAdapter_ULDiagnosticsProvider__diagnosticInfo__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"Date";
  v2 = [MEMORY[0x277CBEAA8] date];
  v10[1] = @"Modified ULSettings";
  v11[0] = v2;
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 settingsString];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  result = CLMicroLocationLogic::logState(*(*(*(a1 + 32) + 8) + 104));
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_maintenanceExecute:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_routineStateAnalyzerExecute:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_analyticsExecute:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_wifiAnalyticsExecute:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_exportiCloudBackupExecute:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)_registerOrUnregisterForBackgroundTaskWithRequest:(os_log_t)log withSelector:(void *)a4 isRegister:.cold.1(uint64_t a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = a1;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "[self respondsToSelector:selector]";
  _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ULLogicAdapter does not respond to selector, selector:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

@end