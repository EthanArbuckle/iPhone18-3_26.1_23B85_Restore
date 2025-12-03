@interface _EAREuclid
+ (void)initialize;
- (_EAREuclid)initWithConfiguration:(id)configuration euclidEncoderType:(int64_t)type initFlag:(int64_t)flag language:(id)language overrides:(id)overrides;
- (id)computeEmbedding:(id)embedding;
- (id)computeEmbeddings:(id)embeddings;
- (id)distanceBetweenSource:(id)source target:(id)target;
- (id)embeddingDim;
- (id)findNearestNeighbors:(id)neighbors numberOfNeighbors:(int64_t)ofNeighbors;
- (id)fullVersion;
- (id)majorVersion;
- (id)maxInputLength;
- (id)minorVersion;
- (id)patchVersion;
@end

@implementation _EAREuclid

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EAREuclid)initWithConfiguration:(id)configuration euclidEncoderType:(int64_t)type initFlag:(int64_t)flag language:(id)language overrides:(id)overrides
{
  configurationCopy = configuration;
  languageCopy = language;
  overridesCopy = overrides;
  quasar::SystemConfig::SystemConfig(v13);
}

- (id)findNearestNeighbors:(id)neighbors numberOfNeighbors:(int64_t)ofNeighbors
{
  neighborsCopy = neighbors;
  v7 = neighborsCopy;
  ptr = self->_quasarEuclid.__ptr_;
  if (neighborsCopy)
  {
    [neighborsCopy ear_toString];
  }

  else
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
  }

  v9 = (*(*ptr + 16))(&v24, ptr, &__p, ofNeighbors, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (v24 == v25)
  {
    v10 = EARLogger::QuasarOSLogger(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_INFO, "No nearest neighbors found", &__p, 2u);
    }
  }

  v11 = objc_opt_new();
  if (v25 != v24)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [_EAREuclidNeighbor alloc];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{__p, v22, v23}];
      LODWORD(v16) = *(v24 + v12 + 28);
      v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
      v18 = [(_EAREuclidNeighbor *)v14 initWithName:v15 distance:v17];

      [v11 addObject:v18];
      ++v13;
      v12 += 32;
    }

    while (v13 < (v25 - v24) >> 5);
  }

  v19 = [v11 copy];

  __p = &v24;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);

  return v19;
}

- (id)distanceBetweenSource:(id)source target:(id)target
{
  sourceCopy = source;
  targetCopy = target;
  v8 = targetCopy;
  v9 = MEMORY[0x1E696AD98];
  ptr = self->_quasarEuclid.__ptr_;
  if (sourceCopy)
  {
    [sourceCopy ear_toString];
    if (v8)
    {
LABEL_3:
      [v8 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    if (targetCopy)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
LABEL_6:
  *&v11 = quasar::QuasarEuclid::computeDistance(ptr, v16, __p);
  v12 = [v9 numberWithFloat:v11];
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  return v12;
}

- (id)computeEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([embeddingCopy length])
  {
    ptr = self->_quasarEuclid.__ptr_;
    if (embeddingCopy)
    {
      [embeddingCopy ear_toString];
    }

    else
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
    }

    quasar::QuasarEuclid::computeEmbeddingVector(ptr, &__p, v15);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    v8 = v17;
    if (v17 == 1)
    {
      if (v16 < 1)
      {
LABEL_13:
        kaldi::CuVector<float>::~CuVector(v15);
        goto LABEL_14;
      }

      for (i = 0; i < v16; ++i)
      {
        LODWORD(v7) = *(v15[1] + 4 * i);
        v10 = [MEMORY[0x1E696AD98] numberWithFloat:{v7, __p, v13, v14}];
        [v5 addObject:v10];

        v8 = v17;
        if ((v17 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }
    }

    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v5;
}

- (id)computeEmbeddings:(id)embeddings
{
  embeddingsCopy = embeddings;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(embeddingsCopy, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32___EAREuclid_computeEmbeddings___block_invoke;
  v9[3] = &unk_1E7C1AA78;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [embeddingsCopy enumerateObjectsUsingBlock:v9];
  v7 = v6;

  return v6;
}

- (id)maxInputLength
{
  v2 = MEMORY[0x1E696AD98];
  MaxInputLength = quasar::QuasarEuclid::getMaxInputLength(self->_quasarEuclid.__ptr_);

  return [v2 numberWithInt:MaxInputLength];
}

- (id)embeddingDim
{
  v2 = MEMORY[0x1E696AD98];
  EmbeddingDim = quasar::QuasarEuclid::getEmbeddingDim(self->_quasarEuclid.__ptr_);

  return [v2 numberWithInt:EmbeddingDim];
}

- (id)fullVersion
{
  v2 = MEMORY[0x1E696AEC0];
  quasar::CommandTagging::getCommandId(self->_quasarEuclid.__ptr_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [v2 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

- (id)majorVersion
{
  v2 = MEMORY[0x1E696AEC0];
  quasar::QuasarEuclid::getAssetVersionInVector(self->_quasarEuclid.__ptr_, v5);
  v3 = [v2 stringWithUTF8String:?];
  v6 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);

  return v3;
}

- (id)minorVersion
{
  v2 = MEMORY[0x1E696AEC0];
  quasar::QuasarEuclid::getAssetVersionInVector(self->_quasarEuclid.__ptr_, v6);
  v3 = (v6[0] + 24);
  if (*(v6[0] + 47) < 0)
  {
    v3 = *v3;
  }

  v4 = [v2 stringWithUTF8String:v3];
  v7 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);

  return v4;
}

- (id)patchVersion
{
  v2 = MEMORY[0x1E696AEC0];
  quasar::QuasarEuclid::getAssetVersionInVector(self->_quasarEuclid.__ptr_, v6);
  v3 = (v6[0] + 48);
  if (*(v6[0] + 71) < 0)
  {
    v3 = *v3;
  }

  v4 = [v2 stringWithUTF8String:v3];
  v7 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);

  return v4;
}

@end