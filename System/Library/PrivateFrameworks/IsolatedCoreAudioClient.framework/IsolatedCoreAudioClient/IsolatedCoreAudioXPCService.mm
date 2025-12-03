@interface IsolatedCoreAudioXPCService
- (IsolatedCoreAudioXPCService)init;
- (IsolatedCoreAudioXPCService)initWithClientReaper:(function<void)(int;
- (id).cxx_construct;
- (id)init;
- (shared_ptr<ServerSideAudioSwitchboard>)mServerSideSwitchboard;
- (uint64_t)init;
- (void)checkOutForIsolatedAudioSharedResources:(unsigned int)resources;
- (void)getWorkgroupForIsolatedAudio:(unsigned int)audio with:(id)with;
- (void)init;
- (void)setMServerSideSwitchboard:(shared_ptr<ServerSideAudioSwitchboard>)switchboard;
- (void)startIsolatedAudioForUseCase:(unsigned int)case atTime:(unint64_t)time with:(id)with;
- (void)startIsolatedAudioForUseCase:(unsigned int)case with:(id)with;
- (void)stopIsolatedAudioForUseCase:(unsigned int)case with:(id)with;
@end

@implementation IsolatedCoreAudioXPCService

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

- (void)setMServerSideSwitchboard:(shared_ptr<ServerSideAudioSwitchboard>)switchboard
{
  p_mServerSideSwitchboard = &self->_mServerSideSwitchboard;
  v5 = *switchboard.__ptr_;
  v4 = *(switchboard.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mServerSideSwitchboard.__cntrl_;
  p_mServerSideSwitchboard->__ptr_ = v5;
  p_mServerSideSwitchboard->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<ServerSideAudioSwitchboard>)mServerSideSwitchboard
{
  cntrl = self->_mServerSideSwitchboard.__cntrl_;
  *v2 = self->_mServerSideSwitchboard.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)stopIsolatedAudioForUseCase:(unsigned int)case with:(id)with
{
  v11 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315394;
    *&v10[4] = "IsolatedCoreAudioXPCService.mm";
    *&v10[12] = 1024;
    *&v10[14] = 141;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - Stop", v10, 0x12u);
  }

  [(IsolatedCoreAudioXPCService *)self mServerSideSwitchboard];
  v8 = ServerSideAudioSwitchboard::stopServerIOThread(*v10, case);
  if (*&v10[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v10[8]);
  }

  withCopy[2](withCopy, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startIsolatedAudioForUseCase:(unsigned int)case atTime:(unint64_t)time with:(id)with
{
  v22 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v9 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 124;
    _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - StartAtTime", buf, 0x12u);
  }

  [(IsolatedCoreAudioXPCService *)self mServerSideSwitchboard];
  ServerSideAudioSwitchboard::GetClientForIO(buf, *v19, case);
  if (buf[16] == 1)
  {
    v10 = *buf;
    v11 = *(*buf + 16);
    if (*(v11 + 64) == 1)
    {
      atomic_store(0, (v11 + 65));
      v12 = *(*v19 + 40);
      v14 = *v10;
      v13 = v10[1];
      v17 = v14;
      v18 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v12 + 64))(v12, &v17, time);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    else
    {
      v15 = 4;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  else
  {
    v15 = 4;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  withCopy[2](withCopy, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startIsolatedAudioForUseCase:(unsigned int)case with:(id)with
{
  v36 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "IsolatedCoreAudioXPCService.mm";
    v32 = 1024;
    v33 = 107;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - Start", buf, 0x12u);
  }

  [(IsolatedCoreAudioXPCService *)self mServerSideSwitchboard];
  ServerSideAudioSwitchboard::GetClientForIO(&v27, v22, case);
  v9 = v29;
  if (v29 == 1)
  {
    v10 = v27;
    v11 = *(v27 + 16);
    if (*(v11 + 64))
    {
      atomic_store(0, (v11 + 65));
      v12 = v22[5];
      v14 = *v10;
      v13 = *(v10 + 8);
      __p = v14;
      v25 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v12 + 56))(v12, &__p);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

LABEL_13:
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      goto LABEL_15;
    }
  }

  v8.i32[0] = bswap32(case);
  v16 = vzip1_s8(v8, v8);
  v17.i64[0] = 0x1F0000001FLL;
  v17.i64[1] = 0x1F0000001FLL;
  v18.i64[0] = 0x5F0000005FLL;
  v18.i64[1] = 0x5F0000005FLL;
  v19 = vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL);
  v26 = 4;
  LODWORD(__p) = vuzp1_s8(v19, v19).u32[0];
  BYTE4(__p) = 0;
  v20 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "ServerSideAudioSwitchboard.cpp";
    v32 = 1024;
    v33 = 55;
    v34 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideAudioSwitchboard::startServerIOThread IO not started for client %s", buf, 0x1Cu);
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }

  v15 = 4;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  withCopy[2](withCopy, v15);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)getWorkgroupForIsolatedAudio:(unsigned int)audio with:(id)with
{
  v16 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 88;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - getWorkgroupForIsolatedAudio", buf, 0x12u);
  }

  [(IsolatedCoreAudioXPCService *)self mServerSideSwitchboard];
  ServerSideAudioSwitchboard::GetClientForIO(buf, v13, audio);
  if (buf[16])
  {
    v8 = *&buf[8];
    v9 = v13[5];
    v10 = *(*buf + 8);
    *buf = **buf;
    *&buf[8] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 80))(v9, buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v12 = v11;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    IOThreadWorkgroup::IOThreadWorkgroup(buf, v12);
  }

  std::__throw_bad_optional_access[abi:ne200100]();
}

- (void)checkOutForIsolatedAudioSharedResources:(unsigned int)resources
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 75;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkOutForIsolatedAudioSharedResources", buf, 0x12u);
  }

  [(IsolatedCoreAudioXPCService *)self mServerSideSwitchboard];
  ServerSideAudioSwitchboard::GetClientForIO(buf, *v12, resources);
  if (buf[16] == 1)
  {
    v6 = *(*v12 + 40);
    v7 = *buf;
    v8 = *(*buf + 8);
    v10 = **buf;
    v11 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 72))(v6, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    *(*(v7 + 16) + 64) = 0;
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (IsolatedCoreAudioXPCService)initWithClientReaper:(function<void)(int
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [(IsolatedCoreAudioXPCService *)self init];
  if (v4)
  {
    std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v7, a3);
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v4 setClientReaper:v7];
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (IsolatedCoreAudioXPCService)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "IsolatedCoreAudioXPCService.mm";
    v10 = 1024;
    v11 = 18;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - Normal INIT", buf, 0x12u);
  }

  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286779AB8];
  v8.receiver = self;
  v8.super_class = IsolatedCoreAudioXPCService;
  v5 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v8 initWithInterface:v4 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient"];

  if (v5)
  {
    operator new();
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (uint64_t)init
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z35-[IsolatedCoreAudioXPCService init]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)init
{

  JUMPOUT(0x259C39250);
}

- (id)init
{
  *a2 = &unk_2867760A0;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

@end