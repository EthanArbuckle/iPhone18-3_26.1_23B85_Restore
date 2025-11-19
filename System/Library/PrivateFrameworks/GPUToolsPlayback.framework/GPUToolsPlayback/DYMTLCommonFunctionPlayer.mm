@interface DYMTLCommonFunctionPlayer
- (BOOL)isFrameBoundary;
- (BOOL)shouldExecuteGraphicsFunction;
- (DYLayerManager)layerManager;
- (DYLayerManager)strongLayerManager;
- (id).cxx_construct;
- (id)layerForID:(unint64_t)a3;
- (void)executePlatformFunction;
@end

@implementation DYMTLCommonFunctionPlayer

- (DYLayerManager)strongLayerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (id)layerForID:(unint64_t)a3
{
  v5 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
  v6 = [v5 layerForID:a3];

  if (!v6)
  {
    v7 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
    v6 = [v7 createLayerWithID:a3 contentRect:0 contentsScale:0 properties:0.0 isCoreAnimationSurface:{0.0, 1.0, 1.0, 1.0}];
  }

  v8 = v6;

  return v8;
}

- (BOOL)shouldExecuteGraphicsFunction
{
  if ([(DYMTLCommonFunctionPlayer *)self _isPresentFunction])
  {
    v3 = [(DYMTLFunctionPlayer *)self objectForKey:*(*(&self->super.super.super.isa + *MEMORY[0x277D0AFA0]))[9]];
    v4 = [v3 layer];

    if (v4)
    {
      v5 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
      v6 = [v3 layer];
      [v5 prepareLayerForPresent:v6];

      v7 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
      [v7 applyLayersVisibility];
    }
  }

  return 1;
}

- (void)executePlatformFunction
{
  v83[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.super.isa + v3);
  v6 = v4 + 48;
  v5 = *v4;
  if (*v4 > -6657)
  {
    if (v5 > -6655)
    {
      if (v5 == -6654)
      {
LABEL_19:
        v14 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        if ((*(&self->super.super.super.isa + v3))[5] < 3u)
        {
          v17 = 0;
        }

        else
        {
          [(DYFunctionPlayer *)self processArguments];
          __p = 0;
          v80 = 0;
          v81 = 0;
          *v73 = 0u;
          *v74 = 0u;
          v75 = 0u;
          *v76 = 0u;
          *v77 = 0u;
          v78 = 0u;
          GPUTools::MTL::Utils::MakeDYMTLDeviceDescriptor(**(&self->super.super._executePlatformSEL + *MEMORY[0x277D0AF68]), &v72, v15);
          if (SHIBYTE(v74[0]) >= 0)
          {
            v16 = v73;
          }

          else
          {
            v16 = v73[0];
          }

          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
          GPUTools::MTL::DispatchSetCaptureVersion(v72);
          if (__p)
          {
            v80 = __p;
            operator delete(__p);
          }

          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77[1]);
          }

          if (SHIBYTE(v77[0]) < 0)
          {
            operator delete(v76[0]);
          }

          if (SHIBYTE(v75) < 0)
          {
            operator delete(v74[1]);
          }

          if (SHIBYTE(v74[0]) < 0)
          {
            operator delete(v73[0]);
          }
        }

        v66 = [(DYMTLFunctionPlayer *)self deviceForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 72 withDeviceName:0), v17];
        [v14 setDevice:v66];

        goto LABEL_65;
      }

      if (v5 == -6653)
      {
        v68 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v11 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_f64[0];
        v12 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_f64[0];
        v13 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [v13 updateLayer:v68 contentRect:0 contentsScale:0.0 properties:0.0 windowRect:{v11, v12, 1.0, 0, 0, 0x4059000000000000, 0x4059000000000000}];

        [v68 setDrawableSize:{v11, v12}];
        [v68 setFramebufferOnly:0];
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 == -6656)
      {
LABEL_18:
        v68 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        [v68 setPixelFormat:GPUTools::FD::Argument::ViewAsScalarArray<MTLPixelFormat>(v4 + 72, 0)];
        goto LABEL_59;
      }

      if (v5 == -6655)
      {
LABEL_8:
        v7 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v71 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.isa + v3) + 24, 0);
        v8 = objc_autoreleasePoolPush();
        do
        {
          v9 = [v7 nextDrawable];
        }

        while (!v9);
        v72 = &v71;
        v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v71);
        objc_storeStrong(v10 + 3, v9);
        v72 = &v71;
        *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v71) + 24) = 1;
        [(DYMTLFunctionPlayer *)self setObject:v9 forKey:v71];

        objc_autoreleasePoolPop(v8);
        goto LABEL_65;
      }
    }

LABEL_62:
    v70.receiver = self;
    v70.super_class = DYMTLCommonFunctionPlayer;
    [(DYMTLFunctionPlayer *)&v70 executePlatformFunction];
LABEL_65:
    v67 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v5 > -7169)
  {
    switch(v5)
    {
      case -7168:
        v68 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        [v68 setPresentsWithTransaction:{GPUTools::FD::Argument::ViewAsScalarArray<unsigned int>(*(&self->super.super.super.isa + v3) + 72, 0) != 0}];
        goto LABEL_59;
      case -7167:
        v71 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v72 = &v71;
        v54 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v71)[3];
        v55 = [v54 texture];
        DYMTLAddDrawableTextureDescriptor(v55);
        [(DYMTLFunctionPlayer *)self setObject:v55 forKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.isa + v3) + 24, 0)];

        goto LABEL_65;
      case -7166:
        goto LABEL_8;
      case -7165:
        goto LABEL_18;
      case -7164:
        v68 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v25.n64_u64[0] = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_u64[0];
        v26.n64_u64[0] = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_u64[0];
        v27 = *(MEMORY[0x277CBF3A8] + 8);
        if (*MEMORY[0x277CBF3A8] == v25.n64_f64[0] && v27 == v26.n64_f64[0])
        {
          [v68 bounds];
          v30 = v29;
          [v68 contentsScale];
          v32 = v31;
          [v68 bounds];
          v34 = v33;
          [v68 contentsScale];
          v25.n64_f64[0] = v30 * v32;
          v26.n64_f64[0] = v34 * v35;
        }

        [v68 setDrawableSize:{v25.n64_f64[0], v26.n64_f64[0], v27}];
        goto LABEL_59;
      case -7163:
        goto LABEL_19;
      case -7162:
        v68 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v56 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_f64[0];
        v57 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_f64[0];
        v58 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 2uLL).n64_f64[0];
        v59 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 3uLL).n64_f64[0];
        v60 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 96, 0).n64_f64[0];
        v61 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [v61 updateLayer:v68 contentRect:0 contentsScale:v56 properties:{v57, v58, v59, v60}];

        goto LABEL_59;
      case -7161:
        v71 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__erase_unique<unsigned long long>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v71);
        [(DYMTLFunctionPlayer *)self removeObjectForKey:v71];
        v72 = &v71;
        *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v71) + 24) = 0;
        goto LABEL_65;
      case -7160:
        v68 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        [v68 setFramebufferOnly:{GPUTools::FD::Argument::ViewAsScalarArray<BOOL>(v4 + 72, 0)}];
        goto LABEL_59;
      case -7159:
        v39 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_u64[0];
        v40 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_f64[0];
        v41 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 2uLL).n64_f64[0];
        v42 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 3uLL).n64_f64[0];
        v43 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 96, 0).n64_f64[0];
        v44 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 0).n64_u64[0];
        v45 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 1uLL).n64_u64[0];
        v46 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 2uLL).n64_u64[0];
        v47 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 3uLL).n64_u64[0];
        v48 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 144, 0);
        v49 = GPUTools::FD::Argument::ViewAsScalarArray<long long>(v4 + 168, 0);
        v82[0] = @"styleMask";
        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
        v82[1] = @"windowLevel";
        v83[0] = v50;
        v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
        v83[1] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];

        v53 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [v53 updateLayer:v39 contentRect:v52 contentsScale:*&v69 properties:v40 windowRect:{v41, v42, v43, v44, v45, v46, v47}];

        goto LABEL_65;
      case -7158:
        v71 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v72 = &v71;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v71)[3];
        if (v18)
        {
          v62 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          v63 = [v18 layer];
          [v62 prepareLayerForPresent:v63];

          v64 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          [v64 applyLayersVisibility];

          [v18 present];
        }

        break;
      case -7157:
        v71 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v72 = &v71;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v71)[3];
        if (v18)
        {
          v19 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          v20 = [v18 layer];
          [v19 prepareLayerForPresent:v20];

          v21 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          [v21 applyLayersVisibility];

          [v18 presentAtTime:{GPUTools::FD::Argument::ViewAsScalarArray<double>(*(&self->super.super.super.isa + v3) + 72, 0).n64_f64[0]}];
        }

        break;
      case -7156:
        v71 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v72 = &v71;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v71)[3];
        if (v18)
        {
          v36 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          v37 = [v18 layer];
          [v36 prepareLayerForPresent:v37];

          v38 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          [v38 applyLayersVisibility];

          [v18 presentAfterMinimumDuration:{GPUTools::FD::Argument::ViewAsScalarArray<double>(*(&self->super.super.super.isa + v3) + 72, 0).n64_f64[0]}];
        }

        break;
      case -7155:
        v68 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [v68 setInterfaceOrientation:{GPUTools::FD::Argument::ViewAsScalarArray<int>(v4 + 72, 0)}];
        goto LABEL_59;
      default:
        goto LABEL_62;
    }

    v72 = &v71;
    *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v71) + 24) = 0;

    goto LABEL_65;
  }

  if (v5 == -8183)
  {
    v22 = COERCE_GPUTOOLS_MTL_(1.0);
    v23 = 1.0;
    if (*(v4 + 10) >= 4u)
    {
      v22 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 96, 0).n64_u64[0];
      v23 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 0).n64_u64[0];
    }

    v72 = v22;
    v73[0] = v23;
    v24 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
    [v24 setTransform:v4 + 72 forLayerID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6 withScreenToLayerScale:{0), &v72}];

    goto LABEL_65;
  }

  if (v5 == -8182)
  {
    v68 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
    [v68 setPosition:v4 + 72 forLayerID:{GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)}];
    goto LABEL_59;
  }

  if (v5 != -8181)
  {
    goto LABEL_62;
  }

  v68 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
  [v68 setAnchorPoint:v4 + 72 forLayerID:{GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)}];
LABEL_59:
  v65 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFrameBoundary
{
  v3.receiver = self;
  v3.super_class = DYMTLCommonFunctionPlayer;
  return [(DYMTLFunctionPlayer *)&v3 isFrameBoundary];
}

- (DYLayerManager)layerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1592) = 0u;
  *(self + 1608) = 0u;
  *(self + 406) = 1065353216;
  *(self + 102) = 0u;
  *(self + 103) = 0u;
  *(self + 416) = 1065353216;
  return self;
}

@end