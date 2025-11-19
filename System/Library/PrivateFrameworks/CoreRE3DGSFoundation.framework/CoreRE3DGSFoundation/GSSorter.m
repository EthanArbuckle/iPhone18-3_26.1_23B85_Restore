@interface GSSorter
- (BOOL)encodeSorting:(id)a3 forAssets:(id)a4 sorterDescriptor:(id)a5 renderDescriptor:(id)a6 error:(id *)a7;
- (GSSorter)initWithDevice:(id)a3 forAssets:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (shared_ptr<apple3dgs::Sorter>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::Sorter>)a3;
@end

@implementation GSSorter

- (GSSorter)initWithDevice:(id)a3 forAssets:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = GSSorter;
  [(GSSorter *)&v11 init];
  operator new();
}

- (BOOL)encodeSorting:(id)a3 forAssets:(id)a4 sorterDescriptor:(id)a5 renderDescriptor:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = __p;
  v17 = v35;
  v18 = 0uLL;
  ptr = self->_impl.__ptr_;
  if (v14)
  {
    [v14 impl];
    v18 = v32;
  }

  v33 = v18;
  v20 = 0uLL;
  v32 = 0u;
  if (v15)
  {
    [v15 impl];
    v20 = v30;
  }

  v31 = v20;
  v21 = (**ptr)(ptr, v12, v16, (v17 - v16) >> 4, &v33, &v31, a7);
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

- (void)setImpl:(shared_ptr<apple3dgs::Sorter>)a3
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
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end