@interface _EARResultContext
- (basic_string<char,)prevBestRecogText;
- (id).cxx_construct;
- (id)description;
- (shared_ptr<EARContinuousListeningResultHelper>)continuousListeningResultHelper;
- (vector<double,)loggableConcatCosts;
- (vector<std::vector<quasar::Token>,)loggableConcatResult;
- (vector<std::vector<quasar::Token>,)partialResults;
- (void)addPartialResultToContext:(const void *)context;
- (void)resetPartialResultContext;
- (void)setContinuousListeningResultHelper:(shared_ptr<EARContinuousListeningResultHelper>)helper;
- (void)setLoggableConcatCosts:()vector<double;
- (void)setLoggableConcatResult:()vector<std:(std::allocator<std::vector<quasar::Token>>> *)std :vector<quasar::Token>;
- (void)updateLoggableResultWithCurrentResult:(const void *)result currentCosts:(const void *)costs startMilliseconds:(unsigned int)milliseconds;
@end

@implementation _EARResultContext

- (void)addPartialResultToContext:(const void *)context
{
  std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&self->_partialResults, context);
  if (quasar::gLogLevel >= 6)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[TTAW] partialResult: ", 22);
    quasar::tokens2Str(context, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    quasar::QuasarTraceMessage::~QuasarTraceMessage(v8);
  }
}

- (void)resetPartialResultContext
{
  begin = self->_partialResults.__begin_;
  end = self->_partialResults.__end_;
  self->_partialResultIndexOffset -= 0x5555555555555555 * (end - begin);
  while (end != begin)
  {
    end -= 3;
    v5 = end;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  self->_partialResults.__end_ = begin;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_anyResults];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_countOfIsFinalFalseAlreadyWritten];
  v6 = v5;
  p_prevBestRecogText = &self->_prevBestRecogText;
  if (*(&self->_prevBestRecogText.__rep_.__l + 23) < 0)
  {
    p_prevBestRecogText = p_prevBestRecogText->__rep_.__l.__data_;
  }

  p_prevBestRecogText = [v3 stringWithFormat:@"anyResults=%@, countOfIsFinalFalseAlreadyWritten=%@, prevBestRecogText=%s", v4, v5, p_prevBestRecogText];

  return p_prevBestRecogText;
}

- (void)updateLoggableResultWithCurrentResult:(const void *)result currentCosts:(const void *)costs startMilliseconds:(unsigned int)milliseconds
{
  if (milliseconds <= 0xEA60)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v5 = *result;
    v6 = *(result + 1);
    if (*result != v6)
    {
      v10 = 0;
      do
      {
        memset(v16, 0, sizeof(v16));
        v11 = *v5;
        v12 = v5[1];
        while (v11 != v12)
        {
          if (*(v11 + 9) + milliseconds <= 0xEA60)
          {
            std::vector<quasar::Token>::push_back[abi:ne200100](v16, v11);
            v10 = 1;
          }

          v11 = (v11 + 224);
        }

        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v17, v16);
        v20 = v16;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v20);
        v5 += 3;
      }

      while (v5 != v6);
      if (v10)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3) == (*(costs + 1) - *costs) >> 3)
        {
          quasar::concatNbest(&self->_loggableConcatResult, &self->_loggableConcatCosts.__begin_, &v17, costs, milliseconds, 0xAu, v14);
        }

        else
        {
          v15 = EARLogger::QuasarOSLogger(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [_EARResultContext updateLoggableResultWithCurrentResult:currentCosts:startMilliseconds:];
          }
        }
      }
    }

    v16[0] = &v17;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v16);
  }
}

- (basic_string<char,)prevBestRecogText
{
  if (*(&result[3].__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, result[3].__rep_.__l.__data_, result[3].__rep_.__l.__size_);
  }

  else
  {
    *retstr = result[3];
  }

  return result;
}

- (shared_ptr<EARContinuousListeningResultHelper>)continuousListeningResultHelper
{
  cntrl = self->_continuousListeningResultHelper.__cntrl_;
  *v2 = self->_continuousListeningResultHelper.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setContinuousListeningResultHelper:(shared_ptr<EARContinuousListeningResultHelper>)helper
{
  v4 = *helper.__ptr_;
  v3 = *(helper.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_continuousListeningResultHelper.__cntrl_;
  self->_continuousListeningResultHelper.__ptr_ = v4;
  self->_continuousListeningResultHelper.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (vector<std::vector<quasar::Token>,)partialResults
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(retstr, self->_partialResults.__begin_, self->_partialResults.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_partialResults.__end_ - self->_partialResults.__begin_) >> 3));
}

- (vector<std::vector<quasar::Token>,)loggableConcatResult
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(retstr, self->_loggableConcatResult.__begin_, self->_loggableConcatResult.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_loggableConcatResult.__end_ - self->_loggableConcatResult.__begin_) >> 3));
}

- (void)setLoggableConcatResult:()vector<std:(std::allocator<std::vector<quasar::Token>>> *)std :vector<quasar::Token>
{
  p_loggableConcatResult = &self->_loggableConcatResult;
  if (p_loggableConcatResult != std)
  {
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(p_loggableConcatResult, std->__begin_, std->__end_, 0xAAAAAAAAAAAAAAABLL * ((std->__end_ - std->__begin_) >> 3));
  }
}

- (vector<double,)loggableConcatCosts
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(retstr, self->_loggableConcatCosts.__begin_, self->_loggableConcatCosts.__end_, self->_loggableConcatCosts.__end_ - self->_loggableConcatCosts.__begin_);
}

- (void)setLoggableConcatCosts:()vector<double
{
  p_loggableConcatCosts = &self->_loggableConcatCosts;
  if (p_loggableConcatCosts != a3)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(p_loggableConcatCosts, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  return self;
}

@end