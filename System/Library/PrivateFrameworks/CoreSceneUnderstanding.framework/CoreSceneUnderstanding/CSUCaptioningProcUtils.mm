@interface CSUCaptioningProcUtils
- (BeamSearchOptions)beamSearchOptions;
- (CSUCaptioningProcUtils)initWithDecoderConfiguration:(id)configuration beamWidth:(int)width beamScorerType:(unint64_t)type error:(id *)error;
- (EspressoTensor)encodedFeaturesBuffer;
- (id).cxx_construct;
- (shared_ptr<csu::BeamSearch>)beamSearch;
- (shared_ptr<csu::CustomVocabulary>)vocabulary;
- (void)setBeamSearch:(shared_ptr<csu::BeamSearch>)search;
- (void)setBeamSearchOptions:(BeamSearchOptions *)options;
- (void)setEncodedFeaturesBuffer:(EspressoTensor *)buffer;
- (void)setVocabulary:(shared_ptr<csu::CustomVocabulary>)vocabulary;
@end

@implementation CSUCaptioningProcUtils

- (CSUCaptioningProcUtils)initWithDecoderConfiguration:(id)configuration beamWidth:(int)width beamScorerType:(unint64_t)type error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v66.receiver = self;
  v66.super_class = CSUCaptioningProcUtils;
  v54 = [(CSUCaptioningProcUtils *)&v66 init];
  if (v54)
  {
    v11 = MEMORY[0x1E695DEF0];
    v12 = objc_msgSend_vocabularyModelPath(configurationCopy, v7, v8, v9, v10);
    v52 = objc_msgSend_dataWithContentsOfFile_(v11, v13, v12, v14, v15);

    if (v52)
    {
      v65 = 0;
      v18 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v16, v52, 0, &v65);
      v19 = v65;
      v50 = v19;
      if (v18)
      {
        *v62 = 0u;
        v63 = 0u;
        v64 = 1065353216;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = v18;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v58, v68, 16);
        if (v21)
        {
          v22 = 0;
          v23 = *v59;
          for (i = *v59; ; i = *v59)
          {
            if (i != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v58 + 1) + 8 * v22);
            v26 = objc_autoreleasePoolPush();
            v30 = objc_msgSend_objectForKey_(obj, v27, v25, v28, v29);
            v31 = v30;
            v36 = objc_msgSend_UTF8String(v30, v32, v33, v34, v35);
            v37 = v25;
            v42 = objc_msgSend_UTF8String(v25, v38, v39, v40, v41);
            v43 = strlen(v42);
            if (v43 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_1AC060A04();
            }

            v44 = v43;
            if (v43 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v43;
            if (v43)
            {
              memmove(&__dst, v42, v43);
            }

            __dst.__r_.__value_.__s.__data_[v44] = 0;
            v57 = std::stoi(&__dst, 0, 10);
            v67 = &v57;
            v45 = sub_1AC07A364(v62, &v57);
            sub_1AC075A84(v45 + 3, v36);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            objc_autoreleasePoolPop(v26);
            if (++v22 >= v21)
            {
              v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v58, v68, 16);
              if (!v21)
              {
                break;
              }

              v22 = 0;
            }
          }
        }

        operator new();
      }

      if (error)
      {
        v47 = v19;
        *error = v50;
      }
    }

    else if (error)
    {
      *error = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v16, @"No vocabulary data could be read!", 0, v17);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return 0;
}

- (shared_ptr<csu::CustomVocabulary>)vocabulary
{
  cntrl = self->_vocabulary.__cntrl_;
  *v2 = self->_vocabulary.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setVocabulary:(shared_ptr<csu::CustomVocabulary>)vocabulary
{
  v4 = *vocabulary.__ptr_;
  v3 = *(vocabulary.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_vocabulary.__cntrl_;
  self->_vocabulary.__ptr_ = v4;
  self->_vocabulary.__cntrl_ = v3;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);

    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (shared_ptr<csu::BeamSearch>)beamSearch
{
  cntrl = self->_beamSearch.__cntrl_;
  *v2 = self->_beamSearch.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setBeamSearch:(shared_ptr<csu::BeamSearch>)search
{
  v4 = *search.__ptr_;
  v3 = *(search.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_beamSearch.__cntrl_;
  self->_beamSearch.__ptr_ = v4;
  self->_beamSearch.__cntrl_ = v3;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);

    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (BeamSearchOptions)beamSearchOptions
{
  *&retstr->maxSeqLen = *&self->_beamSearchOptions.maxSeqLen;
  retstr->maxSteps.__engaged_ = self->_beamSearchOptions.maxSteps.__engaged_;
  retstr->excludeTokens.var0.__null_state_ = 0;
  p_excludeTokens = &retstr->excludeTokens;
  retstr->excludeTokens.__engaged_ = 0;
  if (self->_beamSearchOptions.excludeTokens.__engaged_)
  {
    p_excludeTokens->var0.__val_.__begin_ = 0;
    *&retstr->excludeTokens.var0.__val_.__end_ = 0uLL;
    sub_1AC079CF4(p_excludeTokens, self->_beamSearchOptions.excludeTokens.var0.__val_.__begin_, self->_beamSearchOptions.excludeTokens.var0.__val_.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_beamSearchOptions.excludeTokens.var0.__val_.__end_ - self->_beamSearchOptions.excludeTokens.var0.__val_.__begin_) >> 3));
    retstr->excludeTokens.__engaged_ = 1;
  }

  result = self->_beamSearchOptions.denyListRules;
  retstr->denyListRules = result;
  *&retstr->lengthNormalizationAlpha = *&self->_beamSearchOptions.lengthNormalizationAlpha;
  *&retstr->beamWidth = *&self->_beamSearchOptions.beamWidth;
  retstr->lengthNormalizationAlpha_2 = self->_beamSearchOptions.lengthNormalizationAlpha_2;
  return result;
}

- (void)setBeamSearchOptions:(BeamSearchOptions *)options
{
  v5 = *&options->maxSeqLen;
  self->_beamSearchOptions.maxSteps.__engaged_ = options->maxSteps.__engaged_;
  *&self->_beamSearchOptions.maxSeqLen = v5;
  sub_1AC079E40(&self->_beamSearchOptions.excludeTokens, &options->excludeTokens);
  objc_storeStrong(&self->_beamSearchOptions.denyListRules, options->denyListRules);
  *&self->_beamSearchOptions.lengthNormalizationAlpha = *&options->lengthNormalizationAlpha;
  v6 = *&options->beamWidth;
  self->_beamSearchOptions.lengthNormalizationAlpha_2 = options->lengthNormalizationAlpha_2;
  *&self->_beamSearchOptions.beamWidth = v6;
}

- (EspressoTensor)encodedFeaturesBuffer
{
  retstr->_vptr$Tensor = &unk_1F20D01C0;
  begin = self[1].shape_.sizes_.__begin_;
  retstr->shape_.sizes_.__begin_ = 0;
  retstr->type_ = begin;
  retstr->shape_.sizes_.__end_ = 0;
  retstr->shape_.sizes_.__cap_ = 0;
  end = self[1].shape_.sizes_.__end_;
  cap = self[1].shape_.sizes_.__cap_;
  if (cap != end)
  {
    if (((cap - end) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v7 = self[2]._vptr$Tensor;
  retstr->storage_.__ptr_ = self[1].storage_.__cntrl_;
  retstr->storage_.__cntrl_ = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  retstr->_vptr$Tensor = &unk_1F20D0320;
  return self;
}

- (void)setEncodedFeaturesBuffer:(EspressoTensor *)buffer
{
  self->_encodedFeaturesBuffer.type_ = buffer->type_;
  if (&self->_encodedFeaturesBuffer != buffer)
  {
    sub_1AC06A3B8(&self->_encodedFeaturesBuffer.shape_, buffer->shape_.sizes_.__begin_, buffer->shape_.sizes_.__end_, buffer->shape_.sizes_.__end_ - buffer->shape_.sizes_.__begin_);
  }

  ptr = buffer->storage_.__ptr_;
  cntrl = buffer->storage_.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v7 = self->_encodedFeaturesBuffer.storage_.__cntrl_;
  self->_encodedFeaturesBuffer.storage_.__ptr_ = ptr;
  self->_encodedFeaturesBuffer.storage_.__cntrl_ = cntrl;
  if (v7 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v7 + 16))(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 18) = 4;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 14) = 0;
  *(self + 8) = &unk_1F20D0320;
  *(self + 128) = 1;
  *(self + 132) = 0;
  *(self + 136) = 0;
  *(self + 144) = 0;
  *(self + 168) = 0;
  *(self + 22) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 23) = _D0;
  *(self + 24) = 0;
  *(self + 25) = 0xA00000003;
  *(self + 52) = 1065353216;
  return self;
}

@end