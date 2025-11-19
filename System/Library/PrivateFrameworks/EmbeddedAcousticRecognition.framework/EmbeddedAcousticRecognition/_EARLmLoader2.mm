@interface _EARLmLoader2
+ (void)initialize;
- (_EARLmLoader2)initWithRoot:(id)a3;
- (id).cxx_construct;
- (id)fetchOrLoadModelWithDirectory:(id)a3 recognizer:(id)a4;
- (id)loadForRecognitionWithDirectory:(id)a3 recognizer:(id)a4 task:(id)a5 applicationName:(id)a6;
@end

@implementation _EARLmLoader2

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARLmLoader2)initWithRoot:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _EARLmLoader2;
  if ([(_EARLmLoader2 *)&v7 init])
  {
    if (v4)
    {
      [v4 ear_toString];
    }

    else
    {
      __p = 0;
      v9 = 0;
      v10 = 0;
    }

    std::allocate_shared[abi:ne200100]<quasar::LmLoader2,std::allocator<quasar::LmLoader2>,std::string,0>();
  }

  v5 = 0;

  return v5;
}

- (id)fetchOrLoadModelWithDirectory:(id)a3 recognizer:(id)a4
{
  __p[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  ptr = self->_loader.__ptr_;
  if (v6)
  {
    [v6 ear_toString];
    if (v8)
    {
LABEL_3:
      [v8 getRecognizer];
      v10 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    memset(__p, 0, 24);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  SysConfig = quasar::SpeechRecognizer::getSysConfig(v10);
  quasar::LmLoader2::fetchOrLoadModel(ptr, __p, SysConfig);
}

- (id)loadForRecognitionWithDirectory:(id)a3 recognizer:(id)a4 task:(id)a5 applicationName:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  ptr = self->_loader.__ptr_;
  if (v10)
  {
    [v10 ear_toString];
    if (v11)
    {
LABEL_3:
      [v11 getRecognizer];
      v15 = v26;
      goto LABEL_6;
    }
  }

  else
  {
    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v26 = 0;
  v27 = 0;
LABEL_6:
  SysConfig = quasar::SpeechRecognizer::getSysConfig(v15);
  if (v12)
  {
    [v12 ear_toString];
    if (v13)
    {
LABEL_8:
      [v13 ear_toString];
      goto LABEL_11;
    }
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
LABEL_11:
  quasar::LmLoader2::loadForRecognition(SysConfig, ptr, v30, v24, __p, &v28);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (v28)
  {
    v17 = [_EARLmModel2 alloc];
    v20 = v28;
    v21 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = [(_EARLmModel2 *)v17 _initWithModel:&v20];
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v18 = 0;
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return v18;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end