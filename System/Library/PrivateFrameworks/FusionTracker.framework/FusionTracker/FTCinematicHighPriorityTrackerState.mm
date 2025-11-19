@interface FTCinematicHighPriorityTrackerState
- (BOOL)_unsafeMeanFillAndScaleSourceBuffer:(__CVBuffer *)a3 destinationBuffer:(__CVBuffer *)a4 sourceRect:(CGRect)a5 meanPixel:(id)a6 scaler:;
- (BOOL)_updateHighPriorityTrackWithRect:(Rect<double>)a3 confidence:(double)a4 isTapToTrack:(BOOL)a5;
- (BOOL)_validatePostProcessingInvocation;
- (BOOL)postProcessExemplarOutputs:(id)a3 forTargetRect:(CGRect)a4;
- (BOOL)postProcessInstanceOutputs:(id)a3;
- (BOOL)preProcessExemplarInputFromSourceBuffer:(__CVBuffer *)a3 toDestinationBuffer:(__CVBuffer *)a4 forTargetRect:(CGRect)a5 meanPixel:(id)a6 scaler:;
- (BOOL)preProcessInstanceInputFromSourceBuffer:(__CVBuffer *)a3 toDestinationBuffer:(__CVBuffer *)a4 meanPixel:(id)a5 scaler:;
- (CGRect)exemplarInputRoiForTargetRect:(CGRect)a3;
- (CGRect)instanceInputRoi;
- (CGRect)targetRect;
- (FTCinematicHighPriorityTrackerState)initWithTracker:(shared_ptr<ft:(shared_ptr<ft::Frame>)a4 :CinematicTracker>)a3 frame:;
- (id).cxx_construct;
- (id)opDescription;
- (void)_setup;
- (void)_setupOp;
- (void)_setupSessionStorage;
- (void)abort;
@end

@implementation FTCinematicHighPriorityTrackerState

- (FTCinematicHighPriorityTrackerState)initWithTracker:(shared_ptr<ft:(shared_ptr<ft::Frame>)a4 :CinematicTracker>)a3 frame:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v17.receiver = self;
  v17.super_class = FTCinematicHighPriorityTrackerState;
  v6 = [(FTCinematicHighPriorityTrackerState *)&v17 init:a3.__ptr_];
  v7 = v6;
  if (v6)
  {
    v9 = *ptr;
    v8 = *(ptr + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6->_tracker.__cntrl_;
    v6->_tracker.__ptr_ = v9;
    v6->_tracker.__cntrl_ = v8;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v12 = *cntrl;
    v11 = *(cntrl + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v7->_frame.__cntrl_;
    v7->_frame.__ptr_ = v12;
    v7->_frame.__cntrl_ = v11;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *(MEMORY[0x277CBF398] + 16);
    v7->_targetRect.origin = *MEMORY[0x277CBF398];
    v7->_targetRect.size = v14;
    *&v7->_isTapToTrack = 0;
    [(FTCinematicHighPriorityTrackerState *)v7 _setup];
    v15 = v7;
  }

  return v7;
}

- (void)_setup
{
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  [(FTCinematicHighPriorityTrackerState *)self _setupOp];
  [(FTCinematicHighPriorityTrackerState *)self _setupSessionStorage];

  std::recursive_mutex::unlock((ptr + 80));
}

- (void)_setupSessionStorage
{
  op = self->_op;
  if (op != 2)
  {
    if (!op)
    {
      ptr = self->_tracker.__ptr_;
      v5 = *(ptr + 18);
      if (v5)
      {
        *(ptr + 18) = 0;
      }

      return;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_tracker.__ptr_;
    v8 = *(v7 + 18);
    *(v7 + 18) = v6;
  }

  v9 = *(self->_tracker.__ptr_ + 18);

  [(FTCinematicHighPriorityTrackerState *)self setSessionStorage:v9];
}

- (void)_setupOp
{
  v3 = ft::SiameseRpnSession::CurrentStage((self->_tracker.__ptr_ + 200));
  ptr = self->_tracker.__ptr_;
  v5 = *(ptr + 19);
  v6 = *(ptr + 20);
  v15 = v5;
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    v7 = *(v5 + 8) & 1;
    self->_isTapToTrack = v7;
    if (v3 == 2)
    {
      self->_op = 2;
      if (!v6)
      {
        return;
      }
    }

    else
    {
      if (v3)
      {
        v9 = v3;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v13, v9);
        v11 = std::string::insert(&v13, 0, "SiameseRPN at invalid stage: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v14.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v14);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v7)
      {
        self->_op = 3;
        if (!v6)
        {
          return;
        }
      }

      else
      {
        self->_op = 1;
        v8 = *(v5 + 40);
        self->_targetRect.origin = *(v5 + 24);
        self->_targetRect.size = v8;
        if (!v6)
        {
          return;
        }
      }
    }
  }

  else
  {
    self->_op = 0;
    if (!v6)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)exemplarInputRoiForTargetRect:(CGRect)a3
{
  if ((self->_op | 2) == 3)
  {
    std::recursive_mutex::lock((self->_tracker.__ptr_ + 80));
    ft::SiameseRpnSession::ComputeExemplarInputRect(self->_tracker.__ptr_ + 200);
  }

  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)instanceInputRoi
{
  if (self->_op == 2)
  {
    ptr = self->_tracker.__ptr_;
    std::recursive_mutex::lock((ptr + 80));
    v4 = ft::SiameseRpnSession::ComputeInstanceInputRect((self->_tracker.__ptr_ + 200));
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = v4;
    std::recursive_mutex::unlock((ptr + 80));
    v12 = v11;
    v13 = v10;
    v14 = v8;
    v15 = v6;
  }

  else
  {
    v12 = *MEMORY[0x277CBF398];
    v13 = *(MEMORY[0x277CBF398] + 8);
    v14 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_unsafeMeanFillAndScaleSourceBuffer:(__CVBuffer *)a3 destinationBuffer:(__CVBuffer *)a4 sourceRect:(CGRect)a5 meanPixel:(id)a6 scaler:
{
  v7 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = v6;
  v15 = CVPixelBufferGetWidth(a3);
  v16 = CVPixelBufferGetHeight(a3);
  v17 = CVPixelBufferGetWidth(a3);
  v18 = CVPixelBufferGetHeight(a3);
  v19 = v15;
  v20 = x * v19;
  v21 = v16;
  v22 = y * v21;
  v23 = width * v19;
  v24 = height * v21;
  v25 = v17;
  v26 = v18;
  if (v20 >= 0.0)
  {
    v27 = v20;
  }

  else
  {
    v27 = 0.0;
  }

  if (v22 >= 0.0)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0.0;
  }

  if (v20 + v23 <= v25)
  {
    v25 = v20 + v23;
  }

  if (v22 + v24 <= v26)
  {
    v26 = v22 + v24;
  }

  if (v25 <= v27)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v25 - v27;
  }

  if (v26 <= v28)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v26 - v28;
  }

  if (v29 <= 0.0 || v30 <= 0.0)
  {
    v38 = ft::GetOsLog(v18);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [FTCinematicHighPriorityTrackerState _unsafeMeanFillAndScaleSourceBuffer:destinationBuffer:sourceRect:meanPixel:scaler:];
    }

    v37 = 0;
  }

  else
  {
    CGAffineTransformMakeTranslation(&t1, -v20, -v22);
    v31 = CVPixelBufferGetWidth(a4);
    v32 = CVPixelBufferGetHeight(a4);
    CGAffineTransformMakeScale(&v40, v31 / v23, v32 / v24);
    CGAffineTransformConcat(&v42, &t1, &v40);
    v43.origin.x = v27;
    v43.origin.y = v28;
    v43.size.width = v29;
    v43.size.height = v30;
    v44 = CGRectApplyAffineTransform(v43, &v42);
    v33 = v44.origin.x;
    v34 = v44.origin.y;
    v35 = v44.size.width;
    v36 = v44.size.height;
    if (FTFillPixelBufferWithColor(a4, v7))
    {
      v37 = 0;
    }

    else
    {
      [v14 scaleSourceBuffer:a3 toDestinationBuffer:a4 sourceROI:round(v27) destinationROI:{round(v28), round(v29), round(v30), round(v33), round(v34), round(v35), round(v36)}];
      v37 = 1;
    }
  }

  return v37;
}

- (BOOL)preProcessExemplarInputFromSourceBuffer:(__CVBuffer *)a3 toDestinationBuffer:(__CVBuffer *)a4 forTargetRect:(CGRect)a5 meanPixel:(id)a6 scaler:
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = v6;
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  [(FTCinematicHighPriorityTrackerState *)self exemplarInputRoiForTargetRect:x, y, width, height];
  LOBYTE(a6) = [(FTCinematicHighPriorityTrackerState *)self _unsafeMeanFillAndScaleSourceBuffer:a3 destinationBuffer:a4 sourceRect:a6 meanPixel:v15 scaler:?];
  std::recursive_mutex::unlock((ptr + 80));

  return a6;
}

- (BOOL)preProcessInstanceInputFromSourceBuffer:(__CVBuffer *)a3 toDestinationBuffer:(__CVBuffer *)a4 meanPixel:(id)a5 scaler:
{
  v10 = v5;
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  [(FTCinematicHighPriorityTrackerState *)self instanceInputRoi];
  LOBYTE(a5) = [(FTCinematicHighPriorityTrackerState *)self _unsafeMeanFillAndScaleSourceBuffer:a3 destinationBuffer:a4 sourceRect:a5 meanPixel:v10 scaler:?];
  std::recursive_mutex::unlock((ptr + 80));

  return a5;
}

- (BOOL)_validatePostProcessingInvocation
{
  finalized = self->_finalized;
  if (finalized)
  {
    v3 = ft::GetOsLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [FTCinematicHighPriorityTrackerState _validatePostProcessingInvocation];
    }

    return 0;
  }

  else
  {
    self->_finalized = 1;
    return !finalized;
  }
}

- (BOOL)_updateHighPriorityTrackWithRect:(Rect<double>)a3 confidence:(double)a4 isTapToTrack:(BOOL)a5
{
  ptr = self->_tracker.__ptr_;
  v6 = *(ptr + 19);
  v7 = *(ptr + 20);
  v38 = v6;
  v39 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    *&v22 = a3.var0;
    *(&v22 + 1) = *&a3.var1;
    var2 = a3.var2;
    var3 = a3.var3;
    if (a5)
    {
      v25 = 912559;
      v8 = a4;
      v26 = v8;
      v9 = self->_frame.__ptr_;
      v10 = *(v9 + 2);
      v27 = *v9;
      v28 = v10;
      v11 = MEMORY[0x277CC0898];
    }

    else
    {
      v25 = *(v6 + 88);
      v13 = a4;
      v26 = v13;
      v9 = self->_frame.__ptr_;
      v14 = *v9;
      v28 = *(v9 + 2);
      v27 = v14;
      if ((*(v6 + 232) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Track not yet initialized.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = v6 + 124;
    }

    v29 = *v11;
    v30 = *(v11 + 16);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    __asm { FMOV            V0.2S, #-1.0 }

    v37 = _D0;
    ft::Track::Update(v6, v9, &v22);
  }

  else
  {
    v12 = ft::GetOsLog(self);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FTCinematicHighPriorityTrackerState _updateHighPriorityTrackWithRect:confidence:isTapToTrack:];
    }
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return v6 != 0;
}

- (BOOL)postProcessExemplarOutputs:(id)a3 forTargetRect:(CGRect)a4
{
  v5 = a3;
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  if ([(FTCinematicHighPriorityTrackerState *)self _validatePostProcessingInvocation])
  {
    v7 = self->_tracker.__ptr_;
    AsEspressoBufferMap(__p, v5);
    ft::SiameseRpnSession::PostProcessExemplarOutputs(v7 + 25, __p);
  }

  std::recursive_mutex::unlock((ptr + 80));

  return 0;
}

- (BOOL)postProcessInstanceOutputs:(id)a3
{
  v4 = a3;
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  if ([(FTCinematicHighPriorityTrackerState *)self _validatePostProcessingInvocation])
  {
    v6 = self->_tracker.__ptr_;
    AsEspressoBufferMap(__p, v4);
    ft::SiameseRpnSession::PostProcessInstanceOutputs(v6 + 25, __p);
  }

  std::recursive_mutex::unlock((ptr + 80));

  return 0;
}

- (void)abort
{
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  ft::CinematicTracker::TerminateHighPriorityTrack(self->_tracker.__ptr_);
  self->_finalized = 1;

  std::recursive_mutex::unlock((ptr + 80));
}

- (id)opDescription
{
  op = self->_op;
  if (op > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27916B3D8[op];
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end