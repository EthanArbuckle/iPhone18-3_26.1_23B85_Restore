@interface _EARNgramLmModel
+ (void)initialize;
- (BOOL)writeToDirectory:(id)directory;
- (NSString)arpaFileName;
- (_EARNgramLmModel)initWithConfiguration:(id)configuration root:(id)root;
- (id).cxx_construct;
- (id)_initWithModel:(shared_ptr<quasar:(shared_ptr<quasar::NgramFstConfig>)model :NgramLmModel2>)a3 config:;
- (id)generateNgramCounts:(id)counts;
- (id)initFromDirectory:(id)directory;
- (shared_ptr<quasar::NgramFstConfig>)ngramBuildConfig;
- (shared_ptr<quasar::NgramLmModel2>)ngramModel;
@end

@implementation _EARNgramLmModel

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (id)_initWithModel:(shared_ptr<quasar:(shared_ptr<quasar::NgramFstConfig>)model :NgramLmModel2>)a3 config:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v16.receiver = self;
  v16.super_class = _EARNgramLmModel;
  v6 = [(_EARNgramLmModel *)&v16 init:a3.__ptr_];
  v7 = v6;
  if (v6)
  {
    p_ngramModel = &v6->_ngramModel;
    v10 = *ptr;
    v9 = *(ptr + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v6->_ngramModel.__cntrl_;
    p_ngramModel->__ptr_ = v10;
    v7->_ngramModel.__cntrl_ = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v13 = *cntrl;
    v12 = *(cntrl + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = v7->_ngramBuildConfig.__cntrl_;
    v7->_ngramBuildConfig.__ptr_ = v13;
    v7->_ngramBuildConfig.__cntrl_ = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  return v7;
}

- (_EARNgramLmModel)initWithConfiguration:(id)configuration root:(id)root
{
  configurationCopy = configuration;
  rootCopy = root;
  v18.receiver = self;
  v18.super_class = _EARNgramLmModel;
  v8 = [(_EARLmModel *)&v18 initWithConfiguration:configurationCopy root:rootCopy];
  v9 = v8;
  if (v8)
  {
    [(_EARLmModel *)v8 buildConfig];
    v10 = lpsrc;
    {
      v11 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    lpsrc = 0;
    v17 = 0;
  }

  cntrl = v9->_ngramBuildConfig.__cntrl_;
  v9->_ngramBuildConfig.__ptr_ = v10;
  v9->_ngramBuildConfig.__cntrl_ = v11;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v9->_ngramBuildConfig.__ptr_)
  {
    v13 = v9;
  }

  else
  {
    v14 = EarLmLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(lpsrc) = 0;
      _os_log_impl(&dword_1B501D000, v14, OS_LOG_TYPE_DEFAULT, "Cannot cast to NgramFstConfig", &lpsrc, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)initFromDirectory:(id)directory
{
  directoryCopy = directory;
  v15.receiver = self;
  v15.super_class = _EARNgramLmModel;
  v5 = [(_EARLmModel *)&v15 initFromDirectory:directoryCopy];
  v6 = v5;
  if (v5)
  {
    [v5 model];
    v7 = lpsrc;
    {
      v8 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    lpsrc = 0;
    v14 = 0;
  }

  v9 = v6[6];
  v6[5] = v7;
  v6[6] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v6[5])
  {
    v10 = v6;
  }

  else
  {
    v11 = EarLmLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(lpsrc) = 0;
      _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_DEFAULT, "Cannot cast to NgramLmModel", &lpsrc, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)writeToDirectory:(id)directory
{
  v15 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  [(_EARLmModel *)self model];
  v5 = lpsrc;
  {
    v6 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  p_ngramModel = &self->_ngramModel;
  cntrl = p_ngramModel->__cntrl_;
  p_ngramModel->__ptr_ = v5;
  p_ngramModel->__cntrl_ = v6;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ptr = p_ngramModel->__ptr_;
  if (ptr)
  {
    if (directoryCopy)
    {
      [directoryCopy ear_toString];
    }

    else
    {
      lpsrc = 0;
      v13 = 0;
      v14 = 0;
    }

    quasar::LmModel2::write(ptr + 656, &lpsrc);
  }

  v10 = EarLmLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(lpsrc) = 0;
    _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_DEFAULT, "Cannot cast to NgramLmModel", &lpsrc, 2u);
  }

  return 0;
}

- (id)generateNgramCounts:(id)counts
{
  v10[5] = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  ptr = self->_ngramBuildConfig.__ptr_;
  cntrl = self->_ngramBuildConfig.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v10[0] = ptr;
  v10[1] = cntrl;
  [countsCopy data];
  quasar::generateNgramCountsStr(v10, v9, v7);
}

- (NSString)arpaFileName
{
  v11 = *MEMORY[0x1E69E9840];
  ptr = self->_ngramModel.__ptr_;
  if (ptr)
  {
    v3 = MEMORY[0x1E696AEC0];
    std::string::basic_string[abi:ne200100]<0>(v7, "");
    quasar::NgramLmModel2::getArpaFileName(ptr, v7, __p);
    if (v10 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = [v3 stringWithUTF8String:v4];
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (shared_ptr<quasar::NgramLmModel2>)ngramModel
{
  cntrl = self->_ngramModel.__cntrl_;
  *v2 = self->_ngramModel.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<quasar::NgramFstConfig>)ngramBuildConfig
{
  cntrl = self->_ngramBuildConfig.__cntrl_;
  *v2 = self->_ngramBuildConfig.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end