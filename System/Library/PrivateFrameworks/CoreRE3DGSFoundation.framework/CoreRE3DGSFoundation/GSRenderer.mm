@interface GSRenderer
- (BOOL)encodeSplatting:(id)splatting withSorter:(id)sorter renderPassDescriptor:(id)descriptor renderDescriptor:(id)renderDescriptor error:(id *)error;
- (GSRenderer)initWithDevice:(id)device colorPixelFormat:(unint64_t)format depthPixelFormat:(unint64_t)pixelFormat sampleCount:(unint64_t)count error:(id *)error;
- (id).cxx_construct;
- (id)createRenderPassDescriptorForColorTarget:(id)target depthTarget:(id)depthTarget colorIntermediate:(id)intermediate depthIntermediate:(id)depthIntermediate rasterizationRateMap:(id)map error:(id *)error;
- (id)createRenderPassDescriptorForColorTarget:(id)target depthTarget:(id)depthTarget rasterizationRateMap:(id)map error:(id *)error;
- (shared_ptr<apple3dgs::Renderer>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::Renderer>)impl;
@end

@implementation GSRenderer

- (GSRenderer)initWithDevice:(id)device colorPixelFormat:(unint64_t)format depthPixelFormat:(unint64_t)pixelFormat sampleCount:(unint64_t)count error:(id *)error
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = GSRenderer;
  [(GSRenderer *)&v10 init];
  operator new();
}

- (id)createRenderPassDescriptorForColorTarget:(id)target depthTarget:(id)depthTarget rasterizationRateMap:(id)map error:(id *)error
{
  v6 = apple3dgs::Renderer::CreateRenderPassDescriptor(self->_impl.__ptr_, target, depthTarget, map);

  return v6;
}

- (id)createRenderPassDescriptorForColorTarget:(id)target depthTarget:(id)depthTarget colorIntermediate:(id)intermediate depthIntermediate:(id)depthIntermediate rasterizationRateMap:(id)map error:(id *)error
{
  v8 = apple3dgs::Renderer::CreateRenderPassDescriptor(self->_impl.__ptr_, target, depthTarget, intermediate, depthIntermediate, map);

  return v8;
}

- (BOOL)encodeSplatting:(id)splatting withSorter:(id)sorter renderPassDescriptor:(id)descriptor renderDescriptor:(id)renderDescriptor error:(id *)error
{
  splattingCopy = splatting;
  sorterCopy = sorter;
  descriptorCopy = descriptor;
  renderDescriptorCopy = renderDescriptor;
  ptr = self->_impl.__ptr_;
  if (sorterCopy)
  {
    [sorterCopy impl];
    v17 = v22;
  }

  else
  {
    v17 = 0;
    v23 = 0;
  }

  [renderDescriptorCopy impl];
  v18 = apple3dgs::Renderer::EncodeSplatting(ptr, splattingCopy, v17, descriptorCopy, v20, error);
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

- (void)setImpl:(shared_ptr<apple3dgs::Renderer>)impl
{
  v4 = *impl.__ptr_;
  v3 = *(impl.__ptr_ + 1);
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