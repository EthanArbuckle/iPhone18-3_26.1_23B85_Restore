@interface GSRenderer
- (BOOL)encodeSplatting:(id)a3 withSorter:(id)a4 renderPassDescriptor:(id)a5 renderDescriptor:(id)a6 error:(id *)a7;
- (GSRenderer)initWithDevice:(id)a3 colorPixelFormat:(unint64_t)a4 depthPixelFormat:(unint64_t)a5 sampleCount:(unint64_t)a6 error:(id *)a7;
- (id).cxx_construct;
- (id)createRenderPassDescriptorForColorTarget:(id)a3 depthTarget:(id)a4 colorIntermediate:(id)a5 depthIntermediate:(id)a6 rasterizationRateMap:(id)a7 error:(id *)a8;
- (id)createRenderPassDescriptorForColorTarget:(id)a3 depthTarget:(id)a4 rasterizationRateMap:(id)a5 error:(id *)a6;
- (shared_ptr<apple3dgs::Renderer>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::Renderer>)a3;
@end

@implementation GSRenderer

- (GSRenderer)initWithDevice:(id)a3 colorPixelFormat:(unint64_t)a4 depthPixelFormat:(unint64_t)a5 sampleCount:(unint64_t)a6 error:(id *)a7
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = GSRenderer;
  [(GSRenderer *)&v10 init];
  operator new();
}

- (id)createRenderPassDescriptorForColorTarget:(id)a3 depthTarget:(id)a4 rasterizationRateMap:(id)a5 error:(id *)a6
{
  v6 = apple3dgs::Renderer::CreateRenderPassDescriptor(self->_impl.__ptr_, a3, a4, a5);

  return v6;
}

- (id)createRenderPassDescriptorForColorTarget:(id)a3 depthTarget:(id)a4 colorIntermediate:(id)a5 depthIntermediate:(id)a6 rasterizationRateMap:(id)a7 error:(id *)a8
{
  v8 = apple3dgs::Renderer::CreateRenderPassDescriptor(self->_impl.__ptr_, a3, a4, a5, a6, a7);

  return v8;
}

- (BOOL)encodeSplatting:(id)a3 withSorter:(id)a4 renderPassDescriptor:(id)a5 renderDescriptor:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  ptr = self->_impl.__ptr_;
  if (v13)
  {
    [v13 impl];
    v17 = v22;
  }

  else
  {
    v17 = 0;
    v23 = 0;
  }

  [v15 impl];
  v18 = apple3dgs::Renderer::EncodeSplatting(ptr, v12, v17, v14, v20, a7);
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  return v18;
}

- (shared_ptr<apple3dgs::Renderer>)impl
{
  cntrl = self->_impl.__cntrl_;
  *v2 = self->_impl.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setImpl:(shared_ptr<apple3dgs::Renderer>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_impl.__cntrl_;
  self->_impl.__ptr_ = v4;
  self->_impl.__cntrl_ = v3;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);

    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end