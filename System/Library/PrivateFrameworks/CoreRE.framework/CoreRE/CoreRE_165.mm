Class re::getVFXRendererClass(re *this)
{
  result = qword_1EE1B8600;
  if (!qword_1EE1B8600)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXRenderer");
      if (result)
      {
        qword_1EE1B8600 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXRenderer", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXREWorldSimulationClass(re *this)
{
  result = qword_1EE1B8608;
  if (!qword_1EE1B8608)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXREWorldSimulation");
      if (result)
      {
        qword_1EE1B8608 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXREWorldSimulation", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXClientTextureAssetClass(re *this)
{
  result = qword_1EE1B8610;
  if (!qword_1EE1B8610)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXClientTextureAsset");
      if (result)
      {
        qword_1EE1B8610 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXClientTextureAsset", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXTransactionClass(re *this)
{
  result = qword_1EE1B8618;
  if (!qword_1EE1B8618)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXTransaction");
      if (result)
      {
        qword_1EE1B8618 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXTransaction", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

id re::getVFXWorldInitOptionForREOptionKey(re *this)
{
  v1 = qword_1EE1B8620;
  if (qword_1EE1B8620)
  {
    goto LABEL_6;
  }

  if (qword_1EE1B8660 != -1)
  {
    dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
  }

  atomic_load(&_MergedGlobals_434);
  v1 = dlsym(qword_1EE1B8628, "VFXWorldInitOptionForRE");
  if (v1)
  {
    qword_1EE1B8620 = v1;
LABEL_6:
    v2 = *v1;
    goto LABEL_7;
  }

  v4 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to find VFX pointer VFXWorldInitOptionForRE", v5, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

id re::getVFXRendererInitOptionForREOptionKey(re *this)
{
  v1 = qword_1EE1B8630;
  if (qword_1EE1B8630)
  {
    goto LABEL_6;
  }

  if (qword_1EE1B8660 != -1)
  {
    dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
  }

  atomic_load(&_MergedGlobals_434);
  v1 = dlsym(qword_1EE1B8628, "VFXRendererInitOptionForRE");
  if (v1)
  {
    qword_1EE1B8630 = v1;
LABEL_6:
    v2 = *v1;
    goto LABEL_7;
  }

  v4 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to find VFX pointer VFXRendererInitOptionForRE", v5, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

Class re::getVFXRESceneClass(re *this)
{
  result = qword_1EE1B8638;
  if (!qword_1EE1B8638)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXREScene");
      if (result)
      {
        qword_1EE1B8638 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXREScene", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXREDrawCallClass(re *this)
{
  result = qword_1EE1B8640;
  if (!qword_1EE1B8640)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXREDrawCall");
      if (result)
      {
        qword_1EE1B8640 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXREDrawCall", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

void *re::getVFXREForEachDrawCallFct(re *this)
{
  v1 = qword_1EE1B8648;
  if (!qword_1EE1B8648)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      v1 = dlsym(qword_1EE1B8628, "VFXREForEachDrawCall");
      if (!v1)
      {
        v3 = *re::graphicsLogObjects(0);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *v5 = 0;
          _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find function VFXREForEachDrawCall", v5, 2u);
        }
      }

      qword_1EE1B8648 = v1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t re::loadVFXFramework(re *this)
{
  if (qword_1EE1B8660 != -1)
  {
    dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
  }

  v1 = atomic_load(&_MergedGlobals_434);
  return v1 & 1;
}

uint64_t re::loadVFXAssetsFramework(re *this)
{
  if (qword_1EE1B8668 != -1)
  {
    dispatch_once(&qword_1EE1B8668, &__block_literal_global_580);
  }

  v1 = atomic_load(byte_1EE1B85C9);
  return v1 & 1;
}

uint64_t re::BufferTableReference::getBuffer@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 8);
  if (v5 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v5, v3, v4);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = *this + 24 * a2;
    v7 = *(v6 + 16);
    if (*(this + 24) <= a2)
    {
      v9 = 0;
      v8 = *(v6 + 20);
    }

    else
    {
      v8 = *(*(this + 16) + 4 * a2);
      v9 = *(this + 32) * v8;
    }

    *a3 = *v6;
    *(a3 + 8) = 0;
    *(a3 + 16) = v9 + v7;
    *(a3 + 20) = v8;
  }

  return this;
}

uint64_t anonymous namespace::renderOptionsForConstants(void *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8680))
  {
    qword_1EE1B8678 = re::hashString("EnableDepthMitigation", v4);
    __cxa_guard_release(&qword_1EE1B8680);
  }

  v5 = qword_1EE1B8678;
  v2 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, &v5);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return 16 * (*(a1[1] + 16 * v2 + 8) == 1);
  }
}

uint64_t re::EncoderState::setCullMode(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  if ((*result & 1) == 0 || *(result + 2) != a2)
  {
    result = (*(*(a3 + 8) + 64))(**(a3 + 8), sel_setCullMode_, a2);
    *(v4 + 2) = v3;
    *v4 |= 1u;
  }

  return result;
}

uint64_t re::EncoderState::setTriangleFillMode(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  if ((*result & 2) == 0 || *(result + 3) != a2)
  {
    result = (*(*(a3 + 8) + 176))(**(a3 + 8), sel_setTriangleFillMode_, a2);
    *(v4 + 3) = v3;
    *v4 |= 2u;
  }

  return result;
}

uint64_t re::EncoderState::setStencilReferenceValues(uint64_t this, uint64_t a2, uint64_t a3, RenderCommandEncoder *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = this;
  if ((*this & 4) == 0 || *(this + 4) != a2 || *(this + 5) != a3)
  {
    this = (*(a4->var0 + 16))(*a4->var0, sel_setStencilFrontReferenceValue_backReferenceValue_, a2, a3);
    *(v6 + 4) = v5;
    *(v6 + 5) = v4;
    *v6 |= 4u;
  }

  return this;
}

void **re::EncoderState::setDepthStencilState(void **result, void **a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  if ((*result & 0x80) == 0 || result[3] != v6)
  {
    (*(*(a3 + 8) + 112))(**(a3 + 8), sel_setDepthStencilState_, v6);
    result = NS::SharedPtr<MTL::Buffer>::operator=(v5 + 3, a2);
    *v5 |= 0x80u;
  }

  return result;
}

void **re::EncoderState::setRenderPipelineState(void **result, void **a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  if ((*result & 0x100) == 0 || result[4] != v6)
  {
    (*(*(a3 + 8) + 56))(**(a3 + 8), sel_setRenderPipelineState_, v6);
    result = NS::SharedPtr<MTL::Buffer>::operator=(v5 + 4, a2);
    *v5 |= 0x100u;
  }

  return result;
}

void ___ZL13VFXLoadBridgev_block_invoke()
{
  if (dlsym(0xFFFFFFFFFFFFFFFELL, "VFXREVersionCheckBridgeVersion"))
  {
    qword_1EE1B8628 = -2;
  }

  else if (!qword_1EE1B8628)
  {
    qword_1EE1B8628 = dlopen("/System/Library/PrivateFrameworks/VFX.framework/VFX", 1);
    if (!qword_1EE1B8628)
    {
      v0 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_ERROR, "[VFX] VFX.framework failed loading", buf, 2u);
      }
    }
  }

  if (qword_1EE1B8668 != -1)
  {
    dispatch_once(&qword_1EE1B8668, &__block_literal_global_580);
  }

  atomic_load(byte_1EE1B85C9);
  if (qword_1EE1B8628)
  {
    v1 = dlsym(qword_1EE1B8628, "VFXREVersionCheckBridgeVersion");
    if (v1)
    {
      v1 = v1(0x2540BE40BLL, 0xFFFFLL);
    }

    atomic_store(v1, &_MergedGlobals_434);
    v2 = atomic_load(&_MergedGlobals_434);
    if ((v2 & 1) == 0)
    {
      v3 = *re::graphicsLogObjects(v1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "[VFX] Version missmatch between RE bridge and VFX framework", v4, 2u);
      }
    }
  }
}

void ___ZL14_loadVFXAssetsv_block_invoke()
{
  if (dlsym(0xFFFFFFFFFFFFFFFELL, "__vfx_get_effect_class_comAppleVfxConfetti"))
  {
    qword_1EE1B8670 = -2;
LABEL_4:
    v0 = 1;
    goto LABEL_5;
  }

  if (qword_1EE1B8670)
  {
    goto LABEL_4;
  }

  v0 = 1;
  qword_1EE1B8670 = dlopen("/System/Library/PrivateFrameworks/VFXAssets.framework/VFXAssets", 1);
  if (!qword_1EE1B8670)
  {
    v1 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_error_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_ERROR, "[VFX] VFXAssets.framework failed loading", v2, 2u);
    }

    v0 = qword_1EE1B8670 != 0;
  }

LABEL_5:
  atomic_store(v0, byte_1EE1B85C9);
}

void re::makeMaterialBuilderErr(__CFString *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = a2 + 9;
  }

  re::WrappedError::make(@"REMaterialBuilderErrorDomain", a1, v3, a3);
}

uint64_t re::ShaderParameterTableBuilder::addConstant(uint64_t a1, const re::DynamicString *a2, uint64_t a3, char a4)
{
  for (i = *(a1 + 112); (i & 3) != 0; i = *(a1 + 112))
  {
    v15 = 0;
    re::DynamicArray<unsigned char>::add((a1 + 96), &v15);
  }

  LOWORD(v14) = i;
  BYTE2(v14) = *(a3 + 8);
  HIBYTE(v14) = a4;
  result = re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 176, a2, &v14);
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *a3;
    do
    {
      v12 = *v11++;
      v13 = v12;
      result = re::DynamicArray<unsigned char>::add((a1 + 96), &v13);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::ShaderParameterTableBuilder::addOriginalColorConstant(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = (a2 + 9);
  }

  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = v4[1];
      if (v6)
      {
        v7 = (v4 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v5;
  v10 = *a3;
  v11 = *(a3 + 16);
  v12 = a4;
  return re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 272, &v13, &v10);
}

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(uint64_t a1, void *a2, __int128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = *a3;
  *(v7 + 32) = *(a3 + 2);
  *(v7 + 16) = v9;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::DynamicArray<re::BufferSlice>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BufferSlice>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = 0;
  *(v5 + 24) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v5, a2);
  *(v5 + 32) = *(a2 + 32);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL re::TextureParameterTableBuilder::bindTextureToSampler(re::TextureParameterTableBuilder *this, const re::DynamicString *a2, const re::DynamicString *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 224, a3);
  if (v8)
  {
    re::DynamicString::format("%llu", &v31, a4);
    v9 = v33;
    if (v32)
    {
      v9 = v34;
    }

    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        if (v32)
        {
          v11 = v34 + 1;
        }

        else
        {
          v11 = &v33[1];
        }

        v12 = *v11;
        if (*v11)
        {
          v13 = v11 + 1;
          do
          {
            v10 = 31 * v10 + v12;
            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
        }

        v15 = v10 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = re::Hash<re::DynamicString>::operator()(buf, &v31);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 224, &v31, v19, buf);
    v20 = *&buf[12];
    v21 = re::Hash<re::DynamicString>::operator()(buf, a2);
    v22 = v21;
    if (*(this + 34))
    {
      v23 = v21 % *(this + 74);
      v24 = *(*(this + 35) + 4 * v23);
      if (v24 != 0x7FFFFFFF)
      {
        v25 = *(this + 36);
        if (re::DynamicString::operator==(v25 + 56 * v24 + 8, a2))
        {
LABEL_28:
          ++*(this + 78);
          *(v25 + 56 * v24 + 40) = v15;
LABEL_31:
          if (v20 == 0x7FFFFFFF)
          {
            v28 = *v8;
            *buf = *(this + 19);
            re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this + 224, &v31, buf);
            v29 = *(this + 19);
            if (v29 <= v28)
            {
              v35 = 0;
              v46 = 0u;
              v47 = 0u;
              v45 = 0u;
              memset(buf, 0, sizeof(buf));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v36 = 136315906;
              v37 = "operator[]";
              v38 = 1024;
              v39 = 789;
              v40 = 2048;
              v41 = v28;
              v42 = 2048;
              v43 = v29;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *buf = *(*(this + 21) + 8 * v28);
            re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 136), buf);
            if (*buf)
            {
            }
          }

          if (v31 && (v32 & 1) != 0)
          {
            (*(*v31 + 40))();
          }

          return v8 != 0;
        }

        while (1)
        {
          v26 = *(v25 + 56 * v24);
          v24 = v26 & 0x7FFFFFFF;
          if ((v26 & 0x7FFFFFFF) == 0x7FFFFFFF)
          {
            break;
          }

          if (re::DynamicString::operator==(v25 + 56 * v24 + 8, a2))
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      LODWORD(v23) = 0;
    }

    v27 = re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 272, v23, v22);
    re::DynamicString::DynamicString((v27 + 8), a2);
    *(v27 + 40) = v15;
    ++*(this + 78);
    goto LABEL_31;
  }

  v16 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 1))
    {
      v17 = *(a2 + 2);
    }

    else
    {
      v17 = a2 + 9;
    }

    if (*(a3 + 1))
    {
      v18 = *(a3 + 2);
    }

    else
    {
      v18 = a3 + 9;
    }

    *buf = 136315394;
    *&buf[4] = v17;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Attempting to bind texture %s to non-existent sampler %s, skipping binding.", buf, 0x16u);
  }

  return v8 != 0;
}

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

void re::MaterialParameterTableBuilder::buildFromParameterBlockArray(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v109 = a1;
  v131 = *MEMORY[0x1E69E9840];
  v106 = a3;
  if (a3)
  {
    v5 = a3;
    a3 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 8 * v5;
    v17 = a2;
    do
    {
      v18 = *v17++;
      a3 += v18[58];
      v6 += v18[66];
      v7 += v18[74];
      v8 += v18[82];
      v9 += v18[5];
      v10 += v18[26];
      v11 += v18[15];
      v12 += v18[10];
      v13 += v18[20];
      v14 += v18[90];
      v15 += v18[98];
      v16 -= 8;
    }

    while (v16);
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    LODWORD(v10) = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v108 = v15;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((a4 + 24), a1, a3);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((v4 + 88), v109, v6);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((v4 + 552), v109, v7);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((v4 + 616), v109, v8);
  re::ConstantTable::init((v4 + 152), v109, v9, v10);
  re::BufferTable::init((v4 + 264), v109, v11);
  *(v4 + 752) = v109;
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity((v4 + 752), v12);
  ++*(v4 + 776);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 688), v109, v12);
  *(v4 + 856) = v109;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v4 + 856), v13);
  ++*(v4 + 880);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 792), v109, v13);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 904), v109, v14);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 968), v109, v108);
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    re::MaterialParameterTable::initPassTechniqueMappings(v4, v109, 1, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    v19 = a2;
    if (!v106)
    {
      break;
    }

    v20 = (v4 + 1096);
    v109 = 0x8040201008040201;
    while (1)
    {
      v21 = v19;
      v22 = *v19;
      if (*(*v19 + 464))
      {
        v126 = (v22 + 440);
        v23 = *(v22 + 456);
        if (v23 >= 0x10)
        {
          v24 = 0;
          v25 = *(v22 + 440);
          v26 = v23 >> 4;
          while (1)
          {
            v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v25), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v27 ^ 0xFFFFLL;
            if (v27 != 0xFFFFLL)
            {
              break;
            }

            v24 -= 16;
            ++v25;
            if (!--v26)
            {
              goto LABEL_17;
            }
          }

          v28 = __clz(__rbit64(v27 ^ 0xFFFFLL));
          v29 = v28 - v24;
          *&v127 = v28 - v24;
          if (v28 + 1 != v24)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 24), (*(v126 + 8) + 40 * v29), *(v126 + 8) + 40 * v29 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v29 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_17:
      if (*(v22 + 528))
      {
        v126 = (v22 + 504);
        v30 = *(v22 + 520);
        if (v30 >= 0x10)
        {
          v31 = 0;
          v32 = *(v22 + 504);
          v33 = v30 >> 4;
          while (1)
          {
            v34 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v32), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v34 ^ 0xFFFFLL;
            if (v34 != 0xFFFFLL)
            {
              break;
            }

            v31 -= 16;
            ++v32;
            if (!--v33)
            {
              goto LABEL_25;
            }
          }

          v35 = __clz(__rbit64(v34 ^ 0xFFFFLL));
          v36 = v35 - v31;
          *&v127 = v35 - v31;
          if (v35 + 1 != v31)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 88), (*(v126 + 8) + 40 * v36), *(v126 + 8) + 40 * v36 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v36 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_25:
      if (*(v22 + 592))
      {
        v126 = (v22 + 568);
        v37 = *(v22 + 584);
        if (v37 >= 0x10)
        {
          v38 = 0;
          v39 = *(v22 + 568);
          v40 = v37 >> 4;
          while (1)
          {
            v41 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v39), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v41 ^ 0xFFFFLL;
            if (v41 != 0xFFFFLL)
            {
              break;
            }

            v38 -= 16;
            ++v39;
            if (!--v40)
            {
              goto LABEL_33;
            }
          }

          v42 = __clz(__rbit64(v41 ^ 0xFFFFLL));
          v43 = v42 - v38;
          *&v127 = v42 - v38;
          if (v42 + 1 != v38)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 552), (*(v126 + 8) + 40 * v43), *(v126 + 8) + 40 * v43 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v43 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_33:
      if (*(v22 + 656))
      {
        v126 = (v22 + 632);
        v44 = *(v22 + 648);
        if (v44 >= 0x10)
        {
          v45 = 0;
          v46 = *(v22 + 632);
          v47 = v44 >> 4;
          while (1)
          {
            v48 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v46), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v48 ^ 0xFFFFLL;
            if (v48 != 0xFFFFLL)
            {
              break;
            }

            v45 -= 16;
            ++v46;
            if (!--v47)
            {
              goto LABEL_41;
            }
          }

          v49 = __clz(__rbit64(v48 ^ 0xFFFFLL));
          v50 = v49 - v45;
          *&v127 = v49 - v45;
          if (v49 + 1 != v45)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 616), (*(v126 + 8) + 40 * v50), *(v126 + 8) + 40 * v50 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v50 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_41:
      v51 = *(v22 + 40);
      if (v51)
      {
        memcpy(*(v4 + 192), *(v22 + 56), v51);
        v126 = (v22 + 184);
        v52 = *(v22 + 200);
        if (v52 >= 0x10)
        {
          v53 = 0;
          v54 = *(v22 + 184);
          v55 = v52 >> 4;
          while (1)
          {
            v56 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v54), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v56 ^ 0xFFFFLL;
            if (v56 != 0xFFFFLL)
            {
              break;
            }

            v53 -= 16;
            ++v54;
            if (!--v55)
            {
              goto LABEL_52;
            }
          }

          v57 = __clz(__rbit64(v56 ^ 0xFFFFLL));
          v58 = v57 - v53;
          *&v127 = v57 - v53;
          if (v57 + 1 != v53)
          {
            do
            {
              v59 = *(v126 + 8) + 16 * v58;
              v60 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 200), v59);
              if (v60 == -1)
              {
                re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(v4 + 200, v59, (v59 + 8));
              }

              else
              {
                v61 = v60;
                re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(v4 + 200, *(v4 + 208) + 16 * v60);
                *(*(v4 + 208) + 16 * v61 + 8) = *(v59 + 8);
                re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(v4 + 200, *(v4 + 208) + 16 * v61);
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v58 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_52:
      if (*(v22 + 120))
      {
        v114 = v22 + 248;
        v115 = 0;
        v62 = *(v22 + 264);
        if (v62 >= 0x10)
        {
          v63 = 0;
          v64 = *(v22 + 248);
          v65 = v62 >> 4;
          while (1)
          {
            v66 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v64), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v115 = v66 ^ 0xFFFFLL;
            if (v66 != 0xFFFFLL)
            {
              break;
            }

            v63 -= 16;
            ++v64;
            if (!--v65)
            {
              goto LABEL_63;
            }
          }

          v67 = __clz(__rbit64(v66 ^ 0xFFFFLL));
          v68 = v67 - v63;
          v116 = v67 - v63;
          if (v67 + 1 != v63)
          {
            while (1)
            {
              v69 = *(v114 + 8) + 16 * v68;
              v70 = *(v69 + 8);
              LOBYTE(v126) = v70;
              re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew((v4 + 264), v69, &v126);
              if (*(v4 + 544) <= v70)
              {
                *(v4 + 544) = v70 + 1;
              }

              v71 = *(v69 + 8);
              v72 = *(v22 + 120);
              if (v72 <= v71)
              {
                break;
              }

              re::BufferTable::setBuffer((v4 + 264), v71, (*(v22 + 136) + 40 * v71));
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v114);
              v68 = v116;
              if (v116 == -1)
              {
                goto LABEL_63;
              }
            }

            v117 = 0;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v126 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v118 = 136315906;
            v119 = "operator[]";
            v120 = 1024;
            v121 = 789;
            v122 = 2048;
            v123 = v71;
            v124 = 2048;
            v125 = v72;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_115;
          }
        }
      }

LABEL_63:
      if (*(v22 + 80))
      {
        v114 = v22 + 312;
        v115 = 0;
        v73 = *(v22 + 328);
        if (v73 >= 0x10)
        {
          v74 = 0;
          v75 = *(v22 + 312);
          v76 = v73 >> 4;
          while (1)
          {
            v77 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v75), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v115 = v77 ^ 0xFFFFLL;
            if (v77 != 0xFFFFLL)
            {
              break;
            }

            v74 -= 16;
            ++v75;
            if (!--v76)
            {
              goto LABEL_75;
            }
          }

          v78 = __clz(__rbit64(v77 ^ 0xFFFFLL));
          v79 = v78 - v74;
          v116 = v78 - v74;
          if (v78 + 1 != v74)
          {
            while (1)
            {
              v80 = *(v114 + 8) + 16 * v79;
              v71 = *(v80 + 8);
              v72 = *(v22 + 80);
              if (v72 <= v71)
              {
                break;
              }

              v81 = (*(v22 + 96) + 16 * v71);
              if (*(v81 + 1) && *v81)
              {
                v113 = *v80;
                re::TextureHandle::TextureHandle(v112, v81);
                re::TextureHandleTable::setTexture((v4 + 680), &v113, v112);
                re::TextureHandle::invalidate(v112);
                v113 = 0;
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v114);
              v79 = v116;
              if (v116 == -1)
              {
                goto LABEL_75;
              }
            }

LABEL_115:
            v117 = 0;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v126 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v118 = 136315906;
            v119 = "operator[]";
            v120 = 1024;
            v121 = 789;
            v122 = 2048;
            v123 = v71;
            v124 = 2048;
            v125 = v72;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_116;
          }
        }
      }

LABEL_75:
      if (*(v22 + 160))
      {
        v114 = v22 + 376;
        v115 = 0;
        v82 = *(v22 + 392);
        if (v82 >= 0x10)
        {
          v83 = 0;
          v84 = *(v22 + 376);
          v85 = v82 >> 4;
          while (1)
          {
            v86 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v84), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v115 = v86 ^ 0xFFFFLL;
            if (v86 != 0xFFFFLL)
            {
              break;
            }

            v83 -= 16;
            ++v84;
            if (!--v85)
            {
              goto LABEL_86;
            }
          }

          v87 = __clz(__rbit64(v86 ^ 0xFFFFLL));
          v88 = v87 - v83;
          v116 = v87 - v83;
          if (v87 + 1 != v83)
          {
            break;
          }
        }
      }

LABEL_86:
      if (*(v22 + 720))
      {
        v126 = (v22 + 696);
        v90 = *(v22 + 712);
        if (v90 >= 0x10)
        {
          v91 = 0;
          v92 = *(v22 + 696);
          v93 = v90 >> 4;
          while (1)
          {
            v94 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v92), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v94 ^ 0xFFFFLL;
            if (v94 != 0xFFFFLL)
            {
              break;
            }

            v91 -= 16;
            ++v92;
            if (!--v93)
            {
              goto LABEL_94;
            }
          }

          v95 = __clz(__rbit64(v94 ^ 0xFFFFLL));
          v96 = v95 - v91;
          *&v127 = v95 - v91;
          if (v95 + 1 != v91)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew((v4 + 904), (*(v126 + 8) + 16 * v96), (*(v126 + 8) + 16 * v96 + 8));
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v96 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_94:
      if (*(v22 + 784))
      {
        v126 = (v22 + 760);
        v97 = *(v22 + 776);
        if (v97 >= 0x10)
        {
          v98 = 0;
          v99 = *(v22 + 760);
          v100 = v97 >> 4;
          while (1)
          {
            v101 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v99), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v126 + 1) = v101 ^ 0xFFFFLL;
            if (v101 != 0xFFFFLL)
            {
              break;
            }

            v98 -= 16;
            ++v99;
            if (!--v100)
            {
              goto LABEL_102;
            }
          }

          v102 = __clz(__rbit64(v101 ^ 0xFFFFLL));
          v103 = v102 - v98;
          *&v127 = v102 - v98;
          if (v102 + 1 != v98)
          {
            do
            {
              re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew((v4 + 968), (*(v126 + 8) + 16 * v103), (*(v126 + 8) + 16 * v103 + 8));
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v126);
              v103 = v127;
            }

            while (v127 != -1);
          }
        }
      }

LABEL_102:
      if (*(v22 + 916))
      {
        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v4 + 1032, v22 + 888);
      }

      if (*(v22 + 936) == 1)
      {
        v104 = *(v22 + 937);
        if ((*(v4 + 1080) & 1) == 0)
        {
          *(v4 + 1080) = 1;
        }

        *(v4 + 1081) = v104;
      }

      if (*(v22 + 948) == 1)
      {
        *(&v126 + 3) = *(v22 + 952);
        *(&v126 + 11) = *(v22 + 960);
        if (*(v4 + 1092))
        {
          v105 = *(v22 + 952);
          *(v4 + 1104) = *(v22 + 960);
          *v20 = v105;
        }

        else
        {
          *(v4 + 1092) = 1;
          *v20 = *(&v126 + 3);
          *(v4 + 1104) = *(&v126 + 11);
        }
      }

      v19 = v21 + 1;
      if (v21 + 1 == &a2[v106])
      {
        return;
      }
    }

    while (1)
    {
      v89 = *(v114 + 8) + 16 * v88;
      v111 = *v89;
      v71 = *(v89 + 8);
      v72 = *(v22 + 160);
      if (v72 <= v71)
      {
        break;
      }

      v110 = *(*(v22 + 176) + 8 * v71);
      re::SamplerTable::setSampler((v4 + 792), &v111, &v110);
      if (v110)
      {

        v110 = 0;
      }

      v111 = 0;
      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v114);
      v88 = v116;
      if (v116 == -1)
      {
        goto LABEL_86;
      }
    }

LABEL_116:
    v117 = 0;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    v119 = "operator[]";
    v120 = 1024;
    v121 = 789;
    v122 = 2048;
    v123 = v71;
    v124 = 2048;
    v125 = v72;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_117:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }
}

void *re::ConstantTable::init(re::ConstantTable *this, re::Allocator *a2, unint64_t a3, unsigned int a4)
{
  *(this + 1) = a2;
  v7 = this + 8;
  re::DynamicArray<BOOL>::setCapacity(this + 1, a3);
  ++*(v7 + 6);
  re::DynamicArray<unsigned char>::resizeUninitialized(v7, a3);

  return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v7 + 5, a2, a4);
}

void re::BufferTable::init(re::BufferTable *this, re::Allocator *a2, unint64_t a3)
{
  *(this + 8) = a2;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this + 8, a3);
  ++*(this + 22);
  re::BucketArray<re::BufferSlice,8ul>::init(this + 144, a2, a3);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(this, a2, a3);
  *(this + 25) = a2;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(this + 25, a3);
  ++*(this + 56);
  *(this + 30) = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this + 30, a3);
  ++*(this + 66);

  re::BufferTable::resize(this, a3);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, unint64_t a2, const re::BufferSlice *a3)
{
  if (*(this + 70) <= a2)
  {
    *(this + 70) = a2 + 1;
  }

  re::BufferTable::setBufferRef(this, a2, a3);
  v6 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, a2);
  v12 = *(a3 + 4);
  v7 = *(v6 + 24);
  if (v7 == -1)
  {
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(v10);
  }

  else
  {
    v14 = &v13;
    *&v11 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v7])(&v14, v6);
    *(&v11 + 1) = v8;
    re::BufferTable::setBufferView(this, a2, &v11);
    return re::BufferTable::setBufferIndirectResources(this, a2, 0, 0);
  }
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(void *a1, void *a2, void *a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

void re::MaterialParameterTableBuilder::build(re::MaterialParameterTableBuilder *this, re::Allocator *a2, const re::MaterialParameterBlock *a3, re::MaterialParameterTable *a4)
{
  v4 = a3;
  v87 = *MEMORY[0x1E69E9840];
  *(a3 + 1121) = 0;
  v7 = a3 + 24;
  v8 = a2 + 440;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(a3 + 3, this, *(a2 + 116));
  v9 = v4 + 88;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v4 + 11, this, *(a2 + 132));
  v10 = v4 + 552;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v4 + 69, this, *(a2 + 148));
  v11 = v4 + 616;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v4 + 77, this, *(a2 + 164));
  re::ConstantTable::init((v4 + 152), this, *(a2 + 5), *(a2 + 26));
  re::BufferTable::init((v4 + 264), this, *(a2 + 15));
  v12 = *(a2 + 10);
  *(v4 + 94) = this;
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(v4 + 94, v12);
  ++*(v4 + 194);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 86, this, v12);
  v13 = *(a2 + 20);
  *(v4 + 107) = this;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v4 + 107, v13);
  ++*(v4 + 220);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 99, this, v13);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 113, this, *(a2 + 90));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 121, this, *(a2 + 98));
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    re::MaterialParameterTable::initPassTechniqueMappings(v4, this, 1, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    if (v7 != v8 && *(a2 + 58))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v7, v8);
    }

    v7 = a2 + 568;
    if (v9 != (a2 + 504) && *(a2 + 66))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v9, a2 + 504);
    }

    if (v10 != v7 && *(a2 + 74))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v10, a2 + 568);
    }

    if (v11 != (a2 + 632) && *(a2 + 82))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v11, a2 + 632);
    }

    v14 = *(a2 + 5);
    if (v14)
    {
      memcpy(*(v4 + 24), *(a2 + 7), v14);
      v82 = a2 + 184;
      v15 = *(a2 + 25);
      if (v15 >= 0x10)
      {
        v16 = 0;
        v17 = *(a2 + 23);
        v18 = v15 >> 4;
        while (1)
        {
          v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v17), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          *(&v82 + 1) = v19 ^ 0xFFFFLL;
          if (v19 != 0xFFFFLL)
          {
            break;
          }

          v16 -= 16;
          ++v17;
          if (!--v18)
          {
            goto LABEL_22;
          }
        }

        v20 = __clz(__rbit64(v19 ^ 0xFFFFLL));
        v21 = v20 - v16;
        *&v83 = v20 - v16;
        if (v20 + 1 != v16)
        {
          do
          {
            v22 = *(v82 + 8) + 16 * v21;
            *v77 = *v22;
            *&v77[8] = *(v22 + 8);
            re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(v4 + 25, v77, &v77[8]);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
            v21 = v83;
          }

          while (v83 != -1);
        }
      }
    }

LABEL_22:
    v10 = &v82;
    if (*(a2 + 15))
    {
      v73 = a2 + 248;
      v74 = 0;
      v23 = *(a2 + 33);
      if (v23 >= 0x10)
      {
        v24 = 0;
        v25 = *(a2 + 31);
        v26 = v23 >> 4;
        while (1)
        {
          v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v25), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v74 = v27 ^ 0xFFFFLL;
          if (v27 != 0xFFFFLL)
          {
            break;
          }

          v24 -= 16;
          ++v25;
          if (!--v26)
          {
            goto LABEL_34;
          }
        }

        v28 = __clz(__rbit64(v27 ^ 0xFFFFLL));
        v29 = v28 - v24;
        v75 = v28 - v24;
        if (v28 + 1 != v24)
        {
          v9 = 40;
          while (1)
          {
            v30 = *(v73 + 1) + 16 * v29;
            v71 = *v30;
            v31 = *(v30 + 8);
            v72 = v31;
            LOBYTE(v82) = v31;
            re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v4 + 33, &v71, &v82);
            if (*(v4 + 136) <= v31)
            {
              *(v4 + 136) = v31 + 1;
            }

            v11 = v72;
            v7 = *(a2 + 15);
            if (v7 <= v72)
            {
              break;
            }

            re::BufferTable::setBuffer((v4 + 264), v72, (*(a2 + 17) + 40 * v72));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v73);
            v29 = v75;
            if (v75 == -1)
            {
              goto LABEL_34;
            }
          }

          v76 = 0;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v82 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v77 = 136315906;
          *&v77[4] = "operator[]";
          *&v77[12] = 1024;
          *&v77[14] = 797;
          v78 = 2048;
          v79 = v11;
          v80 = 2048;
          v81 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_85;
        }
      }
    }

LABEL_34:
    if (!*(a2 + 10))
    {
      break;
    }

    v73 = a2 + 312;
    v74 = 0;
    v32 = *(a2 + 41);
    if (v32 < 0x10)
    {
      break;
    }

    v33 = 0;
    v34 = *(a2 + 39);
    v35 = v32 >> 4;
    while (1)
    {
      v36 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v34), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v74 = v36 ^ 0xFFFFLL;
      if (v36 != 0xFFFFLL)
      {
        break;
      }

      v33 -= 16;
      ++v34;
      if (!--v35)
      {
        goto LABEL_46;
      }
    }

    v37 = __clz(__rbit64(v36 ^ 0xFFFFLL));
    v38 = v37 - v33;
    v75 = v37 - v33;
    if (v37 + 1 == v33)
    {
      break;
    }

    while (1)
    {
      v39 = *(v73 + 1) + 16 * v38;
      v11 = *(v39 + 8);
      v9 = *(a2 + 10);
      if (v9 <= v11)
      {
        break;
      }

      v40 = (*(a2 + 12) + 16 * v11);
      if (*(v40 + 1) && *v40)
      {
        v70 = *v39;
        re::TextureHandle::TextureHandle(v69, v40);
        re::TextureHandleTable::setTexture(v4 + 85, &v70, v69);
        re::TextureHandle::invalidate(v69);
        v70 = 0;
      }

      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v73);
      v38 = v75;
      if (v75 == -1)
      {
        goto LABEL_46;
      }
    }

LABEL_85:
    v71 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    *&v77[14] = 797;
    v78 = 2048;
    v79 = v11;
    v80 = 2048;
    v81 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_86:
    v71 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v77 = 136315906;
    *&v77[4] = "operator[]";
    *&v77[12] = 1024;
    *&v77[14] = 797;
    v78 = 2048;
    v79 = v11;
    v80 = 2048;
    v81 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_87:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

LABEL_46:
  if (*(a2 + 20))
  {
    v73 = a2 + 376;
    v74 = 0;
    v41 = *(a2 + 49);
    if (v41 >= 0x10)
    {
      v42 = 0;
      v43 = *(a2 + 47);
      v44 = v41 >> 4;
      while (1)
      {
        v45 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v43), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v74 = v45 ^ 0xFFFFLL;
        if (v45 != 0xFFFFLL)
        {
          break;
        }

        v42 -= 16;
        ++v43;
        if (!--v44)
        {
          goto LABEL_57;
        }
      }

      v46 = __clz(__rbit64(v45 ^ 0xFFFFLL));
      v47 = v46 - v42;
      v75 = v46 - v42;
      if (v46 + 1 != v42)
      {
        do
        {
          v48 = *(v73 + 1) + 16 * v47;
          v11 = *(v48 + 8);
          v68 = *v48;
          v9 = *(a2 + 20);
          if (v9 <= v11)
          {
            goto LABEL_86;
          }

          v67 = *(*(a2 + 22) + 8 * v11);
          re::SamplerTable::setSampler(v4 + 99, &v68, &v67);
          if (v67)
          {

            v67 = 0;
          }

          v68 = 0;
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v73);
          v47 = v75;
        }

        while (v75 != -1);
      }
    }
  }

LABEL_57:
  if (*(a2 + 90))
  {
    *&v82 = a2 + 696;
    v49 = *(a2 + 89);
    if (v49 >= 0x10)
    {
      v50 = 0;
      v51 = *(a2 + 87);
      v52 = v49 >> 4;
      while (1)
      {
        v53 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v51), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v82 + 1) = v53 ^ 0xFFFFLL;
        if (v53 != 0xFFFFLL)
        {
          break;
        }

        v50 -= 16;
        ++v51;
        if (!--v52)
        {
          goto LABEL_65;
        }
      }

      v54 = __clz(__rbit64(v53 ^ 0xFFFFLL));
      v55 = v54 - v50;
      *&v83 = v54 - v50;
      if (v54 + 1 != v50)
      {
        do
        {
          v56 = (*(v82 + 8) + 16 * v55);
          *v77 = *v56;
          *&v77[8] = v56[1];
          re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(v4 + 113, v77, &v77[8]);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
          v55 = v83;
        }

        while (v83 != -1);
      }
    }
  }

LABEL_65:
  if (*(a2 + 98))
  {
    *&v82 = a2 + 760;
    v57 = *(a2 + 97);
    if (v57 >= 0x10)
    {
      v58 = 0;
      v59 = *(a2 + 95);
      v60 = v57 >> 4;
      while (1)
      {
        v61 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v59), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v82 + 1) = v61 ^ 0xFFFFLL;
        if (v61 != 0xFFFFLL)
        {
          break;
        }

        v58 -= 16;
        ++v59;
        if (!--v60)
        {
          goto LABEL_73;
        }
      }

      v62 = __clz(__rbit64(v61 ^ 0xFFFFLL));
      v63 = v62 - v58;
      *&v83 = v62 - v58;
      if (v62 + 1 != v58)
      {
        do
        {
          v64 = *(v82 + 8) + 16 * v63;
          *v77 = *v64;
          *&v77[8] = *(v64 + 8);
          re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(v4 + 121, v77, &v77[8]);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
          v63 = v83;
        }

        while (v83 != -1);
      }
    }
  }

LABEL_73:
  if (*(a2 + 229))
  {
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v4 + 1032, a2 + 888);
  }

  if (*(a2 + 936) == 1)
  {
    v65 = *(a2 + 937);
    if ((*(v4 + 1080) & 1) == 0)
    {
      *(v4 + 1080) = 1;
    }

    *(v4 + 1081) = v65;
  }

  if (*(a2 + 948) == 1)
  {
    *(&v82 + 3) = *(a2 + 119);
    *(&v82 + 11) = *(a2 + 240);
    if (*(v4 + 1092))
    {
      v66 = *(a2 + 119);
      *(v4 + 276) = *(a2 + 240);
      *(v4 + 137) = v66;
    }

    else
    {
      *(v4 + 1092) = 1;
      *(v4 + 137) = *(&v82 + 3);
      *(v4 + 276) = *(&v82 + 11);
    }
  }
}

void re::ShaderParameterTableBuilder::build(int **this, re::ShaderParameterTable *a2)
{
  v3 = this;
  v76 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (v4)
  {
    v5 = 0;
    v6 = this[2];
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v8 = *(v3 + 2) + 88 * v5;
    v9 = *(v8 + 16);
    if (v9)
    {
      v11 = *(v8 + 24);
      if (!v11)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_19;
      }

      LOBYTE(v12) = *v11;
    }

    else
    {
      v10 = v9 >> 8;
      v11 = (v8 + 17);
      LOBYTE(v12) = v10;
    }

    if (v12)
    {
      v12 = v12;
      v13 = v11[1];
      if (v13)
      {
        v14 = v11 + 2;
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }

      v16 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
    }

LABEL_19:
    *v64 = v16;
    LODWORD(v71) = *(v8 + 40);
    *(&v71 + 1) = *(v8 + 48);
    LOBYTE(v72) = *(v8 + 56);
    *(&v72 + 1) = *(v8 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2, v64, &v71);
    v17 = *(v3 + 8);
    if (v17 <= v5 + 1)
    {
      v17 = v5 + 1;
    }

    while (v17 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 2) + 88 * v5) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v5) = v17;
LABEL_25:
    ;
  }

  v18 = *(v3 + 20);
  if (v18)
  {
    v19 = 0;
    v20 = *(v3 + 8);
    while (1)
    {
      v21 = *v20;
      v20 += 22;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(v3 + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  while (v19 != v18)
  {
    v22 = *(v3 + 8) + 88 * v19;
    v23 = *(v22 + 16);
    if (v23)
    {
      v25 = *(v22 + 24);
      if (!v25)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      LOBYTE(v26) = *v25;
    }

    else
    {
      v24 = v23 >> 8;
      v25 = (v22 + 17);
      LOBYTE(v26) = v24;
    }

    if (v26)
    {
      v26 = v26;
      v27 = v25[1];
      if (v27)
      {
        v28 = v25 + 2;
        do
        {
          v26 = 31 * v26 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }

      v30 = v26 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = 0;
    }

LABEL_44:
    *v64 = v30;
    LODWORD(v71) = *(v22 + 40);
    *(&v71 + 1) = *(v22 + 48);
    LOBYTE(v72) = *(v22 + 56);
    *(&v72 + 1) = *(v22 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2 + 8, v64, &v71);
    v31 = *(v3 + 20);
    if (v31 <= v19 + 1)
    {
      v31 = v19 + 1;
    }

    while (v31 - 1 != v19)
    {
      LODWORD(v19) = v19 + 1;
      if ((*(*(v3 + 8) + 88 * v19) & 0x80000000) != 0)
      {
        goto LABEL_50;
      }
    }

    LODWORD(v19) = v31;
LABEL_50:
    ;
  }

  v32 = memcpy(*(a2 + 21), *(v3 + 16), *(v3 + 14));
  v33 = *(v3 + 52);
  if (v33)
  {
    v34 = 0;
    v35 = *(v3 + 24);
    while (1)
    {
      v36 = *v35;
      v35 += 14;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(v3 + 52);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  while (v34 != v33)
  {
    v37 = *(v3 + 24) + 56 * v34;
    v38 = *(v37 + 16);
    if (v38)
    {
      v40 = *(v37 + 24);
      if (!v40)
      {
        v45 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_69;
      }

      LOBYTE(v41) = *v40;
    }

    else
    {
      v39 = v38 >> 8;
      v40 = (v37 + 17);
      LOBYTE(v41) = v39;
    }

    if (v41)
    {
      v41 = v41;
      v42 = v40[1];
      if (v42)
      {
        v43 = v40 + 2;
        do
        {
          v41 = 31 * v41 + v42;
          v44 = *v43++;
          v42 = v44;
        }

        while (v44);
      }

      v45 = v41 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v45 = 0;
    }

LABEL_69:
    *&v71 = v45;
    v32 = re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a2 + 22, &v71, (v37 + 40));
    v46 = *(v3 + 52);
    if (v46 <= v34 + 1)
    {
      v46 = v34 + 1;
    }

    while (v46 - 1 != v34)
    {
      LODWORD(v34) = v34 + 1;
      if ((*(*(v3 + 24) + 56 * v34) & 0x80000000) != 0)
      {
        goto LABEL_75;
      }
    }

    LODWORD(v34) = v46;
LABEL_75:
    ;
  }

  v47 = *(v3 + 64);
  if (v47)
  {
    v48 = 0;
    v49 = *(v3 + 30);
    while (1)
    {
      v50 = *v49;
      v49 += 14;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        LODWORD(v48) = *(v3 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v48) = 0;
  }

  while (v48 != v47)
  {
    v51 = *(v3 + 30) + 56 * v48;
    v52 = *(v51 + 16);
    if (v52)
    {
      v54 = *(v51 + 24);
      if (!v54)
      {
        v59 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_94;
      }

      LOBYTE(v55) = *v54;
    }

    else
    {
      v53 = v52 >> 8;
      v54 = (v51 + 17);
      LOBYTE(v55) = v53;
    }

    if (v55)
    {
      v55 = v55;
      v56 = v54[1];
      if (v56)
      {
        v57 = v54 + 2;
        do
        {
          v55 = 31 * v55 + v56;
          v58 = *v57++;
          v56 = v58;
        }

        while (v58);
      }

      v59 = v55 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = 0;
    }

LABEL_94:
    *&v71 = v59;
    v60 = *(v51 + 40);
    v64[0] = v60;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(a2 + 30, &v71, v64);
    if (*(a2 + 130) <= v60)
    {
      *(a2 + 130) = v60 + 1;
    }

    v61 = *(v51 + 40);
    v62 = *(v3 + 19);
    if (v62 <= v61)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      v65 = 1024;
      v66 = 797;
      v67 = 2048;
      v68 = v61;
      v69 = 2048;
      v70 = v62;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::BufferTable::setBuffer((a2 + 240), v61, (*(v3 + 21) + 40 * v61));
    v63 = *(v3 + 64);
    if (v63 <= v48 + 1)
    {
      v63 = v48 + 1;
    }

    while (v63 - 1 != v48)
    {
      LODWORD(v48) = v48 + 1;
      if ((*(*(v3 + 30) + 56 * v48) & 0x80000000) != 0)
      {
        goto LABEL_103;
      }
    }

    LODWORD(v48) = v63;
LABEL_103:
    ;
  }
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 40 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, a2, a3);
}

void re::TextureParameterTableBuilder::build(int **this, re::TextureParameterTable *a2)
{
  v3 = this;
  v102 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (v4)
  {
    v5 = 0;
    v6 = this[2];
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v8 = *(v3 + 2) + 88 * v5;
    v9 = *(v8 + 16);
    if (v9)
    {
      v11 = *(v8 + 24);
      if (!v11)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_19;
      }

      LOBYTE(v12) = *v11;
    }

    else
    {
      v10 = v9 >> 8;
      v11 = (v8 + 17);
      LOBYTE(v12) = v10;
    }

    if (v12)
    {
      v12 = v12;
      v13 = v11[1];
      if (v13)
      {
        v14 = v11 + 2;
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }

      v16 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
    }

LABEL_19:
    *v90 = v16;
    LODWORD(v97) = *(v8 + 40);
    *(&v97 + 1) = *(v8 + 48);
    LOBYTE(v98) = *(v8 + 56);
    *(&v98 + 1) = *(v8 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2, v90, &v97);
    v17 = *(v3 + 8);
    if (v17 <= v5 + 1)
    {
      v17 = v5 + 1;
    }

    while (v17 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 2) + 88 * v5) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v5) = v17;
LABEL_25:
    ;
  }

  v18 = *(v3 + 20);
  if (v18)
  {
    v19 = 0;
    v20 = *(v3 + 8);
    while (1)
    {
      v21 = *v20;
      v20 += 22;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(v3 + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  while (v19 != v18)
  {
    v22 = *(v3 + 8) + 88 * v19;
    v23 = *(v22 + 16);
    if (v23)
    {
      v25 = *(v22 + 24);
      if (!v25)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      LOBYTE(v26) = *v25;
    }

    else
    {
      v24 = v23 >> 8;
      v25 = (v22 + 17);
      LOBYTE(v26) = v24;
    }

    if (v26)
    {
      v26 = v26;
      v27 = v25[1];
      if (v27)
      {
        v28 = v25 + 2;
        do
        {
          v26 = 31 * v26 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }

      v30 = v26 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = 0;
    }

LABEL_44:
    *v90 = v30;
    LODWORD(v97) = *(v22 + 40);
    *(&v97 + 1) = *(v22 + 48);
    LOBYTE(v98) = *(v22 + 56);
    *(&v98 + 1) = *(v22 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2 + 8, v90, &v97);
    v31 = *(v3 + 20);
    if (v31 <= v19 + 1)
    {
      v31 = v19 + 1;
    }

    while (v31 - 1 != v19)
    {
      LODWORD(v19) = v19 + 1;
      if ((*(*(v3 + 8) + 88 * v19) & 0x80000000) != 0)
      {
        goto LABEL_50;
      }
    }

    LODWORD(v19) = v31;
LABEL_50:
    ;
  }

  v32 = *(v3 + 14);
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(a2 + 25, v32);
  ++*(a2 + 56);
  v33 = *(v3 + 52);
  if (v33)
  {
    v34 = 0;
    v35 = *(v3 + 24);
    while (1)
    {
      v36 = *v35;
      v35 += 14;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(v3 + 52);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v34 != v33)
  {
    v37 = a2 + 128;
    while (1)
    {
      v38 = *(v3 + 24) + 56 * v34;
      v39 = (*(v38 + 16) & 1) != 0 ? *(v38 + 24) : (v38 + 17);
      v40 = *(v38 + 40);
      v41 = *(v3 + 14);
      if (v41 <= v40)
      {
        break;
      }

      re::TextureHandle::TextureHandle(v88, (*(v3 + 16) + 16 * v40));
      if (v39)
      {
        v42 = *v39;
        if (*v39)
        {
          v43 = v39[1];
          if (v43)
          {
            v44 = (v39 + 2);
            do
            {
              v42 = 31 * v42 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v42 &= ~0x8000000000000000;
        }
      }

      else
      {
        v42 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *v90 = v42;
      re::TextureHandle::TextureHandle(&v97, v88);
      re::TextureHandleTable::setTexture(v37, v90, &v97);
      re::TextureHandle::invalidate(&v97);
      re::TextureHandle::invalidate(v88);
      v46 = *(v3 + 52);
      if (v46 <= v34 + 1)
      {
        v46 = v34 + 1;
      }

      while (v46 - 1 != v34)
      {
        LODWORD(v34) = v34 + 1;
        if ((*(*(v3 + 24) + 56 * v34) & 0x80000000) != 0)
        {
          goto LABEL_76;
        }
      }

      LODWORD(v34) = v46;
LABEL_76:
      if (v34 == v33)
      {
        goto LABEL_77;
      }
    }

    v89 = 0;
    v101 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 797;
    v93 = 2048;
    v94 = v40;
    v95 = 2048;
    v96 = v41;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_158:
    v89 = 0;
    v101 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    v92 = 797;
    v93 = 2048;
    v94 = v37;
    v95 = 2048;
    v96 = v40;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_77:
  re::SamplerTable::init((a2 + 240), *(v3 + 19));
  v47 = *(v3 + 64);
  if (v47)
  {
    v48 = 0;
    v49 = *(v3 + 30);
    while (1)
    {
      v50 = *v49;
      v49 += 14;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        LODWORD(v48) = *(v3 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v48) = 0;
  }

  while (v48 != v47)
  {
    v51 = *(v3 + 30) + 56 * v48;
    v52 = (*(v51 + 16) & 1) != 0 ? *(v51 + 24) : (v51 + 17);
    v37 = *(v51 + 40);
    v40 = *(v3 + 19);
    if (v40 <= v37)
    {
      goto LABEL_158;
    }

    v53 = *(*(v3 + 21) + 8 * v37);
    v54 = v53;
    if (v52)
    {
      v55 = *v52;
      if (*v52)
      {
        v56 = v52[1];
        if (v56)
        {
          v57 = (v52 + 2);
          do
          {
            v55 = 31 * v55 + v56;
            v58 = *v57++;
            v56 = v58;
          }

          while (v58);
        }

        v55 &= ~0x8000000000000000;
      }
    }

    else
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v97 = v55;
    *v90 = v53;
    re::SamplerTable::setSampler(a2 + 30, &v97, v90);
    if (*v90)
    {
    }

    if (v54)
    {
    }

    v59 = *(v3 + 64);
    if (v59 <= v48 + 1)
    {
      v59 = v48 + 1;
    }

    while (v59 - 1 != v48)
    {
      LODWORD(v48) = v48 + 1;
      if ((*(*(v3 + 30) + 56 * v48) & 0x80000000) != 0)
      {
        goto LABEL_105;
      }
    }

    LODWORD(v48) = v59;
LABEL_105:
    ;
  }

  v60 = *(v3 + 76);
  if (v60)
  {
    v61 = 0;
    v62 = *(v3 + 36);
    while (1)
    {
      v63 = *v62;
      v62 += 14;
      if (v63 < 0)
      {
        break;
      }

      if (v60 == ++v61)
      {
        LODWORD(v61) = *(v3 + 76);
        break;
      }
    }
  }

  else
  {
    LODWORD(v61) = 0;
  }

  while (v61 != v60)
  {
    v64 = (*(v3 + 36) + 56 * v61);
    v65 = v64[2];
    if (v65)
    {
      v67 = v64[3];
      if (!v67)
      {
        v72 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_124;
      }

      LOBYTE(v68) = *v67;
    }

    else
    {
      v66 = v65 >> 8;
      v67 = v64 + 17;
      LOBYTE(v68) = v66;
    }

    if (v68)
    {
      v68 = v68;
      v69 = v67[1];
      if (v69)
      {
        v70 = v67 + 2;
        do
        {
          v68 = 31 * v68 + v69;
          v71 = *v70++;
          v69 = v71;
        }

        while (v71);
      }

      v72 = v68 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = 0;
    }

LABEL_124:
    *&v97 = v72;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(a2 + 44, &v97, v64 + 5);
    v73 = *(v3 + 76);
    if (v73 <= v61 + 1)
    {
      v73 = v61 + 1;
    }

    while (v73 - 1 != v61)
    {
      LODWORD(v61) = v61 + 1;
      if ((*(*(v3 + 36) + 56 * v61) & 0x80000000) != 0)
      {
        goto LABEL_130;
      }
    }

    LODWORD(v61) = v73;
LABEL_130:
    ;
  }

  v74 = *(v3 + 88);
  if (v74)
  {
    v75 = 0;
    v76 = *(v3 + 42);
    while (1)
    {
      v77 = *v76;
      v76 += 14;
      if (v77 < 0)
      {
        break;
      }

      if (v74 == ++v75)
      {
        LODWORD(v75) = *(v3 + 88);
        break;
      }
    }
  }

  else
  {
    LODWORD(v75) = 0;
  }

  while (v75 != v74)
  {
    v78 = *(v3 + 42) + 56 * v75;
    v79 = *(v78 + 16);
    if (v79)
    {
      v81 = *(v78 + 24);
      if (!v81)
      {
        v86 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_149;
      }

      LOBYTE(v82) = *v81;
    }

    else
    {
      v80 = v79 >> 8;
      v81 = (v78 + 17);
      LOBYTE(v82) = v80;
    }

    if (v82)
    {
      v82 = v82;
      v83 = v81[1];
      if (v83)
      {
        v84 = v81 + 2;
        do
        {
          v82 = 31 * v82 + v83;
          v85 = *v84++;
          v83 = v85;
        }

        while (v85);
      }

      v86 = v82 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v86 = 0;
    }

LABEL_149:
    *&v97 = v86;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a2 + 52, &v97, (v78 + 40));
    v87 = *(v3 + 88);
    if (v87 <= v75 + 1)
    {
      v87 = v75 + 1;
    }

    while (v87 - 1 != v75)
    {
      LODWORD(v75) = v75 + 1;
      if ((*(*(v3 + 42) + 56 * v75) & 0x80000000) != 0)
      {
        goto LABEL_155;
      }
    }

    LODWORD(v75) = v87;
LABEL_155:
    ;
  }
}

uint64_t re::makeStage@<X0>(re *a1@<X0>, id *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _anonymous_namespace_ *a10, uint64_t a11, uint64_t a12)
{
  v17 = a1;
  v260 = *MEMORY[0x1E69E9840];
  v19 = re::globalAllocators(a1);
  v20 = (*(*v19[2] + 32))(v19[2], 336, 8);
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 208) = 0u;
  *(v20 + 224) = 0u;
  *(v20 + 240) = 0u;
  *(v20 + 256) = 0u;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0u;
  *(v20 + 320) = 0u;
  *(v20 + 192) = 0u;
  *(v20 + 180) = 0x7FFFFFFF;
  *(v20 + 192) = 0u;
  *(v20 + 208) = 0u;
  *(v20 + 224) = 0u;
  *(v20 + 240) = 0u;
  *(v20 + 256) = 0u;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0u;
  *(v20 + 317) = 0u;
  *v20 = v17;
  v21 = strlen(a3);
  v22 = re::globalAllocators(v21);
  v23 = (*(*v22[2] + 32))(v22[2], v21 + 1, 0);
  memcpy(v23, a3, v21 + 1);
  *(v20 + 8) = v23;
  v247 = 0;
  v245 = 0;
  v243 = 0;
  v244[0] = 0;
  v244[1] = 0;
  v246 = 0;
  v240[1] = 0;
  v241 = 0;
  v239 = 0;
  v240[0] = 0;
  v242 = 0;
  v236[1] = 0;
  v237 = 0;
  v235 = 0;
  v236[0] = 0;
  v238 = 0;
  v232[1] = 0;
  v233 = 0;
  v231 = 0;
  v232[0] = 0;
  v234 = 0;
  v228[1] = 0;
  v229 = 0;
  v227 = 0;
  v228[0] = 0;
  v230 = 0;
  v224[1] = 0;
  v225 = 0;
  v223 = 0;
  v224[0] = 0;
  v226 = 0;
  v220 = 0;
  v221 = 0;
  v218 = 0;
  v219 = 0;
  v222 = 0;
  v215[1] = 0;
  v216 = 0;
  v215[0] = 0;
  if (*(a10 + 1))
  {
    v24 = v224;
  }

  else
  {
    v24 = 0;
  }

  v217 = 0;
  v191 = 0;
  re::collectArguments(v244, v240, v236, v232, v228, v24, a5, a6, v213, a8);
  if (v213[0] == 1)
  {
    v26 = re::globalAllocators(v25)[2];
    re::TechniqueStage::~TechniqueStage(v20);
    (*(*v26 + 40))(v26, v20);
    v27 = v214;
    *a9 = 0;
    *(a9 + 8) = v27;
    goto LABEL_171;
  }

  v202 = a9;
  if (a6)
  {
    v28 = *(a8 + 16);
    if (!v28)
    {
      goto LABEL_20;
    }

    v29 = 0;
    v30 = *(a8 + 32);
    v31 = 8 * v28;
    do
    {
      v29 += re::validateArgumentMatchesStandardResource(v30++);
      v31 -= 8;
    }

    while (v31);
    v32 = v29 == 4;
    a9 = v202;
    if (!v32)
    {
LABEL_20:
      re::DynamicString::format("Shader is flagged to use StandardEngineResources but does not declare all required arguments.", &v255);
      if (BYTE8(v255))
      {
        v36 = v256;
      }

      else
      {
        v36 = &v255 + 9;
      }

      re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0x64, v36, v249);
      v37 = *v249;
      *v249 = 0;
      *a9 = 0;
      *(a9 + 8) = v37;

      v38 = v255;
      if (v255 && (BYTE8(v255) & 1) != 0)
      {
        v39 = v256;
LABEL_170:
        (*(*v38 + 40))(v38, v39);
        goto LABEL_171;
      }

      goto LABEL_171;
    }
  }

  re::validateArgumentsCount(v244, v240, v232, v228, a7, v208);
  if (v208[0] == 1)
  {
    re::internal::destroyPersistent<re::TechniqueStage>("makeStage", 551, v20);
    if (v210)
    {
      v33 = v212;
    }

    else
    {
      v33 = v211;
    }

    re::DynamicString::format("Program %s failed due to invalid argument numbers. %s", &v255, a3, v33);
    if (BYTE8(v255))
    {
      v34 = v256;
    }

    else
    {
      v34 = &v255 + 9;
    }

    re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0x32, v34, v249);
    v35 = *v249;
    *v249 = 0;
    *a9 = 0;
    *(a9 + 8) = v35;
    goto LABEL_45;
  }

  v195 = a6;
  v197 = a8;
  if (!*(v20 + 64))
  {
    goto LABEL_34;
  }

  *&v255 = [*a2 device];
  v41 = re::mtl::Device::supportsArgumentBuffers(&v255, v40);

  if (v41)
  {
    if (*(v20 + 64))
    {
      v43 = 0;
      v44 = 2;
      while (1)
      {
        v45 = v237;
        if (v237 <= v43)
        {
          break;
        }

        v46 = [*a2 newArgumentEncoderWithBufferIndex_];
        v47 = v221;
        if (v221 >= v220)
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(&v219, v221 + 1);
          v47 = v221;
        }

        v223[v47] = v46;
        v221 = v47 + 1;
        ++v222;
        ++v43;
        v44 += 14;
        if (*(v20 + 64) <= v43)
        {
          goto LABEL_34;
        }
      }

      *&v205[0] = 0;
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v255 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v249 = 136315906;
      *&v249[4] = "operator[]";
      *&v249[12] = 1024;
      *&v249[14] = 789;
      *&v249[18] = 2048;
      *&v249[20] = v43;
      *&v249[28] = 2048;
      *&v249[30] = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      v248 = 0;
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v255 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "operator[]";
      *&v250[12] = 1024;
      *&v250[14] = 789;
      v251 = 2048;
      v252 = v43;
      v253 = 2048;
      v254 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v248 = 0;
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v255 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "operator[]";
      *&v250[12] = 1024;
      *&v250[14] = 468;
      v251 = 2048;
      v252 = v43;
      v253 = 2048;
      v254 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      v248 = 0;
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v255 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "operator[]";
      *&v250[12] = 1024;
      *&v250[14] = 468;
      v251 = 2048;
      v252 = v43;
      v253 = 2048;
      v254 = v43;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_34:
    memset(v249, 0, 36);
    *&v249[36] = 0x7FFFFFFFLL;
    re::collectLinkedArgumentReflection(a10, v224, a4, v249);
    v48 = *(a10 + 1);
    if (v48)
    {
      LOBYTE(v49) = 0;
      v50 = 200 * v48;
      v51 = (*(a10 + 2) + 48);
      do
      {
        v49 = (v49 & 1) != 0 || *v51 != 0;
        v51 += 25;
        v50 -= 200;
      }

      while (v50);
    }

    else
    {
      v49 = 0;
    }

    if (!*&v249[28])
    {
      goto LABEL_60;
    }

    *&v205[0] = [*a2 &selRef_frameLength];
    re::forwardLinkedArguments(v205, v249, v224, v240, v236, &v219, v215, v49, &v255);
    if (v213[0])
    {
      if (v255)
      {
        v54 = *(&v255 + 1);
        *(&v255 + 1) = 0;
        v55 = v214;
        v214 = v54;
      }

      else
      {

        v213[0] = 0;
      }
    }

    else if (v255)
    {
      v213[0] = 1;
      v56 = *(&v255 + 1);
      *(&v255 + 1) = 0;
      v214 = v56;
    }

    if (v255 == 1)
    {
    }

    if (v213[0] == 1)
    {
      re::internal::destroyPersistent<re::TechniqueStage>("makeStage", 591, v20);
      v57 = v214;
      *v202 = 0;
      *(v202 + 8) = v57;
    }

    else
    {
LABEL_60:
      v206 = 0;
      memset(v205, 0, sizeof(v205));
      v207 = 0x7FFFFFFFLL;
      *&v255 = [*a2 &selRef_frameLength];
      v58 = re::mtl::Device::needsArgumentBufferTextureEmulation(&v255);

      if (v58 && v216)
      {
        v60 = 0;
        v61 = 80 * v216;
        v62 = v218 + 4;
        while (1)
        {
          if (*&v62->var0 != 2)
          {
            v145 = "Attempting to load a shader graph with non-2D textures, which is not supported on devices with tier 1 argument buffer support.";
            goto LABEL_136;
          }

          if (v60 == 16)
          {
            break;
          }

          re::DynamicString::format("textureCustomArray[%d]", &v255, v60, v191);
          re::StringID::StringID(v250, &v255);
          if (v255 && (BYTE8(v255) & 1) != 0)
          {
            (*(*v255 + 40))();
          }

          v59 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v205, v250, v62 - 3);
          if (v250[0])
          {
            if (v250[0])
            {
            }
          }

          v62 += 5;
          v60 = (v60 + 1);
          v61 -= 80;
          if (!v61)
          {
            goto LABEL_72;
          }
        }

        v145 = "Attempting to load a shader graph with more than 16 textures, which is not supported on devices with tier 1 argument buffer support.";
LABEL_136:
        if (BYTE8(v255))
        {
          v146 = v256;
        }

        else
        {
          v146 = &v255 + 9;
        }

        re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0x5A, v146, v250);
        v147 = *v250;
        *v250 = 0;
        *v202 = 0;
        *(v202 + 8) = v147;

        if (v255 && (BYTE8(v255) & 1) != 0)
        {
          (*(*v255 + 40))();
        }
      }

      else
      {
LABEL_72:
        *(v20 + 16) = a4;
        v63 = v245;
        v65 = v241;
        v67 = v237;
        v69 = v237;
        v70 = v233;
        v73 = v229;
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v20 + 144), v205);
        if (v245)
        {
          v75 = v247;
          v76 = (v247 + 24 * v245);
          v77 = *(v20 + 248);
          do
          {
            v78 = *v75;
            *v77 = *v77 & 0xFFFFFFFFFFFFFFFELL | *v75 & 1;
            *v77 = *v75 & 0xFFFFFFFFFFFFFFFELL | v78 & 1;
            v77[1] = *(v75 + 1);
            *v75 = 0;
            *(v75 + 1) = &str_67;
            v77[2] = *(v75 + 2);
            re::StringID::destroyString(v75);
            v75 = (v75 + 24);
            v77 += 3;
          }

          while (v75 != v76);
        }

        if (v241)
        {
          v79 = v243;
          v80 = &v243[14 * v241];
          v81 = *(v20 + 40);
          do
          {
            v82 = *v79;
            *v81 = *v81 & 0xFFFFFFFFFFFFFFFELL | *v79 & 1;
            *v81 = *v79 & 0xFFFFFFFFFFFFFFFELL | v82 & 1;
            *(v81 + 8) = v79[1];
            *v79 = 0;
            v79[1] = &str_67;
            *(v81 + 16) = *(v79 + 8);
            LODWORD(v82) = *(v79 + 8);
            *(v81 + 24) = v79[3];
            *(v81 + 32) = v82;
            LOBYTE(v82) = v79[5];
            *(v81 + 40) = *(v81 + 40) & 0xFFFFFFFFFFFFFFFELL | v79[5] & 1;
            *(v81 + 40) = v79[5] & 0xFFFFFFFFFFFFFFFELL | v82 & 1;
            *(v81 + 48) = v79[6];
            v79[6] = &str_67;
            v79[5] = 0;
            LODWORD(v82) = *(v79 + 14);
            *(v81 + 60) = *(v79 + 30);
            *(v81 + 56) = v82;
            *(v81 + 72) = 0;
            *(v81 + 80) = 0;
            *(v81 + 64) = 0;
            *(v81 + 64) = v79[8];
            v79[8] = 0;
            *(v81 + 72) = v79[9];
            v79[9] = 0;
            v83 = *(v81 + 80);
            *(v81 + 80) = v79[10];
            v79[10] = v83;
            v84 = v79[11];
            *(v81 + 94) = *(v79 + 94);
            *(v81 + 88) = v84;
            *(v81 + 104) = *(v79 + 104);
            re::FixedArray<re::MetalTypeInfo>::deinit(v79 + 8);
            re::StringID::destroyString((v79 + 5));
            re::StringID::destroyString(v79);
            v81 += 112;
            v79 += 14;
          }

          while (v79 != v80);
        }

        if (v237)
        {
          v85 = v239;
          v86 = &v239[14 * v237];
          v87 = *(v20 + 72);
          do
          {
            v88 = *v85;
            *v87 = *v87 & 0xFFFFFFFFFFFFFFFELL | *v85 & 1;
            *v87 = *v85 & 0xFFFFFFFFFFFFFFFELL | v88 & 1;
            *(v87 + 8) = v85[1];
            *v85 = 0;
            v85[1] = &str_67;
            *(v87 + 16) = *(v85 + 8);
            LODWORD(v88) = *(v85 + 8);
            *(v87 + 24) = v85[3];
            *(v87 + 32) = v88;
            LOBYTE(v88) = v85[5];
            *(v87 + 40) = *(v87 + 40) & 0xFFFFFFFFFFFFFFFELL | v85[5] & 1;
            *(v87 + 40) = v85[5] & 0xFFFFFFFFFFFFFFFELL | v88 & 1;
            *(v87 + 48) = v85[6];
            v85[6] = &str_67;
            v85[5] = 0;
            LODWORD(v88) = *(v85 + 14);
            *(v87 + 60) = *(v85 + 30);
            *(v87 + 56) = v88;
            *(v87 + 72) = 0;
            *(v87 + 80) = 0;
            *(v87 + 64) = 0;
            *(v87 + 64) = v85[8];
            v85[8] = 0;
            *(v87 + 72) = v85[9];
            v85[9] = 0;
            v89 = *(v87 + 80);
            *(v87 + 80) = v85[10];
            v85[10] = v89;
            v90 = v85[11];
            *(v87 + 94) = *(v85 + 94);
            *(v87 + 88) = v90;
            *(v87 + 104) = *(v85 + 104);
            re::FixedArray<re::MetalTypeInfo>::deinit(v85 + 8);
            re::StringID::destroyString((v85 + 5));
            re::StringID::destroyString(v85);
            v87 += 112;
            v85 += 14;
          }

          while (v85 != v86);
        }

        if (v233)
        {
          v91 = v235;
          v92 = (v235 + 32 * v233);
          v93 = *(v20 + 128);
          do
          {
            v94 = *v91;
            *v93 = *v93 & 0xFFFFFFFFFFFFFFFELL | *v91 & 1;
            *v93 = *v91 & 0xFFFFFFFFFFFFFFFELL | v94 & 1;
            *(v93 + 8) = *(v91 + 1);
            *v91 = 0;
            *(v91 + 1) = &str_67;
            *(v93 + 16) = *(v91 + 1);
            re::StringID::destroyString(v91);
            v91 = (v91 + 32);
            v93 += 32;
          }

          while (v91 != v92);
        }

        if (v229)
        {
          v95 = v231;
          v96 = (v231 + 24 * v229);
          v97 = *(v20 + 216);
          do
          {
            v98 = *v95;
            *v97 = *v97 & 0xFFFFFFFFFFFFFFFELL | *v95 & 1;
            *v97 = *v95 & 0xFFFFFFFFFFFFFFFELL | v98 & 1;
            *(v97 + 8) = *(v95 + 1);
            *v95 = 0;
            *(v95 + 1) = &str_67;
            LOWORD(v98) = *(v95 + 8);
            *(v97 + 18) = *(v95 + 18);
            *(v97 + 16) = v98;
            re::StringID::destroyString(v95);
            v95 = (v95 + 24);
            v97 += 24;
          }

          while (v95 != v96);
        }

        if (v221)
        {
          v99 = v223;
          v100 = *(v20 + 96);
          v101 = 8 * v221;
          do
          {
            *v100++ = *v99;
            *v99++ = 0;
            v101 -= 8;
          }

          while (v101);
        }

        v203 = 0u;
        v204 = 0u;
        if (v195)
        {
          *&v203 = 30;
        }

        v102 = *(v20 + 240);
        if (v102)
        {
          v103 = 0;
          v104 = (*(v20 + 248) + 16);
          v105 = 24 * v102;
          do
          {
            v106 = *v104;
            v107 = 1 << v106;
            v108 = re::Bitset<256>::toWordIndex(v106, v74);
            *(&v203 + v108) |= v107;
            v109 = *(v104 - 2);
            v110 = *v104;
            v104 += 12;
            v111 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v109 >> 31) ^ (v109 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v109 >> 31) ^ (v109 >> 1))) >> 27));
            v112 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v110) ^ ((0xBF58476D1CE4E5B9 * v110) >> 27));
            v103 ^= (v103 << 6) - 0x61C8864680B583E9 + (v103 >> 2) + (((v112 ^ (v112 >> 31)) - 0x61C8864680B583E9 + ((v111 ^ (v111 >> 31)) << 6) + ((v111 ^ (v111 >> 31)) >> 2)) ^ v111 ^ (v111 >> 31));
            v105 -= 24;
          }

          while (v105);
        }

        else
        {
          v103 = 0;
        }

        v113 = *(v20 + 120);
        if (v113)
        {
          v114 = 0;
          v115 = 0;
          v116 = (*(v20 + 128) + 16);
          v117 = 32 * v113;
          do
          {
            v118 = *v116;
            if (v115 <= v118)
            {
              v115 = *v116;
            }

            v119 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v116 - 2) >> 31) ^ (*(v116 - 2) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v116 - 2) >> 31) ^ (*(v116 - 2) >> 1))) >> 27));
            v120 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v118) ^ ((0xBF58476D1CE4E5B9 * v118) >> 27));
            v114 ^= (v114 << 6) - 0x61C8864680B583E9 + (v114 >> 2) + (((v120 ^ (v120 >> 31)) - 0x61C8864680B583E9 + ((v119 ^ (v119 >> 31)) << 6) + ((v119 ^ (v119 >> 31)) >> 2)) ^ v119 ^ (v119 >> 31));
            v116 += 16;
            v117 -= 32;
          }

          while (v117);
        }

        else
        {
          v115 = 0;
          v114 = 0;
        }

        v121 = *(v20 + 176);
        if (v121)
        {
          v122 = 0;
          v123 = *(v20 + 160);
          while (1)
          {
            v124 = *v123;
            v123 += 10;
            if (v124 < 0)
            {
              break;
            }

            if (v121 == ++v122)
            {
              LODWORD(v122) = *(v20 + 176);
              break;
            }
          }
        }

        else
        {
          LODWORD(v122) = 0;
        }

        v194 = v115;
        v196 = v114;
        if (v122 == v121)
        {
          v125 = 0;
        }

        else
        {
          v125 = 0;
          v126 = *(v20 + 160);
          do
          {
            v127 = v126 + 40 * v122;
            v125 ^= (v125 << 6) - 0x61C8864680B583E9 + (v125 >> 2) + (((*(v127 + 8) >> 3) - 0x61C8864680B583E9 + (*(v127 + 24) >> 1) + (*(v127 + 8) >> 1 << 6)) ^ (*(v127 + 8) >> 1));
            if (v121 <= v122 + 1)
            {
              v128 = v122 + 1;
            }

            else
            {
              v128 = *(v20 + 176);
            }

            while (v128 - 1 != v122)
            {
              LODWORD(v122) = v122 + 1;
              if ((*(v126 + 40 * v122) & 0x80000000) != 0)
              {
                goto LABEL_120;
              }
            }

            LODWORD(v122) = v128;
LABEL_120:
            ;
          }

          while (v122 != v121);
        }

        v193 = v125;
        v129 = *(v20 + 208);
        if (v129)
        {
          v130 = 0;
          v131 = (*(v20 + 216) + 16);
          v132 = 24 * v129;
          do
          {
            v133 = *v131;
            v134 = 1 << v133;
            v135 = re::Bitset<256>::toWordIndex(v133, v74);
            *(&v203 + v135) |= v134;
            v136 = *(v131 - 2);
            v137 = *v131;
            v131 += 12;
            v138 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v136 >> 31) ^ (v136 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v136 >> 31) ^ (v136 >> 1))) >> 27));
            v139 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v137) ^ ((0xBF58476D1CE4E5B9 * v137) >> 27));
            v130 ^= (v130 << 6) - 0x61C8864680B583E9 + (v130 >> 2) + (((v139 ^ (v139 >> 31)) - 0x61C8864680B583E9 + ((v138 ^ (v138 >> 31)) << 6) + ((v138 ^ (v138 >> 31)) >> 2)) ^ v138 ^ (v138 >> 31));
            v132 -= 24;
          }

          while (v132);
        }

        else
        {
          v130 = 0;
        }

        v200 = v103;
        v140 = *(v197 + 16);
        if (v140)
        {
          v141 = *(v197 + 32);
          v142 = 8 * v140;
          v143 = v202;
          while (1)
          {
            v144 = *v141;
            if ([*v141 type] == 3 && objc_msgSend(v144, sel_arrayLength) >= 2 && !strcmp("dynamicSamplers", objc_msgSend(objc_msgSend(v144, sel_name), sel_UTF8String)))
            {
              break;
            }

            ++v141;
            v142 -= 8;
            if (!v142)
            {
              v198 = 0;
              v192 = 0;
              goto LABEL_143;
            }
          }

          v198 = [v144 arrayLength];
          v192 = [v144 index];
        }

        else
        {
          v198 = 0;
          v192 = 0;
          v143 = v202;
        }

LABEL_143:
        v148 = *(v20 + 32);
        if (v148)
        {
          v149 = 0;
          v150 = *(v20 + 40);
          v151 = 112 * v148;
          do
          {
            v152 = v150[8];
            v153 = 1 << v152;
            v154 = re::Bitset<256>::toWordIndex(v152, v74);
            *(&v203 + v154) |= v153;
            v149 ^= (v149 << 6) - 0x61C8864680B583E9 + (v149 >> 2) + re::TypedArgument::resolutionHash(v150);
            v150 += 56;
            v151 -= 112;
          }

          while (v151);
        }

        else
        {
          v149 = 0;
        }

        v155 = *(v20 + 64);
        if (v155)
        {
          v156 = 0;
          v157 = *(v20 + 72);
          v158 = 112 * v155;
          do
          {
            v159 = v157[8];
            v160 = 1 << v159;
            v161 = re::Bitset<256>::toWordIndex(v159, v74);
            *(&v203 + v161) |= v160;
            v156 ^= (v156 << 6) - 0x61C8864680B583E9 + (v156 >> 2) + re::TypedArgument::resolutionHash(v157);
            v157 += 56;
            v158 -= 112;
          }

          while (v158);
        }

        else
        {
          v156 = 0;
        }

        v162 = MurmurHash3_x64_128(&v203, 0x20uLL, 0, &v255);
        v163 = (*(&v255 + 1) - 0x61C8864680B583E9 + (v255 << 6) + (v255 >> 2)) ^ v255;
        v164 = *(a12 + 16);
        if (v164)
        {
          v165 = v164;
          if (v165)
          {
            v43 = 0;
            v166 = 16;
            do
            {
              v45 = *(a12 + 16);
              if (v45 <= v43)
              {
                goto LABEL_214;
              }

              v45 = *(v20 + 272);
              if (v45 <= v43)
              {
                goto LABEL_215;
              }

              v167 = (*(a12 + 32) + v166);
              v168 = (*(v20 + 280) + v166);
              re::StringID::operator=((v168 - 4), v167 - 2);
              *v168 = *v167;
              v143 = v202;
              ++v43;
              v166 += 24;
            }

            while (v165 != v43);
            v43 = *(v20 + 272);
            if (v43 <= v165 - 1)
            {
              goto LABEL_216;
            }

            v169 = (*(v20 + 280) + 18);
            do
            {
              v170 = 0xBF58476D1CE4E5B9 * ((*(v169 - 9) >> 31) ^ (*(v169 - 9) >> 1));
              v171 = (0x94D049BB133111EBLL * (v170 ^ (v170 >> 27))) ^ ((0x94D049BB133111EBLL * (v170 ^ (v170 >> 27))) >> 31);
              v172 = *(v169 - 1);
              v173 = *v169;
              v169 += 12;
              v174 = 0xBF58476D1CE4E5B9 * ((v173 | (v172 << 32)) ^ (4 * v172));
              v163 ^= (v163 << 6) - 0x61C8864680B583E9 + (v163 >> 2) + (((v171 << 6) - 0x61C8864680B583E9 + (v171 >> 2) + ((0x94D049BB133111EBLL * (v174 ^ (v174 >> 27))) ^ ((0x94D049BB133111EBLL * (v174 ^ (v174 >> 27))) >> 31))) ^ v171);
              --v165;
            }

            while (v165);
          }

          re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a12);
        }

        v175 = v204;
        *(v20 + 296) = v203;
        *(v20 + 312) = v175;
        *(v20 + 328) = v194;
        *(v20 + 330) = v192;
        *(v20 + 332) = v198;
        *(v20 + 256) = v200;
        *(v20 + 136) = v196;
        *(v20 + 192) = v193;
        *(v20 + 224) = v130;
        *(v20 + 48) = v149;
        *(v20 + 104) = v156;
        *(v20 + 288) = v163;
        *v143 = 1;
        *(v143 + 8) = v20;
      }

      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v205);
    }

    re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v249);
    goto LABEL_166;
  }

  if (BYTE8(v255))
  {
    v52 = v256;
  }

  else
  {
    v52 = &v255 + 9;
  }

  re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0xA, v52, v249);
  v53 = *v249;
  *v249 = 0;
  *v202 = 0;
  *(v202 + 8) = v53;
LABEL_45:

  if (v255 && (BYTE8(v255) & 1) != 0)
  {
    (*(*v255 + 40))();
  }

LABEL_166:
  if (v208[0] == 1)
  {
    v38 = v209;
    if (v209)
    {
      if (v210)
      {
        v39 = v212;
        goto LABEL_170;
      }
    }
  }

LABEL_171:
  if (v213[0] == 1)
  {
  }

  re::DynamicArray<re::MetalTypeInfo>::deinit(v215);
  v176 = v219;
  if (v219)
  {
    v177 = v223;
    if (v223)
    {
      if (v221)
      {
        v178 = 8 * v221;
        do
        {
          if (*v177)
          {

            *v177 = 0;
          }

          ++v177;
          v178 -= 8;
        }

        while (v178);
        v176 = v219;
        v177 = v223;
      }

      (*(*v176 + 40))(v176, v177);
    }
  }

  v179 = v224[0];
  if (v224[0])
  {
    v180 = v227;
    if (v227)
    {
      if (v225)
      {
        v181 = 32 * v225;
        do
        {
          re::StringID::destroyString(v180);
          v180 = (v180 + 32);
          v181 -= 32;
        }

        while (v181);
        v179 = v224[0];
        v180 = v227;
      }

      (*(*v179 + 40))(v179, v180);
    }
  }

  v182 = v228[0];
  if (v228[0])
  {
    v183 = v231;
    if (v231)
    {
      if (v229)
      {
        v184 = 24 * v229;
        do
        {
          re::StringID::destroyString(v183);
          v183 = (v183 + 24);
          v184 -= 24;
        }

        while (v184);
        v182 = v228[0];
        v183 = v231;
      }

      (*(*v182 + 40))(v182, v183);
    }

    v231 = 0;
  }

  v185 = v232[0];
  if (v232[0])
  {
    v186 = v235;
    if (v235)
    {
      if (v233)
      {
        v187 = 32 * v233;
        do
        {
          re::StringID::destroyString(v186);
          v186 = (v186 + 32);
          v187 -= 32;
        }

        while (v187);
        v185 = v232[0];
        v186 = v235;
      }

      (*(*v185 + 40))(v185, v186);
    }

    v235 = 0;
  }

  re::DynamicArray<re::TypedArgument>::deinit(v236);
  re::DynamicArray<re::TypedArgument>::deinit(v240);
  result = v244[0];
  if (v244[0])
  {
    v189 = v247;
    if (v247)
    {
      if (v245)
      {
        v190 = 24 * v245;
        do
        {
          re::StringID::destroyString(v189);
          v189 = (v189 + 24);
          v190 -= 24;
        }

        while (v190);
        result = v244[0];
        v189 = v247;
      }

      return (*(*result + 40))(result, v189);
    }
  }

  return result;
}

re *re::internal::destroyPersistent<re::TechniqueStage>(re *result, uint64_t a2, re::TechniqueStage *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::TechniqueStage::~TechniqueStage(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

unint64_t re::TypedArgument::resolutionHash(re::TypedArgument *this)
{
  v1 = 0xBF58476D1CE4E5B9 * ((*this >> 31) ^ (*this >> 1));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 8)) ^ ((0xBF58476D1CE4E5B9 * *(this + 8)) >> 27));
  return ((v2 << 6) + (v2 >> 2) + ((re::MetalTypeInfo::resolutionHash((this + 24)) + ((v3 ^ (v3 >> 31)) << 6) + ((v3 ^ (v3 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v3 ^ (v3 >> 31)) - 0x61C8864680B583E9) ^ v2;
}

void re::makeAttributeArguments(id *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = [objc_msgSend(*a1 vertexAttributes)];
  if (v4)
  {
    v5 = v4;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a2, v4);
    for (i = 0; i != v5; ++i)
    {
      v7 = [objc_msgSend(*a1 vertexAttributes)];
      if ([v7 isActive])
      {
        v8 = [objc_msgSend(v7 name)];
        *&v12.var0 = 0;
        v12.var1 = &str_67;
        LOWORD(v8) = [v7 attributeIndex];
        v9 = [v7 attributeType];
        v10 = re::StringID::StringID(v13, &v12);
        v14 = v8;
        v15 = v9;
        if (*&v12.var0)
        {
          if (*&v12.var0)
          {
          }
        }

        v11 = re::DynamicArray<re::AttributeArgument>::add(a2, v13);
        if (v13[0])
        {
          if (v13[0])
          {
          }
        }
      }
    }
  }
}

void *re::DynamicArray<re::AttributeArgument>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::AttributeArgument>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = *(a2 + 4);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::TechniqueDefinitionBuilder::hashFunctionConstants(uint64_t a1, uint64_t a2, int a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 36);
  v6 = 104 * a2;
  do
  {
    if (*(v5 - 28))
    {
      v7 = *(v5 - 20);
    }

    else
    {
      v7 = v5 - 27;
    }

    v8 = strlen(v7);
    v9 = 0x9E3779B97F4A7C17;
    if (v8)
    {
      MurmurHash3_x64_128(v7, v8, 0, v16);
      v9 = ((v16[1] - 0x61C8864680B583E9 + (v16[0] << 6) + (v16[0] >> 2)) ^ v16[0]) - 0x61C8864680B583E9;
    }

    v10 = 0xBF58476D1CE4E5B9 * (*v5 ^ (*v5 >> 30));
    v11 = ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31))) ^ v9;
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 2)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 2)) >> 27));
    v13 = ((v12 ^ (v12 >> 31)) - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
    if (a3)
    {
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 1)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 1)) >> 27));
      v13 ^= (v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + (v14 ^ (v14 >> 31));
    }

    v4 ^= v13;
    v5 += 13;
    v6 -= 104;
  }

  while (v6);
  return v4;
}

uint64_t re::TechniqueDefinitionBuilder::hashFunctionConstants(uint64_t a1, uint64_t a2, re::FunctionConstantUsageMask *this)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 36);
  v6 = 104 * a2;
  do
  {
    if (re::FunctionConstantUsageMask::getIndexUsage(this, *(v5 - 1)))
    {
      if (*(v5 - 28))
      {
        v7 = *(v5 - 20);
      }

      else
      {
        v7 = v5 - 27;
      }

      v8 = strlen(v7);
      v9 = 0x9E3779B97F4A7C17;
      if (v8)
      {
        MurmurHash3_x64_128(v7, v8, 0, v16);
        v9 = ((v16[1] - 0x61C8864680B583E9 + (v16[0] << 6) + (v16[0] >> 2)) ^ v16[0]) - 0x61C8864680B583E9;
      }

      v10 = 0xBF58476D1CE4E5B9 * (*v5 ^ (*v5 >> 30));
      v11 = ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31))) ^ v9;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 2)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 2)) >> 27));
      v13 = ((v12 ^ (v12 >> 31)) - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 1)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 1)) >> 27));
      v4 ^= v13 ^ ((v14 ^ (v14 >> 31)) - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2));
    }

    v5 += 13;
    v6 -= 104;
  }

  while (v6);
  return v4;
}

BOOL re::FunctionConstantUsageMask::getIndexUsage(re::FunctionConstantUsageMask *this, unsigned int a2)
{
  v3 = a2;
  if (a2 > 0x7F)
  {
    return re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(this + 16, &v3);
  }

  else
  {
    return (*(this + re::Bitset<128>::toWordIndex(this, a2)) >> a2) & 1;
  }
}

void re::TechniqueDefinitionBuilder::buildPipelineData(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v10 = a3;
  v9 = a7;
  v8[1] = 0;
  if (v14)
  {
    v7 = *&v15[7];
  }

  else
  {
    v7 = v15;
  }

  re::WrappedError::make(@"REMaterialBuilderErrorDomain", 0, v7, v8);
  if (v13)
  {
    if (v14)
    {
      (*(*v13 + 40))();
    }
  }

  operator new();
}

re::DynamicString *re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::FixedArray<re::TechniqueFunctionConstant>::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  if (!*a1)
  {
    v4 = a2[1];
    if (!v4)
    {
      return a1;
    }
  }

  v5 = a2[1];
  if (*(a1 + 1) == v5)
  {
    if (v5)
    {
      v6 = *a2;
      v7 = *(a1 + 2);
      v8 = 104 * v5;
      do
      {
        v9 = re::DynamicString::operator=(v7, v6);
        *(v9 + 2) = *(v6 + 32);
        v10 = *(v6 + 48);
        v11 = *(v6 + 64);
        v12 = *(v6 + 80);
        *(v9 + 24) = *(v6 + 96);
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
        *(v9 + 3) = v10;
        v6 += 104;
        v7 = (v9 + 104);
        v8 -= 104;
      }

      while (v8);
    }

    return a1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::MaterialDefinitionBuilder::result(re::MaterialDefinitionBuilder *this@<X0>, re::RenderManager *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v298 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 1440, 8);
  bzero(v5, 0x5A0uLL);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5D03CB0;
  *(v5 + 1) = 0u;
  v269 = (v5 + 2);
  *(v5 + 2) = 0u;
  *(v5 + 12) = 0;
  v6 = 0x7FFFFFFFLL;
  *(v5 + 52) = 0x7FFFFFFFLL;
  *(v5 + 4) = 0u;
  v273 = (v5 + 8);
  *(v5 + 5) = 0u;
  *(v5 + 24) = 0;
  *(v5 + 100) = 0x7FFFFFFFLL;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 156) = 0u;
  *(v5 + 172) = 0x7FFFFFFFLL;
  *(v5 + 23) = 0u;
  *(v5 + 25) = 0u;
  *(v5 + 27) = 0u;
  *(v5 + 29) = 0u;
  re::MaterialParameterTable::MaterialParameterTable((v5 + 31));
  *(v5 + 352) = 0;
  *(v5 + 87) = 0u;
  *(v5 + 86) = 0u;
  *(v5 + 1412) = 0x7FFFFFFFLL;
  v5[178] = 0;
  *(v5 + 716) = 0;
  if (*(v3 + 8))
  {
    v7 = *(v3 + 16);
  }

  else
  {
    v7 = (v3 + 9);
  }

  v8 = strlen(v7);
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], v8 + 1, 0);
  memcpy(v10, v7, v8 + 1);
  v5[178] = v10;
  re::DynamicString::DynamicString(v290, (v3 + 32));
  *(v5 + 1432) = 0;
  v11 = *&v290[0];
  if (*&v290[0])
  {
    if (BYTE8(v290[0]))
    {
      v11 = (*(**&v290[0] + 40))();
    }

    memset(v290, 0, sizeof(v290));
  }

  v267 = v5 + 14;
  v287 = 0;
  v288 = 0;
  v289 = 0;
  v12 = *(v3 + 1148);
  v285 = 0;
  v283 = 0u;
  v284 = 0u;
  v286 = 0x7FFFFFFFLL;
  v271 = *(v3 + 1152);
  if (v271)
  {
    v15 = 0;
    v16 = *(v3 + 1136);
    while (1)
    {
      v17 = *v16;
      v16 += 14;
      if (v17 < 0)
      {
        break;
      }

      if (v271 == ++v15)
      {
        LODWORD(v15) = *(v3 + 1152);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v268 = (v5 + 23);
  v276 = v3;
  if (v15 != v271)
  {
    v275 = 0;
    v25 = v5 + 1;
    if (!v5)
    {
      v25 = 0;
    }

    obj = v25;
    while (1)
    {
      v19 = *(*(v3 + 1136) + 56 * v15 + 40);
      v26 = re::globalAllocators(v13);
      v27 = (*(*v26[2] + 32))(v26[2], 2856, 8);
      bzero(v27, 0xB28uLL);
      v27[5] = 1;
      v27[6] = 0;
      *(v27 + 7) = 0u;
      *(v27 + 36) = 0;
      *(v27 + 74) = 1;
      *(v27 + 76) = 1;
      *(v27 + 39) = -1;
      *(v27 + 81) = 1031;
      *(v27 + 84) = 0x500000001;
      v27[12] = 0x500000001;
      *(v27 + 27) = 15;
      v27[16] = 0;
      *(v27 + 17) = 0u;
      *(v27 + 38) = 0;
      v27[14] = 0;
      *(v27 + 117) = 0;
      re::MaterialParameterTable::MaterialParameterTable((v27 + 21));
      re::MaterialParameterTable::MaterialParameterTable((v27 + 162));
      *(v27 + 305) = 0u;
      *(v27 + 307) = 0u;
      v29 = re::DynamicString::setCapacity(v27 + 305, 0);
      *(v27 + 309) = 0u;
      *(v27 + 311) = 0u;
      re::DynamicString::setCapacity(v27 + 309, 0);
      *(v27 + 315) = 0u;
      *(v27 + 317) = 0u;
      *(v27 + 313) = 0u;
      v27[319] = 0x7FFFFFFF00000000;
      *(v27 + 640) = 0;
      *(v27 + 321) = 0u;
      *(v27 + 323) = 0u;
      *(v27 + 325) = 0u;
      *(v27 + 654) = 0;
      *(v27 + 2620) = 0x7FFFFFFF;
      *(v27 + 2632) = 0;
      *(v27 + 331) = 0u;
      *(v27 + 333) = 0u;
      *(v27 + 670) = 0;
      v272 = (v27 + 2676);
      *(v27 + 2684) = 0x7FFFFFFF;
      v27[339] = 0;
      *(v27 + 337) = 0u;
      objc_initWeak(v27 + 342, 0);
      v18 = (v27 + 343);
      *(v27 + 343) = 0u;
      *(v27 + 345) = 0u;
      *(v27 + 694) = 0;
      *(v27 + 2780) = 0x7FFFFFFF;
      *(v27 + 349) = 0u;
      *(v27 + 351) = 0u;
      *(v27 + 706) = 0;
      *(v27 + 2828) = 0x7FFFFFFF;
      *(v27 + 710) = 0;
      *(v27 + 1422) = 0;
      *(v27 + 2846) = 1;
      *(v27 + 2847) = 0;
      *(v27 + 2850) = 0;
      if (*(v19 + 8))
      {
        v30 = *(v19 + 16);
      }

      else
      {
        v30 = (v19 + 9);
      }

      v31 = strlen(v30);
      v32 = re::globalAllocators(v31);
      v33 = (*(*v32[2] + 32))(v32[2], v31 + 1, 0);
      memcpy(v33, v30, v31 + 1);
      *v27 = v33;
      v34 = *(v19 + 240);
      v35 = *(v19 + 256);
      v36 = *(v19 + 272);
      *(v27 + 30) = *(v19 + 288);
      *(v27 + 13) = v36;
      *(v27 + 11) = v35;
      *(v27 + 9) = v34;
      if (*(v27 + 124))
      {
        v37 = v27 + 331;
        v39 = (v27 + 305);
        v38 = (v27 + 309);
        if (*(v19 + 292))
        {
          *(v27 + 125) = *(v19 + 293);
        }

        else
        {
          *(v27 + 124) = 0;
        }

        v40 = (v27 + 16);
      }

      else
      {
        v40 = (v27 + 16);
        v37 = v27 + 331;
        v39 = (v27 + 305);
        v38 = (v27 + 309);
        if (*(v19 + 292))
        {
          *(v27 + 124) = 1;
          *(v27 + 125) = *(v19 + 293);
        }
      }

      re::DynamicArray<re::RenderAttachmentState>::operator=(v40, (v19 + 296));
      v27[303] = *(v19 + 32);
      re::DynamicString::operator=(v39, (v19 + 40));
      *(v27 + 313) = *(v19 + 72);
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=((v27 + 315), v19 + 88);
      v27[304] = *(v19 + 136);
      re::DynamicString::operator=(v38, (v19 + 144));
      *(v27 + 321) = *(v19 + 176);
      v41 = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=((v27 + 323), v19 + 192);
      v43 = *(*(a2 + 6) + 368);
      if (*(v19 + 32) != v43 || (v44 = *(v19 + 136)) != 0 && v44 != v43)
      {
        *(v27 + 2853) = 1;
      }

      if (v27[329])
      {
        if ((*(v19 + 520) & 1) == 0)
        {
          v27[330] = 0;
          *(v27 + 2632) = 0;
          goto LABEL_45;
        }
      }

      else
      {
        if ((*(v19 + 520) & 1) == 0)
        {
          goto LABEL_45;
        }

        *(v27 + 2632) = 1;
      }

      v27[330] = *(v19 + 528);
LABEL_45:
      v45 = (v19 + 536);
      if (v37 != (v19 + 536))
      {
        if (*v37)
        {
          if (*v272)
          {
            v46 = *(v27 + 668);
            if (v46)
            {
              memset_pattern16(v27[332], &memset_pattern_211, 4 * v46);
            }

            v47 = *(v27 + 670);
            if (v47)
            {
              v48 = 0;
              for (i = 0; i < v47; ++i)
              {
                v50 = v27[333];
                v51 = *&v50[v48];
                if (v51 < 0)
                {
                  v52 = &v50[v48];
                  *v52 = v51 & 0x7FFFFFFF;
                  *(v52 + 1) = 0;
                  *(v52 + 2) = 0;
                  v47 = *(v27 + 670);
                }

                v48 += 24;
              }
            }

            *(v27 + 671) = 0x7FFFFFFF;
            *v272 = 0;
            ++*(v27 + 672);
          }

          if (*v45)
          {
            v53 = *(v19 + 564);
            if (*(v27 + 668) < v53)
            {
              re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(v37, v53);
            }

            v41 = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(v37, v19 + 536);
            ++*(v27 + 672);
          }
        }

        else
        {
          v42 = *v45;
          if (*v45)
          {
            if (*(v19 + 564) <= 3u)
            {
              v54 = 3;
            }

            else
            {
              v54 = *(v19 + 564);
            }

            re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v37, v42, v54);
            v41 = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(v37, v19 + 536);
          }
        }
      }

      v55 = *(v19 + 512);
      v56 = *(v19 + 496);
      if (!v27[337])
      {
        if (!v56)
        {
          goto LABEL_80;
        }

        v27[338] = v56;
        if (v56 >> 61)
        {
          goto LABEL_476;
        }

        v27[339] = v58;
        if (!v58)
        {
LABEL_477:
          re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
LABEL_478:
          *&v280 = 0;
          v293 = 0u;
          v294 = 0u;
          memset(v292, 0, sizeof(v292));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "slice";
          *&buf[12] = 1024;
          *&buf[14] = 502;
          *&buf[18] = 2048;
          *&buf[20] = 0;
          v296 = 2048;
          v297 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_479:
          re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, 0, v18, v129);
          _os_crash();
          __break(1u);
LABEL_480:
          v291 = 0;
          *(v19 + 96) = 0u;
          *(v19 + 112) = 0u;
          *(v19 + 64) = 0u;
          *(v19 + 80) = 0u;
          *(v19 + 48) = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          *&buf[12] = 1024;
          *&buf[14] = 789;
          *&buf[18] = 2048;
          *&buf[20] = 0;
          v296 = 2048;
          v297 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_481:
          re::internal::assertLog(4, v136, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
          _os_crash();
          __break(1u);
        }

        v59 = v58;
        if (v56 != 1)
        {
          bzero(v58, 8 * v56 - 8);
          v59 += 8 * v56 - 8;
        }

        *v59 = 0;
      }

      if (v27[338] != v56)
      {
        goto LABEL_475;
      }

      if (v56)
      {
        v60 = v27[339];
        v61 = 8 * v56;
        do
        {
          v62 = *v55++;
          *v60 = v62;
          v60 += 8;
          v61 -= 8;
        }

        while (v61);
      }

      v63 = *(v19 + 496);
      if (!v63)
      {
LABEL_80:
        v64 = 0;
        v56 = (v27 + 6);
        goto LABEL_81;
      }

      v64 = 0;
      v65 = *(v19 + 512);
      v66 = 8 * v63;
      v56 = (v27 + 6);
      do
      {
        v67 = *v65++;
        v64 = (v67 ^ v64);
        v66 -= 8;
      }

      while (v66);
LABEL_81:
      v27[340] = v64;
      *(v27 + 2845) = *(v19 + 685);
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v27 + 343), v19 + 584);
      *(v27 + 710) = *(v19 + 680);
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v27 + 349), v19 + 632);
      *(v27 + 2844) = 0;
      if ((atomic_load_explicit(&qword_1EE1B8690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8690))
      {
        _MergedGlobals_435 = re::mtl::Device::supportsDynamicAttributeStride(a2 + 26);
        __cxa_guard_release(&qword_1EE1B8690);
      }

      if (_MergedGlobals_435 == 1)
      {
        if (v27[306])
        {
          v68 = v27[307];
        }

        else
        {
          v68 = v27 + 2449;
        }

        v69 = strcmp(v68, "vsRealityPbrOpenSubdiv");
        v70 = *(v19 + 684);
        if (!v69)
        {
          v70 = 0;
        }

        *(v27 + 2844) = v70;
      }

      if (*(v27 + 2846))
      {
        if (*(v19 + 686))
        {
          *(v27 + 2847) = *(v19 + 687);
        }

        else
        {
          *(v27 + 2846) = 0;
        }
      }

      else if (*(v19 + 686))
      {
        *(v27 + 2846) = 1;
        *(v27 + 2847) = *(v19 + 687);
      }

      *(v27 + 2848) = *(v19 + 688);
      if ((*(v27 + 2853) & 1) == 0)
      {
        if (v27[306])
        {
          v71 = v27[307];
        }

        else
        {
          v71 = v27 + 2449;
        }

        re::MaterialManager::getEngineShaderMetadata(*(a2 + 3), v71, v292);
        if (*(v19 + 152))
        {
          v72 = *(v19 + 160);
        }

        else
        {
          v72 = (v19 + 153);
        }

        re::MaterialManager::getEngineShaderMetadata(*(a2 + 3), v72, buf);
        if (v292[0] == 1)
        {
          *(v27 + 2849) = *&v292[1];
        }

        if (buf[0] == 1)
        {
          *(v27 + 2851) = *&buf[1];
        }
      }

      v73 = *(a2 + 3);
      re::FunctionConstantsEnumerator::createEnumerator(v19 + 376, *(v19 + 472), *(v19 + 456), v19 + 336, (v73 + 976), v292);
      re::FixedArray<float>::operator=(v27 + 1, v292);
      *(v27 + 2) = *&v292[24];
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v292);
      re::FunctionConstantsEnumerator::createPermutation((v27 + 1), 0, *(v19 + 368), *(v19 + 352), v292);
      *buf = *&v292[32];
      *&buf[8] = *&v292[16];
      re::FixedArray<re::TechniqueFunctionConstant>::operator=(v56, buf);
      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v292);
      if (*(v27 + 2845) == 1)
      {
        *buf = v19 + 376;
        v74 = *(v19 + 392);
        if (v74 >= 0x10)
        {
          v75 = 0;
          v76 = *(v19 + 376);
          v77 = v74 >> 4;
          while (1)
          {
            v78 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v76), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *&buf[8] = v78 ^ 0xFFFFLL;
            if (v78 != 0xFFFFLL)
            {
              break;
            }

            v75 -= 16;
            ++v76;
            if (!--v77)
            {
              goto LABEL_113;
            }
          }

          v79 = __clz(__rbit64(v78 ^ 0xFFFFLL));
          v80 = v79 - v75;
          *&buf[16] = v79 - v75;
          if (v79 + 1 != v75)
          {
            do
            {
              v94 = *(*buf + 8) + 96 * v80;
              v95 = re::Hash<re::DynamicString>::operator()(v292, v94);
              v96 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((v27 + 343), v94, v95, v292);
              if (*&v292[12] == 0x7FFFFFFF)
              {
                v56 = *re::graphicsLogObjects(v96);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  if (*(v94 + 8))
                  {
                    v97 = *(v94 + 16);
                  }

                  else
                  {
                    v97 = v94 + 9;
                  }

                  *v292 = 136315138;
                  *&v292[4] = v97;
                  _os_log_error_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_ERROR, "Missing runtime function constant fallback value for varying function constant %s. Please add fallback values to the material definition.", v292, 0xCu);
                }
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(buf);
              v80 = *&buf[16];
            }

            while (*&buf[16] != -1);
          }
        }

LABEL_113:
        v81 = *(v19 + 456);
        if (v81)
        {
          v19 = *(v19 + 472);
          v82 = v19 + 8 * v81;
          do
          {
            v291 = *v19;
            v83 = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v73 + 976), &v291);
            re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(v292, *(v73 + 984) + 72 * v83 + 8);
            *&v280 = v292;
            *(&v280 + 1) = 0;
            if (*&v292[16] >= 0x10uLL)
            {
              v84 = 0;
              v85 = *v292;
              v86 = *&v292[16] >> 4;
              while (1)
              {
                v87 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v85), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
                *(&v280 + 1) = v87 ^ 0xFFFFLL;
                if (v87 != 0xFFFFLL)
                {
                  break;
                }

                v84 -= 16;
                ++v85;
                if (!--v86)
                {
                  goto LABEL_121;
                }
              }

              v88 = __clz(__rbit64(v87 ^ 0xFFFFLL));
              v89 = v88 - v84;
              v281 = v88 - v84;
              if (v88 + 1 != v84)
              {
                do
                {
                  v90 = *(v280 + 8) + 96 * v89;
                  v91 = re::Hash<re::DynamicString>::operator()(buf, v90);
                  v92 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((v27 + 343), v90, v91, buf);
                  if (*&buf[12] == 0x7FFFFFFF)
                  {
                    v56 = *re::graphicsLogObjects(v92);
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                    {
                      if (*(v90 + 8))
                      {
                        v93 = *(v90 + 16);
                      }

                      else
                      {
                        v93 = v90 + 9;
                      }

                      *buf = 136315394;
                      *&buf[4] = v93;
                      *&buf[12] = 2048;
                      *&buf[14] = v291;
                      _os_log_error_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_ERROR, "Missing runtime function constant fallback value for varying function constant %s in default variation %lu. This is an RE bug.", buf, 0x16u);
                    }
                  }

                  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
                  v89 = v281;
                }

                while (v281 != -1);
              }
            }

LABEL_121:
            re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v292);
            v19 += 8;
          }

          while (v19 != v82);
        }
      }

      v98 = v275;
      v18 = v288;
      if (v288 <= v275)
      {
        goto LABEL_474;
      }

      v99 = v289;
      v289[v275] = v27;
      objc_storeWeak(v27 + 342, obj);
      v100 = strlen(*v27);
      if (v100)
      {
        MurmurHash3_x64_128(*v27, v100, 0, v292);
        v101 = (*&v292[8] - 0x61C8864680B583E9 + (*v292 << 6) + (*v292 >> 2)) ^ *v292;
      }

      else
      {
        v101 = 0;
      }

      v3 = v276;
      v102 = strlen(v5[178]);
      v103 = 0x9E3779B97F4A7C17;
      if (v102)
      {
        MurmurHash3_x64_128(v5[178], v102, 0, v292);
        v103 = ((*&v292[8] - 0x61C8864680B583E9 + (*v292 << 6) + (*v292 >> 2)) ^ *v292) - 0x61C8864680B583E9;
      }

      *(v99[v275] + 2728) = ((v101 >> 2) + (v101 << 6) + v103) ^ v101;
      v104 = *v27;
      v105 = re::Hash<re::DynamicString>::operator()(v292, *v27);
      v106 = v105;
      if (v283)
      {
        v107 = v105 % DWORD2(v284);
        v108 = *(*(&v283 + 1) + 4 * v107);
        if (v108 != 0x7FFFFFFF)
        {
          v109 = v284;
          do
          {
            v110 = v109 + 56 * v108;
            v111 = *(v110 + 16);
            v112 = *(v110 + 24);
            v113 = v110 + 17;
            v114 = ((v111 & 1) != 0 ? v112 : v113);
            v13 = strcmp(v114, v104);
            if (!v13)
            {
              goto LABEL_156;
            }

            LODWORD(v108) = *(v109 + 56 * v108) & 0x7FFFFFFF;
          }

          while (v108 != 0x7FFFFFFF);
        }
      }

      else
      {
        LODWORD(v107) = 0;
      }

      v115 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v283, v107, v106);
      v115[10] = v275;
      ++HIDWORD(v286);
LABEL_156:
      ++v275;
      v116 = *(v276 + 1152);
      if (v116 <= v15 + 1)
      {
        v116 = v15 + 1;
      }

      while (v116 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(*(v276 + 1136) + 56 * v15) & 0x80000000) != 0)
        {
          goto LABEL_162;
        }
      }

      LODWORD(v15) = v116;
LABEL_162:
      if (v15 == v271)
      {
        goto LABEL_16;
      }
    }
  }

  v275 = 0;
LABEL_16:
  v18 = v3 + 1312;
  v19 = (v5 + 23);
  if (v268 == (v3 + 1312))
  {
    goto LABEL_178;
  }

  v5[28] = 0;
  v5[29] = 0;
  v20 = v5[25];
  v5[26] = 0;
  v5[27] = v20;
  *v292 = v5 + 23;
  if (v20 > 0xF)
  {
    v21 = 0;
    v22 = *v268;
    v23 = v20 >> 4;
    while (1)
    {
      v24 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v22), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *&v292[8] = v24 ^ 0xFFFFLL;
      if (v24 != 0xFFFFLL)
      {
        break;
      }

      v21 -= 16;
      ++v22;
      if (!--v23)
      {
        goto LABEL_169;
      }
    }

    v117 = __clz(__rbit64(v24 ^ 0xFFFFLL));
    v118 = v117 - v21;
    *&v292[16] = v117 - v21;
    if (v117 + 1 != v21)
    {
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v5[24] + 72 * v118 + 8);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v292);
        v118 = *&v292[16];
      }

      while (*&v292[16] != -1);
      v20 = v5[25];
    }

LABEL_169:
    if (v20 >= 0x10)
    {
      v119 = 0;
      *&v120 = -1;
      *(&v120 + 1) = -1;
      do
      {
        *(v5[23] + 16 * v119++) = v120;
      }

      while (v119 < v5[25] >> 4);
    }
  }

  v121 = *(v3 + 1328);
  if (v121 < 0x10)
  {
    goto LABEL_178;
  }

  v122 = 0;
  v123 = *v18;
  v124 = v121 >> 4;
  v125 = xmmword_1E304FAD0;
  v6 = 0x3830282018100800;
  while (1)
  {
    v126 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v123), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
    if (v126 != 0xFFFFLL)
    {
      break;
    }

    v122 -= 16;
    ++v123;
    if (!--v124)
    {
      goto LABEL_178;
    }
  }

  v127 = v126 ^ 0xFFFFLL;
  v128 = __clz(__rbit64(v127));
  if (v128 + 1 != v122)
  {
    goto LABEL_462;
  }

  while (1)
  {
LABEL_178:
    v129 = v288;
    if (v288 == -1)
    {
      goto LABEL_478;
    }

    v18 = v275;
    v19 = v290;
    if (v288 < v275)
    {
      goto LABEL_479;
    }

    v130 = v289;
    re::MaterialParameterTable::MaterialParameterTable(v292, (v3 + 64), (v3 + 592));
    re::MaterialParameterTable::operator=((v5 + 31), v292);
    re::MaterialParameterTable::~MaterialParameterTable(v292);
    v132 = (v3 + 1072);
    if (v5 + 172 != (v3 + 1072))
    {
      if (v5[172])
      {
        re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear((v5 + 172));
        if (*v132)
        {
          v133 = *(v3 + 1100);
          if (*(v5 + 350) < v133)
          {
            re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity((v5 + 172), v133);
          }

          v131 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy((v5 + 172), v3 + 1072);
          ++*(v5 + 354);
        }
      }

      else if (*v132)
      {
        if (*(v3 + 1100) <= 3u)
        {
          v134 = 3;
        }

        else
        {
          v134 = *(v3 + 1100);
        }

        re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init((v5 + 172), *v132, v134);
        v131 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy((v5 + 172), v3 + 1072);
      }
    }

    if (!*v267)
    {
      if (!v275)
      {
        goto LABEL_197;
      }
    }

    if (v5[15] != v275)
    {
      goto LABEL_481;
    }

    if (v275)
    {
      v135 = memmove(v5[16], v130, 8 * v275);
    }

LABEL_197:
    if (v5[15])
    {
      v137 = 0;
      do
      {
        v138 = *(v5[16] + 8 * v137);
        v280 = 0uLL;
        v281 = 0;
        *v292 = v137;
        v139 = *v138;
        v140 = strlen(v139);
        if (v140)
        {
          MurmurHash3_x64_128(v139, v140, 0, v292);
          v141 = (*&v292[8] - 0x61C8864680B583E9 + (*v292 << 6) + (*v292 >> 2)) ^ *v292;
        }

        else
        {
          v141 = 0;
        }

        v291 = v141;
        *v292 = v280;
        v142 = v281;
        v281 = 0;
        v280 = 0uLL;
        *&v292[16] = v142;
        v292[24] = -1;
        memset(buf, 0, 24);
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>((v5 + 17), &v291, v141, buf);
        v143 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v144 = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry((v5 + 17), *&buf[8], *buf);
          *(v144 + 8) = v291;
          *(v144 + 16) = *v292;
          v145 = *&v292[16];
          memset(v292, 0, 24);
          *(v144 + 32) = v145;
          *(v144 + 40) = v292[24];
          ++*(v5 + 44);
        }

        else
        {
          ++*(v5 + 44);
          v146 = v5[19] + 48 * v143;
          re::FixedArray<float>::operator=((v146 + 16), v292);
          *(v146 + 40) = v292[24];
          if (*v292 && *&v292[8])
          {
            (*(**v292 + 40))(*v292, *&v292[16]);
          }
        }

        v135 = v280;
        if (v280 && *(&v280 + 1))
        {
          v135 = (*(*v280 + 40))(v280, v281);
        }

        ++v137;
      }

      while (v137 < v5[15]);
    }

    v147 = *(v3 + 1296);
    if (v147)
    {
      v148 = 0;
      v149 = *(v3 + 1280);
      while (1)
      {
        v150 = *v149;
        v149 += 22;
        if (v150 < 0)
        {
          break;
        }

        if (v147 == ++v148)
        {
          LODWORD(v148) = *(v3 + 1296);
          break;
        }
      }
    }

    else
    {
      LODWORD(v148) = 0;
    }

    if (v148 != v147)
    {
      v275 = 136315394;
      do
      {
        v56 = v290;
        v151 = *(v276 + 1280) + 88 * v148;
        v98 = v151 + 8;
        v152 = re::Hash<re::DynamicString>::operator()(v292, v151 + 8);
        v153 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v283, v151 + 8, v152, v292);
        if (*&v292[12] == 0x7FFFFFFF)
        {
          v280 = 0uLL;
          v281 = 0;
          v154 = *(v151 + 56);
          if (*(v151 + 56))
          {
            v155 = 0;
            v19 = 0;
            while (1)
            {
              v156 = *(v151 + 72);
              v157 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v283, v156 + v155);
              if (!v157)
              {
                break;
              }

              v18 = *(&v280 + 1);
              if (*(&v280 + 1) <= v19)
              {
                v291 = 0;
                v293 = 0u;
                v294 = 0u;
                memset(v292, 0, sizeof(v292));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *buf = 136315906;
                *&buf[4] = "operator[]";
                *&buf[12] = 1024;
                *&buf[14] = 468;
                *&buf[18] = 2048;
                *&buf[20] = v19;
                v296 = 2048;
                v297 = v18;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_473:
                v291 = 0;
                v293 = 0u;
                v294 = 0u;
                memset(v292, 0, sizeof(v292));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *buf = 136315906;
                *&buf[4] = "operator[]";
                *&buf[12] = 1024;
                *&buf[14] = 468;
                *&buf[18] = 2048;
                *&buf[20] = v18;
                v296 = 2048;
                v297 = v155;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_474:
                *&v280 = 0;
                v293 = 0u;
                v294 = 0u;
                memset(v292, 0, sizeof(v292));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *buf = 136315906;
                *&buf[4] = "operator[]";
                *&buf[12] = 1024;
                *&buf[14] = 468;
                *&buf[18] = 2048;
                *&buf[20] = v98;
                v296 = 2048;
                v297 = v18;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_475:
                re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
                _os_crash();
                __break(1u);
LABEL_476:
                re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v56);
                _os_crash();
                __break(1u);
                goto LABEL_477;
              }

              *(v281 + 4 * v19++) = *v157;
              v155 += 32;
              if (v19 >= *(v151 + 56))
              {
                goto LABEL_225;
              }
            }

            v161 = *re::graphicsLogObjects(0);
            if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v151 + 16))
              {
                v162 = *(v151 + 24);
              }

              else
              {
                v162 = v151 + 17;
              }

              v163 = v156 + v155;
              if (*(v156 + v155 + 8))
              {
                v164 = *(v163 + 16);
              }

              else
              {
                v164 = v163 + 9;
              }

              *v292 = 136315394;
              *&v292[4] = v162;
              *&v292[12] = 2080;
              *&v292[14] = v164;
              _os_log_impl(&dword_1E1C61000, v161, OS_LOG_TYPE_DEFAULT, "In technique group %s, technique %s does not exist. Skipping the group.", v292, 0x16u);
            }
          }

          else
          {
LABEL_225:
            *buf = re::Hash<re::DynamicString>::operator()(v292, v151 + 8);
            *v292 = v280;
            v158 = v281;
            v281 = 0;
            v280 = 0uLL;
            *&v292[16] = v158;
            v292[24] = -1;
            re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v5 + 17), buf, v292);
            if (*v292 && *&v292[8])
            {
              (*(**v292 + 40))(*v292, *&v292[16]);
            }
          }

          v135 = v280;
          if (v280 && *(&v280 + 1))
          {
            v135 = (*(*v280 + 40))(v280, v281);
          }
        }

        else
        {
          v159 = *re::graphicsLogObjects(v153);
          v135 = os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT);
          if (v135)
          {
            if (*(v151 + 16))
            {
              v160 = *(v151 + 24);
            }

            else
            {
              v160 = v151 + 17;
            }

            *v292 = 136315138;
            *&v292[4] = v160;
            _os_log_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_DEFAULT, "Technique group %s has the same name as an existing technique.  Skipping the group", v292, 0xCu);
          }
        }

        v165 = *(v276 + 1296);
        if (v165 <= v148 + 1)
        {
          v165 = v148 + 1;
        }

        v19 = v290;
        while (v165 - 1 != v148)
        {
          LODWORD(v148) = v148 + 1;
          if ((*(*(v276 + 1280) + 88 * v148) & 0x80000000) != 0)
          {
            goto LABEL_251;
          }
        }

        LODWORD(v148) = v165;
LABEL_251:
        ;
      }

      while (v148 != v147);
    }

    v166 = v276;
    v167 = *(v276 + 1408);
    if (v167)
    {
      v168 = 0;
      v169 = *(v276 + 1392);
      while (1)
      {
        v170 = *v169;
        v169 += 30;
        if (v170 < 0)
        {
          break;
        }

        if (v167 == ++v168)
        {
          LODWORD(v168) = *(v276 + 1408);
          break;
        }
      }
    }

    else
    {
      LODWORD(v168) = 0;
    }

    if (v168 != v167)
    {
      v98 = 0x7FFFFFFFLL;
      v275 = *(v276 + 1408);
      while (1)
      {
        v171 = *(v166 + 1392) + 120 * v168;
        v172 = v171 + 8;
        v173 = re::Hash<re::DynamicString>::operator()(v292, v171 + 8);
        v174 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v283, v171 + 8, v173, v292);
        if (*&v292[12] != 0x7FFFFFFF)
        {
          break;
        }

        v175 = re::Hash<re::DynamicString>::operator()(v292, v171 + 8);
        v282 = v175;
        if (v5[17])
        {
          v176 = *(v5[18] + 4 * (v175 % *(v5 + 40)));
          if (v176 != 0x7FFFFFFF)
          {
            v177 = v5[19];
            while (*(v177 + 48 * v176 + 8) != v175)
            {
              v176 = *(v177 + 48 * v176) & 0x7FFFFFFF;
              if (v176 == 0x7FFFFFFF)
              {
                goto LABEL_266;
              }
            }

            v194 = *re::graphicsLogObjects(v175);
            v135 = os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT);
            if (!v135)
            {
              goto LABEL_319;
            }

            if (*(v171 + 16))
            {
              v195 = *(v171 + 24);
            }

            else
            {
              v195 = v171 + 17;
            }

            *v292 = 136315138;
            *&v292[4] = v195;
            v188 = v194;
            v189 = "Technique quality set %s has the same name as an existing technique group.  Skipping the quality set";
LABEL_318:
            _os_log_impl(&dword_1E1C61000, v188, OS_LOG_TYPE_DEFAULT, v189, v292, 0xCu);
            goto LABEL_319;
          }
        }

LABEL_266:
        v56 = v171 + 40;
        if (!*(v171 + 56))
        {
          v186 = *re::graphicsLogObjects(v175);
          v135 = os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT);
          if (!v135)
          {
            goto LABEL_319;
          }

          if (*(v171 + 16))
          {
            v187 = *(v171 + 24);
          }

          else
          {
            v187 = v171 + 17;
          }

          *v292 = 136315138;
          *&v292[4] = v187;
          v188 = v186;
          v189 = "In technique quality level set %s ,techniques array is empty. Skipping the set.";
          goto LABEL_318;
        }

        v178 = *(v171 + 56);
        v280 = 0uLL;
        v281 = 0;
        if (!*(v171 + 56))
        {
          v183 = re::Hash<re::DynamicString>::operator()(v292, v171 + 8);
          v282 = v183;
          goto LABEL_286;
        }

        v19 = 0;
        v18 = 0;
        LOBYTE(v179) = -1;
        do
        {
          v180 = *(v56 + 32);
          v181 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v283, v180 + v19);
          if (!v181)
          {
            v192 = *re::graphicsLogObjects(0);
            LODWORD(v167) = v275;
            if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v172 + 8))
              {
                v193 = *(v172 + 16);
              }

              else
              {
                v193 = v172 + 9;
              }

              v199 = v180 + v19;
              if (*(v180 + v19 + 8))
              {
                v200 = *(v199 + 16);
              }

              else
              {
                v200 = v199 + 9;
              }

              *v292 = 136315394;
              *&v292[4] = v193;
              *&v292[12] = 2080;
              *&v292[14] = v200;
              _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEFAULT, "In technique quality level set %s, technique %s does not exist. Skipping the set.", v292, 0x16u);
            }

            goto LABEL_307;
          }

          v155 = *(&v280 + 1);
          if (*(&v280 + 1) <= v18)
          {
            goto LABEL_473;
          }

          v98 = v181;
          if (re::DynamicString::operator==(v180 + v19, v56 + 40))
          {
            v182 = v18;
          }

          else
          {
            v182 = v179;
          }

          v179 = v182;
          *(v281 + 4 * v18++) = *v98;
          v19 += 32;
        }

        while (v18 < *(v56 + 16));
        v183 = re::Hash<re::DynamicString>::operator()(v292, v172);
        v282 = v183;
        v19 = v290;
        if ((v179 & 0x80000000) == 0)
        {
          goto LABEL_303;
        }

LABEL_286:
        v190 = *re::graphicsLogObjects(v183);
        LOBYTE(v179) = 0;
        if (!os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_303;
        }

        if (*(v172 + 8))
        {
          v191 = *(v172 + 16);
        }

        else
        {
          v191 = v172 + 9;
        }

        if (!*(v56 + 16))
        {
          goto LABEL_480;
        }

        v196 = *(v56 + 32);
        if (*(v196 + 8))
        {
          v197 = *(v196 + 16);
        }

        else
        {
          v197 = v196 + 9;
        }

        *v292 = 136315394;
        *&v292[4] = v191;
        *&v292[12] = 2080;
        *&v292[14] = v197;
        _os_log_impl(&dword_1E1C61000, v190, OS_LOG_TYPE_DEFAULT, "In technique quality level set %s, techniqueSetBaseline does not exist. It will be set to technique %s by default.", v292, 0x16u);
        LOBYTE(v179) = 0;
LABEL_303:
        *v292 = v280;
        v198 = v281;
        v281 = 0;
        v280 = 0uLL;
        *&v292[16] = v198;
        v292[24] = v179;
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v5 + 17), &v282, v292);
        if (*v292 && *&v292[8])
        {
          (*(**v292 + 40))(*v292, *&v292[16]);
        }

        LODWORD(v167) = v275;
LABEL_307:
        v135 = v280;
        if (v280 && *(&v280 + 1))
        {
          v135 = (*(*v280 + 40))(v280, v281);
        }

        v19 = v290;
        v166 = v276;
LABEL_319:
        v201 = *(v166 + 1408);
        if (v201 <= v168 + 1)
        {
          v201 = v168 + 1;
        }

        v98 = 0x7FFFFFFFLL;
        while (v201 - 1 != v168)
        {
          LODWORD(v168) = v168 + 1;
          if ((*(*(v166 + 1392) + 120 * v168) & 0x80000000) != 0)
          {
            goto LABEL_326;
          }
        }

        LODWORD(v168) = v201;
LABEL_326:
        if (v168 == v167)
        {
          goto LABEL_327;
        }
      }

      v184 = *re::graphicsLogObjects(v174);
      v135 = os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT);
      if (!v135)
      {
        goto LABEL_319;
      }

      if (*(v171 + 16))
      {
        v185 = *(v171 + 24);
      }

      else
      {
        v185 = v171 + 17;
      }

      *v292 = 136315138;
      *&v292[4] = v185;
      v188 = v184;
      v189 = "Technique quality set %s has the same name as an existing technique.  Skipping the quality set";
      goto LABEL_318;
    }

LABEL_327:
    v202 = *(v166 + 1200);
    if (v202)
    {
      v203 = 0;
      v204 = *(v166 + 1184);
      while (1)
      {
        v205 = *v204;
        v204 += 20;
        if (v205 < 0)
        {
          break;
        }

        if (v202 == ++v203)
        {
          LODWORD(v203) = *(v166 + 1200);
          break;
        }
      }
    }

    else
    {
      LODWORD(v203) = 0;
    }

    while (v203 != v202)
    {
      v206 = *(v166 + 1184) + 80 * v203;
      v135 = re::Hash<re::DynamicString>::operator()(v292, v206 + 40);
      *buf = v135;
      if (v5[17])
      {
        v207 = *(v5[18] + 4 * (v135 % *(v5 + 40)));
        if (v207 != 0x7FFFFFFF)
        {
          v208 = v5[19];
          while (*(v208 + 48 * v207 + 8) != v135)
          {
            v207 = *(v208 + 48 * v207) & 0x7FFFFFFF;
            if (v207 == 0x7FFFFFFF)
            {
              goto LABEL_341;
            }
          }

          *&v280 = re::Hash<re::DynamicString>::operator()(v292, v206 + 8);
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v269, &v280, buf);
          MurmurHash3_x64_128("Default", 7uLL, 0, v292);
          v291 = (*&v292[8] - 0x61C8864680B583E9 + (*v292 << 6) + (*v292 >> 2)) ^ *v292;
          memset(v292, 0, sizeof(v292));
          *&v292[36] = 0x7FFFFFFF;
          v209 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v273, &v291, v292);
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v292);
          v135 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v209, &v280, buf);
        }
      }

LABEL_341:
      v210 = *(v166 + 1200);
      if (v210 <= v203 + 1)
      {
        v210 = v203 + 1;
      }

      while (v210 - 1 != v203)
      {
        LODWORD(v203) = v203 + 1;
        if ((*(*(v166 + 1184) + 80 * v203) & 0x80000000) != 0)
        {
          goto LABEL_347;
        }
      }

      LODWORD(v203) = v210;
LABEL_347:
      ;
    }

    v277 = *(v166 + 1248);
    if (v277)
    {
      v211 = 0;
      v212 = *(v166 + 1232);
      while (1)
      {
        v213 = *v212;
        v212 += 24;
        if (v213 < 0)
        {
          break;
        }

        if (v277 == ++v211)
        {
          LODWORD(v211) = *(v166 + 1248);
          break;
        }
      }
    }

    else
    {
      LODWORD(v211) = 0;
    }

    if (v211 != v277)
    {
      v214 = *(v166 + 1248);
      do
      {
        v215 = *(v166 + 1232) + 96 * v211;
        v216 = *(v215 + 72);
        if (v216)
        {
          v217 = 0;
          v218 = *(v215 + 56);
          while (1)
          {
            v219 = *v218;
            v218 += 20;
            if (v219 < 0)
            {
              break;
            }

            if (v216 == ++v217)
            {
              LODWORD(v217) = *(v215 + 72);
              break;
            }
          }
        }

        else
        {
          LODWORD(v217) = 0;
        }

        if (v217 != v216)
        {
          do
          {
            v220 = *(v215 + 56) + 80 * v217;
            v135 = re::Hash<re::DynamicString>::operator()(v292, v220 + 40);
            *buf = v135;
            if (v5[17])
            {
              v221 = *(v5[18] + 4 * (v135 % *(v5 + 40)));
              if (v221 != 0x7FFFFFFF)
              {
                v222 = v5[19];
                while (*(v222 + 48 * v221 + 8) != v135)
                {
                  v221 = *(v222 + 48 * v221) & 0x7FFFFFFF;
                  if (v221 == 0x7FFFFFFF)
                  {
                    goto LABEL_370;
                  }
                }

                *&v280 = re::Hash<re::DynamicString>::operator()(v292, v220 + 8);
                v291 = re::Hash<re::DynamicString>::operator()(v292, v215 + 8);
                memset(v292, 0, sizeof(v292));
                *&v292[36] = 0x7FFFFFFF;
                v223 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v273, &v291, v292);
                re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v292);
                v135 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v223, &v280, buf);
              }
            }

LABEL_370:
            v224 = *(v215 + 72);
            if (v224 <= v217 + 1)
            {
              v224 = v217 + 1;
            }

            while (v224 - 1 != v217)
            {
              LODWORD(v217) = v217 + 1;
              if ((*(*(v215 + 56) + 80 * v217) & 0x80000000) != 0)
              {
                goto LABEL_376;
              }
            }

            LODWORD(v217) = v224;
LABEL_376:
            ;
          }

          while (v217 != v216);
          v214 = *(v276 + 1248);
        }

        if (v214 <= v211 + 1)
        {
          v225 = v211 + 1;
        }

        else
        {
          v225 = v214;
        }

        v166 = v276;
        while (v225 - 1 != v211)
        {
          LODWORD(v211) = v211 + 1;
          if ((*(*(v276 + 1232) + 96 * v211) & 0x80000000) != 0)
          {
            goto LABEL_386;
          }
        }

        LODWORD(v211) = v225;
LABEL_386:
        ;
      }

      while (v211 != v277);
    }

    v18 = *(v5 + 12);
    if (v18)
    {
      v226 = 0;
      v227 = v5[4];
      while (1)
      {
        v228 = *v227;
        v227 += 6;
        if (v228 < 0)
        {
          break;
        }

        if (v18 == ++v226)
        {
          LODWORD(v226) = *(v5 + 12);
          break;
        }
      }
    }

    else
    {
      LODWORD(v226) = 0;
    }

    if (v226 == v18)
    {
      break;
    }

    v127 = 0x7FFFFFFFLL;
    while (1)
    {
      v229 = v5[4] + 24 * v226;
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>((v5 + 17), (v229 + 16), *(v229 + 16), v292);
      v230 = v5[19] + 48 * *&v292[12];
      v231 = *(v230 + 24);
      if (v231)
      {
        break;
      }

LABEL_402:
      v236 = *(v5 + 12);
      if (v236 <= v226 + 1)
      {
        v236 = v226 + 1;
      }

      while (v236 - 1 != v226)
      {
        LODWORD(v226) = v226 + 1;
        if ((*(v5[4] + 24 * v226) & 0x80000000) != 0)
        {
          goto LABEL_408;
        }
      }

      LODWORD(v226) = v236;
LABEL_408:
      if (v226 == v18)
      {
        goto LABEL_409;
      }
    }

    v19 = *(v230 + 32);
    v232 = 4 * v231;
    while (1)
    {
      v3 = *v19;
      v233 = v5[15];
      if (v233 <= v3)
      {
        break;
      }

      v234 = *(v5[16] + 8 * v3);
      if (*(v234 + 2845) == 1)
      {
        v235 = re::Hash<re::DynamicString>::operator()(v292, &v280);
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v234 + 2744, &v280, v235, v292);
        if (*&v292[12] != 0x7FFFFFFF)
        {
          *(v5 + 1433) = 1;
        }
      }

      v19 += 4;
      v232 -= 4;
      if (!v232)
      {
        goto LABEL_402;
      }
    }

LABEL_461:
    v291 = 0;
    v293 = 0u;
    v294 = 0u;
    memset(v292, 0, sizeof(v292));
    v5 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    *&buf[14] = 468;
    *&buf[18] = 2048;
    *&buf[20] = v3;
    v296 = 2048;
    v297 = v233;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_462:
    v255 = v128 - v122;
    v279 = v125;
    while (1)
    {
      v256 = (*(v3 + 1320) + 72 * v255);
      *v292 = *v256;
      re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::HashBrown(&v292[8], (v256 + 1));
      re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v19, v292, &v292[8]);
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v292[8]);
      v257 = v255 >> 4;
      v258 = *(v3 + 1328);
      if (v255 >> 4 >= v258 >> 4)
      {
        break;
      }

      v259 = __clz(__rbit64((-2 << (v255 & 0xF)) & v127));
      if (v259 >= 0x40)
      {
        v260 = v258 >> 4;
        v261 = -16 * v257;
        v262 = (*v18 + 16 * v257 + 16);
        v263 = ~v257 + v260;
        while (v263)
        {
          v264 = *v262++;
          v127 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(v264), v279)))), v6);
          v265 = __clz(__rbit64(v127));
          v261 -= 16;
          --v263;
          if (v265 <= 0x3F)
          {
            v255 = v265 - v261;
            goto LABEL_470;
          }
        }

        goto LABEL_178;
      }

      v255 = v259 + (v255 & 0xFFFFFFFFFFFFFFF0);
LABEL_470:
      if (v255 == -1)
      {
        goto LABEL_178;
      }
    }
  }

LABEL_409:
  v237 = *(v5 + 24);
  if (v237)
  {
    v238 = 0;
    v239 = v5[10];
    while (1)
    {
      v240 = *v239;
      v239 += 18;
      if (v240 < 0)
      {
        break;
      }

      if (v237 == ++v238)
      {
        LODWORD(v238) = *(v5 + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v238) = 0;
  }

  if (v238 == v237)
  {
    goto LABEL_416;
  }

  v233 = 24;
  v243 = *(v5 + 24);
  v276 = v243;
  do
  {
    v244 = v5[10] + 72 * v238;
    v278 = *(v244 + 48);
    if (v278)
    {
      v3 = 0;
      v245 = *(v244 + 32);
      while (1)
      {
        v246 = *v245;
        v245 += 6;
        if (v246 < 0)
        {
          break;
        }

        if (v278 == ++v3)
        {
          v3 = *(v244 + 48);
          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (v3 == v278)
    {
      goto LABEL_451;
    }

    do
    {
      v247 = *(v244 + 32) + 24 * v3;
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>((v5 + 17), (v247 + 16), *(v247 + 16), v292);
      v248 = v5[19] + 48 * *&v292[12];
      v249 = *(v248 + 24);
      if (v249)
      {
        v127 = *(v248 + 32);
        v250 = 4 * v249;
        while (1)
        {
          v19 = *v127;
          v18 = v5[15];
          if (v18 <= v19)
          {
            break;
          }

          v251 = *(v5[16] + 8 * v19);
          if (*(v251 + 2845) == 1)
          {
            v252 = re::Hash<re::DynamicString>::operator()(v292, &v280);
            re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v251 + 2744, &v280, v252, v292);
            if (*&v292[12] != 0x7FFFFFFF)
            {
              *(v5 + 1433) = 1;
            }
          }

          v127 += 4;
          v250 -= 4;
          if (!v250)
          {
            goto LABEL_442;
          }
        }

        v291 = 0;
        v293 = 0u;
        v294 = 0u;
        memset(v292, 0, sizeof(v292));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *buf = 136315906;
        *&buf[4] = "operator[]";
        *&buf[12] = 1024;
        *&buf[14] = 468;
        *&buf[18] = 2048;
        *&buf[20] = v19;
        v296 = 2048;
        v297 = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_461;
      }

LABEL_442:
      LODWORD(v253) = *(v244 + 48);
      if (v253 <= v3 + 1)
      {
        v253 = (v3 + 1);
      }

      else
      {
        v253 = v253;
      }

      while (v253 - 1 != v3)
      {
        v3 = (v3 + 1);
        if ((*(*(v244 + 32) + 24 * v3) & 0x80000000) != 0)
        {
          goto LABEL_449;
        }
      }

      v3 = v253;
LABEL_449:
      ;
    }

    while (v3 != v278);
    v243 = *(v5 + 24);
LABEL_451:
    if (v243 <= v238 + 1)
    {
      v254 = v238 + 1;
    }

    else
    {
      v254 = v243;
    }

    while (v254 - 1 != v238)
    {
      LODWORD(v238) = v238 + 1;
      if ((*(v5[10] + 72 * v238) & 0x80000000) != 0)
      {
        goto LABEL_458;
      }
    }

    LODWORD(v238) = v254;
LABEL_458:
    ;
  }

  while (v238 != v276);
LABEL_416:
  if (v5)
  {
    v241 = v5 + 1;
  }

  *a3 = 1;
  *(a3 + 8) = v5;
  if (v280 && (BYTE8(v280) & 1) != 0)
  {
    (*(*v280 + 40))(v280, v281);
  }

  v242 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
  if (v287 && v288)
  {
    (*(*v287 + 40))(v242);
  }

  if (v5)
  {
  }
}

uint64_t re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    v7 = *(a3 + 8);
    *(result + 16) = *a3;
    *(result + 24) = v7;
    *a3 = 0;
    *(a3 + 8) = 0;
    v8 = *(result + 32);
    *(result + 32) = *(a3 + 16);
    *(a3 + 16) = v8;
    *(result + 40) = *(a3 + 24);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(uint64_t a1, const re::DynamicString *a2, const re::DynamicString *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v17 = re::DynamicString::DynamicString(a1, a2);
  re::DynamicString::DynamicString((v17 + 32), a3);
  *(a1 + 64) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 192) = &unk_1F5CC38C8;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  re::ShaderParameterTable::operator=((a1 + 64), a4);
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = &unk_1F5CC8148;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 1108) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 1072), a5);
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0x7FFFFFFF00000000;
  *(a1 + 1160) = 0;
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1 + 1168, a6);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1 + 1216, a7);
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1296) = 0x7FFFFFFF00000000;
  *(a1 + 1304) = 0;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 1264), a8);
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 1312), a9);
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1408) = 0x7FFFFFFF00000000;
  *(a1 + 1416) = 0;
  v18 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 1376), a10);
  *(a1 + 1424) = 0u;
  re::make::shared::object<re::FunctionReflectionCache>(v18, &v23);
  v19 = *(a1 + 1432);
  *(a1 + 1432) = v23;
  v23 = v19;
  if (v19)
  {
  }

  v20 = dispatch_group_create();

  v21 = *(a1 + 1424);
  *(a1 + 1424) = v20;

  return a1;
}

uint64_t re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  re::DynamicString::setCapacity((a1 + 32), 0);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 192) = &unk_1F5CC38C8;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 720) = &unk_1F5CC8148;
  *(a1 + 908) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 1108) = 0x7FFFFFFFLL;
  *(a1 + 1152) = 0;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1156) = 0x7FFFFFFFLL;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1204) = 0x7FFFFFFFLL;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1252) = 0x7FFFFFFFLL;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1300) = 0x7FFFFFFFLL;
  *(a1 + 1408) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1412) = 0x7FFFFFFFLL;
  *(a1 + 1424) = 0u;
  re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=((a1 + 32), (a2 + 4));
  re::ShaderParameterTable::operator=((a1 + 64), a2 + 8);
  re::TextureParameterTable::operator=((a1 + 592), a2 + 74);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(a1 + 1072, (a2 + 134));
  re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1120, (a2 + 140));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1168, (a2 + 146));
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1216, (a2 + 152));
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1264, (a2 + 158));
  re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1376, (a2 + 172));
  if (a1 == a2)
  {
    v5 = a2 + 179;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1432), a2[179]);
  }

  else
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 1312), a2 + 164);
    v5 = a2 + 179;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1432), a2[179]);
    v6 = a2[178];
    a2[178] = 0;
    v7 = *(a1 + 1424);
    *(a1 + 1424) = v6;
  }

  if (*v5)
  {

    *v5 = 0;
  }

  return a1;
}

uint64_t re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

re::MaterialDefinitionBuilder *re::MaterialDefinitionBuilder::operator=(re::MaterialDefinitionBuilder *this, uint64_t *a2)
{
  if (this != a2)
  {
    re::MaterialDefinitionBuilder::destroy(this);
    re::DynamicString::operator=(this, a2);
    re::DynamicString::operator=((this + 32), (a2 + 4));
    re::ShaderParameterTable::operator=(this + 8, a2 + 8);
    re::TextureParameterTable::operator=(this + 74, a2 + 74);
    re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(this + 1072, (a2 + 134));
    re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1120, (a2 + 140));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1168, (a2 + 146));
    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1216, (a2 + 152));
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1264, (a2 + 158));
    re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1376, (a2 + 172));
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(this + 164, a2 + 164);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 179, a2[179]);
    v4 = a2[178];
    a2[178] = 0;
    v5 = *(this + 178);
    *(this + 178) = v4;

    v6 = a2[179];
    if (v6)
    {

      a2[179] = 0;
    }
  }

  return this;
}

void re::MaterialDefinitionBuilder::destroy(re::MaterialDefinitionBuilder *this)
{
  v2 = *(this + 178);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = *(this + 179);
  if (v3)
  {

    *(this + 179) = 0;
  }

  v4 = *(this + 288);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 142);
    while (1)
    {
      v7 = *v6;
      v6 += 14;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 288);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    re::internal::destroyPersistent<re::TechniqueDefinitionBuilder>("destroy", 1394, *(*(this + 142) + 56 * v5 + 40));
    v8 = *(this + 288);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(this + 142) + 56 * v5) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v5) = v8;
LABEL_18:
    ;
  }

  re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(this + 1120);
}

void re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(re::MaterialDefinitionBuilder *this)
{
  re::MaterialDefinitionBuilder::destroy(this);
  v2 = *(this + 179);
  if (v2)
  {

    *(this + 179) = 0;
  }

  re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 172);
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(this + 1312);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 158);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 152);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 146);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 140);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 134);
  re::TextureParameterTable::~TextureParameterTable((this + 592));
  re::ShaderParameterTable::~ShaderParameterTable((this + 64));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

re *re::internal::destroyPersistent<re::TechniqueDefinitionBuilder>(re *result, uint64_t a2, re::TechniqueDefinitionBuilder *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::TechniqueDefinitionBuilder::~TechniqueDefinitionBuilder(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_207, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 56;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::MaterialDefinitionBuilder::addTechnique@<X0>(re::MaterialDefinitionBuilder *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  v7 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v20, this + 1120, a2, v6);
  if (HIDWORD(v20) == 0x7FFFFFFF)
  {
    v8 = re::globalAllocators(v7);
    v9 = (*(*v8[2] + 32))(v8[2], 696, 8);
    bzero(v9, 0x2B8uLL);
    v11 = re::DynamicString::setCapacity(v9, 0);
    *(v9 + 7) = 0u;
    *(v9 + 5) = 0u;
    v12 = re::DynamicString::setCapacity(v9 + 5, 0);
    *(v9 + 30) = 0;
    *(v9 + 13) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 124) = 0x7FFFFFFFLL;
    *(v9 + 10) = 0u;
    *(v9 + 9) = 0u;
    re::DynamicString::setCapacity(v9 + 18, 0);
    *(v9 + 56) = 0;
    *(v9 + 12) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 228) = 0x7FFFFFFFLL;
    v9[30] = 0xFFFF000100010000;
    *(v9 + 124) = 1792;
    *(v9 + 250) = 4;
    *(v9 + 252) = xmmword_1E30A1FE0;
    *(v9 + 67) = 5;
    v9[34] = 0xF00000000;
    v9[38] = 0;
    v9[39] = 0;
    v9[37] = 0;
    *(v9 + 80) = 0;
    v9[35] = 0;
    *(v9 + 285) = 0;
    v9[64] = 0;
    *(v9 + 520) = 0;
    *(v9 + 67) = 0u;
    *(v9 + 69) = 0u;
    *(v9 + 142) = 0;
    *(v9 + 41) = 0u;
    *(v9 + 43) = 0u;
    *(v9 + 90) = 0;
    *(v9 + 23) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 25) = 0u;
    *(v9 + 26) = 0u;
    *(v9 + 27) = 0u;
    *(v9 + 28) = 0u;
    *(v9 + 116) = 0;
    *(v9 + 59) = 0u;
    *(v9 + 61) = 0u;
    *(v9 + 126) = 0;
    *(v9 + 572) = 0x7FFFFFFFLL;
    *(v9 + 154) = 0;
    *(v9 + 73) = 0u;
    *(v9 + 75) = 0u;
    *(v9 + 620) = 0x7FFFFFFFLL;
    *(v9 + 166) = 0;
    *(v9 + 79) = 0u;
    *(v9 + 81) = 0u;
    *(v9 + 668) = 0x7FFFFFFFLL;
    *(v9 + 170) = 0;
    *(v9 + 171) = 0x10000;
    *(v9 + 688) = 0;
    re::DynamicString::operator=(v9, a2);
    v20 = 0uLL;
    v21 = 0;
    v13 = re::Hash<re::DynamicString>::operator()(&v23, a2);
    result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v20, this + 1120, a2, v13);
    if (HIDWORD(v20) == 0x7FFFFFFF)
    {
      v15 = re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 1120, DWORD2(v20), v20);
      result = re::DynamicString::DynamicString((v15 + 8), a2);
      *(v15 + 40) = v9;
      ++*(this + 290);
    }

    *a3 = 1;
    *(a3 + 8) = v9;
  }

  else
  {
    if (*(a2 + 1))
    {
      v16 = *(a2 + 2);
    }

    else
    {
      v16 = a2 + 9;
    }

    result = re::DynamicString::format("Duplicate technique added to MaterialBuilder %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    v19 = v22;
    *a3 = 0;
    *(a3 + 8) = v17;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
  }

  return result;
}

uint64_t re::MaterialBuilder::MaterialBuilder(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = *a5;
  *(a1 + 8) = v16;
  if (v16 == 1)
  {
    *(a1 + 9) = a5[1];
  }

  v17 = a5[2];
  *(a1 + 10) = v17;
  if (v17 == 1)
  {
    *(a1 + 11) = a5[3];
  }

  v18 = a5[4];
  *(a1 + 12) = v18;
  if (v18 == 1)
  {
    *(a1 + 13) = a5[5];
  }

  v19 = a5[6];
  *(a1 + 14) = v19;
  if (v19 == 1)
  {
    *(a1 + 15) = a5[7];
  }

  v20 = a5[8];
  *(a1 + 16) = v20;
  if (v20 == 1)
  {
    *(a1 + 17) = a5[9];
  }

  v21 = a5[10];
  *(a1 + 18) = v21;
  if (v21 == 1)
  {
    *(a1 + 19) = a5[11];
  }

  v22 = a5[12];
  *(a1 + 20) = v22;
  if (v22 == 1)
  {
    *(a1 + 21) = a5[13];
  }

  v23 = a5[14];
  *(a1 + 22) = v23;
  if (v23 == 1)
  {
    *(a1 + 23) = a5[15];
  }

  v24 = a5[16];
  *(a1 + 24) = v24;
  if (v24 == 1)
  {
    *(a1 + 25) = a5[17];
  }

  v25 = a5[18];
  *(a1 + 26) = v25;
  if (v25 == 1)
  {
    *(a1 + 27) = a5[19];
  }

  v26 = *a2;
  *(a1 + 32) = *a2;
  if (v26)
  {
    v27 = (v26 + 8);
  }

  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 76) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 40), a4);
  *(a1 + 144) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 124) = 0x7FFFFFFFLL;
  *(a1 + 136) = 1;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = &unk_1F5CC38C8;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 544) = 1;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0;
  v28 = re::ShaderParameterTable::operator=((a1 + 144), a3);
  v28[95] = 0;
  *(v28 + 91) = 0u;
  *(v28 + 93) = 0u;
  *(v28 + 87) = 0u;
  *(v28 + 89) = 0u;
  *(v28 + 83) = 0u;
  *(v28 + 85) = 0u;
  *(v28 + 33) = 0u;
  *(v28 + 34) = 0u;
  *(v28 + 35) = 0u;
  *(v28 + 36) = 0u;
  *(v28 + 37) = 0u;
  *(v28 + 38) = 0u;
  *(v28 + 39) = 0u;
  *(v28 + 40) = 0u;
  v28[82] = &unk_1F5CC8148;
  *(v28 + 48) = 0u;
  *(v28 + 49) = 0u;
  *(v28 + 50) = 0u;
  *(v28 + 51) = 0u;
  *(v28 + 52) = 0u;
  *(v28 + 844) = 0u;
  v28[128] = 0;
  *(v28 + 62) = 0u;
  *(v28 + 63) = 0u;
  *(v28 + 60) = 0u;
  *(v28 + 61) = 0u;
  *(v28 + 58) = 0u;
  *(v28 + 59) = 0u;
  *(v28 + 56) = 0u;
  *(v28 + 57) = 0u;
  *(v28 + 54) = 0u;
  *(v28 + 55) = 0u;
  v29 = a6[1];
  v28[126] = *a6;
  v28[127] = v29;
  *a6 = 0;
  a6[1] = 0;
  v30 = v28[128];
  v28[128] = a6[2];
  a6[2] = v30;
  v28[131] = 0;
  *(v28 + 129) = 0u;
  v31 = a6[4];
  v28[129] = a6[3];
  v28[130] = v31;
  a6[3] = 0;
  a6[4] = 0;
  v32 = v28[131];
  v28[131] = a6[5];
  a6[5] = v32;
  *(v28 + 264) = 0;
  *(v28 + 133) = 0u;
  *(v28 + 135) = 0u;
  *(v28 + 137) = 0u;
  *(v28 + 139) = 0u;
  v28[141] = 0;
  v28[142] = a8;
  *(v28 + 1144) = 0;
  *(v28 + 1192) = a9;
  if (*(v28 - 14))
  {
    v33 = *(a7 + 8);
    if (v33)
    {
      v34 = v33 >> 1;
    }

    else
    {
      v34 = v33 >> 1;
    }

    if (v34)
    {
      v35 = re::globalAllocators(v28);
      v36 = (*(*v35[2] + 32))(v35[2], v34 + 1, 0);
      *a1 = v36;
      if (*(a7 + 8))
      {
        v37 = *(a7 + 16);
      }

      else
      {
        v37 = (a7 + 9);
      }
    }

    else
    {
      v38 = strlen(*(*a2 + 1424));
      v39 = re::globalAllocators(v38);
      v36 = (*(*v39[2] + 32))(v39[2], v38 + 1, 0);
      *a1 = v36;
      v37 = *(*a2 + 1424);
    }

    v40 = strcpy(v36, v37);
    re::make::shared::object<re::FunctionReflectionCache>(v40, &v47);
    v41 = *(a1 + 1224);
    *(a1 + 1224) = v47;
    v47 = v41;
    if (v41)
    {
    }

    v42 = dispatch_group_create();

    v43 = *(a1 + 1208);
    *(a1 + 1208) = v42;

    v44 = dispatch_group_create();
    v45 = *(a1 + 1216);
    *(a1 + 1216) = v44;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1200) = 8;
  }

  return a1;
}

re::MaterialBuilder *re::MaterialBuilder::MaterialBuilder(re::MaterialBuilder *this)
{
  v42 = 0;
  bzero(v11, 0x210uLL);
  v11[16] = &unk_1F5CC38C8;
  memset(&v11[17], 0, 24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = 0;
  v23 = 0;
  v30 = 1;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  re::MaterialBuilder::MaterialBuilder(this, &v42, v11, v9, v7, v6, &v4, 0, 0);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  re::FixedArray<re::LinkedFunction>::deinit(&v6[1] + 1);
  re::FixedArray<re::LinkedFunction>::deinit(v6);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  re::ShaderParameterTable::~ShaderParameterTable(v11);
  *(this + 300) = 8;
  return this;
}

uint64_t re::MaterialBuilder::MaterialBuilder(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0x7FFFFFFFLL;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0x7FFFFFFFLL;
  *(a1 + 136) = 1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 272) = &unk_1F5CC38C8;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 544) = 1;
  *(a1 + 552) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 904) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 800) = &unk_1F5CC8148;
  *(a1 + 988) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1272) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *a1 = *a2;
  re::MaterialRenderFlags::operator=((a1 + 8), (a2 + 8));
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 40, a2 + 40);
  re::ShaderParameterTable::operator=((a1 + 144), (a2 + 144));
  re::TextureParameterTable::operator=((a1 + 672), (a2 + 672));
  *(a1 + 1200) = *(a2 + 1200);
  if (a1 != a2)
  {
    v5 = *(a2 + 1208);
    *(a2 + 1208) = 0;
    v6 = *(a1 + 1208);
    *(a1 + 1208) = v5;

    v7 = *(a2 + 1216);
    *(a2 + 1216) = 0;
    v8 = *(a1 + 1216);
    *(a1 + 1216) = v7;
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1224), *(a2 + 1224));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1152), (a2 + 1152));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1176), (a2 + 1176));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1232), (a2 + 1232));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1256), (a2 + 1256));
  *(a1 + 1280) = *(a2 + 1280);
  if ((*(a1 + 1288) & 1) == 0)
  {
    if ((*(a2 + 1288) & 1) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 1288) = 1;
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray((a1 + 1296), a2 + 1296);
    goto LABEL_15;
  }

  if ((*(a2 + 1288) & 1) == 0)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit((a1 + 1296));
    *(a1 + 1288) = 0;
    goto LABEL_16;
  }

  if (a1 != a2)
  {
    v9 = *(a2 + 1296);
    if (*(a1 + 1296))
    {
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v9)
    {
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::init<>((a1 + 1296), v9, *(a2 + 1304));
LABEL_14:
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::copy(a1 + 1296, a2 + 1296);
    }
  }

LABEL_15:
  *(a1 + 1320) = *(a2 + 1320);
LABEL_16:
  *(a1 + 1336) = *(a2 + 1336);
  v10 = *(a2 + 32);
  if (v10)
  {

    *(a2 + 32) = 0;
  }

  *a2 = 0;
  v11 = *(a2 + 1224);
  if (v11)
  {

    *(a2 + 1224) = 0;
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

re::MaterialBuilder *re::MaterialBuilder::operator=(re::MaterialBuilder *this, uint64_t a2)
{
  if (this != a2)
  {
    re::MaterialBuilder::destroy(this);
    *this = *a2;
    re::MaterialRenderFlags::operator=(this + 8, (a2 + 8));
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 32);
    *(a2 + 32) = v4;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 40, a2 + 40);
    re::ShaderParameterTable::operator=(this + 18, (a2 + 144));
    re::TextureParameterTable::operator=(this + 84, (a2 + 672));
    *(this + 300) = *(a2 + 1200);
    v5 = *(a2 + 1208);
    *(a2 + 1208) = 0;
    v6 = *(this + 151);
    *(this + 151) = v5;

    v7 = *(a2 + 1216);
    *(a2 + 1216) = 0;
    v8 = *(this + 152);
    *(this + 152) = v7;

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 153, *(a2 + 1224));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 144, (a2 + 1152));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 147, (a2 + 1176));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 154, (a2 + 1232));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 157, (a2 + 1256));
    *(this + 160) = *(a2 + 1280);
    re::Optional<re::FunctionConstantsEnumerator>::operator=(this + 1288, a2 + 1288);
    *(this + 1336) = *(a2 + 1336);
    v9 = *(a2 + 32);
    if (v9)
    {

      *(a2 + 32) = 0;
    }

    *a2 = 0;
    v10 = *(a2 + 1224);
    if (v10)
    {

      *(a2 + 1224) = 0;
    }
  }

  return this;
}

void re::MaterialBuilder::destroy(re::MaterialBuilder *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *this;
  if (*this)
  {
    v4 = re::globalAllocators(this);
    (*(*v4[2] + 40))(v4[2], v3);
    *this = 0;
  }

  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(this + 154);
  v5 = *(this + 153);
  if (v5)
  {

    *(this + 153) = 0;
  }

  *(this + 300) = 8;
}

void re::MaterialBuilder::~MaterialBuilder(re::MaterialBuilder *this)
{
  re::MaterialBuilder::destroy(this);
  if (*(this + 1288) == 1)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(this + 162);
  }

  re::FixedArray<re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>>::deinit(this + 157);
  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(this + 154);
  v2 = *(this + 153);
  if (v2)
  {

    *(this + 153) = 0;
  }

  re::FixedArray<re::LinkedFunction>::deinit(this + 147);
  re::FixedArray<re::LinkedFunction>::deinit(this + 144);
  re::TextureParameterTable::~TextureParameterTable((this + 672));
  re::ShaderParameterTable::~ShaderParameterTable((this + 144));
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 11);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 5);
  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }
}

double re::MaterialBuilder::addOrReplaceFunctionConstants@<D0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v40 = *MEMORY[0x1E69E9840];
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a4, a2);
  ++*(a4 + 24);
  if (a2)
  {
    v9 = 0;
    v10 = (v6 + 104 * a2);
    v11 = 104 * a2;
    v12 = v6;
    do
    {
      if (*(v12 + 8))
      {
        v13 = *(v12 + 2);
      }

      else
      {
        v13 = v12 + 9;
      }

      v14 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, v13);
      if (v14)
      {
        *&result = re::DynamicArray<re::TechniqueFunctionConstant>::add(a4, v14).n128_u64[0];
        ++v9;
      }

      else
      {
        *&result = re::DynamicArray<re::TechniqueFunctionConstant>::add(a4, v12).n128_u64[0];
      }

      v12 = (v12 + 104);
      v11 -= 104;
    }

    while (v11);
    if (v9 >= *(a3 + 28))
    {
      return result;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = 0x7FFFFFFFLL;
    do
    {
      re::DynamicString::DynamicString(&v32, v6);
      v35 = *(v6 + 2);
      v15 = *(v6 + 3);
      v16 = *(v6 + 4);
      v17 = *(v6 + 5);
      v39 = *(v6 + 24);
      v37 = v16;
      v38 = v17;
      v36 = v15;
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v28, &v32);
      if (v32 && (v33 & 1) != 0)
      {
        (*(*v32 + 40))(v32, v34, v18, v19, v20, v21);
      }

      v6 = (v6 + 104);
    }

    while (v6 != v10);
  }

  else
  {
    if (!*(a3 + 28))
    {
      return result;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = 0x7FFFFFFFLL;
  }

  v22 = *(a3 + 32);
  if (v22)
  {
    v23 = 0;
    v24 = *(a3 + 16);
    while (1)
    {
      v25 = *v24;
      v24 += 38;
      if (v25 < 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        LODWORD(v23) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  if (v23 != v22)
  {
    v26 = *(a3 + 16);
    do
    {
      if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(&v28, v26 + 152 * v23 + 8))
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::add(a4, (v26 + 152 * v23 + 40));
      }

      v27 = *(a3 + 32);
      if (v27 <= v23 + 1)
      {
        v27 = v23 + 1;
      }

      v26 = *(a3 + 16);
      while (v27 - 1 != v23)
      {
        LODWORD(v23) = v23 + 1;
        if ((*(v26 + 152 * v23) & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v23) = v27;
LABEL_36:
      ;
    }

    while (v23 != v22);
  }

  return re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v28);
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v7 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v7, v3, v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 152 * v6 + 40;
  }
}

void re::MaterialBuilder::tickBuilder(re::MaterialBuilder *this@<X0>, re::RenderManager *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = this;
  v139[10] = *MEMORY[0x1E69E9840];
  v6 = *(this + 300);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v7 = *(this + 153);
      v8 = *(this + 145);
      if (v8)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = *(v4 + 146) + 200 * v9;
          if (!*(v11 + 48))
          {
            info = 0uLL;
            LODWORD(v134) = 0;
            v133 = 0;
            memset(v135, 0, 40);
            re::DynamicString::setCapacity(&v135[8], 0);
            v131 = 0;
            v130 = 0;
            v12 = *(v11 + 72);
            v130 = *(v11 + 80);
            v131 = v12;
            re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&info, &v130);
            v13 = strlen(*(v11 + 32));
            v130 = *(v11 + 32);
            v131 = v13;
            re::DynamicString::operator=(&v135[8], &v130);
            *&v135[40] = *(v11 + 40);
            *&v136 = (((*&v135[40] << 6) - 0x61C8864680B583E9 + (*&v135[40] >> 2) + (*(v11 + 24) >> 1)) ^ *&v135[40]) - 0x61C8864680B583E9;
            re::FunctionReflectionCache::addTask(v7, &info);
            if (*&v135[8])
            {
              if (v135[16])
              {
                (*(**&v135[8] + 40))();
              }

              memset(&v135[8], 0, 32);
            }

            this = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&info);
            v8 = *(v4 + 145);
          }

          v9 = v10;
          v14 = v8 > v10++;
        }

        while (v14);
      }

      v15 = *(v4 + 148);
      if (v15)
      {
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = *(v4 + 149) + 200 * v16;
          if (!*(v18 + 48))
          {
            info = 0uLL;
            LODWORD(v134) = 0;
            v133 = 0;
            memset(v135, 0, 40);
            re::DynamicString::setCapacity(&v135[8], 0);
            v131 = 0;
            v130 = 0;
            v19 = *(v18 + 72);
            v130 = *(v18 + 80);
            v131 = v19;
            re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&info, &v130);
            v20 = strlen(*(v18 + 32));
            v130 = *(v18 + 32);
            v131 = v20;
            re::DynamicString::operator=(&v135[8], &v130);
            *&v135[40] = *(v18 + 40);
            *&v136 = (((*&v135[40] << 6) - 0x61C8864680B583E9 + (*&v135[40] >> 2) + (*(v18 + 24) >> 1)) ^ *&v135[40]) - 0x61C8864680B583E9;
            re::FunctionReflectionCache::addTask(v7, &info);
            if (*&v135[8])
            {
              if (v135[16])
              {
                (*(**&v135[8] + 40))();
              }

              memset(&v135[8], 0, 32);
            }

            this = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&info);
            v15 = *(v4 + 148);
          }

          v16 = v17;
          v14 = v15 > v17++;
        }

        while (v14);
      }

      v3 = a2;
      if (*(*(v4 + 153) + 88))
      {
        *(v4 + 300) = 1;
        v21 = *(*(v4 + 4) + 120);
        v22 = *(*(v4 + 4) + 120);
        v24 = mach_absolute_time();
        v25 = *(v4 + 153);
        *(v25 + 16) = v24;
        v129 = *(v4 + 151);
        re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(v25, a2, &v129);
      }

      if (*(v4 + 300) != 1)
      {
LABEL_32:
        *(v4 + 300) = 2;
        goto LABEL_33;
      }
    }

    if (dispatch_group_wait(*(v4 + 151), 0))
    {
      goto LABEL_34;
    }

    v26 = *(v4 + 153);
    if (*(v26 + 88))
    {
      goto LABEL_34;
    }

    v128 = *(v4 + 152);
    re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(v26, v3, &v128, 1, *(v4 + 160));

    goto LABEL_32;
  }

  if (v6 == 2)
  {
LABEL_33:
    if (dispatch_group_wait(*(v4 + 152), 0))
    {
      goto LABEL_34;
    }

    re::fillLinkedArgumentsWithReflection((v4 + 1152), *(v4 + 153), v126);
    if (v126[0] == 1)
    {
    }

    re::fillLinkedArgumentsWithReflection((v4 + 1176), *(v4 + 153), v124);
    if (v124[0] == 1)
    {
    }

    re::validateMaterialFunctionReflection(v3 + 26, v4 + 1152, 3, "realitykit::geometry_parameters", "realitykit::geometry_parameters_private", "realitykit::ui_geometry_parameters_private", &v130);
    if (v130 == 1)
    {
      v27 = re::ObjCObject::description(&v131);
      v28 = 0;
      v29 = info;
      v30 = v133;
      v31 = v134;
      *a3 = 0;
      *(a3 + 8) = v29;
      *(a3 + 24) = v30;
      *(a3 + 32) = v31;
    }

    else
    {
      re::validateMaterialFunctionReflection(v3 + 26, v4 + 1176, 4, "realitykit::surface_parameters", "realitykit::surface_parameters_private", "realitykit::ui_surface_parameters_private", &v138);
      if (v138 == 1)
      {
        v32 = re::ObjCObject::description(v139);
        v28 = 0;
        v33 = info;
        v34 = v133;
        v35 = v134;
        *a3 = 0;
        *(a3 + 8) = v33;
        *(a3 + 24) = v34;
        *(a3 + 32) = v35;
      }

      else if (*(v3 + 205))
      {
        re::completeLinkedFunctions(v4 + 1152, v4 + 88, v4 + 136);
        re::MaterialBuilder::createFunctionBuildTasks(v4);
        v37 = *(v4 + 153);
        if (*(v37 + 88))
        {
          *(v4 + 300) = 3;
          if (!*(v4 + 154))
          {
            v38 = *(*(v4 + 4) + 120);
            v39 = *(*(v4 + 4) + 120);
            v41 = mach_absolute_time();
            v37 = *(v4 + 153);
            *(v37 + 16) = v41;
          }

          v123 = *(v4 + 151);
          re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(v37, v3, &v123);
        }

        if (*(v4 + 300) != 3)
        {
          *(v4 + 300) = 6;
        }

        v28 = 1;
      }

      else
      {
        v28 = 0;
        *(v4 + 300) = 7;
        *a3 = 1;
        *(a3 + 8) = 1;
      }

      if (v138 == 1)
      {
      }
    }

    if (v130 == 1)
    {
    }

    if (!v28)
    {
      return;
    }

    v6 = *(v4 + 300);
    v3 = a2;
    goto LABEL_59;
  }

  if (v6 == 8)
  {
LABEL_34:
    *a3 = 1;
    *(a3 + 8) = 0;
    return;
  }

LABEL_59:
  if (v6 == 5)
  {
    v108 = a3;
    v73 = *(v4 + 158);
    if (v73)
    {
      v74 = *(v4 + 159);
      v75 = v74 + 40 * v73;
      do
      {
        info = 0uLL;
        LODWORD(v133) = 1;
        v134 = 0;
        *v135 = 0;
        if (*v74)
        {
          v76 = *(v74 + 8);
          *&info = *v74;
          re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&info, v76);
          v77 = v133;
          v78 = v133 + 2;
          LODWORD(v133) = v133 + 2;
          v79 = *(v74 + 8);
          v80 = *(&info + 1);
          if (v79 >= *(&info + 1))
          {
            re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&info, *(v74 + 8));
            v89 = *(v74 + 16) & 1;
            v90 = *(v74 + 32);
            if (v89)
            {
              v91 = (v74 + 24);
            }

            else
            {
              v91 = *(v74 + 32);
            }

            v92 = *(&info + 1);
            v93 = v133;
            if (*(&info + 1))
            {
              if (v133)
              {
                v94 = &v134;
              }

              else
              {
                v94 = *v135;
              }

              v95 = 8 * *(&info + 1);
              do
              {
                v96 = *v91++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v94++, v96);
                v95 -= 8;
              }

              while (v95);
              v93 = v133;
              v92 = *(&info + 1);
              v90 = *(v74 + 32);
              v89 = *(v74 + 16) & 1;
            }

            if (v89)
            {
              v90 = v74 + 24;
            }

            if (v92 != v79)
            {
              if (v93)
              {
                v97 = &v134;
              }

              else
              {
                v97 = *v135;
              }

              v98 = (v90 + 8 * v92);
              v99 = &v97[v92];
              v100 = 8 * v79 - 8 * v92;
              do
              {
                v101 = *v98;
                *v99 = *v98;
                if (v101)
                {
                  v102 = (v101 + 8);
                }

                ++v98;
                ++v99;
                v100 -= 8;
              }

              while (v100);
            }
          }

          else
          {
            if (*(v74 + 16))
            {
              v81 = (v74 + 24);
            }

            else
            {
              v81 = *(v74 + 32);
            }

            v82 = *v135;
            if (v79)
            {
              if (v77)
              {
                v83 = &v134;
              }

              else
              {
                v83 = *v135;
              }

              v84 = 8 * v79;
              do
              {
                v85 = *v81++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v83++, v85);
                v84 -= 8;
              }

              while (v84);
              v78 = v133;
              v82 = *v135;
              v80 = *(&info + 1);
            }

            if (v78)
            {
              v86 = &v134;
            }

            else
            {
              v86 = v82;
            }

            if (v79 != v80)
            {
              v87 = &v86[v79];
              v88 = 8 * v80 - 8 * v79;
              do
              {
                if (*v87)
                {

                  *v87 = 0;
                }

                ++v87;
                v88 -= 8;
              }

              while (v88);
            }
          }

          *(&info + 1) = v79;
          v103 = (v133 & 1) != 0 ? &v134 : *v135;
          if (v79)
          {
            for (i = 8 * v79; i; i -= 8)
            {
              v105 = *v103;
              if (*v103)
              {
                v106 = (v105 + 8);
                v107 = atomic_load((v105 + 208));
                if (v107 == 1)
                {
                  *v108 = 1;
                  *(v108 + 8) = 0;

                  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&info);
                  return;
                }
              }

              ++v103;
            }
          }
        }

        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&info);
        v74 += 40;
      }

      while (v74 != v75);
    }

    *(v4 + 300) = 6;
    a3 = v108;
    goto LABEL_171;
  }

  if (v6 == 4)
  {
    goto LABEL_65;
  }

  if (v6 != 3)
  {
LABEL_171:
    *a3 = 1;
    *(a3 + 8) = 1;
    return;
  }

  if (dispatch_group_wait(*(v4 + 151), 0))
  {
    goto LABEL_34;
  }

  v42 = *(v4 + 153);
  if (*(v42 + 88))
  {
    goto LABEL_34;
  }

  v122 = *(v4 + 152);
  re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(v42, v3, &v122, 1, *(v4 + 160));

  *(v4 + 300) = 4;
LABEL_65:
  if (dispatch_group_wait(*(v4 + 152), 0))
  {
    goto LABEL_34;
  }

  v43 = *(v4 + 4);
  if (*(v43 + 120))
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(*(v43 + 128) + 8 * v44);
      if (*(v46 + 2845) == 1 && re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(v46, v45))
      {
        re::MaterialBuilder::addOrReplaceFunctionConstants(*(v46 + 64), *(v46 + 56), v4 + 40, v119);
        v117 = 0;
        memset(v116, 0, sizeof(v116));
        v118 = 0x7FFFFFFFLL;
        v115 = 0;
        memset(v113, 0, sizeof(v113));
        v114 = 0;
        v47 = *(v46 + 2776);
        if (v47)
        {
          v48 = 0;
          v49 = *(v46 + 2760);
          do
          {
            v50 = *v49;
            v49 += 38;
            if (v50 < 0)
            {
              goto LABEL_87;
            }

            ++v48;
          }

          while (v47 != v48);
          LODWORD(v48) = *(v46 + 2776);
        }

        else
        {
          LODWORD(v48) = 0;
        }

        while (1)
        {
LABEL_87:
          if (v48 == v47)
          {
            v57 = *(v4 + 30);
            if (v57)
            {
              v58 = 0;
              v59 = *(v4 + 13);
              do
              {
                v60 = *v59;
                v59 += 38;
                if (v60 < 0)
                {
                  goto LABEL_105;
                }

                ++v58;
              }

              while (v57 != v58);
              LODWORD(v58) = *(v4 + 30);
            }

            else
            {
              LODWORD(v58) = 0;
            }

            while (1)
            {
LABEL_105:
              if (v58 == v57)
              {
                if (v120)
                {
                  v67 = v121;
                  v68 = (v121 + 104 * v120);
                  do
                  {
                    re::DynamicString::DynamicString(&info, v67);
                    *v135 = *(v67 + 2);
                    v69 = *(v67 + 3);
                    v70 = *(v67 + 4);
                    v71 = *(v67 + 5);
                    v137 = *(v67 + 24);
                    *&v135[32] = v70;
                    v136 = v71;
                    *&v135[16] = v69;
                    if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v116, &info))
                    {
                      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v116, &info);
                      v72 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v113, &info);
                    }

                    if (info)
                    {
                      if (BYTE8(info))
                      {
                        (*(*info + 40))(v72);
                      }
                    }

                    v67 = (v67 + 104);
                  }

                  while (v67 != v68);
                }

                re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v110, v113);
                re::TechniqueDefinitionBuilder::buildPipelineData(v112, v111, v46, v4 + 1152, a2, *(v4 + 153), 1);
              }

              v61 = *(v4 + 13) + 152 * v58;
              re::DynamicString::DynamicString(&info, (v61 + 40));
              *v135 = *(v61 + 72);
              v62 = *(v61 + 88);
              v63 = *(v61 + 104);
              v64 = *(v61 + 120);
              v137 = *(v61 + 136);
              *&v135[32] = v63;
              v136 = v64;
              *&v135[16] = v62;
              if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v116, &info))
              {
                re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v116, &info);
                v65 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v113, &info);
              }

              if (info && (BYTE8(info) & 1) != 0)
              {
                (*(*info + 40))(v65);
              }

              v66 = *(v4 + 30);
              if (v66 <= v58 + 1)
              {
                v66 = v58 + 1;
              }

              while (v66 - 1 != v58)
              {
                LODWORD(v58) = v58 + 1;
                if ((*(*(v4 + 13) + 152 * v58) & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }
              }

              LODWORD(v58) = v66;
            }
          }

          v51 = *(v46 + 2760) + 152 * v48;
          re::DynamicString::DynamicString(&info, (v51 + 40));
          *v135 = *(v51 + 72);
          v52 = *(v51 + 88);
          v53 = *(v51 + 104);
          v54 = *(v51 + 120);
          v137 = *(v51 + 136);
          *&v135[32] = v53;
          v136 = v54;
          *&v135[16] = v52;
          if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v116, &info))
          {
            re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v116, &info);
            v55 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v113, &info);
          }

          if (info && (BYTE8(info) & 1) != 0)
          {
            (*(*info + 40))(v55);
          }

          v56 = *(v46 + 2776);
          if (v56 <= v48 + 1)
          {
            v56 = v48 + 1;
          }

          while (v56 - 1 != v48)
          {
            LODWORD(v48) = v48 + 1;
            if ((*(*(v46 + 2760) + 152 * v48) & 0x80000000) != 0)
            {
              goto LABEL_87;
            }
          }

          LODWORD(v48) = v56;
        }
      }

      v43 = *(v4 + 4);
      v44 = ++v45;
    }

    while (*(v43 + 120) > v45);
  }

  *(v4 + 300) = 5;
  *a3 = 1;
  *(a3 + 8) = 0;
}

void re::MaterialBuilder::createFunctionBuildTasks(re::MaterialBuilder *this)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B8768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8768))
  {
    re::Defaults::BOOLValue("enableShaderDebugLogs", v25, buf);
    if (buf[0])
    {
      v26 = buf[1];
    }

    else
    {
      v26 = 0;
    }

    byte_1EE1B8689 = v26;
    __cxa_guard_release(&qword_1EE1B8768);
  }

  v2 = *(this + 4);
  if (*(v2 + 120))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(v2 + 128) + 8 * v3);
      if (*(v5 + 2845) == 1)
      {
        shouldCompileFallbackShaderForTechnique = re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(v5, v4);
        if (shouldCompileFallbackShaderForTechnique)
        {
          re::MaterialBuilder::addOrReplaceFunctionConstants(*(v5 + 64), *(v5 + 56), this + 40, v34);
          re::MaterialBuilder::addOrReplaceFunctionConstants(v36, v35, this + 88, buf);
          re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v34, buf);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(buf);
          v32 = 0;
          memset(v31, 0, sizeof(v31));
          v33 = 0x7FFFFFFFLL;
          v30 = 0;
          memset(v28, 0, sizeof(v28));
          v29 = 0;
          v7 = *(v5 + 2776);
          if (v7)
          {
            v8 = 0;
            v9 = *(v5 + 2760);
            while (1)
            {
              v10 = *v9;
              v9 += 38;
              if (v10 < 0)
              {
                break;
              }

              if (v7 == ++v8)
              {
                LODWORD(v8) = *(v5 + 2776);
                break;
              }
            }
          }

          else
          {
            LODWORD(v8) = 0;
          }

LABEL_26:
          while (v8 != v7)
          {
            v13 = *(v5 + 2760) + 152 * v8;
            re::DynamicString::DynamicString(buf, (v13 + 40));
            v39 = *(v13 + 72);
            v14 = *(v13 + 88);
            v15 = *(v13 + 104);
            v16 = *(v13 + 120);
            v43 = *(v13 + 136);
            v41 = v15;
            v42 = v16;
            v40 = v14;
            if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v31, buf))
            {
              re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v31, buf);
              v17 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v28, buf);
            }

            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))(v17);
            }

            v18 = *(v5 + 2776);
            if (v18 <= v8 + 1)
            {
              v18 = v8 + 1;
            }

            while (v18 - 1 != v8)
            {
              LODWORD(v8) = v8 + 1;
              if ((*(*(v5 + 2760) + 152 * v8) & 0x80000000) != 0)
              {
                goto LABEL_26;
              }
            }

            LODWORD(v8) = v18;
          }

          if (v35)
          {
            v19 = v36;
            v20 = (v36 + 104 * v35);
            do
            {
              re::DynamicString::DynamicString(buf, v19);
              v39 = *(v19 + 2);
              v21 = *(v19 + 3);
              v22 = *(v19 + 4);
              v23 = *(v19 + 5);
              v43 = *(v19 + 24);
              v41 = v22;
              v42 = v23;
              v40 = v21;
              if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v31, buf))
              {
                re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v31, buf);
                v24 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v28, buf);
              }

              if (*buf)
              {
                if (buf[8])
                {
                  (*(**buf + 40))(v24);
                }
              }

              v19 = (v19 + 104);
            }

            while (v19 != v20);
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(buf, v28);
          v27[0] = v39;
          v27[1] = v38;
          re::MaterialBuilder::addFunctionsToReflectionCache(v5, v27, *(this + 153));
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(buf);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v28);
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v34);
        }

        else if (byte_1EE1B8689 == 1)
        {
          v11 = *re::graphicsLogObjects(shouldCompileFallbackShaderForTechnique);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *v5;
            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Skipping fallback shader compilation for technique %s", buf, 0xCu);
          }
        }
      }

      v2 = *(this + 4);
      v3 = ++v4;
    }

    while (*(v2 + 120) > v4);
  }
}

uint64_t re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(_anonymous_namespace_ *a1, int a2)
{
  v3 = a1;
  v41 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B8760, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8760);
    if (a1)
    {
      re::Defaults::intValue("shaderCompilationMode", v33, &v37);
      if (v37)
      {
        v34 = HIDWORD(v37);
      }

      else
      {
        v34 = 0;
      }

      dword_1EE1B868C = v34;
      __cxa_guard_release(&qword_1EE1B8760);
    }
  }

  if (dword_1EE1B868C == 2)
  {
    goto LABEL_7;
  }

  if (dword_1EE1B868C == 1)
  {
LABEL_6:
    v5 = 1;
    return v5 & 1;
  }

  v4 = *(v3 + 710);
  if (v4 == 2)
  {
LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  if (v4 == 1)
  {
    goto LABEL_6;
  }

  v7 = *v3;
  re::DynamicString::find(&v37, "_BackCompat", 11, 0, &v39);
  if ((v39 & 1) == 0)
  {
    v8 = strlen(*v3);
    if (v8)
    {
      MurmurHash3_x64_128(*v3, v8, 0, &v39);
      v9 = (&v40[8 * v39 - 0xC3910C8D016B07DLL] + (v39 >> 2) - 1) ^ v39;
    }

    else
    {
      v9 = 0;
    }

    v36 = v9;
    WeakRetained = objc_loadWeakRetained(v3 + 342);
    v11 = WeakRetained - 8;
    if (!WeakRetained)
    {
      v11 = 0;
    }

    v35 = v11;
    if (!*(v11 + 2) || (v12 = *(*(v11 + 3) + 4 * (v9 % *(v11 + 10))), v12 == 0x7FFFFFFF))
    {
LABEL_21:
      v15 = -1;
    }

    else
    {
      v13 = *(v11 + 4);
      v14 = *(*(v11 + 3) + 4 * (v9 % *(v11 + 10)));
      while (*(v13 + 24 * v14 + 8) != v9)
      {
        v14 = *(v13 + 24 * v14) & 0x7FFFFFFF;
        if (v14 == 0x7FFFFFFF)
        {
          goto LABEL_21;
        }
      }

      v22 = 0x7FFFFFFFLL;
      while (*(v13 + 24 * v12 + 8) != v9)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_58;
        }
      }

      v22 = v12;
LABEL_58:
      v15 = *(v13 + 24 * v22 + 16);
    }

    if (*(v11 + 17))
    {
      v16 = *(v11 + 40);
      v17 = *(v11 + 18);
      v18 = *(v17 + 4 * (v15 % v16));
      if (v18 != 0x7FFFFFFF)
      {
        v19 = *(v11 + 19);
        while (*(v19 + 48 * v18 + 8) != v15)
        {
          v18 = *(v19 + 48 * v18) & 0x7FFFFFFF;
          if (v18 == 0x7FFFFFFF)
          {
            goto LABEL_27;
          }
        }

        v23 = v19 + 48 * v18;
        v24 = *(v23 + 24);
        if (v24)
        {
          v5 = 0;
          v25 = *(v23 + 32);
          v26 = 4 * v24;
          do
          {
            v27 = *v25++;
            v5 |= v27 == a2;
            v26 -= 4;
          }

          while (v26);
          goto LABEL_32;
        }

LABEL_56:
        v5 = 0;
LABEL_32:
        v39 = &v36;
        v40 = &v35;
        if (re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "OpaqueLite", "Opaque") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "TransparentLite", "Transparent") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "SurfaceShaderOpaqueLite", "SurfaceShaderOpaque") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "SurfaceShaderTransparentLite", "SurfaceShaderTransparent") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "FadeOpaqueLite", "FadeOpaque") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "SurfaceShaderFadeOpaqueLite", "SurfaceShaderFadeOpaque"))
        {
          v5 = 0;
        }

        if (v35)
        {
        }

        goto LABEL_41;
      }

LABEL_27:
      v20 = *(v17 + 4 * (v9 % v16));
      if (v20 != 0x7FFFFFFF)
      {
        v21 = *(v11 + 19);
        while (*(v21 + 48 * v20 + 8) != v9)
        {
          v20 = *(v21 + 48 * v20) & 0x7FFFFFFF;
          if (v20 == 0x7FFFFFFF)
          {
            goto LABEL_31;
          }
        }

        v28 = v21 + 48 * v20;
        v29 = *(v28 + 24);
        if (v29)
        {
          v5 = 0;
          v30 = *(v28 + 32);
          v31 = 4 * v29;
          do
          {
            v32 = *v30++;
            v5 |= v32 == a2;
            v31 -= 4;
          }

          while (v31);
          goto LABEL_32;
        }

        goto LABEL_56;
      }
    }

LABEL_31:
    v5 = 1;
    goto LABEL_32;
  }

  v5 = 0;
LABEL_41:
  if (v37 && (v38 & 1) != 0)
  {
    (*(*v37 + 40))();
  }

  return v5 & 1;
}