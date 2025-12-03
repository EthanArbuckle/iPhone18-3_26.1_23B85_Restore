@interface GSRenderDescriptor
- (id).cxx_construct;
- (id)initForMaxCameras:(unsigned int)cameras;
- (shared_ptr<apple3dgs::RenderDescriptor>)impl;
- (void)setImpl:(shared_ptr<apple3dgs::RenderDescriptor>)impl;
- (void)setProjectionMatrices:(id *)matrices;
- (void)setViewMappings:(id *)mappings;
- (void)setViewMatrices:(id *)matrices;
- (void)setViewports:(id *)viewports;
@end

@implementation GSRenderDescriptor

- (id)initForMaxCameras:(unsigned int)cameras
{
  v4.receiver = self;
  v4.super_class = GSRenderDescriptor;
  [(GSRenderDescriptor *)&v4 init];
  operator new();
}

- (void)setViewMatrices:(id *)matrices
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(matrices + v4 + 16);
      v7 = *(matrices + v4 + 32);
      v8 = *(matrices + v4 + 48);
      v9 = (ptr + v4);
      v9[1] = *(matrices + v4);
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

- (void)setProjectionMatrices:(id *)matrices
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(matrices + v4 + 16);
      v7 = *(matrices + v4 + 32);
      v8 = *(matrices + v4 + 48);
      v9 = (ptr + v4);
      v9[9] = *(matrices + v4);
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

- (void)setViewports:(id *)viewports
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    v5 = 272;
    viewportsCopy = viewports;
    do
    {
      v7 = (ptr + v5);
      v8 = *&viewportsCopy->var0;
      v9 = *&viewportsCopy->var4;
      v7[1] = *&viewportsCopy->var2;
      v7[2] = v9;
      *v7 = v8;
      ++v4;
      ptr = self->_impl.__ptr_;
      ++viewportsCopy;
      v5 += 48;
    }

    while (v4 < *ptr);
LABEL_6:
    JUMPOUT(0x24C1A1FF0);
  }

  if (viewports)
  {
    goto LABEL_6;
  }
}

- (void)setViewMappings:(id *)mappings
{
  ptr = self->_impl.__ptr_;
  if (*ptr)
  {
    v4 = 0;
    do
    {
      *(ptr + v4 + 46) = mappings[v4];
      ++v4;
      ptr = self->_impl.__ptr_;
    }

    while (v4 < *ptr);
LABEL_6:
    JUMPOUT(0x24C1A1FF0);
  }

  if (mappings)
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

- (void)setImpl:(shared_ptr<apple3dgs::RenderDescriptor>)impl
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