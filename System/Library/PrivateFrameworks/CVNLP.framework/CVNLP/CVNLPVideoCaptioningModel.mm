@interface CVNLPVideoCaptioningModel
- (CVNLPVideoCaptioningModel)initWithOptions:(id)options error:(id *)error;
- (id).cxx_construct;
- (id)generateCaption:(id)caption error:(id *)error;
- (shared_ptr<cvnlp::vidcap::VideoCaptioningModel>)model;
@end

@implementation CVNLPVideoCaptioningModel

- (CVNLPVideoCaptioningModel)initWithOptions:(id)options error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v7, CVNLPVideoCaptioningModelURL, v8);
  v10 = v9;
  if (v9)
  {
    CFRetain(v9);
    cf = v10;
    v11 = CFGetTypeID(v10);
    if (v11 != CFURLGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  sub_1D9D87260(&cf, v28);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_1D9D12B94(__p, v28[0], v28[1]);
  }

  else
  {
    *__p = *v28;
    v23 = v29;
  }

  sub_1D9D89D38(v27, __p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_1D9D54A80(v27))
  {
    v15 = objc_msgSend_objectForKey_(optionsCopy, v13, CVNLPVideoCaptioningModelEspressoEngine, v14);
    v16 = v15 == 0;

    if (!v16)
    {
      v19 = objc_msgSend_objectForKey_(optionsCopy, v17, CVNLPVideoCaptioningModelEspressoEngine, v18);
      sub_1D9D87968(v19, &v25);

      sub_1D9D87A5C(&v25);
      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    objc_storeStrong(&self->_options, options);
    operator new();
  }

  v20 = __cxa_allocate_exception(0x28uLL);
  sub_1D9DBD9A0(v20, v28);
  __cxa_throw(v20, &unk_1F554F2D0, sub_1D9D87920);
}

- (id)generateCaption:(id)caption error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  captionCopy = caption;
  objc_msgSend_model(self, v6, v7, v8);
  v9 = __p;
  if (*(__p + 23) < 0)
  {
    sub_1D9D12B94(__dst, *__p, *(__p + 1));
  }

  else
  {
    v10 = *__p;
    v17 = *(__p + 2);
    *__dst = v10;
  }

  if (v9[47] < 0)
  {
    sub_1D9D12B94(v18, *(v9 + 3), *(v9 + 4));
  }

  else
  {
    v11 = *(v9 + 24);
    v18[2] = *(v9 + 5);
    *v18 = v11;
  }

  if (v9[71] < 0)
  {
    sub_1D9D12B94(v19, *(v9 + 6), *(v9 + 7));
  }

  else
  {
    v12 = *(v9 + 3);
    v19[2] = *(v9 + 8);
    *v19 = v12;
  }

  v13 = *(v9 + 9);
  v20 = *(v9 + 20);
  v19[3] = v13;
  v14 = v22;
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  operator new();
}

- (shared_ptr<cvnlp::vidcap::VideoCaptioningModel>)model
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

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end