@interface FTCinematicTapToTrack
+ (id)tracker;
- ($7E6FF06E1E2A477A0598F669E6D2B004)_unsafeStepTrackingWithFrame:(SEL)frame;
- ($7E6FF06E1E2A477A0598F669E6D2B004)predictRectForPoint:(SEL)point inColorBuffer:(CGPoint)buffer;
- (BOOL)_unsafeStartTrackingRect:(CGRect)rect colorBuffer:(__CVBuffer *)buffer;
- (BOOL)reset;
- (EspressoConfig)_espressoConfigFromDescriptor:(EspressoConfig *__return_ptr)retstr engine:;
- (FTCinematicTapToTrack)initWithEspressoEngine:(int)engine scalingBackend:(int)backend commandQueue:(id)queue;
- (basic_string<char,)_resolveNetworkPath:(std::allocator<char>> *__return_ptr)retstr;
- (id).cxx_construct;
- (id)_maybeFetchTrackByCommittingState:(id)state;
- (void)_preprocessBuffer:(__CVBuffer *)buffer andValidateState:(id)state isOp:(int64_t)op;
- (void)_setupNetworksWithEngine:(const void *)engine;
- (void)_setupScalerWithBackend:(int)backend;
@end

@implementation FTCinematicTapToTrack

+ (id)tracker
{
  v2 = [[self alloc] initWithEspressoEngine:10007 scalingBackend:0 commandQueue:0];

  return v2;
}

- (FTCinematicTapToTrack)initWithEspressoEngine:(int)engine scalingBackend:(int)backend commandQueue:(id)queue
{
  v6 = *&backend;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = FTCinematicTapToTrack;
  v10 = [(FTCinematicTapToTrack *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_commandQueue, queue);
    v12 = objc_alloc_init(FTTapToBox);
    tapToBox = v11->_tapToBox;
    v11->_tapToBox = v12;

    [(FTCinematicTapToTrack *)v11 _setupScalerWithBackend:v6];
    engineCopy = engine;
    v17 = 1;
    [(FTCinematicTapToTrack *)v11 _setupNetworksWithEngine:&engineCopy];
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setupScalerWithBackend:(int)backend
{
  if (backend == 1)
  {
    v4 = [[FTVTScaler alloc] initWithCommandQueue:self->_commandQueue];
  }

  else
  {
    if (backend)
    {
      goto LABEL_6;
    }

    v4 = objc_alloc_init(FTMSRScaler);
  }

  scaler = self->_scaler;
  self->_scaler = v4;

LABEL_6:
  self->_preprocessor = [[FTTapToTrackPreprocessor alloc] initWithScaler:self->_scaler];

  MEMORY[0x2821F96F8]();
}

- (void)_setupNetworksWithEngine:(const void *)engine
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = +[FTCinematicTracker highPriorityExemplarNetworkDescriptor];
  exemplarNetDesc = self->_exemplarNetDesc;
  self->_exemplarNetDesc = v5;

  [(FTNetworkDescriptor *)self->_exemplarNetDesc name];
  [(FTCinematicTapToTrack *)self _resolveNetworkPath:objc_claimAutoreleasedReturnValue()];
  [(FTCinematicTapToTrack *)self _espressoConfigFromDescriptor:self->_exemplarNetDesc engine:engine];
  operator new();
}

- (basic_string<char,)_resolveNetworkPath:(std::allocator<char>> *__return_ptr)retstr
{
  v12 = v1;
  v3 = FTResolveEspressoNetPath(v12);
  v4 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Unable to locate model: ");
    v10 = std::string::append(&v13, [v12 UTF8String]);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v14);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  uTF8String = [v3 UTF8String];
  v6 = strlen(uTF8String);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&retstr->var0.var1 + 23) = v6;
  if (v6)
  {
    memmove(retstr, uTF8String, v6);
  }

  retstr->var0.var0.var0[v7] = 0;

  return result;
}

- (EspressoConfig)_espressoConfigFromDescriptor:(EspressoConfig *__return_ptr)retstr engine:
{
  v3 = v2;
  v22 = *MEMORY[0x277D85DE8];
  v5 = v1;
  retstr->var0.var0 = 0;
  *&retstr->var0.var1 = 0u;
  retstr->var1 = *v3;
  *&retstr->var2 = -4294901744;
  retstr->var4 = 0;
  retstr->var5.var0.var0 = 0;
  retstr->var5.var1 = 0;
  retstr->var6.var0.var0 = 0;
  retstr->var6.var1 = 0;
  retstr->var7.var0.var0 = 0u;
  *&retstr->var7.var0.var1.var0 = 0u;
  retstr->var7.var0.var3 = 1.0;
  *(&retstr->var8.var0.var1 + 23) = 0;
  retstr->var8.var0.var0.var0[0] = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = v5;
  outputNames = [v5 outputNames];
  v7 = [outputNames countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(outputNames);
        }

        uTF8String = [*(*(&v17 + 1) + 8 * i) UTF8String];
        v11 = strlen(uTF8String);
        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v12 = v11;
        if (v11 >= 0x17)
        {
          operator new();
        }

        v16 = v11;
        if (v11)
        {
          memmove(&__dst, uTF8String, v11);
        }

        *(&__dst + v12) = 0;
        std::vector<std::string>::push_back[abi:ne200100](retstr, &__dst);
        if (v16 < 0)
        {
          operator delete(__dst);
        }
      }

      v7 = [outputNames countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return result;
}

- ($7E6FF06E1E2A477A0598F669E6D2B004)predictRectForPoint:(SEL)point inColorBuffer:(CGPoint)buffer
{
  y = buffer.y;
  x = buffer.x;
  result = [(FTTapToTrackPreprocessor *)self->_preprocessor preprocessBuffer:a5];
  if (result)
  {
    tapToBox = self->_tapToBox;
    result = [(FTTapToTrackPreprocessor *)self->_preprocessor bgraPixelBuffer];
    if (tapToBox)
    {
      return [(FTTapToBox *)tapToBox predictionForTap:result inBuffer:self->_scaler scaler:x, y];
    }

    else
    {
      retstr->var1 = 0.0;
      retstr->var0.origin = 0u;
      retstr->var0.size = 0u;
    }
  }

  else
  {
    v11 = *(MEMORY[0x277CBF398] + 16);
    retstr->var0.origin = *MEMORY[0x277CBF398];
    retstr->var0.size = v11;
    retstr->var1 = 0.0;
  }

  return result;
}

- (id)_maybeFetchTrackByCommittingState:(id)state
{
  stateCopy = state;
  commit = [stateCopy commit];
  v5 = commit;
  if (!commit)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Tracking result was nil.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  tracks = [commit tracks];
  v7 = [tracks count];

  if (v7 >= 2)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v15, v7);
    v13 = std::string::insert(&v15, 0, "Unexpected number of tracks detected. Expected at most one. Found: ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v12, &v16);
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v7 == 1)
  {
    tracks2 = [v5 tracks];
    firstObject = [tracks2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_preprocessBuffer:(__CVBuffer *)buffer andValidateState:(id)state isOp:(int64_t)op
{
  stateCopy = state;
  v17 = stateCopy;
  if (!stateCopy)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Tracking state was nil.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  highPriorityTrackerState = [stateCopy highPriorityTrackerState];
  v10 = highPriorityTrackerState;
  if (!highPriorityTrackerState)
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "High priority tracking state was nil.");
    goto LABEL_12;
  }

  if ([highPriorityTrackerState op] != op)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    [v10 opDescription];
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    std::string::basic_string[abi:ne200100]<0>(&v18, uTF8String);
    v15 = std::string::insert(&v18, 0, "Invalid high priority tracking op encountered: ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v13, &v19);
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (![(FTTapToTrackPreprocessor *)self->_preprocessor preprocessBuffer:buffer])
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Color buffer preprocessing failed");
LABEL_12:
    __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

- (BOOL)_unsafeStartTrackingRect:(CGRect)rect colorBuffer:(__CVBuffer *)buffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v57 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(FTCinematicConfig);
  v11 = [[FTCinematicTracker alloc] initWithConfig:v10];
  tracker = self->_tracker;
  self->_tracker = v11;

  v43 = objc_alloc_init(FTCinematicInput);
  CMTimeMake(&v49, 1, 1);
  [(FTCinematicInput *)v43 setSourceFrameTimestamp:&v49];
  v13 = objc_alloc_init(FTCinematicTapRequest);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v42 = v13;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  [(FTCinematicTapRequest *)v13 setTapPoint:MidX, CGRectGetMidY(v59)];
  [(FTCinematicInput *)v43 setTapRequest:v13];
  v15 = [(FTCinematicTracker *)self->_tracker computeTrackingStateForInput:v43];
  highPriorityTrackerState = [v15 highPriorityTrackerState];
  [(FTCinematicTapToTrack *)self _preprocessBuffer:buffer andValidateState:v15 isOp:3];
  bgraPixelBuffer = [(FTTapToTrackPreprocessor *)self->_preprocessor bgraPixelBuffer];
  v17 = *(self->_exemplarCrop.storage_.__ptr_ + 1);
  [(FTTapToTrackPreprocessor *)self->_preprocessor meanPixel];
  if (([highPriorityTrackerState preProcessExemplarInputFromSourceBuffer:bgraPixelBuffer toDestinationBuffer:v17 forTargetRect:vuzp1_s8(v18 meanPixel:v18).u32[0] scaler:{self->_scaler, x, y, width, height}] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Exemplar preprocessing failed.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  ptr = self->_exemplarNet.__ptr_;
  onlyImageInput = [(FTNetworkDescriptor *)self->_exemplarNetDesc onlyImageInput];
  name = [onlyImageInput name];
  v21 = name;
  uTF8String = [name UTF8String];
  v23 = strlen(uTF8String);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.epoch) = v23;
  if (v23)
  {
    memmove(&__dst, uTF8String, v23);
  }

  *(&__dst.value + v24) = 0;

  v49 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v50 = &unk_285F8F1D8;
  type = self->_exemplarCrop.type_;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  begin = self->_exemplarCrop.shape_.sizes_.__begin_;
  end = self->_exemplarCrop.shape_.sizes_.__end_;
  if (end != begin)
  {
    if (((end - begin) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  cntrl = self->_exemplarCrop.storage_.__cntrl_;
  v55 = self->_exemplarCrop.storage_.__ptr_;
  v56 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  memset(v46, 0, sizeof(v46));
  v47 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::Tensor> const&>(v46, &v49);
  v28 = *(ptr + 1);
  v30 = *(v28 + 56);
  v31 = *(v28 + 64);
  v29 = (v28 + 56);
  if (v30 == v31)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Model has no pre-declared outputs.");
    v39->__vftable = &unk_285F8F310;
  }

  ik::EspressoNet::Predict(ptr, v46, v29, v48);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(v46);
  v50 = &unk_285F8F1D8;
  v32 = v56;
  if (v56 && !atomic_fetch_add(v56 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (SHIBYTE(v49.epoch) < 0)
  {
    operator delete(v49.value);
    if ((SHIBYTE(__dst.epoch) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(__dst.epoch) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__dst.value);
LABEL_21:

  v33 = AsEspressoBufferDictionary(v48);
  v34 = [highPriorityTrackerState postProcessExemplarOutputs:v33 forTargetRect:{x, y, width, height}];

  if ((v34 & 1) == 0)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Tracker preprocessing failed.");
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v35 = [(FTCinematicTapToTrack *)self _maybeFetchTrackByCommittingState:v15];
  v36 = v35 != 0;

  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(v48);
  return v36;
}

- ($7E6FF06E1E2A477A0598F669E6D2B004)_unsafeStepTrackingWithFrame:(SEL)frame
{
  v88 = *MEMORY[0x277D85DE8];
  if (!self->_tracker)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No active tracking session present.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v66 = objc_alloc_init(FTCinematicInput);
  CMTimeMake(&__dst, 1, 1);
  [(FTCinematicInput *)v66 setSourceFrameTimestamp:&__dst];
  v67 = [(FTCinematicTracker *)self->_tracker computeTrackingStateForInput:v66];
  highPriorityTrackerState = [v67 highPriorityTrackerState];
  [(FTCinematicTapToTrack *)self _preprocessBuffer:a4 andValidateState:v67 isOp:2];
  bgraPixelBuffer = [(FTTapToTrackPreprocessor *)self->_preprocessor bgraPixelBuffer];
  v7 = *(self->_instanceCrop.storage_.__ptr_ + 1);
  [(FTTapToTrackPreprocessor *)self->_preprocessor meanPixel];
  if (([highPriorityTrackerState preProcessInstanceInputFromSourceBuffer:bgraPixelBuffer toDestinationBuffer:v7 meanPixel:vuzp1_s8(v8 scaler:{v8).u32[0], self->_scaler}] & 1) == 0)
  {
    v63 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v63, "Instance preprocessing failed.");
    __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v84, 0, sizeof(v84));
  v85 = 1065353216;
  onlyImageInput = [(FTNetworkDescriptor *)self->_instanceNetDesc onlyImageInput];
  name = [onlyImageInput name];
  v11 = name;
  v70 = retstr;
  uTF8String = [name UTF8String];
  v13 = strlen(uTF8String);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst.epoch) = v13;
  if (v13)
  {
    memmove(&__dst, uTF8String, v13);
  }

  v15 = v70;
  *(&__dst.value + v14) = 0;

  p_dst = &__dst;
  v16 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84, &__dst);
  v17 = v16;
  *(v16 + 12) = self->_instanceCrop.type_;
  if (v16 + 5 != &self->_instanceCrop)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v16 + 7, self->_instanceCrop.shape_.sizes_.__begin_, self->_instanceCrop.shape_.sizes_.__end_, self->_instanceCrop.shape_.sizes_.__end_ - self->_instanceCrop.shape_.sizes_.__begin_);
  }

  ptr = self->_instanceCrop.storage_.__ptr_;
  cntrl = self->_instanceCrop.storage_.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v20 = v17[11];
  v17[10] = ptr;
  v17[11] = cntrl;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    if ((SHIBYTE(__dst.epoch) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (SHIBYTE(__dst.epoch) < 0)
  {
LABEL_16:
    operator delete(__dst.value);
  }

LABEL_17:

  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  inputReferences = [(FTNetworkDescriptor *)self->_instanceNetDesc inputReferences];
  v22 = [inputReferences countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (!v22)
  {
    goto LABEL_55;
  }

  v23 = *v81;
  obj = inputReferences;
  do
  {
    v24 = 0;
    do
    {
      if (*v81 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v80 + 1) + 8 * v24);
      v26 = self->_exemplarNet.__ptr_;
      sourceOutputName = [v25 sourceOutputName];
      v28 = sourceOutputName;
      uTF8String2 = [sourceOutputName UTF8String];
      v30 = strlen(uTF8String2);
      if (v30 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = v30;
      if (v30 >= 0x17)
      {
        operator new();
      }

      v75 = v30;
      if (v30)
      {
        memmove(&p_dst, uTF8String2, v30);
      }

      *(&p_dst + v31) = 0;

      ik::core::GetOutput(&__dst, *(v26 + 1), &p_dst);
      destinationInputName = [v25 destinationInputName];
      v33 = destinationInputName;
      uTF8String3 = [destinationInputName UTF8String];
      v35 = strlen(uTF8String3);
      if (v35 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v36 = v35;
      if (v35 >= 0x17)
      {
        operator new();
      }

      v73 = v35;
      if (v35)
      {
        memmove(&__p, uTF8String3, v35);
      }

      *(&__p + v36) = 0;

      v15 = v70;
      p_p = &__p;
      v37 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84, &__p);
      v38 = v37;
      *(v37 + 12) = __dst.timescale;
      if (v37 + 5 != &__dst)
      {
        std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v37 + 7, __dst.epoch, v77, (v77 - __dst.epoch) >> 3);
      }

      v40 = v78;
      v39 = v79;
      if (v79)
      {
        atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = v38[11];
      v38[10] = v40;
      v38[11] = v39;
      if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v41->__on_zero_shared)(v41);
        std::__shared_weak_count::__release_weak(v41);
        if ((v73 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_41:
        operator delete(__p);
        goto LABEL_42;
      }

      if (v73 < 0)
      {
        goto LABEL_41;
      }

LABEL_42:

      __dst.value = &unk_285F8F1D8;
      v42 = v79;
      if (!v79 || atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        epoch = __dst.epoch;
        if (!__dst.epoch)
        {
          goto LABEL_46;
        }

LABEL_45:
        v77 = epoch;
        operator delete(epoch);
        goto LABEL_46;
      }

      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
      epoch = __dst.epoch;
      if (__dst.epoch)
      {
        goto LABEL_45;
      }

LABEL_46:
      if (v75 < 0)
      {
        operator delete(p_dst);
      }

      ++v24;
    }

    while (v22 != v24);
    inputReferences = obj;
    v44 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
    v22 = v44;
  }

  while (v44);
LABEL_55:

  v45 = self->_instanceNet.__ptr_;
  v46 = *(v45 + 1);
  v48 = *(v46 + 56);
  v49 = *(v46 + 64);
  v47 = (v46 + 56);
  if (v48 == v49)
  {
    v64 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v64, "Model has no pre-declared outputs.");
    v64->__vftable = &unk_285F8F310;
  }

  ik::EspressoNet::Predict(v45, v84, v47, &__dst);
  v50 = AsEspressoBufferDictionary(&__dst);
  v51 = [highPriorityTrackerState postProcessInstanceOutputs:v50];

  if ((v51 & 1) == 0)
  {
    v65 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v65, "Instance post-processing failed.");
    __cxa_throw(v65, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v52 = [(FTCinematicTapToTrack *)self _maybeFetchTrackByCommittingState:v67];
  v53 = v52;
  if (v52)
  {
    [v52 box];
    v15->var0.origin.x = v54;
    v15->var0.origin.y = v55;
    v15->var0.size.width = v56;
    v15->var0.size.height = v57;
    [v53 boxConfidence];
    v15->var1 = v58;
  }

  else
  {
    tracker = self->_tracker;
    self->_tracker = 0;

    v60 = *(MEMORY[0x277CBF398] + 16);
    v15->var0.origin = *MEMORY[0x277CBF398];
    v15->var0.size = v60;
    v15->var1 = 0.0;
  }

  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&__dst);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(v84);

  return result;
}

- (BOOL)reset
{
  tracker = self->_tracker;
  self->_tracker = 0;

  return 1;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 18) = 1;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 8) = &unk_285F8F2F0;
  *(self + 32) = 1;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 21) = 0;
  *(self + 14) = 0;
  *(self + 15) = &unk_285F8F2F0;
  return self;
}

@end