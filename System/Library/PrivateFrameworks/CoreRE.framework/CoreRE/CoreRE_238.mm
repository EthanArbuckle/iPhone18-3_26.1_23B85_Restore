BOOL DecodeCGPath(uint64_t a1, uint64_t *a2)
{
  cf = 0;
  result = CGPerspectiveDataDecode_CFData(a1, &cf);
  if (result)
  {
    if (cf)
    {
      *a2 = CGPathCreateWithData();
      CFRelease(cf);
    }

    if (*a2)
    {
      return 1;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v4 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_9:
        *v5 = 0;
        return 0;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v4 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t DecodeOptionalCGColor(uint64_t a1, CGColorRef *a2)
{
  v4 = *(a1 + 16);
  v6 = 0;
  if (!CGPerspectiveDataDecode_bytes(v4, &v6, 1uLL))
  {
    return 0;
  }

  if (v6)
  {
    if ((CGPerspectiveColorCacheDecodeCGColor(a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    CGColorRelease(*a2);
    *a2 = 0;
  }

  return 1;
}

BOOL DecodeCGShadowStyle(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v7 = 0;
  if (!CGPerspectiveDataDecode_bytes(v4, &v7, 1uLL))
  {
    return 0;
  }

  if (v7)
  {
    v5 = malloc_type_calloc(0x38uLL, 1uLL, 0xF00D190BuLL);
    result = CGPerspectiveDataDecode_bytes(*(a1 + 16), v5, 0x38uLL);
    if (!result)
    {
      return result;
    }

    *a2 = v5;
  }

  return 1;
}

BOOL DecodeCGFocusStyle(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v7 = 0;
  if (!CGPerspectiveDataDecode_bytes(v4, &v7, 1uLL))
  {
    return 0;
  }

  if (v7)
  {
    v5 = malloc_type_calloc(0x50uLL, 1uLL, 0x2CBA46FDuLL);
    result = CGPerspectiveDataDecode_bytes(*(a1 + 16), v5, 0x50uLL);
    if (!result)
    {
      return result;
    }

    *a2 = v5;
  }

  return 1;
}

BOOL DecodeCGPerspectiveCommandLineDash(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    v11 = *(a3 + 264);
    *(a2 + 256) = 0;
    *(a2 + 264) = v11;
    if (v11 < 1)
    {
      return 1;
    }

    if (v11 >> 61)
    {
      if (__CGPerspectiveOSLog_onceToken == -1)
      {
        v8 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
        v8 = __CGPerspectiveOSLog_log;
        result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v19 = 0;
      v9 = "Integer overflow with line dash count";
      v10 = &v19;
      goto LABEL_35;
    }

    v13 = 8 * v11;
    v14 = malloc_type_malloc(8 * v11, 0x3E0F6454uLL);
    *(a2 + 256) = v14;
    if (v14)
    {
      memcpy(v14, *(a3 + 256), v13);
      return 1;
    }

    if (__CGPerspectiveOSLog_onceToken == -1)
    {
      v8 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
      v8 = __CGPerspectiveOSLog_log;
      result = os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v18 = 0;
    v9 = "Failed to malloc command's lineDashValues";
    v10 = &v18;
    goto LABEL_35;
  }

  result = CGPerspectiveDataDecode_bytes(*(a1 + 16), (a2 + 264), 8uLL);
  if (result)
  {
    *(a2 + 256) = 0;
    v7 = *(a2 + 264);
    if (v7 >= 1)
    {
      if (v7 >> 61)
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v8 = __CGPerspectiveOSLog_log;
          if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
LABEL_7:
            v22 = 0;
            v9 = "Integer overflow with line dash count";
            v10 = &v22;
LABEL_35:
            _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
            return 0;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v8 = __CGPerspectiveOSLog_log;
          if (os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }
        }

        return 0;
      }

      v15 = 8 * v7;
      v16 = *(a1 + 16);
      if (8 * v7 > (CFDataGetLength(*v16) - *(v16 + 8)))
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v8 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v8 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        v21 = 0;
        v9 = "Out of bounds read for command's lineDashCount";
        v10 = &v21;
        goto LABEL_35;
      }

      v17 = malloc_type_malloc(v15, 0x44A84A9EuLL);
      *(a2 + 256) = v17;
      if (!v17)
      {
        if (__CGPerspectiveOSLog_onceToken == -1)
        {
          v8 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        else
        {
          dispatch_once(&__CGPerspectiveOSLog_onceToken, &__block_literal_global_60);
          v8 = __CGPerspectiveOSLog_log;
          if (!os_log_type_enabled(__CGPerspectiveOSLog_log, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        v20 = 0;
        v9 = "Failed to malloc command's lineDashCount";
        v10 = &v20;
        goto LABEL_35;
      }

      if (!CGPerspectiveDataDecode_bytes(*(a1 + 16), v17, v15))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void *__CGVersionLoad_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 1);
  if (result)
  {
    v1 = result;
    _MergedGlobals_574 = dlsym(result, "CGGStateSetInfoDictionary");
    qword_1EE1C46D8 = dlsym(v1, "CGGStateGetInfoDictionary");
    __CGContextClipToMaskWithTransformFunc = dlsym(v1, "CGContextClipToMaskWithTransform");
    __CGGStateClipToPathFunc = dlsym(v1, "CGGStateClipToPath");
    __CGFontGetGlyphPositionsFunc = dlsym(v1, "CGFontGetGlyphPositions");
    result = dlsym(v1, "CGGStateGetStrokeParameters");
    __CGGStateGetStrokeParametersFunc = result;
  }

  return result;
}

uint64_t __CGGStateGetStrokeParameters(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5, _DWORD *a6, _DWORD *a7)
{
  if (CGVersionLoad_onceToken != -1)
  {
    v9 = a2;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    dispatch_once(&CGVersionLoad_onceToken, &__block_literal_global_64);
    a2 = v9;
    a3 = v14;
    a4 = v13;
    a5 = v12;
    a6 = v11;
    a7 = v10;
    v7 = __CGGStateGetStrokeParametersFunc;
    if (__CGGStateGetStrokeParametersFunc)
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = a7;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = a3;
    v20 = a2;
    CGGStateGetLineWidth();
    *v20 = v21;
    CGGStateGetLineWidthThreshold();
    *v19 = v22;
    CGGStateGetMiterLimit();
    *v18 = v23;
    *v17 = CGGStateGetLineDash();
    *v16 = CGGStateGetLineCap();
    result = CGGStateGetLineJoin();
    *v15 = result;
    return result;
  }

  v7 = __CGGStateGetStrokeParametersFunc;
  if (!__CGGStateGetStrokeParametersFunc)
  {
    goto LABEL_7;
  }

LABEL_3:

  return v7();
}

BOOL re::query::EntityInBoundingBoxPredicate::evaluate(float32x4_t *a1, float32x4_t **this, uint64_t a3)
{
  v6 = re::TransformService::transformServiceFromEntity(this, this);
  if (v6 || *a3 && (v8 = *(*a3 + 8)) != 0 && (v9 = *(v8 + 56)) != 0 && (v10 = (*(*v9 + 32))(v9), (v6 = re::ServiceLocator::serviceOrNull<re::TransformService>(v10)) != 0))
  {
    re::TransformService::worldTransform(v6, this, 0, v15);
    v7 = v15[2];
  }

  else
  {
    v11 = this[32];
    if (v11)
    {
      v7 = v11[4];
    }

    else
    {
      v7 = 0uLL;
    }
  }

  v12 = vcgtq_f32(a1[3], v7);
  v12.i32[3] = v12.i32[2];
  if ((vmaxvq_u32(v12) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = vcgtq_f32(v7, a1[4]);
  v13.i32[3] = v13.i32[2];
  return (vmaxvq_u32(v13) & 0x80000000) == 0;
}

BOOL re::query::EntityHasComponentPredicate::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v12[0] = v12;
  v12[1] = v12;
  v12[2] = 0;
  if (*(v3 + 24) != v3 + 16)
  {
    std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::push_back();
  }

  v4 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v5 = (*(a1 + 48) + 16);
    v6 = *(a2 + 104);
    v7 = vld1q_dup_s16(v5);
    v8 = 1;
    while (1)
    {
      v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
      v9.i16[0] = vmaxvq_u16(v9);
      if (v9.i32[0])
      {
        break;
      }

      v8 -= 8;
      ++v6;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    v10 = v9.u16[0] - v8 < *(a2 + 96);
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(v12);
  return v10;
}

void re::query::EntityHasComponentPredicate::preEvaluateOptimize(uint64_t a1, void *a2)
{
  v2 = *(*a2 + 8);
  v3 = *(*(a1 + 48) + 16);
  if (*(v2 + 224) <= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(v2 + 240) + 8 * v3);
    if (v4)
    {
      v4 = *(v4 + 384);
    }
  }

  a2[4] = v4;
  v6[0] = v6;
  v6[1] = v6;
  v6[2] = 0;
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v5, (a1 + 8));
  operator new();
}

void re::query::EntityHasComponentPredicate::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + 8);
  v5 = *(*(a1 + 48) + 16);
  if (*(v4 + 224) > v5)
  {
    v6 = *(*(v4 + 240) + 8 * v5);
    if (v6)
    {
      v7 = *(v6 + 384);
      if (v7)
      {
        v11 = *(v6 + 400);
        v12 = 8 * v7;
        do
        {
          v13 = *(*v11 + 16);
          if ((*(v13 + 305) & 4) == 0)
          {
            if ((*(*a3 + 16))(a3, *(*v11 + 16), a2))
            {
              std::function<void ()(re::ecs2::Entity *)>::operator()(a4, v13);
            }
          }

          v11 += 8;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }
}

void std::function<void ()(re::ecs2::Entity *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v4);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    re::query::EntityInBoundingBoxPredicate::~EntityInBoundingBoxPredicate(v3);
  }
}

void re::query::EntityInBoundingBoxPredicate::~EntityInBoundingBoxPredicate(re::query::EntityInBoundingBoxPredicate *this)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::query::EntityHasComponentPredicate::~EntityHasComponentPredicate(re::query::EntityHasComponentPredicate *this)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(void *a1)
{
  *a1 = &unk_1F5D1ACB8;
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 3);
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 3);
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    a1[1] = v4;
    if (v4)
    {
      return a1;
    }
  }

  else
  {
    a1[1] = 0;
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
  return std::__throw_bad_weak_ptr[abi:nn200100]();
}

void std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign(uint64_t *a1, uint64_t *a2)
{
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void std::__shared_ptr_pointer<re::VideoHistogram *,std::shared_ptr<re::VideoHistogram>::__shared_ptr_default_delete<re::VideoHistogram,re::VideoHistogram>,std::allocator<re::VideoHistogram>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<re::VideoHistogram *,std::shared_ptr<re::VideoHistogram>::__shared_ptr_default_delete<re::VideoHistogram,re::VideoHistogram>,std::allocator<re::VideoHistogram>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    *(result + 2680) = 0;
    ++*(result + 2688);
    *(result + 2152) = 0;
    ++*(result + 2160);
    *(result + 1624) = 0;
    ++*(result + 1632);
    *(result + 1088) = 0;
    ++*(result + 1096);
    ++*(result + 568);
    ++*(result + 40);
    *(result + 560) = 0;
    *(result + 32) = 0;
    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<re::VideoHistogram *,std::shared_ptr<re::VideoHistogram>::__shared_ptr_default_delete<re::VideoHistogram,re::VideoHistogram>,std::allocator<re::VideoHistogram>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 re::_IOSurfaceGetBulkAttachments(uint64_t a1, uint64_t a2)
{
  if (IOSurfaceGetBulkAttachments())
  {
    IOSurfaceGetBulkAttachments();
  }

  else
  {
    *(a2 + 128) = 0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    result = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t re::_IOSurfaceSetBulkAttachments2()
{
  result = IOSurfaceSetBulkAttachments2();
  if (result)
  {

    return IOSurfaceSetBulkAttachments2();
  }

  return result;
}

uint64_t re::VideoSurfaceBase::colorTags(re::VideoSurfaceBase *this)
{
  v1 = *this;
  if (!v1)
  {
    goto LABEL_4;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::_IOSurfaceGetBulkAttachments(v1, v10);
  if (v2)
  {
    v3 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      v4 = 2;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to read input surface properties.", v9, 2u);
      goto LABEL_5;
    }

LABEL_4:
    v4 = 2;
LABEL_5:
    v5 = 2;
    v6 = 2;
    return (v4 << 16) | (v5 << 8) | v6;
  }

  v6 = BYTE11(v11);
  v5 = BYTE12(v11);
  v4 = BYTE10(v11);
  if ((BYTE11(v11) & 0xFD) == 0)
  {
    v8 = *re::videoLogObjects(v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid input surface properties. Fallback to Rec 709", v9, 2u);
    }

    v6 = 1;
  }

  return (v4 << 16) | (v5 << 8) | v6;
}

float re::VideoSurfaceBase::edrFactor(__IOSurface **this)
{
  v1 = *this;
  if (!v1)
  {
    return 1.0;
  }

  valuePtr = 1.0;
  v2 = IOSurfaceCopyValue(v1, *MEMORY[0x1E696CF00]);
  if (!v2)
  {
    return 1.0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(v3, kCFNumberFloatType, &valuePtr);
  }

  CFRelease(v3);
  return valuePtr;
}

void re::VideoSurfaceBase::setEdrFactor(IOSurfaceRef *this, float a2)
{
  valuePtr = a2;
  if (*this)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      IOSurfaceSetValue(*this, *MEMORY[0x1E696CF00], v3);
      CFRelease(v4);
    }
  }
}

uint64_t re::videoStatisticsComputeAverageColor(re *this, const re::VideoHistogram *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (re::VideoDefaults::logEnabled(v3))
  {
    v40 = re::VideoDefaults::videoStatisticsEnableScaling([v3 appendString:@"This is the default Settings for Statistics:"]);
    v41 = "No";
    if (v40)
    {
      v41 = "YES";
    }

    [v3 appendFormat:@"\n    HDR Scaling Algo   : %s", v41];
  }

  v4 = re::VideoHistogram::data(this);
  v6 = v4;
  v7 = *v4;
  if (!*v4)
  {
    v27 = 0uLL;
    goto LABEL_18;
  }

  v8 = *(v4 + 8);
  v9 = *(v4 + 536);
  v10 = *(v4 + 1064);
  v11 = v7 - 1;
  if (v10 < v7 - 1)
  {
    v11 = *(v4 + 1064);
  }

  if (v11 >= v9)
  {
    v12 = *(v4 + 536);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= v8)
  {
    v13 = *(v4 + 8);
  }

  else
  {
    v13 = v12;
  }

  if (v8 <= v12)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, *(v4 + 8), v8);
    _os_crash();
    __break(1u);
    goto LABEL_44;
  }

  if (v9 == v13)
  {
LABEL_44:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v9, v9);
    _os_crash();
    __break(1u);
    goto LABEL_45;
  }

  if (v10 == v13)
  {
LABEL_45:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v10, v10);
    _os_crash();
    __break(1u);
LABEL_46:
    [v3 appendString:@"\nUpdating to RGB Color for YCBCR HDR Content:"];
    [v3 appendFormat:@"\n    Average Color Before Conversion: [%f, %f, %f]", v46.f32[0], v46.f32[1], v46.f32[2]];
    if (*(this + 12))
    {
      v45 = "Yes";
    }

    else
    {
      v45 = "No";
    }

    v28 = [v3 appendFormat:@"\n    Is Full Range                  : %s", v45];
    goto LABEL_20;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0.0;
  v19 = v4;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v22 = ((256.0 / v7) / 255.0) * v17;
    v23 = v19[5];
    v24 = v19[137];
    v18 = v18 + (v22 * v23);
    v20 = v20 + (v22 * v24);
    v25 = v19[269];
    v21 = v21 + (v22 * v25);
    v14 += v23;
    v15 += v24;
    v16 += v25;
    ++v17;
    ++v19;
  }

  while (v7 != v17);
  v26 = v20 / v15;
  v27.i32[3] = 0;
  v27.f32[0] = v18 / v14;
  v27.f32[1] = v26;
  v27.f32[2] = v21 / v16;
LABEL_18:
  if (*(this + 2) == 2)
  {
    goto LABEL_36;
  }

  v46 = v27;
  v28 = re::VideoDefaults::logEnabled(v4);
  if (v28)
  {
    goto LABEL_46;
  }

LABEL_20:
  v29 = *(this + 2);
  if (*(this + 12) == 1)
  {
    __asm { FMOV            V0.4S, #1.0 }

    switch(v29)
    {
      case 9:
        v35 = xmmword_1E310A660;
        v36 = xmmword_1E310A670;
        v37 = xmmword_1E310A680;
        break;
      case 6:
        v35 = xmmword_1E310A630;
        v36 = xmmword_1E310A640;
        v37 = xmmword_1E310A650;
        break;
      case 1:
        v35 = xmmword_1E310A690;
        v36 = xmmword_1E310A6A0;
        v37 = xmmword_1E310A6B0;
        break;
      default:
LABEL_29:
        _Q0 = xmmword_1E3047670;
        v36 = xmmword_1E3047680;
        v37 = xmmword_1E30476A0;
        v35 = 0uLL;
        break;
    }
  }

  else
  {
    _Q0 = vdupq_n_s32(0x3F95A000u);
    switch(v29)
    {
      case 9:
        v35 = xmmword_1E310A5D0;
        v36 = xmmword_1E310A5E0;
        v37 = xmmword_1E310A5F0;
        break;
      case 6:
        v35 = xmmword_1E310A5A0;
        v36 = xmmword_1E310A5B0;
        v37 = xmmword_1E310A5C0;
        break;
      case 1:
        v35 = xmmword_1E310A600;
        _Q0 = vdupq_n_s32(0x3F95A000u);
        v36 = xmmword_1E310A610;
        v37 = xmmword_1E310A620;
        break;
      default:
        goto LABEL_29;
    }
  }

  v47 = vaddq_f32(v35, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(_Q0, v46.f32[0]), v36, *v46.f32, 1), v37, v46, 2));
  v4 = re::VideoDefaults::videoStatisticsEnableScaling(v28);
  v27 = v47;
  if (v4)
  {
    v27 = vmulq_n_f32(v47, re::VideoDefaults::hdrToSDRColorAverage(v4));
  }

LABEL_36:
  v27.i32[3] = 0;
  v38 = vmaxnmq_f32(v27, 0);
  v38.i32[3] = 0;
  v48 = vminnmq_f32(v38, xmmword_1E304F3C0);
  if (re::VideoDefaults::logEnabled(v4))
  {
    [v3 appendString:@"\nComputing average RGB color from RGB histogram:"];
    [v3 appendFormat:@"\n        Bin Count          : %zu", *v6];
    [v3 appendFormat:@"\n    Average Color          : [%f, %f, %f]", v48.f32[0], v48.f32[1], v48.f32[2]];
    v42 = *re::videoLogObjects([v3 appendFormat:@"\n    Average Color RGB Value: [%f, %f, %f]", (((100.0 * v48.f32[0]) * 254.0) / 100.0), ((vmuls_lane_f32(100.0, *v48.f32, 1) * 254.0) / 100.0), ((vmuls_lane_f32(100.0, v48, 2) * 254.0) / 100.0)]);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v3;
      v44 = v42;
      *buf = 136315138;
      v50 = [v3 cStringUsingEncoding:1];
      _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  return v48.i64[0];
}

int *re::defaultVideoHDRDisplayInfo(re *this)
{
  {
    if (v2)
    {
      v3 = re::VideoHDRDefaults::displayDiagonalSize(v2);
      re::defaultVideoHDRDisplayInfo(void)::value = v3;
      v4 = re::VideoHDRDefaults::displayMaximumBrightnessInNits(v3);
      dword_1ECF1CF24 = v4;
      v5 = re::VideoHDRDefaults::displayAverageBrightnessInNits(v4);
      dword_1ECF1CF28 = v5;
      dword_1ECF1CF2C = re::VideoHDRDefaults::displayMinimumBrightnessInNits(v5);
      dword_1ECF1CF30 = re::VideoHDRDefaults::displayContrastRatio(v6);
      byte_1ECF1CF34 = re::VideoHDRDefaults::displayAdjustsBlackLevel(v7);
    }
  }

  return &re::defaultVideoHDRDisplayInfo(void)::value;
}

void re::VideoTextureAllocator::~VideoTextureAllocator(void **this)
{
  re::ObjCObject::operator=(this + 6, 0);
  re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(this);

  re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::deinit(this);
}

void re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_28, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v4 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v4;
  }
}

void re::VideoTextureAllocator::createTextureInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, NSObject *a9@<X8>, int8x8_t a10@<D0>, uint64_t a11)
{
  v105 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 48);
  if (*(a1 + 48))
  {
    LODWORD(v15) = a6;
    *&v99 = a2;
    *(&v99 + 1) = a3;
    *&v100 = __PAIR64__(a5, a4);
    DWORD2(v100) = a6;
    BYTE12(v100) = a7;
    BYTE13(v100) = a8;
    *&v101 = a11;
    BYTE8(v101) = *(a1 + 60);
    v97 = 0;
    v98 = 0;
    v21 = 3;
    if (BYTE8(v101))
    {
      v21 = 1;
    }

    v90 = v21;
    v22 = re::Hash<re::internal::VideoTextureConfiguration>::operator()(&v99, a10);
    re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::findEntry<re::internal::VideoTextureConfiguration>(v102, a1, &v99, v22);
    if (HIDWORD(v102[1]) != 0x7FFFFFFF)
    {
      v41 = *(a1 + 16) + 304 * HIDWORD(v102[1]);
      v43 = *(v41 + 88);
      v42 = v41 + 88;
      v44 = v42 + 16;
      v45 = (v42 + 16 + 24 * v43);
      v46 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,false>((v42 + 16), v45, v47, 1);
      if (*v42)
      {
        v49 = 24 * *v42;
        while (1)
        {
          v50 = [*v44 usedSize] + *(v42 - 24);
          v48 = [*v44 size];
          if (v50 <= v48)
          {
            break;
          }

          v44 += 24;
          v49 -= 24;
          if (!v49)
          {
            goto LABEL_39;
          }
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v98, v44);
        v48 = NS::SharedPtr<MTL::Buffer>::operator=(&v97, (v42 - 32));
        *(v44 + 8) = 0;
      }

LABEL_39:
      v34 = a9;
      if (!v98)
      {
        if (*v42 > 7uLL)
        {
          v88 = *re::videoLogObjects(v48);
          v48 = os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT);
          if (v48)
          {
            LOWORD(v102[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_DEFAULT, "Video texture allocator has reached the maximum number of allowed heaps for the given configuration.", v102, 2u);
          }
        }

        else
        {
          v102[0] = [*v12 newHeapWithDescriptor_];
          NS::SharedPtr<MTL::Texture>::operator=(&v98, v102);
          if (v102[0])
          {
          }

          NS::SharedPtr<MTL::Buffer>::operator=(&v97, (v42 - 32));
          v102[0] = 0;
          v102[1] = 0;
          v102[2] = 3;
          NS::SharedPtr<MTL::Buffer>::operator=(v102, &v98);
          v102[1] = 0;
          v102[2] = v90;
          v53 = re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::add(v42, v102);
          v54 = *re::videoLogObjects(v53);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *v42;
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v55;
            _os_log_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEFAULT, "Created new heap (%zu heaps total for configuration)", &buf, 0xCu);
          }

          v48 = v102[0];
          if (v102[0])
          {
          }
        }
      }

LABEL_54:
      v56 = re::VideoDefaults::logEnabled(v48);
      if (v56)
      {
        v63 = [MEMORY[0x1E696AD60] stringWithString:@"Video Texture Allocator:"];
        v64 = v63;
        v89 = *(a1 + 32);
        if (v89)
        {
          v65 = 0;
          v66 = *(a1 + 16);
          while ((*v66 & 0x80000000) == 0)
          {
            v66 += 76;
            if (v89 == ++v65)
            {
              LODWORD(v65) = *(a1 + 32);
              break;
            }
          }
        }

        else
        {
          LODWORD(v65) = 0;
        }

        if (v65 != v89)
        {
          v74 = 0;
          while (1)
          {
            v60 = *(a1 + 16);
            v91 = v74 + 1;
            v63 = [(re *)v64 appendFormat:@"\nConfig %d / %d", (v74 + 1), *(a1 + 28)];
            v75 = &v60[38 * v65];
            isa = v75[11].isa;
            v34 = v75 + 11;
            v76 = isa;
            if (isa)
            {
              break;
            }

LABEL_83:
            v83 = *(a1 + 32);
            if (v83 <= v65 + 1)
            {
              v83 = v65 + 1;
            }

            v34 = a9;
            while (v83 - 1 != v65)
            {
              LODWORD(v65) = v65 + 1;
              if ((*(*(a1 + 16) + 304 * v65) & 0x80000000) != 0)
              {
                goto LABEL_90;
              }
            }

            LODWORD(v65) = v83;
LABEL_90:
            v74 = v91;
            if (v65 == v89)
            {
              goto LABEL_91;
            }
          }

          v78 = 0;
          p_isa = &v34[2].isa;
          while (1)
          {
            v80 = [*p_isa usedSize];
            if (v34->isa <= v78)
            {
              break;
            }

            v60 = v80;
            v78 = (v78 + 1);
            v82 = *p_isa;
            p_isa += 3;
            v63 = -[re appendFormat:](v64, "appendFormat:", @"\n    Heap %zu / %zu: %zu bytes / %zu bytes", v78, v76, v80, [v82 size]);
            v76 = v34->isa;
            if (v78 >= v34->isa)
            {
              goto LABEL_83;
            }
          }

          re::internal::assertLog(6, v81, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v78, v34->isa);
          _os_crash();
          __break(1u);
          goto LABEL_97;
        }

LABEL_91:
        v84 = *re::videoLogObjects(v63);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = v64;
          v86 = v84;
          v87 = [(re *)v64 cStringUsingEncoding:1];
          LODWORD(v102[0]) = 136315138;
          *(v102 + 4) = v87;
          _os_log_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_DEFAULT, "%s", v102, 0xCu);
        }
      }

      if (v98 && v97)
      {
        v57 = re::VideoDefaults::logEnabled(v56);
        if (v57)
        {
          v67 = *re::videoLogObjects(v57);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = v98;
            v69 = v67;
            v70 = [v68 usedSize];
            v71 = [v98 size];
            v34 = a9;
            v72 = [v98 usedSize];
            v73 = [v98 size];
            LODWORD(v102[0]) = 134218752;
            *(v102 + 4) = v68;
            WORD2(v102[1]) = 2048;
            *(&v102[1] + 6) = v70;
            HIWORD(v102[2]) = 2048;
            v102[3] = v71;
            LOWORD(v102[4]) = 2048;
            *(&v102[4] + 2) = v72 / v73 * 100.0;
            _os_log_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_DEFAULT, "Creating new texture from heap %p: %zu / %zu (%.1f%%).", v102, 0x2Au);
          }
        }

        v58 = [v98 newTextureWithDescriptor_];
        if (v58)
        {
          v59 = v58;
          re::memoryAttributionMTLResource(v58, *(a1 + 56));
          re::VideoTextureAllocator::cleanup(a1, 0xAuLL);
LABEL_64:
          v34->isa = v59;
          if (v97)
          {
          }

          if (v98)
          {
          }

          return;
        }

LABEL_61:
        v61 = re::VideoTextureAllocator::cleanup(a1, 0xAuLL);
        v62 = *re::videoLogObjects(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v102[0]) = 0;
          _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Video texture allocator is unable to create video texture.", v102, 2u);
        }

        v59 = 0;
        goto LABEL_64;
      }

      v60 = *re::videoLogObjects(v56);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

LABEL_97:
      LOWORD(v102[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Heap entry not found.", v102, 2u);
      goto LABEL_61;
    }

    re::VideoTextureAllocator::cleanup(a1, 0);
    v23 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:a2 height:a3 mipmapped:a7];
    v24 = v23;
    if (v23)
    {
      v15 = v15;
      v96 = v15;
      [v23 setStorageMode:a5];
      if (re::mtl::Device::isPhysicalHardware(v12) && a8)
      {
        v15 = v15 | 0x4000;
        v96 = v15;
      }

      [v24 setUsage:v15];
      v102[0] = a5;
      *&buf = a4;
      v93 = 2;
      [v24 setCompressionType:{re::mtl::getTextureCompressionType(v12, v102, &buf, &v96, &v93)}];
      [v24 setProtectionOptions:a11];
      v102[0] = v24;
      v25 = v24;
      NS::SharedPtr<MTL::Texture>::operator=(&v97, v102);
      if (v102[0])
      {
      }

      v26 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
      if (v26)
      {
        v27 = v26;
        v28 = [*v12 heapTextureSizeAndAlignWithDescriptor_];
        v30 = v29;
        [v27 setSize_];
        [v27 setStorageMode_];
        [v27 setHazardTrackingMode_];
        [v27 setProtectionOptions_];
        v102[0] = [*v12 newHeapWithDescriptor_];
        NS::SharedPtr<MTL::Texture>::operator=(&v98, v102);
        v31 = v102[0];
        if (v102[0])
        {
        }

        v32 = v98;
        v33 = *re::videoLogObjects(v31);
        if (v32)
        {
          v34 = a9;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v102[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "Video texture allocator is adding a new configuration entry.", v102, 2u);
          }

          memset(v102, 0, 44);
          v102[3] = v27;
          NS::SharedPtr<MTL::Buffer>::operator=(v102, &v97);
          v102[1] = v28;
          v102[2] = v30;
          v93 = 0;
          v94 = 0;
          v95 = 3;
          NS::SharedPtr<MTL::Buffer>::operator=(&v93, &v98);
          v94 = 0;
          v95 = v90;
          re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::add(&v102[4], &v93);
          buf = 0uLL;
          v104 = 0;
          v36 = re::Hash<re::internal::VideoTextureConfiguration>::operator()(&v99, v35);
          re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::findEntry<re::internal::VideoTextureConfiguration>(&buf, a1, &v99, v36);
          if (HIDWORD(buf) == 0x7FFFFFFF)
          {
            v37 = re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::allocEntry(a1, DWORD2(buf), buf);
            *(v37 + 88) = 0;
            v37 += 88;
            v38 = v102[3];
            *(v37 - 32) = v102[0];
            v39 = v100;
            *(v37 - 80) = v99;
            *(v37 - 64) = v39;
            *(v37 - 48) = v101;
            *(v37 - 24) = *&v102[1];
            *(v37 - 8) = v38;
            v102[0] = 0;
            v102[3] = 0;
            *(v37 + 8) = 0;
            re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::move(v37, &v102[4]);
            ++*(a1 + 40);
          }

          if (v93)
          {
          }

          re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::clear(&v102[4]);
          if (v102[3])
          {

            v102[3] = 0;
          }

          if (v102[0])
          {
          }
        }

        else
        {
          v34 = a9;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v102[0]) = 0;
            _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Video texture allocator is unable to create a texture heap.", v102, 2u);
          }
        }

        goto LABEL_53;
      }

      v51 = *re::videoLogObjects(0);
      v34 = a9;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v102[0]) = 0;
        v52 = "Video texture allocator is unable to create a texture heap descriptor.";
        goto LABEL_49;
      }
    }

    else
    {
      v51 = *re::videoLogObjects(0);
      v34 = a9;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v102[0]) = 0;
        v52 = "Video texture allocator is unable to create a texture descriptor.";
LABEL_49:
        _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, v52, v102, 2u);
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  v40 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v102[0]) = 0;
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "Video texture allocator is not initialized.", v102, 2u);
  }

  a9->isa = 0;
}

id re::VideoTextureAllocator::createTexture(re::VideoTextureAllocator *this, uint64_t a2, uint64_t a3, MTLPixelFormat a4, MTLStorageMode a5, int a6, uint64_t a7, int a8, int8x8_t a9, unint64_t a10)
{
  re::VideoTextureAllocator::createTextureInternal(this, a2, a3, a4, a5, a6, a7, a8, &v12, a9, a10);
  v10 = v12;
  if (v12)
  {
  }

  return v10;
}

uint64_t re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::add(uint64_t result, uint64_t a2)
{
  if (*result >= 8uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = result + 24 * *result;
    *(v4 + 16) = *a2;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 8);
    ++*result;
    ++*(result + 8);
  }

  return result;
}

uint64_t *re::VideoTextureAllocator::cleanup(re::VideoTextureAllocator *this, unint64_t a2)
{
  v2 = this;
  v75 = *MEMORY[0x1E69E9840];
  v70 = 0;
  v71 = 0;
  v72 = 1;
  v73 = 0;
  v74 = 0;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 2);
    while ((*v5 & 0x80000000) == 0)
    {
      v5 += 76;
      if (v3 == ++v4)
      {
        LODWORD(v4) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 == v3)
  {
    goto LABEL_98;
  }

  v61 = 0;
  v59 = *(this + 8);
  v6 = &v64 + 1;
  v7 = &selRef_iosurface;
  v8 = 1;
  do
  {
    v9 = *(v2 + 2) + 304 * v4;
    v63 = 0uLL;
    LODWORD(v64) = 1;
    *v6 = 0;
    v6[1] = 0;
    v12 = *(v9 + 88);
    v11 = v9 + 88;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_53;
    }

    v60 = v8;
    v13 = 24 * v10;
    v14 = v11 + 16;
    v15 = v11 + 16;
    do
    {
      v16 = (v15 + 8);
      this = [*v15 v7[78]];
      if (this)
      {
        *v16 = 0;
        goto LABEL_32;
      }

      v18 = *v16 + 1;
      *v16 = v18;
      if (v18 >= a2)
      {
        goto LABEL_17;
      }

      v19 = 3;
      if (*(v2 + 60))
      {
        v19 = 1;
      }

      if (*(v15 + 16) != v19)
      {
LABEL_17:
        if (v63)
        {
          v20 = v64;
          if (v64)
          {
            v21 = *(&v63 + 1) + 1;
            if ((*(&v63 + 1) + 1) >= 5)
            {
              v22 = 8;
LABEL_25:
              if (v22 <= v21)
              {
                v23 = v21;
              }

              else
              {
                v23 = v22;
              }

              re::DynamicOverflowArray<re::VideoTextureAllocator::HeapEntry,4ul>::setCapacity(&v63, v23);
              v20 = v64;
            }
          }

          else if (*(&v63 + 1) >= *(&v64 + 1))
          {
            v21 = *(&v63 + 1) + 1;
            if (*(&v64 + 1) < (*(&v63 + 1) + 1))
            {
              v22 = 2 * *(&v64 + 1);
              goto LABEL_25;
            }
          }
        }

        else
        {
          re::DynamicOverflowArray<re::VideoTextureAllocator::HeapEntry,4ul>::setCapacity(&v63, *(&v63 + 1) + 1);
          v20 = v64 + 2;
          LODWORD(v64) = v64 + 2;
        }

        v24 = (v20 & 1) == 0;
        v25 = v65;
        if (!v24)
        {
          v25 = v6;
        }

        v26 = &v25[3 * *(&v63 + 1)];
        this = *v15;
        *v26 = this;
        *(v26 + 1) = *v16;
        ++*(&v63 + 1);
        LODWORD(v64) = v64 + 2;
        v7 = &selRef_iosurface;
      }

LABEL_32:
      v15 += 24;
      v13 -= 24;
    }

    while (v13);
    if (v64)
    {
      v27 = v6;
    }

    else
    {
      v27 = v65;
    }

    v28 = *v11;
    if (*(&v63 + 1))
    {
      v29 = &v27[3 * *(&v63 + 1)];
      do
      {
        v30 = (v11 + 16);
        if (v28)
        {
          v31 = 24 * v28;
          v30 = (v11 + 16);
          while (*v30 != *v27 || v30[1] != v27[1])
          {
            v30 += 3;
            v31 -= 24;
            if (!v31)
            {
              goto LABEL_51;
            }
          }
        }

        if (v30 != (v14 + 24 * v28))
        {
          v32 = v30 - v14;
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v14) >> 3);
          if (v28 <= v33)
          {
            re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 527, v33, v28);
            _os_crash();
            __break(1u);
          }

          if (v28 - 1 > v33)
          {
            v34 = v6;
            v35 = v14 + 24 * v28;
            v36 = &v32[v14];
            NS::SharedPtr<MTL::Texture>::operator=(&v32[v14], (v35 - 24));
            v37 = *(v35 - 16);
            v6 = v34;
            v7 = &selRef_iosurface;
            *(v36 + 8) = v37;
            v28 = *v11;
          }

          v38 = (v11 - 8 + 24 * v28);
          this = *v38;
          if (*v38)
          {

            *v38 = 0;
            v28 = *v11;
          }

          *v11 = --v28;
          ++*(v11 + 8);
        }

LABEL_51:
        v27 += 3;
      }

      while (v27 != v29);
    }

    LODWORD(v3) = v59;
    v8 = v60;
    if (!v28)
    {
LABEL_53:
      if (v70)
      {
        if (v8)
        {
          v39 = v61 + 1;
          if (v61 + 1 >= 5)
          {
            v40 = 8;
LABEL_61:
            if (v40 <= v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v40;
            }

            this = re::DynamicOverflowArray<re::internal::VideoTextureConfiguration,4ul>::setCapacity(&v70, v41);
            LOBYTE(v8) = v72;
          }
        }

        else if (v61 >= v73)
        {
          v39 = v61 + 1;
          if (v73 < v61 + 1)
          {
            v40 = 2 * v73;
            goto LABEL_61;
          }
        }
      }

      else
      {
        this = re::DynamicOverflowArray<re::internal::VideoTextureConfiguration,4ul>::setCapacity(&v70, v61 + 1);
        LOBYTE(v8) = v72 + 2;
        v72 += 2;
      }

      v42 = v74;
      if (v8)
      {
        v42 = &v73;
      }

      v43 = &v42[6 * v71];
      v44 = *(v11 - 80);
      v45 = *(v11 - 48);
      *(v43 + 1) = *(v11 - 64);
      *(v43 + 2) = v45;
      *v43 = v44;
      v61 = ++v71;
      v8 = v72 + 2;
      v72 += 2;
    }

    if (v63)
    {
      v46 = v64;
      if (*(&v63 + 1))
      {
        v47 = v8;
        if (v64)
        {
          v48 = v6;
        }

        else
        {
          v48 = v65;
        }

        v49 = 24 * *(&v63 + 1);
        do
        {
          this = *v48;
          if (*v48)
          {

            *v48 = 0;
          }

          v48 += 3;
          v49 -= 24;
        }

        while (v49);
        v46 = v64;
        v8 = v47;
      }

      if ((v46 & 1) == 0)
      {
        this = (*(*v63 + 40))(v63, v65);
      }
    }

    v50 = *(v2 + 8);
    if (v50 <= v4 + 1)
    {
      v50 = v4 + 1;
    }

    while (v50 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(v2 + 2) + 304 * v4) & 0x80000000) != 0)
      {
        goto LABEL_86;
      }
    }

    LODWORD(v4) = v50;
LABEL_86:
    ;
  }

  while (v4 != v3);
  if (v8)
  {
    v51 = &v73;
  }

  else
  {
    v51 = v74;
  }

  if (v61)
  {
    v52 = 48 * v61;
    do
    {
      v63 = *v51;
      v64 = *(v51 + 1);
      v65 = *(v51 + 2);
      v53 = re::Hash<re::internal::VideoTextureConfiguration>::operator()(&v63, *&v65);
      re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::findEntry<re::internal::VideoTextureConfiguration>(v66, v2, &v63, v53);
      v54 = v68;
      if (v68 != 0x7FFFFFFF)
      {
        v55 = *(v2 + 2);
        v56 = *(v55 + 304 * v68) & 0x7FFFFFFF;
        if (v69 == 0x7FFFFFFF)
        {
          *(*(v2 + 1) + 4 * v67) = v56;
        }

        else
        {
          *(v55 + 304 * v69) = *(v55 + 304 * v69) & 0x80000000 | v56;
        }

        re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::free(v2, v54);
        *(*(v2 + 2) + 304 * v54) = *(*(v2 + 2) + 304 * v54) & 0x80000000 | *(v2 + 9);
        --*(v2 + 7);
        v57 = *(v2 + 10) + 1;
        *(v2 + 9) = v54;
        *(v2 + 10) = v57;
      }

      v51 += 6;
      v52 -= 48;
    }

    while (v52);
  }

LABEL_98:
  result = v70;
  if (v70)
  {
    if ((v72 & 1) == 0)
    {
      return (*(*v70 + 40))();
    }
  }

  return result;
}

void re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 24 * *a1;
    v3 = (a1 + 16);
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

double re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 304 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::clear(v2 + 88);
    v3 = *(v2 + 80);
    if (v3)
    {

      *(v2 + 80) = 0;
    }

    v4 = *(v2 + 56);
    if (v4)
    {

      *(v2 + 56) = 0;
    }
  }
}

uint64_t re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::findEntry<re::internal::VideoTextureConfiguration>(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2)
  {
    v4 = a4 % *(a2 + 24);
    v6 = *(*(a2 + 8) + 4 * v4);
    if (v6 == 0x7FFFFFFF)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v8 = *(a2 + 16);
      v9 = *a3;
      v10 = a3[1];
      v11 = *(a3 + 4);
      v12 = *(a3 + 5);
      v13 = *(a3 + 6);
      v14 = *(a3 + 28);
      v15 = *(a3 + 29);
      v16 = a3[4];
      v5 = 0x7FFFFFFF;
      v7 = 0x7FFFFFFF;
      v17 = *(a3 + 40);
      while (1)
      {
        v18 = v6;
        v19 = v8 + 304 * v6;
        v21 = *(v19 + 8);
        v20 = v19 + 8;
        if (v21 == v9 && *(v20 + 8) == v10 && *(v20 + 16) == v11 && *(v20 + 20) == v12 && *(v20 + 24) == v13 && *(v20 + 28) == v14 && *(v20 + 29) == v15 && *(v20 + 32) == v16 && *(v20 + 40) == v17)
        {
          break;
        }

        v6 = *(v8 + 304 * v18) & 0x7FFFFFFF;
        v7 = v18;
        if (v6 == 0x7FFFFFFF)
        {
          v7 = v18;
          goto LABEL_17;
        }
      }

      v5 = v18;
    }
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_17:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::internal::VideoTextureConfiguration>::operator()(uint64_t a1, int8x8_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xBF58476D1CE4E5B9 * (*a1 ^ (*a1 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  LODWORD(v6) = 73244475 * (*(a1 + 16) ^ HIWORD(*(a1 + 16)));
  v8 = (73244475 * (v6 ^ WORD1(v6))) ^ ((73244475 * (v6 ^ WORD1(v6))) >> 16);
  LODWORD(v6) = 73244475 * (*(a1 + 20) ^ HIWORD(*(a1 + 20)));
  v9 = (73244475 * (v6 ^ WORD1(v6))) ^ ((73244475 * (v6 ^ WORD1(v6))) >> 16);
  LODWORD(v6) = 73244475 * (*(a1 + 24) ^ HIWORD(*(a1 + 24)));
  LODWORD(v3) = 73244475 * ((73244475 * *(a1 + 28)) ^ ((73244475 * *(a1 + 28)) >> 16));
  v10 = *(a1 + 32) ^ (*(a1 + 32) >> 30);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v10) ^ ((0xBF58476D1CE4E5B9 * v10) >> 27));
  a2.i8[0] = *(a1 + 40);
  a2.i8[4] = *(a1 + 29);
  v12 = vdup_n_s32(0x45D9F3Bu);
  v13 = vmul_s32(vand_s8(a2, 0xFF000000FFLL), v12);
  v14 = vmul_s32(veor_s8(vshr_n_u32(v13, 0x10uLL), v13), v12);
  v15.i64[0] = v11 ^ (v11 >> 31);
  v15.i64[1] = v3 ^ WORD1(v3);
  v16 = veorq_s8(vaddq_s64(vsraq_n_u64(vaddw_u32(vshlq_n_s64(v15, 6uLL), veor_s8(vshr_n_u32(v14, 0x10uLL), v14)), v15, 2uLL), vdupq_n_s64(0x9E3779B97F4A7C17)), v15);
  return re::hashCombine(v5, v7, v8, v9, (73244475 * (v6 ^ WORD1(v6))) ^ ((73244475 * (v6 ^ WORD1(v6))) >> 16), ((v16.i64[1] << 6) + (v16.i64[1] >> 2) + v16.i64[0] - 0x61C8864680B583E9) ^ v16.i64[1]);
}

void std::__introsort<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,false>(id *a1, id *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v7 = a1;
  v100 = a2 - 3;
  while (1)
  {
    v8 = v7;
    v9 = v6 - v7;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    a1 = v8;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      v6 = a2;
      if (v10 == 2)
      {
        v44 = [*(a2 - 3) usedSize];
        if (v44 <= [*v8 usedSize])
        {
          return;
        }

        v45 = v8;
        v46 = (a2 - 3);
        goto LABEL_67;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(v8, (v8 + 24), v100);
      return;
    }

    if (v10 == 4)
    {
      break;
    }

    if (v10 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(v8, (v8 + 24), (v8 + 48), (v8 + 72), v100);
      return;
    }

LABEL_9:
    if (v9 <= 575)
    {
      if (a4)
      {
        if (v8 != v6)
        {
          v52 = (v8 + 24);
          if ((v8 + 24) != a2)
          {
            v53 = 0;
            v54 = a1;
            do
            {
              v55 = v52;
              v56 = [v54[3] usedSize];
              if (v56 > [*v54 usedSize])
              {
                v107 = *v55;
                *v55 = 0;
                v108 = *(v54 + 2);
                v57 = v53;
                while (1)
                {
                  v58 = a1 + v57;
                  NS::SharedPtr<MTL::Texture>::operator=((a1 + v57 + 24), (a1 + v57));
                  *(a1 + v57 + 32) = *(a1 + v57 + 8);
                  if (!v57)
                  {
                    break;
                  }

                  v59 = [v107 usedSize];
                  v57 -= 24;
                  if (v59 <= [*(v58 - 3) usedSize])
                  {
                    v60 = (a1 + v57 + 24);
                    goto LABEL_83;
                  }
                }

                v60 = a1;
LABEL_83:
                NS::SharedPtr<MTL::Texture>::operator=(v60, &v107);
                *(v58 + 8) = v108;
                if (v107)
                {
                }
              }

              v52 = v55 + 3;
              v53 += 24;
              v54 = v55;
            }

            while (v55 + 3 != a2);
          }
        }
      }

      else if (v8 != v6)
      {
        v93 = (v8 + 24);
        if ((v8 + 24) != a2)
        {
          do
          {
            v94 = v93;
            v95 = a1;
            v96 = [a1[3] usedSize];
            if (v96 > [*a1 usedSize])
            {
              v107 = *v94;
              *v94 = 0;
              v108 = *(a1 + 2);
              do
              {
                NS::SharedPtr<MTL::Texture>::operator=(v95 + 3, v95);
                *(v95 + 2) = *(v95 + 1);
                v97 = [v107 usedSize];
                v98 = *(v95 - 3);
                v95 -= 3;
              }

              while (v97 > [v98 usedSize]);
              NS::SharedPtr<MTL::Texture>::operator=(v95 + 3, &v107);
              *(v95 + 2) = v108;
              if (v107)
              {
              }
            }

            v93 = v94 + 3;
            a1 = v94;
          }

          while (v94 + 3 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v8 != v6)
      {
        v61 = (v10 - 2) >> 1;
        v101 = v61;
        do
        {
          v62 = v61;
          if (v101 >= v61)
          {
            v63 = (2 * v61) | 1;
            v64 = &a1[3 * v63];
            if (2 * v61 + 2 < v10)
            {
              v65 = [*v64 usedSize];
              if (v65 > [v64[3] usedSize])
              {
                v64 += 3;
                v63 = 2 * v62 + 2;
              }
            }

            v66 = &a1[3 * v62];
            v67 = [*v64 usedSize];
            if (v67 <= [*v66 usedSize])
            {
              v99 = v62;
              v68 = *v66;
              v107 = *v66;
              *v66 = 0;
              v108 = *(v66 + 1);
              do
              {
                v69 = v64;
                NS::SharedPtr<MTL::Texture>::operator=(v66, v64);
                *(v66 + 1) = *(v64 + 1);
                if (v101 < v63)
                {
                  break;
                }

                v70 = (2 * v63) | 1;
                v64 = &a1[3 * v70];
                v71 = 2 * v63 + 2;
                if (v71 < v10)
                {
                  v72 = [*v64 usedSize];
                  if (v72 > [v64[3] usedSize])
                  {
                    v64 += 3;
                    v70 = v71;
                  }
                }

                v73 = [*v64 usedSize];
                v66 = v69;
                v63 = v70;
              }

              while (v73 <= [v68 usedSize]);
              NS::SharedPtr<MTL::Texture>::operator=(v69, &v107);
              *(v69 + 1) = v108;
              if (v107)
              {
              }

              v62 = v99;
            }
          }

          v61 = v62 - 1;
        }

        while (v62);
        v74 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        do
        {
          v75 = 0;
          v76 = a1;
          v102 = a2;
          v105 = *a1;
          *a1 = 0;
          v106 = *(a1 + 1);
          do
          {
            v77 = &v76[3 * v75];
            v78 = v77 + 3;
            v79 = (2 * v75) | 1;
            v80 = 2 * v75 + 2;
            if (v80 >= v74)
            {
              v75 = (2 * v75) | 1;
            }

            else
            {
              v81 = [v77[3] usedSize];
              v83 = v77[6];
              v82 = v77 + 6;
              if (v81 <= [v83 usedSize])
              {
                v75 = v79;
              }

              else
              {
                v78 = v82;
                v75 = v80;
              }
            }

            NS::SharedPtr<MTL::Texture>::operator=(v76, v78);
            *(v76 + 1) = *(v78 + 1);
            v76 = v78;
          }

          while (v75 <= ((v74 - 2) >> 1));
          v84 = a2 - 3;
          a2 -= 3;
          if (v78 == v102 - 3)
          {
            NS::SharedPtr<MTL::Texture>::operator=(v78, &v105);
            *(v78 + 1) = v106;
          }

          else
          {
            NS::SharedPtr<MTL::Texture>::operator=(v78, v102 - 3);
            *(v78 + 1) = *(v102 - 1);
            NS::SharedPtr<MTL::Texture>::operator=(v84, &v105);
            *(v102 - 1) = v106;
            v85 = v78 - a1 + 24;
            if (v85 >= 25)
            {
              v86 = (-2 - 0x5555555555555555 * (v85 >> 3)) >> 1;
              v87 = &a1[3 * v86];
              v88 = [*v87 usedSize];
              if (v88 > [*v78 usedSize])
              {
                v89 = *v78;
                v107 = *v78;
                *v78 = 0;
                v108 = *(v78 + 1);
                do
                {
                  v90 = v87;
                  NS::SharedPtr<MTL::Texture>::operator=(v78, v87);
                  *(v78 + 1) = *(v87 + 1);
                  if (!v86)
                  {
                    break;
                  }

                  v86 = (v86 - 1) >> 1;
                  v87 = &a1[3 * v86];
                  v91 = [*v87 usedSize];
                  v78 = v90;
                }

                while (v91 > [v89 usedSize]);
                NS::SharedPtr<MTL::Texture>::operator=(v90, &v107);
                *(v90 + 1) = v108;
                if (v107)
                {
                }
              }
            }
          }

          if (v105)
          {
          }
        }

        while (v74-- > 2);
      }

      return;
    }

    v11 = v8 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(v11, v8, v100);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(v8, v11, v100);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>((v8 + 24), (v11 - 24), a2 - 6);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>((v8 + 48), (v11 + 24), a2 - 9);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>((v11 - 24), v11, (v11 + 24));
      v107 = *v8;
      *v8 = 0;
      v108 = *(v8 + 8);
      NS::SharedPtr<MTL::Texture>::operator=(v8, v11);
      *(v8 + 8) = *(v11 + 8);
      NS::SharedPtr<MTL::Texture>::operator=(v11, &v107);
      *(v11 + 8) = v108;
      if (v107)
      {
      }
    }

    --a3;
    if ((a4 & 1) != 0 || (v12 = [*(v8 - 24) usedSize], v12 > objc_msgSend(*v8, sel_usedSize)))
    {
      v13 = 0;
      v14 = *v8;
      v107 = *v8;
      *v8 = 0;
      v108 = *(v8 + 8);
      do
      {
        v15 = [*(v8 + v13 + 24) usedSize];
        v13 += 24;
      }

      while (v15 > [v14 usedSize]);
      v16 = v8 + v13;
      if (v13 == 24)
      {
        v6 = a2;
        if (v16 < a2)
        {
          v19 = a2 - 3;
          v20 = a2 - 3;
          do
          {
            v21 = *v20;
            v20 -= 3;
            v22 = [v21 usedSize];
            v23 = [v14 usedSize];
            if (v16 >= v19)
            {
              break;
            }

            v19 = v20;
          }

          while (v22 <= v23);
          v6 = v20 + 3;
        }
      }

      else
      {
        do
        {
          v17 = *(v6 - 3);
          v6 -= 3;
          v18 = [v17 usedSize];
        }

        while (v18 <= [v14 usedSize]);
      }

      v7 = v16;
      if (v16 < v6)
      {
        v24 = v6;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(v7, v24);
          do
          {
            v25 = *(v7 + 24);
            v7 += 24;
            v26 = [v25 usedSize];
          }

          while (v26 > [v14 usedSize]);
          do
          {
            v27 = *(v24 - 24);
            v24 -= 24;
            v28 = [v27 usedSize];
          }

          while (v28 <= [v14 usedSize]);
        }

        while (v7 < v24);
      }

      if ((v7 - 24) != a1)
      {
        NS::SharedPtr<MTL::Texture>::operator=(a1, (v7 - 24));
        *(a1 + 1) = *(v7 - 16);
      }

      NS::SharedPtr<MTL::Texture>::operator=((v7 - 24), &v107);
      *(v7 - 16) = v108;
      if (v107)
      {
      }

      v29 = v16 >= v6;
      v6 = a2;
      if (!v29)
      {
        goto LABEL_41;
      }

      v30 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *>(a1, (v7 - 24));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *>(v7, a2))
      {
        a2 = (v7 - 24);
        if (!v30)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v30)
      {
LABEL_41:
        std::__introsort<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,false>(a1, v7 - 24, a3, a4 & 1);
        goto LABEL_42;
      }
    }

    else
    {
      v107 = *v8;
      v31 = v107;
      *v8 = 0;
      v108 = *(v8 + 8);
      v32 = [v31 usedSize];
      if (v32 <= [*v100 usedSize])
      {
        v35 = v8 + 24;
        do
        {
          v7 = v35;
          if (v35 >= v6)
          {
            break;
          }

          v36 = [v31 usedSize];
          v35 += 24;
        }

        while (v36 <= [*v7 usedSize]);
      }

      else
      {
        v7 = v8;
        do
        {
          v33 = [v31 usedSize];
          v34 = *(v7 + 24);
          v7 += 24;
        }

        while (v33 <= [v34 usedSize]);
      }

      v37 = v6;
      if (v7 < v6)
      {
        v37 = v6;
        do
        {
          v38 = [v31 usedSize];
          v39 = *(v37 - 24);
          v37 -= 24;
        }

        while (v38 > [v39 usedSize]);
      }

      while (v7 < v37)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(v7, v37);
        do
        {
          v40 = [v31 usedSize];
          v41 = *(v7 + 24);
          v7 += 24;
        }

        while (v40 <= [v41 usedSize]);
        do
        {
          v42 = [v31 usedSize];
          v43 = *(v37 - 24);
          v37 -= 24;
        }

        while (v42 > [v43 usedSize]);
      }

      if ((v7 - 24) != a1)
      {
        NS::SharedPtr<MTL::Texture>::operator=(a1, (v7 - 24));
        *(a1 + 1) = *(v7 - 16);
      }

      NS::SharedPtr<MTL::Texture>::operator=((v7 - 24), &v107);
      *(v7 - 16) = v108;
      if (v107)
      {
      }

LABEL_42:
      a4 = 0;
    }
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(v8, (v8 + 24), (v8 + 48));
  v48 = *(v6 - 3);
  v47 = (v6 - 3);
  v49 = [v48 usedSize];
  if (v49 > [*(v8 + 48) usedSize])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(v8 + 48, v47);
    v50 = [*(v8 + 48) usedSize];
    if (v50 > [a1[3] usedSize])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>((a1 + 3), (a1 + 6));
      v51 = [a1[3] usedSize];
      if (v51 > [*a1 usedSize])
      {
        v45 = a1;
        v46 = (a1 + 3);
LABEL_67:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(v45, v46);
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *(a1 + 8);
  NS::SharedPtr<MTL::Texture>::operator=(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  NS::SharedPtr<MTL::Texture>::operator=(a2, &v4);
  *(a2 + 8) = v5;
  if (v4)
  {
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(id *a1, id *a2, id *a3)
{
  v6 = [*a2 usedSize];
  v7 = [*a1 usedSize];
  v8 = [*a3 usedSize];
  v9 = [*a2 usedSize];
  if (v6 <= v7)
  {
    if (v8 <= v9)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a2, a3);
    v11 = [*a2 usedSize];
    if (v11 <= [*a1 usedSize])
    {
      return;
    }

    v10 = a1;
    v12 = a2;
  }

  else
  {
    if (v8 <= v9)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a1, a2);
      v13 = [*a3 usedSize];
      if (v13 <= [*a2 usedSize])
      {
        return;
      }

      v10 = a2;
    }

    else
    {
      v10 = a1;
    }

    v12 = a3;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(v10, v12);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(id *a1, id *a2, id *a3, id *a4, id *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(a1, a2, a3);
  v10 = [*a4 usedSize];
  if (v10 > [*a3 usedSize])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a3, a4);
    v11 = [*a3 usedSize];
    if (v11 > [*a2 usedSize])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a2, a3);
      v12 = [*a2 usedSize];
      if (v12 > [*a1 usedSize])
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a1, a2);
      }
    }
  }

  v13 = [*a5 usedSize];
  if (v13 > [*a4 usedSize])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a4, a5);
    v14 = [*a4 usedSize];
    if (v14 > [*a3 usedSize])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a3, a4);
      v15 = [*a3 usedSize];
      if (v15 > [*a2 usedSize])
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a2, a3);
        v16 = [*a2 usedSize];
        if (v16 > [*a1 usedSize])
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *>(id *a1, id *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(a1, a1 + 3, a1 + 6);
        v19 = *(a2 - 3);
        v18 = (a2 - 3);
        v20 = [v19 usedSize];
        if (v20 <= [a1[6] usedSize])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>((a1 + 6), v18);
        v21 = [a1[6] usedSize];
        if (v21 <= [a1[3] usedSize])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>((a1 + 3), (a1 + 6));
        v22 = [a1[3] usedSize];
        if (v22 <= [*a1 usedSize])
        {
          return 1;
        }

        v8 = (a1 + 3);
        v7 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 3);
      v6 = [*(a2 - 3) usedSize];
      if (v6 > [*a1 usedSize])
      {
        v7 = a1;
        v8 = v5;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::VideoTextureAllocator::HeapEntry *&,re::VideoTextureAllocator::HeapEntry *&>(v7, v8);
      }

      return 1;
    }
  }

  v9 = a1 + 6;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::VideoTextureAllocator::createTextureInternal(unsigned long,unsigned long,re::mtl::PixelFormat,re::mtl::StorageMode,re::mtl::TextureUsage,BOOL,BOOL,unsigned long long)::$_0 &,re::VideoTextureAllocator::HeapEntry *,0>(a1, a1 + 3, a1 + 6);
  v10 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = [*v10 usedSize];
    if (v13 > [*v9 usedSize])
    {
      v24 = *v10;
      *v10 = 0;
      v25 = *(v10 + 1);
      v14 = v11;
      while (1)
      {
        v15 = a1 + v14;
        NS::SharedPtr<MTL::Texture>::operator=((a1 + v14 + 72), (a1 + v14 + 48));
        *(a1 + v14 + 80) = *(a1 + v14 + 56);
        if (v14 == -48)
        {
          break;
        }

        v16 = [v24 usedSize];
        v14 -= 24;
        if (v16 <= [*(v15 + 3) usedSize])
        {
          v17 = (a1 + v14 + 72);
          goto LABEL_20;
        }
      }

      v17 = a1;
LABEL_20:
      NS::SharedPtr<MTL::Texture>::operator=(v17, &v24);
      *(v15 + 56) = v25;
      if (v24)
      {
      }

      if (++v12 == 8)
      {
        return v10 + 3 == a2;
      }
    }

    v9 = v10;
    v11 += 24;
    v10 += 3;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::allocEntry(a1, *(v13 + 296) % *(a1 + 24));
                v19 = *(v13 + 8);
                v20 = *(v13 + 24);
                *(v18 + 40) = *(v13 + 40);
                *(v18 + 24) = v20;
                *(v18 + 8) = v19;
                *(v18 + 56) = *(v13 + 56);
                v21 = *(v13 + 64);
                *(v18 + 88) = 0;
                v18 += 88;
                *(v13 + 56) = 0;
                *(v18 - 24) = v21;
                *(v18 - 8) = *(v13 + 80);
                *(v13 + 80) = 0;
                *(v18 + 8) = 0;
                re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::move(v18, (v13 + 88));
              }

              ++v17;
              v13 += 304;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 304 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 304 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 304 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 296) = a3;
  ++*(a1 + 28);
  return v22 + 304 * v5;
}

void re::HashTable<re::internal::VideoTextureConfiguration,re::VideoTextureAllocator::ConfigurationEntry,re::Hash<re::internal::VideoTextureConfiguration>,re::EqualTo<re::internal::VideoTextureConfiguration>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 304 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_28, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::move(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  if (*a2 >= *a1)
  {
    v12 = a2 + 2;
    v13 = a1 + 2;
    if (v5)
    {
      v14 = &v12[3 * v5];
      v15 = a1 + 2;
      v16 = a2 + 2;
      do
      {
        NS::SharedPtr<MTL::Texture>::operator=(v15, v16);
        *(v15 + 1) = *(v16 + 1);
        v16 += 3;
        v15 += 3;
      }

      while (v16 != v14);
      v5 = *a1;
    }

    if (v5 != v4)
    {
      v17 = &v12[3 * v5];
      v18 = &v13[3 * v5];
      do
      {
        *v18 = *v17;
        *v17 = 0;
        *(v18 + 1) = *(v17 + 1);
        v17 += 3;
        v18 += 3;
      }

      while (v17 != &v12[3 * v4]);
    }
  }

  else
  {
    v6 = a1 + 2;
    if (v4)
    {
      v7 = &a2[3 * v4 + 2];
      v8 = a2 + 2;
      v9 = a1 + 2;
      do
      {
        NS::SharedPtr<MTL::Texture>::operator=(v9, v8);
        *(v9 + 1) = *(v8 + 1);
        v8 += 3;
        v9 += 3;
      }

      while (v8 != v7);
      v5 = *a1;
    }

    if (v4 != v5)
    {
      v10 = &v6[3 * v4];
      v11 = -24 * v4 + 24 * v5;
      do
      {
        if (*v10)
        {

          *v10 = 0;
        }

        v10 += 3;
        v11 -= 24;
      }

      while (v11);
    }
  }

  *a1 = v4;

  re::DynamicInlineArray<re::VideoTextureAllocator::HeapEntry,8ul>::clear(a2);
}

void re::DynamicOverflowArray<re::VideoTextureAllocator::HeapEntry,4ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::VideoTextureAllocator::HeapEntry,4ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v15 = a1 + 3;
        v16 = a1[4];
        if (v7)
        {
          v17 = a1 + 3;
        }

        else
        {
          v17 = a1[4];
        }

        if (v9)
        {
          v18 = 24 * v9;
          do
          {
            *v15 = *v17;
            *v17 = 0;
            *(v15 + 1) = *(v17 + 1);
            if (*v17)
            {

              *v17 = 0;
            }

            v17 += 3;
            v15 += 3;
            v18 -= 24;
          }

          while (v18);
          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v16);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x18uLL))
      {
        v2 = 24 * a2;
        v10 = (*(*v5 + 32))(v5, 24 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v19 = a1[1];
          if (v19)
          {
            v20 = 24 * v19;
            v21 = v10;
            do
            {
              *v21 = *v14;
              *v14 = 0;
              *(v21 + 8) = *(v14 + 1);
              if (*v14)
              {

                *v14 = 0;
              }

              v14 += 3;
              v21 += 24;
              v20 -= 24;
            }

            while (v20);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 24, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash();
      __break(1u);
    }
  }
}

void *re::DynamicOverflowArray<re::internal::VideoTextureConfiguration,4ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::internal::VideoTextureConfiguration,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 48 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x30uLL))
      {
        v2 = 48 * a2;
        v10 = (*(*v5 + 32))(*result, 48 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 48 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 48, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

const __CFArray *re::VideoColorTransformBase::conversionMatrix@<X0>(CFArrayRef *this@<X0>, uint64_t a2@<X8>)
{
  result = re::VideoColorTransformBase::findFragment(this, *MEMORY[0x1E695BB20]);
  if (result)
  {
    v4 = result;
    v5 = 0;
    v14 = xmmword_1E3047670;
    v15 = xmmword_1E3047680;
    v16 = xmmword_1E30476A0;
    v6 = &v14;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      v8 = 0;
      v9 = v6;
      do
      {
        v10 = CFArrayGetValueAtIndex(ValueAtIndex, v8);
        result = CFNumberGetValue(v10, kCFNumberFloat32Type, v9);
        ++v8;
        ++v9;
      }

      while (v8 != 3);
      ++v5;
      v6 = (v6 + 4);
    }

    while (v5 != 3);
    v11 = v14;
    v12 = v15;
    *(a2 + 8) = DWORD2(v14);
    v13 = v16;
    *a2 = v11;
    *(a2 + 24) = DWORD2(v12);
    *(a2 + 16) = v12;
    *(a2 + 40) = DWORD2(v13);
    *(a2 + 32) = v13;
    *(a2 + 48) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

const __CFArray *re::VideoColorTransformBase::findFragment(CFArrayRef *this, const __CFString *a2)
{
  result = *this;
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*this, v7);
        value = 0;
        if (CFDictionaryGetValueIfPresent(ValueAtIndex, a2, &value))
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return value;
    }
  }

  return result;
}

const __CFArray *re::VideoColorTransformBase::gammaToneCurve@<X0>(CFArrayRef *this@<X0>, uint64_t a2@<X8>)
{
  Fragment = re::VideoColorTransformBase::findFragment(this, *MEMORY[0x1E695BB28]);
  if (Fragment)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&v42[4] = _D0;
    *&v42[20] = 0;
    *&v42[28] = 0;
    *v42 = 1;
    ValueAtIndex = CFArrayGetValueAtIndex(Fragment, 0);
    result = CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &v42[4]);
    v12 = *&v42[16];
    *a2 = *v42;
    *(a2 + 16) = v12;
    *(a2 + 32) = 1;
    return result;
  }

  v13 = re::VideoColorTransformBase::findFragment(this, *MEMORY[0x1E695BB30]);
  if (v13)
  {
    v14 = v13;
    __asm { FMOV            V0.2S, #1.0 }

    *&v42[4] = _D0;
    memset(&v42[12], 0, 20);
    *v42 = 2;
    v16 = CFArrayGetValueAtIndex(v13, 0);
    CFNumberGetValue(v16, kCFNumberFloat32Type, &v42[4]);
    v17 = CFArrayGetValueAtIndex(v14, 1);
    CFNumberGetValue(v17, kCFNumberFloat32Type, &v42[8]);
    v18 = CFArrayGetValueAtIndex(v14, 2);
    v19 = &v42[12];
  }

  else
  {
    v20 = re::VideoColorTransformBase::findFragment(this, *MEMORY[0x1E695BB38]);
    if (v20)
    {
      v21 = v20;
      __asm { FMOV            V0.2S, #1.0 }

      *&v42[4] = _D0;
      memset(&v42[12], 0, 20);
      *v42 = 3;
      v23 = CFArrayGetValueAtIndex(v20, 0);
      CFNumberGetValue(v23, kCFNumberFloat32Type, &v42[4]);
      v24 = CFArrayGetValueAtIndex(v21, 1);
      CFNumberGetValue(v24, kCFNumberFloat32Type, &v42[8]);
      v25 = CFArrayGetValueAtIndex(v21, 2);
      CFNumberGetValue(v25, kCFNumberFloat32Type, &v42[12]);
      v18 = CFArrayGetValueAtIndex(v21, 3);
      v19 = &v42[16];
    }

    else
    {
      v26 = re::VideoColorTransformBase::findFragment(this, *MEMORY[0x1E695BB40]);
      if (v26)
      {
        v27 = v26;
        __asm { FMOV            V0.2S, #1.0 }

        *&v42[4] = _D0;
        memset(&v42[12], 0, 20);
        *v42 = 4;
        v29 = CFArrayGetValueAtIndex(v26, 0);
        CFNumberGetValue(v29, kCFNumberFloat32Type, &v42[4]);
        v30 = CFArrayGetValueAtIndex(v27, 1);
        CFNumberGetValue(v30, kCFNumberFloat32Type, &v42[8]);
        v31 = CFArrayGetValueAtIndex(v27, 2);
        CFNumberGetValue(v31, kCFNumberFloat32Type, &v42[12]);
        v32 = CFArrayGetValueAtIndex(v27, 3);
        CFNumberGetValue(v32, kCFNumberFloat32Type, &v42[16]);
        v18 = CFArrayGetValueAtIndex(v27, 4);
        v19 = &v42[20];
      }

      else
      {
        result = re::VideoColorTransformBase::findFragment(this, *MEMORY[0x1E695BB48]);
        if (!result)
        {
          *a2 = 0;
          *(a2 + 32) = 0;
          return result;
        }

        v33 = result;
        __asm { FMOV            V0.2S, #1.0 }

        *&v42[4] = _D0;
        memset(&v42[12], 0, 20);
        *v42 = 5;
        v35 = CFArrayGetValueAtIndex(result, 0);
        CFNumberGetValue(v35, kCFNumberFloat32Type, &v42[4]);
        v36 = CFArrayGetValueAtIndex(v33, 1);
        CFNumberGetValue(v36, kCFNumberFloat32Type, &v42[8]);
        v37 = CFArrayGetValueAtIndex(v33, 2);
        CFNumberGetValue(v37, kCFNumberFloat32Type, &v42[12]);
        v38 = CFArrayGetValueAtIndex(v33, 3);
        CFNumberGetValue(v38, kCFNumberFloat32Type, &v42[16]);
        v39 = CFArrayGetValueAtIndex(v33, 4);
        CFNumberGetValue(v39, kCFNumberFloat32Type, &v42[20]);
        v40 = CFArrayGetValueAtIndex(v33, 5);
        CFNumberGetValue(v40, kCFNumberFloat32Type, &v42[24]);
        v18 = CFArrayGetValueAtIndex(v33, 6);
        v19 = &v42[28];
      }
    }
  }

  result = CFNumberGetValue(v18, kCFNumberFloat32Type, v19);
  v41 = *&v42[16];
  *a2 = *v42;
  *(a2 + 16) = v41;
  *(a2 + 32) = 1;
  return result;
}

void anonymous namespace::getGlobalMetalDevice(_anonymous_namespace_ *this)
{
  {
  }
}

void anonymous namespace::getGlobalPixelFormatInfoTable(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE1C46F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C46F0))
  {
    *&qword_1EE1C4718 = 0u;
    *&qword_1EE1C4708 = 0u;
    dword_1EE1C4728 = 1065353216;
    __cxa_guard_release(&qword_1EE1C46F0);
  }

  if (qword_1EE1C46F8 != -1)
  {

    dispatch_once(&qword_1EE1C46F8, &__block_literal_global_30_0);
  }
}

void anonymous namespace::globalSurfaceAcceleratorProperties(_anonymous_namespace_ *this)
{
  {
  }
}

uint64_t re::VideoPlatform::isLegacyDevice(re::VideoPlatform *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      re::VideoPlatform::isLegacyDevice(void)::value = MGGetProductType() == 3652044089;
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v1[3904];
}

uint64_t re::VideoPlatform::ManualMetalNotificationDispatchSupported(re::VideoPlatform *this)
{
  v1 = &re::introspect_BOOL(BOOL)::info;
  {
    v1 = &re::introspect_BOOL(BOOL)::info;
    if (v3)
    {
      re::VideoPlatform::ManualMetalNotificationDispatchSupported(void)::value = re::VideoPlatform::ManualMetalNotificationDispatchSupported(void)::$_0::operator()();
      v1 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v1[264];
}

uint64_t re::VideoPlatform::ManualMetalNotificationDispatchSupported(void)::$_0::operator()()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x1E6974018]);
  v2 = objc_opt_respondsToSelector();

  objc_autoreleasePoolPop(v0);
  return v2 & 1;
}

uint64_t re::VideoPlatform::isVariableRateDirectionalScalingSupported(re::VideoPlatform *this)
{
  if (qword_1EE1C46E8 != -1)
  {
    dispatch_once(&qword_1EE1C46E8, &__block_literal_global_65);
  }

  return _MergedGlobals_575;
}

void ___ZN2re13VideoPlatform41isVariableRateDirectionalScalingSupportedEv_block_invoke()
{
  if (qword_1EE1C4700 != -1)
  {
    dispatch_once(&qword_1EE1C4700, &__block_literal_global_45);
  }

  if (dword_1EE1C46E4 && (v0 = IORegistryEntrySearchCFProperty(dword_1EE1C46E4, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0)) != 0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    v4 = v2 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v1, @"IOSurfaceAcceleratorCapabilitiesVariableRateDirectionalScaling")) != 0 && CFBooleanGetValue(Value) != 0;
    CFRelease(v1);
  }

  else
  {
    v4 = 0;
  }

  _MergedGlobals_575 = v4;
}

unint64_t re::VideoPlatform::Maximum1DTextureSize(re::VideoPlatform *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      {
        v4 = 16384.0;
      }

      else
      {
        v4 = 8192.0;
        if (v5)
        {
          v4 = 16384.0;
        }
      }

      re::VideoPlatform::Maximum1DTextureSize(void)::value = LODWORD(v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return *(v1 + 980);
}

uint64_t ___ZN12_GLOBAL__N_129getGlobalPixelFormatInfoTableEv_block_invoke(_anonymous_namespace_ *InfoForDevice)
{
  for (i = 500; i != 630; ++i)
  {
    InfoForDevice = MTLPixelFormatGetInfoForDevice();
    if (!qword_1EE1C4710)
    {
      goto LABEL_18;
    }

    v2 = vcnt_s8(qword_1EE1C4710);
    v2.i16[0] = vaddlv_u8(v2);
    if (v2.u32[0] > 1uLL)
    {
      v3 = i;
      if (qword_1EE1C4710 <= i)
      {
        v3 = i % qword_1EE1C4710;
      }
    }

    else
    {
      v3 = (qword_1EE1C4710 - 1) & i;
    }

    v4 = *(qword_1EE1C4708 + 8 * v3);
    if (!v4 || (v5 = *v4) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v6 = v5[1];
      if (v6 == i)
      {
        break;
      }

      if (v2.u32[0] > 1uLL)
      {
        if (v6 >= qword_1EE1C4710)
        {
          v6 %= qword_1EE1C4710;
        }
      }

      else
      {
        v6 &= qword_1EE1C4710 - 1;
      }

      if (v6 != v3)
      {
        goto LABEL_18;
      }

LABEL_17:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    if (*(v5 + 4) != i)
    {
      goto LABEL_17;
    }
  }

  MTLPixelFormatGetInfoForDevice();
  v7 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(10);
  MTLPixelFormatGetInfoForDevice();
  v8 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(20);
  MTLPixelFormatGetInfoForDevice();
  v9 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(25);
  MTLPixelFormatGetInfoForDevice();
  v10 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(40);
  MTLPixelFormatGetInfoForDevice();
  v11 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(43);
  MTLPixelFormatGetInfoForDevice();
  v12 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(60);
  MTLPixelFormatGetInfoForDevice();
  v13 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(70);
  MTLPixelFormatGetInfoForDevice();
  v14 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(71);
  MTLPixelFormatGetInfoForDevice();
  v15 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(90);
  MTLPixelFormatGetInfoForDevice();
  v16 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(94);
  MTLPixelFormatGetInfoForDevice();
  v17 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(110);
  MTLPixelFormatGetInfoForDevice();
  v18 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(115);
  MTLPixelFormatGetInfoForDevice();
  v19 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(125);
  MTLPixelFormatGetInfoForDevice();
  v20 = std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(240);
  MTLPixelFormatGetInfoForDevice();
  return std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(241);
}

void std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = qword_1EE1C4710;
  if (prime > qword_1EE1C4710)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (prime < qword_1EE1C4710)
  {
    v3 = vcvtps_u32_f32(qword_1EE1C4720 / *&dword_1EE1C4728);
    if (qword_1EE1C4710 < 3 || (v4 = vcnt_s8(qword_1EE1C4710), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = qword_1EE1C4708;
      qword_1EE1C4708 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      qword_1EE1C4710 = 0;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::__unordered_map_hasher<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::hash<re::mtl::PixelFormat>,std::equal_to<re::mtl::PixelFormat>,true>,std::__unordered_map_equal<re::mtl::PixelFormat,std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>,std::equal_to<re::mtl::PixelFormat>,std::hash<re::mtl::PixelFormat>,true>,std::allocator<std::__hash_value_type<re::mtl::PixelFormat,MTLPixelFormatInfo>>>::__emplace_unique_key_args<re::mtl::PixelFormat,re::mtl::PixelFormat,MTLPixelFormatInfo>(uint64_t result)
{
  if (!qword_1EE1C4710)
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(qword_1EE1C4710);
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (qword_1EE1C4710 <= result)
    {
      v2 = result % qword_1EE1C4710;
    }
  }

  else
  {
    v2 = (qword_1EE1C4710 - 1) & result;
  }

  v3 = *(qword_1EE1C4708 + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= qword_1EE1C4710)
      {
        v5 %= qword_1EE1C4710;
      }
    }

    else
    {
      v5 &= qword_1EE1C4710 - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void anonymous namespace::globalSurfaceAcceleratorProperties(void)::$_0::operator()()
{
  qword_1EE1C75A8 = 0;
  qword_1EE1C75B0 = 0;
  qword_1EE1C75A0 = 0;
  if (!IOSurfaceAcceleratorCreate())
  {
    IOSurfaceAcceleratorGetServiceObject();
    v0 = IORegistryEntrySearchCFProperty(0, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    v1 = [v0 valueForKey:{@"kSurfaceAcceleratorCapabilitiesHistogramValues", 0}];
    qword_1EE1C75B0 = [v1 intValue];

    v2 = [v0 valueForKey:@"IOSurfaceAcceleratorCapabilitiesMinDestWidth"];
    qword_1EE1C75A0 = [v2 intValue];

    v3 = [v0 valueForKey:@"IOSurfaceAcceleratorCapabilitiesMinDestHeight"];
    qword_1EE1C75A8 = [v3 intValue];

    CFRelease(0);
  }
}

uint64_t ___ZN12_GLOBAL__N_112getIOServiceEv_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v0, v1);
  dword_1EE1C46E4 = result;
  if (!result)
  {
    v3 = IOServiceMatching("AppleM2ScalerParavirtDriver");
    result = IOServiceGetMatchingService(v0, v3);
    dword_1EE1C46E4 = result;
  }

  return result;
}

double re::VideoPresentationQueue::VideoPresentationQueue(re::VideoPresentationQueue *this)
{
  v1 = 0;
  *this = 2;
  v2 = MEMORY[0x1E6960C70];
  do
  {
    v3 = this + v1;
    v4 = *(v2 + 16);
    *(v3 + 1) = *v2;
    *(v3 + 4) = v4;
    *(v3 + 5) = 0;
    *(v3 + 12) = 0;
    *(v3 + 8) = 0;
    *(v3 + 18) = 0;
    *(v3 + 12) = 0;
    *(v3 + 26) = 0;
    *(v3 + 46) = 0;
    *(v3 + 94) = 0;
    *(v3 + 80) = 0;
    *(v3 + 162) = 0;
    *(v3 + 114) = 0;
    *(v3 + 230) = 0;
    *(v3 + 148) = 0;
    *(v3 + 298) = 0;
    *(v3 + 152) = 0;
    *(v3 + 306) = 0;
    *(v3 + 156) = 0;
    *(v3 + 314) = 0;
    *(v3 + 190) = 0;
    *(v3 + 382) = 0;
    *(v3 + 194) = 0;
    *(v3 + 390) = 0;
    *(v3 + 202) = 0;
    *(v3 + 406) = 0;
    *(v3 + 208) = 0;
    *(v3 + 418) = 0;
    *(v3 + 212) = 0;
    v3[1704] = 0;
    *(v3 + 896) = 0;
    v3[1600] = 0;
    *(v3 + 99) = 0uLL;
    *(v3 + 107) = 0uLL;
    *(v3 + 108) = 0uLL;
    *(v3 + 109) = 0uLL;
    v3[1794] = 1;
    *(v3 + 449) = -1;
    *(v3 + 230) = 0;
    *(v3 + 462) = 0;
    *(v3 + 233) = 0;
    *(v3 + 468) = 0;
    *(v3 + 236) = 0;
    *(v3 + 474) = 0;
    *(v3 + 246) = 0;
    *(v3 + 494) = 0;
    *(v3 + 252) = 0;
    *(v3 + 506) = 0;
    *(v3 + 258) = 0;
    *(v3 + 518) = 0;
    v3[2088] = 0;
    *(v3 + 454) = 0;
    *(this + v1 + 1800) = 0uLL;
    *(v3 + 262) = 1;
    v1 += 2096;
    v3[2104] = 0;
  }

  while (v1 != 4192);
  result = 0.0;
  *(this + 263) = 0u;
  return result;
}

void re::VideoPresentationQueue::~VideoPresentationQueue(re::VideoPresentationQueue *this)
{
  re::VideoPresentationQueue::clear(this);
  *this = 0;
  for (i = 2112; i != -2080; i -= 2096)
  {
    re::VideoPresentationGroup::~VideoPresentationGroup((this + i));
  }
}

void re::VideoPresentationQueue::clear(re::VideoPresentationQueue *this)
{
  v1 = (this + 4208);
  v2 = *(this + 526);
  v3 = *(this + 527);
  if (v2 != v3)
  {
    v4 = this + 16;
    do
    {
      re::deinitVideoPresentationGroup(&v4[2096 * (v2++ & 1)]);
    }

    while (v3 != v2);
  }

  *v1 = 0;
  v1[1] = 0;
}

BOOL re::VideoPresentationQueue::push(re::VideoPresentationQueue *this, const re::VideoPresentationGroup *a2)
{
  v2 = *(this + 527);
  v3 = v2 - *(this + 526);
  if (v3 != 2)
  {
    v4 = this + 2096 * (*(this + 527) & 1);
    *(this + 527) = v2 + 1;
    re::VideoPresentationGroup::operator=((v4 + 16), a2);
  }

  return v3 != 2;
}

uint64_t re::VideoPresentationQueue::front(re::VideoPresentationQueue *this, uint64_t a2)
{
  if (*(this + 526) != *(this + 527))
  {
    return this + 2096 * (*(this + 526) & 1) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isEmpty()", "front", 99, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::VideoDefaults::inverseToneMappingAllowed(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.inverse_tone_mapping.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::inverseToneMappingAllowed(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3936];
}

uint64_t re::VideoDefaults::drmIconEnabled(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.drm_icon.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::drmIconEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3952];
}

uint64_t re::VideoDefaults::overrideStereoMode(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::intValue("video.override.stereo", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = -1;
      }

      re::VideoDefaults::overrideStereoMode(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return *(v3 + 992);
}

uint64_t re::VideoDefaults::colorSpaceTransformationAllowed(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v11 = v1;
    v12 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.color_space_transformation.allowed", v6, v10);
      v8 = 1;
      if (v10[0] == 1 && (v10[1] & 1) == 0)
      {
        re::Defaults::BOOLValue("video.color_space_conversion.allowed", v7, v9);
        v8 = v9[0] ^ 1 | v9[1];
      }

      re::VideoDefaults::colorSpaceTransformationAllowed(void)::value = v8 & 1;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3984];
}

uint64_t re::VideoDefaults::logEnabled(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.log.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::logEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[4000];
}

uint64_t re::VideoDefaults::loadingTexAndHintEnabled(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.loading_hint_tex.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::loadingTexAndHintEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[4016];
}

unint64_t re::VideoDefaults::logLevel(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v11 = v1;
    v12 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v6)
    {
      re::Defaults::uint64Value("video.log.level", v7, v9);
      v8 = v10;
      if (!v9[0])
      {
        v8 = 0;
      }

      re::VideoDefaults::logLevel(void)::value = v8;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  v4 = *(v3 + 504);
  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t re::VideoDefaults::frameTimeLogEnabled(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.log.frametime.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::frameTimeLogEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[4048];
}

float re::VideoDefaults::frameDropThreshold(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::floatValue("video.log.framedrop.threshold", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 0.0;
      }

      re::VideoDefaults::frameDropThreshold(void)::value = LODWORD(v7);
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return *(v3 + 1016);
}

uint64_t re::VideoDefaults::opaqueTechniqueAllowed(re::VideoDefaults *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("video.opaque_technique.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::opaqueTechniqueAllowed(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[4080];
}

uint64_t re::VideoDefaults::compressionAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.compression.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::compressionAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *v3;
}

uint64_t re::VideoDefaults::targetDisplayTimeAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.target_display_time.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::targetDisplayTimeAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[16];
}

uint64_t re::VideoDefaults::histogramGenerationAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.histogram.generation.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::histogramGenerationAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[32];
}

uint64_t re::VideoDefaults::overrideHistogramGeneration(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.override.histogram.generation", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::overrideHistogramGeneration(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[48];
}

uint64_t re::VideoDefaults::useLegacyVideoTextures(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v11 = v1;
    v12 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.override.legacy_hardware_transfer_function_variant_selection", v6, v10);
      if (v10[0] == 1 && (v10[1] & 1) != 0)
      {
        v8 = 1;
      }

      else
      {
        re::Defaults::BOOLValue("video.use_legacy_video_textures", v7, v9);
        v8 = v9[0] & v9[1];
      }

      re::VideoDefaults::useLegacyVideoTextures(void)::value = v8 & 1;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[64];
}

uint64_t re::VideoDefaults::passthroughTintColorTuningAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.passthrough_color_tuning.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::passthroughTintColorTuningAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[80];
}

float re::VideoDefaults::minSaturationVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::minSaturationVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::minSaturationVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::minSaturationVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.minSaturation", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.5;
    }

    re::VideoDefaults::minSaturationVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::minSaturationVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::minSaturationVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.minSaturation_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.42298;
    }

    re::VideoDefaults::minSaturationVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::minSaturationVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::maxSaturationVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.maxSaturation", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.72078;
    }

    re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.maxSaturation_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.63663;
    }

    re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::maxSaturationVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::saturationPowerVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.saturationPower", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.81;
    }

    re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.saturationPower_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.81;
    }

    re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::saturationPowerVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::saturationInflectionVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.saturationInflection", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.1;
    }

    re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.saturationInflection_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.093783;
    }

    re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::saturationInflectionVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::saturationSmoothingVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.saturationSmoothing", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 20.0;
    }

    re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.saturationSmoothing_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 20.0;
    }

    re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::saturationSmoothingVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::hueLerpVelocityVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.hueLerpVelocity", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.0055661;
    }

    re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.hueLerpVelocity_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.0;
    }

    re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::hueLerpVelocityVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::brightnessMinVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.brightnessMin", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.05;
    }

    re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.brightnessMin_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.098907;
    }

    re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::brightnessMinVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::brightnessMaxVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.bightnessMax", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.49766;
    }

    re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.bightnessMax_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.11634;
    }

    re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::brightnessMaxVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::brightnessInflectionVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.brightnessInflection", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.58125;
    }

    re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.brightnessInflection_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.32433;
    }

    re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::brightnessInflectionVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::brightnessSmoothingVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.brightnessSmoothing", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 1.5;
    }

    re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.brightnessSmoothing_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 3.9066;
    }

    re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::brightnessSmoothingVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::colorSmoothTimeVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value;
      return *v1;
    }

    v1 = &re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value;
    if (!v7)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.colorSmoothTime", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 0.032342;
    }

    re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return *v1;
  }

  {
    v1 = &re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value;
    if (!v3)
    {
      return *v1;
    }

    re::Defaults::floatValue("video.colorSmoothTime_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 0.032342;
    }

    re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::colorSmoothTimeVideoTuning(BOOL)::value;
  return *v1;
}

float re::VideoDefaults::gazeDeadbandVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value;
      return (*v1 * 3.1416) / 180.0;
    }

    v1 = &re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value;
    if (!v7)
    {
      return (*v1 * 3.1416) / 180.0;
    }

    re::Defaults::floatValue("video.gazeDeadband", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 40.0;
    }

    re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return (*v1 * 3.1416) / 180.0;
  }

  {
    v1 = &re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value;
    if (!v3)
    {
      return (*v1 * 3.1416) / 180.0;
    }

    re::Defaults::floatValue("video.gazeDeadband_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 40.0;
    }

    re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::gazeDeadbandVideoTuning(BOOL)::value;
  return (*v1 * 3.1416) / 180.0;
}

float re::VideoDefaults::gazeMaxAngleVideoTuning(re::VideoDefaults *this)
{
  if (!this)
  {
    {
      v1 = &re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value;
      return (*v1 * 3.1416) / 180.0;
    }

    v1 = &re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value;
    if (!v7)
    {
      return (*v1 * 3.1416) / 180.0;
    }

    re::Defaults::floatValue("video.gazeMaxAngle", v8, v11);
    v9 = v12;
    if (!v11[0])
    {
      v9 = 75.0;
    }

    re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value = LODWORD(v9);
LABEL_15:
    __cxa_guard_release(v6);
    v1 = v10;
    return (*v1 * 3.1416) / 180.0;
  }

  {
    v1 = &re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value;
    v10 = &re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value;
    if (!v3)
    {
      return (*v1 * 3.1416) / 180.0;
    }

    re::Defaults::floatValue("video.gazeMaxAngle_HDR", v4, v11);
    v5 = v12;
    if (!v11[0])
    {
      v5 = 74.151;
    }

    re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value = LODWORD(v5);
    goto LABEL_15;
  }

  v1 = &re::VideoDefaults::gazeMaxAngleVideoTuning(BOOL)::value;
  return (*v1 * 3.1416) / 180.0;
}

float re::VideoDefaults::hdrToSDRColorAverage(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.hdrToSDRColorAverage", v6, v8);
      v7 = v9 / 100.0;
      if (!v8[0])
      {
        v7 = 2.3567;
      }

      re::VideoDefaults::hdrToSDRColorAverage(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 128);
}

BOOL re::VideoDefaults::videoStatisticsEnableScaling(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video. videoStatisticsEnableScaling", v6, v7);
      *&re::VideoDefaults::videoStatisticsEnableScaling(void)::value = (v7[1] & 1u | ((v7[0] & 1) == 0));
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 132) != 0.0;
}

float re::VideoDefaults::glowSizeXModifier(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.glowScaleX", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 1.5;
      }

      re::VideoDefaults::glowSizeXModifier(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 136);
}

float re::VideoDefaults::glowSizeYModifier(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::floatValue("video.glowScaleY", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 1.5;
      }

      re::VideoDefaults::glowSizeYModifier(void)::value = LODWORD(v7);
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 140);
}

uint64_t re::VideoDefaults::lightSpillTextureAllocatorEnabled(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.lightspill.texture_allocator.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::lightSpillTextureAllocatorEnabled(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[576];
}

uint64_t re::VideoDefaults::horizontalDisparityEnabled(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.disparity.horizontal.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::horizontalDisparityEnabled(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[592];
}

float re::VideoDefaults::overrideHorizontalDispartiy(re::VideoDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.disparity.horizontal.override", v3, &re::VideoDefaults::overrideHorizontalDispartiy(float)::value);
      result = v4;
    }
  }

  if (re::VideoDefaults::overrideHorizontalDispartiy(float)::value)
  {
    return *&dword_1ECF1D264;
  }

  return result;
}

uint64_t re::VideoDefaults::mipmapEnabled(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.mipmap.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::mipmapEnabled(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[624];
}

uint64_t re::VideoDefaults::stereoMipmapEnabled(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.mipmap.stereo.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::stereoMipmapEnabled(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[640];
}

uint64_t re::VideoDefaults::mipmapPixelsPerSecondMax(uint64_t this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      re::Defaults::uint64Value("video.mipmap.pixels_per_second.max", v1, &re::VideoDefaults::mipmapPixelsPerSecondMax(unsigned long long)::value);
      this = v3;
    }
  }

  if (re::VideoDefaults::mipmapPixelsPerSecondMax(unsigned long long)::value)
  {
    return qword_1ECF1D298;
  }

  return this;
}

uint64_t re::VideoDefaults::lightSpillDumpEnabled(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.lightspill.dump.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::lightSpillDumpEnabled(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[680];
}

uint64_t re::VideoDefaults::pseAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.pse.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::pseAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[696];
}

uint64_t re::VideoDefaults::overridePseEnabled(re::VideoDefaults *this)
{
  {
    v5 = this;
    LOBYTE(this) = v5;
    if (v4)
    {
      re::Defaults::BOOLValue("video.pse.override.enabled", v3, &re::VideoDefaults::overridePseEnabled(BOOL)::value);
      LOBYTE(this) = v5;
    }
  }

  v1 = byte_1ECF1D2C9;
  if (!re::VideoDefaults::overridePseEnabled(BOOL)::value)
  {
    v1 = this;
  }

  return v1 & 1;
}

uint64_t re::VideoDefaults::screenFallbackTextureEnabled(re::VideoDefaults *this)
{
  {
    re::Defaults::BOOLValue("video.screen.fallback.texture.enabled", v2, &re::VideoDefaults::screenFallbackTextureEnabled(void)::value);
  }

  return re::VideoDefaults::screenFallbackTextureEnabled(void)::value & byte_1ECF1D2D9 & 1;
}

uint64_t re::VideoDefaults::aseAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.ase.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::aseAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[744];
}

uint64_t re::VideoDefaults::autoSynchronousProcessingAllowed(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.processor.synchronous.automatic_dispatch.allowed", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::autoSynchronousProcessingAllowed(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[760];
}

uint64_t re::VideoDefaults::overrideProcessorSynchronousWorkThreshold(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v11 = v1;
    v12 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::uint64Value("video.processor.synchronous.work_threshold", v6, v9);
      v7 = v10;
      if (!v9[0])
      {
        v7 = this;
      }

      re::VideoDefaults::overrideProcessorSynchronousWorkThreshold(long long)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return *(v3 + 97);
}

uint64_t re::VideoDefaults::useBT1886ForCoreVideoGamma(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.sdr.use_bt1886_for_corevideo_gamma", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::useBT1886ForCoreVideoGamma(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[792];
}

uint64_t re::VideoDefaults::pipelineEnabled(re::VideoDefaults *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::BOOLValue("video.pipeline.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::VideoDefaults::pipelineEnabled(void)::value = v7;
      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[272];
}

uint64_t re::VideoDefaults::overridePFRMEnablement(re::VideoDefaults *this)
{
  v3 = &re::VideoDefaults::compressionAllowed(void)::value;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    if (v5)
    {
      re::Defaults::BOOLValue("video.override.pfrm.enablement", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::VideoDefaults::overridePFRMEnablement(void)::value = v7;
      v3 = &re::VideoDefaults::compressionAllowed(void)::value;
    }
  }

  return v3[808];
}

float re::VideoDefaults::overrideBaseYCoefficient(re::VideoDefaults *this, float result)
{
  {
    v4 = result;
    result = v4;
    if (v2)
    {
      re::Defaults::floatValue("video.sdr.basey.coefficient", v3, &re::VideoDefaults::overrideBaseYCoefficient(float)::value);
      result = v4;
    }
  }

  if (re::VideoDefaults::overrideBaseYCoefficient(float)::value)
  {
    return *&dword_1ECF1D33C;
  }

  return result;
}

BOOL re::VideoSimplePixelBufferAllocator::configurePoolIfNeeded(re::VideoSimplePixelBufferAllocator *this, uint64_t a2, uint64_t a3, uint64_t a4, re::CoreVideoUtils *a5, uint64_t a6, uint64_t a7, int a8, unsigned int a9, unsigned int a10, BOOL a11, unint64_t a12)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(this + 6) && *this == a2 && *(this + 1) == a3 && *(this + 2) == a4 && *(this + 12) == a5 && *(this + 13) == a6 && *(this + 14) == a7 && *(this + 15) == a8 && *(this + 4) == a9 && *(this + 5) == a10 && *(this + 24) == a11 && *(this + 4) == a12)
  {
    return 1;
  }

  v27 = [MEMORY[0x1E696AD60] stringWithString:@"Creating pixel buffer pool for new configuration"];
  v18 = re::VideoDefaults::logEnabled(v27);
  if (v18)
  {
    [(re::VideoDefaults *)v27 appendFormat:@"\n                Width: %d", a2];
    [(re::VideoDefaults *)v27 appendFormat:@"\n               Height: %d", a3];
    [(re::VideoDefaults *)v27 appendFormat:@"\n         Pixel Format: %s (%d)", "(undefined)", a4];
    [(re::VideoDefaults *)v27 appendFormat:@"\n      Color Primaries: %s (%d)", "(undefined)", a5];
    [(re::VideoDefaults *)v27 appendFormat:@"\n    Transfer Function: %s (%d)", "(undefined)", a6];
    [(re::VideoDefaults *)v27 appendFormat:@"\n         YCbCr Matrix: %s (%d)", "(undefined)", a7];
    if (a8)
    {
      v22 = "Yes";
    }

    else
    {
      v22 = "No";
    }

    [(re::VideoDefaults *)v27 appendFormat:@"\n             Extended: %s", v22];
    [(re::VideoDefaults *)v27 appendFormat:@"\n           Cache Mode: %d", a9];
    [(re::VideoDefaults *)v27 appendFormat:@"\n            Alignment: %d", a10];
    v23 = "No";
    if (a11)
    {
      v23 = "Yes";
    }

    [(re::VideoDefaults *)v27 appendFormat:@"\n           Compressed: %s", v23];
    v18 = [(re::VideoDefaults *)v27 appendFormat:@"\n   Protection Options: %llu", a12];
  }

  v19 = *re::videoLogObjects(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v27;
    v21 = v19;
    *buf = 136315138;
    v29 = [(re::VideoDefaults *)v27 cStringUsingEncoding:1];
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (*(this + 6))
  {
    re::VideoPixelBufferPool::deinit((this + 40));
  }

  re::VideoPixelBufferPool::initInternal((this + 40), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  re::memoryAttributionVideoPixelBufferPool((this + 40), *(this + 30));
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 12) = a5;
  *(this + 13) = a6;
  *(this + 14) = a7;
  *(this + 15) = a8;
  *(this + 4) = a9;
  *(this + 5) = a10;
  *(this + 3) = a11;
  *(this + 4) = a12;

  return *(this + 6) != 0;
}

void re::VideoSimplePixelBufferAllocator::createPixelBuffer(re::VideoSimplePixelBufferAllocator *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, re::CoreVideoUtils *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, CVPixelBufferRef *a9@<X8>, unsigned int a10, unsigned int a11, BOOL a12, unint64_t a13)
{
  *a9 = 0;
  if (re::VideoSimplePixelBufferAllocator::configurePoolIfNeeded(this, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13))
  {
    v15 = 0;
    re::VideoPixelBufferPool::createPixelBuffer((this + 40), &v15, a9);
    if (!v15)
    {
      re::memoryAttributionVideoPixelBuffer(a9, *(this + 30));
    }
  }
}

void re::VideoHDRProcessor::~VideoHDRProcessor(void **this)
{
  v2 = *this;
  if (*this)
  {
    *this = 0;

    v2 = *this;
  }
}

uint64_t re::VideoHDRProcessor::init(uint64_t *a1, int a2, int a3, int a4, int a5, int a6, int a7, void *a8)
{
  v48 = *MEMORY[0x1E69E9840];
  v15 = a8;
  v16 = v15;
  if (*a1)
  {
    goto LABEL_2;
  }

  v38[0] = a2;
  v38[1] = a3;
  v38[3] = a6;
  switch(a7)
  {
    case 2:
      v21 = 0;
      goto LABEL_11;
    case 1:
      v21 = 1;
LABEL_11:
      v40 = v21;
      break;
    case 0:
      v19 = *re::videoLogObjects(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "Unknown HDR processing type specified.";
LABEL_36:
        v25 = v19;
        v26 = 2;
        goto LABEL_37;
      }

      goto LABEL_2;
  }

  v22 = re::VideoDefaults::logEnabled(v15);
  if (v22)
  {
    v36 = *re::videoLogObjects(v22);
    v22 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      v37 = v36;
      *buf = 136315394;
      *&buf[4] = "(undefined)";
      *&buf[12] = 1024;
      *&buf[14] = a5;
      _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "[VideoHDRProcessor]->init :: HDR pixel format: %s (%d)", buf, 0x12u);
    }
  }

  if (!a5)
  {
    v24 = *re::videoLogObjects(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = 0;
      v20 = "Unsupported output pixel format '%llu'.";
      v25 = v24;
      v26 = 12;
LABEL_37:
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, v20, buf, v26);
      goto LABEL_2;
    }

    goto LABEL_2;
  }

  v38[4] = a5;
  switch(a4)
  {
    case 1:
      v23 = MEMORY[0x1E6965DB8];
      break;
    case 9:
      v23 = MEMORY[0x1E6965DB0];
      break;
    case 12:
      v23 = MEMORY[0x1E6965DD0];
      break;
    default:
      goto LABEL_27;
  }

  v27 = *v23;
  if (!v27)
  {
LABEL_27:
    v19 = *re::videoLogObjects(v22);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Target color primaries not supported.";
      goto LABEL_36;
    }

LABEL_2:
    v17 = 0;
    goto LABEL_3;
  }

  v39 = v27;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v29 = getHDRProcessorClass(void)::softClass;
  v44 = getHDRProcessorClass(void)::softClass;
  if (!getHDRProcessorClass(void)::softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL20getHDRProcessorClassv_block_invoke;
    v46 = &unk_1E8722530;
    v47 = &v41;
    ___ZL20getHDRProcessorClassv_block_invoke(buf);
    v29 = v42[3];
  }

  v30 = v29;
  _Block_object_dispose(&v41, 8);
  v31 = [v30 alloc];
  if (isPhysicalHardware)
  {
    v32 = [v31 initWithConfig:v38];
  }

  else
  {
    v32 = [v31 initWithDevice:v16 config:v38];
  }

  v33 = *a1;
  *a1 = v32;

  v34 = *a1;
  v19 = *re::videoLogObjects(v35);
  if (!v34)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Could not create HDR processor.";
      goto LABEL_36;
    }

    goto LABEL_2;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "able to create HDR processor", buf, 2u);
  }

  v17 = 1;
LABEL_3:

  return v17;
}

void re::VideoHDRProcessor::transformSurfaceCompleteCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t re::VideoHDRProcessor::processViaGPU(id *a1, __IOSurface **a2, IOSurfaceRef *a3, unsigned int *a4, void *a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = a5;
  v22 = v21;
  if (!*a1)
  {
    v27 = *re::videoLogObjects(v21);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v33[0]) = 0;
    v28 = "VideoHDRProcessor is not initialized.";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, v28, v33, 2u);
    goto LABEL_14;
  }

  v23 = re::VideoDefaults::logEnabled(v21);
  if (v23)
  {
    v32 = *re::videoLogObjects(v23);
    v23 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      LOWORD(v33[0]) = 0;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Using Legacy HDRProcessing SPI", v33, 2u);
    }
  }

  if (!*a2)
  {
    v27 = *re::videoLogObjects(v23);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(v33[0]) = 0;
    v28 = "[VideoHDRProcessor::createConfig]: invalid input IO surface.";
    goto LABEL_13;
  }

  if (!*a3)
  {
    v27 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33[0]) = 0;
      v28 = "[VideoHDRProcessor::createConfig]: invalid output IO surface.";
      goto LABEL_13;
    }

LABEL_14:
    v26 = 1;
    goto LABEL_19;
  }

  v24 = IOSurfaceGetPixelFormat(*a3);
  v25 = [*a1 encodeToCommandBuffer:v22 inputSurfaceLayer0:*a2 inputSurfacelayer1:0 outputSurface:*a3 metadata:v24];
  if (v25 == -17000)
  {
    [(re *)v22 commit];
    v26 = 0;
  }

  else
  {
    v29 = v25;
    v30 = *re::videoLogObjects(v25);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33[0] = 67109120;
      v33[1] = v29;
      _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "ran into hdr error: %i", v33, 8u);
    }

    v26 = 1;
  }

LABEL_19:
  return v26;
}

__CFString *anonymous namespace::createSurfaceMetadata(__IOSurface **a1, unsigned int *a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v139 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v17 = *a1;
  v18 = getkHDRProcessingDolbyVisionRPUDataKey();
  v19 = IOSurfaceCopyValue(v17, v18);
  v20 = v19;
  v21 = *a1;
  if (!v21)
  {
    v24 = *re::videoLogObjects(v19);
    v22 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Input surface is null.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (IOSurfaceGetPixelFormat(v21) == 1380411457)
  {
    goto LABEL_3;
  }

  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  *buf = 0u;
  v131 = 0u;
  re::_IOSurfaceGetBulkAttachments(v21, buf);
  if (v27)
  {
    v28 = *re::videoLogObjects(v27);
    v22 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      *v122 = 0;
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Unable to read input surface properties.", v122, 2u);
    }

    goto LABEL_8;
  }

  if (v20 && (BYTE12(v133) & 0xFD) == 0x10)
  {
    v22 = getkHDRProcessingSourceContentTypeDolbyVision();
  }

  else
  {
    if (BYTE12(v133) != 18)
    {
      if (BYTE12(v133) == 16 && BYTE11(v133) <= 0xCu && ((1 << SBYTE11(v133)) & 0x1202) != 0)
      {
LABEL_3:
        v22 = getkHDRProcessingSourceContentTypeHDR10();
        goto LABEL_4;
      }

      v22 = IOSurfaceCopyValue(v21, @"isHLG");
      if (!v22)
      {
        goto LABEL_8;
      }

      v105 = v22;
      Value = CFBooleanGetValue(v22);
      CFRelease(v105);
      if (!Value)
      {
        goto LABEL_8;
      }
    }

    v22 = getkHDRProcessingSourceContentTypeHLG();
  }

LABEL_4:
  v23 = v22;
  if (!v22)
  {
LABEL_8:
    v25 = *re::videoLogObjects(v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Unable to determine HDR content type of input surface.", buf, 2u);
    }

    v26 = 0;
    goto LABEL_77;
  }

  if (re::VideoDefaults::logEnabled(v22))
  {
    goto LABEL_91;
  }

  while (1)
  {
    *v122 = 0;
    v123 = v122;
    v124 = 0x2020000000;
    v29 = _MergedGlobals_576;
    v125 = _MergedGlobals_576;
    if (!_MergedGlobals_576)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&v131 = ___ZL61getkHDRProcessingDisplayPipelineCompensationTypeNoneSymbolLocv_block_invoke;
      *(&v131 + 1) = &unk_1E8722530;
      *&v132 = v122;
      v30 = HDRProcessingLibrary();
      v31 = dlsym(v30, "kHDRProcessingDisplayPipelineCompensationTypeNone");
      *(*(v132 + 8) + 24) = v31;
      _MergedGlobals_576 = *(*(v132 + 8) + 24);
      v29 = *(v123 + 3);
    }

    _Block_object_dispose(v122, 8);
    if (v29)
    {
      v32 = *v29;
      *v122 = 0;
      v123 = v122;
      v124 = 0x2020000000;
      v33 = qword_1EE1C4738;
      v125 = qword_1EE1C4738;
      if (!qword_1EE1C4738)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v131 = ___ZL57getkHDRProcessingDisplayPipelineCompensationTypeSymbolLocv_block_invoke;
        *(&v131 + 1) = &unk_1E8722530;
        *&v132 = v122;
        v34 = HDRProcessingLibrary();
        v35 = dlsym(v34, "kHDRProcessingDisplayPipelineCompensationType");
        *(*(v132 + 8) + 24) = v35;
        qword_1EE1C4738 = *(*(v132 + 8) + 24);
        v33 = *(v123 + 3);
      }

      _Block_object_dispose(v122, 8);
      if (v33)
      {
        [(__CFString *)v16 setValue:v32 forKey:*v33];
        v36 = getkHDRProcessingSourceContentTypeDolbyVision();
        if (v20 && v23 == v36)
        {
          [(__CFString *)v16 setValue:v20 forKey:getkHDRProcessingDolbyVisionRPUDataKey()];
        }

        *&v37 = a8;
        v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
        *v122 = 0;
        v123 = v122;
        v124 = 0x2020000000;
        v39 = qword_1EE1C4740;
        v125 = qword_1EE1C4740;
        if (!qword_1EE1C4740)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&v131 = ___ZL64getkHDRProcessingSourceContentSDRMaxBrightnessInNitsKeySymbolLocv_block_invoke;
          *(&v131 + 1) = &unk_1E8722530;
          *&v132 = v122;
          v40 = HDRProcessingLibrary();
          v41 = dlsym(v40, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
          *(*(v132 + 8) + 24) = v41;
          qword_1EE1C4740 = *(*(v132 + 8) + 24);
          v39 = *(v123 + 3);
        }

        _Block_object_dispose(v122, 8);
        if (v39)
        {
          [(__CFString *)v16 setValue:v38 forKey:*v39];
          *&v42 = a3;
          v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
          *v122 = 0;
          v123 = v122;
          v124 = 0x2020000000;
          v44 = qword_1EE1C4748;
          v125 = qword_1EE1C4748;
          if (!qword_1EE1C4748)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&v131 = ___ZL75getkHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKeySymbolLocv_block_invoke;
            *(&v131 + 1) = &unk_1E8722530;
            *&v132 = v122;
            v45 = HDRProcessingLibrary();
            v46 = dlsym(v45, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
            *(*(v132 + 8) + 24) = v46;
            qword_1EE1C4748 = *(*(v132 + 8) + 24);
            v44 = *(v123 + 3);
          }

          _Block_object_dispose(v122, 8);
          if (v44)
          {
            [(__CFString *)v16 setValue:v43 forKey:*v44];
            *&v47 = a4;
            v48 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
            *v122 = 0;
            v123 = v122;
            v124 = 0x2020000000;
            v49 = qword_1EE1C4750;
            v125 = qword_1EE1C4750;
            if (!qword_1EE1C4750)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&v131 = ___ZL38getkHDRProcessingEDRFactorKeySymbolLocv_block_invoke;
              *(&v131 + 1) = &unk_1E8722530;
              *&v132 = v122;
              v50 = HDRProcessingLibrary();
              v51 = dlsym(v50, "kHDRProcessingEDRFactorKey");
              *(*(v132 + 8) + 24) = v51;
              qword_1EE1C4750 = *(*(v132 + 8) + 24);
              v49 = *(v123 + 3);
            }

            _Block_object_dispose(v122, 8);
            if (v49)
            {
              [(__CFString *)v16 setValue:v48 forKey:*v49];
              *&v52 = a3 * a5;
              v121 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
              *v122 = 0;
              v123 = v122;
              v124 = 0x2020000000;
              v53 = qword_1EE1C4758;
              v125 = qword_1EE1C4758;
              if (!qword_1EE1C4758)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&v131 = ___ZL48getkHDRProcessingCurrentMaxPanelNitsKeySymbolLocv_block_invoke;
                *(&v131 + 1) = &unk_1E8722530;
                *&v132 = v122;
                v54 = HDRProcessingLibrary();
                v55 = dlsym(v54, "kHDRProcessingCurrentMaxPanelNitsKey");
                *(*(v132 + 8) + 24) = v55;
                qword_1EE1C4758 = *(*(v132 + 8) + 24);
                v53 = *(v123 + 3);
              }

              _Block_object_dispose(v122, 8);
              if (v53)
              {
                [(__CFString *)v16 setValue:v121 forKey:*v53];
                *&v56 = a6;
                v120 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
                *v122 = 0;
                v123 = v122;
                v124 = 0x2020000000;
                v57 = qword_1EE1C4760;
                v125 = qword_1EE1C4760;
                if (!qword_1EE1C4760)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&v131 = ___ZL48getkHDRProcessingCurrentMinPanelNitsKeySymbolLocv_block_invoke;
                  *(&v131 + 1) = &unk_1E8722530;
                  *&v132 = v122;
                  v58 = HDRProcessingLibrary();
                  v59 = dlsym(v58, "kHDRProcessingCurrentMinPanelNitsKey");
                  *(*(v132 + 8) + 24) = v59;
                  qword_1EE1C4760 = *(*(v132 + 8) + 24);
                  v57 = *(v123 + 3);
                }

                _Block_object_dispose(v122, 8);
                if (v57)
                {
                  [(__CFString *)v16 setValue:v120 forKey:*v57];
                  *&v60 = a7;
                  v119 = [MEMORY[0x1E696AD98] numberWithFloat:v60];
                  *v122 = 0;
                  v123 = v122;
                  v124 = 0x2020000000;
                  v61 = qword_1EE1C4768;
                  v125 = qword_1EE1C4768;
                  if (!qword_1EE1C4768)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&v131 = ___ZL47getkHDRProcessingAmbientLightInNitsKeySymbolLocv_block_invoke;
                    *(&v131 + 1) = &unk_1E8722530;
                    *&v132 = v122;
                    v62 = HDRProcessingLibrary();
                    v63 = dlsym(v62, "kHDRProcessingAmbientLightInNitsKey");
                    *(*(v132 + 8) + 24) = v63;
                    qword_1EE1C4768 = *(*(v132 + 8) + 24);
                    v61 = *(v123 + 3);
                  }

                  _Block_object_dispose(v122, 8);
                  if (v61)
                  {
                    [(__CFString *)v16 setValue:v119 forKey:*v61];
                    v118 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 20)];
                    *v122 = 0;
                    v123 = v122;
                    v124 = 0x2020000000;
                    v64 = qword_1EE1C4770;
                    v125 = qword_1EE1C4770;
                    if (!qword_1EE1C4770)
                    {
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&v131 = ___ZL53getkHDRProcessingDisplayAdjustsBlackLevelKeySymbolLocv_block_invoke;
                      *(&v131 + 1) = &unk_1E8722530;
                      *&v132 = v122;
                      v65 = HDRProcessingLibrary();
                      v66 = dlsym(v65, "kHDRProcessingDisplayAdjustsBlackLevelKey");
                      *(*(v132 + 8) + 24) = v66;
                      qword_1EE1C4770 = *(*(v132 + 8) + 24);
                      v64 = *(v123 + 3);
                    }

                    _Block_object_dispose(v122, 8);
                    if (v64)
                    {
                      [(__CFString *)v16 setValue:v118 forKey:*v64];
                      v117 = [MEMORY[0x1E696AD98] numberWithInt:0];
                      *v122 = 0;
                      v123 = v122;
                      v124 = 0x2020000000;
                      v67 = qword_1EE1C4778;
                      v125 = qword_1EE1C4778;
                      if (!qword_1EE1C4778)
                      {
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&v131 = ___ZL40getkHDRProcessingOrientationKeySymbolLocv_block_invoke;
                        *(&v131 + 1) = &unk_1E8722530;
                        *&v132 = v122;
                        v68 = HDRProcessingLibrary();
                        v69 = dlsym(v68, "kHDRProcessingOrientationKey");
                        *(*(v132 + 8) + 24) = v69;
                        qword_1EE1C4778 = *(*(v132 + 8) + 24);
                        v67 = *(v123 + 3);
                      }

                      _Block_object_dispose(v122, 8);
                      if (v67)
                      {
                        [(__CFString *)v16 setValue:v117 forKey:*v67];
                        *v122 = 0;
                        v123 = v122;
                        v124 = 0x2020000000;
                        v70 = qword_1EE1C4780;
                        v125 = qword_1EE1C4780;
                        if (!qword_1EE1C4780)
                        {
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&v131 = ___ZL46getkHDRProcessingSourceContentTypeKeySymbolLocv_block_invoke;
                          *(&v131 + 1) = &unk_1E8722530;
                          *&v132 = v122;
                          v71 = HDRProcessingLibrary();
                          v72 = dlsym(v71, "kHDRProcessingSourceContentTypeKey");
                          *(*(v132 + 8) + 24) = v72;
                          qword_1EE1C4780 = *(*(v132 + 8) + 24);
                          v70 = *(v123 + 3);
                        }

                        _Block_object_dispose(v122, 8);
                        if (v70)
                        {
                          v128 = *v70;
                          v129 = v23;
                          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                          v126[0] = getkHDRProcessingDestinationDisplayTypeKey();
                          v127[0] = getkHDRProcessingDestinationDisplayTypeInternalPanel();
                          *v122 = 0;
                          v123 = v122;
                          v124 = 0x2020000000;
                          v73 = qword_1EE1C4788;
                          v125 = qword_1EE1C4788;
                          if (!qword_1EE1C4788)
                          {
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 3221225472;
                            *&v131 = ___ZL56getkHDRProcessingDisplayDiagonalSizeInInchesKeySymbolLocv_block_invoke;
                            *(&v131 + 1) = &unk_1E8722530;
                            *&v132 = v122;
                            v74 = HDRProcessingLibrary();
                            v75 = dlsym(v74, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
                            *(*(v132 + 8) + 24) = v75;
                            qword_1EE1C4788 = *(*(v132 + 8) + 24);
                            v73 = *(v123 + 3);
                          }

                          _Block_object_dispose(v122, 8);
                          if (v73)
                          {
                            v115 = v43;
                            v126[1] = *v73;
                            v76 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
                            v127[1] = v76;
                            *v122 = 0;
                            v123 = v122;
                            v124 = 0x2020000000;
                            v77 = qword_1EE1C4790;
                            v125 = qword_1EE1C4790;
                            if (!qword_1EE1C4790)
                            {
                              *buf = MEMORY[0x1E69E9820];
                              *&buf[8] = 3221225472;
                              *&v131 = ___ZL59getkHDRProcessingDisplayMaximumBrightnessInNitsKeySymbolLocv_block_invoke;
                              *(&v131 + 1) = &unk_1E8722530;
                              *&v132 = v122;
                              v78 = HDRProcessingLibrary();
                              v79 = dlsym(v78, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
                              *(*(v132 + 8) + 24) = v79;
                              qword_1EE1C4790 = *(*(v132 + 8) + 24);
                              v77 = *(v123 + 3);
                            }

                            _Block_object_dispose(v122, 8);
                            if (v77)
                            {
                              v116 = v48;
                              v126[2] = *v77;
                              v80 = [MEMORY[0x1E696AD98] numberWithInt:a2[1]];
                              v127[2] = v80;
                              *v122 = 0;
                              v123 = v122;
                              v124 = 0x2020000000;
                              v81 = qword_1EE1C4798;
                              v125 = qword_1EE1C4798;
                              if (!qword_1EE1C4798)
                              {
                                *buf = MEMORY[0x1E69E9820];
                                *&buf[8] = 3221225472;
                                *&v131 = ___ZL59getkHDRProcessingDisplayAverageBrightnessInNitsKeySymbolLocv_block_invoke;
                                *(&v131 + 1) = &unk_1E8722530;
                                *&v132 = v122;
                                v82 = HDRProcessingLibrary();
                                v83 = dlsym(v82, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
                                *(*(v132 + 8) + 24) = v83;
                                qword_1EE1C4798 = *(*(v132 + 8) + 24);
                                v81 = *(v123 + 3);
                              }

                              _Block_object_dispose(v122, 8);
                              if (v81)
                              {
                                v126[3] = *v81;
                                v84 = [MEMORY[0x1E696AD98] numberWithInt:a2[2]];
                                v127[3] = v84;
                                *v122 = 0;
                                v123 = v122;
                                v124 = 0x2020000000;
                                v85 = qword_1EE1C47A0;
                                v125 = qword_1EE1C47A0;
                                if (!qword_1EE1C47A0)
                                {
                                  *buf = MEMORY[0x1E69E9820];
                                  *&buf[8] = 3221225472;
                                  *&v131 = ___ZL59getkHDRProcessingDisplayMinimumBrightnessInNitsKeySymbolLocv_block_invoke;
                                  *(&v131 + 1) = &unk_1E8722530;
                                  *&v132 = v122;
                                  v86 = HDRProcessingLibrary();
                                  v87 = dlsym(v86, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
                                  *(*(v132 + 8) + 24) = v87;
                                  qword_1EE1C47A0 = *(*(v132 + 8) + 24);
                                  v85 = *(v123 + 3);
                                }

                                _Block_object_dispose(v122, 8);
                                if (v85)
                                {
                                  v113 = v38;
                                  v114 = v16;
                                  v16 = v23;
                                  v89 = v20;
                                  v126[4] = *v85;
                                  LODWORD(v88) = a2[3];
                                  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v88];
                                  v127[4] = v20;
                                  *v122 = 0;
                                  v123 = v122;
                                  v124 = 0x2020000000;
                                  v23 = qword_1EE1C47A8;
                                  v125 = qword_1EE1C47A8;
                                  if (!qword_1EE1C47A8)
                                  {
                                    *buf = MEMORY[0x1E69E9820];
                                    *&buf[8] = 3221225472;
                                    *&v131 = ___ZL49getkHDRProcessingDisplayContrastRatioKeySymbolLocv_block_invoke;
                                    *(&v131 + 1) = &unk_1E8722530;
                                    *&v132 = v122;
                                    v90 = HDRProcessingLibrary();
                                    v91 = dlsym(v90, "kHDRProcessingDisplayContrastRatioKey");
                                    *(*(v132 + 8) + 24) = v91;
                                    qword_1EE1C47A8 = *(*(v132 + 8) + 24);
                                    v23 = *(v123 + 3);
                                  }

                                  _Block_object_dispose(v122, 8);
                                  if (v23)
                                  {
                                    v126[5] = v23->isa;
                                    LODWORD(v92) = a2[4];
                                    v93 = [MEMORY[0x1E696AD98] numberWithFloat:v92];
                                    v127[5] = v93;
                                    v126[6] = getkHDRProcessingDestinationDisplayTypeKey();
                                    v127[6] = getkHDRProcessingDestinationDisplayTypeInternalPanel();
                                    a2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:7];

                                    *v122 = 0;
                                    v123 = v122;
                                    v124 = 0x2020000000;
                                    v94 = qword_1EE1C47B0;
                                    v125 = qword_1EE1C47B0;
                                    if (!qword_1EE1C47B0)
                                    {
                                      *buf = MEMORY[0x1E69E9820];
                                      *&buf[8] = 3221225472;
                                      *&v131 = ___ZL36getkHDRProcessingDisplayKeySymbolLocv_block_invoke;
                                      *(&v131 + 1) = &unk_1E8722530;
                                      *&v132 = v122;
                                      v95 = HDRProcessingLibrary();
                                      v96 = dlsym(v95, "kHDRProcessingDisplayKey");
                                      *(*(v132 + 8) + 24) = v96;
                                      qword_1EE1C47B0 = *(*(v132 + 8) + 24);
                                      v94 = *(v123 + 3);
                                    }

                                    _Block_object_dispose(v122, 8);
                                    if (v94)
                                    {
                                      v20 = v89;
                                      v23 = v16;
                                      v16 = v114;
                                      [(__CFString *)v114 setValue:a2 forKey:*v94];
                                      *v122 = 0;
                                      v123 = v122;
                                      v124 = 0x2020000000;
                                      v97 = qword_1EE1C47B8;
                                      v125 = qword_1EE1C47B8;
                                      if (!qword_1EE1C47B8)
                                      {
                                        *buf = MEMORY[0x1E69E9820];
                                        *&buf[8] = 3221225472;
                                        *&v131 = ___ZL42getkHDRProcessingSourceContentKeySymbolLocv_block_invoke;
                                        *(&v131 + 1) = &unk_1E8722530;
                                        *&v132 = v122;
                                        v98 = HDRProcessingLibrary();
                                        v99 = dlsym(v98, "kHDRProcessingSourceContentKey");
                                        *(*(v132 + 8) + 24) = v99;
                                        qword_1EE1C47B8 = *(*(v132 + 8) + 24);
                                        v97 = *(v123 + 3);
                                      }

                                      _Block_object_dispose(v122, 8);
                                      if (v97)
                                      {
                                        [(__CFString *)v114 setValue:v23 forKey:*v97];
                                        v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:3];
                                        *v122 = 0;
                                        v123 = v122;
                                        v124 = 0x2020000000;
                                        v101 = qword_1EE1C47C0;
                                        v125 = qword_1EE1C47C0;
                                        if (!qword_1EE1C47C0)
                                        {
                                          *buf = MEMORY[0x1E69E9820];
                                          *&buf[8] = 3221225472;
                                          *&v131 = ___ZL39getkHDRProcessingOperationEnumSymbolLocv_block_invoke;
                                          *(&v131 + 1) = &unk_1E8722530;
                                          *&v132 = v122;
                                          v102 = HDRProcessingLibrary();
                                          v103 = dlsym(v102, "kHDRProcessingOperationEnum");
                                          *(*(v132 + 8) + 24) = v103;
                                          qword_1EE1C47C0 = *(*(v132 + 8) + 24);
                                          v101 = *(v123 + 3);
                                        }

                                        _Block_object_dispose(v122, 8);
                                        if (v101)
                                        {
                                          break;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v112 = dlerror();
    abort_report_np();
LABEL_91:
    v107 = [MEMORY[0x1E696AD60] stringWithString:{@"HDR Processing Parameters", v112}];
    [v107 appendFormat:@"\n                 Source Content Type: %s", CFStringGetCStringPtr(v23, 0x8000100u)];
    [v107 appendFormat:@"\n                       Max EDR Value: %f", a3];
    [v107 appendFormat:@"\n                      Max EDR Factor: %f", a4];
    [v107 appendFormat:@"\n                    Current Max Nits: %f", a5];
    [v107 appendFormat:@"\n                        Minimum Nits: %f", a6];
    [v107 appendFormat:@"\n               Ambient Light in Nits: %f", a7];
    [v107 appendFormat:@"\n          SDR Max Brightness in Nits: %f", a8];
    [v107 appendFormat:@"\n     Display Diagonal Size in Inches: %d", *a2];
    [v107 appendFormat:@"\n      Display Max Brightness in Nits: %d", a2[1]];
    [v107 appendFormat:@"\n  Display Average Brightness in Nits: %d", a2[2]];
    [v107 appendFormat:@"\n  Display Minimum Brightness in Nits: %f", *(a2 + 3)];
    v108 = *re::videoLogObjects([v107 appendFormat:@"\n              Display Contrast Ratio: %f", *(a2 + 4)]);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = v107;
      v110 = v108;
      v111 = [v107 cStringUsingEncoding:1];
      *buf = 136315138;
      *&buf[4] = v111;
      _os_log_impl(&dword_1E1C61000, v110, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  [(__CFString *)v114 setValue:v100 forKey:*v101];

  v26 = v114;
LABEL_77:

  return v26;
}

uint64_t re::VideoHDRProcessor::createMSRConfig(re *a1, re **a2, __CVBuffer **a3, unsigned int *a4, uint64_t a5, float a6, float a7, float a8, float a9, float a10, float a11)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    v36 = *re::videoLogObjects(a1);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v37 = "VideoHDRProcessor is not initialized.";
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
    return 1;
  }

  v22 = re::VideoDefaults::logEnabled(a1);
  if (v22)
  {
    v46 = *re::videoLogObjects(v22);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "Using Legacy HDRProcessing SPI", buf, 2u);
    }
  }

  v23 = *a2;
  if (!*a2)
  {
    v36 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v37 = "[VideoHDRProcessor::createConfig]: invalid input pixel buffer.";
    goto LABEL_17;
  }

  if (!*a3)
  {
    v36 = *re::videoLogObjects(v23);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 0;
    v37 = "[VideoHDRProcessor::createConfig]: invalid output pixel buffer.";
    goto LABEL_17;
  }

  IOSurface = CVPixelBufferGetIOSurface(v23);
  CFRetain(IOSurface);
  v49 = IOSurface;
  v25 = *a3;
  if (!*a3)
  {
    v48 = 0;
    if (IOSurface)
    {
      goto LABEL_19;
    }

    v26 = 0;
    goto LABEL_23;
  }

  v26 = CVPixelBufferGetIOSurface(v25);
  v25 = CFRetain(v26);
  v48 = v26;
  if (!IOSurface)
  {
LABEL_23:
    v39 = *re::videoLogObjects(v25);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "[VideoHDRProcessor::createConfig]: invalid input IO surface.", buf, 2u);
      if (!v26)
      {
        return 1;
      }

      goto LABEL_25;
    }

    if (v26)
    {
LABEL_25:
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v48);
    }

    return 1;
  }

  if (!v26)
  {
LABEL_19:
    v38 = *re::videoLogObjects(v25);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "[VideoHDRProcessor::createConfig]: invalid output IO surface.", buf, 2u);
    }

    v35 = 1;
    goto LABEL_33;
  }
  v27 = ;
  v28 = *a1;
  v29 = v49;
  v47 = 0;
  v30 = [v28 generateMSRColorConfigWithOperation:3 inputSurface:v49 outputSurface:v26 metadata:v27 histogram:0 config:&v47];
  v31 = v47;
  v32 = v31;
  if (v30 != -17000)
  {
    v41 = *re::videoLogObjects(v31);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 134217984;
    v51 = v30;
    v42 = "[VideoHDRProcessor::createConfig]: Failed to generate MSR color config with error %ld.";
    v43 = v41;
    v44 = 12;
LABEL_37:
    _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
    goto LABEL_31;
  }

  if (v31)
  {
    CFRetain(v31);
    v33 = [v27 allKeys];
    v34 = [v33 containsObject:getkHDRProcessingDolbyVisionRPUDataKey()];

    re::VideoObject<re::VideoColorTransformBase>::setRef(a5, a5, v29);
    re::VideoObject<re::VideoColorTransformBase>::setRef(a5 + 8, (a5 + 8), v26);
    v35 = 0;
    *(a5 + 24) = v32;
    *(a5 + 64) = v34;
    *(a5 + 48) = re::VideoHDRProcessor::transformSurfaceCompleteCallback;
    *(a5 + 56) = v32;
    goto LABEL_32;
  }

  v45 = *re::videoLogObjects(0);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v42 = "[VideoHDRProcessor::createConfig]: invalid hardware config.";
    v43 = v45;
    v44 = 2;
    goto LABEL_37;
  }

LABEL_31:
  v35 = 1;
LABEL_32:

  re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v48);
  if (v29)
  {
LABEL_33:
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(&v49);
  }

  return v35;
}

Class getkHDRProcessingDolbyVisionRPUDataKey(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr;
  v7 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr;
  if (!getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v5[3] = dlsym(v1, "kHDRProcessingDolbyVisionRPUDataKey");
    getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  v3 = abort_report_np();
  return ___ZL20getHDRProcessorClassv_block_invoke(v3);
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr;
  v7 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr;
  if (!getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v5[3] = dlsym(v1, "kHDRProcessingDolbyVisionRPUDataKey");
    getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  v3 = abort_report_np();
  return ___ZL20getHDRProcessorClassv_block_invoke_0(v3);
}

Class ___ZL20getHDRProcessorClassv_block_invoke(uint64_t a1)
{
  HDRProcessingLibrary();
  result = objc_getClass("HDRProcessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHDRProcessorClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return HDRProcessingLibrary();
  }

  return result;
}

uint64_t HDRProcessingLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HDRProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL24HDRProcessingLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8722550;
    v5 = 0;
    HDRProcessingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = HDRProcessingLibraryCore(char **)::frameworkLibrary;
    if (HDRProcessingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return HDRProcessingLibraryCore(char **)::frameworkLibrary;
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HDRProcessingLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL24HDRProcessingLibraryCorePPc_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8722568;
    v5 = 0;
    HDRProcessingLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = HDRProcessingLibraryCore(char **)::frameworkLibrary;
    if (HDRProcessingLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return HDRProcessingLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL24HDRProcessingLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  HDRProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t getkHDRProcessingSourceContentTypeDolbyVision(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr;
  v6 = getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr;
  if (!getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingSourceContentTypeDolbyVision");
    getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingDestinationDisplayTypeKey();
}

{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr;
  v6 = getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr;
  if (!getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingSourceContentTypeDolbyVision");
    getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingDestinationDisplayTypeKey();
}

uint64_t getkHDRProcessingDestinationDisplayTypeKey(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr;
  v6 = getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr;
  if (!getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingDestinationDisplayTypeKey");
    getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingDestinationDisplayTypeInternalPanel();
}

{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr;
  v6 = getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr;
  if (!getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingDestinationDisplayTypeKey");
    getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingDestinationDisplayTypeInternalPanel();
}

uint64_t getkHDRProcessingDestinationDisplayTypeInternalPanel(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr;
  v6 = getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr;
  if (!getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingDestinationDisplayTypeInternalPanel");
    getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingSourceContentTypeHDR10();
}

{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr;
  v6 = getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr;
  if (!getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingDestinationDisplayTypeInternalPanel");
    getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingSourceContentTypeHDR10();
}

uint64_t getkHDRProcessingSourceContentTypeHDR10(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr;
  v6 = getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr;
  if (!getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingSourceContentTypeHDR10");
    getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingSourceContentTypeHLG();
}

{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr;
  v6 = getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr;
  if (!getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v4[3] = dlsym(v1, "kHDRProcessingSourceContentTypeHDR10");
    getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  abort_report_np();
  return getkHDRProcessingSourceContentTypeHLG();
}

void *getkHDRProcessingSourceContentTypeHLG(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr;
  v7 = getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr;
  if (!getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v5[3] = dlsym(v1, "kHDRProcessingSourceContentTypeHLG");
    getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  v3 = abort_report_np();
  return ___ZL48getkHDRProcessingSourceContentTypeHDR10SymbolLocv_block_invoke(v3);
}

{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr;
  v7 = getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr;
  if (!getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr)
  {
    v1 = HDRProcessingLibrary();
    v5[3] = dlsym(v1, "kHDRProcessingSourceContentTypeHLG");
    getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    return *v0;
  }

  dlerror();
  v3 = abort_report_np();
  return ___ZL48getkHDRProcessingSourceContentTypeHDR10SymbolLocv_block_invoke_0(v3);
}

void *___ZL48getkHDRProcessingSourceContentTypeHDR10SymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeHDR10");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeHDR10SymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkHDRProcessingSourceContentTypeHLGSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeHLG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeHLGSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkHDRProcessingDisplayPipelineCompensationTypeNoneSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayPipelineCompensationTypeNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_576 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL57getkHDRProcessingDisplayPipelineCompensationTypeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayPipelineCompensationType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4738 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkHDRProcessingSourceContentTypeDolbyVisionSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeDolbyVision");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingSourceContentTypeDolbyVisionSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL64getkHDRProcessingSourceContentSDRMaxBrightnessInNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentSDRMaxBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4740 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL75getkHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4748 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL38getkHDRProcessingEDRFactorKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingEDRFactorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4750 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkHDRProcessingCurrentMaxPanelNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingCurrentMaxPanelNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4758 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkHDRProcessingCurrentMinPanelNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingCurrentMinPanelNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4760 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkHDRProcessingAmbientLightInNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingAmbientLightInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4768 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkHDRProcessingDisplayAdjustsBlackLevelKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayAdjustsBlackLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4770 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getkHDRProcessingOrientationKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingOrientationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4778 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkHDRProcessingSourceContentTypeKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4780 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL51getkHDRProcessingDestinationDisplayTypeKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDestinationDisplayTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDestinationDisplayTypeKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDestinationDisplayTypeInternalPanel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDestinationDisplayTypeInternalPanelSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkHDRProcessingDisplayDiagonalSizeInInchesKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayDiagonalSizeInInchesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4788 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayMaximumBrightnessInNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayMaximumBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4790 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayAverageBrightnessInNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayAverageBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C4798 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkHDRProcessingDisplayMinimumBrightnessInNitsKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayMinimumBrightnessInNitsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkHDRProcessingDisplayContrastRatioKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayContrastRatioKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL36getkHDRProcessingDisplayKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDisplayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL42getkHDRProcessingSourceContentKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingSourceContentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkHDRProcessingOperationEnumSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingOperationEnum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EE1C47C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkHDRProcessingDolbyVisionRPUDataKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDolbyVisionRPUDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CVBuffer *re::VideoPixelBufferTextureBase::asMetalTexture(__CVBuffer **this)
{
  v2 = *this;
  if (v2)
  {
    v2 = CVMetalTextureGetTexture(v2);
    v1 = vars8;
  }

  return v2;
}

BOOL re::VideoPixelFormatDescriptionBase::BOOLeanValue(const __CFDictionary **this, const __CFString *a2, uint64_t a3)
{
  v4 = *this;
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  return a3;
}

void re::VideoColorManager::~VideoColorManager(re::VideoColorManager *this)
{
  re::VideoColorManager::clear(this);
  re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::deinit(this + 464);
  re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::deinit(this + 144);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 12);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 6);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this);
}

double re::VideoColorManager::clear(re::VideoColorManager *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 14);
    while (1)
    {
      v5 = *v4;
      v4 += 10;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    LODWORD(v6) = *(this + 32);
  }

  else
  {
    LODWORD(v6) = *(this + 32);
    do
    {
      v7 = *(*(this + 14) + 40 * v3 + 24);
      if (v7)
      {
        CFRelease(v7);
        LODWORD(v6) = *(this + 32);
      }

      if (v6 <= v3 + 1)
      {
        v8 = v3 + 1;
      }

      else
      {
        v8 = v6;
      }

      while (v8 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 14) + 40 * v3) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v3) = v8;
LABEL_19:
      ;
    }

    while (v3 != v2);
  }

  if (*(this + 31))
  {
    v9 = *(this + 30);
    if (v9)
    {
      memset_pattern16(*(this + 13), &unk_1E304C660, 4 * v9);
      LODWORD(v6) = *(this + 32);
    }

    if (v6)
    {
      v10 = *(this + 14);
      v6 = v6;
      do
      {
        if ((*v10 & 0x80000000) != 0)
        {
          *v10 &= ~0x80000000;
        }

        v10 += 10;
        --v6;
      }

      while (v6);
    }

    *(this + 31) = 0;
    *(this + 32) = 0;
    v11 = *(this + 34) + 1;
    *(this + 33) = 0x7FFFFFFF;
    *(this + 34) = v11;
  }

  v12 = *(this + 20);
  if (v12)
  {
    v13 = 0;
    v14 = *(this + 8);
    while (1)
    {
      v15 = *v14;
      v14 += 6;
      if (v15 < 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *(this + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 == v12)
  {
    LODWORD(v16) = *(this + 20);
  }

  else
  {
    LODWORD(v16) = *(this + 20);
    do
    {
      v17 = *(*(this + 8) + 24 * v13 + 8);
      if (v17)
      {
        CFRelease(v17);
        LODWORD(v16) = *(this + 20);
      }

      if (v16 <= v13 + 1)
      {
        v18 = v13 + 1;
      }

      else
      {
        v18 = v16;
      }

      while (v18 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(*(this + 8) + 24 * v13) & 0x80000000) != 0)
        {
          goto LABEL_47;
        }
      }

      LODWORD(v13) = v18;
LABEL_47:
      ;
    }

    while (v13 != v12);
  }

  if (*(this + 19))
  {
    v19 = *(this + 18);
    if (v19)
    {
      memset_pattern16(*(this + 7), &unk_1E304C660, 4 * v19);
      LODWORD(v16) = *(this + 20);
    }

    if (v16)
    {
      v20 = *(this + 8);
      v16 = v16;
      do
      {
        if ((*v20 & 0x80000000) != 0)
        {
          *v20 &= ~0x80000000;
        }

        v20 += 6;
        --v16;
      }

      while (v16);
    }

    *(this + 19) = 0;
    *(this + 20) = 0;
    v21 = *(this + 22) + 1;
    *(this + 21) = 0x7FFFFFFF;
    *(this + 22) = v21;
  }

  v22 = *(this + 8);
  if (v22)
  {
    v23 = 0;
    v24 = *(this + 2);
    while (1)
    {
      v25 = *v24;
      v24 += 6;
      if (v25 < 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        LODWORD(v23) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  if (v23 == v22)
  {
    LODWORD(v26) = *(this + 8);
  }

  else
  {
    LODWORD(v26) = *(this + 8);
    do
    {
      v27 = *(*(this + 2) + 24 * v23 + 8);
      if (v27)
      {
        CFRelease(v27);
        LODWORD(v26) = *(this + 8);
      }

      if (v26 <= v23 + 1)
      {
        v28 = v23 + 1;
      }

      else
      {
        v28 = v26;
      }

      while (v28 - 1 != v23)
      {
        LODWORD(v23) = v23 + 1;
        if ((*(*(this + 2) + 24 * v23) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }
      }

      LODWORD(v23) = v28;
LABEL_75:
      ;
    }

    while (v23 != v22);
  }

  if (*(this + 7))
  {
    v29 = *(this + 6);
    if (v29)
    {
      memset_pattern16(*(this + 1), &unk_1E304C660, 4 * v29);
      LODWORD(v26) = *(this + 8);
    }

    if (v26)
    {
      v30 = *(this + 2);
      v26 = v26;
      do
      {
        if ((*v30 & 0x80000000) != 0)
        {
          *v30 &= ~0x80000000;
        }

        v30 += 6;
        --v26;
      }

      while (v26);
    }

    *(this + 7) = 0;
    *(this + 8) = 0;
    v31 = *(this + 10) + 1;
    *(this + 9) = 0x7FFFFFFF;
    *(this + 10) = v31;
  }

  if (*(this + 43))
  {
    v32 = *(this + 42);
    if (v32)
    {
      memset_pattern16(*(this + 19), &unk_1E304C660, 4 * v32);
    }

    if (*(this + 44))
    {
      v33 = 0;
      do
      {
        re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::free(this + 144, v33++);
      }

      while (v33 < *(this + 44));
    }

    *(this + 43) = 0;
    *(this + 44) = 0;
    v34 = *(this + 46) + 1;
    *(this + 45) = 0x7FFFFFFF;
    *(this + 46) = v34;
  }

  *(this + 56) = 0;
  *(this + 57) = 0;
  if (*(this + 123))
  {
    v35 = *(this + 122);
    if (v35)
    {
      memset_pattern16(*(this + 59), &unk_1E304C660, 4 * v35);
    }

    if (*(this + 124))
    {
      v36 = 0;
      do
      {
        re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::free(this + 464, v36++);
      }

      while (v36 < *(this + 124));
    }

    *(this + 125) = 0x7FFFFFFF;
    *(this + 492) = 0;
    ++*(this + 126);
  }

  result = 0.0;
  *(this + 160) = 0u;
  return result;
}

uint64_t re::VideoColorManager::computeTransform(uint64_t a1, __CVBuffer **a2, unsigned __int8 a3, const void **a4)
{
  v7 = re::VideoColorManager::colorSyncProfileForPixelBuffer(a1, a2);
  v8 = re::VideoColorManager::colorSyncProfileForColorGamut(a1, a3);

  return re::VideoColorManager::computeTransform(a1, v7, v8, a4);
}

CGColorSpace *re::VideoColorManager::colorSyncProfileForPixelBuffer(uint64_t a1, __CVBuffer **this)
{
  v4 = re::VideoPixelBufferBase::colorTags(this);
  v11 = v4;
  v12 = BYTE2(v4);
  v5 = re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::tryGet(a1, &v11);
  if (v5)
  {
    return *v5;
  }

  result = re::VideoPixelBufferBase::colorSpace(this);
  if (result)
  {
    v7 = result;
    v8 = CGColorSpaceCopyICCData(result);
    if (v8)
    {
      v9 = v8;
      v10 = ColorSyncProfileCreate(v8, 0);
      CFRelease(v9);
      CFRelease(v7);
      if (v10)
      {
        re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::addNew(a1, &v11, &v10);
        return v10;
      }
    }

    else
    {
      CFRelease(v7);
    }

    return 0;
  }

  return result;
}

const __CFData *re::VideoColorManager::colorSyncProfileForColorGamut(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  v3 = re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::tryGet(a1 + 48, &v8);
  if (v3)
  {
    return *v3;
  }

  CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(v8);
  result = CGColorSpaceCopyICCData(CGColorSpaceFromWorkingColorGamut);
  if (result)
  {
    v6 = result;
    v7 = ColorSyncProfileCreate(result, 0);
    CFRelease(v6);
    if (v7)
    {
      re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::addNew(a1 + 48, &v8, &v7);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::VideoColorManager::computeTransform(uint64_t a1, const void *a2, const void *a3, const void **a4)
{
  result = 1;
  if (a2 && a3)
  {
    *&v29 = a2;
    *(&v29 + 1) = a3;
    v9 = re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>::operator()(&v29);
    re::HashTable<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>,__CFArray const*,re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,re::EqualTo<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,true,false>::findEntry<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>(buf, a1 + 96, &v29, v9);
    if (HIDWORD(v31) == 0x7FFFFFFF)
    {
      v28 = a4;
      v10 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, 0, 0);
      v12 = MEMORY[0x1E695BBD0];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BBD0], a2);
      v13 = MEMORY[0x1E695BBD8];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BBD8], *MEMORY[0x1E695BBE0]);
      v14 = MEMORY[0x1E695BC18];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BC18], *MEMORY[0x1E695BC00]);
      v15 = MEMORY[0x1E695BB18];
      v16 = *MEMORY[0x1E695E4C0];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695BB18], *MEMORY[0x1E695E4C0]);
      v17 = CFDictionaryCreateMutable(v10, 4, 0, 0);
      CFDictionaryAddValue(v17, *v12, a3);
      CFDictionaryAddValue(v17, *v13, *MEMORY[0x1E695BBE8]);
      CFDictionaryAddValue(v17, *v14, *MEMORY[0x1E695BC10]);
      CFDictionaryAddValue(v17, *v15, v16);
      v18 = CFArrayCreateMutable(0, 2, 0);
      CFArraySetValueAtIndex(v18, 0, Mutable);
      CFArraySetValueAtIndex(v18, 1, v17);
      v20 = 0;
      if (re::VideoDefaults::useBT1886ForCoreVideoGamma(v19))
      {
        v20 = CFDictionaryCreateMutable(v10, 1, 0, 0);
        CFDictionaryAddValue(v20, *MEMORY[0x1E695BC20], *MEMORY[0x1E695E4D0]);
      }

      v21 = ColorSyncTransformCreate(v18, v20);
      if (v21)
      {
        v22 = v21;
        v23 = MEMORY[0x1E6903650](v21, *MEMORY[0x1E695BC08], 0);
        if (v23)
        {
          *buf = 0;
          v31 = 0;
          v32 = 0;
          v24 = re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>::operator()(&v29);
          re::HashTable<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>,__CFArray const*,re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,re::EqualTo<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,true,false>::findEntry<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>(buf, a1 + 96, &v29, v24);
          if (HIDWORD(v31) == 0x7FFFFFFF)
          {
            v25 = re::HashTable<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>,__CFArray const*,re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,re::EqualTo<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,true,false>::allocEntry(a1 + 96, v31, *buf);
            *(v25 + 8) = v29;
            *(v25 + 24) = v23;
            ++*(a1 + 136);
          }
        }

        CFRelease(v22);
      }

      else
      {
        v26 = re::VideoDefaults::logEnabled(0);
        if (v26)
        {
          v27 = *re::videoLogObjects(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "[VideoColorManager::computeTransform]: color transformation failed to create", buf, 2u);
          }
        }

        v23 = 0;
      }

      a4 = v28;
      if (v20)
      {
        CFRelease(v20);
      }

      CFRelease(v18);
      CFRelease(Mutable);
      CFRelease(v17);
      if (!v23)
      {
        return 1;
      }
    }

    else
    {
      v23 = *(*(a1 + 112) + 40 * HIDWORD(v31) + 24);
      if (!v23)
      {
        return 1;
      }
    }

    if (*a4)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a4);
    }

    *a4 = v23;
    CFRetain(v23);
    return 0;
  }

  return result;
}

uint64_t re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::tryGet(uint64_t a1, unsigned __int8 *a2)
{
  v4 = re::Hash<re::VideoColorTags>::operator()(v6, a2);
  re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::findEntry<re::VideoColorTags>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v7 + 8;
  }
}

uint64_t re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::addNew(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::VideoColorTags>::operator()(&v13, a2);
  re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::findEntry<re::VideoColorTags>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v11) + 8;
  }

  v7 = re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 6) = a2[2];
  *(v7 + 4) = v8;
  *(v7 + 8) = *a3;
  result = v7 + 8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::tryGet(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 73244475 * ((73244475 * *a2) ^ ((73244475 * *a2) >> 16));
  re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>(a1, a2, v3 ^ HIWORD(v3), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

uint64_t re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::addNew(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 73244475 * ((73244475 * *a2) ^ ((73244475 * *a2) >> 16));
  re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>(a1, a2, v6 ^ HIWORD(v6), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v11) + 8;
  }

  v7 = re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *a3;
  result = v7 + 8;
  *(result - 4) = v8;
  ++*(a1 + 40);
  return result;
}

void re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v66 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v7 = v4;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::tryGet(v1 + 464, v4);
    if (v11)
    {

      re::TextureHandle::TextureHandle(v6, (v11 + 8));
      return;
    }

    v13 = *(v7 + 4);
    v14 = *(v7 + 8);
    v15 = *(v7 + 12);
    v16 = *(v7 + 16);
    v65 = 0;
    v17 = *v7;
    if (*v7 <= 2)
    {
      if (v17 == 1)
      {
        v58 = &unk_1F5D1ADB0;
        v59 = v13;
      }

      else
      {
        if (v17 != 2)
        {
LABEL_21:
          v18 = re::VideoPlatform::Maximum1DTextureSize(v11);
          if (v18 >> 14)
          {
            v19 = 15361;
          }

          else
          {
            v19 = 7681;
          }

          v49 = re::VideoPlatform::Maximum1DTextureSize(v18);
          v52 = 0;
          v20 = re::TextureHandle::InvalidHandle(v49);
          re::TextureHandle::TextureHandle(v6, v20);
          v21 = v10 + 512;
          v22 = *(v10 + 321);
          v23 = *(v10 + 320);
          v24 = &selRef_setOwnerWithIdentity_;
          if (v22 - v23 == 64)
          {
            v25 = &v21[32 * (*(v10 + 320) & 0x3FLL)];
            v26 = re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::tryGet(v10 + 464, v25);
            if (v26)
            {
              v27 = v26;
              if ([*v26 width] == v19)
              {
                NS::SharedPtr<MTL::Buffer>::operator=(&v52, v27);
                re::TextureHandle::operator=(v6, (v27 + 1));
              }
            }

            v28 = re::Hash<re::VideoGammaToneCurve>::operator()(v25);
            re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::findEntry<re::VideoGammaToneCurve>(&v58, v10 + 464, v25, v28);
            v29 = v60;
            v24 = &selRef_setOwnerWithIdentity_;
            if (v60 != 0x7FFFFFFF)
            {
              v30 = *(v10 + 60);
              v31 = *(v30 + 72 * v60) & 0x7FFFFFFF;
              if (v61 == 0x7FFFFFFF)
              {
                *(*(v10 + 59) + 4 * v59) = v31;
              }

              else
              {
                *(v30 + 72 * v61) = *(v30 + 72 * v61) & 0x80000000 | v31;
              }

              re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::free(v10 + 464, v29);
              *(*(v10 + 60) + 72 * v29) = *(*(v10 + 60) + 72 * v29) & 0x80000000 | *(v10 + 125);
              *(v10 + 125) = v29;
              --*(v10 + 123);
              ++*(v10 + 126);
            }

            v22 = *(v10 + 321);
            v23 = *(v10 + 320);
          }

          if (v22 - v23 == 64)
          {
            *(v10 + 320) = v22 - 63;
          }

          *(v10 + 321) = v22 + 1;
          v32 = &v21[32 * (v22 & 0x3F)];
          v33 = *(v7 + 16);
          *v32 = *v7;
          *(v32 + 1) = v33;
          if (!v52)
          {
            v34 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
            [v34 setWidth_];
            [v34 setPixelFormat_];
            [v34 setUsage_];
            [v34 setStorageMode_];
            [v34 setTextureType_];
            [v34 setArrayLength_];
            [v34 setProtectionOptions_];
            re::mtl::Device::makeTexture(v34, v9, &v58);
            NS::SharedPtr<MTL::Texture>::operator=(&v52, &v58);
            if (v58)
            {
            }

            if (v34)
            {
            }
          }

          for (i = 0; i != v19; ++i)
          {
            _H0 = i << (v49 < 0x4000);
            __asm { FCVT            S0, H0 }

            LODWORD(v53) = _S0;
            if (!v65)
            {
              std::__throw_bad_function_call[abi:nn200100]();
            }

            v42 = (*(*v65 + 48))(v65, &v53);
            if (v42 > 1.0)
            {
              v42 = 1.0;
            }

            if (v42 < 0.0)
            {
              v42 = 0.0;
            }

            *(&v58 + i) = v42;
          }

          v43 = 4 * v19;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v19;
          v57 = vdupq_n_s64(1uLL);
          [v52 replaceRegion:&v53 mipmapLevel:0 slice:0 withBytes:&v58 bytesPerRow:4 * v19 bytesPerImage:4 * v19];
          v44 = [v52 v24[339]];
          v45 = [v52 height];
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = v44;
          v57.i64[0] = v45;
          v57.i64[1] = 1;
          [v52 replaceRegion:&v53 mipmapLevel:0 withBytes:&v58 bytesPerRow:v43];
          if (!*(v6 + 1) || !*v6)
          {
            re::TextureManager::registerTexture(v8, &v52, &v53);
            re::TextureHandle::operator=(v6, &v53);
            re::TextureHandle::invalidate(&v53);
          }

          v50 = 0;
          v51[0] = 0;
          v51[1] = 0;
          NS::SharedPtr<MTL::Buffer>::operator=(&v50, &v52);
          re::TextureHandle::operator=(v51, v6);
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v46 = re::Hash<re::VideoGammaToneCurve>::operator()(v7);
          re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::findEntry<re::VideoGammaToneCurve>(&v53, v10 + 464, v7, v46);
          if (HIDWORD(v54) == 0x7FFFFFFF)
          {
            v47 = re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::allocEntry(v10 + 464, v54, v53);
            v48 = *(v7 + 16);
            *(v47 + 4) = *v7;
            *(v47 + 20) = v48;
            *(v47 + 40) = v50;
            re::TextureHandle::TextureHandle((v47 + 48), v51);
            ++*(v10 + 126);
          }

          re::TextureHandle::invalidate(v51);
          if (v50)
          {
          }

          if (v52)
          {
          }

          std::__function::__value_func<float ()(float)>::~__value_func[abi:nn200100](v64);
          return;
        }

        v58 = &unk_1F5D1AE40;
        v59 = v13;
        v60 = v14;
        v61 = v15;
      }
    }

    else
    {
      if (v17 != 3)
      {
        if (v17 == 4)
        {
          operator new();
        }

        if (v17 == 5)
        {
          operator new();
        }

        goto LABEL_21;
      }

      v58 = &unk_1F5D1AEC0;
      v59 = v13;
      v60 = v14;
      v61 = v15;
      v62 = v16;
    }

    v63 = &v58;
    std::__function::__value_func<float ()(float)>::swap[abi:nn200100](&v58, v64);
    v11 = std::__function::__value_func<float ()(float)>::~__value_func[abi:nn200100](&v58);
    goto LABEL_21;
  }

  v12 = *re::videoLogObjects(v1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v58) = 0;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Unable to create texture handle for power function.", &v58, 2u);
  }

  *v6 = 0;
  *(v6 + 1) = 0;
}

uint64_t re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::VideoGammaToneCurve>::operator()(a2);
  re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::findEntry<re::VideoGammaToneCurve>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v7 + 40;
  }
}

void re::VideoColorManager::computeBoostPowerFunctionTable(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  if (v3)
  {
    v7 = v3;
    v8 = v2;
    v9 = v1;
    v10 = roundf(v4 * 200.0) / 200.0;
    v53 = v10;
    v11 = re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::tryGet(v1 + 144, &v53);
    if (v11)
    {
      re::TextureHandle::TextureHandle(v6, (v11 + 8));
    }

    else
    {
      v13 = re::VideoPlatform::Maximum1DTextureSize(0);
      if (v13 >> 14)
      {
        v14 = 15361;
      }

      else
      {
        v14 = 7681;
      }

      v15 = re::VideoPlatform::Maximum1DTextureSize(v13);
      v52 = 0;
      v16 = re::TextureHandle::InvalidHandle(v15);
      re::TextureHandle::TextureHandle(v6, v16);
      v17 = v9 + 192;
      v19 = *(v9 + 56);
      v18 = *(v9 + 57);
      if (v18 - v19 == 64)
      {
        v20 = &v17[4 * (*(v9 + 56) & 0x3FLL)];
        v21 = re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::tryGet(v9 + 144, v20);
        if (v21)
        {
          v22 = v21;
          if ([*v21 width] == v14)
          {
            NS::SharedPtr<MTL::Buffer>::operator=(&v52, v22);
            re::TextureHandle::operator=(v6, (v22 + 1));
          }
        }

        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v20 ^ (*v20 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v20 ^ (*v20 >> 30))) >> 27));
        re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::findEntry<float>(&v48, v9 + 144, v23 ^ (v23 >> 31), *v20);
        v24 = v50;
        if (v50 != 0x7FFFFFFF)
        {
          v25 = *(v9 + 20);
          v26 = *(v25 + 40 * v50) & 0x7FFFFFFF;
          if (v51 == 0x7FFFFFFF)
          {
            *(*(v9 + 19) + 4 * v49) = v26;
          }

          else
          {
            *(v25 + 40 * v51) = *(v25 + 40 * v51) & 0x80000000 | v26;
          }

          re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::free(v9 + 144, v24);
          *(*(v9 + 20) + 40 * v24) = *(*(v9 + 20) + 40 * v24) & 0x80000000 | *(v9 + 45);
          --*(v9 + 43);
          v27 = *(v9 + 46) + 1;
          *(v9 + 45) = v24;
          *(v9 + 46) = v27;
        }

        v19 = *(v9 + 56);
        v18 = *(v9 + 57);
      }

      if (v18 - v19 == 64)
      {
        *(v9 + 56) = v18 - 63;
      }

      *(v9 + 57) = v18 + 1;
      *&v17[4 * (v18 & 0x3F)] = v10;
      if (!v52)
      {
        v28 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
        [v28 setWidth_];
        [v28 setPixelFormat_];
        [v28 setUsage_];
        [v28 setStorageMode_];
        [v28 setTextureType_];
        [v28 setArrayLength_];
        [v28 setProtectionOptions_];
        re::mtl::Device::makeTexture(v28, v8, &v48);
        NS::SharedPtr<MTL::Texture>::operator=(&v52, &v48);
        if (v48)
        {
        }

        if (v28)
        {
        }
      }

      v29 = 0;
      LODWORD(v48) = 0;
      v42 = vdupq_n_s64(v14 - 2);
      v30 = vdup_n_s32(v15 < 0x4000);
      v31 = 0x200000001;
      v32 = vdup_n_s32(0x46800000u);
      do
      {
        v45 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(vdupq_n_s64(v29), xmmword_1E3049620)));
        v33 = vshl_u32(v31, v30);
        v43 = vcvtq_f32_f16(vuzp1_s16(v33, v33)).u64[0];
        v44 = powf(*&v43, v10 + -1.0);
        v34 = powf(*(&v43 + 1), v10 + -1.0);
        v35 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v34), LODWORD(v44)), v32), v32, __PAIR64__(LODWORD(v34), LODWORD(v44)));
        if (v45.i8[0])
        {
          if (*v35.i32 >= 0.0)
          {
            v36 = *v35.i32;
          }

          else
          {
            v36 = 0.0;
          }

          *(&v48 + v29 + 1) = v36;
        }

        if (v45.i8[4])
        {
          v35.i32[0] = v35.i32[1];
          if (*&v35.i32[1] < 0.0)
          {
            *v35.i32 = 0.0;
          }

          *(&v48 + v29 + 2) = v35.i32[0];
        }

        v29 += 2;
        v31 = vadd_s32(v31, 0x200000002);
      }

      while (v14 - 1 != v29);
      v37 = 4 * v14;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = v14;
      v58 = vdupq_n_s64(1uLL);
      [v52 replaceRegion:&v54 mipmapLevel:0 slice:0 withBytes:&v48 bytesPerRow:4 * v14 bytesPerImage:4 * v14];
      v38 = [v52 width];
      v39 = [v52 height];
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = v38;
      v58.i64[0] = v39;
      v58.i64[1] = 1;
      [v52 replaceRegion:&v54 mipmapLevel:0 withBytes:&v48 bytesPerRow:v37];
      if (!*(v6 + 1) || !*v6)
      {
        re::TextureManager::registerTexture(v7, &v52, &v54);
        re::TextureHandle::operator=(v6, &v54);
        re::TextureHandle::invalidate(&v54);
      }

      v46 = 0;
      v47[0] = 0;
      v47[1] = 0;
      NS::SharedPtr<MTL::Buffer>::operator=(&v46, &v52);
      re::TextureHandle::operator=(v47, v6);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (LODWORD(v10) ^ (LODWORD(v10) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (LODWORD(v10) ^ (LODWORD(v10) >> 30))) >> 27));
      re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::findEntry<float>(&v54, v9 + 144, v40 ^ (v40 >> 31), v10);
      if (HIDWORD(v55) == 0x7FFFFFFF)
      {
        v41 = re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::allocEntry(v9 + 144, v55, v54);
        *(v41 + 4) = v10;
        *(v41 + 8) = v46;
        re::TextureHandle::TextureHandle((v41 + 16), v47);
        ++*(v9 + 46);
      }

      re::TextureHandle::invalidate(v47);
      if (v46)
      {
      }

      if (v52)
      {
      }
    }
  }

  else
  {
    v12 = *re::videoLogObjects(v1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v48) = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Unable to create texture handle for power function.", &v48, 2u);
    }

    *v6 = 0;
    *(v6 + 1) = 0;
  }
}

uint64_t re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::tryGet(uint64_t a1, float *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) >> 27));
  re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::findEntry<float>(v5, a1, v3 ^ (v3 >> 31), *a2);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 8;
  }
}

double re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<float,re::VideoColorManager::TableEntry,re::Hash<float>,re::EqualTo<float>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 40 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::TextureHandle::invalidate((v2 + 16));
    v3 = *(v2 + 8);
    if (v3)
    {

      *(v2 + 8) = 0;
    }
  }
}

double re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 72 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::TextureHandle::invalidate((v2 + 48));
    v3 = *(v2 + 40);
    if (v3)
    {

      *(v2 + 40) = 0;
    }
  }
}

uint64_t re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::findEntry<re::VideoColorTags>@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      result = v8 + 24 * v6;
      if (*(result + 6) == a2[2] && *(result + 4) == *a2)
      {
        result = *(result + 5);
        if (result == a2[1])
        {
          break;
        }
      }

      v6 = *(v8 + 24 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

unint64_t re::Hash<re::VideoColorTags>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 73244475 * ((73244475 * a2[2]) ^ ((73244475 * a2[2]) >> 16));
  v3 = 73244475 * ((73244475 * *a2) ^ ((73244475 * *a2) >> 16));
  v4 = 73244475 * ((73244475 * a2[1]) ^ ((73244475 * a2[1]) >> 16));
  return (((v2 ^ HIWORD(v2)) << 6) + ((v2 ^ HIWORD(v2)) >> 2) - 0x61C8864680B583E9 + (((v4 ^ HIWORD(v4)) + ((v3 ^ HIWORD(v3)) << 6) + ((v3 ^ HIWORD(v3)) >> 2) - 0x61C8864680B583E9) ^ v3 ^ HIWORD(v3))) ^ v2 ^ HIWORD(v2);
}

uint64_t re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::VideoColorTags,ColorSyncProfile const*,re::Hash<re::VideoColorTags>,re::EqualTo<re::VideoColorTags>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                v20 = *(v18 - 2);
                *(v19 + 6) = *(v18 - 2);
                *(v19 + 4) = v20;
                *(v19 + 8) = *v18;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 24 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 16) = a3;
  ++*(a1 + 28);
  return v21 + 24 * v5;
}

uint64_t re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ColorGamut,ColorSyncProfile const*,re::Hash<re::ColorGamut>,re::EqualTo<re::ColorGamut>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 4) = *(v18 - 4);
                *(v19 + 8) = *v18;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 24 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 16) = a3;
  ++*(a1 + 28);
  return v20 + 24 * v5;
}

uint64_t re::HashTable<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>,__CFArray const*,re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,re::EqualTo<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,true,false>::findEntry<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>(uint64_t result, uint64_t a2, CFTypeRef *a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v8) = 0;
    goto LABEL_9;
  }

  v8 = a4 % *(a2 + 24);
  v9 = *(*(a2 + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_9:
    v12 = 0x7FFFFFFF;
    goto LABEL_10;
  }

  v11 = *(a2 + 16);
  v6 = 0x7FFFFFFF;
  v12 = 0x7FFFFFFF;
  while (1)
  {
    v13 = v9;
    v14 = v11 + 40 * v9;
    v16 = *(v14 + 8);
    v15 = v14 + 8;
    result = CFEqual(v16, *a3);
    if (result)
    {
      result = CFEqual(*(v15 + 8), a3[1]);
      if (result)
      {
        break;
      }
    }

    v11 = *(a2 + 16);
    v9 = *(v11 + 40 * v13) & 0x7FFFFFFF;
    v12 = v13;
    if (v9 == 0x7FFFFFFF)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  v6 = v13;
LABEL_10:
  *v5 = a4;
  *(v5 + 8) = v8;
  *(v5 + 12) = v6;
  *(v5 + 16) = v12;
  return result;
}

uint64_t re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>::operator()(CFTypeRef *a1)
{
  v2 = CFHash(*a1);
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = CFHash(a1[1]);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  return ((v4 << 6) + (v4 >> 2) + (v6 ^ (v6 >> 31)) - 0x61C8864680B583E9) ^ v4;
}

uint64_t re::HashTable<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>,__CFArray const*,re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,re::EqualTo<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 3) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>,__CFArray const*,re::Hash<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,re::EqualTo<re::Pair<ColorSyncProfile const*,ColorSyncProfile const*,true>>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 24) = *v18;
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

uint64_t re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::findEntry<re::VideoGammaToneCurve>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 72 * v6;
      v12 = *(v10 + 4);
      v11 = (v10 + 4);
      if (v12 == *a3 && v11[1] == *(a3 + 4) && v11[2] == *(a3 + 8) && v11[3] == *(a3 + 12) && v11[4] == *(a3 + 16) && v11[5] == *(a3 + 20) && v11[6] == *(a3 + 24) && v11[7] == *(a3 + 28))
      {
        break;
      }

      v6 = *(v8 + 72 * v9) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_15;
      }
    }

    v5 = v9;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_15:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::VideoGammaToneCurve>::operator()(uint64_t a1)
{
  v1.i32[0] = *(a1 + 12);
  v1.i32[1] = *a1;
  v2 = 73244475 * (*(a1 + 16) ^ (*(a1 + 16) >> 16));
  v3 = vrev64_s32(vcvt_u32_f32(*(a1 + 4)));
  v4 = vdup_n_s32(0x45D9F3Bu);
  v5 = vmul_s32(veor_s8(vshr_n_u32(v3, 0x10uLL), v3), v4);
  v6 = vmul_s32(veor_s8(vshr_n_u32(v5, 0x10uLL), v5), v4);
  v7 = veor_s8(vshr_n_u32(v6, 0x10uLL), v6);
  v8 = vmul_s32(veor_s8(vshr_n_u32(v1, 0x10uLL), v1), v4);
  v9 = vmul_s32(veor_s8(vshr_n_u32(v8, 0x10uLL), v8), v4);
  v10 = veor_s8(vshr_n_u32(v9, 0x10uLL), v9);
  v11 = vdupq_n_s64(0x9E3779B97F4A7C17);
  v12.i64[0] = vaddw_u32(v11, v10).u64[0];
  v12.i64[1] = vshll_n_u32(v10, 6uLL).i64[1];
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v14.i64[1] = v10.u32[1];
  v11.i64[0] = v7.u32[0] << 6;
  v15 = vaddq_s64(v12, v11);
  v12.i64[0] = v7.u32[0];
  v12.i64[1] = v10.u32[1];
  v16 = vsraq_n_u64(v15, v12, 2uLL);
  v12.i64[0] = veorq_s8(v16, v13).u64[0];
  v12.i64[1] = vaddw_u32(*&v16, v7).i64[1];
  v14.i64[0] = ((73244475 * (v2 ^ HIWORD(v2))) ^ ((73244475 * (v2 ^ HIWORD(v2))) >> 16)) + (v12.i64[0] << 6) + (v12.i64[0] >> 2) - 0x61C8864680B583E9;
  v17 = veorq_s8(v12, v14);
  v18 = ((v17.i64[1] << 6) + (v17.i64[1] >> 2) + v17.i64[0] - 0x61C8864680B583E9) ^ v17.i64[1];
  v19 = 73244475 * (*(a1 + 20) ^ (*(a1 + 20) >> 16));
  v20 = (((73244475 * (v19 ^ HIWORD(v19))) ^ ((73244475 * (v19 ^ HIWORD(v19))) >> 16)) + (v18 << 6) + (v18 >> 2) - 0x61C8864680B583E9) ^ v18;
  *v17.i8 = vcvt_u32_f32(*(a1 + 24));
  *v17.i8 = vmul_s32(veor_s8(vshr_n_u32(*v17.i8, 0x10uLL), *v17.i8), v4);
  *v17.i8 = vmul_s32(veor_s8(vshr_n_u32(*v17.i8, 0x10uLL), *v17.i8), v4);
  *v17.i8 = veor_s8(vshr_n_u32(*v17.i8, 0x10uLL), *v17.i8);
  return (((v17.u32[1] + (v17.u32[0] << 6) + (v17.u32[0] >> 2) - 0x61C8864680B583E9) ^ v17.u32[0]) + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583E9) ^ v20;
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_0,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_0>,float ()(float)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5D1ADB0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_0,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_0>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<float ()(float)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_1,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_1>,float ()(float)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5D1AE40;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  return result;
}

float std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_1,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_1>,float ()(float)>::operator()(float *a1, float *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if ((-v2 / v3) <= *a2)
  {
    return powf(v2 + (v3 * *a2), a1[2]);
  }

  else
  {
    return 0.0;
  }
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_1,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_1>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_2,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_2>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1AEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_2,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_2>,float ()(float)>::operator()(float *a1, float *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if ((-v2 / v3) <= *a2)
  {
    return powf(v2 + (v3 * *a2), a1[2]) + a1[5];
  }

  else
  {
    return a1[5];
  }
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_2,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_2>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_3,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_3>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1AF40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_3,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_3>,float ()(float)>::operator()(float *a1, float *a2)
{
  v2 = *a2;
  if (a1[6] <= *a2)
  {
    return powf(a1[4] + (a1[3] * v2), a1[2]);
  }

  else
  {
    return v2 * a1[5];
  }
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_3,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_3>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_4,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_4>,float ()(float)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D1AFC0;
  result = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_4,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_4>,float ()(float)>::operator()(float *a1, float *a2)
{
  v2 = *a2;
  if (a1[6] <= *a2)
  {
    return powf(a1[4] + (a1[3] * v2), a1[2]) + a1[7];
  }

  else
  {
    return a1[8] + (a1[5] * v2);
  }
}

uint64_t std::__function::__func<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_4,std::allocator<re::VideoColorManager::computeGammaToneCurvePowerFunctionTable(re::mtl::Device,re::TextureManager *,re::VideoGammaToneCurve const&)::$_4>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 64);
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::allocEntry(a1, *v18 % *(a1 + 24));
                v20 = *(v18 - 60);
                *(v19 + 20) = *(v18 - 44);
                *(v19 + 4) = v20;
                *(v19 + 40) = *(v18 - 3);
                *(v18 - 3) = 0;
                *(v19 + 48) = 0;
                *(v19 + 56) = 0;
                if (*(v18 - 1))
                {
                  v21 = *(v18 - 2);
                  if (v21)
                  {
                    *(v19 + 48) = v21;
                    *(v19 + 56) = *(v18 - 1);
                    *(v18 - 1) = 0;
                  }
                }
              }

              ++v17;
              v18 += 9;
            }

            while (v17 < v16);
          }

          re::HashTable<re::VideoGammaToneCurve,re::VideoColorManager::TableEntry,re::Hash<re::VideoGammaToneCurve>,re::EqualTo<re::VideoGammaToneCurve>,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 72 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 64) = a3;
  ++*(a1 + 28);
  return v22 + 72 * v5;
}