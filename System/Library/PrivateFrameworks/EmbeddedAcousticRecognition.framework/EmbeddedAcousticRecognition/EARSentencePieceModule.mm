@interface EARSentencePieceModule
- (EARSentencePieceModule)initWithModelPath:(id)path;
- (id).cxx_construct;
- (id)encodeUtterance:(id)utterance;
- (int64_t)setEncodeOptions:(id)options;
- (void)dealloc;
@end

@implementation EARSentencePieceModule

- (EARSentencePieceModule)initWithModelPath:(id)path
{
  pathCopy = path;
  v7.receiver = self;
  v7.super_class = EARSentencePieceModule;
  if ([(EARSentencePieceModule *)&v7 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100IN13sentencepiece22SentencePieceProcessorENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = 0;

  return v5;
}

- (void)dealloc
{
  if (self->_processor.__ptr_)
  {
    cntrl = self->_processor.__cntrl_;
    self->_processor.__ptr_ = 0;
    self->_processor.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  v4.receiver = self;
  v4.super_class = EARSentencePieceModule;
  [(EARSentencePieceModule *)&v4 dealloc];
}

- (int64_t)setEncodeOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy)
  {
    [optionsCopy ear_toString];
  }

  else
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
  }

  (*(*self->_processor.__ptr_ + 64))(&v8);
  v6 = sentencepiece::util::Status::code(&v8);
  sentencepiece::util::Status::~Status(&v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return v6;
}

- (id)encodeUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v5 = utteranceCopy;
  if (utteranceCopy)
  {
    [utteranceCopy ear_toString];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  (*(*self->_processor.__ptr_ + 112))(&v11);
  sentencepiece::util::Status::~Status(&v11);
  array = [MEMORY[0x1E695DF70] array];
  v7 = __p;
  v8 = v13;
  if (__p != v13)
  {
    do
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:*v7];
      [array addObject:v9];

      ++v7;
    }

    while (v7 != v8);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }

  return array;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end