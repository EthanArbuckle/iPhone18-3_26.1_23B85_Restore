@interface GSSorter
- (BOOL)encodeSorting:(id)sorting forAssets:(id)assets sorterDescriptor:(id)descriptor renderDescriptor:(id)renderDescriptor error:(id *)error;
- (GSSorter)initWithDevice:(id)device forAssets:(id)assets error:(id *)error;
- (id).cxx_construct;
- (shared_ptr<apple3dgs::Sorter>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::Sorter>)impl;
@end

@implementation GSSorter

- (GSSorter)initWithDevice:(id)device forAssets:(id)assets error:(id *)error
{
  deviceCopy = device;
  assetsCopy = assets;
  v11.receiver = self;
  v11.super_class = GSSorter;
  [(GSSorter *)&v11 init];
  operator new();
}

- (BOOL)encodeSorting:(id)sorting forAssets:(id)assets sorterDescriptor:(id)descriptor renderDescriptor:(id)renderDescriptor error:(id *)error
{
  sortingCopy = sorting;
  assetsCopy = assets;
  descriptorCopy = descriptor;
  renderDescriptorCopy = renderDescriptor;
  v16 = __p;
  v17 = v35;
  v18 = 0uLL;
  ptr = self->_impl.__ptr_;
  if (descriptorCopy)
  {
    [descriptorCopy impl];
    v18 = v32;
  }

  v33 = v18;
  v20 = 0uLL;
  v32 = 0u;
  if (renderDescriptorCopy)
  {
    [renderDescriptorCopy impl];
    v20 = v30;
  }

  v31 = v20;
  v21 = (**ptr)(ptr, sortingCopy, v16, (v17 - v16) >> 4, &v33, &v31, error);
  v22 = *(&v31 + 1);
  if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v33 + 1);
  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = *(&v32 + 1);
  if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = __p;
  if (__p)
  {
    v26 = v35;
    v27 = __p;
    if (v35 != __p)
    {
      do
      {
        v28 = *(v26 - 1);
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v26 -= 16;
      }

      while (v26 != v25);
      v27 = __p;
    }

    v35 = v25;
    operator delete(v27);
  }

  return v21;
}

- (shared_ptr<apple3dgs::Sorter>)impl
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

- (void)setImpl:(shared_ptr<apple3dgs::Sorter>)impl
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
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end