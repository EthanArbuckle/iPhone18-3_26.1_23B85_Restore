@interface MADClientInterface
- (MADClientInterface)init;
- (id).cxx_construct;
- (id)initForTest:(id)a3;
- (id)listenForMicrophoneActivity:reply:;
- (shared_ptr<MADMultiplexer>)mMADMultiplexer;
- (uint64_t)createClientReaper;
- (uint64_t)listenForMicrophoneActivity:reply:;
- (void)createClientReaper;
- (void)disableMicrophoneActivityDetection:(id)a3;
- (void)enableMicrophoneActivityDetection:(id)a3;
- (void)listenForMicrophoneActivity:(id)a3 reply:(id)a4;
- (void)listenForMicrophoneActivity:reply:;
- (void)setMMADMultiplexer:(shared_ptr<MADMultiplexer>)a3;
- (void)setupReverseConnection:(id)a3;
- (void)stopListeningForMicrophoneActivity:(id)a3;
@end

@implementation MADClientInterface

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (void)setMMADMultiplexer:(shared_ptr<MADMultiplexer>)a3
{
  p_mMADMultiplexer = &self->_mMADMultiplexer;
  v5 = *a3.__ptr_;
  v4 = *(a3.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mMADMultiplexer.__cntrl_;
  p_mMADMultiplexer->__ptr_ = v5;
  p_mMADMultiplexer->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<MADMultiplexer>)mMADMultiplexer
{
  cntrl = self->_mMADMultiplexer.__cntrl_;
  *v2 = self->_mMADMultiplexer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)stopListeningForMicrophoneActivity:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "MADClientInterface.mm";
    v10 = 1024;
    v11 = 112;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface stopListeningForMicrophoneActivity", &v8, 0x12u);
  }

  cntrl = self->mClient.__cntrl_;
  self->mClient.__ptr_ = 0;
  self->mClient.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v4[2](v4, 0);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)listenForMicrophoneActivity:(id)a3 reply:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315394;
    *&v19[4] = "MADClientInterface.mm";
    *&v19[12] = 1024;
    *&v19[14] = 94;
    _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface listenForMicrophoneActivity", v19, 0x12u);
  }

  [(MADClientInterface *)self setupReverseConnection:v6];
  v9 = self;
  p_mClient = &v9->mClient;
  ptr = v9->mClient.__ptr_;
  v12 = ptr + 24;
  *v19 = &unk_286777070;
  *&v19[8] = v9;
  v20 = v19;
  v13 = v9;
  if (ptr + 24 != v19)
  {
    if (*(ptr + 6) == v12)
    {
      std::__function::__func<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1,std::allocator<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1>,void ()(BOOL)>::__clone(v19, v21);
      (*(*v20 + 32))(v20);
      v20 = 0;
      (*(**(ptr + 6) + 24))(*(ptr + 6), v19);
      (*(**(ptr + 6) + 32))(*(ptr + 6));
      *(ptr + 6) = 0;
      v20 = v19;
      (*(v21[0] + 24))(v21, ptr + 24);
      (*(v21[0] + 32))(v21);
    }

    else
    {
      std::__function::__func<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1,std::allocator<[MADClientInterface listenForMicrophoneActivity:reply:]::$_1>,void ()(BOOL)>::__clone(v19, ptr + 3);
      (*(*v20 + 32))(v20);
      v20 = *(ptr + 6);
    }

    *(ptr + 6) = v12;
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v19);

  [(MADClientInterface *)v13 mMADMultiplexer];
  v14 = *v19;
  v15 = p_mClient->__ptr_;
  cntrl = p_mClient->__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v14[1];
  *v14 = v15;
  v14[1] = cntrl;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  if (*&v19[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v19[8]);
  }

  v7[2](v7, 0);

  v18 = *MEMORY[0x277D85DE8];
}

- (uint64_t)listenForMicrophoneActivity:reply:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z56-[MADClientInterface listenForMicrophoneActivity:reply:]E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)listenForMicrophoneActivity:reply:
{

  JUMPOUT(0x259C39250);
}

- (id)listenForMicrophoneActivity:reply:
{
  *a2 = &unk_286777070;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (void)disableMicrophoneActivityDetection:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "MADClientInterface.mm";
    v9 = 1024;
    v10 = 87;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface disableMicrophoneActivityDetection", &v7, 0x12u);
  }

  *(self->mClient.__ptr_ + 16) = 0;
  v4[2](v4, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableMicrophoneActivityDetection:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "MADClientInterface.mm";
    v9 = 1024;
    v10 = 80;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface enableMicrophoneActivityDetection", &v7, 0x12u);
  }

  *(self->mClient.__ptr_ + 16) = 1;
  v4[2](v4, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setupReverseConnection:(id)a3
{
  v10 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v10];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677B190];
  [v4 setRemoteObjectInterface:v5];

  [v4 setInterruptionHandler:&__block_literal_global_700];
  [v4 setInvalidationHandler:&__block_literal_global_18];
  [v4 activate];
  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];
  v7 = *self->mClient.__ptr_;
  v8 = *v7;
  *v7 = v6;

  v9 = [(MADClientInterface *)self mReverseConnections];
  [v9 addObject:v4];
}

void __45__MADClientInterface_setupReverseConnection___block_invoke_19(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = [v2 localizedFailureReason];
    v7 = 136316162;
    v8 = "MADClientInterface.mm";
    v9 = 1024;
    v10 = 71;
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

void __45__MADClientInterface_setupReverseConnection___block_invoke_16()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "MADClientInterface.mm";
    v4 = 1024;
    v5 = 66;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Reverse connection invalidated", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __45__MADClientInterface_setupReverseConnection___block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioMicActivityLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "MADClientInterface.mm";
    v4 = 1024;
    v5 = 65;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d Reverse connection interrupted", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)createClientReaper
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_286776FE0;
  v5[3] = v5;
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v4, v5);
  [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self setClientReaper:v4];
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
}

- (uint64_t)createClientReaper
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z40-[MADClientInterface createClientReaper]E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (id)initForTest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A168];
  v10.receiver = self;
  v10.super_class = MADClientInterface;
  v6 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v10 initWithInterface:v5 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient.micactivity"];

  if (v6)
  {
    v7 = sIsolatedCoreAudioMicActivityLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "MADClientInterface.mm";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 43;
      _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface test constructor", buf, 0x12u);
    }

    LOBYTE(buf[0]) = 1;
    std::allocate_shared[abi:ne200100]<MADMultiplexer,std::allocator<MADMultiplexer>,BOOL,0>();
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (MADClientInterface)init
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A168];
  v8.receiver = self;
  v8.super_class = MADClientInterface;
  v4 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v8 initWithInterface:v3 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient.micactivity"];

  if (v4)
  {
    v5 = sIsolatedCoreAudioMicActivityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315394;
      *&buf[1] = "MADClientInterface.mm";
      LOWORD(buf[3]) = 1024;
      *(&buf[3] + 2) = 29;
      _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MTDClientInterface constructor", buf, 0x12u);
    }

    LOBYTE(buf[0]) = 0;
    std::allocate_shared[abi:ne200100]<MADMultiplexer,std::allocator<MADMultiplexer>,BOOL,0>();
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

@end