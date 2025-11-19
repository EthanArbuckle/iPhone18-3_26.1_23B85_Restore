void re::populateAttribute<re::Vector3<float>,unsigned long>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v10 = a2;
  v41 = *MEMORY[0x1E69E9840];
  isAttribute = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(a1, a2, 2u);
  v13 = *a4;
  v31[0] = isAttribute ^ 1;
  *&v36 = v13;
  re::MaterialParameterBlock::setConstant(a5, &v36, 1uLL, v31, 2, v29);
  v29[0] = 0;
  if ((isAttribute & 1) == 0)
  {
    a6 = *(a1 + 792);
    if (a6 > v10)
    {
      v19 = *(a1 + 808) + 32 * v10;
      if (*(v19 + 16) == 2)
      {
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *a3;
        *v31 = v21;
        *&v31[8] = v20;
        v30 = v22;
        re::MaterialParameterBlock::setConstant(a5, &v30, 0x10uLL, v31, 33, &v36);
      }

      else
      {
        v23 = std::__throw_bad_variant_access[abi:nn200100]();
        re::populateAttribute<re::Vector4<float>,unsigned long>(v23);
      }

      return;
    }

LABEL_12:
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    v32 = 2048;
    v33 = v10;
    v34 = 2048;
    v35 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v10, 2u);
  v10 = *(Attribute + 16);
  if (v10 <= a6)
  {
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    v32 = 2048;
    v33 = a6;
    v34 = 2048;
    v35 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v15 = *(Attribute + 32) + 32 * a6;
  v16 = *(v15 + 16);
  v17 = *(v15 + 8);
  *&v36 = **(v15 + 24);
  DWORD2(v37) = 0;
  *&v38 = __PAIR64__(v16, v17);
  v27 = *a3;
  v24[0] = 0;
  v25 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v24, &v36);
  v26 = v38;
  v18 = re::MaterialParameterBlock::setBuffer(a5, &v27, v24, v28);
  v28[0] = 0;
  if (v25 != -1)
  {
    (off_1F5D03DA0[v25])(v31, v24, v18);
  }

  v25 = -1;
  if (DWORD2(v37) != -1)
  {
    (off_1F5D03DA0[DWORD2(v37)])(v31, &v36);
  }
}

void re::populateAttribute<re::Vector4<float>,unsigned long>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v10 = a2;
  v41 = *MEMORY[0x1E69E9840];
  isAttribute = re::PrimitiveRenderingDynamicGeometry::isAttributeVarying<unsigned long>(a1, a2, 3u);
  v13 = *a4;
  v31[0] = isAttribute ^ 1;
  *&v36 = v13;
  re::MaterialParameterBlock::setConstant(a5, &v36, 1uLL, v31, 2, v29);
  v29[0] = 0;
  if ((isAttribute & 1) == 0)
  {
    a6 = *(a1 + 832);
    if (a6 > v10)
    {
      v19 = *(a1 + 848) + 32 * v10;
      if (*(v19 + 16) == 3)
      {
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *a3;
        *v31 = v21;
        *&v31[8] = v20;
        v30 = v22;
        re::MaterialParameterBlock::setConstant(a5, &v30, 0x10uLL, v31, 34, &v36);
      }

      else
      {
        v23 = std::__throw_bad_variant_access[abi:nn200100]();
        re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(v23);
      }

      return;
    }

LABEL_12:
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    v32 = 2048;
    v33 = v10;
    v34 = 2048;
    v35 = a6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  Attribute = re::PrimitiveRenderingDynamicGeometry::getAttributeChunks<unsigned long>(a1, v10, 3u);
  v10 = *(Attribute + 16);
  if (v10 <= a6)
  {
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    v32 = 2048;
    v33 = a6;
    v34 = 2048;
    v35 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v15 = *(Attribute + 32) + 32 * a6;
  v16 = *(v15 + 16);
  v17 = *(v15 + 8);
  *&v36 = **(v15 + 24);
  DWORD2(v37) = 0;
  *&v38 = __PAIR64__(v16, v17);
  v27 = *a3;
  v24[0] = 0;
  v25 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v24, &v36);
  v26 = v38;
  v18 = re::MaterialParameterBlock::setBuffer(a5, &v27, v24, v28);
  v28[0] = 0;
  if (v25 != -1)
  {
    (off_1F5D03DA0[v25])(v31, v24, v18);
  }

  v25 = -1;
  if (DWORD2(v37) != -1)
  {
    (off_1F5D03DA0[DWORD2(v37)])(v31, &v36);
  }
}

uint64_t (***re::FunctionBase<24ul,re::AABB ()(unsigned long,unsigned long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(unsigned long)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshScene(re::PerFrameAllocator *,re::MaterialInstance const*,unsigned long,unsigned long,re::PrimitiveShapeGeometry const&,re::MaterialParameterBlock const*,re::Function<void ()(unsigned long)>,re::Function<re::AABB ()(unsigned long,unsigned long)>)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03DD0;
  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshScene(re::PerFrameAllocator *,re::MaterialInstance const*,unsigned long,unsigned long,re::PrimitiveShapeGeometry const&,re::MaterialParameterBlock const*,re::Function<void ()(unsigned long)>,re::Function<re::AABB ()(unsigned long,unsigned long)>)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D03DD0;
  return result;
}

void *re::FixedArray<re::NamedVertexBuffer>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2E8BA2E8BA2E8BBLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 88 * a3, 8);
  v4[2] = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v5 = re::DynamicString::setCapacity(v7, 0);
    *(v7 + 16) = 256;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 68) = 0u;
    *(v7 + 21) = -1;
    v7 = (v7 + 88);
  }

  *v7 = 0u;
  *(v7 + 1) = 0u;
  result = re::DynamicString::setCapacity(v7, 0);
  *(v7 + 16) = 256;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 68) = 0u;
  *(v7 + 21) = -1;
  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E28;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E28;
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 24);
  if (v3 <= *a2)
  {
    v12[0] = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 797;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    *v21 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 40) + 32 * v2;
  v7 = *(v6 + 16);
  v8 = *(v6 + 8);
  *&v22 = **(v6 + 24);
  DWORD2(v23) = 0;
  *&v24 = __PAIR64__(v7, v8);
  v9 = *(a1 + 48);
  v11 = 0x70A66CC11824C2D9;
  LOBYTE(v14) = 0;
  HIDWORD(v19) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v14, &v22);
  *&v21[2] = v24;
  v10 = re::MaterialParameterBlock::setBuffer(v9, &v11, &v14, v12);
  v12[0] = 0;
  if (HIDWORD(v19) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v19)])(&v13, &v14, v10);
  }

  HIDWORD(v19) = -1;
  if (DWORD2(v23) != -1)
  {
    (off_1F5D03DA0[DWORD2(v23)])(&v13, &v22);
  }

  *&v22 = 0xADE0D49ECE3B3;
  re::populateAttribute<re::Vector4<float>>(v5, 1u, &v22, 0x2A5B4409271D7A77, *(a1 + 48), v2);
  *&v22 = 0x59BE5D4061B1;
  re::populateAttribute<float>(v5, 2u, &v22, 0x4BDE6E805B77B40DLL, *(a1 + 48), v2);
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::cloneInto(uint64_t *a1, void *a2)
{
  *a2 = &unk_1F5D03E28;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), a1 + 1);
  v4 = a1[6];
  a2[6] = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  a2[7] = a1[7];
  return a2;
}

uint64_t re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03E28;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a2 + 8, (a1 + 8));
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = 0;
  return a2;
}

void re::populateAttribute<re::Vector4<float>>(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = *(a1 + a2 + 512);
  v30[0] = v11 ^ 1;
  *&v35 = a4;
  re::MaterialParameterBlock::setConstant(a5, &v35, 1uLL, v30, 2, v28);
  v28[0] = 0;
  if (v11)
  {
    v12 = a1 + 40 * v10;
    v13 = *(v12 + 16);
    if (v13 <= a6)
    {
      v29 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      *&v30[12] = 1024;
      *&v30[14] = 797;
      v31 = 2048;
      v32 = a6;
      v33 = 2048;
      v34 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(v12 + 32) + 32 * a6;
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    *&v35 = **(v14 + 24);
    DWORD2(v36) = 0;
    *&v37 = __PAIR64__(v15, v16);
    v26 = *a3;
    v23[0] = 0;
    v24 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v23, &v35);
    v25 = v37;
    v17 = re::MaterialParameterBlock::setBuffer(a5, &v26, v23, v27);
    v27[0] = 0;
    if (v24 != -1)
    {
      (off_1F5D03DA0[v24])(v30, v23, v17);
    }

    v24 = -1;
    if (DWORD2(v36) != -1)
    {
      (off_1F5D03DA0[DWORD2(v36)])(v30, &v35);
    }
  }

  else
  {
    v18 = a1 + 32 * v10;
    if (*(v18 + 304) == 3)
    {
      v20 = *(v18 + 288);
      v19 = *(v18 + 296);
      v21 = *a3;
      *v30 = v20;
      *&v30[8] = v19;
      v29 = v21;
      re::MaterialParameterBlock::setConstant(a5, &v29, 0x10uLL, v30, 34, &v35);
    }

    else
    {
      v22 = std::__throw_bad_variant_access[abi:nn200100]();
      re::populateAttribute<float>(v22);
    }
  }
}

void re::populateAttribute<float>(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, re::MaterialParameterBlock *a5, unint64_t a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = *(a1 + a2 + 512);
  v29[0] = v11 ^ 1;
  *&v36 = a4;
  re::MaterialParameterBlock::setConstant(a5, &v36, 1uLL, v29, 2, v27);
  v27[0] = 0;
  if (v11)
  {
    v12 = a1 + 40 * v10;
    v13 = *(v12 + 16);
    if (v13 <= a6)
    {
      v28 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v29 = 136315906;
      *&v29[4] = "operator[]";
      v30 = 1024;
      v31 = 797;
      v32 = 2048;
      v33 = a6;
      v34 = 2048;
      v35 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(v12 + 32) + 32 * a6;
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    *&v36 = **(v14 + 24);
    DWORD2(v37) = 0;
    *&v38 = __PAIR64__(v15, v16);
    v25 = *a3;
    v22[0] = 0;
    v23 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22, &v36);
    v24 = v38;
    v17 = re::MaterialParameterBlock::setBuffer(a5, &v25, v22, v26);
    v26[0] = 0;
    if (v23 != -1)
    {
      (off_1F5D03DA0[v23])(v29, v22, v17);
    }

    v23 = -1;
    if (DWORD2(v37) != -1)
    {
      (off_1F5D03DA0[DWORD2(v37)])(v29, &v36);
    }
  }

  else
  {
    v18 = a1 + 32 * v10;
    if (*(v18 + 304))
    {
      v21 = std::__throw_bad_variant_access[abi:nn200100]();
      re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(v21);
    }

    else
    {
      v19 = *(v18 + 288);
      v20 = *a3;
      LODWORD(v28) = v19;
      *v29 = v20;
      re::MaterialParameterBlock::setConstant(a5, v29, 4uLL, &v28, 1, &v36);
    }
  }
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E80;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03E80;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

char *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  if (*(a1 + 24) <= *a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *a3;
  v6 = *(a1 + 40) + 32 * *a2;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v7);
  *a4 = v14;
  a4[1] = v7;
  result = [**(v6 + 24) contents];
  if (v5)
  {
    v9 = &result[*(v6 + 8)];
    v10.i64[0] = 0x7F0000007FLL;
    v10.i32[2] = 127;
    v11 = v14;
    do
    {
      v12 = *v9++;
      v13 = v12;
      v11.i32[3] = 0;
      v13.i32[3] = 0;
      v11 = vminnmq_f32(v11, v13);
      v10.i32[3] = 0;
      v10 = vmaxnmq_f32(v10, v13);
      --v5;
    }

    while (v5);
    *a4 = v11;
    a4[1] = v10;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03E80;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfPoints(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03E80;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(void *a1, uint64_t *a2)
{
  *a1 = &unk_1F5D03ED8;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a1 + 1), a2);
  a1[6] = a2[5];
  a2[5] = 0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a1 + 7), a2 + 6);
  a1[12] = a2[11];
  return a1;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03ED8;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03ED8;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 24);
  if (v4 <= *a2)
  {
    *v22 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 797;
    v33 = 2048;
    v34 = v3;
    v35 = 2048;
    *v36 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(a1 + 96);
  v7 = *(a1 + 40) + 32 * v3;
  v8 = *(v7 + 16);
  v9 = *(v7 + 8);
  *&v37 = **(v7 + 24);
  DWORD2(v38) = 0;
  *&v39 = __PAIR64__(v8, v9);
  v10 = *(a1 + 48);
  v19 = 0x42DD0EA8FF94AE93;
  LOBYTE(v29) = 0;
  HIDWORD(v34) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v29, &v37);
  *&v36[2] = v39;
  v11 = re::MaterialParameterBlock::setBuffer(v10, &v19, &v29, v20);
  v20[0] = 0;
  if (HIDWORD(v34) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v34)])(v22, &v29, v11);
  }

  HIDWORD(v34) = -1;
  if (DWORD2(v38) != -1)
  {
    (off_1F5D03DA0[DWORD2(v38)])(v22, &v37);
  }

  v2 = *(a1 + 72);
  if (v2 <= v3)
  {
LABEL_13:
    v18[0] = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v22 = 136315906;
    *&v22[4] = "operator[]";
    v23 = 1024;
    v24 = 797;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    *v28 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 88) + 32 * v3;
  v13 = *(v12 + 16);
  v14 = *(v12 + 8);
  *&v37 = **(v12 + 24);
  DWORD2(v38) = 0;
  *&v39 = __PAIR64__(v13, v14);
  v15 = *(a1 + 48);
  v17 = 0x42DD0EA8FF94AE94;
  v22[0] = 0;
  HIDWORD(v26) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22, &v37);
  *&v28[2] = v39;
  v16 = re::MaterialParameterBlock::setBuffer(v15, &v17, v22, v18);
  v18[0] = 0;
  if (HIDWORD(v26) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v26)])(&v21, v22, v16);
  }

  HIDWORD(v26) = -1;
  if (DWORD2(v38) != -1)
  {
    (off_1F5D03DA0[DWORD2(v38)])(&v21, &v37);
  }

  *&v37 = 0x567E936567CFLL;
  re::populateAttribute<re::Vector4<float>>(v6, 5u, &v37, 0xAE343F25523302FLL, *(a1 + 48), v3);
  *&v37 = 0x567E947C6632;
  re::populateAttribute<float>(v6, 6u, &v37, 0x11DE7004A5E6CC6CLL, *(a1 + 48), v3);
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::cloneInto(uint64_t *a1, void *a2)
{
  *a2 = &unk_1F5D03ED8;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), a1 + 1);
  v4 = a1[6];
  a2[6] = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 7), a1 + 7);
  a2[12] = a1[12];
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F30;
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

char *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::operator()@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  v5 = *a2;
  if (a1[3] <= *a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *a3;
  v8 = a1[5] + 32 * v5;
  v9 = [**(v8 + 24) contents];
  if (v7)
  {
    v10 = &v9[*(v8 + 8)];
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    v12 = vnegq_f32(v11);
    v13 = v7;
    do
    {
      v14 = *v10++;
      v15 = v14;
      v12.i32[3] = 0;
      v15.i32[3] = 0;
      v12 = vminnmq_f32(v12, v15);
      v11.i32[3] = 0;
      v11 = vmaxnmq_f32(v11, v15);
      --v13;
    }

    while (v13);
  }

  else
  {
    v11.i64[0] = 0x7F0000007FLL;
    v11.i64[1] = 0x7F0000007FLL;
    v12 = vnegq_f32(v11);
  }

  if (a1[8] <= v5)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v16 = a1[10] + 32 * v5;
  v23 = v12;
  v24 = v11;
  *a4 = v12;
  a4[1] = v11;
  result = [**(v16 + 24) contents];
  if (v7)
  {
    v18 = &result[*(v16 + 8)];
    v20 = v23;
    v19 = v24;
    do
    {
      v21 = *v18++;
      v22 = v21;
      v20.i32[3] = 0;
      v22.i32[3] = 0;
      v20 = vminnmq_f32(v20, v22);
      v19.i32[3] = 0;
      v19 = vmaxnmq_f32(v19, v22);
      --v7;
    }

    while (v7);
    *a4 = v20;
    a4[1] = v19;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03F30;
  v4 = (a2 + 6);
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v4, (a1 + 48));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfLines(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03F30;
  v4 = (a2 + 6);
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  re::DynamicArray<re::GPUAllocation>::DynamicArray(v4, (a1 + 48));
  return a2;
}

uint64_t re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D03F88;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a1 + 8, a2);
  *(a1 + 48) = *(a2 + 40);
  *(a2 + 40) = 0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a1 + 56, (a2 + 48));
  *(a1 + 96) = *(a2 + 88);
  return a1;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F88;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03F88;
  re::DynamicArray<unsigned long>::deinit((a1 + 7));
  v2 = a1[6];
  if (v2)
  {

    a1[6] = 0;
  }

  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 24);
  if (v4 <= *a2)
  {
    *v24 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 797;
    v35 = 2048;
    v36 = v3;
    v37 = 2048;
    *v38 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(a1 + 96);
  v7 = *(a1 + 40) + 32 * v3;
  v8 = *(v7 + 16);
  v9 = *(v7 + 8);
  *&v39 = **(v7 + 24);
  DWORD2(v40) = 0;
  *&v41 = __PAIR64__(v8, v9);
  v10 = *(a1 + 48);
  v22 = 0xEE268E43F3D1BEALL;
  LOBYTE(v31) = 0;
  HIDWORD(v36) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v31, &v39);
  *&v38[2] = v41;
  v11 = re::MaterialParameterBlock::setBuffer(v10, &v22, &v31, v23);
  v23[0] = 0;
  if (HIDWORD(v36) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v36)])(v24, &v31, v11);
  }

  HIDWORD(v36) = -1;
  if (DWORD2(v40) != -1)
  {
    (off_1F5D03DA0[DWORD2(v40)])(v24, &v39);
  }

  v2 = *(a1 + 72);
  if (v2 <= v3)
  {
LABEL_13:
    v21[0] = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v24 = 136315906;
    *&v24[4] = "operator[]";
    v25 = 1024;
    v26 = 797;
    v27 = 2048;
    v28 = v3;
    v29 = 2048;
    *v30 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 88) + 32 * v3;
  v13 = *(v12 + 16);
  v14 = *(v12 + 8);
  *&v39 = **(v12 + 24);
  DWORD2(v40) = 0;
  *&v41 = __PAIR64__(v13, v14);
  v15 = *(a1 + 48);
  v20 = 0x1D89B02FDAB8EF6FLL;
  v24[0] = 0;
  HIDWORD(v28) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v24, &v39);
  *&v30[2] = v41;
  v16 = re::MaterialParameterBlock::setBuffer(v15, &v20, v24, v21);
  v21[0] = 0;
  if (HIDWORD(v28) != -1)
  {
    (off_1F5D03DA0[HIDWORD(v28)])(&v19, v24, v16);
  }

  HIDWORD(v28) = -1;
  if (DWORD2(v40) != -1)
  {
    (off_1F5D03DA0[DWORD2(v40)])(&v19, &v39);
  }

  v17 = *(a1 + 104);
  *&v39 = 0xB20902AF06629;
  v19 = 0x19A8EF0EE74E6741;
  re::populateAttribute<re::Vector3<float>,unsigned long>(v6, v17, &v39, &v19, *(a1 + 48), v3);
  v18 = *(a1 + 104);
  *&v39 = 0xB20902A148C42;
  v19 = 0x14289D97E950E308;
  re::populateAttribute<re::Vector4<float>,unsigned long>(v6, v18, &v39, &v19, *(a1 + 48), v3);
}

uint64_t re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03F88;
  re::DynamicArray<re::GPUAllocation>::DynamicArray(a2 + 8, (a1 + 8));
  v4 = *(a1 + 48);
  *(a2 + 48) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  re::DynamicArray<re::GPUAllocation>::DynamicArray(a2 + 56, (a1 + 56));
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03FE0;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));
  return a1;
}

void re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03FE0;
  re::DynamicArray<unsigned long>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

char *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  if (*(a1 + 24) <= *a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *a3;
  v6 = *(a1 + 40) + 32 * *a2;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v7);
  *a4 = v14;
  a4[1] = v7;
  result = [**(v6 + 24) contents];
  if (v5)
  {
    v9 = &result[*(v6 + 8)];
    v10.i64[0] = 0x7F0000007FLL;
    v10.i32[2] = 127;
    v11 = v14;
    do
    {
      v12 = *v9++;
      v13 = v12;
      v11.i32[3] = 0;
      v13.i32[3] = 0;
      v11 = vminnmq_f32(v11, v13);
      v10.i32[3] = 0;
      v10 = vmaxnmq_f32(v10, v13);
      --v5;
    }

    while (v5);
    *a4 = v11;
    a4[1] = v10;
  }

  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03FE0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfShapes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_1,re::AABB ()(unsigned long,unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D03FE0;
  re::DynamicArray<re::GPUAllocation>::DynamicArray((a2 + 1), (a1 + 8));
  return a2;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04038;
  return result;
}

void *re::internal::Callable<re::PrimitiveRenderingContext::buildMeshSceneOfMeshes(re::PerFrameAllocator *,re::MaterialInstance const*)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04038;
  return result;
}

uint64_t re::DynamicArray<re::PrimitiveShapeGeometry>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 96 * v4;
        v6 = (v3 + 80);
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v7 = *(v6 - 1);
          if (v7)
          {

            *(v6 - 1) = 0;
          }

          v8 = *(v6 - 2);
          if (v8)
          {

            *(v6 - 2) = 0;
          }

          v6 += 12;
          v5 -= 96;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::PrimitiveRenderingContext>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v3 + 1200 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 1136);
          re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v3 + 1056);
          re::DynamicArray<unsigned long>::deinit(v3 + 1016);
          for (i = 976; i != 816; i -= 40)
          {
            re::DynamicArray<unsigned long>::deinit(v3 + i);
          }

          do
          {
            re::DynamicArray<unsigned long>::deinit(v3 + i);
            i -= 40;
          }

          while (i != 656);
          do
          {
            re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v3 + i);
            i -= 40;
          }

          while (i != 496);
          for (j = 240; j != -40; j -= 40)
          {
            re::DynamicArray<unsigned long>::deinit(v3 + j);
          }

          v3 += 1200;
        }

        while (v3 != v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::PrimitiveShapeGeometry>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PrimitiveShapeGeometry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 96 * v9;
        v11 = v8 + 64;
        v12 = v7;
        do
        {
          v13 = *(v11 - 64);
          v14 = *(v11 - 48);
          v15 = *(v11 - 16);
          *(v12 + 2) = *(v11 - 32);
          *(v12 + 3) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12[8] = *v11;
          *v11 = 0;
          v12[9] = *(v11 + 8);
          *(v11 + 8) = 0;
          v12[10] = *(v11 + 16);
          *(v11 + 16) = 0;
          v16 = *(v11 + 8);
          if (v16)
          {

            *(v11 + 8) = 0;
          }

          if (*v11)
          {

            *v11 = 0;
          }

          v12 += 12;
          v11 += 96;
          v10 -= 96;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::DynamicArray<re::PrimitiveRenderingContext>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PrimitiveRenderingContext>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x4B0uLL))
        {
          v2 = 1200 * a2;
          result = (*(*result + 32))(result, 1200 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1200, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 1200 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::PrimitiveRenderingContext>(v8, v11);
          v8 += 1200;
          v11 += 1200;
          v10 -= 1200;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::ObjectHelper::move<re::PrimitiveRenderingContext>(uint64_t a1, uint64_t a2)
{
  re::PrimitiveRenderingDynamicGeometry::PrimitiveRenderingDynamicGeometry(a2, a1);
  *(a2 + 1088) = 0;
  *(a2 + 1080) = 0;
  *(a2 + 1072) = 0;
  *(a2 + 1064) = 0;
  *(a2 + 1056) = 0;
  *(a2 + 1056) = *(a1 + 1056);
  *(a1 + 1056) = 0;
  *(a2 + 1064) = *(a1 + 1064);
  *(a1 + 1064) = 0;
  v4 = *(a2 + 1072);
  *(a2 + 1072) = *(a1 + 1072);
  *(a1 + 1072) = v4;
  v5 = *(a2 + 1088);
  *(a2 + 1088) = *(a1 + 1088);
  *(a1 + 1088) = v5;
  ++*(a1 + 1080);
  ++*(a2 + 1080);
  v6 = *(a1 + 1096);
  v7 = *(a1 + 1112);
  *(a2 + 1128) = *(a1 + 1128);
  *(a2 + 1096) = v6;
  *(a2 + 1112) = v7;
  *(a2 + 1168) = 0;
  *(a2 + 1136) = 0;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1160) = 0;
  *(a2 + 1136) = *(a1 + 1136);
  *(a1 + 1136) = 0;
  *(a2 + 1144) = *(a1 + 1144);
  *(a1 + 1144) = 0;
  v8 = *(a2 + 1152);
  *(a2 + 1152) = *(a1 + 1152);
  *(a1 + 1152) = v8;
  v9 = *(a2 + 1168);
  *(a2 + 1168) = *(a1 + 1168);
  *(a1 + 1168) = v9;
  ++*(a1 + 1160);
  ++*(a2 + 1160);
  v10 = *(a1 + 1176);
  *(a2 + 1192) = *(a1 + 1192);
  *(a2 + 1176) = v10;
  re::DynamicArray<unsigned long>::deinit(a1 + 1136);
  re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(a1 + 1056);
  re::DynamicArray<unsigned long>::deinit(a1 + 1016);
  v11 = a1 + 976;
  v12 = -160;
  do
  {
    re::DynamicArray<unsigned long>::deinit(v11);
    v11 -= 40;
    v12 += 40;
  }

  while (v12);
  v13 = a1 + 816;
  v14 = -160;
  do
  {
    re::DynamicArray<unsigned long>::deinit(v13);
    v13 -= 40;
    v14 += 40;
  }

  while (v14);
  v15 = a1 + 656;
  v16 = -160;
  do
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v15);
    v15 -= 40;
    v16 += 40;
  }

  while (v16);
  v17 = a1 + 240;
  v18 = -280;
  do
  {
    result = re::DynamicArray<unsigned long>::deinit(v17);
    v17 -= 40;
    v18 += 40;
  }

  while (v18);
  return result;
}

uint64_t re::attributeInfo(unsigned int a1, uint64_t a2)
{
  if (a1 < 7)
  {
    return qword_1E30A2A08[a1];
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeInfo", 32, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::allocate(re *this@<X0>, const re::RenderManager *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(this + 14);
  if (v7)
  {
    v7 = *(v7 + 320);
  }

  v8 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v7, *(*(this + 18) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(this + 18) + 16) << 60));

  re::PerFrameAllocatorGPU::allocInternal(v8, a2 << 7, a3, 0, a4);
}

uint64_t re::attributeInfo(uint64_t result, uint64_t a2)
{
  if (result >= 4)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) incorrect attribute", "!Unreachable code", "attributeInfo", 51, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::FixedArray<re::NamedVertexBuffer>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2] + 40;
      v5 = 88 * v2;
      do
      {
        v6 = *(v4 + 24);
        if (v6 != -1)
        {
          (off_1F5D03DA0[v6])(&v8, v4);
        }

        *(v4 + 24) = -1;
        v7 = re::DynamicString::deinit((v4 - 40));
        v4 += 88;
        v5 -= 88;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v7);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::GPUAllocation>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, a2[2]);
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove(*(a1 + 32), a2[4], 32 * v7);
        v7 = *(a1 + 16);
      }

      memcpy((*(a1 + 32) + 32 * v7), (a2[4] + 32 * v7), 32 * (v6 - v7));
    }

    else if (v6)
    {
      memmove(*(a1 + 32), a2[4], 32 * v6);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

re::DynamicString *re::renderGraphEncoderSplitReasonToString(_anonymous_namespace_ *a1, int a2)
{
  v4 = off_1E871E8C0[a2];
}

re::DynamicString *re::multisampleDepthResolveFilterToString(_anonymous_namespace_ *a1, int a2)
{
  v4 = off_1E871E940[a2];
}

re::DynamicString *re::multisampleStencilResolveFilterToString(_anonymous_namespace_ *a1, int a2)
{
  if (a2)
  {
    v4 = "kDepthResolvedSample";
  }

  else
  {
    v4 = "kSample0";
  }
}

uint64_t re::RenderGraphEncoderSplitLogBuffer::clear(uint64_t this)
{
  if (*(this + 16))
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v3 = *(this + 32);
      v4 = v3 + v1;
      if (*(v3 + v1 + 8))
      {
        *(v4 + 8) = 1;
        v5 = *(v3 + v1 + 16);
      }

      else
      {
        *(v4 + 8) = 0;
        v5 = (v3 + v1 + 9);
      }

      *v5 = 0;
      ++v2;
      v1 += 32;
    }

    while (*(this + 16) > v2);
  }

  *(this + 40) = 0;
  return this;
}

void re::RenderGraphEncoderSplitLogManager::save(re::RenderGraphEncoderSplitLogManager *this, char a2)
{
  v4 = re::RenderGraphEncoderSplitLogBuffer::calculateHash((this + 24));
  v5 = v4;
  if ((a2 & 1) != 0 || *(this + 16) != 1 || v4 != *(this + 1))
  {
    re::RenderGraphEncoderSplitLogBuffer::logBuffer(this + 24);
    *(this + 16) = 1;
  }

  *(this + 1) = v5;
}

unint64_t re::RenderGraphEncoderSplitLogBuffer::calculateHash(re::RenderGraphEncoderSplitLogBuffer *this)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(this + 4) + v3;
    v7 = *(v6 + 8);
    v8 = v7 >> 1;
    if (v7)
    {
      v8 = v7 >> 1;
    }

    if (v8 >= 100)
    {
      v9 = 100;
    }

    else
    {
      v9 = v8;
    }

    if (v7)
    {
      v10 = *(v6 + 16);
    }

    else
    {
      v10 = v6 + 9;
    }

    v11 = 0x9E3779B97F4A7C17;
    if (v8)
    {
      MurmurHash3_x64_128(v10, v9, 0, v13);
      v11 = ((v13[1] - 0x61C8864680B583E9 + (v13[0] << 6) + (v13[0] >> 2)) ^ v13[0]) - 0x61C8864680B583E9;
      v1 = *(this + 2);
    }

    v5 ^= (v5 >> 2) + (v5 << 6) + v11;
    ++v4;
    v3 += 32;
  }

  while (v1 > v4);
  return v5;
}

void re::RenderGraphEncoderSplitLogBuffer::logBuffer(_BOOL8 this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 40) >= 1)
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *re::graphicsLogObjects(this);
      this = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (this)
      {
        if (*(v1 + 16) <= v3)
        {
          v10 = 0u;
          v11 = 0u;
          v8 = 0u;
          v9 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v5 = *(v1 + 32) + v2;
        if (*(v5 + 8))
        {
          v6 = *(v5 + 16);
        }

        else
        {
          v6 = v5 + 9;
        }

        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      ++v3;
      v2 += 32;
    }

    while (v3 < *(v1 + 40));
  }
}

uint64_t re::RenderGraphEncoderSplitLogManager::logEntry(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int *a7)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*result == 1)
  {
    v13 = result;
    v14 = *(result + 64);
    v15 = *(result + 40);
    if (v15 <= v14)
    {
      *(&v78 + 1) = 0;
      v79 = 0uLL;
      re::DynamicString::setCapacity(&v78, 0);
      re::DynamicString::setCapacity(&v78, 0x400uLL);
      re::DynamicArray<re::DynamicString>::add((v13 + 24), &v78);
      result = v78;
      if (v78 && (BYTE8(v78) & 1) != 0)
      {
        result = (*(*v78 + 40))(v78, v79);
      }

      v14 = *(v13 + 64);
      v15 = *(v13 + 40);
      v16 = v14;
    }

    else
    {
      v16 = v14;
    }

    if (v15 <= v16)
    {
      *&v70 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v73 = 136315906;
      *&v73[4] = "operator[]";
      *&v73[12] = 1024;
      *&v73[14] = 789;
      v74 = 2048;
      v75 = v16;
      v76 = 2048;
      v77 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_167:
      v65[0] = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v73 = 136315906;
      *&v73[4] = "operator[]";
      *&v73[12] = 1024;
      *&v73[14] = 789;
      v74 = 2048;
      v75 = a6;
      v76 = 2048;
      v77 = a2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_168:
      v65[0] = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v73 = 136315906;
      *&v73[4] = "operator[]";
      *&v73[12] = 1024;
      *&v73[14] = 789;
      v74 = 2048;
      v75 = a6;
      v76 = 2048;
      v77 = a2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_169:
      v65[0] = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v73 = 136315906;
      *&v73[4] = "operator[]";
      *&v73[12] = 1024;
      *&v73[14] = 789;
      v74 = 2048;
      v75 = a2;
      v76 = 2048;
      v77 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_170:
      v72 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v73 = 136315906;
      *&v73[4] = "operator[]";
      *&v73[12] = 1024;
      *&v73[14] = 789;
      v74 = 2048;
      v75 = a2;
      v76 = 2048;
      v77 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v17 = (*(v13 + 56) + 32 * v16);
    *(v13 + 64) = v14 + 1;
    if (a7)
    {
      re::renderGraphResourceOperationTypeToString((a7 + 1), &v70);
      re::renderGraphEncoderSplitReasonToString(&v66, a2);
      if (v67)
      {
        v18 = v69;
      }

      else
      {
        v18 = v68;
      }

      if (BYTE8(v70))
      {
        v19 = v71;
      }

      else
      {
        v19 = &v70 + 9;
      }

      re::DynamicString::format("Encoder Split: %s for %s.\n", &v78, v18, v19);
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      re::DynamicString::setCapacity(&v70, 0);
      re::renderGraphEncoderSplitReasonToString(&v66, a2);
      if (v67)
      {
        v20 = v69;
      }

      else
      {
        v20 = v68;
      }

      re::DynamicString::format("Encoder Split: %s.\n", &v78, v20);
    }

    v13 = v79;
    v21 = BYTE8(v78) & 1;
    if (BYTE8(v78))
    {
      v22 = v79;
    }

    else
    {
      v22 = &v78 + 9;
    }

    if (BYTE8(v78))
    {
      v23 = *(&v78 + 1) >> 1;
    }

    else
    {
      v23 = BYTE8(v78) >> 1;
    }

    re::DynamicString::append(v17, v22, v23);
    if (v78 && v21)
    {
      (*(*v78 + 40))(v78, v13);
    }

    switch(a2)
    {
      case 0:
        v24 = *(a3 + 296);
        a6 = a7[13];
        a2 = *(v24 + 16);
        if (a2 <= a6)
        {
          goto LABEL_168;
        }

        re::StringID::StringID(v73, (*(v24 + 32) + 48 * a6 + 8));
        re::DynamicString::format("The new setup is trying a force clear for %s resource index %d.\n", &v78, *&v73[8], a7[13]);
        goto LABEL_48;
      case 1:
        v37 = *(a3 + 296);
        a2 = a7[13];
        v13 = *(v37 + 16);
        if (v13 <= a2)
        {
          goto LABEL_169;
        }

        re::StringID::StringID(v65, (*(v37 + 32) + 48 * a2 + 8));
        v38 = *(a3 + 296);
        a2 = a6[13];
        v13 = *(v38 + 16);
        if (v13 <= a2)
        {
          goto LABEL_170;
        }

        v39 = v65[1];
        v40 = a7[13];
        v41 = *a7;
        re::StringID::StringID(v73, (*(v38 + 32) + 48 * a2 + 8));
        re::DynamicString::format("The new setup is trying to bind %s resource index %d at attachment index %d but old setup has already bound %s resource index %d at same attachment index %d.\n", &v78, v39, v40, v41, *&v73[8], a6[13], *a6);
        v42 = v79;
        v43 = BYTE8(v78) & 1;
        if (BYTE8(v78))
        {
          v44 = v79;
        }

        else
        {
          v44 = &v78 + 9;
        }

        if (BYTE8(v78))
        {
          v45 = *(&v78 + 1) >> 1;
        }

        else
        {
          v45 = BYTE8(v78) >> 1;
        }

        re::DynamicString::append(v17, v44, v45);
        v46 = v78;
        if (v78 && v43)
        {
          v46 = (*(*v78 + 40))(v78, v42);
        }

        if (v73[0])
        {
          if (v73[0])
          {
          }
        }

        if (v65[0])
        {
          if (v65[0])
          {
            goto LABEL_87;
          }
        }

        goto LABEL_133;
      case 2:
        v28 = *(a3 + 296);
        a6 = a7[13];
        a2 = *(v28 + 16);
        if (a2 <= a6)
        {
          goto LABEL_167;
        }

        re::StringID::StringID(v73, (*(v28 + 32) + 48 * a6 + 8));
        re::DynamicString::format("The new setup is trying to bind %s resource index %d at attachment index %d but resource is not included in old setup encoder.\n", &v78, *&v73[8], a7[13], *a7);
LABEL_48:
        v29 = v79;
        v30 = BYTE8(v78) & 1;
        if (BYTE8(v78))
        {
          v31 = v79;
        }

        else
        {
          v31 = &v78 + 9;
        }

        if (BYTE8(v78))
        {
          v32 = *(&v78 + 1) >> 1;
        }

        else
        {
          v32 = BYTE8(v78) >> 1;
        }

        re::DynamicString::append(v17, v31, v32);
        v33 = v78;
        if (v78 && v30)
        {
          v33 = (*(*v78 + 40))(v78, v29);
        }

        if ((v73[0] & 1) == 0)
        {
          goto LABEL_133;
        }

        if ((v73[0] & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_87:
        goto LABEL_132;
      case 3:
        if (BYTE8(v70))
        {
          v34 = v71;
        }

        else
        {
          v34 = &v70 | 9;
        }

        re::DynamicString::format("The new setup contains %s but old setup doesn't.\n", &v78, v34, v62);
        goto LABEL_123;
      case 4:
        v26 = a7[1];
        if (v26 == 8)
        {
          re::multisampleStencilResolveFilterToString(&v78, a6[10]);
          if (BYTE8(v78))
          {
            v27 = v79;
          }

          else
          {
            v27 = &v78 + 9;
          }

          if (v78 && (BYTE8(v78) & 1) != 0)
          {
            (*(*v78 + 40))(v78);
          }

          re::multisampleStencilResolveFilterToString(&v78, a7[10]);
        }

        else
        {
          if (v26 != 7)
          {
            v27 = "n/a";
            v52 = "n/a";
            goto LABEL_118;
          }

          re::multisampleDepthResolveFilterToString(&v78, a6[9]);
          if (BYTE8(v78))
          {
            v27 = v79;
          }

          else
          {
            v27 = &v78 + 9;
          }

          if (v78 && (BYTE8(v78) & 1) != 0)
          {
            (*(*v78 + 40))(v78);
          }

          re::multisampleDepthResolveFilterToString(&v78, a7[9]);
        }

        if (BYTE8(v78))
        {
          v52 = v79;
        }

        else
        {
          v52 = &v78 + 9;
        }

        if (v78 && (BYTE8(v78) & 1) != 0)
        {
          (*(*v78 + 40))(v78);
        }

LABEL_118:
        if (BYTE8(v70))
        {
          v53 = v71;
        }

        else
        {
          v53 = &v70 | 9;
        }

        v62 = v52;
        v63 = v27;
        v61 = v53;
        v25 = "The new step has a %s filter of %s but the old step has a resolve filter of %s.\n";
LABEL_122:
        re::DynamicString::format(v25, &v78, v61, v62, v63);
LABEL_123:
        v54 = BYTE8(v78) & 1;
        if (BYTE8(v78))
        {
          v55 = v79;
        }

        else
        {
          v55 = &v78 + 9;
        }

        if (BYTE8(v78))
        {
          v56 = *(&v78 + 1) >> 1;
        }

        else
        {
          v56 = BYTE8(v78) >> 1;
        }

        re::DynamicString::append(v17, v55, v56);
        if (v78 && v54)
        {
          v47 = *(*v78 + 40);
LABEL_132:
          v47();
        }

LABEL_133:
        re::DynamicString::format("Old Setup:\n", v73);
        LOBYTE(v65[0]) = 1;
        LOBYTE(v72) = 1;
        v64 = 1;
        re::renderGraphResourceSetupToString(v73, a3, a4, v65, &v72, &v64, &v78);
        if (BYTE8(v78))
        {
          v57 = v79;
        }

        else
        {
          v57 = &v78 + 9;
        }

        if (BYTE8(v78))
        {
          v58 = *(&v78 + 1) >> 1;
        }

        else
        {
          v58 = BYTE8(v78) >> 1;
        }

        re::DynamicString::append(v17, v57, v58);
        if (v78)
        {
          if (BYTE8(v78))
          {
            (*(*v78 + 40))(v78, v79);
          }

          v78 = 0u;
          v79 = 0u;
        }

        if (*v73 && (v73[8] & 1) != 0)
        {
          (*(**v73 + 40))();
        }

        re::DynamicString::format("New Setup:\n", v73);
        LOBYTE(v65[0]) = 1;
        LOBYTE(v72) = 1;
        v64 = 1;
        re::renderGraphResourceSetupToString(v73, a3, a5, v65, &v72, &v64, &v78);
        if (BYTE8(v78))
        {
          v59 = v79;
        }

        else
        {
          v59 = &v78 + 9;
        }

        if (BYTE8(v78))
        {
          v60 = *(&v78 + 1) >> 1;
        }

        else
        {
          v60 = BYTE8(v78) >> 1;
        }

        re::DynamicString::append(v17, v59, v60);
        if (v78)
        {
          if (BYTE8(v78))
          {
            (*(*v78 + 40))(v78, v79);
          }

          v78 = 0u;
          v79 = 0u;
        }

        if (*v73 && (v73[8] & 1) != 0)
        {
          (*(**v73 + 40))();
        }

        if (v66 && (v67 & 1) != 0)
        {
          (*(*v66 + 40))();
        }

        result = v70;
        if (v70)
        {
          if (BYTE8(v70))
          {
            result = (*(*v70 + 40))();
          }
        }

        break;
      case 5:
        re::DynamicString::format("The new setup has a threadgroup memory length of %zu but the old setup has a threadgroup memory length of %zu.\n", &v78, *(a5 + 176), *(a4 + 176));
        goto LABEL_123;
      case 6:
        if (*(a5 + 192) - 1 > 2)
        {
          v48 = "Automatic";
        }

        else
        {
          v48 = off_1E871E958[(*(a5 + 192) - 1)];
        }

        if (*(a4 + 192) - 1 > 2)
        {
          v51 = "Automatic";
        }

        else
        {
          v51 = off_1E871E958[(*(a4 + 192) - 1)];
        }

        re::DynamicString::format("The new setup has tile size overridden to %s but the old setup has a tile sizeoverridden to %s.\n", &v78, v48, v51);
        goto LABEL_123;
      case 7:
        v35 = " doesn't have";
        if (*(a5 + 171))
        {
          v36 = " has";
        }

        else
        {
          v36 = " doesn't have";
        }

        if (*(a4 + 171))
        {
          v35 = " has";
        }

        re::DynamicString::format("The new setup%s VRR enabled but the old setup%s VRR enabled.\n", &v78, v36, v35);
        goto LABEL_123;
      case 8:
        v49 = " doesn't have";
        if (*(a5 + 169))
        {
          v50 = " has";
        }

        else
        {
          v50 = " doesn't have";
        }

        if (*(a4 + 169))
        {
          v49 = " has";
        }

        re::DynamicString::format("The new setup%s custom encoders but the old setup%s custom encoders.\n", &v78, v50, v49);
        goto LABEL_123;
      case 9:
        v25 = "The old setup has a depth step but the new setup doesn't.\n";
        goto LABEL_122;
      case 10:
        v25 = "The old setup has a stencil step but the new setup doesn't.\n";
        goto LABEL_122;
      case 11:
        re::DynamicString::format("The old setup writes to the resource at attachment index %d and the new setup is trying to read from the same attachment index so the nodes can't be combined. This is because waits happen before an encoder and fence updates happen at the end of an encoder.\n", &v78, *a7, v62);
        goto LABEL_123;
      case 12:
        v25 = "The old setup and the new setup have mismatched visibility buffers.\n";
        goto LABEL_122;
      case 13:
        v25 = "The old setup and the new setup have mismatched encoder types.\n";
        goto LABEL_122;
      case 14:
        v25 = "The old setup and the new setup have mismatched write protection options.\n";
        goto LABEL_122;
      case 15:
        re::DynamicString::format("The new setup has imageBlockSampleLength overridden to %zu but the old setup has a imageBlockSampleLength overridden to %zu.\n", &v78, *(a5 + 184), *(a4 + 184));
        goto LABEL_123;
      default:
        goto LABEL_133;
    }
  }

  return result;
}

re::RenderGraphEncoderSplitLogBuffer *re::RenderGraphEncoderSplitLogBuffer::RenderGraphEncoderSplitLogBuffer(re::RenderGraphEncoderSplitLogBuffer *this, const char *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  re::Defaults::intValue("encoderSplitLogging", a2, v9);
  v3 = LOBYTE(v9[0]);
  v4 = DWORD1(v9[0]);
  *(this + 10) = 0;
  if (v3 == 1 && v4 != 0)
  {
    v6 = re::DynamicArray<re::DynamicString>::setCapacity(this, 0xAuLL);
    if (*(this + 1))
    {
      v7 = 0;
      do
      {
        memset(v9, 0, sizeof(v9));
        re::DynamicString::setCapacity(v9, 0);
        re::DynamicString::setCapacity(v9, 0x400uLL);
        re::DynamicArray<re::DynamicString>::add(this, v9);
        v6 = *&v9[0];
        if (*&v9[0] && (BYTE8(v9[0]) & 1) != 0)
        {
          v6 = (*(**&v9[0] + 40))();
        }

        ++v7;
      }

      while (*(this + 1) > v7);
    }
  }

  return this;
}

void *re::ShadowTileManager::releaseTile(void *a1, _WORD *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1[7] <= *a2)
  {
    memset(v3, 0, sizeof(v3));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  LOWORD(v3[0]) = *a2;
  return re::DynamicArray<unsigned short>::add(a1, v3);
}

void *re::ShadowTileManager::acquireTile@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v31 = *MEMORY[0x1E69E9840];
  v4 = this[2];
  if (v4)
  {
    v5 = *(this[4] + 2 * v4 - 2);
    this[2] = v4 - 1;
    ++*(this + 6);
    v6 = this[7];
    if (v6 <= v5)
    {
      memset(__src, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 789;
      v27 = 2048;
      v28 = v5;
      v29 = 2048;
      v30 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v7 = this[9] + 1840 * v5;
    v8 = (*(v7 + 1824))++ + 1;
    *a2 = 1;
    *(a2 + 2) = v5 | (v8 << 16);
  }

  else
  {
    v9 = this[7];
    if (v9 - 2041 > 0xFFFFFFFFFFFFF805)
    {
      bzero(&__src[17], 0x394uLL);
      v11 = 0;
      memset(__src, 0, 20);
      memset(&__src[2], 0, 34);
      *(&__src[4] + 4) = 0uLL;
      memset(&__src[6], 0, 164);
      do
      {
        v12 = &__src[v11];
        v12[24] = 0uLL;
        v12[25] = 0uLL;
        v12[22] = 0uLL;
        v12[23] = 0uLL;
        v12[20] = 0uLL;
        v12[21] = 0uLL;
        v12[27] = 0uLL;
        v12[28] = 0uLL;
        v11 += 14;
        v12[29] = 0uLL;
        v12[30] = 0uLL;
      }

      while (v11 != 56);
      memset(&__src[75], 0, 72);
      memset(&__src[80], 0, 97);
      v13.i64[0] = 0x7F0000007FLL;
      v13.i64[1] = 0x7F0000007FLL;
      __src[87] = vnegq_f32(v13);
      __src[88] = v13;
      DWORD2(__src[113]) = 0;
      LOWORD(__src[114]) = 0;
      memset(&__src[89], 0, 292);
      memset(&__src[108], 0, 86);
      v14 = v9;
      v15 = v2[6];
      if (v9 >= v15)
      {
        if (v15 < v9 + 1)
        {
          if (v2[5])
          {
            v16 = 2 * v15;
            v17 = v15 == 0;
            v18 = 8;
            if (!v17)
            {
              v18 = v16;
            }

            if (v18 <= v9 + 1)
            {
              v19 = v9 + 1;
            }

            else
            {
              v19 = v18;
            }

            re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(v2 + 5, v19);
          }

          else
          {
            re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(v2 + 5, v9 + 1);
            ++*(v2 + 16);
          }
        }

        v14 = v2[7];
      }

      this = memcpy((v2[9] + 1840 * v14), __src, 0x730uLL);
      v20 = v2[7];
      v2[7] = v20 + 1;
      ++*(v2 + 16);
      v21 = v2[9];
      *a2 = 1;
      *(a2 + 2) = v9 | (*(v21 + 1840 * v20 + 1824) << 16);
    }

    else
    {
      *a2 = 0;
    }
  }

  return this;
}

void *re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x730uLL))
        {
          v2 = 1840 * a2;
          result = (*(*result + 32))(result, 1840 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 1840 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1840, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::logAttributeIndexExceedsLimit(re *a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 5);
    if (v7[306])
    {
      v8 = v7[307];
    }

    else
    {
      v8 = v7 + 2449;
    }

    v9 = *v7;
    if (v7[310])
    {
      v10 = v7[311];
    }

    else
    {
      v10 = v7 + 2481;
    }

    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    v12[0] = 67110402;
    v12[1] = 30;
    v13 = 1024;
    v14 = a3;
    v15 = 2080;
    v16 = v9;
    v17 = 2080;
    v18 = v8;
    v19 = 2080;
    v20 = v10;
    v21 = 2080;
    v22 = v11;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attribute index exceeds limit. Maximum allowed index is %d but received index is %d. technique=%s vs=%s fs=%s fc=%s", v12, 0x36u);
  }
}

void re::makeAPIFunctionAsync(uint64_t a1, char *a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = a4;
  re::APIFunctionCache::getOrCreateAPIFunction(a1 + 256, a2, a1, a9, a10, a3, &v17, a5, a6, a7, a8);
}

void re::makeMetalPrivateLinkedFunctionsAsync(uint64_t a1, void *a2, uint64_t a3, void *a4, dispatch_group_t *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9, unint64_t a10)
{
  v180 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v17 = 56;
  if (a3 == 1)
  {
    v17 = 32;
  }

  v18 = v16 + v17;
  v19 = *(v16 + v17 + 8);
  if (v19)
  {
    v20 = 0;
    v21 = (*(v18 + 16) + 56);
    v22 = v19;
    do
    {
      v23 = *v21;
      v21 += 50;
      v20 |= v23;
      --v22;
    }

    while (v22);
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v19 += 76;
  }

  if ((v20 & 2) != 0)
  {
    v19 += 78;
  }

  if ((v20 & 0x20) != 0)
  {
    v19 += 22;
  }

  if ((v20 & 4) != 0)
  {
    v19 += 69;
  }

  if ((v20 & 8) != 0)
  {
    v19 += 61;
  }

  if ((v20 & 0x10) != 0)
  {
    v24 = v19 + 13;
  }

  else
  {
    v24 = v19;
  }

  a8[1] = v24;
  v155 = a4;
  if (v24)
  {
    if (v24 >> 61)
    {
      goto LABEL_94;
    }

    v26 = a7;
    a8[2] = v27;
    if (!v27)
    {
LABEL_95:
      re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v29 = v27;
    if (v24 != 1)
    {
      bzero(v27, 8 * v24 - 8);
      v29 += v24 - 1;
    }

    *v29 = 0;
    a7 = v26;
  }

  v149 = v20;
  v157 = a2;
  v158 = a7;
  v153 = a8;
  v154 = a5;
  v156 = a6;
  v30 = 0;
  if (*(v18 + 8))
  {
    v24 = a10;
    v150 = v18;
    do
    {
      v31 = (*(v18 + 16) + 200 * v30);
      v32 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
      v33 = v31[9];
      if (v33)
      {
        v34 = 104 * v33;
        v35 = v31[10] + 36;
        do
        {
          [v32 setConstantValue:v35 type:*(v35 - 4) atIndex:*(v35 - 2)];
          v35 += 104;
          v34 -= 104;
        }

        while (v34);
      }

      re::ShaderManager::makeFunctionDescriptor(*(a1 + 48), &v162);
      [v162 setName_];
      if (!re::StringID::operator==(v31 + 3, v31 + 1))
      {
        [v162 setSpecializedName_];
      }

      [v162 setConstantValues_];
      location = 0;
      if (v31[6])
      {
        v36 = *(v24 + 8);
        if (v36 <= v30)
        {
          v163 = 0;
          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v175 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v167 = 136315906;
          v168 = "operator[]";
          v169 = 1024;
          v170 = 468;
          v171 = 2048;
          v172 = v30;
          v173 = 2048;
          v174 = v36;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_93:
          v163 = 0;
          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v175 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v167 = 136315906;
          v168 = "operator[]";
          v169 = 1024;
          v170 = 468;
          v171 = 2048;
          v172 = v30;
          v173 = 2048;
          v174 = v36;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_94:
          re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v24);
          _os_crash();
          __break(1u);
          goto LABEL_95;
        }

        *(*(v24 + 16) + 8 * v30) = 0;
        CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(**(a1 + 160));
      }

      else
      {
        v38 = *(a1 + 48);
        *&v175 = v31[5];
        v39 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v38 + 376, &v175);
        if (v39)
        {
          v40 = (v39 + 8);
        }

        else
        {
          v40 = 0;
        }

        re::ObjCObject::operator=(&location, v40);
        v41 = *a9;
        *a9 = ((v41 << 6) + (v41 >> 2) + [location hash] - 0x61C8864680B583E9) ^ v41;
        v36 = *(v24 + 8);
        if (v36 <= v30)
        {
          goto LABEL_93;
        }

        CGColorSpaceFromWorkingColorGamut = 0;
        *(*(v24 + 16) + 8 * v30) = v31[5];
      }

      dispatch_group_enter(*v154);
      v151 = *(a1 + 48);
      re::StringID::StringID(&v160, (v31 + 3));
      v42 = *(a1 + 208);
      v43 = location;
      v44 = v162;
      v45 = *v154;
      v46 = v45;
      v47 = *v157;
      if (*v157)
      {
        v45 = (v47 + 8);
      }

      v165 = re::globalAllocators(v45)[2];
      v166 = 0;
      v48 = (*(*v165 + 32))(v165, 96, 0);
      *v48 = &unk_1F5D040B0;
      *(v48 + 8) = v42;
      *(v48 + 16) = CGColorSpaceFromWorkingColorGamut;
      *(v48 + 24) = v43;
      *(v48 + 32) = v44;
      *(v48 + 40) = v46;
      *(v48 + 48) = v30;
      *(v48 + 56) = v158;
      a6 = v156;
      *(v48 + 64) = v156;
      *(v48 + 72) = v31;
      *(v48 + 80) = a8;
      *(v48 + 88) = v47;
      v166 = v48;
      re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(v151, v156, v158, 4, &v160, v164);
      v49 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v164);
      if (*&v160.var0)
      {
        if (*&v160.var0)
        {
        }
      }

      *&v160.var0 = 0;
      v160.var1 = &str_67;

      v24 = a10;
      if (v162)
      {
      }

      if (v32)
      {
      }

      ++v30;
      v18 = v150;
    }

    while (v30 < *(v150 + 8));
  }

  v50 = *(a1 + 48);
  *v152 = v50;
  if (v149)
  {
    v53 = 0;
    v52 = v153;
    v54 = v154;
    do
    {
      v55 = v30;
      v56 = a6;
      v57 = realitykit_shader_api::textureFunctions[v53];
      v58 = v54;
      v59 = *v54;
      v60 = *(v50 + 360);
      ++v30;
      v61 = v57;
      a6 = v56;
      re::makeAPIFunctionAsync(*(a1 + 48), v61, v155, v59, v56, v158, v153, v55, *(*v157 + 144), *(*v157 + 136));

      v50 = *v152;
      v54 = v58;
      ++v53;
    }

    while (v53 != 12);
    for (i = 0; i != 9; ++i)
    {
      v63 = v30;
      v64 = realitykit_shader_api::materialFunctions[i];
      v65 = *v54;
      v66 = *(*v152 + 360);
      ++v30;
      re::makeAPIFunctionAsync(*(a1 + 48), v64, v155, v65, v56, v158, v153, v63, *(*v157 + 144), *(*v157 + 136));

      v54 = v58;
    }

    v67 = 0;
    v68 = v158;
    do
    {
      v69 = v68;
      v70 = realitykit_shader_api::surfaceFunctions[v67];
      v71 = *v54;
      v72 = *(*v152 + 360);
      v51 = v30 + 1;
      v73 = v70;
      v68 = v69;
      re::makeAPIFunctionAsync(*(a1 + 48), v73, v155, v71, v156, v69, v153, v30, *(*v157 + 144), *(*v157 + 136));

      v54 = v58;
      ++v67;
      ++v30;
    }

    while (v67 != 55);
  }

  else
  {
    v51 = v30;
    v52 = a8;
  }

  if ((v149 & 2) != 0)
  {
    for (j = 0; j != 74; ++j)
    {
      v76 = v51;
      v77 = realitykit_shader_api::surface_privateFunctions[j];
      v78 = *v154;
      v79 = *(*v152 + 360);
      ++v51;
      re::makeAPIFunctionAsync(*(a1 + 48), v77, v155, v78, v156, v158, v52, v76, *(*v157 + 144), *(*v157 + 136));
    }

    for (k = 0; k != 2; ++k)
    {
      v81 = v51;
      v82 = realitykit_shader_api::texture_privateFunctions[k];
      v83 = *v154;
      v84 = *(*v152 + 360);
      ++v51;
      re::makeAPIFunctionAsync(*(a1 + 48), v82, v155, v83, v156, v158, v52, v81, *(*v157 + 144), *(*v157 + 136));
    }

    v85 = 0;
    v86 = v52;
    do
    {
      v87 = realitykit_shader_api::material_privateFunctions[v85];
      v88 = *v154;
      v89 = *(*v152 + 360);
      v74 = v51 + 1;
      re::makeAPIFunctionAsync(*(a1 + 48), v87, v155, v88, v156, v158, v86, v51, *(*v157 + 144), *(*v157 + 136));

      ++v85;
      ++v51;
    }

    while (v85 != 2);
  }

  else
  {
    v74 = v51;
  }

  if ((v149 & 0x20) != 0)
  {
    for (m = 0; m != 22; ++m)
    {
      v92 = realitykit_shader_api::uisurface_privateFunctions[m];
      v93 = *v154;
      v94 = *(*v152 + 360);
      v90 = v74 + 1;
      re::makeAPIFunctionAsync(*(a1 + 48), v92, v155, v93, v156, v158, v153, v74, *(*v157 + 144), *(*v157 + 136));

      ++v74;
    }
  }

  else
  {
    v90 = v74;
  }

  if ((v149 & 4) != 0)
  {
    v97 = 0;
    v98 = v154;
    do
    {
      v99 = v90;
      v100 = realitykit_shader_api::textureFunctions[v97];
      v101 = v98;
      v102 = *v98;
      v103 = *(*v152 + 360);
      ++v90;
      re::makeAPIFunctionAsync(*(a1 + 48), v100, v155, v102, v156, v158, v153, v99, *(*v157 + 144), *(*v157 + 136));

      v98 = v101;
      ++v97;
    }

    while (v97 != 12);
    for (n = 0; n != 9; ++n)
    {
      v105 = v90;
      v106 = realitykit_shader_api::materialFunctions[n];
      v107 = *v98;
      v108 = *(*v152 + 360);
      ++v90;
      re::makeAPIFunctionAsync(*(a1 + 48), v106, v155, v107, v156, v158, v153, v105, *(*v157 + 144), *(*v157 + 136));

      v98 = v101;
    }

    v109 = 0;
    v96 = v153;
    do
    {
      v110 = realitykit_shader_api::geometry_modifierFunctions[v109];
      v111 = *v98;
      v112 = *(*v152 + 360);
      v95 = v90 + 1;
      re::makeAPIFunctionAsync(*(a1 + 48), v110, v155, v111, v156, v158, v153, v90, *(*v157 + 144), *(*v157 + 136));

      v98 = v101;
      ++v109;
      ++v90;
    }

    while (v109 != 48);
  }

  else
  {
    v95 = v90;
    v96 = v153;
  }

  if ((v149 & 8) != 0)
  {
    v118 = v96;
    v119 = 0;
    v120 = v156;
    v121 = *v152;
    do
    {
      v122 = v95;
      v123 = v120;
      v124 = realitykit_shader_api::geometry_modifier_privateFunctions[v119];
      v125 = *v154;
      v126 = v121;
      v127 = *(v121 + 360);
      ++v95;
      v128 = v124;
      v120 = v123;
      re::makeAPIFunctionAsync(*(a1 + 48), v128, v155, v125, v123, v158, v118, v122, *(*v157 + 144), *(*v157 + 136));

      v121 = v126;
      ++v119;
    }

    while (v119 != 57);
    for (ii = 0; ii != 2; ++ii)
    {
      v130 = v95;
      v131 = realitykit_shader_api::texture_privateFunctions[ii];
      v132 = *v154;
      v133 = *(*v152 + 360);
      ++v95;
      re::makeAPIFunctionAsync(*(a1 + 48), v131, v155, v132, v123, v158, v118, v130, *(*v157 + 144), *(*v157 + 136));
    }

    v134 = 0;
    v115 = v154;
    v116 = v155;
    v114 = v123;
    v117 = *v152;
    do
    {
      v135 = v114;
      v136 = realitykit_shader_api::material_privateFunctions[v134];
      v137 = v115;
      v138 = *v115;
      v139 = v117;
      v140 = *(v117 + 360);
      v113 = v95 + 1;
      v141 = v136;
      v114 = v135;
      re::makeAPIFunctionAsync(*(a1 + 48), v141, v155, v138, v135, v158, v153, v95, *(*v157 + 144), *(*v157 + 136));

      v117 = v139;
      v115 = v137;
      ++v134;
      ++v95;
    }

    while (v134 != 2);
  }

  else
  {
    v113 = v95;
    v114 = v156;
    v115 = v154;
    v116 = v155;
    v117 = *v152;
  }

  if ((v149 & 0x10) != 0)
  {
    for (jj = 0; jj != 13; ++jj)
    {
      v143 = v114;
      v144 = realitykit_shader_api::ui_geometry_modifier_privateFunctions[jj];
      v145 = *v115;
      v146 = v117;
      v147 = *(v117 + 360);
      v148 = v144;
      v114 = v143;
      re::makeAPIFunctionAsync(*(a1 + 48), v148, v116, v145, v143, v158, v153, v113, *(*v157 + 144), *(*v157 + 136));

      v117 = v146;
      v115 = v154;
      ++v113;
    }
  }
}

BOOL re::validateCachedPipelineState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v25 = *(*a2 + 120);
  v5 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4 + 376, &v25);
  v6 = *(a1 + 48);
  v25 = *(*a2 + 128);
  v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 376, &v25);
  v8 = *a2;
  v9 = *(*a2 + 160);
  if (v9)
  {
    v10 = 0;
    v11 = v8[21];
    v12 = 8 * v9;
    do
    {
      v13 = *(a1 + 48);
      v25 = *v11;
      v14 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v13 + 376, &v25);
      if (v14)
      {
        v10 ^= (v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + [*(v14 + 8) hash];
      }

      ++v11;
      v12 -= 8;
    }

    while (v12);
    v8 = *a2;
  }

  else
  {
    v10 = 0;
  }

  v15 = v8[23];
  if (!v15)
  {
    v16 = 0;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_17:
    v21 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  v17 = v8[24];
  v18 = 8 * v15;
  do
  {
    v19 = *(a1 + 48);
    v25 = *v17;
    v20 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v19 + 376, &v25);
    if (v20)
    {
      v16 ^= (v16 << 6) - 0x61C8864680B583E9 + (v16 >> 2) + [*(v20 + 8) hash];
    }

    ++v17;
    v18 -= 8;
  }

  while (v18);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_14:
  v21 = [*(v5 + 8) hash];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_15:
  v22 = [*(v7 + 8) hash];
LABEL_19:
  v23 = *a2;
  return v22 == *(*a2 + 112) && v21 == v23[13] && v16 == v23[18] && v10 == v23[17];
}

uint64_t re::compileCachedPipelineStateAsync@<X0>(re *a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  LOBYTE(v4) = a3;
  v5 = a1;
  v326 = *MEMORY[0x1E69E9840];
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 224, 8);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  ArcSharedObject::ArcSharedObject(v8, 0);
  *v9 = &unk_1F5D04260;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 89) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 61) = 0;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0;
  *a4 = v9;
  v10 = re::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = kdebug_trace();
  }

  atomic_store(1u, (v8 + 208));
  ++*(*v5 + 48);
  v261 = *(v5 + 8);
  v258 = *(v5 + 24);
  v11 = *(v5 + 64);
  LODWORD(v269) = *(v5 + 88);
  v12 = *(v5 + 40);
  if ((atomic_load_explicit(&qword_1EE1B87E8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_327;
  }

  while (2)
  {
    v280 = 0;
    v281 = 0;
    v279 = 0;
    re::DynamicString::setCapacity(&v278, 0x200uLL);
    v13 = *(v5 + 80);
    if (v13)
    {
      v14 = *(v5 + 72);
      v15 = v14 + 10 * v13;
      while (1)
      {
        v16 = v11;
        do
        {
          v17 = v16;
          v16 = *v16;
          v18 = v17[3];
          if (v16)
          {
            v19 = v18 == 0;
          }

          else
          {
            v19 = 0;
          }
        }

        while (v19);
        v20 = *(v14 + 2);
        if (v18 <= v20)
        {
          break;
        }

        v21 = (v17[4] + 16 * v20);
        if (*(v14 + 3))
        {
          VertexFormatFromDataType = re::getVertexFormatFromDataType(*(v14 + 3));
          v23 = -1;
          v24 = 1;
          v25 = 1;
        }

        else
        {
          v23 = *v21;
          VertexFormatFromDataType = *(v21 + 12);
          v24 = v21[1];
          v25 = *(v21 + 5);
          if (*(v14 + 8))
          {
            v24 = 0;
            v25 = 0;
          }
        }

        v26 = *(v14 + 1);
        v27 = *v14;
        v14 = (v14 + 10);
        re::DynamicString::appendf(&v278, "(att=%d fmt=%d off=%d lyt=%d str=%d sf=%d sr=%d) ", v26, VertexFormatFromDataType, *(v21 + 2), v27, v23, v25, v24);
        if (v14 == v15)
        {
          goto LABEL_17;
        }
      }

      v323[0] = 0;
      memset(v293, 0, sizeof(v293));
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v325 = 136315906;
      *&v325[4] = "operator[]";
      *&v325[12] = 1024;
      *&v325[14] = 476;
      *&v325[18] = 2048;
      *&v325[20] = v20;
      *&v325[28] = 2048;
      *&v325[30] = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_311;
    }

LABEL_17:
    WeakRetained = objc_loadWeakRetained((*(v5 + 40) + 2736));
    v29 = WeakRetained - 8;
    if (!WeakRetained)
    {
      v29 = 0;
    }

    v30 = *(v29 + 178);
    v260 = *v258;
    v255 = v258[9];
    *v250 = v258[10];
    v32 = *(v5 + 120);
    v31 = *(v5 + 128);
    v33 = *(v5 + 112);
    *v272 = v258 + 1;
    v34 = *(v258 + 5);
    v318 = *(v258 + 1);
    v319 = v34;
    if (!v30)
    {
      v30 = "NULL";
    }

    __s = v30;
    v267 = v12;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = "NULL";
    }

    v249 = v35;
    if (v31)
    {
      v36 = v31;
    }

    else
    {
      v36 = "NULL";
    }

    if (v32)
    {
      v37 = v32;
    }

    else
    {
      v37 = "NULL";
    }

    v247 = v37;
    v248 = v36;
    v257 = (v12 + 72);
    v262 = v11;
    v251 = v4;
    v253 = a4;
    if (*(v12 + 144))
    {
      v38 = *(v12 + 160);
      v39 = (v38 + 4);
      v40 = (v38 + 8);
      v41 = (v38 + 12);
      v42 = (v38 + 16);
      v43 = (v38 + 20);
      v44 = (v38 + 24);
    }

    else
    {
      v39 = (v12 + 84);
      v40 = (v12 + 88);
      v41 = (v12 + 92);
      v42 = (v12 + 96);
      v43 = (v12 + 100);
      v44 = (v12 + 104);
      v38 = (v12 + 72);
    }

    v252 = WeakRetained;
    v45 = *v38;
    v46 = *v43;
    v47 = *v41;
    v48 = *v39;
    v49 = *v40;
    v50 = *v42;
    v51 = *v44;
    v274 = v5;
    if (*(v5 + 56) == 1 && *(v5 + 57) != 1 || *(*(v5 + 40) + 2845) != 1 || _MergedGlobals_436 == 1)
    {
      v52 = *re::graphicsLogObjects(WeakRetained);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        v54 = *(v5 + 104);
        v55 = *(v5 + 32);
        v56 = **(v5 + 40);
        v57 = v55[3];
        v58 = *(v55[2] + 8);
        if (v57)
        {
          v59 = *(v57 + 8);
        }

        else
        {
          v59 = "NONE";
        }

        v60 = *(v5 + 57);
        v61 = v55[21];
        if (v279)
        {
          v62 = v280;
        }

        else
        {
          v62 = &v279 + 1;
        }

        *buf = 134223874;
        *&buf[4] = v54;
        *&buf[12] = 2082;
        *&buf[14] = __s;
        *&buf[22] = 2082;
        *&buf[24] = v56;
        LOWORD(v293[0]) = 2082;
        *(v293 + 2) = v58;
        WORD5(v293[0]) = 2082;
        *(v293 + 12) = v59;
        WORD2(v293[1]) = 1024;
        *(&v293[1] + 6) = v60;
        WORD5(v293[1]) = 2048;
        *(&v293[1] + 12) = v61;
        WORD2(v293[2]) = 1024;
        *(&v293[2] + 6) = v255;
        WORD5(v293[2]) = 1024;
        HIDWORD(v293[2]) = v250[0];
        *v294 = 1024;
        *&v294[2] = v260;
        *&v294[6] = 1024;
        *&v294[8] = v269;
        *&v294[12] = 1024;
        *&v294[14] = a2;
        *&v294[18] = 1024;
        v295 = v318;
        v296 = 1024;
        v297 = DWORD1(v318);
        v298 = 1024;
        v299 = DWORD2(v318);
        v300 = 1024;
        v301 = HIDWORD(v318);
        v302 = 1024;
        v303 = v319;
        v304 = 1024;
        v305 = DWORD1(v319);
        v306 = 1024;
        v307 = DWORD2(v319);
        v308 = 1024;
        v309 = HIDWORD(v319);
        v310 = 2082;
        v311 = v62;
        v312 = 2082;
        v313 = v249;
        v314 = 2082;
        v315 = v247;
        v316 = 2082;
        v317 = v248;
        _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu name=%{public}s tech=%{public}s vtx=%{public}s frag=%{public}s ciar=%d fc=%zu dFmt=%d sFmt=%d sc=%d pt=%d sof=%d pxFmt=%d %d %d %d %d %d %d %d vd=%{public}snode=%{public}s type=%{public}s graph=%{public}s ", buf, 0xBAu);
      }

      v63 = *re::graphicsLogObjects(v53);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      if (v64)
      {
        v65 = 0;
        v66 = *(v267 + 75);
        if (*(v267 + 76))
        {
          v67 = *(v267 + 75);
        }

        else
        {
          v67 = 0;
        }

        if (v45)
        {
          v68 = v48;
        }

        else
        {
          v68 = 0;
        }

        if (v45)
        {
          v69 = v49;
        }

        else
        {
          v69 = 0;
        }

        v70 = *(v5 + 104);
        if (v45)
        {
          v71 = v47;
        }

        else
        {
          v71 = 0;
        }

        if (v45)
        {
          v72 = v50;
        }

        else
        {
          v72 = 0;
        }

        if (v45)
        {
          v73 = v46;
        }

        else
        {
          v73 = 0;
        }

        if (v45)
        {
          v74 = v51;
        }

        else
        {
          v74 = 0;
        }

        if ((a2 & 2) == 0)
        {
          v65 = *(v267 + 108);
        }

        *buf = 134220544;
        *&buf[4] = v70;
        *&buf[12] = 1024;
        *&buf[14] = v66;
        *&buf[18] = 1024;
        *&buf[20] = v67;
        *&buf[24] = 1024;
        *&buf[26] = v45;
        *&buf[30] = 1024;
        LODWORD(v293[0]) = v68;
        WORD2(v293[0]) = 1024;
        *(v293 + 6) = v69;
        WORD5(v293[0]) = 1024;
        HIDWORD(v293[0]) = v71;
        LOWORD(v293[1]) = 1024;
        *(&v293[1] + 2) = v72;
        WORD3(v293[1]) = 1024;
        DWORD2(v293[1]) = v73;
        WORD6(v293[1]) = 1024;
        *(&v293[1] + 14) = v74;
        WORD1(v293[2]) = 1024;
        DWORD1(v293[2]) = v65;
        _os_log_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu a2c=%d a21=%d be=%d rgbS=%d rgbD=%d rgbB=%d aS=%d aD=%d aB=%d wm=%d ", buf, 0x48u);
      }

      memset(&buf[8], 0, 24);
      v75 = re::DynamicString::setCapacity(buf, 0x200uLL);
      v76 = *(v5 + 32);
      v77 = *(v76 + 136);
      if (v77)
      {
        v78 = 0;
        v79 = (*(v76 + 144) + 36);
        v80 = 104 * v77;
        do
        {
          if (*(v79 - 28))
          {
            v81 = *(v79 - 20);
          }

          else
          {
            v81 = v79 - 27;
          }

          v75 = re::DynamicString::appendf(buf, "%s=%llu ", v81, *v79);
          if (++v78 == 20)
          {
            v82 = *re::graphicsLogObjects(v75);
            v75 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
            if (v75)
            {
              v83 = *(v5 + 104);
              v84 = *(*(v5 + 32) + 168);
              if (buf[8])
              {
                v85 = *&buf[16];
              }

              else
              {
                v85 = &buf[9];
              }

              *v325 = 134218498;
              *&v325[4] = v83;
              *&v325[12] = 2048;
              *&v325[14] = v84;
              *&v325[22] = 2082;
              *&v325[24] = v85;
              _os_log_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu fc=%zu %{public}s", v325, 0x20u);
            }

            if (buf[8])
            {
              *&buf[8] = 1;
              v86 = *&buf[16];
            }

            else
            {
              buf[8] = 0;
              v86 = &buf[9];
            }

            v78 = 0;
            *v86 = 0;
          }

          v79 += 13;
          v80 -= 104;
        }

        while (v80);
      }

      if (buf[8])
      {
        v87 = *&buf[8] >> 1;
      }

      else
      {
        v87 = buf[8] >> 1;
      }

      if (v87)
      {
        v88 = *re::graphicsLogObjects(v75);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = *(v5 + 104);
          v90 = *(*(v5 + 32) + 168);
          if (buf[8])
          {
            v91 = *&buf[16];
          }

          else
          {
            v91 = &buf[9];
          }

          *v325 = 134218498;
          *&v325[4] = v89;
          *&v325[12] = 2048;
          *&v325[14] = v90;
          *&v325[22] = 2082;
          *&v325[24] = v91;
          _os_log_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu fc=%zu %{public}s", v325, 0x20u);
        }
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))(*buf, *&buf[16]);
      }
    }

    LOBYTE(v4) = a2;
    v11 = v267;
    v12 = v261;
    if (re::mtl::Device::isPhysicalHardware((*(v5 + 8) + 208)))
    {
      v92 = 0x9E3779B97F4A7C17;
      v93 = strlen(__s);
      v94 = 0x9E3779B97F4A7C17;
      if (v93)
      {
        MurmurHash3_x64_128(__s, v93, 0, buf);
        v94 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
      }

      v95 = strlen(**(v5 + 40));
      if (v95)
      {
        MurmurHash3_x64_128(**(v5 + 40), v95, 0, buf);
        v4 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
      }

      else
      {
        v4 = 0;
      }

      if (v279)
      {
        v96 = v280;
      }

      else
      {
        v96 = &v279 + 1;
      }

      v97 = strlen(v96);
      if (v97)
      {
        MurmurHash3_x64_128(v96, v97, 0, buf);
        v92 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
      }

      v98 = ((v94 << 6) - 0x61C8864680B583E9 + (v94 >> 2) + (((v4 >> 2) + (v4 << 6) + v92) ^ v4)) ^ v94;
      v99 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v255 ^ (v255 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v255 ^ (v255 >> 30))) >> 27));
      v100 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v250 ^ (*v250 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v250 ^ (*v250 >> 30))) >> 27));
      v101 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v260 ^ (v260 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v260 ^ (v260 >> 30))) >> 27));
      LOBYTE(v4) = a2;
      v102 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
      v103 = ((v99 ^ (v99 >> 31)) - 0x61C8864680B583E9 + (v98 << 6) + (v98 >> 2)) ^ v98;
      v104 = ((v101 ^ (v101 >> 31)) - 0x61C8864680B583E9 + ((v100 ^ (v100 >> 31)) << 6) + ((v100 ^ (v100 >> 31)) >> 2)) ^ v100 ^ (v100 >> 31);
      v105 = ((((v102 ^ (v102 >> 31)) - 0x61C8864680B583E9 + (v104 << 6) + (v104 >> 2)) ^ v104) - 0x61C8864680B583E9 + (v103 << 6) + (v103 >> 2)) ^ v103;
      v106 = 0xBF58476D1CE4E5B9 * (v318 ^ (v318 >> 30));
      v107 = 0xBF58476D1CE4E5B9 * (DWORD1(v318) ^ (DWORD1(v318) >> 30));
      v108 = (0x94D049BB133111EBLL * (v107 ^ (v107 >> 27))) ^ ((0x94D049BB133111EBLL * (v107 ^ (v107 >> 27))) >> 31);
      v109 = 0xBF58476D1CE4E5B9 * (DWORD2(v318) ^ (DWORD2(v318) >> 30));
      v110 = 0xBF58476D1CE4E5B9 * (HIDWORD(v318) ^ (HIDWORD(v318) >> 30));
      v111 = (((0x94D049BB133111EBLL * (v106 ^ (v106 >> 27))) ^ ((0x94D049BB133111EBLL * (v106 ^ (v106 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v105 << 6) + (v105 >> 2)) ^ v105;
      v112 = (((0x94D049BB133111EBLL * (v109 ^ (v109 >> 27))) ^ ((0x94D049BB133111EBLL * (v109 ^ (v109 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v108 << 6) + (v108 >> 2)) ^ v108;
      v113 = ((v111 << 6) - 0x61C8864680B583E9 + (v111 >> 2) + ((((0x94D049BB133111EBLL * (v110 ^ (v110 >> 27))) ^ ((0x94D049BB133111EBLL * (v110 ^ (v110 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v112 << 6) + (v112 >> 2)) ^ v112)) ^ v111;
      v114 = 0xBF58476D1CE4E5B9 * (v319 ^ (v319 >> 30));
      v115 = 0xBF58476D1CE4E5B9 * (DWORD1(v319) ^ (DWORD1(v319) >> 30));
      v116 = (0x94D049BB133111EBLL * (v115 ^ (v115 >> 27))) ^ ((0x94D049BB133111EBLL * (v115 ^ (v115 >> 27))) >> 31);
      v117 = 0xBF58476D1CE4E5B9 * (DWORD2(v319) ^ (DWORD2(v319) >> 30));
      v118 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (HIDWORD(v319) ^ (HIDWORD(v319) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (HIDWORD(v319) ^ (HIDWORD(v319) >> 30))) >> 27));
      v119 = (((0x94D049BB133111EBLL * (v114 ^ (v114 >> 27))) ^ ((0x94D049BB133111EBLL * (v114 ^ (v114 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v113 << 6) + (v113 >> 2)) ^ v113;
      v120 = (((0x94D049BB133111EBLL * (v117 ^ (v117 >> 27))) ^ ((0x94D049BB133111EBLL * (v117 ^ (v117 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v116 << 6) + (v116 >> 2)) ^ v116;
      v121 = ((((v118 ^ (v118 >> 31)) - 0x61C8864680B583E9 + (v120 << 6) + (v120 >> 2)) ^ v120) - 0x61C8864680B583E9 + (v119 << 6) + (v119 >> 2)) ^ v119;
      if (v279)
      {
        v122 = v280;
      }

      else
      {
        v122 = &v279 + 1;
      }

      LOBYTE(v246) = *(v5 + 57);
      re::REAnalyticsEventShaderCompilationRequest(__s, **(v5 + 40), v249, v248, v247, v260, &v318, v255, v250[0], a2, v122, v246, v121, *(v5 + 56));
    }

    re::ShaderManager::makeRenderPipelineDescriptor(*(v261 + 6), &v277);
    v123 = *(v5 + 48);
    if (v123)
    {
      v124 = [MEMORY[0x1E696AEC0] stringWithCString:v123 encoding:4];
      if (!v124)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v124 = @"MeshPartRenderPipeline";
    }

    [v277 setLabel_];
LABEL_118:
    [v277 setRasterSampleCount_];
    [v277 setAlphaToCoverageEnabled_];
    if (*(v267 + 76) == 1)
    {
      v125 = *(v267 + 75);
    }

    else
    {
      v125 = 0;
    }

    [v277 setAlphaToOneEnabled_];
    if ((v269 - 1) > 3u)
    {
      v126 = 1;
    }

    else
    {
      v126 = qword_1E30A3260[(v269 - 1)];
    }

    [v277 setInputPrimitiveTopology_];
    v127 = *(v5 + 32);
    if (v127)
    {
      v128 = v127 + 8;
    }

    v14 = &unk_1E8723000;
    a4 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
    v259 = v127;
    v129 = *(v127 + 17);
    if (v129)
    {
      v130 = 104 * v129;
      v131 = *(v127 + 18) + 36;
      do
      {
        [a4 setConstantValue:v131 type:*(v131 - 4) atIndex:*(v131 - 2)];
        v131 += 104;
        v130 -= 104;
      }

      while (v130);
    }

    if (!v269)
    {
      buf[0] = 1;
      [a4 setConstantValue:buf type:53 withName:@"IsPointPrimitive"];
    }

    v132 = v259;
    if (*(v261 + 366) == 1)
    {
      [v277 setMaxVertexAmplificationCount_];
    }

    v133 = &selRef_isLimitedRenderAsset;
    v254 = a4;
    if (*(v5 + 56) != 1 || (*(*(v5 + 40) + 2849) & 1) == 0)
    {
      v134 = [objc_msgSend(MEMORY[0x1E69741E0] alloc)];
      __sa = v134;
      v135 = *(v5 + 80);
      if (v135)
      {
        v136 = *(v5 + 72);
        v261 = &v136[5 * v135];
        v4 = buf;
        v15 = &buf[9];
        while (1)
        {
          v137 = v262;
          do
          {
            v138 = v137;
            v137 = *v137;
            v18 = v138[3];
            if (v137)
            {
              v139 = v18 == 0;
            }

            else
            {
              v139 = 0;
            }
          }

          while (v139);
          v5 = v136[2];
          if (v18 <= v5)
          {
            break;
          }

          v140 = v138[4];
          if (*v136 >= 0x1Fu)
          {
            memset(&v325[8], 0, 24);
            re::DynamicString::setCapacity(v325, 0x200uLL);
            v141 = *(v274 + 4);
            v142 = *(v141 + 136);
            if (v142)
            {
              v143 = 0;
              v144 = *(v141 + 144);
              v145 = v144 + 104 * v142;
              do
              {
                re::DynamicString::DynamicString(buf, v144);
                v293[0] = *(v144 + 32);
                v146 = *(v144 + 48);
                v147 = *(v144 + 64);
                v148 = *(v144 + 80);
                *&v294[16] = *(v144 + 96);
                v293[2] = v147;
                *v294 = v148;
                v293[1] = v146;
                if (buf[8])
                {
                  v149 = *&buf[16];
                }

                else
                {
                  v149 = &buf[9];
                }

                re::DynamicString::appendf(v325, "%s=%llu ", v149, *(v293 + 4));
                if (++v143 == 20)
                {
                  re::logAttributeIndexExceedsLimit(v274, v325, *v136);
                  if (v325[8])
                  {
                    *&v325[8] = 1;
                    v150 = *&v325[16];
                  }

                  else
                  {
                    v325[8] = 0;
                    v150 = &v325[9];
                  }

                  v143 = 0;
                  *v150 = 0;
                }

                if (*buf && (buf[8] & 1) != 0)
                {
                  (*(**buf + 40))();
                }

                v144 += 104;
              }

              while (v144 != v145);
            }

            if (v325[8])
            {
              v151 = *&v325[8] >> 1;
            }

            else
            {
              v151 = v325[8] >> 1;
            }

            if (v151)
            {
              re::logAttributeIndexExceedsLimit(v274, v325, *v136);
            }

            if (*v325 && (v325[8] & 1) != 0)
            {
              (*(**v325 + 40))();
            }
          }

          v152 = (v140 + 16 * v5);
          if (v136[3])
          {
            v153 = re::getVertexFormatFromDataType(v136[3]);
            v12 = -1;
            v269 = 1;
            a4 = 1;
          }

          else
          {
            v12 = *v152;
            v153 = *(v152 + 12);
            if (*(v136 + 8))
            {
              a4 = 0;
            }

            else
            {
              a4 = *(v152 + 5);
            }

            if (*(v136 + 8))
            {
              v154 = 0;
            }

            else
            {
              v154 = v152[1];
            }

            v269 = v154;
          }

          v133 = &selRef_isLimitedRenderAsset;
          [objc_msgSend(objc_msgSend(__sa attributes)];
          [objc_msgSend(objc_msgSend(__sa attributes)];
          [objc_msgSend(objc_msgSend(__sa attributes)];
          v14 = &selRef_isLimitedRenderAsset;
          [objc_msgSend(objc_msgSend(__sa layouts)];
          [objc_msgSend(objc_msgSend(__sa layouts)];
          v155 = [__sa layouts];
          v156 = *v136;
          v136 += 5;
          v134 = [objc_msgSend(v155 objectAtIndexedSubscript_];
          v11 = v267;
          if (v136 == v261)
          {
            goto LABEL_176;
          }
        }

LABEL_311:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 476;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_312:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 797;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_313:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 797;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_314:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 797;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_315:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 797;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_316:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 797;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_317:
        v323[0] = 0;
        memset(v293, 0, sizeof(v293));
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v325 = 136315906;
        *&v325[4] = "operator[]";
        *&v325[12] = 1024;
        *&v325[14] = 797;
        *&v325[18] = 2048;
        *&v325[20] = v5;
        *&v325[28] = 2048;
        *&v325[30] = v15;
        v245[0] = 38;
        v244 = v325;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_318:
        dispatch_once(&qword_1EE1B87F0, &__block_literal_global_38);
        goto LABEL_223;
      }

LABEL_176:
      if (*(v259 + 23))
      {
        v234 = [__sa layouts];
        v235 = *(v274 + 10);
        if (v235)
        {
          v236 = v234;
          v237 = *(v274 + 9);
          v238 = 10 * v235;
          do
          {
            v239 = [v236 v133[160]];
            if ([v239 stepFunction] == 1)
            {
              [v239 setStepFunction_];
              [v239 setStepRate_];
            }

            v237 += 5;
            v238 -= 10;
            v133 = &selRef_isLimitedRenderAsset;
          }

          while (v238);
        }
      }

      [v277 setVertexDescriptor_];
      LOBYTE(v4) = a2;
      v132 = v259;
      if (__sa)
      {
      }
    }

    if (*(v132 + 23))
    {
      [v277 setTessellationFactorScaleEnabled_];
      [v277 setTessellationFactorFormat_];
      [v277 setTessellationFactorStepFunction_];
      [v277 setTessellationControlPointIndexType_];
      [v277 setTessellationOutputWindingOrder_];
      [v277 setTessellationPartitionMode_];
      [v277 setMaxTessellationFactor_];
    }

    v5 = 0;
    v157 = -256;
    v14 = &selRef_childNodes;
    v18 = &selRef_setOwnerWithIdentity_;
    a4 = &selRef_isLimitedRenderAsset;
    v12 = &selRef_setOwnerWithIdentity_;
    v158 = v257;
    do
    {
      if (!*(*v272 + 4 * v5))
      {
        goto LABEL_211;
      }

      [objc_msgSend(objc_msgSend(v277 colorAttachments)];
      v159 = *(v11 + 144);
      if (v159)
      {
        if (v159 <= v5)
        {
          [objc_msgSend(objc_msgSend(v277 colorAttachments)];
          [objc_msgSend(objc_msgSend(v277 colorAttachments)];
          goto LABEL_211;
        }

        v160 = *(v11 + 160) + v157;
        if (*(v160 + 257) == 1 && (v161 = *(v274 + 1), v161[371] == 1) && *v161 == 1)
        {
          [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        }

        else if (*(v160 + 256) == 1)
        {
          [objc_msgSend(objc_msgSend(v277 colorAttachments)];
          v165 = [objc_msgSend(v277 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_312;
          }

          [v165 setSourceRGBBlendFactor_];
          v166 = [objc_msgSend(v277 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_313;
          }

          [v166 setDestinationRGBBlendFactor_];
          v167 = [objc_msgSend(v277 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_314;
          }

          [v167 setRgbBlendOperation_];
          v168 = [objc_msgSend(v277 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_315;
          }

          [v168 setSourceAlphaBlendFactor_];
          v169 = [objc_msgSend(v277 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_316;
          }

          [v169 setDestinationAlphaBlendFactor_];
          v170 = [objc_msgSend(v277 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_317;
          }

          [v170 setAlphaBlendOperation_];
          v158 = v257;
        }

        v163 = [objc_msgSend(v277 colorAttachments)];
        if ((v4 & 2) == 0)
        {
          if (*(v11 + 144) <= v5)
          {
            v164 = 15;
          }

          else
          {
            v164 = *(*(v11 + 160) + v157 + 284);
          }

          goto LABEL_210;
        }

LABEL_209:
        v164 = 0;
        goto LABEL_210;
      }

      if (*(v11 + 73) == 1 && (v162 = *(v274 + 1), v162[371] == 1) && *v162 == 1)
      {
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
      }

      else if (*v158 == 1)
      {
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
        [objc_msgSend(objc_msgSend(v277 colorAttachments)];
      }

      v163 = [objc_msgSend(v277 colorAttachments)];
      if ((v4 & 2) != 0)
      {
        goto LABEL_209;
      }

      v164 = *(v11 + 108);
LABEL_210:
      [v163 setWriteMask_];
LABEL_211:
      ++v5;
      v157 += 32;
    }

    while (v157);
    v171 = v258[9];
    if (v171 - 250 <= 0xA && ((1 << (v171 + 6)) & 0x425) != 0)
    {
      [v277 setDepthAttachmentPixelFormat_];
    }

    v14 = v274;
    v15 = v253;
    v18 = v254;
    if (v258[10] - 253 <= 9 && ((1 << (*(v258 + 40) + 3)) & 0x385) != 0)
    {
      [v277 setStencilAttachmentPixelFormat_];
    }

    if (qword_1EE1B87F0 != -1)
    {
      goto LABEL_318;
    }

LABEL_223:
    if (byte_1EE1B87E4 == 1)
    {
      v173 = v14[4];
      if (*(v173 + 8))
      {
        if (*(v173 + 5))
        {
          v174 = *re::graphicsLogObjects([v277 setShaderValidation_]);
          if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
          {
            v175 = v14[4];
            if (*(v175 + 8))
            {
              if (*(v175 + 5))
              {
                v176 = *(*(v175 + 9) + 32);
                v177 = *(*(v175 + 6) + 32);
                *buf = 136315394;
                *&buf[4] = v176;
                *&buf[12] = 2080;
                *&buf[14] = v177;
                _os_log_impl(&dword_1E1C61000, v174, OS_LOG_TYPE_DEFAULT, "Shader Validation Enabled for custom shader using SurfaceShader = %s and GeometryModifier = %s", buf, 0x16u);
                break;
              }
            }

            else
            {
              v323[0] = 0;
              memset(v293, 0, sizeof(v293));
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v325 = 136315906;
              *&v325[4] = "operator[]";
              *&v325[12] = 1024;
              *&v325[14] = 476;
              *&v325[18] = 2048;
              *&v325[20] = 0;
              *&v325[28] = 2048;
              *&v325[30] = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v323[0] = 0;
            memset(v293, 0, sizeof(v293));
            memset(buf, 0, sizeof(buf));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v325 = 136315906;
            *&v325[4] = "operator[]";
            *&v325[12] = 1024;
            *&v325[14] = 476;
            *&v325[18] = 2048;
            *&v325[20] = 0;
            *&v325[28] = 2048;
            *&v325[30] = 0;
            v245[0] = 38;
            v243 = v325;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_327:
            v10 = __cxa_guard_acquire(&qword_1EE1B87E8);
            if (v10)
            {
              re::Defaults::BOOLValue("enableShaderDebugLogs", v240, buf);
              if (buf[0])
              {
                v241 = buf[1];
              }

              else
              {
                v241 = 0;
              }

              _MergedGlobals_436 = v241;
              __cxa_guard_release(&qword_1EE1B87E8);
            }

            continue;
          }
        }
      }
    }

    break;
  }

  v178 = v14[1];
  if (v259)
  {
    v179 = v259 + 8;
  }

  v180 = v277;
  v276 = v18;
  v181 = *v15;
  if (*v15)
  {
    v182 = v181 + 1;
  }

  v183 = v14[5];
  v273 = *(v14 + 56);
  v184 = v14[12];
  v185 = *(v14 + 136);
  __sb = v14[18];
  v186 = objc_loadWeakRetained(v183 + 342);
  v187 = v186 - 8;
  v270 = v186;
  if (!v186)
  {
    v187 = 0;
  }

  v263 = v187;
  v188 = dispatch_group_create();

  dispatch_group_enter(v188);
  v190 = re::globalAllocators(v189);
  v191 = (*(*v190[2] + 32))(v190[2], 24, 8);
  *(v191 + 1) = 0;
  *(v191 + 2) = 0;
  *v191 = 0;
  v192 = re::globalAllocators(v191);
  v193 = (*(*v192[2] + 32))(v192[2], 24, 8);
  v193[1] = 0;
  v193[2] = 0;
  *v193 = 0;
  v268 = v193;
  v271 = v178;
  v275 = *(v178 + 6);
  v194 = *v183;
  if ((atomic_load_explicit(&qword_1EE1B87F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87F8))
  {
    re::Defaults::BOOLValue("failIfNotPrecompiled", v242, &byte_1EE1B87E5);
    __cxa_guard_release(&qword_1EE1B87F8);
  }

  if (byte_1EE1B87E5 == 1)
  {
    if ((byte_1EE1B87E6 & 1) == 0)
    {
      LOBYTE(v185) = 0;
      goto LABEL_242;
    }

LABEL_241:
    LOBYTE(v185) = v183[2848];
  }

  else if (v185)
  {
    goto LABEL_241;
  }

LABEL_242:
  v195 = v188;
  *&v290.var0 = 0;
  v290.var1 = &str_67;
  v291 = v195;
  v196 = v180;
  if (v181)
  {
    v197 = v181 + 1;
  }

  v198 = v180;
  if (v259)
  {
    v199 = v259 + 8;
  }

  v200 = v185 & 1;
  v201 = v270;
  if (v270)
  {
    v201 = v270;
  }

  v202 = re::globalAllocators(v201)[2];
  *&v325[24] = v202;
  *&v325[32] = 0;
  if (v202)
  {
    v203 = (*(*v202 + 32))(v202, 112, 0);
  }

  else
  {
    v203 = 0;
  }

  *v203 = &unk_1F5D04108;
  *(v203 + 8) = v191;
  *(v203 + 16) = v268;
  *(v203 + 24) = v196;
  *(v203 + 32) = v181;
  *(v203 + 40) = v183;
  *(v203 + 48) = v194;
  *(v203 + 56) = v259;
  *(v203 + 64) = v273;
  *(v203 + 72) = v184;
  *(v203 + 80) = v271;
  *(v203 + 88) = v263;
  *(v203 + 96) = v200;
  *(v203 + 97) = v251;
  *(v203 + 104) = __sb;
  *&v325[32] = v203;
  re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(v275, v273, v184, &v291, 1, &v290, v325);
  v204 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v325);
  if (v196)
  {
  }

  if (*&v290.var0)
  {
    if (*&v290.var0)
    {
    }
  }

  *&v290.var0 = 0;
  v290.var1 = &str_67;

  dispatch_group_enter(v195);
  v205 = *(v271 + 48);
  *buf = *(*(v259 + 2) + 16);
  v206 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v205 + 376, buf);
  if (v206)
  {
    v207 = (v206 + 8);
  }

  else
  {
    v207 = 0;
  }

  v181[13] = [*v207 hash];
  v208 = *(v259 + 2);
  v209 = *(v208 + 16);
  v181[15] = v209;
  re::ShaderManager::makeFunctionDescriptor(*(v271 + 48), *(v208 + 8), &v276, v207, v209, &v289);
  v210 = *(*(v259 + 2) + 8);
  *&v288.var0 = 0;
  v288.var1 = &str_67;
  *buf = v289;
  *&buf[8] = v198;
  *&buf[16] = v259;
  v212 = v259 + 8;
  buf[24] = v273;
  v213 = v195;
  *&v293[0] = v213;
  *(&v293[0] + 1) = v184;
  *&v293[1] = *v207;
  v214 = re::globalAllocators(*&v293[1])[2];
  v323[3] = v214;
  v324 = 0;
  if (v214)
  {
    v214 = (*(*v214 + 32))(v214, 64, 0);
  }

  v324 = re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::Callable(v214, buf);
  re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(v275, v273, v184, 0, &v288, v323);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v323);

  if (*&buf[16])
  {
  }

  if (*&buf[8])
  {
  }

  v215 = *buf;
  if (*buf)
  {
  }

  if (*&v288.var0)
  {
    if (*&v288.var0)
    {
    }
  }

  *&v288.var0 = 0;
  v288.var1 = &str_67;
  v181[17] = 0;
  v216 = *(v259 + 5);
  if (v216)
  {
    *buf = 0;
    v287 = v259;
    v217 = v259 + 8;
    v218 = v213;
    v286 = v218;
    re::makeMetalPrivateLinkedFunctionsAsync(v271, &v287, 1, &v276, &v286, v273, v184, v191, buf, (v181 + 19));

    v181[17] = *buf;
  }

  if (*(v259 + 3))
  {
    dispatch_group_enter(v213);
    v219 = *(v271 + 48);
    *buf = *(*(v259 + 3) + 16);
    v220 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v219 + 376, buf);
    if (v220)
    {
      v221 = (v220 + 8);
    }

    else
    {
      v221 = 0;
    }

    v181[14] = [*v221 hash];
    v222 = *(v259 + 3);
    v223 = *(v222 + 16);
    v181[16] = v223;
    re::ShaderManager::makeFunctionDescriptor(*(v271 + 48), *(v222 + 8), &v276, v221, v223, &v285);
    v224 = *(*(v259 + 3) + 8);
    *&v284.var0 = 0;
    v284.var1 = &str_67;
    *buf = v285;
    *&buf[8] = v198;
    *&buf[16] = v259;
    v226 = v259 + 8;
    buf[24] = v273;
    v227 = v213;
    *&v293[0] = v227;
    *(&v293[0] + 1) = v184;
    *&v293[1] = *v221;
    v228 = re::globalAllocators(*&v293[1])[2];
    v321 = v228;
    if (v228)
    {
      v228 = (*(*v228 + 32))(v228, 64, 0);
    }

    v322 = re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::Callable(v228, buf);
    re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(v275, v273, v184, 0, &v284, v320);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v320);

    if (*&buf[16])
    {
    }

    if (*&buf[8])
    {
    }

    v229 = *buf;
    if (*buf)
    {
    }

    if (*&v284.var0)
    {
      if (*&v284.var0)
      {
      }
    }

    *&v284.var0 = 0;
    v284.var1 = &str_67;
    v230 = *(v259 + 8);
    if (v230)
    {
      *buf = 0;
      v283 = v259;
      v231 = v259 + 8;
      v232 = v227;
      v282 = v232;
      re::makeMetalPrivateLinkedFunctionsAsync(v271, &v283, 2, &v276, &v282, v273, v184, v268, buf, (v181 + 22));

      v181[18] = *buf;
    }

    if (v285)
    {
    }
  }

  else
  {
    v181[14] = 0;
    v181[18] = 0;
  }

  dispatch_group_leave(v213);
  if (v289)
  {
  }

  if (v270)
  {
  }

  if (v276)
  {

    v276 = 0;
  }

  if (v198)
  {
  }

  if (v254)
  {
  }

  if (v277)
  {
  }

  if (v252)
  {
  }

  result = v278;
  if (v278)
  {
    if (v279)
    {
      return (*(*v278 + 40))();
    }
  }

  return result;
}

uint64_t ___ZN2re31compileCachedPipelineStateAsyncERNS_25PipelineStateCacheContextEhb_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::stringValue("shaderValidationMaterialFilter", a2, v9);
  if (v9[0])
  {
    v3 = &v10;
  }

  else
  {
    v3 = &v7;
  }

  re::DynamicString::DynamicString(&v12, v3);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  if (v9[0] == 1 && v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  byte_1EE1B87E4 = 0;
  v4 = v13;
  if (v13)
  {
    v5 = *&v14[7];
  }

  else
  {
    v5 = v14;
  }

  if (!strcmp(v5, "custom"))
  {
    byte_1EE1B87E4 = 1;
  }

  result = v12;
  if (v12)
  {
    if (v4)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

void re::makePipelineStateCacheKey(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  if (*(a1 + 56) == 1)
  {
    v7 = 0x9E3779B97F4A7C17;
    if (*(*(a1 + 40) + 2849))
    {
      goto LABEL_18;
    }
  }

  v8 = *(a1 + 64);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 && !v9[3]);
  if (v9[2])
  {
    v10 = *(a1 + 80);
    v7 = 0x9E3779B97F4A7C17;
    if (v10)
    {
      v49 = a3;
      v11 = 0;
      v12 = (*(a1 + 72) + 4);
      v13 = 10 * v10;
      while (1)
      {
        v14 = *v12;
        if (v9[3] <= v14)
        {
          v42 = *re::graphicsLogObjects(a1);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v44 = *(v4 + 48);
            v45 = v9[3];
            v46 = *(v12 - 2);
            v47 = *v12;
            *buf = 136315906;
            *&buf[4] = v44;
            *&buf[12] = 2048;
            *&buf[14] = v45;
            *&buf[22] = 1024;
            *&buf[24] = v46;
            *&buf[28] = 1024;
            *&buf[30] = v47;
            _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Context %s attribute has %lu attribute formats but resolution with slotIndex %d has bufferIndex %d", buf, 0x22u);
          }

          *v49 = 0;
          return;
        }

        v15 = v9[4] + 16 * v14;
        if (v12[1])
        {
          break;
        }

        if (*(v12 + 4) != 1)
        {
          v17 = 0;
          v18 = 0;
          VertexFormatFromDataType = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        VertexFormatFromDataType = *(v15 + 12);
        v17 = 1;
LABEL_16:
        v21 = *(v12 - 1);
        v22 = *(v12 - 2) | (v21 << 16);
        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v21 >> 14))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v21 >> 14))) >> 27));
        v24 = v23 ^ (v23 >> 31);
        a1 = re::VertexBufferFormat::hash(v15, v17, v18, VertexFormatFromDataType, v19, v20);
        v11 ^= (v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + ((a1 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24);
        v12 += 5;
        v13 -= 10;
        if (!v13)
        {
          v7 = v11 - 0x61C8864680B583E9;
          v6 = 0x9E3779B97F4A7C17;
          a3 = v49;
          v3 = a2;
          goto LABEL_18;
        }
      }

      VertexFormatFromDataType = re::getVertexFormatFromDataType(v12[1]);
      v17 = 1;
      v18 = -1;
      v19 = 1;
LABEL_15:
      v20 = 1;
      goto LABEL_16;
    }

LABEL_18:
    v25 = *(v4 + 32);
    if (v25)
    {
      v26 = v25 + 1;
    }

    v27 = *(v4 + 8);
    v28 = *(v27 + 48);
    *buf = *(v25[2] + 16);
    v29 = [*(re::HashTable<unsigned long long re:re::Hash<unsigned long long> :re::EqualTo<unsigned long long> FrameAnalysisManager:true :{false>::tryGet(v28 + 376, buf) + 8), "hash"}RenderState];
    v30 = v25[3];
    if (v30)
    {
      v31 = *(v27 + 48);
      *buf = *(v30 + 16);
      v6 = [*(re::HashTable<unsigned long long re:re::Hash<unsigned long long> :re::EqualTo<unsigned long long> FrameAnalysisManager:true :{false>::tryGet(v31 + 376, buf) + 8), "hash"}RenderState] - 0x61C8864680B583E9;
    }

    v32 = *(v4 + 24);
    *buf = *v32;
    *&buf[16] = *(v32 + 16);
    *&buf[32] = *(v32 + 32);
    v33 = *(v32 + 48);
    v34 = re::TechniqueState::hashForPSO((*(v4 + 40) + 72), v3);
    v35 = *&buf[16];
    *(a3 + 8) = *buf;
    v36 = ((v34 << 6) - 0x61C8864680B583E9 + (v34 >> 2) + ((v7 + (v25[19] << 6) + (v25[19] >> 2)) ^ v25[19])) ^ v34;
    v37 = ((((v29 >> 2) + (v29 << 6) + v6) ^ v29) - 0x61C8864680B583E9 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = *(v4 + 88);
    if (v38 >= 5)
    {
      v39 = 1;
    }

    else
    {
      v39 = 0x303020201uLL >> (8 * v38);
    }

    v40 = *(v4 + 136);
    *a3 = 1;
    *(a3 + 24) = v35;
    *(a3 + 40) = *&buf[32];
    *(a3 + 14) = v33;
    *(a3 + 8) = v37;
    a3[72] = v39;
    a3[73] = v40;

    return;
  }

  v41 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v43 = *(v4 + 48);
    *buf = 136315138;
    *&buf[4] = v43;
    _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "Context %s attribute table formats not initialized!", buf, 0xCu);
  }

  *a3 = 0;
}

uint64_t re::VertexBufferFormat::hash(unsigned __int16 *a1, char a2, unint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    a3 = *a1;
    a4 = *(a1 + 12);
    a5 = a1[1];
    a6 = *(a1 + 5);
  }

  v6 = (a5 << 16) | (*(a1 + 4) << 32) | (a6 << 40) | (a4 << 48) | (*(a1 + 2) << 56);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  return (((v8 ^ (v8 >> 31)) << 6) + ((v8 ^ (v8 >> 31)) >> 2) - 0x61C8864680B583E9 + (v7 ^ (v7 >> 31))) ^ v8 ^ (v8 >> 31);
}

unint64_t re::TechniqueState::hashForPSO(re::TechniqueState *this, char a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ((a2 & 2) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 9) << 51;
  }

  v3 = *this;
  v4 = *(this + 3);
  v5 = *(this + 4);
  v6 = *(this + 7);
  v7 = *(this + 8);
  v8 = *(this + 12);
  v9 = 0x9E3779B97F4A7C17;
  v10 = *(this + 1);
  v11 = *(this + 9);
  if (v11 && 32 * v11)
  {
    v18 = *(this + 12);
    MurmurHash3_x64_128(*(this + 11), 32 * v11, 0, v19);
    v8 = v18;
    v9 = ((v19[1] - 0x61C8864680B583E9 + (v19[0] << 6) + (v19[0] >> 2)) ^ v19[0]) - 0x61C8864680B583E9;
  }

  v12.i64[0] = v8;
  v12.i64[1] = SDWORD1(v8);
  v13 = v12;
  v12.i64[0] = SDWORD2(v8);
  v12.i64[1] = SHIDWORD(v8);
  v14 = vorrq_s8(vshlq_u64(v13, xmmword_1E30A2A50), vshlq_u64(v12, xmmword_1E30497C0));
  v15 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | (v6 << 35) | (v7 << 43) | (v10 << 52) | v2 | v3 | (2 * v4) | (4 * v5);
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  return (((v16 ^ (v16 >> 31)) >> 2) + ((v16 ^ (v16 >> 31)) << 6) + v9) ^ v16 ^ (v16 >> 31);
}

void re::getOrCreatePipelineState(re *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  re::makePipelineStateCacheKey(a1, a2, v14);
  if (v14[0])
  {
    v6 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(*(a1 + 2) + 48, v15);
    if (v6 && (v7 = *v6, *a3 = *v6, v7))
    {
      v8 = (v7 + 8);
    }

    else
    {
      *(a1 + 13) = re::Hash<re::PipelineStateCacheKey>::operator()(&v13, v15);
      re::compileCachedPipelineStateAsync(a1, a2, 0, &v13);
      v9 = v13;
      *a3 = v13;
      v10 = v16;
      v11 = v15[3];
      v12 = v15[2];
      *(v9 + 40) = v15[1];
      *(v9 + 56) = v12;
      *(v9 + 72) = v11;
      *(v9 + 88) = v10;
      *(v9 + 24) = v15[0];
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew(*a1, v15, a3);
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew(uint64_t a1, int *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::PipelineStateCacheKey>::operator()(&v11, a2);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addInternal<re::PipelineStateCacheKey const&,re::SharedPtr<re::CachedPipelineState> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 96 * HIDWORD(v9) + 80;
  }
}

uint64_t re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D040B0;
  v2 = *(a1 + 88);
  if (v2)
  {

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    *(a1 + 32) = 0;
  }

  return a1;
}

void re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D040B0;
  v2 = *(a1 + 88);
  if (v2)
  {

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    *(a1 + 32) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v15[0] = v2;
  if (*(*(a1 + 72) + 48))
  {
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    re::sg::CachedCompilationMaterial::getVariation(*(*(a1 + 72) + 48), *(*(a1 + 88) + 144), *(*(a1 + 88) + 136), buf);
    v4 = *buf;
    if (*buf)
    {
      v14 = *(a1 + 8);
      re::sg::CachedCompilationMaterial::compileMetalLibrary(v4, &v14, *(a1 + 16), v16);
    }

    else
    {
      v5 = *re::graphicsLogObjects(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "sg::CachedCompilationMaterial missing. Fallback to ShaderGraph failure material.", v16, 2u);
      }

      v14 = *(a1 + 8);
      re::sg::compileShaderGraphFailureMetalLibrary(&v14, *(a1 + 16), v16);
    }

    v6 = *v16;
    *v16 = 0;
    v15[0] = v6;

    v2 = v6;
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    if (*buf)
    {
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor(v15, *(a1 + 32), &v13);
  v7 = re::internal::enableSignposts(0, 0);
  if (v7)
  {
    v7 = kdebug_trace();
  }

  if (v13)
  {
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(v8 + 8);
    if (v10 <= v9)
    {
      v15[1] = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v16 = 136315906;
      *&v16[4] = "operator[]";
      v17 = 1024;
      v18 = 468;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    NS::SharedPtr<MTL::Buffer>::operator=((*(v8 + 16) + 8 * v9), &v13);
  }

  else
  {
    v11 = *re::graphicsLogObjects(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 72) + 32);
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Unable to create linked function %s", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  if (v13)
  {
  }
}

uint64_t re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D040B0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  v7 = *(a1 + 88);
  *(a2 + 88) = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D040B0;
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a2 + 8) = v2;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a2 + 24) = v3;
  v4 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = 0;
  return a2;
}

void *re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04108;
  v2 = a1[11];
  if (v2)
  {

    a1[11] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  v5 = a1[3];
  if (v5)
  {

    a1[3] = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04108;
  v2 = a1[11];
  if (v2)
  {

    a1[11] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  v5 = a1[3];
  if (v5)
  {

    a1[3] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6974100];
  v3 = [objc_msgSend(MEMORY[0x1E6974100] alloc)];
  v4 = [objc_msgSend(v2 alloc)];
  v49 = 0;
  *v50 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
  NS::SharedPtr<MTL::Texture>::operator=(&v49, v50);
  if (*v50)
  {
  }

  v48 = 0;
  *v50 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
  NS::SharedPtr<MTL::Texture>::operator=(&v48, v50);
  if (*v50)
  {
  }

  re::internal::destroyPersistent<re::FixedArray<NS::SharedPtr<MTL::Function>>>(*(a1 + 8));
  re::internal::destroyPersistent<re::FixedArray<NS::SharedPtr<MTL::Function>>>(*(a1 + 16));
  if (*(a1 + 64) == 1 && *(*(a1 + 40) + 2849) == 1)
  {
    [v3 setFunctions_];
  }

  [v3 setPrivateFunctions_];
  [v4 setPrivateFunctions_];
  [*(a1 + 24) setVertexLinkedFunctions_];
  [*(a1 + 24) setFragmentLinkedFunctions_];
  *(*(a1 + 32) + 216) = mach_absolute_time();
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v47 = 0;
  if (*(a1 + 97) != 1)
  {
    re::mtl::Device::makeRenderPipelineState((*(a1 + 80) + 208), *(a1 + 24), *(a1 + 96), v50);
    NS::SharedPtr<MTL::Texture>::operator=(&v47, v50);
    v6 = *v50;
    if (!*v50)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *v50 = 0;
  v54[0] = 0;
  v5 = *(a1 + 104);
  if (v5)
  {
    [v5 addRenderPipelineFunctionsWithDescriptor:*(a1 + 24) error:0];
  }

  v46 = [*(*(a1 + 80) + 208) newRenderPipelineStateWithDescriptor:*(a1 + 24) options:0x40000 reflection:v54 error:v50];
  NS::SharedPtr<MTL::Texture>::operator=(&v47, &v46);
  if (v46)
  {
  }

  v46 = v54[0];
  NS::SharedPtr<MTL::Texture>::operator=((*(a1 + 32) + 200), &v46);
  v6 = v46;
  if (v46)
  {
LABEL_18:
  }

LABEL_19:
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v7 = NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 32) + 16), &v47);
  if (*(*(a1 + 32) + 16))
  {
    v8 = mach_absolute_time();
    v9 = v8;
    v10 = *(*(a1 + 32) + 216);
    v11 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v8 = mach_timebase_info(v50);
      if (v8)
      {
        v14 = NAN;
        goto LABEL_29;
      }

      LODWORD(v13) = *&v50[4];
      LODWORD(v12) = *v50;
      v11 = v12 / v13;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v11;
    }

    v14 = v11 * (v9 - v10);
LABEL_29:
    v17 = *(a1 + 56);
    v18 = *(v17 + 16);
    v19 = "";
    if (v18)
    {
      v20 = *(v18 + 8);
      if (v20)
      {
        v19 = v20;
      }
    }

    v21 = *(v17 + 24);
    v22 = "";
    if (v21)
    {
      v23 = *(v21 + 8);
      if (v23)
      {
        v22 = v23;
      }
    }

    v24 = *re::graphicsLogObjects(v8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 64);
      v26 = *(a1 + 48);
      *v50 = 136447234;
      v27 = v25 == 0;
      v28 = "fallback";
      if (v27)
      {
        v28 = "specialized";
      }

      *&v50[4] = v28;
      *&v50[12] = 2082;
      *&v50[14] = v26;
      *&v50[22] = 2082;
      *&v50[24] = v19;
      LOWORD(v51) = 2082;
      *(&v51 + 2) = v22;
      WORD5(v51) = 1024;
      HIDWORD(v51) = (v14 / 1000000.0);
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for %{public}s technique %{public}s with vertex shader %{public}s and fragment shader %{public}s in %d", v50, 0x30u);
    }

    goto LABEL_40;
  }

  v15 = *re::graphicsLogObjects(v7);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 48);
    *v50 = 136315138;
    *&v50[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Pipeline for technique %s failed compilation!", v50, 0xCu);
  }

LABEL_40:
  v29 = re::internal::enableSignposts(0, 0);
  if (v29)
  {
    v29 = kdebug_trace();
  }

  if (*(a1 + 64) == 1 && *(*(a1 + 40) + 2849) == 1)
  {
    v44 = v4;
    v45 = v3;
    v30 = *(*(*(a1 + 80) + 32) + 144);
    v31 = [objc_msgSend(MEMORY[0x1E69741E8] alloc)];
    [v31 setFunctionCount_];
    v32 = [v47 newVisibleFunctionTableWithDescriptor:v31 stage:1];
    *v50 = v32;
    if ([v30 count])
    {
      v33 = 0;
      do
      {
        v34 = [v30 objectAtIndex_];
        v35 = [v47 functionHandleWithFunction:v34 stage:1];
        [v32 setFunction:v35 atIndex:v33];
        if (v35)
        {
        }

        if (v34)
        {
        }

        ++v33;
      }

      while ([v30 count] > v33);
    }

    NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 32) + 96), v50);
    if (*v50)
    {
    }

    v4 = v44;
    v3 = v45;
    v29 = v31;
    if (v31)
    {
    }

    if (v30)
    {
    }
  }

  v36 = *(a1 + 32);
  v37 = *(a1 + 80);
  v38 = *(v37 + 144);
  v39 = *(v36 + 56);
  *&v50[16] = *(v36 + 40);
  v51 = v39;
  v52 = *(v36 + 72);
  v53 = *(v36 + 88);
  *v50 = *(v36 + 24);
  v40 = *(a1 + 56);
  if (v40)
  {
    v29 = (v40 + 8);
  }

  v41 = *(a1 + 88);
  if (v41)
  {
    v29 = (v41 + 8);
  }

  v55 = re::globalAllocators(v29)[2];
  v42 = (*(*v55 + 32))(v55, 104, 0);
  *v42 = &unk_1F5D04160;
  *(v42 + 8) = v37;
  v43 = *&v50[16];
  *(v42 + 16) = *v50;
  *(v42 + 32) = v43;
  *(v42 + 48) = v51;
  *(v42 + 64) = v52;
  *(v42 + 80) = v53;
  *(v42 + 88) = v40;
  *(v42 + 96) = v41;
  v56 = v42;
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v54);
  atomic_store(2 * (*(*(a1 + 32) + 16) == 0), (*(a1 + 32) + 208));
  __ulock_wake();
  if (v47)
  {
  }

  if (v48)
  {
  }

  if (v49)
  {
  }

  if (v4)
  {
  }

  if (v3)
  {
  }
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04108;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 56) = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v9;
  v10 = *(a1 + 88);
  *(a2 + 88) = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  *(a2 + 96) = *(a1 + 96);
  return a2;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04108;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a1 + 32) = 0;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = 0;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

re *re::internal::destroyPersistent<re::FixedArray<NS::SharedPtr<MTL::Function>>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    if (*v1)
    {
      v3 = *(v1 + 1);
      if (v3)
      {
        v4 = *(v1 + 2);
        v5 = 8 * v3;
        do
        {
          if (*v4)
          {

            *v4 = 0;
          }

          ++v4;
          v5 -= 8;
        }

        while (v5);
        (*(**v1 + 40))(*v1, *(v1 + 2));
        *(v1 + 1) = 0;
        *(v1 + 2) = 0;
      }

      *v1 = 0;
    }

    v6 = *(*v2 + 40);

    return v6(v2, v1);
  }

  return result;
}

void *re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D04160;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[11];
  if (v3)
  {

    a1[11] = 0;
  }

  return a1;
}

void re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D04160;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[11];
  if (v3)
  {

    a1[11] = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::operator()(uint64_t a1)
{
  result = re::DrawingManager::releasePipelineState(*(*(a1 + 8) + 112), (a1 + 16));
  --*(*(*(a1 + 8) + 112) + 96);
  return result;
}

uint64_t re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04160;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 66) = *(a1 + 66);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = v2;
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a2;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D041B0;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 16) = 0;
  *(a1 + 32) = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 56) = v8;
  return a1;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D041B0;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D041B0;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::operator()(uint64_t a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor((a1 + 56), *(a1 + 8), &v7);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::constructFunctionLabel(&v4, *(a1 + 24) + 32);
  v2 = v7;
  if (v5)
  {
    v3 = *&v6[7];
  }

  else
  {
    v3 = v6;
  }

  [v7 setLabel_];
  [*(a1 + 16) setVertexFunction_];
  dispatch_group_leave(*(a1 + 40));
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  if (v2)
  {
  }
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D041B0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v7;
  return a2;
}

void *re::constructFunctionLabel(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a2 + 16) + 32);
    v7 = 200 * v4;
    do
    {
      v8 = *v6;
      v6 += 25;
      a1 = strlen(v8);
      v5 += a1 + 1;
      v7 -= 200;
    }

    while (v7);
    v9 = v5 + 10;
  }

  else
  {
    v9 = 1;
  }

  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  result = re::DynamicString::setCapacity(v3, v9);
  if (*(a2 + 8))
  {
    result = re::DynamicString::append(v3, "Linked: ", 8uLL);
    v11 = *(a2 + 8);
    if (v11)
    {
      v12 = (*(a2 + 16) + 32);
      v13 = 200 * v11;
      do
      {
        v14 = *v12;
        v12 += 25;
        result = re::DynamicString::appendf(v3, "%s ", v14);
        v13 -= 200;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D04208;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 16) = 0;
  *(a1 + 32) = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 56) = v8;
  return a1;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D04208;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D04208;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::operator()(uint64_t a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor((a1 + 56), *(a1 + 8), &v7);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::constructFunctionLabel(&v4, *(a1 + 24) + 56);
  v2 = v7;
  if (v5)
  {
    v3 = *&v6[7];
  }

  else
  {
    v3 = v6;
  }

  [v7 setLabel_];
  [*(a1 + 16) setFragmentFunction_];
  dispatch_group_leave(*(a1 + 40));
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  if (v2)
  {
  }
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04208;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v7;
  return a2;
}

unint64_t re::Hash<re::PipelineStateCacheKey>::operator()(int a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128(a2, 0x2CuLL, 0, v10);
  v3 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2[7] ^ (a2[7] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2[7] ^ (a2[7] >> 30))) >> 27));
  v5 = ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (v4 ^ (v4 >> 31))) ^ v3;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a2 + 64)) ^ ((0xBF58476D1CE4E5B9 * *(a2 + 64)) >> 27));
  v7 = ((v6 ^ (v6 >> 31)) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a2 + 65)) ^ ((0xBF58476D1CE4E5B9 * *(a2 + 65)) >> 27));
  return ((v8 ^ (v8 >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
}

void re::CachedPipelineState::~CachedPipelineState(re::CachedPipelineState *this)
{
  *this = &unk_1F5D04260;
  v2 = *(this + 25);
  if (v2)
  {

    *(this + 25) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  v3 = *(this + 12);
  if (v3)
  {

    *(this + 12) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D04260;
  v2 = *(this + 25);
  if (v2)
  {

    *(this + 25) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  v3 = *(this + 12);
  if (v3)
  {

    *(this + 12) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(uint64_t a1, int *a2)
{
  v4 = re::Hash<re::PipelineStateCacheKey>::operator()(v6, a2);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v7 + 80;
  }
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>@<X0>(uint64_t result@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result)
  {
    v4 = a3 % *(result + 24);
    v6 = *(*(result + 8) + 4 * v4);
    if (v6 == 0x7FFFFFFF)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v8 = *(result + 16);
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      v12 = a2[3];
      v13 = a2[4];
      v14 = a2[5];
      result = a2[6];
      v15 = a2[7];
      v16 = a2[8];
      v17 = a2[9];
      v18 = a2[10];
      v19 = *(a2 + 7);
      v20 = *(a2 + 64);
      v5 = 0x7FFFFFFF;
      v7 = 0x7FFFFFFF;
      v21 = *(a2 + 65);
      while (1)
      {
        v22 = v6;
        v23 = v8 + 96 * v6;
        v25 = *(v23 + 8);
        v24 = v23 + 8;
        if (v25 == v9 && *(v24 + 4) == v10 && *(v24 + 8) == v11 && *(v24 + 12) == v12 && *(v24 + 16) == v13 && *(v24 + 20) == v14 && *(v24 + 24) == result && *(v24 + 28) == v15 && *(v24 + 32) == v16 && *(v24 + 36) == v17 && *(v24 + 40) == v18 && *(v24 + 56) == v19 && *(v24 + 64) == v20 && *(v24 + 65) == v21)
        {
          break;
        }

        v6 = *(v8 + 96 * v22) & 0x7FFFFFFF;
        v7 = v22;
        if (v6 == 0x7FFFFFFF)
        {
          v7 = v22;
          goto LABEL_22;
        }
      }

      v5 = v22;
    }
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_22:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addInternal<re::PipelineStateCacheKey const&,re::SharedPtr<re::CachedPipelineState> const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  v9 = *(a3 + 32);
  v8 = *(a3 + 48);
  v10 = *(a3 + 64);
  *(v7 + 24) = *(a3 + 16);
  *(v7 + 72) = v10;
  *(v7 + 56) = v8;
  *(v7 + 40) = v9;
  v11 = *a4;
  *(v7 + 80) = *a4;
  v12 = v7 + 80;
  if (v11)
  {
    v13 = (v11 + 8);
  }

  ++*(a1 + 40);
  return v12;
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::move(a1, v9);
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 56);
        v10 = *(v8 + 40);
        v11 = *(v8 + 72);
        *(result + 24) = *(v8 + 24);
        *(result + 72) = v11;
        *(result + 40) = v10;
        *(result + 56) = v9;
        *(result + 8) = *(v8 + 8);
        v7 = *(a2 + 16);
        *(result + 80) = *(v7 + v5 + 80);
        *(v7 + v5 + 80) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 96;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_16, 4 * v10);
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

__IOSurface *re::DeformationVertexBufferState::LockedSurfaces::ensureIOSurfaceLocked(re::DeformationVertexBufferState::LockedSurfaces *this, Buffer *a2)
{
  v11 = a2;
  result = [(Buffer *)a2 iosurface];
  if (result)
  {
    v4 = result;
    if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(this, &v11))
    {
      return IOSurfaceGetBaseAddress(v4);
    }

    IOSurfaceLock(v4, 1u, 0);
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = *(this + 6);
    if (v7)
    {
      v8 = v6 % v7;
      v9 = *(*(this + 1) + 4 * (v6 % v7));
      if (v9 != 0x7FFFFFFF)
      {
        v10 = *(this + 2);
        if (*(v10 + 24 * v9 + 16) != v11)
        {
          while (1)
          {
            LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
            if (v9 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v10 + 24 * v9 + 16) == v11)
            {
              return IOSurfaceGetBaseAddress(v4);
            }
          }

          goto LABEL_10;
        }

        return IOSurfaceGetBaseAddress(v4);
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

LABEL_10:
    re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::addAsCopy(this, v8, v6, &v11, &v11);
    ++*(this + 10);
    return IOSurfaceGetBaseAddress(v4);
  }

  return result;
}

void re::DeformationVertexBufferState::LockedSurfaces::unlockAll(re::DeformationVertexBufferState::LockedSurfaces *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 2) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    IOSurfaceUnlock([*(*(this + 2) + 24 * v3 + 16) iosurface], 1u, 0);
    v6 = *(this + 8);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 2) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::clear(this);
}

void re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_46_0, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void *re::DeformationStack::buildCachedData(re::DeformationStack *this)
{
  v2 = *this;
  if (!*this)
  {
LABEL_14:
    result = memset(this + 10 * v2 + 688, 255, 10 * (9 - v2) + 10);
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v27 = 0;
    if (v2)
    {
      goto LABEL_17;
    }

    return result;
  }

  v3 = 0;
  v4 = this + 48;
  v5 = this + 688;
  do
  {
    if (!v3)
    {
      v7 = 0;
LABEL_11:
      memset(&v5[10 * v3 + v7], 255, (10 - v7));
      goto LABEL_12;
    }

    v6 = 0;
    v7 = 0;
    v8 = *&v4[64 * v3 + 8];
    do
    {
      v9 = &v4[64 * (~v6 + v3)];
      v11 = *(v9 + 2);
      v10 = v9 + 16;
      if ((v11 & v8) != 0)
      {
        v12 = v7++;
        v5[10 * v3 + v12] = ~v6 + v3;
        v8 &= ~*v10;
      }

      ++v6;
    }

    while (v3 != v6);
    if (v7 <= 9u)
    {
      goto LABEL_11;
    }

LABEL_12:
    ++v3;
  }

  while (v3 != v2);
  if (v2 < 0xA)
  {
    goto LABEL_14;
  }

  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
LABEL_17:
  v14 = 0;
  v15 = this + 48;
  v16 = this + 4;
  v17 = this + 792;
  do
  {
    v18 = (v2 + ~v14);
    v19 = *&v15[64 * v18 + 32];
    v20 = v26;
    if (v19 != -1)
    {
      v21 = *&v16[4 * v18];
      if (v26 >= v25)
      {
        re::DynamicArray<re::RigNodeConstraint>::growCapacity(&v24, v26 + 1);
        v20 = v26;
      }

      v22 = v28 + 16 * v20;
      *v22 = v21;
      *(v22 + 8) = v19;
      v20 = ++v26;
      ++v27;
    }

    v23[0] = v28;
    v23[1] = v20;
    re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::operator=(&v17[24 * (v2 + ~v14++)], v23);
  }

  while (v2 != v14);
  result = v24;
  if (v24)
  {
    if (v28)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Vector4<float>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v23, 0, 36);
      *&v23[36] = 0x7FFFFFFFLL;
      re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::init(v23, v4, a2);
      v5 = *a1;
      *a1 = *v23;
      v6 = *(a1 + 16);
      v7 = *&v23[8];
      *v23 = v5;
      *&v23[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v23[24];
      *&v23[24] = *(a1 + 24);
      v8 = *&v23[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 24);
            v17 = v15 % v16;
            v18 = *(a1 + 36);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 32);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 24);
                v19 = *(a1 + 32);
                v13 = *(a1 + 8);
              }

              *(a1 + 32) = v19 + 1;
              v20 = *(a1 + 16);
              v21 = *(v20 + 24 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 16);
              v21 = *(v20 + 24 * v18 + 8);
              *(a1 + 36) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 16) + 24 * v18 + 8) = *(*(a1 + 16) + 24 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(*(a1 + 16) + 24 * v18) = v15;
            *(*(a1 + 16) + 24 * v18 + 16) = *v14;
            v13 = *(a1 + 8);
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 28) + 1;
            *(a1 + 28) = v12;
          }

          ++v11;
          v14 += 3;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v23);
    }
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 3;
    }
  }
}

void re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_46_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void *re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[1] = 0;
      result += 2;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t re::SkinnedMeshBoundsEstimator::init<re::SkinningInfluence>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int **a5, unsigned int a6, double a7, double a8)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  if (a6)
  {
    v16 = a4[1];
    if (v16 >= a6)
    {
      v17 = 0;
      v18 = 0;
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 1.0;
      do
      {
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = (*a4 + 8 * v18 + 4);
        v21 = 0.0;
        v22 = (v18 + a6);
        do
        {
          if (v19 == v18)
          {
            re::internal::assertLog(6, a2, _D0, a8, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v16);
            _os_crash();
            __break(1u);
            goto LABEL_40;
          }

          v23 = *v20;
          v20 += 2;
          *&v21 = *&v21 + fabsf(v23);
          ++v18;
        }

        while (v22 != v18);
        if (*&v21 > 0.0)
        {
          if (*&a8 > *&v21)
          {
            *&a8 = *&v21;
          }

          if (*&_D0 < *&v21)
          {
            *&_D0 = *&v21;
          }

          *(a1 + 48) = LODWORD(_D0);
          *(a1 + 52) = LODWORD(a8);
        }

        ++v17;
      }

      while (v17 != v16 / a6);
    }
  }

  else
  {
    v24 = a5[1];
    if (v24)
    {
      v25 = 0;
      v26 = *a5;
      v27 = &(*a5)[v24];
      v28 = a4[1];
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 1.0;
      do
      {
        v29 = *v26;
        if (v25 < *v26)
        {
          v30 = v25;
          if (v28 > v25)
          {
            v30 = v28;
          }

          v31 = (*a4 + 8 * v25 + 4);
          v32 = v29 - v25;
          v33 = v30 - v25;
          v34 = 0.0;
          do
          {
            if (!v33)
            {
LABEL_40:
              re::internal::assertLog(6, a2, _D0, a8, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, v28);
              result = _os_crash();
              __break(1u);
              return result;
            }

            v35 = *v31;
            v31 += 2;
            *&v34 = *&v34 + fabsf(v35);
            --v33;
            --v32;
          }

          while (v32);
          if (*&v34 > 0.0)
          {
            if (*&a8 > *&v34)
            {
              *&a8 = *&v34;
            }

            if (*&_D0 < *&v34)
            {
              *&_D0 = *&v34;
            }

            *(a1 + 48) = LODWORD(_D0);
            *(a1 + 52) = LODWORD(a8);
          }
        }

        ++v26;
        v25 = v29;
      }

      while (v26 != v27);
    }
  }

  re::FixedArray<re::AABB>::operator=(a1, a2);
  re::FixedArray<re::AABB>::operator=((a1 + 24), a2);
  result = re::FixedArray<re::Matrix4x4<float>>::operator=((a1 + 56), a3);
  v37 = *(a1 + 64);
  if (v37)
  {
    DWORD1(v38) = 0;
    *(&v38 + 1) = 0;
    *&v38 = 1.0 / *(a1 + 52);
    *&v40 = 0;
    HIDWORD(v40) = 0;
    LODWORD(v39) = 0;
    *(&v39 + 1) = 0;
    *(&v39 + 1) = *&v38;
    *(&v40 + 2) = *&v38;
    v41 = *(a1 + 72);
    v42 = &v41[4 * v37];
    do
    {
      v43 = 0;
      v44 = *v41;
      v45 = v41[1];
      v46 = v41[2];
      v47 = v41[3];
      v51[0] = v38;
      v51[1] = v39;
      v51[2] = v40;
      v51[3] = xmmword_1E30474D0;
      do
      {
        v52[v43] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(v51[v43])), v45, *&v51[v43], 1), v46, v51[v43], 2), v47, v51[v43], 3);
        ++v43;
      }

      while (v43 != 4);
      v48 = v52[1];
      v49 = v52[2];
      v50 = v52[3];
      *v41 = v52[0];
      v41[1] = v48;
      v41[2] = v49;
      v41[3] = v50;
      v41 += 4;
    }

    while (v41 != v42);
  }

  return result;
}

uint64_t re::SkinnedMeshBoundsEstimator::init<re::PackedSkinningInfluence>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int **a5, unsigned int a6, double a7, double a8, double a9)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  if (a6)
  {
    v17 = a4[1];
    if (v17 >= a6)
    {
      v18 = 0;
      v19 = 0;
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 880803842;
      LODWORD(a9) = 1.0;
      do
      {
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = 0.0;
        v22 = (v19 + a6);
        do
        {
          if (v20 == v19)
          {
            re::internal::assertLog(6, a2, _D0, a8, a9, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v17);
            _os_crash();
            __break(1u);
            goto LABEL_40;
          }

          *&v21 = *&v21 + ((*(*a4 + 4 * v19++) & 0x3FFFFF) * 0.00000023842);
        }

        while (v22 != v19);
        if (*&v21 > 0.0)
        {
          if (*&a9 > *&v21)
          {
            *&a9 = *&v21;
          }

          if (*&_D0 < *&v21)
          {
            *&_D0 = *&v21;
          }

          *(a1 + 48) = LODWORD(_D0);
          *(a1 + 52) = LODWORD(a9);
        }

        ++v18;
      }

      while (v18 != v17 / a6);
    }
  }

  else
  {
    v23 = a5[1];
    if (v23)
    {
      v24 = 0;
      v25 = *a5;
      v26 = &(*a5)[v23];
      v27 = a4[1];
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 880803842;
      LODWORD(a9) = 1.0;
      do
      {
        v28 = *v25;
        if (v24 < *v25)
        {
          v29 = v24;
          if (v27 > v24)
          {
            v29 = v27;
          }

          v30 = (*a4 + 4 * v24);
          v31 = v28 - v24;
          v32 = v29 - v24;
          v33 = 0.0;
          do
          {
            if (!v32)
            {
LABEL_40:
              re::internal::assertLog(6, a2, _D0, a8, a9, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, v27);
              result = _os_crash();
              __break(1u);
              return result;
            }

            v34 = *v30++;
            *&v33 = *&v33 + ((v34 & 0x3FFFFF) * 0.00000023842);
            --v32;
            --v31;
          }

          while (v31);
          if (*&v33 > 0.0)
          {
            if (*&a9 > *&v33)
            {
              *&a9 = *&v33;
            }

            if (*&_D0 < *&v33)
            {
              *&_D0 = *&v33;
            }

            *(a1 + 48) = LODWORD(_D0);
            *(a1 + 52) = LODWORD(a9);
          }
        }

        ++v25;
        v24 = v28;
      }

      while (v25 != v26);
    }
  }

  re::FixedArray<re::AABB>::operator=(a1, a2);
  re::FixedArray<re::AABB>::operator=((a1 + 24), a2);
  result = re::FixedArray<re::Matrix4x4<float>>::operator=((a1 + 56), a3);
  v36 = *(a1 + 64);
  if (v36)
  {
    DWORD1(v37) = 0;
    *(&v37 + 1) = 0;
    *&v37 = 1.0 / *(a1 + 52);
    *&v39 = 0;
    HIDWORD(v39) = 0;
    LODWORD(v38) = 0;
    *(&v38 + 1) = 0;
    *(&v38 + 1) = *&v37;
    *(&v39 + 2) = *&v37;
    v40 = *(a1 + 72);
    v41 = &v40[4 * v36];
    do
    {
      v42 = 0;
      v43 = *v40;
      v44 = v40[1];
      v45 = v40[2];
      v46 = v40[3];
      v50[0] = v37;
      v50[1] = v38;
      v50[2] = v39;
      v50[3] = xmmword_1E30474D0;
      do
      {
        v51[v42] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(v50[v42])), v44, *&v50[v42], 1), v45, v50[v42], 2), v46, v50[v42], 3);
        ++v42;
      }

      while (v42 != 4);
      v47 = v51[1];
      v48 = v51[2];
      v49 = v51[3];
      *v40 = v51[0];
      v40[1] = v47;
      v40[2] = v48;
      v40[3] = v49;
      v40 += 4;
    }

    while (v40 != v41);
  }

  return result;
}

uint64_t re::SkinnedMeshBoundsEstimator::deinit(re::SkinnedMeshBoundsEstimator *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 6) = _D0;

  return re::FixedArray<CoreIKTransform>::deinit(this + 7);
}

void re::SkinnedMeshBoundsEstimator::updateKnownBoundingBoxes(_anonymous_namespace_ *a1, uint64_t a2, void *a3)
{
  re::FixedArray<re::AABB>::operator=(a1, a2);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = a3[1];
      if (v9 <= i)
      {
        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v9);
        _os_crash();
        __break(1u);
LABEL_8:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = __invert_f4(*(*a3 + v7));
      if (*(a1 + 8) <= i)
      {
        goto LABEL_8;
      }

      *(*(a1 + 9) + v7) = v10;
      v7 += 64;
    }
  }
}

float32x4_t re::SkinnedMeshBoundsEstimator::updateEstimatedBoundingBoxes(uint64_t a1, uint64_t a2, float32x4_t result)
{
  v6 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v45 = *(a1 + 64);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 8);
      if (v10 <= i)
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 32);
      if (v10 <= i)
      {
        goto LABEL_29;
      }

      v11 = *(a1 + 16) + v9;
      v12 = (*(a1 + 40) + v9);
      result = *v11;
      v13 = *(v11 + 16);
      *v12 = *v11;
      v12[1] = v13;
      v9 += 32;
    }
  }

  if (v45)
  {
    i = 0;
    v14.i64[0] = 0;
    v15.i32[0] = 0;
    v15.i32[3] = 0;
    *(v15.i64 + 4) = *(a1 + 52);
    v14.i64[1] = *(v15.i64 + 4);
    v10 = v47;
    v16 = xmmword_1E30474D0;
    v43 = *(a1 + 52);
    v44 = v14;
    v46 = v15;
    while (1)
    {
      v17 = v6[1];
      if (v17 <= i)
      {
        goto LABEL_32;
      }

      v18 = 0;
      v19 = (*v6 + (i << 6));
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      *v47 = *v19;
      *&v47[16] = v20;
      *&v47[32] = v21;
      v48 = v22;
      do
      {
        *(&v56 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*&v47[v18])), v15, *&v47[v18], 1), v44, *&v47[v18], 2), v16, *&v47[v18], 3);
        v18 += 16;
      }

      while (v18 != 64);
      v5 = *(a1 + 64);
      if (v5 <= i)
      {
        goto LABEL_33;
      }

      v23 = 0;
      v24 = (*(a1 + 72) + (i << 6));
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      v28 = v56;
      v29 = v57;
      v30 = v58;
      v31 = v59;
      *v47 = *v24;
      *&v47[16] = v25;
      *&v47[32] = v26;
      v48 = v27;
      do
      {
        *(&v56 + v23) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*&v47[v23])), v29, *&v47[v23], 1), v30, *&v47[v23], 2), v31, *&v47[v23], 3);
        v23 += 16;
      }

      while (v23 != 64);
      result = v56;
      *v47 = v56;
      *&v47[16] = v57;
      *&v47[32] = v58;
      v48 = v59;
      if (v8)
      {
        break;
      }

LABEL_19:
      if (++i == v45)
      {
        goto LABEL_20;
      }
    }

    v32 = 0;
    v5 = 0;
    while (1)
    {
      v3 = *(a1 + 8);
      if (v3 <= v5)
      {
        break;
      }

      v3 = *(a1 + 32);
      if (v3 <= v5)
      {
        goto LABEL_27;
      }

      v33 = (*(a1 + 40) + v32);
      re::AABB::transform((*(a1 + 16) + v32), v47, &v56);
      v16 = xmmword_1E30474D0;
      v15 = v46;
      v34 = v56;
      v35 = *v33;
      v36 = v33[1];
      v35.i32[3] = 0;
      v34.i32[3] = 0;
      *v33 = vminnmq_f32(v35, v34);
      v37 = v57;
      v36.i32[3] = 0;
      v37.i32[3] = 0;
      result = vmaxnmq_f32(v36, v37);
      v33[1] = result;
      v5 = (v5 + 1);
      v32 += 32;
      if (v8 == v5)
      {
        goto LABEL_19;
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    v50 = 1024;
    v51 = 468;
    v52 = 2048;
    v53 = v5;
    v54 = 2048;
    v55 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v49 = 136315906;
    *&v49[4] = "operator[]";
    v50 = 1024;
    v51 = 468;
    v52 = 2048;
    v53 = v5;
    v54 = 2048;
    v55 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 468;
    *&v47[18] = 2048;
    *&v47[20] = i;
    *&v47[28] = 2048;
    *&v47[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 468;
    *&v47[18] = 2048;
    *&v47[20] = i;
    *&v47[28] = 2048;
    *&v47[30] = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 468;
    *&v47[18] = 2048;
    *&v47[20] = v6;
    *&v47[28] = 2048;
    *&v47[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 468;
    *&v47[18] = 2048;
    *&v47[20] = v6;
    *&v47[28] = 2048;
    *&v47[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v17);
    _os_crash();
    __break(1u);
LABEL_33:
    *v49 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v47 = 136315906;
    *&v47[4] = "operator[]";
    *&v47[12] = 1024;
    *&v47[14] = 468;
    *&v47[18] = 2048;
    *&v47[20] = i;
    *&v47[28] = 2048;
    *&v47[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  if (v8)
  {
    v38 = 0;
    v6 = 0;
    while (1)
    {
      v3 = *(a1 + 8);
      if (v3 <= v6)
      {
        goto LABEL_30;
      }

      v3 = *(a1 + 32);
      if (v3 <= v6)
      {
        goto LABEL_31;
      }

      v39 = (*(a1 + 16) + v38);
      v40 = (*(a1 + 40) + v38);
      v41 = *(a1 + 48);
      result = vaddq_f32(*v39, vmulq_n_f32(vsubq_f32(*v40, *v39), v41));
      v42 = vaddq_f32(v39[1], vmulq_n_f32(vsubq_f32(v40[1], v39[1]), v41));
      *v40 = result;
      v40[1] = v42;
      v6 = (v6 + 1);
      v38 += 32;
      if (v8 == v6)
      {
        return result;
      }
    }
  }

  return result;
}

re::DynamicString *re::renderGraphResourceOperationTypeToString@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = *a1;
  v4 = off_1E871F2C0[v3];
}

void *re::renderGraphResourceSetupToString@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X8>)
{
  v11 = a7;
  v140 = *MEMORY[0x1E69E9840];
  a7[1] = 0;
  v12 = a7 + 1;
  a7[2] = 0;
  a7[3] = 0;
  re::DynamicString::setCapacity(v11, 0);
  if (*v12)
  {
    *v12 = 1;
    v13 = *(v11 + 2);
  }

  else
  {
    *v12 = 0;
    v13 = v11 + 9;
  }

  *v13 = 0;
  re::DynamicString::setCapacity(v11, 0x400uLL);
  v14 = *(a1 + 1);
  if (v14)
  {
    v15 = *(a1 + 2);
  }

  else
  {
    v15 = a1 + 9;
  }

  v16 = v14 >> 1;
  v17 = v14 >> 1;
  if (*(a1 + 1))
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  re::DynamicString::append(v11, v15, v18);
  if (*a4 == 1)
  {
    re::DynamicString::format("\tNodes: %zu\n", &v135, *(a3 + 16));
    v19 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v20 = v136;
    }

    else
    {
      v20 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v21 = *(&v135 + 1) >> 1;
    }

    else
    {
      v21 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v20, v21);
    if (v135 && v19)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 16))
    {
      v22 = 0;
      do
      {
        re::DynamicString::format("\t\t%s\n", &v135, *(*(*(a3 + 32) + 8 * v22) + 16));
        v23 = BYTE8(v135) & 1;
        if (BYTE8(v135))
        {
          v24 = v136;
        }

        else
        {
          v24 = &v135 + 9;
        }

        if (BYTE8(v135))
        {
          v25 = *(&v135 + 1) >> 1;
        }

        else
        {
          v25 = BYTE8(v135) >> 1;
        }

        re::DynamicString::append(v11, v24, v25);
        if (v135)
        {
          v26 = v23 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          (*(*v135 + 40))();
        }

        ++v22;
      }

      while (*(a3 + 16) > v22);
    }
  }

  v27 = a2;
  if (*a5 == 1)
  {
    re::DynamicString::format("\tSteps: %zu\n", &v135, *(a3 + 56));
    v28 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v29 = v136;
    }

    else
    {
      v29 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v30 = *(&v135 + 1) >> 1;
    }

    else
    {
      v30 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v29, v30);
    v31 = v135;
    if (v135 && v28)
    {
      v31 = (*(*v135 + 40))();
    }

    if (*(a3 + 56))
    {
      *(&v125 + 1) = 0;
      v126 = 0uLL;
      re::DynamicString::setCapacity(&v125, 0);
      if (BYTE8(v125))
      {
        *(&v125 + 1) = 1;
        v32 = v126;
      }

      else
      {
        BYTE8(v125) = 0;
        v32 = &v125 + 9;
      }

      *v32 = 0;
      re::DynamicString::setCapacity(&v125, 0x80uLL);
      re::DynamicString::format("\t\t%-9s%-11s%-11s%-11s%-12s%-26s%-20s%-14s%s\n", &v135, "Resource", "Attachment", "ForceClear", "IsOptional", "RenderStage", "StepType", "ResourceDescription", "EnableNoClear", "Name");
      re::DynamicString::operator=(&v125, &v135);
      if (v135 && (BYTE8(v135) & 1) != 0)
      {
        (*(*v135 + 40))();
      }

      re::DynamicString::trimExcess(&v125);
      if (BYTE8(v125))
      {
        v33 = v126;
      }

      else
      {
        v33 = &v125 + 9;
      }

      if (BYTE8(v125))
      {
        v34 = *(&v125 + 1) >> 1;
      }

      else
      {
        v34 = BYTE8(v125) >> 1;
      }

      re::DynamicString::append(v11, v33, v34);
      v35 = v125;
      if (v125 && (BYTE8(v125) & 1) != 0)
      {
        v35 = (*(*v125 + 40))();
      }

      if (*(a3 + 56))
      {
        v36 = 0;
        v37 = 0;
        v109 = a3;
        v110 = v11;
        do
        {
          v38 = (*(a3 + 72) + v36);
          v125 = *v38;
          v126 = v38[1];
          v127 = v38[2];
          v128 = v38[3];
          v114 = 0;
          v115 = 0;
          v116 = 0;
          re::DynamicString::setCapacity(&v113, 0);
          if (v114)
          {
            v114 = 1;
            v39 = v115;
          }

          else
          {
            LOBYTE(v114) = 0;
            v39 = &v114 + 1;
          }

          *v39 = 0;
          re::DynamicString::setCapacity(&v113, 0x80uLL);
          v112 = v125;
          v40 = v127;
          v41 = BYTE1(v127);
          v42 = DWORD1(v128);
          v43 = HIDWORD(v127);
          v44 = re::renderGraphResourceOperationTypeToString((&v125 + 4), &v121);
          v45 = v122;
          v46 = *&v123[7];
          v118 = 0;
          v119 = 0;
          v120 = 0;
          re::DynamicString::setCapacity(&v117, 0);
          re::DynamicString::setCapacity(&v117, 0x20uLL);
          if (v118)
          {
            v118 = 1;
            v47 = v119;
          }

          else
          {
            LOBYTE(v118) = 0;
            v47 = &v118 + 1;
          }

          *v47 = 0;
          v48 = *(v27 + 296);
          v49 = *(v48 + 16);
          if (v49 <= v42)
          {
            v124 = 0;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v129 = 136315906;
            *v130 = "operator[]";
            *&v130[8] = 1024;
            *&v130[10] = 789;
            v131 = 2048;
            v132 = v42;
            v133 = 2048;
            v134 = v49;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_252:
            v124 = 0;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v129 = 136315906;
            *v130 = "operator[]";
            *&v130[8] = 1024;
            *&v130[10] = 789;
            v131 = 2048;
            v132 = v42;
            v133 = 2048;
            v134 = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_253:
            v124 = 0;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v129 = 136315906;
            *v130 = "operator[]";
            *&v130[8] = 1024;
            *&v130[10] = 789;
            v131 = 2048;
            v132 = v42;
            v133 = 2048;
            v134 = v49;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_254:
            v124 = 0;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v129 = 136315906;
            *v130 = "operator[]";
            *&v130[8] = 1024;
            *&v130[10] = 789;
            v131 = 2048;
            v132 = v49;
            v133 = 2048;
            v134 = v27;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          if (*(*(v48 + 32) + 48 * v42))
          {
            re::DynamicString::append(&v117, "Buffer", 6uLL);
          }

          else
          {
            re::DynamicString::append(&v117, "Target", 6uLL);
            if (DWORD1(v125) <= 8 && ((1 << SBYTE4(v125)) & 0x1EE) != 0)
            {
              v50 = *(v27 + 296);
              v49 = *(v50 + 16);
              if (v49 <= v42)
              {
                goto LABEL_253;
              }

              v49 = *(*(v50 + 32) + 48 * v42 + 28);
              v51 = *(v27 + 304);
              v27 = *(v51 + 16);
              if (v27 <= v49)
              {
                goto LABEL_254;
              }

              v52 = *(*(v51 + 32) + 112 * v49 + 60);
              re::DynamicString::append(&v117, " ", 1uLL);
              v53 = "DontCare";
              if (v52 == 1)
              {
                v53 = "Load";
              }

              if (v52 == 2)
              {
                v49 = "Clear";
              }

              else
              {
                v49 = v53;
              }

              v54 = strlen(v49);
              re::DynamicString::append(&v117, v49, v54);
              v27 = a2;
            }
          }

          re::DynamicString::resize(&v117, 0x13uLL, 0);
          v55 = *(v27 + 296);
          v27 = *(v55 + 16);
          if (v27 <= v42)
          {
            goto LABEL_252;
          }

          if (v128)
          {
            v56 = "True";
          }

          else
          {
            v56 = "False";
          }

          if (v118)
          {
            v57 = v119;
          }

          else
          {
            v57 = &v118 + 1;
          }

          if (v45)
          {
            v58 = v46;
          }

          else
          {
            v58 = v123;
          }

          if (v43 == 1)
          {
            v59 = "Vertex";
          }

          else
          {
            v59 = "Fragment";
          }

          if (v41)
          {
            v60 = "True";
          }

          else
          {
            v60 = "False";
          }

          if (v40)
          {
            v61 = "True";
          }

          else
          {
            v61 = "False";
          }

          re::StringID::StringID(&v129, (*(v55 + 32) + 48 * v42 + 8));
          re::DynamicString::format("\t\t%-9d%-11d%-11s%-11s%-12s%-26s%-20s%-14s%s\n", &v135, v42, v112, v61, v60, v59, v58, v57, v56, *&v130[4]);
          re::DynamicString::operator=(&v113, &v135);
          v62 = v135;
          a3 = v109;
          v11 = v110;
          v27 = a2;
          if (v135)
          {
            if (BYTE8(v135))
            {
              v62 = (*(*v135 + 40))();
            }

            v135 = 0u;
            v136 = 0u;
          }

          if (v129)
          {
            if (v129)
            {
            }
          }

          if (v117 && (v118 & 1) != 0)
          {
            (*(*v117 + 40))();
          }

          if (v121 && (v122 & 1) != 0)
          {
            (*(*v121 + 40))();
          }

          re::DynamicString::trimExcess(&v113);
          if (v114)
          {
            v63 = v115;
          }

          else
          {
            v63 = &v114 + 1;
          }

          if (v114)
          {
            v64 = v114 >> 1;
          }

          else
          {
            v64 = v114 >> 1;
          }

          re::DynamicString::append(v110, v63, v64);
          v35 = v113;
          if (v113 && (v114 & 1) != 0)
          {
            v35 = (*(*v113 + 40))();
          }

          ++v37;
          v36 += 64;
        }

        while (*(v109 + 56) > v37);
      }
    }
  }

  if (*a6 == 1)
  {
    re::DynamicString::format("\tProperties:\n", &v135);
    v65 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v66 = v136;
    }

    else
    {
      v66 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v67 = *(&v135 + 1) >> 1;
    }

    else
    {
      v67 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v66, v67);
    if (v135 && v65)
    {
      (*(*v135 + 40))();
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "Key", "Value");
    v68 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v69 = v136;
    }

    else
    {
      v69 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v70 = *(&v135 + 1) >> 1;
    }

    else
    {
      v70 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v69, v70);
    if (v135 && v68)
    {
      (*(*v135 + 40))();
    }

    re::DynamicString::format("\t\t%-35s%llu\n", &v135, "WriteProtectionOptions", *(a3 + 160));
    v71 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v72 = v136;
    }

    else
    {
      v72 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v73 = *(&v135 + 1) >> 1;
    }

    else
    {
      v73 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v72, v73);
    if (v135 && v71)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 168))
    {
      v74 = "True";
    }

    else
    {
      v74 = "False";
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "HasSideEffect", v74);
    v75 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v76 = v136;
    }

    else
    {
      v76 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v77 = *(&v135 + 1) >> 1;
    }

    else
    {
      v77 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v76, v77);
    if (v135 && v75)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 169))
    {
      v78 = "True";
    }

    else
    {
      v78 = "False";
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "HasCustomEncoders", v78);
    v79 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v80 = v136;
    }

    else
    {
      v80 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v81 = *(&v135 + 1) >> 1;
    }

    else
    {
      v81 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v80, v81);
    if (v135 && v79)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 170))
    {
      v82 = "True";
    }

    else
    {
      v82 = "False";
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "IsParallel", v82);
    v83 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v84 = v136;
    }

    else
    {
      v84 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v85 = *(&v135 + 1) >> 1;
    }

    else
    {
      v85 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v84, v85);
    if (v135 && v83)
    {
      (*(*v135 + 40))();
    }

    re::DynamicString::format("\t\t%-35s%zu\n", &v135, "ThreadgroupMemoryLength", *(a3 + 176));
    v86 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v87 = v136;
    }

    else
    {
      v87 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v88 = *(&v135 + 1) >> 1;
    }

    else
    {
      v88 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v87, v88);
    if (v135 && v86)
    {
      (*(*v135 + 40))();
    }

    re::DynamicString::format("\t\t%-35s%zu\n", &v135, "ImageblockSampleLength", *(a3 + 184));
    v89 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v90 = v136;
    }

    else
    {
      v90 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v91 = *(&v135 + 1) >> 1;
    }

    else
    {
      v91 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v90, v91);
    if (v135 && v89)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 192) - 1 > 2)
    {
      v92 = "Automatic";
    }

    else
    {
      v92 = off_1E871F328[(*(a3 + 192) - 1)];
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "TileSizeOverride", v92);
    v93 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v94 = v136;
    }

    else
    {
      v94 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v95 = *(&v135 + 1) >> 1;
    }

    else
    {
      v95 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v94, v95);
    if (v135 && v93)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 171))
    {
      v96 = "True";
    }

    else
    {
      v96 = "False";
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "EnableVRR", v96);
    v97 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v98 = v136;
    }

    else
    {
      v98 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v99 = *(&v135 + 1) >> 1;
    }

    else
    {
      v99 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v98, v99);
    if (v135 && v97)
    {
      (*(*v135 + 40))();
    }

    re::DynamicString::format("\t\t%-35s%hhu\n", &v135, "ProgrammableBlendingAttachmentMask", *(a3 + 193));
    v100 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v101 = v136;
    }

    else
    {
      v101 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v102 = *(&v135 + 1) >> 1;
    }

    else
    {
      v102 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v101, v102);
    if (v135 && v100)
    {
      (*(*v135 + 40))();
    }

    if (*(a3 + 194))
    {
      v103 = "True";
    }

    else
    {
      v103 = "False";
    }

    re::DynamicString::format("\t\t%-35s%s\n", &v135, "EnableNoClearOptimization", v103);
    v104 = BYTE8(v135) & 1;
    if (BYTE8(v135))
    {
      v105 = v136;
    }

    else
    {
      v105 = &v135 + 9;
    }

    if (BYTE8(v135))
    {
      v106 = *(&v135 + 1) >> 1;
    }

    else
    {
      v106 = BYTE8(v135) >> 1;
    }

    re::DynamicString::append(v11, v105, v106);
    if (v135 && v104)
    {
      (*(*v135 + 40))();
    }
  }

  return re::DynamicString::trimExcess(v11);
}

uint64_t re::DynamicArray<re::RenderGraphResourceOperation>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigTransform>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RenderGraphResourceOperation>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::RenderGraphResourceOperation>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigTransform>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), (v5 << 6) - 8);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 64 * v5, (*(a2 + 32) + (v5 << 6)), (v4 - v5) << 6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), (v4 << 6) - 8);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("DeformerSkinningAssignLogging", v6, v7);
      re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(void)::enabled = v7[0] & v7[1];
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1768];
}

uint64_t re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("CustomDeformerLogging", v6, v7);
      re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(void)::enabled = v7[0] & v7[1];
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1784];
}

uint64_t re::anonymous namespace::openSubDivTessellationMode(re::_anonymous_namespace_ *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v10 = v1;
    v11 = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::intValue("OpenSubDivTessellationMode", v6, v8);
      v7 = v9;
      if (!v8[0])
      {
        v7 = 2;
      }

      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[96];
}

uint64_t re::DeformerFeatureFlags::enableAppDeformation(re::DeformerFeatureFlags *this)
{
  v3 = &unk_1EE1C6000;
  {
    v8 = v1;
    v9 = v2;
    v3 = &unk_1EE1C6000;
    if (v5)
    {
      re::Defaults::BOOLValue("EnableAppDeformation", v6, v7);
      re::DeformerFeatureFlags::enableAppDeformation(void)::enabled = v7[0] & v7[1];
      v3 = &unk_1EE1C6000;
    }
  }

  return v3[2600];
}

uint64_t re::DeformerFeatureFlags::enableLowLevelMeshDeformations(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      if (re::DeformerFeatureFlags::enableAppDeformation(v5))
      {
        v7 = 1;
      }

      else
      {
        re::Defaults::BOOLValue("enableLowLevelMeshDeformations", v6, v8);
        v7 = v8[0] & v8[1];
      }

      re::DeformerFeatureFlags::enableLowLevelMeshDeformations(void)::enabled = v7 & 1;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1800];
}

uint64_t re::DeformerFeatureFlags::enableStitchableDeformation(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("EnableStitchableMeshDeformation", v6, v7);
      re::DeformerFeatureFlags::enableStitchableDeformation(void)::enabled = v7[0] & v7[1];
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1808];
}

void re::MaterialTextureParam::setString(re::MaterialTextureParam *this, const re::DynamicString *a2)
{
  v4 = (a2 + 9);
  if (*(a2 + 1))
  {
    v5 = *(a2 + 2);
  }

  else
  {
    v5 = (a2 + 9);
  }

  if (re::materialTextureParamIsAsset(v5, a2))
  {
    v10 = 0uLL;
    v11 = 0;
    if (*(a2 + 1))
    {
      v6 = *(a2 + 2);
    }

    else
    {
      v6 = v4;
    }

    re::AssetHandle::setSerializationString(&v10, v6, *a2);
    v7 = *(this + 8);
    if (v7 != -1)
    {
      __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v7](&v9, this);
    }

    *this = v10;
    v10 = 0uLL;
    *(this + 2) = v11;
    v11 = 0;
    *(this + 8) = 1;
    re::AssetHandle::~AssetHandle(&v10);
  }

  else
  {
    v8 = *(a2 + 2);
    if ((*(a2 + 1) & 1) == 0)
    {
      v8 = v4;
    }

    v9 = *a2;
    *&v10 = v8;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,char const*,re::Allocator *>(this, &v10, &v9);
  }
}

re::MaterialTextureParam *re::MaterialTextureParam::MaterialTextureParam(re::MaterialTextureParam *this, const re::DynamicString *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  re::DynamicString::setCapacity(this, 0);
  *(this + 8) = 0;
  re::MaterialTextureParam::setString(this, a2);
  return this;
}

char *re::MaterialTextureParam::serializationString(re::MaterialTextureParam *this, uint64_t a2)
{
  if (!this)
  {
    goto LABEL_20;
  }

  v2 = *(this + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(this + 2);
      if (v3)
      {
        if (*(v3 + 8))
        {
          v4 = *(v3 + 16);
          if (!v4)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v4 = (v3 + 9);
        }
      }

      else
      {
        v4 = &str_1_16;
      }

      if (*v4)
      {
LABEL_16:
        if (v4)
        {
          return v4;
        }

        else
        {
          return &str_25_10;
        }
      }

LABEL_13:
      v6 = re::AssetHandle::legacy_assetPath(this);
      if (v6[48])
      {
        v4 = *(v6 + 7);
      }

      else
      {
        v4 = v6 + 49;
      }

      goto LABEL_16;
    }

LABEL_20:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString", "false", "serializationString", 104);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (*(this + 8))
  {
    return *(this + 2);
  }

  else
  {
    return this + 9;
  }
}

uint64_t re::MaterialTextureParam::introspectionSerialize(re::DynamicString *a1, uint64_t a2, uint64_t a3, re::DynamicString *this)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    re::DynamicString::operator=(this, a1);
    return 1;
  }

  if (v4 == 1)
  {

    return re::AssetHandle::introspectionSerialize(a2, a3, a1, this);
  }

  else
  {
LABEL_8:
    re::internal::assertLog(4, a2, a3, this, "assertion failure: '%s' (%s:line %i) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString", "false", "introspectionSerialize", 120);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::MaterialTextureParam::introspectionDeserialize(uint64_t a1, re::Allocator *a2, void *a3, int a4, re *this)
{
  v15 = this;
  v16 = a2;
  if (re::materialTextureParamIsAsset(this, a2))
  {
    v13 = 0uLL;
    v14 = 0;
    v10 = re::AssetHandle::introspectionDeserialize(a2, a3, a4, &v13, this);
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v11](&v17, a1);
    }

    *a1 = v13;
    v13 = 0uLL;
    *(a1 + 16) = v14;
    v14 = 0;
    *(a1 + 32) = 1;
    re::AssetHandle::~AssetHandle(&v13);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,char const*,re::Allocator *>(a1, &v15, &v16);
    return 1;
  }

  return v10;
}

uint64_t re::MaterialTechniqueGroupData::deinit(const re::DynamicString **this)
{
  re::DynamicString::deinit(this);
  v2 = this[6];
  if (v2)
  {
    v3 = this[8];
    v4 = 32 * v2;
    do
    {
      re::DynamicString::DynamicString(&v6, v3);
      if (v6 && (v7 & 1) != 0)
      {
        (*(*v6 + 40))();
      }

      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  return re::DynamicArray<re::DynamicString>::deinit((this + 4));
}

uint64_t re::MaterialTechniqueQualityLevelSetData::deinit(const re::DynamicString **this)
{
  re::DynamicString::deinit(this);
  v2 = this[10];
  if (v2)
  {
    v3 = this[12];
    v4 = 32 * v2;
    do
    {
      re::DynamicString::DynamicString(&v6, v3);
      if (v6 && (v7 & 1) != 0)
      {
        (*(*v6 + 40))();
      }

      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  return re::DynamicArray<re::DynamicString>::deinit((this + 8));
}

double re::MaterialDefinitionFile::deinit(re::MaterialDefinitionFile *this)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 24);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 18);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 30);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 36);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 42);
  re::DynamicArray<re::MaterialTechniqueData>::deinit(this + 384);
  re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(this + 424);
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(this + 648);
  v2 = *(this + 124);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 60);
    while (1)
    {
      v5 = *v4;
      v4 += 20;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 124);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::DynamicString::deinit((*(this + 60) + 80 * v3 + 40));
    v6 = *(this + 124);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 60) + 80 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 58);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 64);
  v7 = *(this + 72);
  if (v7)
  {
    v8 = *(this + 74);
    v9 = 80 * v7;
    do
    {
      re::DynamicString::DynamicString(v12, v8);
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v13, v8 + 32);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v13);
      v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v13);
      if (*&v12[0] && (BYTE8(v12[0]) & 1) != 0)
      {
        (*(**&v12[0] + 40))(v10);
      }

      v8 = (v8 + 80);
      v9 -= 80;
    }

    while (v9);
  }

  re::DynamicString::deinit(this);
  return re::DynamicString::deinit((this + 32));
}

id re::MaterialSamplerData::makeDescriptor@<X0>(re::MaterialSamplerData *this@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 1) != 5)
  {
    if (*(this + 2) != 5)
    {
      if (*(this + 3) != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v4 = re::DynamicString::append(&v11, "ClampToBorderColor (R Address Mode)", 0x23uLL);
  if (*(this + 2) == 5)
  {
    re::DynamicString::append(&v11, ", ", 2uLL);
LABEL_5:
    v4 = re::DynamicString::append(&v11, "ClampToBorderColor (S Address Mode)", 0x23uLL);
  }

  if (*(this + 3) != 5)
  {
    goto LABEL_10;
  }

  re::DynamicString::append(&v11, ", ", 2uLL);
LABEL_9:
  v4 = re::DynamicString::append(&v11, "ClampToBorderColor (T Address Mode)", 0x23uLL);
LABEL_10:
  v5 = *re::graphicsLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v6 = *&v13[7];
    }

    else
    {
      v6 = v13;
    }

    *buf = 136315138;
    v15 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_15:
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  v7 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  *a2 = v7;
  [v7 setNormalizedCoordinates_];
  [v7 setRAddressMode_];
  [v7 setSAddressMode_];
  [v7 setTAddressMode_];
  [v7 setBorderColor_];
  [v7 setMinFilter_];
  [v7 setMagFilter_];
  [v7 setMipFilter_];
  LODWORD(v8) = *(this + 9);
  [v7 setLodMinClamp_];
  LODWORD(v9) = *(this + 10);
  [v7 setLodMaxClamp_];
  [v7 setLodAverage_];
  [v7 setMaxAnisotropy_];
  return [v7 setCompareFunction_];
}

unint64_t re::MaterialSamplerData::hash(re::MaterialSamplerData *this)
{
  v2 = 0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(this + 2) ^ (*(this + 2) >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = 0xBF58476D1CE4E5B9 * (*(this + 3) ^ (*(this + 3) >> 30));
  v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  v10 = 0xBF58476D1CE4E5B9 * (*(this + 5) ^ (*(this + 5) >> 30));
  v11 = re::hashCombine(*this, v3, v5, v7, v9, (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31));
  v12 = 0xBF58476D1CE4E5B9 * (*(this + 6) ^ (*(this + 6) >> 30));
  v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
  v14 = 0xBF58476D1CE4E5B9 * (*(this + 7) ^ (*(this + 7) >> 30));
  v15 = (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31);
  LODWORD(v14) = 73244475 * (*(this + 9) ^ HIWORD(*(this + 9)));
  v16 = (73244475 * (v14 ^ WORD1(v14))) ^ ((73244475 * (v14 ^ WORD1(v14))) >> 16);
  LODWORD(v14) = 73244475 * ((73244475 * (*(this + 10) ^ HIWORD(*(this + 10)))) ^ ((73244475 * (*(this + 10) ^ HIWORD(*(this + 10)))) >> 16));
  v17 = v14 ^ WORD1(v14);
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 1)) ^ ((0xBF58476D1CE4E5B9 * *(this + 1)) >> 27));
  v19 = v18 ^ (v18 >> 31);
  v20 = 0xBF58476D1CE4E5B9 * (*(this + 6) ^ (*(this + 6) >> 30));
  v21 = re::hashCombine(v13, v15, v16, v17, v19, (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31));
  v22 = 0xBF58476D1CE4E5B9 * (*(this + 8) ^ (*(this + 8) >> 30));
  return ((v11 << 6) + (v11 >> 2) - 0x61C8864680B583E9 + (((v21 << 6) + (v21 >> 2) + ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31)) - 0x61C8864680B583E9) ^ v21)) ^ v11;
}

unint64_t re::hashCombine(unint64_t this, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a2 + (this << 6) + (this >> 2) - 0x61C8864680B583E9) ^ this;
  v7 = (a4 + (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9) ^ a3;
  return ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v7 << 6) + (v7 >> 2) + ((a6 + (a5 << 6) + (a5 >> 2) - 0x61C8864680B583E9) ^ a5) - 0x61C8864680B583E9) ^ v7)) ^ v6;
}

void re::OptionalMaterialSamplerData::makeSamplerData(re::OptionalMaterialSamplerData *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = (a2 + 1);
  v6 = (a2 + 4);
  if (v4 > 4)
  {
    if (*this <= 6u)
    {
      if (v4 != 5)
      {
        if (v4 == 6)
        {
          v7 = 1;
          *a2 = 1;
          *v6 = 0;
          *(a2 + 12) = 0;
LABEL_28:
          *(a2 + 20) = 0x100000001;
          *(a2 + 28) = 2;
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v7 = 1;
      *a2 = 1;
      *v6 = 0;
      *(a2 + 12) = 0;
      goto LABEL_24;
    }

    if (v4 != 7)
    {
      if (v4 != 8)
      {
        if (v4 == 9)
        {
          v7 = 1;
          *a2 = 1;
          v8 = xmmword_1E30A32A0;
LABEL_27:
          *(a2 + 4) = v8;
          goto LABEL_28;
        }

LABEL_26:
        v7 = 1;
        *a2 = 1;
        v8 = xmmword_1E30A32B0;
        goto LABEL_27;
      }

      v7 = 1;
      *a2 = 1;
      v9 = xmmword_1E30A32A0;
      goto LABEL_23;
    }

    v7 = 1;
    *a2 = 1;
    v10 = xmmword_1E30A32A0;
LABEL_20:
    *(a2 + 4) = v10;
    *(a2 + 20) = 0;
    *(a2 + 24) = 0;
    goto LABEL_25;
  }

  if (*this <= 2u)
  {
    if (*this)
    {
      if (v4 != 1)
      {
        goto LABEL_26;
      }

      v7 = 1;
      *a2 = 1;
      v9 = xmmword_1E30A32B0;
LABEL_23:
      *(a2 + 4) = v9;
LABEL_24:
      *(a2 + 20) = 0x100000001;
      goto LABEL_25;
    }

    v7 = 1;
    *a2 = 1;
    v10 = xmmword_1E30A32B0;
    goto LABEL_20;
  }

  if (v4 == 3)
  {
    *a2 = 1;
    *(a2 + 4) = xmmword_1E30A32B0;
    *(a2 + 20) = 0x100000001;
    *(a2 + 28) = 2;
    *(a2 + 36) = 0x7F80000000000000;
    v7 = 4;
    goto LABEL_30;
  }

  if (v4 != 4)
  {
    goto LABEL_26;
  }

  v7 = 1;
  *a2 = 1;
  *(a2 + 12) = 0;
  *(a2 + 20) = 0;
  *v6 = 0;
LABEL_25:
  *(a2 + 28) = 1;
LABEL_29:
  *(a2 + 36) = 0x7F80000000000000;
LABEL_30:
  *(a2 + 48) = v7;
  v39 = v2;
  v40 = v3;
  *(a2 + 32) = 0;
  v11 = (a2 + 32);
  if (*(this + 1))
  {
    v12 = this + 2;
  }

  else
  {
    v12 = a2;
  }

  *a2 = *v12;
  if (*(this + 8))
  {
    v6 = (this + 12);
  }

  v13 = *v6;
  v14 = (a2 + 8);
  if (*(this + 16))
  {
    v14 = (this + 20);
  }

  v15 = *v14;
  *(a2 + 4) = v13;
  *(a2 + 8) = v15;
  v16 = (a2 + 12);
  if (*(this + 24))
  {
    v16 = (this + 28);
  }

  v17 = *v16;
  v18 = (a2 + 16);
  if (*(this + 32))
  {
    v18 = (this + 36);
  }

  v19 = *v18;
  *(a2 + 12) = v17;
  *(a2 + 16) = v19;
  v20 = (a2 + 20);
  if (*(this + 40))
  {
    v20 = (this + 44);
  }

  v21 = *v20;
  v22 = (a2 + 24);
  if (*(this + 48))
  {
    v22 = (this + 52);
  }

  v23 = *v22;
  *(a2 + 20) = v21;
  *(a2 + 24) = v23;
  v24 = (a2 + 28);
  if (*(this + 56))
  {
    v24 = (this + 60);
  }

  *(a2 + 28) = *v24;
  v25 = (a2 + 36);
  if (*(this + 72))
  {
    v25 = (this + 76);
  }

  v26 = *v25;
  v27 = (a2 + 40);
  if (*(this + 80))
  {
    v27 = (this + 84);
  }

  v28 = *v27;
  *(a2 + 36) = v26;
  *(a2 + 40) = v28;
  if (*(this + 3))
  {
    v5 = this + 4;
  }

  *(a2 + 1) = *v5;
  v29 = (a2 + 48);
  if (*(this + 88))
  {
    v30 = (this + 96);
  }

  else
  {
    v30 = (a2 + 48);
  }

  *(a2 + 48) = *v30;
  if (*(this + 64))
  {
    v31 = (this + 68);
  }

  else
  {
    v31 = (a2 + 32);
  }

  *v11 = *v31;
  if ((atomic_load_explicit(&qword_1EE1B8808, memory_order_acquire) & 1) == 0)
  {
    v36 = v29;
    v33 = __cxa_guard_acquire(&qword_1EE1B8808);
    v29 = v36;
    if (v33)
    {
      re::Defaults::uint64Value("materialSamplerMaxAnisotropy", v34, v37);
      if (v37[0])
      {
        v35 = v38;
      }

      else
      {
        v35 = 0;
      }

      _MergedGlobals_437 = v35;
      __cxa_guard_release(&qword_1EE1B8808);
      v29 = v36;
    }
  }

  v32 = _MergedGlobals_437;
  if (_MergedGlobals_437)
  {
    if (_MergedGlobals_437 >= 0x10)
    {
      v32 = 16;
    }

    *v29 = v32;
  }
}