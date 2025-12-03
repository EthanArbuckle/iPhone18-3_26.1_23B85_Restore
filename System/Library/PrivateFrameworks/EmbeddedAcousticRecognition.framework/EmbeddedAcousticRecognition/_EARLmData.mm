@interface _EARLmData
+ (void)initialize;
- (_EARLmData)initWithConfiguration:(id)configuration ncsRoot:(id)root recognizerConfiguration:(id)recognizerConfiguration;
- (id).cxx_construct;
- (id)metrics;
- (id)sources;
- (id)wordFrequency;
- (shared_ptr<quasar::PersonalizedLmData>)data;
- (void)addDocumentWithUUID:(id)d content:(id)content;
- (void)addDocumentWithUUID:(id)d content:(id)content metadata:(id)metadata;
- (void)addLineWithType:(unint64_t)type uuid:(id)uuid content:(id)content;
- (void)addNgramCountWithType:(unint64_t)type content:(id)content;
- (void)addSentenceWithType:(unint64_t)type uuid:(id)uuid content:(id)content hasWeights:(BOOL)weights;
- (void)enumerateSentencesOfType:(unint64_t)type block:(id)block;
- (void)setInputFormat:(int64_t)format;
@end

@implementation _EARLmData

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARLmData)initWithConfiguration:(id)configuration ncsRoot:(id)root recognizerConfiguration:(id)recognizerConfiguration
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  rootCopy = root;
  recognizerConfigurationCopy = recognizerConfiguration;
  v18.receiver = self;
  v18.super_class = _EARLmData;
  v11 = [(_EARLmData *)&v18 init];
  if (v11)
  {
    v12 = EarLmLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configurationCopy;
      _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_DEFAULT, "Initializing %@", &buf, 0xCu);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager fileExistsAtPath:configurationCopy];

    if (v14)
    {
      if (rootCopy)
      {
        [_EARQuasarTokenizer tokenizerWithNcsRoot:rootCopy];
      }

      else
      {
        [_EARQuasarTokenizer tokenizerWithRecognizerConfigPath:configurationCopy];
      }

      *&buf = 0;
      if (configurationCopy)
      {
        [configurationCopy ear_toString];
        if (!recognizerConfigurationCopy)
        {
          goto LABEL_15;
        }
      }

      else
      {
        buf = 0uLL;
        v20 = 0;
        if (!recognizerConfigurationCopy)
        {
LABEL_15:
          std::allocate_shared[abi:ne200100]<quasar::PersonalizedLmData,std::allocator<quasar::PersonalizedLmData>,std::string,char const(&)[1],std::unique_ptr<quasar::TextTokenizer>,std::string,BOOL,BOOL,0>();
        }
      }

      [recognizerConfigurationCopy ear_toString];
      goto LABEL_15;
    }

    v15 = EarLmLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configurationCopy;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)addDocumentWithUUID:(id)d content:(id)content
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contentCopy = content;
  v8 = contentCopy;
  if (dCopy && contentCopy)
  {
    ptr = self->_data.__ptr_;
    [dCopy ear_toString];
    [v8 ear_toString];
    v10 = 0;
    quasar::PersonalizedLmData::addDocument(ptr, &v13, &__p, &v10);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }
}

- (void)addDocumentWithUUID:(id)d content:(id)content metadata:(id)metadata
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contentCopy = content;
  metadataCopy = metadata;
  v11 = metadataCopy;
  if (dCopy && contentCopy)
  {
    v12 = [metadataCopy valueForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v11 valueForKey:@"type"];

      if (v13)
      {
        ptr = self->_data.__ptr_;
        [dCopy ear_toString];
        [contentCopy ear_toString];
        intValue = [v13 intValue];
        quasar::PersonalizedLmData::addDocument(ptr, buf, &__p, &intValue);
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(*buf);
        }

LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = EarLmLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Document type is not set properly", buf, 2u);
    }

    v13 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)addLineWithType:(unint64_t)type uuid:(id)uuid content:(id)content
{
  typeCopy = type;
  v17 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  contentCopy = content;
  v10 = contentCopy;
  if (uuidCopy && contentCopy)
  {
    ptr = self->_data.__ptr_;
    v14 = typeCopy;
    [uuidCopy ear_toString];
    [v10 ear_toString];
    quasar::LmData::addLine(ptr, &v14, &v15, &__p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
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
  if (uuidCopy && contentCopy)
  {
    ptr = self->_data.__ptr_;
    v16 = typeCopy;
    [uuidCopy ear_toString];
    [v12 ear_toString];
    (*(*ptr + 24))(ptr, &v16, &v17, &__p, weightsCopy, 0, 0);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }
}

- (void)addNgramCountWithType:(unint64_t)type content:(id)content
{
  typeCopy = type;
  __p[3] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if (contentCopy)
  {
    ptr = self->_data.__ptr_;
    [contentCopy ear_toString];
    quasar::LmData::addNgramCount(ptr, typeCopy, __p);
  }
}

- (void)setInputFormat:(int64_t)format
{
  cntrl = self->_data.__cntrl_;
  v6[0] = self->_data.__ptr_;
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

  self->_inputType = format;
}

- (void)enumerateSentencesOfType:(unint64_t)type block:(id)block
{
  typeCopy = type;
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v16 = 0;
  Sentences = quasar::LmData::getSentences(self->_data.__ptr_, typeCopy);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<quasar::lm::TokenStringAndCount>::__init_with_size[abi:ne200100]<quasar::lm::TokenStringAndCount*,quasar::lm::TokenStringAndCount*>(&v18, *Sentences, Sentences[1], (Sentences[1] - *Sentences) >> 7);
  v8 = v18;
  for (i = v19; v8 != i; v8 += 128)
  {
    v10 = objc_autoreleasePoolPush();
    if ((v16 & 1) == 0)
    {
      v11 = objc_opt_new();
      v13 = *(v8 + 104);
      v12 = *(v8 + 112);
      while (v13 != v12)
      {
        v14 = v13;
        if (*(v13 + 23) < 0)
        {
          v14 = *v13;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
        [v11 addObject:v15];

        v13 += 3;
      }

      blockCopy[2](blockCopy, v11, &v16);
    }

    objc_autoreleasePoolPop(v10);
  }

  v17 = &v18;
  std::vector<quasar::lm::TokenStringAndCount>::__destroy_vector::operator()[abi:ne200100](&v17);
}

- (id)sources
{
  Sources = quasar::LmData::getSources(self->_data.__ptr_);

  return EARHelpers::VectorToArray<std::string>(Sources);
}

- (id)metrics
{
  v4[9] = *MEMORY[0x1E69E9840];
  quasar::LmData::getMetrics(self->_data.__ptr_, self->_roundingEnabled, v4);
  v2 = EARHelpers::dictFromPTree(v4, 1);
  quasar::PTree::~PTree(v4);

  return v2;
}

- (id)wordFrequency
{
  WordFrequency = quasar::LmData::getWordFrequency(self->_data.__ptr_);
  v3 = objc_opt_new();
  for (i = *(WordFrequency + 16); i; i = *i)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(i + 10)];
    v6 = i + 2;
    if (*(i + 39) < 0)
    {
      v6 = *v6;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    [v3 setValue:v5 forKey:v7];
  }

  return v3;
}

- (shared_ptr<quasar::PersonalizedLmData>)data
{
  cntrl = self->_data.__cntrl_;
  *v2 = self->_data.__ptr_;
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