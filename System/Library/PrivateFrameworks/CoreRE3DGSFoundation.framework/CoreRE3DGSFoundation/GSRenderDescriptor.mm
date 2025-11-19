@interface GSRenderDescriptor
- (id).cxx_construct;
- (id)initForMaxCameras:(unsigned int)a3;
- (shared_ptr<apple3dgs::RenderDescriptor>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::RenderDescriptor>)a3;
- (void)setProjectionMatrices:(id *)a3;
- (void)setViewMappings:(id *)a3;
- (void)setViewMatrices:(id *)a3;
- (void)setViewports:(id *)a3;
@end

@implementation GSRenderDescriptor

- (id)initForMaxCameras:(unsigned int)a3
{
  v4.receiver = self;
  v4.super_class = GSRenderDescriptor;
  [(GSRenderDescriptor *)&v4 init];
  operator new();
}

- (void)setViewMatrices:(id *)a3
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a3 + v4 + 16);
      v7 = *(a3 + v4 + 32);
      v8 = *(a3 + v4 + 48);
      v9 = (ptr + v4);
      v9[1] = *(a3 + v4);
      v9[2] = v6;
      v9[3] = v7;
      v9[4] = v8;
      ++v5;
      ptr = self->_impl.__ptr_;
      v4 += 64;
    }

    while (v5 < *ptr);
  }
}

- (void)setProjectionMatrices:(id *)a3
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a3 + v4 + 16);
      v7 = *(a3 + v4 + 32);
      v8 = *(a3 + v4 + 48);
      v9 = (ptr + v4);
      v9[9] = *(a3 + v4);
      v9[10] = v6;
      v9[11] = v7;
      v9[12] = v8;
      ++v5;
      ptr = self->_impl.__ptr_;
      v4 += 64;
    }

    while (v5 < *ptr);
  }
}

- (void)setViewports:(id *)a3
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    v5 = 272;
    v6 = a3;
    do
    {
      v7 = (ptr + v5);
      v8 = *&v6->var0;
      v9 = *&v6->var4;
      v7[1] = *&v6->var2;
      v7[2] = v9;
      *v7 = v8;
      ++v4;
      ptr = self->_impl.__ptr_;
      ++v6;
      v5 += 48;
    }

    while (v4 < *ptr);
LABEL_6:
    JUMPOUT(0x24C1A1FF0);
  }

  if (a3)
  {
    goto LABEL_6;
  }
}

- (void)setViewMappings:(id *)a3
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    do
    {
      *(ptr + v4 + 46) = a3[v4];
      ++v4;
      ptr = self->_impl.__ptr_;
    }

    while (v4 < *ptr);
LABEL_6:
    JUMPOUT(0x24C1A1FF0);
  }

  if (a3)
  {
    goto LABEL_6;
  }
}

- (shared_ptr<apple3dgs::RenderDescriptor>)impl
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

- (void)setImpl:(shared_ptr<apple3dgs::RenderDescriptor>)a3
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