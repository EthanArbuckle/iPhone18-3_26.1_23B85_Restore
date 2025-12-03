@interface _EARAppLmData
+ (void)initialize;
- (BOOL)setProns:(id)prons forWord:(id)word pronIsXsampa:(BOOL)xsampa;
- (NSArray)orderedOovs;
- (_EARAppLmData)initWithAppLmData:(shared_ptr<quasar::AppLmData>)data;
- (_EARAppLmData)initWithConfiguration:(id)configuration ncsRoot:(id)root recognizerConfigPath:(id)path;
- (id).cxx_construct;
- (id)addOovTokensFromSentence:(id)sentence;
- (id)metrics;
- (id)supportedSlots;
- (int64_t)canAddProns:(id)prons forWord:(id)word pronIsXsampa:(BOOL)xsampa;
- (shared_ptr<quasar::AppLmData>)data;
- (void)addLineWithType:(unint64_t)type uuid:(id)uuid content:(id)content;
- (void)addNgramCountWithType:(unint64_t)type content:(id)content;
- (void)addSentenceWithType:(unint64_t)type uuid:(id)uuid content:(id)content hasWeights:(BOOL)weights;
- (void)generateLmeData:(id)data;
- (void)setInputFormat:(int64_t)format;
@end

@implementation _EARAppLmData

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARAppLmData)initWithAppLmData:(shared_ptr<quasar::AppLmData>)data
{
  ptr = data.__ptr_;
  v11.receiver = self;
  v11.super_class = _EARAppLmData;
  v4 = [(_EARAppLmData *)&v11 init:data.__ptr_];
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
  array = [MEMORY[0x1E695DF70] array];
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
    [array addObject:v6];

    std::__tree<std::string>::destroy(v12, v12[1]);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  v7 = [array copy];

  v11.__r_.__value_.__r.__words[0] = &v9;
  std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v7;
}

- (_EARAppLmData)initWithConfiguration:(id)configuration ncsRoot:(id)root recognizerConfigPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  rootCopy = root;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = _EARAppLmData;
  v11 = [(_EARAppLmData *)&v19 init];
  if (v11)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:configurationCopy];

    if (v13)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = [defaultManager2 fileExistsAtPath:pathCopy];

      if (v15)
      {
        if (rootCopy)
        {
          [_EARQuasarTokenizer tokenizerWithNcsRoot:rootCopy];
        }

        else
        {
          [_EARQuasarTokenizer tokenizerWithRecognizerConfigPath:pathCopy];
        }

        *&buf = 0;
        if (configurationCopy)
        {
          [configurationCopy ear_toString];
          if (!pathCopy)
          {
            goto LABEL_17;
          }
        }

        else
        {
          buf = 0uLL;
          v21 = 0;
          if (!pathCopy)
          {
LABEL_17:
            std::allocate_shared[abi:ne200100]<quasar::AppLmData,std::allocator<quasar::AppLmData>,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,0>();
          }
        }

        [pathCopy ear_toString];
        goto LABEL_17;
      }

      v16 = EarLmLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = pathCopy;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
      }
    }

    else
    {
      v16 = EarLmLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = configurationCopy;
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

- (void)addLineWithType:(unint64_t)type uuid:(id)uuid content:(id)content
{
  typeCopy = type;
  v17 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  contentCopy = content;
  v10 = contentCopy;
  ptr = self->data.__ptr_;
  v14 = typeCopy;
  if (uuidCopy)
  {
    [uuidCopy ear_toString];
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
    if (contentCopy)
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

- (void)addSentenceWithType:(unint64_t)type uuid:(id)uuid content:(id)content hasWeights:(BOOL)weights
{
  weightsCopy = weights;
  typeCopy = type;
  v19 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  contentCopy = content;
  v12 = contentCopy;
  ptr = self->data.__ptr_;
  v16 = typeCopy;
  if (uuidCopy)
  {
    [uuidCopy ear_toString];
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
    if (contentCopy)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
LABEL_6:
  (*(*ptr + 24))(ptr, &v16, v17, __p, weightsCopy, 0, 0);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

- (void)addNgramCountWithType:(unint64_t)type content:(id)content
{
  typeCopy = type;
  __p[3] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  ptr = self->data.__ptr_;
  if (contentCopy)
  {
    [contentCopy ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::LmData::addNgramCount(ptr, typeCopy, __p);
}

- (void)setInputFormat:(int64_t)format
{
  cntrl = self->data.__cntrl_;
  v6[0] = self->data.__ptr_;
  v6[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  setInputFormatHelper(v6, format);
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  self->inputType = format;
}

- (id)addOovTokensFromSentence:(id)sentence
{
  v12[3] = *MEMORY[0x1E69E9840];
  sentenceCopy = sentence;
  v5 = sentenceCopy;
  ptr = self->data.__ptr_;
  if (sentenceCopy)
  {
    [sentenceCopy ear_toString];
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

  allObjects = [v7 allObjects];

  return allObjects;
}

- (BOOL)setProns:(id)prons forWord:(id)word pronIsXsampa:(BOOL)xsampa
{
  v32 = *MEMORY[0x1E69E9840];
  pronsCopy = prons;
  wordCopy = word;
  v10 = wordCopy;
  xsampaCopy = xsampa;
  ptr = self->data.__ptr_;
  if (wordCopy)
  {
    [wordCopy ear_toString];
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
  }

  v12 = pronsCopy;
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

  v19 = quasar::AppLmData::setPronsForWord(ptr, v22, &v21, &xsampaCopy);
  std::__tree<std::string>::destroy(&v21, v21.__r_.__value_.__l.__size_);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v19;
}

- (int64_t)canAddProns:(id)prons forWord:(id)word pronIsXsampa:(BOOL)xsampa
{
  xsampaCopy = xsampa;
  v31 = *MEMORY[0x1E69E9840];
  pronsCopy = prons;
  wordCopy = word;
  v10 = wordCopy;
  ptr = self->data.__ptr_;
  if (wordCopy)
  {
    [wordCopy ear_toString];
  }

  else
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
  }

  v12 = pronsCopy;
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

  LODWORD(v13) = quasar::AppLmData::canAddProns(ptr, v22, &v20, xsampaCopy);
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

- (void)generateLmeData:(id)data
{
  __p[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  ptr = self->data.__ptr_;
  if (dataCopy)
  {
    [dataCopy ear_toString];
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
  allObjects = [v2 allObjects];

  return allObjects;
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