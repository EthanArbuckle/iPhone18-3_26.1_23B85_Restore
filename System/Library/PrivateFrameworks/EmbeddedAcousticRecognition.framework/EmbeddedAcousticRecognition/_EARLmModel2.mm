@interface _EARLmModel2
+ (id)deserializeModelData:(id)a3;
+ (void)initialize;
- (BOOL)writeToDirectory:(id)a3;
- (id).cxx_construct;
- (id)_initWithModel:(shared_ptr<quasar::LmModel2>)a3;
- (id)metrics;
- (id)serializedModelWithLanguage:(id)a3 modelData:(id)a4 oovs:(id)a5;
- (shared_ptr<quasar::LmModel2>)model;
- (void)setProtectionClass:(id)a3;
@end

@implementation _EARLmModel2

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (id)_initWithModel:(shared_ptr<quasar::LmModel2>)a3
{
  ptr = a3.__ptr_;
  if (*a3.__ptr_)
  {
    v4 = *a3.__ptr_ + *(**a3.__ptr_ - 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a3.__ptr_ + 1);
  v13 = v4;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12.receiver = self;
  v12.super_class = _EARLmModel2;
  v6 = [(_EARLmHandle *)&v12 _initWithHandle:&v13, a3.__cntrl_];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v6)
  {
    v7 = *ptr;
    if (!*ptr)
    {
      v10 = 0;
      goto LABEL_16;
    }

    v8 = *(ptr + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[4];
    v6[3] = v7;
    v6[4] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v10 = v6;
LABEL_16:

  return v10;
}

- (BOOL)writeToDirectory:(id)a3
{
  __p[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  ptr = self->_model.__ptr_;
  if (v4)
  {
    [v4 ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::LmModel2::write(ptr, __p);
}

- (void)setProtectionClass:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*MEMORY[0x1E696A378] == v4)
  {
    ptr = self->_model.__ptr_;
    v8 = 1;
LABEL_12:
    *(ptr + 34) = v8;
    goto LABEL_13;
  }

  if (*MEMORY[0x1E696A380] == v4)
  {
    ptr = self->_model.__ptr_;
    v8 = 2;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E696A388] == v4)
  {
    ptr = self->_model.__ptr_;
    v8 = 3;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E696A3A8] == v4)
  {
    ptr = self->_model.__ptr_;
    v8 = 4;
    goto LABEL_12;
  }

  v6 = EarLmLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1B501D000, v6, OS_LOG_TYPE_DEFAULT, "Unknown protection class: %@", &v9, 0xCu);
  }

LABEL_13:
}

- (id)metrics
{
  v4[9] = *MEMORY[0x1E69E9840];
  (*(*self->_model.__ptr_ + 16))(v4);
  v2 = EARHelpers::dictFromPTree(v4, 1);
  quasar::PTree::~PTree(v4);

  return v2;
}

- (id)serializedModelWithLanguage:(id)a3 modelData:(id)a4 oovs:(id)a5
{
  v26[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v12 = MEMORY[0x1E696AEC0];
  kaldi::quasar::Vocab::OOvWord(self->_model.__ptr_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v14 = [v12 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = [v9 _ear_sha256];
  v16 = v15;
  if (v10 && v11 && v14 && v15)
  {
    v25[0] = @"language";
    v25[1] = @"assetVersion";
    v26[0] = v11;
    v26[1] = v14;
    v25[2] = @"modelTrainingData";
    v25[3] = @"dataHash";
    v26[2] = v9;
    v26[3] = v15;
    v25[4] = @"oovs";
    v26[4] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:5];
    v23 = 0;
    v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v17 format:200 options:0 error:&v23];
    v19 = v23;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v21 = EarLmLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [_EARLmModel serializedModelWithLanguage:modelData:oovs:];
      }
    }
  }

  else
  {
    v17 = EarLmLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_EARLmModel serializedModelWithLanguage:modelData:oovs:];
    }

    v19 = 0;
    v18 = 0;
  }

  return v18;
}

+ (id)deserializeModelData:(id)a3
{
  v8 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = EarLmLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_EARLmModel deserializeModelData:];
    }
  }

  return v3;
}

- (shared_ptr<quasar::LmModel2>)model
{
  cntrl = self->_model.__cntrl_;
  *v2 = self->_model.__ptr_;
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
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end