@interface KeepAliveManager
- (BOOL)isNextKeepAliveWithinThreshold:(double)a3;
- (KeepAliveManager)initWithIdentifier:(KeepAliveManager *)self minInterval:(SEL)a2 maxInterval:()basic_string<char enableWakeUp:()std:(std::allocator<char>> *)a3 :char_traits<char> delegate:;
- (id).cxx_construct;
- (void)dealloc;
- (void)growKeepAliveInterval;
- (void)shrinkKeepAliveInterval;
- (void)startKeepAlive;
- (void)startWakeUpOnWifi;
- (void)stopKeepAlive;
- (void)stopWakeUpOnWifi;
@end

@implementation KeepAliveManager

- (KeepAliveManager)initWithIdentifier:(KeepAliveManager *)self minInterval:(SEL)a2 maxInterval:()basic_string<char enableWakeUp:()std:(std::allocator<char>> *)a3 :char_traits<char> delegate:
{
  v7 = v4;
  v8 = v3;
  v9 = v6;
  v10 = v5;
  v40.receiver = self;
  v40.super_class = KeepAliveManager;
  v11 = [(KeepAliveManager *)&v40 init];
  if (!v11)
  {
LABEL_21:
    v26 = v11;
    goto LABEL_28;
  }

  std::operator+<char>();
  v12 = (v11 + 16);
  if (v11[39] < 0)
  {
    operator delete(*v12);
  }

  v13 = v39;
  *v12 = v38;
  *(v11 + 4) = v13;
  v11[72] = v8;
  v11[73] = 0;
  v15 = *v7;
  v14 = v7[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v16 = *(v11 + 6);
  *(v11 + 5) = v15;
  *(v11 + 6) = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = dispatch_queue_create("com.apple.ipTelephony.keepAliveQueue", 0);
  v18 = *(v11 + 10);
  *(v11 + 10) = v17;
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = v11 + 16;
  if (v11[39] < 0)
  {
    v19 = *v12;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v19];
  v21 = [objc_alloc(MEMORY[0x1E69BDC28]) initWithConnectionClass:0 delegate:v11 delegateQueue:*(v11 + 10) serviceIdentifier:v20];
  v22 = *(v11 + 1);
  *(v11 + 1) = v21;

  v23 = *(v11 + 1);
  if (v23)
  {
    [v23 setOnlyAllowedStyle:0];
    if (v10 != 0.0)
    {
      [*(v11 + 1) setMinimumKeepAliveInterval:v10];
    }

    [*(v11 + 1) setMaximumKeepAliveInterval:v9];
    [*(v11 + 1) setEnableNonCellularConnections:1];
    v24 = std::string::basic_string[abi:ne200100]<0>(&v38, "ims.keepalive");
    v30[0] = 0;
    v33 = 0;
    v25 = ims::debug(v24, v30);
    (*(*v25 + 32))(v25, v11 + 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ": PCConnectionManager created with delegate ", 44);
    *(v25 + 17) = 0;
    MEMORY[0x1E6923310](*(v25 + 8), v11);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " maxInterval(seconds) = ", 24);
    *(v25 + 17) = 0;
    MEMORY[0x1E6923330](*(v25 + 8), v9);
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " wakeUpOnWifi = ", 16);
    *(v25 + 17) = 0;
    MEMORY[0x1E6923320](*(v25 + 8), v11[72]);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    goto LABEL_21;
  }

  v27 = std::string::basic_string[abi:ne200100]<0>(&v38, "ims.keepalive");
  v34[0] = 0;
  v37 = 0;
  v28 = ims::debug(v27, v34);
  (*(*v28 + 32))(v28, v11 + 16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), ": PCConnectionManager creation failed", 37);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  v26 = 0;
LABEL_28:

  return v26;
}

- (void)dealloc
{
  [(PCConnectionManager *)self->_manager stopManager];
  [(PCConnectionManager *)self->_manager setDelegate:0];
  manager = self->_manager;
  self->_manager = 0;

  cntrl = self->_delegate.__cntrl_;
  self->_delegate.__ptr_ = 0;
  self->_delegate.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }

  fObj = self->_queue.fObj.fObj;
  self->_queue.fObj.fObj = 0;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  v6 = std::string::basic_string[abi:ne200100]<0>(&v13, "ims.keepalive");
  v9[0] = 0;
  v12 = 0;
  v7 = ims::debug(v6, v9);
  (*(*v7 + 32))(v7, &self->_keepAliveId);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ": PCConnectionManager destroyed", 31);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  v8.receiver = self;
  v8.super_class = KeepAliveManager;
  [(KeepAliveManager *)&v8 dealloc];
}

- (void)startKeepAlive
{
  if (self->_keepAliveStarted)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(v15, "ims.keepalive");
    v11[0] = 0;
    v14 = 0;
    v4 = ims::debug(v3, v11);
    (*(*v4 + 32))(v4, &self->_keepAliveId);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": PCConnectionManager already started", 37);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v14 == 1 && v13 < 0)
    {
      operator delete(__p);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(v15, "ims.keepalive");
    v7[0] = 0;
    v10 = 0;
    v6 = ims::debug(v5, v7);
    (*(*v6 + 32))(v6, &self->_keepAliveId);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": Starting PCConnectionManager with minimum interval (ActionReset)", 66);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    [(PCConnectionManager *)self->_manager resumeManagerWithAction:3];
    [(KeepAliveManager *)self startWakeUpOnWifi];
    self->_keepAliveStarted = 1;
  }
}

- (void)startWakeUpOnWifi
{
  WakeOnWifiAssertion::get(self, &v5);
  v3 = v5;
  v5 = 0;
  cntrl = self->_wowAssertion.__cntrl_;
  self->_wowAssertion = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    if (v5.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5.__cntrl_);
    }
  }
}

- (void)stopKeepAlive
{
  cntrl = self->_delegate.__cntrl_;
  self->_delegate.__ptr_ = 0;
  self->_delegate.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }

  [(PCConnectionManager *)self->_manager stopManager];
  v4 = std::string::basic_string[abi:ne200100]<0>(&v10, "ims.keepalive");
  v6[0] = 0;
  v9 = 0;
  v5 = ims::debug(v4, v6);
  (*(*v5 + 32))(v5, &self->_keepAliveId);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": PCConnectionManager Stopped", 29);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  [(KeepAliveManager *)self stopWakeUpOnWifi];
  self->_keepAliveStarted = 0;
}

- (void)stopWakeUpOnWifi
{
  cntrl = self->_wowAssertion.__cntrl_;
  self->_wowAssertion.__ptr_ = 0;
  self->_wowAssertion.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (void)growKeepAliveInterval
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "ims.keepalive");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  (*(*v4 + 32))(v4, &self->_keepAliveId);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": Enlarge keep alive interval", 29);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  [(PCConnectionManager *)self->_manager resumeManagerWithAction:0];
}

- (void)shrinkKeepAliveInterval
{
  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "ims.keepalive");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  (*(*v4 + 32))(v4, &self->_keepAliveId);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": Shrink keep alive interval", 28);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  [(PCConnectionManager *)self->_manager resumeManagerWithAction:1];
}

- (BOOL)isNextKeepAliveWithinThreshold:(double)a3
{
  [(PCConnectionManager *)self->_manager lastScheduledIntervalTime];
  v6 = v5;
  v7 = std::string::basic_string[abi:ne200100]<0>(&v21, "ims.keepalive");
  v17[0] = 0;
  v20 = 0;
  v8 = ims::debug(v7, v17);
  (*(*v8 + 32))(v8, &self->_keepAliveId);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": next event ", 13);
  *(v8 + 17) = 0;
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v6];
  KAStringFromDate(v9);
  v23 = 0uLL;
  v24 = 0;
  ctu::cf::assign();
  *v15 = v23;
  v16 = v24;
  (*(*v8 + 32))(v8, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", next event - cushion ", 23);
  v10 = v6 - a3;
  *(v8 + 17) = 0;
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
  KAStringFromDate(v11);
  v23 = 0uLL;
  v24 = 0;
  ctu::cf::assign();
  *__p = v23;
  v14 = v24;
  (*(*v8 + 32))(v8, __p);
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  return CFAbsoluteTimeGetCurrent() >= v10;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  return self;
}

@end