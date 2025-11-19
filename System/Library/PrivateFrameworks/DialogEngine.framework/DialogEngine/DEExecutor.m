@interface DEExecutor
- (DEExecutor)init;
- (id)execute;
@end

@implementation DEExecutor

- (DEExecutor)init
{
  v5.receiver = self;
  v5.super_class = DEExecutor;
  v2 = [(DEExecutor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DEExecutor *)v2 setVisual:0];
    [(DEExecutor *)v3 setDebug:0];
    [(DEExecutor *)v3 setTest:0];
    [(DEExecutor *)v3 setResetState:0];
    [(DEExecutor *)v3 setMultiuser:0];
    [(DEExecutor *)v3 setGrounding:0];
    [(DEExecutor *)v3 setEnableUpdates:0];
    [(DEExecutor *)v3 setCreateTrace:0];
    [(DEExecutor *)v3 setSwitchFallthrough:0];
    [(DEExecutor *)v3 setIncludeKeywords:0];
    [(DEExecutor *)v3 setRandomSeed:0];
    [(DEExecutor *)v3 setCurrentTime:0];
    [(DEExecutor *)v3 setDeterministic:0];
    [(DEExecutor *)v3 setIsSpotlight:0];
    [(DEExecutor *)v3 setIsLabelMode:0];
    [(DEExecutor *)v3 setDisableLogging:0];
  }

  return v3;
}

- (id)execute
{
  BYTE8(v18) = 0;
  *&v17 = 0;
  v16 = 0uLL;
  BYTE8(v17) = 0;
  siri::dialogengine::ElapsedTimer::Reset(&v16);
  v11 = v16;
  v12 = v17;
  *&v13.__r_.__value_.__l.__data_ = v18;
  [(DEExecutor *)self getContext:&v11];
  if (v14)
  {
    siri::dialogengine::RequestInfo::RequestInfo(&v11, (v14 + 8));
    [(DEExecutor *)self LogCurareCATExecution:&v11];
    *(v10 + 3) = 0;
    v10[0] = 0;
    *(v9 + 3) = 0;
    v9[0] = 0;
    *(v8 + 3) = 0;
    v8[0] = 0;
    if (v11 == 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      std::vector<siri::dialogengine::UpdatableDir>::__init_with_size[abi:ne200100]<siri::dialogengine::UpdatableDir*,siri::dialogengine::UpdatableDir*>(&v5, *(&v11 + 1), v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - *(&v11 + 1)) >> 5));
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v4, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        v4 = v13;
      }

      siri::dialogengine::FindVisualFile(&v5);
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::vector<siri::dialogengine::UpdatableDir>::__init_with_size[abi:ne200100]<siri::dialogengine::UpdatableDir*,siri::dialogengine::UpdatableDir*>(&v5, *(&v11 + 1), v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - *(&v11 + 1)) >> 5));
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v4, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = v13;
    }

    siri::dialogengine::FindParamsFile(&v5);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return 0;
}

@end