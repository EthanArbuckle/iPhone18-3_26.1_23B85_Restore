@interface _EARAppLmData
+ (void)initialize;
- (BOOL)setProns:(id)a3 forWord:(id)a4 pronIsXsampa:(BOOL)a5;
- (NSArray)orderedOovs;
- (_EARAppLmData)initWithAppLmData:(shared_ptr<quasar::AppLmData>)a3;
- (_EARAppLmData)initWithConfiguration:(id)a3 ncsRoot:(id)a4 recognizerConfigPath:(id)a5;
- (id).cxx_construct;
- (id)addOovTokensFromSentence:(id)a3;
- (id)metrics;
- (id)supportedSlots;
- (int64_t)canAddProns:(id)a3 forWord:(id)a4 pronIsXsampa:(BOOL)a5;
- (shared_ptr<quasar::AppLmData>)data;
- (void)addLineWithType:(unint64_t)a3 uuid:(id)a4 content:(id)a5;
- (void)addNgramCountWithType:(unint64_t)a3 content:(id)a4;
- (void)addSentenceWithType:(unint64_t)a3 uuid:(id)a4 content:(id)a5 hasWeights:(BOOL)a6;
- (void)generateLmeData:(id)a3;
- (void)setInputFormat:(int64_t)a3;
@end

@implementation _EARAppLmData

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARAppLmData)initWithAppLmData:(shared_ptr<quasar::AppLmData>)a3
{
  ptr = a3.__ptr_;
  v11.receiver = self;
  v11.super_class = _EARAppLmData;
  v4 = [(_EARAppLmData *)&v11 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    p_data = &v4->data;
    v8 = *ptr;
    v7 = *(ptr + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->data.__cntrl_;
    p_data->__ptr_ = v8;
    v5->data.__cntrl_ = v7;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (NSArray)orderedOovs
{
  v14 = *MEMORY[0x1E69E9840];
  quasar::AppLmData::getOrderedOovs(self->data.__ptr_, &v9);
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v9;
  for (i = v10; v3 != i; v3 += 56)
  {
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      v11.__r_.__value_.__r.__words[2] = *(v3 + 16);
      *&v11.__r_.__value_.__l.__data_ = v5;
    }

    std::set<std::string>::set[abi:ne200100](v12, (v3 + 24));
    v13 = *(v3 + 48);
    v6 = _earOovToken(&v11);
    [v2 addObject:v6];

    std::__tree<std::string>::destroy(v12, v12[1]);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  v7 = [v2 copy];

  v11.__r_.__value_.__r.__words[0] = &v9;
  std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v7;
}

- (_EARAppLmData)initWithConfiguration:(id)a3 ncsRoot:(id)a4 recognizerConfigPath:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _EARAppLmData;
  v11 = [(_EARAppLmData *)&v19 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v12 fileExistsAtPath:v8];

    if (v13)
    {
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = [v14 fileExistsAtPath:v10];

      if (v15)
      {
        if (v9)
        {
          [_EARQuasarTokenizer tokenizerWithNcsRoot:v9];
        }

        else
        {
          [_EARQuasarTokenizer tokenizerWithRecognizerConfigPath:v10];
        }

        *&buf = 0;
        if (v8)
        {
          [v8 ear_toString];
          if (!v10)
          {
            goto LABEL_17;
          }
        }

        else
        {
          buf = 0uLL;
          v21 = 0;
          if (!v10)
          {
LABEL_17:
            std::allocate_shared[abi:ne200100]<quasar::AppLmData,std::allocator<quasar::AppLmData>,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,0>();
          }
        }

        [v10 ear_toString];
        goto LABEL_17;
      }

      v16 = EarLmLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
      }
    }

    else
    {
      v16 = EarLmLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
      }
    }

    v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)addLineWithType:(unint64_t)a3 uuid:(id)a4 content:(id)a5
{
  v6 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  ptr = self->data.__ptr_;
  v14 = v6;
  if (v8)
  {
    [v8 ear_toString];
    if (v10)
    {
LABEL_3:
      [v10 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0;
    v16 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
LABEL_6:
  quasar::LmData::addLine(ptr, &v14, v15, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

- (void)addSentenceWithType:(unint64_t)a3 uuid:(id)a4 content:(id)a5 hasWeights:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = v11;
  ptr = self->data.__ptr_;
  v16 = v8;
  if (v10)
  {
    [v10 ear_toString];
    if (v12)
    {
LABEL_3:
      [v12 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
LABEL_6:
  (*(*ptr + 24))(ptr, &v16, v17, __p, v6, 0, 0);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

- (void)addNgramCountWithType:(unint64_t)a3 content:(id)a4
{
  v4 = a3;
  __p[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  ptr = self->data.__ptr_;
  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::LmData::addNgramCount(ptr, v4, __p);
}

- (void)setInputFormat:(int64_t)a3
{
  cntrl = self->data.__cntrl_;
  v6[0] = self->data.__ptr_;
  v6[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  setInputFormatHelper(v6, a3);
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  self->inputType = a3;
}

- (id)addOovTokensFromSentence:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  ptr = self->data.__ptr_;
  if (v4)
  {
    [v4 ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
  }

  quasar::AppLmData::addOovTokensFromSentence(ptr, __p, v12);
  v7 = EARHelpers::ContainerToNSSet<std::set<std::string>>(v12);
  std::__tree<std::string>::destroy(v12, v12[1]);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = [v7 allObjects];

  return v8;
}

- (BOOL)setProns:(id)a3 forWord:(id)a4 pronIsXsampa:(BOOL)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v24 = a5;
  ptr = self->data.__ptr_;
  if (v9)
  {
    [v9 ear_toString];
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
  }

  v12 = v8;
  *&v21.__r_.__value_.__r.__words[1] = 0uLL;
  v21.__r_.__value_.__r.__words[0] = &v21.__r_.__value_.__l.__size_;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v14)
  {
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = v17;
        if (v17)
        {
          [v17 ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v30 = 0;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v21, __p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v14);
  }

  v19 = quasar::AppLmData::setPronsForWord(ptr, v22, &v21, &v24);
  std::__tree<std::string>::destroy(&v21, v21.__r_.__value_.__l.__size_);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v19;
}

- (int64_t)canAddProns:(id)a3 forWord:(id)a4 pronIsXsampa:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  ptr = self->data.__ptr_;
  if (v9)
  {
    [v9 ear_toString];
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
  }

  v12 = v8;
  v21[0] = 0;
  v21[1] = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:{16, v21}];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = v17;
        if (v17)
        {
          [v17 ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v29 = 0;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v20, __p);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  LODWORD(v13) = quasar::AppLmData::canAddProns(ptr, v22, &v20, v5);
  std::__tree<std::string>::destroy(&v20, v21[0]);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v13 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v13;
  }

  return v13;
}

- (void)generateLmeData:(id)a3
{
  __p[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  ptr = self->data.__ptr_;
  if (v4)
  {
    [v4 ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::AppLmData::generateLmeData(ptr, __p);
}

- (id)supportedSlots
{
  quasar::AppLmData::getSupportedSlots(self->data.__ptr_, v5);
  v2 = EARHelpers::ContainerToNSSet<std::set<std::string>>(v5);
  std::__tree<std::string>::destroy(v5, v5[1]);
  v3 = [v2 allObjects];

  return v3;
}

- (id)metrics
{
  v4[9] = *MEMORY[0x1E69E9840];
  quasar::LmData::getMetrics(self->data.__ptr_, self->roundingEnabled, v4);
  v2 = EARHelpers::dictFromPTree(v4, 1);
  quasar::PTree::~PTree(v4);

  return v2;
}

- (shared_ptr<quasar::AppLmData>)data
{
  cntrl = self->data.__cntrl_;
  *v2 = self->data.__ptr_;
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
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end