@interface IsolatedCoreAudioXPCSiphon
+ (uint64_t)initClientMap;
+ (void)initClientMap;
- (IsolatedCoreAudioXPCSiphon)init;
- (IsolatedCoreAudioXPCSiphon)initWithClientMap:(shared_ptr<SiphonClientMap>)map andServer:(shared_ptr<ClientLocalServer>)server;
- (id).cxx_construct;
- (shared_ptr<IsolatedCoreAudioSiphon>)mSiphon;
- (shared_ptr<SiphonClientMap>)mClientMap;
- (uint64_t)createClientReaper;
- (void)connectToUseCase:(unsigned int)case endpoint:(id)endpoint;
- (void)createClientReaper;
- (void)requestAudio:(unsigned int)audio atTime:(unint64_t)time atSample:(unint64_t)sample with:(id)with;
- (void)setAudioLapseCallback:(unsigned int)callback usingXPC:(id)c with:(id)with;
- (void)setMClientMap:(shared_ptr<SiphonClientMap>)map;
- (void)setMSiphon:(shared_ptr<IsolatedCoreAudioSiphon>)siphon;
- (void)startIO:(unsigned int)o targetTime:(unint64_t)time with:(id)with;
- (void)startIO:(unsigned int)o with:(id)with;
- (void)stopIO:(unsigned int)o with:(id)with;
@end

@implementation IsolatedCoreAudioXPCSiphon

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (void)setMClientMap:(shared_ptr<SiphonClientMap>)map
{
  p_mClientMap = &self->_mClientMap;
  v5 = *map.__ptr_;
  v4 = *(map.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mClientMap.__cntrl_;
  p_mClientMap->__ptr_ = v5;
  p_mClientMap->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<SiphonClientMap>)mClientMap
{
  cntrl = self->_mClientMap.__cntrl_;
  *v2 = self->_mClientMap.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setMSiphon:(shared_ptr<IsolatedCoreAudioSiphon>)siphon
{
  p_mSiphon = &self->_mSiphon;
  v5 = *siphon.__ptr_;
  v4 = *(siphon.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mSiphon.__cntrl_;
  p_mSiphon->__ptr_ = v5;
  p_mSiphon->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<IsolatedCoreAudioSiphon>)mSiphon
{
  cntrl = self->_mSiphon.__cntrl_;
  *v2 = self->_mSiphon.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)requestAudio:(unsigned int)audio atTime:(unint64_t)time atSample:(unint64_t)sample with:(id)with
{
  v11 = *MEMORY[0x277D85DE8];
  withCopy = with;
  [(IsolatedCoreAudioXPCSiphon *)self mSiphon];
  (*(**(v9 + 16) + 40))(*(v9 + 16));
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  withCopy[2](withCopy, 0);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopIO:(unsigned int)o with:(id)with
{
  v36 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7.i32[0] = bswap32(o);
  v8 = vzip1_s8(v7, v7);
  v9.i64[0] = 0x1F0000001FLL;
  v9.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x5F0000005FLL;
  v10.i64[1] = 0x5F0000005FLL;
  v11 = vbsl_s8(vmovn_s32(vcgtq_u32(v10, vsraq_n_s32(v9, vshlq_n_s32(vmovl_u16(v8), 0x18uLL), 0x18uLL))), v8, 0x2E002E002E002ELL);
  v30 = 4;
  LODWORD(v29) = vuzp1_s8(v11, v8).u32[0];
  BYTE4(v29) = 0;
  v12 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "IsolatedCoreAudioXPCSiphon.mm";
    *&buf[12] = 1024;
    *&buf[14] = 182;
    *&buf[18] = 2080;
    *&buf[20] = &v29;
    _os_log_impl(&dword_255576000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s called Stop IO", buf, 0x1Cu);
  }

  [(IsolatedCoreAudioXPCSiphon *)self mSiphon];
  v13 = *v27;
  std::mutex::lock((*v27 + 32));
  SiphonClientMap::disableAvailabilityCallbacksForClient(*(v13 + 8), o);
  SiphonClientMap::disableLapseHandlingForClient(*(v13 + 8), o);
  v14 = *(v13 + 8) + 16;
  do
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    v15 = atomic_load((**(v14 + 24) + 64));
  }

  while ((v15 & 1) == 0);
  v16 = *(v13 + 24);
  v17 = sIsolatedCoreAudioSiphonLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v14 || (v16 & 1) == 0)
  {
    if (v18)
    {
      *buf = 136315394;
      *&buf[4] = "IsolatedCoreAudioClientMultiplexer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      _os_log_impl(&dword_255576000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::stopIOIfNoClientsAreRunning Stop requested, but no client IO is running IO", buf, 0x12u);
    }
  }

  else
  {
    if (v18)
    {
      *buf = 136315394;
      *&buf[4] = "IsolatedCoreAudioClientMultiplexer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      _os_log_impl(&dword_255576000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::stopIOIfNoClientsAreRunning sending Stop message to server", buf, 0x12u);
    }

    (*(**v13 + 56))();
    *(v13 + 24) = 0;
  }

  v19 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(*(v13 + 8), o);
  if (v19)
  {
    v21 = v19;
    v32 = 4;
    LODWORD(__p[0]) = vuzp1_s8(v11, v20).u32[0];
    BYTE4(__p[0]) = 0;
    v22 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "SiphonClientMap.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 43;
      *&buf[18] = 2080;
      *&buf[20] = __p;
      _os_log_impl(&dword_255576000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Waiting for Availability callbacks to complete for %s client", buf, 0x1Cu);
    }

    v23 = *(*v21[3] + 72);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN14SiphonIOClient22drainAvailabilityQueueEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_469;
    v35 = &v33;
    dispatch_sync(v23, buf);
    v24 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = __p;
      if (v32 < 0)
      {
        v25 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "SiphonClientMap.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 45;
      *&buf[18] = 2080;
      *&buf[20] = v25;
      _os_log_impl(&dword_255576000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronous StopIO Complete for %s client", buf, 0x1Cu);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::unlock((v13 + 32));
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  withCopy[2](withCopy, 0);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)startIO:(unsigned int)o targetTime:(unint64_t)time with:(id)with
{
  v41 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v9.i32[0] = bswap32(o);
  v10 = vzip1_s8(v9, v9);
  v11.i64[0] = 0x1F0000001FLL;
  v11.i64[1] = 0x1F0000001FLL;
  v12.i64[0] = 0x5F0000005FLL;
  v12.i64[1] = 0x5F0000005FLL;
  v13 = vbsl_s8(vmovn_s32(vcgtq_u32(v12, vsraq_n_s32(v11, vshlq_n_s32(vmovl_u16(v10), 0x18uLL), 0x18uLL))), v10, 0x2E002E002E002ELL);
  v28 = 4;
  LODWORD(__p) = vuzp1_s8(v13, v10).u32[0];
  BYTE4(__p) = 0;
  v14 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "IsolatedCoreAudioXPCSiphon.mm";
    v35 = 1024;
    v36 = 164;
    v37 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s called Start IO", buf, 0x1Cu);
  }

  [(IsolatedCoreAudioXPCSiphon *)self mSiphon];
  v15 = v25;
  atomic_store(1u, (v25 + 32));
  v16 = *v15;
  v16[37] = time;
  v31 = v16 + 12;
  v32 = 1;
  std::__shared_mutex_base::lock((v16 + 12));
  std::mutex::lock((v16 + 4));
  SiphonClientMap::enableAvailabilityCallbacksForClient(v16[1], o);
  v17 = v16[1] + 16;
  do
  {
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = atomic_load((**(v17 + 24) + 64));
  }

  while ((v18 & 1) == 0);
  if (v16[3])
  {
LABEL_7:
    v19 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "IsolatedCoreAudioClientMultiplexer.cpp";
      v35 = 1024;
      v36 = 109;
      _os_log_impl(&dword_255576000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::startIOIfNoClientsAreRunning IO already running", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v20 = (*(**v16 + 48))(*v16, time);
  if (!v20)
  {
    *(v16 + 24) = 1;
LABEL_9:
    SiphonClientMap::enableLapseHandlingForClient(v16[1], o);
    v20 = 0;
    goto LABEL_10;
  }

  v22 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v34 = "IsolatedCoreAudioClientMultiplexer.cpp";
    v35 = 1024;
    v36 = 104;
    v37 = 1024;
    LODWORD(p_p) = v20;
    _os_log_impl(&dword_255576000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::startIOIfNoClientsAreRunning IO failed to start with status %d", buf, 0x18u);
  }

  v30 = 4;
  LODWORD(v29) = vuzp1_s8(v13, v23).u32[0];
  BYTE4(v29) = 0;
  v24 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v34 = "IsolatedCoreAudioClientMultiplexer.cpp";
    v35 = 1024;
    v36 = 164;
    v37 = 2080;
    p_p = &v29;
    v39 = 1024;
    v40 = v20;
    _os_log_impl(&dword_255576000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::startSharedIO failed to start for use case %s with status %d", buf, 0x22u);
  }

  SiphonClientMap::disableAvailabilityCallbacksForClient(v16[1], o);
  if (v30 < 0)
  {
    operator delete(v29);
  }

LABEL_10:
  std::mutex::unlock((v16 + 4));
  std::__shared_mutex_base::unlock((v16 + 12));
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  withCopy[2](withCopy, v20);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)startIO:(unsigned int)o with:(id)with
{
  v40 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7.i32[0] = bswap32(o);
  v8 = vzip1_s8(v7, v7);
  v9.i64[0] = 0x1F0000001FLL;
  v9.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x5F0000005FLL;
  v10.i64[1] = 0x5F0000005FLL;
  v11 = vbsl_s8(vmovn_s32(vcgtq_u32(v10, vsraq_n_s32(v9, vshlq_n_s32(vmovl_u16(v8), 0x18uLL), 0x18uLL))), v8, 0x2E002E002E002ELL);
  v27 = 4;
  LODWORD(__p) = vuzp1_s8(v11, v8).u32[0];
  BYTE4(__p) = 0;
  v12 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v33 = "IsolatedCoreAudioXPCSiphon.mm";
    v34 = 1024;
    v35 = 146;
    v36 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s called Start IO", buf, 0x1Cu);
  }

  [(IsolatedCoreAudioXPCSiphon *)self mSiphon];
  v13 = v24;
  atomic_store(1u, (v24 + 32));
  v14 = *v13;
  v15 = (*v13 + 96);
  v30 = v15;
  v31 = 1;
  std::__shared_mutex_base::lock(v15);
  std::mutex::lock((v14 + 32));
  SiphonClientMap::enableAvailabilityCallbacksForClient(*(v14 + 8), o);
  v16 = *(v14 + 8) + 16;
  do
  {
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = atomic_load((**(v16 + 24) + 64));
  }

  while ((v17 & 1) == 0);
  if (*(v14 + 24))
  {
LABEL_7:
    v18 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "IsolatedCoreAudioClientMultiplexer.cpp";
      v34 = 1024;
      v35 = 85;
      _os_log_impl(&dword_255576000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::startIOIfNoClientsAreRunning IO already running", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v19 = (*(**v14 + 40))();
  if (!v19)
  {
    *(v14 + 24) = 1;
LABEL_9:
    SiphonClientMap::enableLapseHandlingForClient(*(v14 + 8), o);
    v19 = 0;
    goto LABEL_10;
  }

  v21 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v33 = "IsolatedCoreAudioClientMultiplexer.cpp";
    v34 = 1024;
    v35 = 80;
    v36 = 1024;
    LODWORD(p_p) = v19;
    _os_log_impl(&dword_255576000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::startIOIfNoClientsAreRunning IO failed to start with status %d", buf, 0x18u);
  }

  v29 = 4;
  LODWORD(v28) = vuzp1_s8(v11, v22).u32[0];
  BYTE4(v28) = 0;
  v23 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v33 = "IsolatedCoreAudioClientMultiplexer.cpp";
    v34 = 1024;
    v35 = 140;
    v36 = 2080;
    p_p = &v28;
    v38 = 1024;
    v39 = v19;
    _os_log_impl(&dword_255576000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientMultiplexer::startSharedIO failed to start for use case %s with status %d", buf, 0x22u);
  }

  SiphonClientMap::disableAvailabilityCallbacksForClient(*(v14 + 8), o);
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_10:
  std::mutex::unlock((v14 + 32));
  std::__shared_mutex_base::unlock(v15);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  withCopy[2](withCopy, v19);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setAudioLapseCallback:(unsigned int)callback usingXPC:(id)c with:(id)with
{
  v12 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v6 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "IsolatedCoreAudioXPCSiphon.mm";
    v10 = 1024;
    v11 = 138;
    _os_log_impl(&dword_255576000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setAudioLapseCallback called", &v8, 0x12u);
  }

  withCopy[2](withCopy, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectToUseCase:(unsigned int)case endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:endpointCopy];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A438];
  [v7 setRemoteObjectInterface:v8];

  [v7 setInterruptionHandler:&__block_literal_global_423];
  [v7 setInvalidationHandler:&__block_literal_global_26];
  [v7 activate];
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30];
  [(IsolatedCoreAudioXPCSiphon *)self mClientMap];
  v10 = v17[1];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    caseCopy = case;
    if (v10 <= case)
    {
      caseCopy = case % v10;
    }
  }

  else
  {
    caseCopy = (v10 - 1) & case;
  }

  v13 = *(*v17 + 8 * caseCopy);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_17:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == case)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= v10)
      {
        v15 %= v10;
      }
    }

    else
    {
      v15 &= v10 - 1;
    }

    if (v15 != caseCopy)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (*(v14 + 4) != case)
  {
    goto LABEL_16;
  }

  objc_storeStrong(*(v14[3] + 16), v9);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  reverseConnections = [(IsolatedCoreAudioXPCSiphon *)self reverseConnections];
  [reverseConnections addObject:v7];
}

void __56__IsolatedCoreAudioXPCSiphon_connectToUseCase_endpoint___block_invoke_27(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = [v2 localizedFailureReason];
    v7 = 136316162;
    v8 = "IsolatedCoreAudioXPCSiphon.mm";
    v9 = 1024;
    v10 = 109;
    v11 = 2112;
    v12 = @"Error on remote object proxy";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %@: %@ %@\n", &v7, 0x30u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __56__IsolatedCoreAudioXPCSiphon_connectToUseCase_endpoint___block_invoke_24()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "IsolatedCoreAudioXPCSiphon.mm";
    v4 = 1024;
    v5 = 104;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Reverse connection invalidated", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __56__IsolatedCoreAudioXPCSiphon_connectToUseCase_endpoint___block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "IsolatedCoreAudioXPCSiphon.mm";
    v4 = 1024;
    v5 = 103;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Reverse connection interrupted", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)createClientReaper
{
  *self = &unk_286776900;
  v2 = self[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return self;
}

- (uint64_t)createClientReaper
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286776900;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

- (IsolatedCoreAudioXPCSiphon)initWithClientMap:(shared_ptr<SiphonClientMap>)map andServer:(shared_ptr<ClientLocalServer>)server
{
  ptr = map.__ptr_;
  v18 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286779C98];
  v14.receiver = self;
  v14.super_class = IsolatedCoreAudioXPCSiphon;
  v7 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v14 initWithInterface:v6 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient.shareddsp"];

  if (v7)
  {
    v8 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "IsolatedCoreAudioXPCSiphon.mm";
      v16 = 1024;
      v17 = 74;
      _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hello Siphon Tests", buf, 0x12u);
    }

    v9 = *(ptr + 1);
    v12 = *ptr;
    v13 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(IsolatedCoreAudioXPCSiphon *)v7 setMClientMap:&v12];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    [(IsolatedCoreAudioXPCSiphon *)v7 mClientMap];
    operator new();
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (IsolatedCoreAudioXPCSiphon)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286779C98];
  v10.receiver = self;
  v10.super_class = IsolatedCoreAudioXPCSiphon;
  v4 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v10 initWithInterface:v3 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient.shareddsp"];

  if (v4)
  {
    v5 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "IsolatedCoreAudioXPCSiphon.mm";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 60;
      _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hello Siphon", buf, 0x12u);
    }

    +[IsolatedCoreAudioXPCSiphon initClientMap];
    [(IsolatedCoreAudioXPCSiphon *)v4 setMClientMap:v8];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    [(IsolatedCoreAudioXPCSiphon *)v4 mClientMap];
    operator new();
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (uint64_t)initClientMap
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286776710;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

+ (void)initClientMap
{
  *self = &unk_286776710;
  v2 = self[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return self;
}

@end