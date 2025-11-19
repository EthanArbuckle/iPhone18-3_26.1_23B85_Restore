@interface GSMultiLayerRenderer
- (BOOL)renderMultiLayerWith:(id)a3 asset:(id)a4 convertMXIOption:(id)a5 multiLayerCallback:(id)a6 error:(id *)a7;
- (BOOL)startWarmupThread:(id)a3 multiLayerCallback:(id)a4 error:(id *)a5;
- (GSMultiLayerRenderer)initWithDevice:(id)a3 colorPixelFormat:(unint64_t)a4 depthPixelFormat:(unint64_t)a5;
- (GSMultiLayerRenderer)initWithDevice:(id)a3 convertMXIOption:(id)a4 colorPixelFormat:(unint64_t)a5 depthPixelFormat:(unint64_t)a6 error:(id *)a7;
- (id).cxx_construct;
- (shared_ptr<apple3dgs::MultiLayerRenderer>)impl;
- (uint64_t)renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:;
- (uint64_t)startWarmupThread:multiLayerCallback:error:;
- (void)renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:;
- (void)setImpl:(shared_ptr<apple3dgs::MultiLayerRenderer>)a3;
- (void)startWarmupThread:multiLayerCallback:error:;
@end

@implementation GSMultiLayerRenderer

- (GSMultiLayerRenderer)initWithDevice:(id)a3 colorPixelFormat:(unint64_t)a4 depthPixelFormat:(unint64_t)a5
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = GSMultiLayerRenderer;
  [(GSMultiLayerRenderer *)&v8 init];
  operator new();
}

- (GSMultiLayerRenderer)initWithDevice:(id)a3 convertMXIOption:(id)a4 colorPixelFormat:(unint64_t)a5 depthPixelFormat:(unint64_t)a6 error:(id *)a7
{
  v18 = a3;
  v12 = a4;
  v16 = a6;
  v17 = a5;
  v14.receiver = self;
  v14.super_class = GSMultiLayerRenderer;
  v15 = a7;
  [(GSMultiLayerRenderer *)&v14 init];
  [v12 impl];
  std::allocate_shared[abi:ne200100]<apple3dgs::MultiLayerRenderer,std::allocator<apple3dgs::MultiLayerRenderer>,objc_object  {objcproto9MTLDevice}* {__strong}&,apple3dgs::MultiLayerOptions &,MTLPixelFormat &,MTLPixelFormat,NSError * {__autoreleasing}*&,0>();
}

- (BOOL)renderMultiLayerWith:(id)a3 asset:(id)a4 convertMXIOption:(id)a5 multiLayerCallback:(id)a6 error:(id *)a7
{
  v44[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x24C1A2460]();
  ptr = self->_impl.__ptr_;
  if (v12)
  {
    [v12 impl];
    v17 = v38;
  }

  else
  {
    v17 = 0uLL;
  }

  v39 = v17;
  [v13 impl];
  v18 = *(v36 + 16);
  v42[0] = *v36;
  v42[1] = v18;
  v19 = *(v36 + 80);
  v21 = *(v36 + 32);
  v20 = *(v36 + 48);
  v42[4] = *(v36 + 64);
  v42[5] = v19;
  v42[2] = v21;
  v42[3] = v20;
  v22 = *(v36 + 144);
  v24 = *(v36 + 96);
  v23 = *(v36 + 112);
  v42[8] = *(v36 + 128);
  v42[9] = v22;
  v42[6] = v24;
  v42[7] = v23;
  v25 = *(v36 + 208);
  v27 = *(v36 + 160);
  v26 = *(v36 + 176);
  v42[12] = *(v36 + 192);
  v42[13] = v25;
  v42[10] = v27;
  v42[11] = v26;
  v28 = *(v36 + 224);
  v29 = *(v36 + 237);
  v30 = *(v36 + 232);
  v43 = v28;
  v44[0] = v30;
  *(v44 + 5) = v29;
  v31 = MEMORY[0x24C1A2460](v15);
  v40[0] = &unk_28593CD58;
  v40[1] = v31;
  v41 = v40;
  v32 = apple3dgs::MultiLayerRenderer::Render(ptr, v11, &v39, v42);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
  }

  else if (v41)
  {
    (*(*v41 + 40))();
  }

  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v37);
  }

  v33 = *(&v39 + 1);
  if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)startWarmupThread:(id)a3 multiLayerCallback:(id)a4 error:(id *)a5
{
  v11[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  MEMORY[0x24C1A2460]();
  ptr = self->_impl.__ptr_;
  v11[0] = &unk_28593CDE8;
  v11[1] = MEMORY[0x24C1A2460]();
  v11[3] = v11;
  apple3dgs::MultiLayerRenderer::StartWarmUpThread(ptr, v7, v11, 200);
}

- (shared_ptr<apple3dgs::MultiLayerRenderer>)impl
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

- (void)setImpl:(shared_ptr<apple3dgs::MultiLayerRenderer>)a3
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

- (void)renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v17 = a7[1];
  v18 = *a7;
  v15 = a7[3];
  v16 = a7[2];
  v19 = *a2;
  v12 = v10;
  v13 = v11;
  v14 = *(a1 + 8);
  if (v14)
  {
    (*(v14 + 16))(v14, v19, v8, v9, v12, v13, v18, v17, v16, v15);
  }
}

- (uint64_t)renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:
{
  v2 = *(a2 + 8);
  if (v2 == "Z93[GSMultiLayerRenderer renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z93[GSMultiLayerRenderer renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z93[GSMultiLayerRenderer renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z93[GSMultiLayerRenderer renderMultiLayerWith:asset:convertMXIOption:multiLayerCallback:error:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

- (void)startWarmupThread:multiLayerCallback:error:
{
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v17 = a7[1];
  v18 = *a7;
  v15 = a7[3];
  v16 = a7[2];
  v19 = *a2;
  v12 = v10;
  v13 = v11;
  v14 = *(a1 + 8);
  if (v14)
  {
    (*(v14 + 16))(v14, v19, v8, v9, v12, v13, v18, v17, v16, v15);
  }
}

- (uint64_t)startWarmupThread:multiLayerCallback:error:
{
  v2 = *(a2 + 8);
  if (v2 == "Z67[GSMultiLayerRenderer startWarmupThread:multiLayerCallback:error:]E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "Z67[GSMultiLayerRenderer startWarmupThread:multiLayerCallback:error:]E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z67[GSMultiLayerRenderer startWarmupThread:multiLayerCallback:error:]E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z67[GSMultiLayerRenderer startWarmupThread:multiLayerCallback:error:]E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

@end