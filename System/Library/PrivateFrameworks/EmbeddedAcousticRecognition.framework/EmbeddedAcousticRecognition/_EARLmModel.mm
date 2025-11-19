@interface _EARLmModel
+ (void)initialize;
+ (void)removeWithDirectory:(id)a3;
- (BOOL)trainWithData:(id)a3;
- (BOOL)writeToDirectory:(id)a3;
- (_EARLmModel)initWithConfiguration:(id)a3 root:(id)a4;
- (double)age;
- (float)weight;
- (id).cxx_construct;
- (id)_initWithModel:(shared_ptr<quasar::LmModel2>)a3;
- (id)deserializeModelData:(id)a3;
- (id)handle;
- (id)initFromDirectory:(id)a3;
- (id)metrics;
- (id)serializedModelWithLanguage:(id)a3 modelData:(id)a4 oovs:(id)a5;
- (shared_ptr<quasar::LmBuildConfig>)buildConfig;
- (shared_ptr<quasar::LmModel2>)model;
- (void)setWeight:(float)a3;
@end

@implementation _EARLmModel

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
  v10.receiver = self;
  v10.super_class = _EARLmModel;
  v4 = [(_EARLmModel *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_model.__cntrl_;
    v5->_model.__ptr_ = v7;
    v5->_model.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (_EARLmModel)initWithConfiguration:(id)a3 root:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _EARLmModel;
  v8 = [(_EARLmModel *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:v6];

    if (v10)
    {
      if (v6)
      {
        [v6 ear_toString];
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      else
      {
        buf = 0uLL;
        v16 = 0;
        if (!v7)
        {
LABEL_10:
          quasar::makeLmBuildConfig();
        }
      }

      [v7 ear_toString];
      goto LABEL_10;
    }

    v11 = EarLmLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)initFromDirectory:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _EARLmModel;
  v5 = [(_EARLmModel *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v6 fileExistsAtPath:v4];

    if (v7)
    {
      buf = 0uLL;
      v17 = 0;
      LOBYTE(v13) = 0;
      v14 = 0;
      if (v4)
      {
        [v4 ear_toString];
      }

      else
      {
        memset(v12, 0, sizeof(v12));
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      quasar::loadLmFromDirectory(v12);
    }

    v8 = EarLmLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1B501D000, v8, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)handle
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_model.__ptr_)
  {
    v3 = [_EARLmHandle alloc];
    ptr = self->_model.__ptr_;
    if (ptr)
    {
      v5 = ptr + *(*ptr - 24);
    }

    else
    {
      v5 = 0;
    }

    cntrl = self->_model.__cntrl_;
    v9 = v5;
    v10 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v7 = [(_EARLmHandle *)v3 _initWithHandle:&v9];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)trainWithData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 data];
    v6 = v11;
  }

  else
  {
    v6 = 0;
    v12 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  quasar::buildLm(v6, &self->_buildConfig.__ptr_, &v13);
  v7 = v13;
  v13 = 0;
  cntrl = self->_model.__cntrl_;
  self->_model = v7;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    if (v13.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13.__cntrl_);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = self->_model.__ptr_ != 0;

  return v9;
}

- (void)setWeight:(float)a3
{
  ptr = self->_model.__ptr_;
  if (ptr)
  {
    quasar::LmModel2::setWeight(ptr, a3);
  }
}

- (BOOL)writeToDirectory:(id)a3
{
  __p[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  ptr = self->_model.__ptr_;
  if (ptr)
  {
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

  return 0;
}

+ (void)removeWithDirectory:(id)a3
{
  __p[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    [v3 ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::removeLm(__p);
}

- (id)metrics
{
  v5[9] = *MEMORY[0x1E69E9840];
  ptr = self->_model.__ptr_;
  if (ptr)
  {
    (*(*ptr + 16))(v5);
    v3 = EARHelpers::dictFromPTree(v5, 1);
    quasar::PTree::~PTree(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (float)weight
{
  ptr = self->_model.__ptr_;
  if (ptr)
  {
    return quasar::LmModel2::getWeight(ptr);
  }

  else
  {
    return 0.0;
  }
}

- (double)age
{
  ptr = self->_model.__ptr_;
  if (ptr)
  {
    return quasar::LmModel2::getAgeSeconds(ptr);
  }

  else
  {
    return 0.0;
  }
}

- (id)serializedModelWithLanguage:(id)a3 modelData:(id)a4 oovs:(id)a5
{
  v25[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  ptr = self->_buildConfig.__ptr_;
  if (ptr)
  {
    v13 = (ptr + 48);
    if (*(ptr + 71) < 0)
    {
      v13 = *v13;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    v15 = [v9 _ear_sha256];
    v16 = v15;
    if (v10 && v11 && v14 && v15)
    {
      v24[0] = @"language";
      v24[1] = @"assetVersion";
      v25[0] = v11;
      v25[1] = v14;
      v24[2] = @"modelTrainingData";
      v24[3] = @"dataHash";
      v25[2] = v9;
      v25[3] = v15;
      v24[4] = @"oovs";
      v25[4] = v10;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
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
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)deserializeModelData:(id)a3
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

- (shared_ptr<quasar::LmBuildConfig>)buildConfig
{
  cntrl = self->_buildConfig.__cntrl_;
  *v2 = self->_buildConfig.__ptr_;
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
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setWeight:(char)a1 .cold.1(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v1 + 16))(v2);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)serializedModelWithLanguage:modelData:oovs:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deserializeModelData:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end