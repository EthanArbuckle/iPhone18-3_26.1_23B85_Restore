@interface GSConvertMXIOption
- (GSConvertMXIOption)init;
- (__n128)cameraExtrinsics;
- (__n128)cameraIntrinsics;
- (id).cxx_construct;
- (shared_ptr<apple3dgs::MultiLayerOptions>)impl;
- (uint64_t)cameraIntrinsicsRefine;
- (uint64_t)setCameraExtrinsics:(__n128)extrinsics;
- (uint64_t)setCameraIntrinsics:(__n128)intrinsics;
- (uint64_t)setCameraIntrinsicsRefine:(__n128)refine;
- (void)setImpl:(shared_ptr<apple3dgs::MultiLayerOptions>)impl;
@end

@implementation GSConvertMXIOption

- (GSConvertMXIOption)init
{
  v3.receiver = self;
  v3.super_class = GSConvertMXIOption;
  [(GSConvertMXIOption *)&v3 init];
  operator new();
}

- (uint64_t)setCameraExtrinsics:(__n128)extrinsics
{
  v5 = *(result + 8);
  v5[2] = a2;
  v5[3] = extrinsics;
  v5[4] = a4;
  v5[5] = a5;
  return result;
}

- (__n128)cameraExtrinsics
{
  v1 = *(self + 8);
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  return result;
}

- (uint64_t)setCameraIntrinsicsRefine:(__n128)refine
{
  v4 = *(result + 8);
  if ((v4[12].n128_u8[0] & 1) == 0)
  {
    v4[12].n128_u8[0] = 1;
  }

  v4[9] = a2;
  v4[10] = refine;
  v4[11] = a4;
  return result;
}

- (uint64_t)cameraIntrinsicsRefine
{
  v1 = *(result + 8);
  v2 = 112;
  if (*(v1 + 192))
  {
    v2 = 160;
  }

  v3 = 96;
  if (*(v1 + 192))
  {
    v3 = 144;
  }

  v4 = *(v1 + v3);
  v5 = *(v1 + v2);
  if (*(v1 + 192))
  {
    v6 = 176;
  }

  else
  {
    v6 = 128;
  }

  v7 = *(v1 + v6);
  return result;
}

- (uint64_t)setCameraIntrinsics:(__n128)intrinsics
{
  v4 = *(result + 8);
  v4[6] = a2;
  v4[7] = intrinsics;
  v4[8] = a4;
  return result;
}

- (__n128)cameraIntrinsics
{
  v1 = *(self + 8);
  result = *(v1 + 96);
  v3 = *(v1 + 112);
  v4 = *(v1 + 128);
  return result;
}

- (shared_ptr<apple3dgs::MultiLayerOptions>)impl
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

- (void)setImpl:(shared_ptr<apple3dgs::MultiLayerOptions>)impl
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