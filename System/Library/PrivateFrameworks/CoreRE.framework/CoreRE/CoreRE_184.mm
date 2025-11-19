void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 48 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
    *(v5 + 24) = *(a2 + 24);
    *(v5 + 32) = *(a2 + 32);
    *(v5 + 40) = *(a2 + 40);
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

__n128 re::MaterialParameterBlock::setBinding@<Q0>(uint64_t *__return_ptr a1@<X8>, char *__s2@<X2>, void *a3@<X0>, void *a4@<X1>, char *a5@<X3>, uint64_t a6@<X4>)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = *(a4 + 12);
  if ((v11 & 8) == 0)
  {
    v30 = *a4;
    result.n128_f64[0] = re::MaterialParameterBlock::setBinding(a3, &v30, __s2, a5, a6, a1);
    return result;
  }

  v13 = 0;
  v31 = 1;
  v14 = *a4;
  v32 = *a4;
  while (1)
  {
    v15 = strcmp(re::s_materialTableIDMappings[v13], __s2);
    if (!v15)
    {
      break;
    }

    if (++v13 == 168)
    {
      LOBYTE(v13) = 0;
      break;
    }
  }

  v33 = v13;
  if (a5)
  {
    v16 = *a5;
    if (*a5)
    {
      v17 = a5[1];
      if (v17)
      {
        v18 = (a5 + 2);
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }

      v16 &= ~0x8000000000000000;
    }
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v34 = v16;
  v20 = v11 & 7;
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      *buf = v14;
      v21 = a3 + 63;
      goto LABEL_27;
    }

    if (v20 == 4)
    {
      *buf = v14;
      v21 = a3 + 79;
      goto LABEL_27;
    }
  }

  else
  {
    if (v20 == 1)
    {
      *buf = v14;
      v21 = a3 + 55;
      goto LABEL_27;
    }

    if (v20 == 2)
    {
      *buf = v14;
      v21 = a3 + 71;
LABEL_27:
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(v21, buf, &v31);
      goto LABEL_28;
    }
  }

  v22 = *re::graphicsLogObjects(v15);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    if (*a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    else if (*a4)
    {
      v23 = re::WeakStringID::debugStr(void)const::msg;
      snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a4);
    }

    else
    {
      v23 = &str_67;
    }

    *buf = 136315138;
    *&buf[4] = v23;
    _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Attempted to set a binding from an invalid handle %s", buf, 0xCu);
  }

LABEL_28:
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a3))
  {
    v24 = *(a4 + 12) & 7;
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v29 = a3[122];
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v29 + 256);
        goto LABEL_38;
      }

      if (v24 == 4)
      {
        v27 = a3[122];
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v27 + 336);
        goto LABEL_38;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v28 = a3[122];
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v28 + 216);
        goto LABEL_38;
      }

      if (v24 == 2)
      {
        v25 = a3[122];
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v25 + 296);
LABEL_38:
        re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::add(v26, buf);
      }
    }
  }

  *a1 = *a4;
  result = *(a4 + 1);
  *(a1 + 1) = result;
  *(a1 + 24) = *(a4 + 24);
  return result;
}

void re::MaterialParameterBlock::addTexture(unint64_t a1, const re::WeakStringID *a2, re::TextureHandle *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 312), a2);
  if (v6 == -1)
  {
    LODWORD(buf[0]) = *(a1 + 80);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew((a1 + 312), a2, buf);
    re::DynamicArray<re::TextureHandle>::add((a1 + 64), a3);
  }

  else
  {
    v7 = *(a1 + 320) + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else if (*a2)
      {
        v9 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v9 = &str_67;
      }

      re::TextureHandle::metalTexture(a3, v17);
      v10 = *v17;
      v11 = [objc_msgSend(*v17 label)];
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = v9;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v11;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable texture (%s) that already exists. Overwiting with new value (%s).", buf, 0x16u);
      if (v10)
      {
      }
    }

    v12 = *(v7 + 8);
    v13 = *(a1 + 80);
    if (v13 <= v12)
    {
      v16[1] = 0;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v17 = 136315906;
      *&v17[4] = "operator[]";
      v18 = 1024;
      v19 = 789;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(a1 + 96) + 16 * v12;
    v16[0] = *a2;
    re::TextureHandle::stopTrackingMaterialParameterBlock(v14, a1, v16);
    re::TextureHandle::operator=(v14, a3);
  }

  v15 = *a2;
  re::TextureHandle::startTrackingMaterialParameterBlock(a3, a1, &v15);
  re::MaterialParameterBlock::enqueueTextureValueChangedDelta(a1, a2, a3);
}

void re::MaterialParameterBlock::enqueueTextureValueChangedDelta(re::MaterialParameterBlock *this, const re::WeakStringID *a2, const re::TextureHandle *a3)
{
  if (*(this + 121) && re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this))
  {
    v6 = *(this + 122);
    v7 = *a2;
    v8 = 1;
    re::TextureHandle::TextureHandle(v9, a3);
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::add((v6 + 136), &v7);
    if (v8 == 1)
    {
      re::TextureHandle::invalidate(v9);
    }
  }
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 32 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    if (*(a2 + 24))
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        *(v5 + 16) = v7;
        *(v5 + 24) = *(a2 + 24);
        *(a2 + 24) = 0;
      }
    }

    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void *re::MaterialParameterBlock::addBuffer(unint64_t *a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 31, a2);
  if (v6 == -1)
  {
    *buf = *(a1 + 120);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 31, a2, buf);
    re::DynamicArray<re::BufferSlice>::add((a1 + 13), a3);
  }

  else
  {
    v7 = a1[32] + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else if (*a2)
      {
        v9 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v9 = &str_67;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable buffer (%s) that already exists. Overwiting with new value.", buf, 0xCu);
    }

    v10 = *(v7 + 8);
    v11 = a1[15];
    if (v11 <= v10)
    {
      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v17 = 136315906;
      *&v17[4] = "operator[]";
      v18 = 1024;
      v19 = 789;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = a1[17] + 40 * v10;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v12, a3);
    *(v12 + 32) = *(a3 + 32);
  }

  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    *v17 = *a2;
    v17[8] = 0;
    *(&v23 + 2) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v17[8], a3);
    v14 = *(a3 + 32);
    v15 = a1[122];
    v24 = v14;
    *buf = *v17;
    buf[8] = 1;
    LOBYTE(v26) = 0;
    DWORD2(v27) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v26, &v17[8]);
    *&v28 = v24;
    result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add((v15 + 96), buf);
    if (buf[8] == 1 && DWORD2(v27) != -1)
    {
      result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[DWORD2(v27)])(&v16, &v26);
    }

    if (*(&v23 + 2) != -1)
    {
      return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[*(&v23 + 2)])(buf, &v17[8]);
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 56 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = 0;
    v7 = v5 + 16;
    *(v7 + 24) = -1;
    this = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v7, a2 + 16);
    *(v7 + 32) = *(a2 + 48);
    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::BufferSlice>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    re::DynamicArray<re::BufferSlice>::removeStableAt(a3, *(i64 + 8));
    v8 = *(i64 + 8);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(a2, &v8);
    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(a2, a1);
  }

  return result;
}

void re::MaterialParameterBlock::addSampler(uint64_t a1, void *a2, id *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 376), a2);
  if (v6 == -1)
  {
    *buf = *(a1 + 160);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew((a1 + 376), a2, buf);
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 144), a3);
  }

  else
  {
    v7 = *(a1 + 384) + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else if (*a2)
      {
        v9 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v9 = &str_67;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a sampler (%s) that already exists. Overwiting with new value.", buf, 0xCu);
    }

    v10 = *(v7 + 8);
    if (*(a1 + 160) <= v10)
    {
      v17 = 0u;
      v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 176) + 8 * v10), a3);
  }

  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v11 = *a2;
    v12 = *a3;
    v13 = *(a1 + 976);
    *buf = v11;
    buf[8] = 1;
    v15[0] = v12;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((v13 + 176), buf);
    if (buf[8] == 1 && v15[0])
    {
    }

    if (v12)
    {
    }
  }
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    this = *(a2 + 16);
    *(v5 + 16) = this;
    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::removeStableAt(a3, *(i64 + 8));
    v8 = *(i64 + 8);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(a2, &v8);
    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(a2, a1);
  }

  return result;
}

void *re::MaterialParameterBlock::addPassTechniqueMapping(re::MaterialParameterBlock *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  DWORD1(v9) = 0x7FFFFFFF;
  v5 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(this + 888, &v10, &v7);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v7);
  re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v5, &v12, &v11);
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this);
  if (result)
  {
    *&v7 = v10;
    *(&v7 + 1) = v12;
    LOBYTE(v8) = 1;
    *(&v8 + 1) = v11;
    LOBYTE(v9) = 0;
    return re::DynamicArray<re::PassTechniqueMappingDelta>::add((*(this + 122) + 496), &v7);
  }

  return result;
}

void *re::DynamicArray<re::PassTechniqueMappingDelta>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::PassTechniqueMappingDelta>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  *v5 = *a2;
  v6 = *(a2 + 16);
  *(v5 + 16) = v6;
  if (v6 == 1)
  {
    *(v5 + 24) = *(a2 + 24);
  }

  *(v5 + 32) = *(a2 + 32);
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::MaterialParameterBlock::removePassTechniqueMapping(re::MaterialParameterBlock *this, unint64_t a2, unint64_t a3)
{
  v15 = a3;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 888, &v15);
  if (result)
  {
    if (*result)
    {
      v6 = a2 % *(result + 6);
      v7 = *(result[1] + 4 * v6);
      if (v7 != 0x7FFFFFFF)
      {
        v8 = result[2];
        v9 = *(result[1] + 4 * v6);
        while (*(v8 + 24 * v9 + 8) != a2)
        {
          v9 = *(v8 + 24 * v9) & 0x7FFFFFFF;
          if (v9 == 0x7FFFFFFF)
          {
            return result;
          }
        }

        if (*(v8 + 24 * v7 + 8) == a2)
        {
          LODWORD(v10) = *(result[1] + 4 * v6);
          v7 = 0x7FFFFFFF;
          goto LABEL_15;
        }

        v10 = *(v8 + 24 * v7) & 0x7FFFFFFF;
        if (v10 != 0x7FFFFFFF)
        {
          if (*(v8 + 24 * v10 + 8) == a2)
          {
LABEL_15:
            v11 = a2;
            v12 = __PAIR64__(v10, v6);
            v13 = v7;
            re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(result, &v11);
            result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this);
            if (result)
            {
              v11 = v15;
              v12 = a2;
              LOBYTE(v13) = 0;
              v14 = 0;
              return re::DynamicArray<re::PassTechniqueMappingDelta>::add((*(this + 122) + 496), &v11);
            }

            return result;
          }

          while (1)
          {
            v7 = v10;
            v10 = *(v8 + 24 * v10) & 0x7FFFFFFF;
            if (v10 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v8 + 24 * v10 + 8) == a2)
            {
              goto LABEL_15;
            }
          }
        }

        LODWORD(v10) = 0x7FFFFFFF;
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t re::MaterialParameterBlock::tryGetPassTechniqueMapping(re::MaterialParameterBlock *this, unint64_t a2, uint64_t a3)
{
  v7 = a3;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 888, &v7);
  if (result)
  {
    if (!*result)
    {
      return 0;
    }

    v5 = *(*(result + 8) + 4 * (a2 % *(result + 24)));
    if (v5 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      v6 = *(result + 16);
      while (*(v6 + 24 * v5 + 8) != a2)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      return v6 + 24 * v5 + 16;
    }
  }

  return result;
}

uint64_t re::MaterialParameterBlock::setDepthBiasState(uint64_t this, unsigned __int8 *a2)
{
  v3 = this;
  v4 = *(this + 948);
  v5 = *a2;
  if (v4 != 1 || v5 == 0)
  {
    if ((v4 & 1) == 0 && !*a2)
    {
      return this;
    }
  }

  else if (*(this + 952) == *(a2 + 1) && *(this + 956) == *(a2 + 2) && *(this + 960) == *(a2 + 3))
  {
    return this;
  }

  if ((v4 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

    *(this + 948) = 1;
LABEL_17:
    v7 = *(a2 + 4);
    *(this + 960) = *(a2 + 3);
    *(this + 952) = v7;
    goto LABEL_18;
  }

  if (v5)
  {
    goto LABEL_17;
  }

  *(this + 948) = 0;
LABEL_18:
  this = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this);
  if (!this)
  {
    return this;
  }

  v8 = *(v3 + 976);
  if (*(v8 + 548))
  {
    if ((*a2 & 1) == 0)
    {
      *(v8 + 548) = 0;
      return this;
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      return this;
    }

    *(v8 + 548) = 1;
  }

  v9 = *(a2 + 4);
  *(v8 + 560) = *(a2 + 3);
  *(v8 + 552) = v9;
  return this;
}

void re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(re::MaterialParameterBlock *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 124);
  if (v3)
  {
    *a2 = v3;
LABEL_6:
    v8 = (v3 + 8);
    return;
  }

  re::make::shared::object<re::MaterialParameterTable>(this, &v9);
  v6 = *(this + 124);
  *(this + 124) = v9;
  v9 = v6;
  if (v6)
  {
  }

  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
  v3 = *(this + 124);
  *a2 = v3;
  if (v3)
  {
    goto LABEL_6;
  }
}

uint64_t re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::MaterialParameterBlock *a1, void *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(a1, &v10);
  v4 = a2[3];
  if (((*(a1 + 125) ^ v4) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v7 = v10;
    if (!v10)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v5 = (*(*a2 + 32))(a2, 8, 8);
  v6 = v5;
  v7 = v10;
  *v5 = v10;
  if (v7)
  {
    v5 = (v7 + 8);
  }

  v8 = re::globalAllocators(v5)[2];
  v11[0] = &unk_1F5D09218;
  v11[3] = v8;
  v11[4] = v11;
  (*(*a2 + 16))(a2, v6, v11);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v11);
  *(a1 + 125) = v4;
  if (v7)
  {
LABEL_5:
  }

  return v7;
}

void *re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(re::Allocator *a1, re::MaterialParameterTableBuilder *a2)
{
  v4 = (*(*a2 + 32))(a2, 1128, 8);
  bzero(v4, 0x468uLL);
  re::MaterialParameterTable::MaterialParameterTable(v4);
  re::MaterialParameterTableBuilder::build(a2, a1, v4, v5);
  re::MaterialParameterTable::buildPerFrameDestructor(v4, a2);
  return v4;
}

void re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(re::MaterialParameterBlock *this@<X0>, const re::MaterialParameterBlock **a2@<X8>)
{
  re::make::shared::object<re::MaterialParameterTable>(this, a2);
  v6 = *a2;
}

void *re::MaterialParameterBlock::copyParametersFromArray(re::Allocator *a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 32))(a1, 1128, 8);
  bzero(v6, 0x468uLL);
  re::MaterialParameterTable::MaterialParameterTable(v6);
  re::MaterialParameterTableBuilder::buildFromParameterBlockArray(a1, a2, a3, v6);
  re::MaterialParameterTable::buildPerFrameDestructor(v6, a1);
  return v6;
}

double re::MaterialParameterBlock::setConstant@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, size_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  re::MaterialParameterBlock::handle(a1, &v19, a6);
  v19 = 0;
  if ((*(a6 + 12) & 7) != 0)
  {
    *&result = re::MaterialParameterBlock::setConstant(a3, a4, a1, a6, a5, v13).n128_u64[0];
  }

  else
  {
    v18 = *a2;
    re::MaterialParameterBlock::addConstant(a1, &v18, a3, a4, a5);
    v18 = 0;
    v14 = *a2;
    re::MaterialParameterBlock::handle(a1, &v14, &v15);
    *a6 = v15;
    result = *&v16;
    *(a6 + 8) = v16;
    *(a6 + 24) = v17;
  }

  return result;
}

__n128 re::MaterialParameterBlock::setConstant@<Q0>(size_t __n@<X2>, void *__s2@<X3>, re::MaterialParameterBlock *a3@<X0>, uint64_t *a4@<X1>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v32 = *MEMORY[0x1E69E9840];
  if ((*(a4 + 12) & 8) != 0)
  {
    v14 = (a4 + 1);
    v13 = *(a4 + 4);
    v15 = *(a3 + 5);
    if (v15 <= v13)
    {
      v18[1] = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      v22 = 789;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v16 = *(a3 + 7);
    if (memcmp((v16 + v13), __s2, __n))
    {
      memcpy((v16 + v13), __s2, __n);
      v18[0] = *a4;
      re::MaterialParameterBlock::addConstantDelta(a3, v18, __n, __s2, v6);
    }

    *a6 = *a4;
    result = *v14;
    *(a6 + 8) = *v14;
    *(a6 + 24) = *(a4 + 24);
  }

  else
  {
    v17 = *a4;
    re::MaterialParameterBlock::setConstant(a3, &v17, __n, __s2, a5);
  }

  return result;
}

void *re::MaterialParameterBlock::addConstantDelta(re::MaterialParameterBlock *a1, void *a2, size_t a3, const void *a4, int a5)
{
  v15 = *MEMORY[0x1E69E9840];
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    v11 = *(a1 + 122);
    v12 = *(v11 + 32) + 3;
    *&v14[0] = *a2;
    BYTE8(v14[0]) = 1;
    *(v14 + 10) = v12 & 0xFFFC | (a3 << 16) | (a5 << 24);
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::add((v11 + 56), v14);
    re::DynamicArray<BOOL>::resize(*(a1 + 122) + 16, (v12 & 0xFFFC) + a3);
    v13 = *(a1 + 122);
    if (*(v13 + 32) <= (v12 & 0xFFFC))
    {
      memset(v14, 0, sizeof(v14));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return memcpy((*(v13 + 48) + (v12 & 0xFFFC)), a4, a3);
  }

  return result;
}

_anonymous_namespace_ *re::MaterialParameterBlock::addRemoveConstantDelta(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    v5 = *(a1 + 122);
    v6 = *a2;
    v7 = 0;
    return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::add((v5 + 56), &v6);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  v9 = *(v3 + 4) + 16 * v4;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(v9 + 8) = v10;
  if (v10 == 1)
  {
    *(v9 + 10) = *(a2 + 10);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

double re::MaterialParameterBlock::setBool@<D0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 1uLL, &v9, 2, a4);
}

double re::MaterialParameterBlock::setFloat@<D0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 4uLL, &v9, 1, a4);
}

double re::MaterialParameterBlock::setInt@<D0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 4uLL, &v9, 3, a4);
}

double re::MaterialParameterBlock::setUint@<D0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 4uLL, &v9, 7, a4);
}

double re::MaterialParameterBlock::setVector2F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 8uLL, &v9, 32, a4);
}

double re::MaterialParameterBlock::setInt2@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 8uLL, &v9, 4, a3);
}

double re::MaterialParameterBlock::setUint2@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 8uLL, &v9, 8, a3);
}

double re::MaterialParameterBlock::setVector3F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
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

  v11 = v5;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, v10, 33, a5);
}

double re::MaterialParameterBlock::setColorGamut3F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v8 = *(a1 + 121);
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v19, v10, 1);
  DWORD2(v11) = v12;
  v18 = v11;
  if (a2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2[1];
      if (v14)
      {
        v15 = (a2 + 2);
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v13;
  return re::MaterialParameterBlock::setConstant(a1, &v20, 0x10uLL, &v18, 20, a5);
}

double re::MaterialParameterBlock::setColorGamut3F@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v8 = *(a1 + 121);
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v16, v10, 1);
  DWORD2(v11) = v12;
  v15 = v11;
  v14 = *a2;
  return re::MaterialParameterBlock::setConstant(a1, &v14, 0x10uLL, &v15, 20, a5);
}

{
  v15[0] = a3;
  v15[1] = a4;
  v8 = *(a1 + 121);
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v15, v10, 1);
  DWORD2(v11) = v12;
  v14 = v11;
  *&result = re::MaterialParameterBlock::setConstant(0x10uLL, &v14, a1, a2, 20, a5).n128_u64[0];
  return result;
}

double re::MaterialParameterBlock::setInt3@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 5, a3);
}

double re::MaterialParameterBlock::setUint3@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 9, a3);
}

double re::MaterialParameterBlock::setVector4F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
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

  v11 = v5;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, v10, 34, a5);
}

double re::MaterialParameterBlock::setColorGamut4F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 121);
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, v15);
  v16 = *v15;
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = (a2 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15[0] = v10;
  return re::MaterialParameterBlock::setConstant(a1, v15, 0x10uLL, &v16, 21, a4);
}

double re::MaterialParameterBlock::setColorGamut4F@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 121);
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, &v12);
  v13 = v12;
  v11 = *a2;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, &v13, 21, a4);
}

{
  v7 = *(a1 + 121);
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, &v11);
  __s2 = v11;
  *&result = re::MaterialParameterBlock::setConstant(0x10uLL, &__s2, a1, a2, 21, a4).n128_u64[0];
  return result;
}

double re::MaterialParameterBlock::setInt4@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 6, a3);
}

double re::MaterialParameterBlock::setUint4@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 10, a3);
}

double re::MaterialParameterBlock::setMatrix2x2F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
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

  v11 = v5;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, v10, 48, a5);
}

double re::MaterialParameterBlock::setMatrix3x3F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v9, 0x30uLL, a3, 49, a4);
}

double re::MaterialParameterBlock::setMatrix4x4F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v9, 0x40uLL, a3, 50, a4);
}

double re::MaterialParameterBlock::setTextureHandle@<D0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, const re::TextureHandle *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::MaterialParameterBlock::setTextureHandle(this, &v9, a3, a4);
}

double re::MaterialParameterBlock::setTextureHandle@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, const re::TextureHandle *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a2;
  re::MaterialParameterBlock::handle(a1, &v15, a4);
  v15 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    *&result = re::MaterialParameterBlock::setTextureHandle(a1, a4, a3, v9).n128_u64[0];
  }

  else
  {
    v14 = *a2;
    re::MaterialParameterBlock::addTexture(a1, &v14, a3);
    v14 = 0;
    v10 = *a2;
    re::MaterialParameterBlock::handle(a1, &v10, &v11);
    *a4 = v11;
    result = *&v12;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
  }

  return result;
}

__n128 re::MaterialParameterBlock::setTextureHandle@<Q0>(re::MaterialParameterBlock *a1@<X0>, uint64_t a2@<X1>, const re::TextureHandle *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v18[0] = *a2;
  if ((*(a2 + 12) & 8) != 0)
  {
    v11 = (a2 + 8);
    v10 = *(a2 + 8);
    v12 = *(a1 + 10);
    if (v12 <= v10)
    {
      v18[1] = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      v22 = 789;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v13 = *(a1 + 12) + 16 * v10;
    if (*(a3 + 1) != *(v13 + 8))
    {
      v17 = v7;
      re::TextureHandle::stopTrackingMaterialParameterBlock(v13, a1, &v17);
      v14 = re::TextureHandle::operator=(v13, a3);
      v16 = v7;
      re::TextureHandle::startTrackingMaterialParameterBlock(v14, a1, &v16);
      re::MaterialParameterBlock::enqueueTextureValueChangedDelta(a1, v18, a3);
      v7 = *a2;
    }

    *a4 = v7;
    result = *v11;
    *(a4 + 8) = *v11;
    *(a4 + 24) = v11[1].n128_u8[0];
  }

  else
  {
    v15 = v7;
    re::MaterialParameterBlock::setTextureHandle(a4, a1, &v15, a3);
  }

  return result;
}

__n128 re::MaterialParameterBlock::setBuffer@<Q0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 8) != 0)
  {
    v10 = (a2 + 1);
    v9 = *(a2 + 4);
    v11 = *(a1 + 15);
    if (v11 <= v9)
    {
      v19 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v28 = 0u;
      v29 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      v21 = 1024;
      v22 = 789;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (re::BufferSlice::operator==((*(a1 + 17) + 40 * *(a2 + 4)), a3))
      {
LABEL_13:
        *a4 = *a2;
        result = *v10;
        *(a4 + 8) = *v10;
        *(a4 + 24) = *(a2 + 24);
        return result;
      }

      v9 = v10->n128_u16[0];
      v11 = *(a1 + 15);
      if (v11 > v9)
      {
        v12 = *(a1 + 17) + 40 * v10->n128_u16[0];
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v12, a3);
        *(v12 + 32) = *(a3 + 32);
        if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
        {
          *v20 = *a2;
          v20[8] = 0;
          *(&v26 + 2) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v20[8], a3);
          v13 = *(a3 + 32);
          v14 = *(a1 + 122);
          v27 = v13;
          *&v28 = *v20;
          BYTE8(v28) = 1;
          LOBYTE(v29) = 0;
          DWORD2(v30) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v29, &v20[8]);
          *&v31 = v27;
          re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add((v14 + 96), &v28);
          if (BYTE8(v28) == 1 && DWORD2(v30) != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[DWORD2(v30)])(&v19, &v29);
          }

          if (*(&v26 + 2) != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[*(&v26 + 2)])(&v28, &v20[8]);
          }
        }

        goto LABEL_13;
      }
    }

    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v28 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v20 = 136315906;
    *&v20[4] = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v18 = *a2;
  v15[0] = 0;
  v16 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v15, a3);
  v17 = *(a3 + 32);
  re::MaterialParameterBlock::setBuffer(a1, &v18, v15);
  if (v16 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v16])(&v28, v15);
  }

  return result;
}

double re::MaterialParameterBlock::setBuffer@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a2;
  re::MaterialParameterBlock::handle(a1, &v22, a4);
  v22 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    v10[0] = 0;
    v11 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v10, a3);
    v12 = *(a3 + 32);
    v8 = re::MaterialParameterBlock::setBuffer(a1, a4, v10, v13);
    v13[0] = 0;
    if (v11 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v11])(&v15, v10, v8);
    }
  }

  else
  {
    v21 = *a2;
    v18[0] = 0;
    v19 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18, a3);
    v20 = *(a3 + 32);
    re::MaterialParameterBlock::addBuffer(a1, &v21, v18);
    if (v19 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v19])(&v15, v18);
    }

    v19 = -1;
    v21 = 0;
    v14 = *a2;
    re::MaterialParameterBlock::handle(a1, &v14, &v15);
    *a4 = v15;
    v8.n128_u64[0] = v16;
    *(a4 + 8) = v16;
    *(a4 + 24) = v17;
  }

  return v8.n128_f64[0];
}

void re::MaterialParameterBlock::setBuffer(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = (a2 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v7;
  v12[0] = 0;
  v13 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v12, a3);
  v14 = *(a3 + 32);
  v11 = re::MaterialParameterBlock::setBuffer(a1, &v15, v12, a4);
  if (v13 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v13])(&v16, v12, v11);
  }
}

void re::MaterialParameterBlock::setBufferWithBytes(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(*(a1 + 121) + 208);
  v11 = [v10 newBufferWithBytes:a3 length:a4 options:0];
  v17 = *a2;
  v13[0] = v11;
  v14 = 0;
  v15 = 0;
  v16 = [v11 length];
  v12 = re::MaterialParameterBlock::setBuffer(a1, &v17, v13, a5);
  if (v14 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v14])(&v18, v13, v12);
  }

  v14 = -1;
  if (v11)
  {
  }
}

void re::MaterialParameterBlock::setSampler(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = (a2 + 2);
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v6;
  v10 = *a3;
  v11 = v10;
  re::MaterialParameterBlock::setSampler(a1, &v12, &v11, a4);
  if (v10)
  {
  }
}

double re::MaterialParameterBlock::setSampler@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = *a2;
  re::MaterialParameterBlock::handle(a1, &v17, a4);
  v17 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    v9 = *a3;
    re::MaterialParameterBlock::setSampler(v10, a1, a4, &v9);
    v10[0] = 0;
    if (v9)
    {
    }
  }

  else
  {
    v16 = *a2;
    v15 = *a3;
    re::MaterialParameterBlock::addSampler(a1, &v16, &v15);
    if (v15)
    {

      v15 = 0;
    }

    v16 = 0;
    v11 = *a2;
    re::MaterialParameterBlock::handle(a1, &v11, &v12);
    *a4 = v12;
    result = *&v13;
    *(a4 + 8) = v13;
    *(a4 + 24) = v14;
  }

  return result;
}

__n128 re::MaterialParameterBlock::setSampler@<Q0>(re::MaterialParameterBlock *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 8) != 0)
  {
    v10 = (a2 + 8);
    v11 = *(a2 + 8);
    v12 = *(a1 + 20);
    if (v12 <= v11)
    {
      v18[1] = 0;
      v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      v22 = 789;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v13 = (*(a1 + 22) + 8 * v11);
    if (*v13 != *a3)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v13, a3);
      if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
      {
        v14 = *a2;
        v15 = *a3;
        v16 = *(a1 + 122);
        *&v27 = v14;
        BYTE8(v27) = 1;
        v28[0] = v15;
        re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((v16 + 176), &v27);
        if (BYTE8(v27) == 1 && v28[0])
        {
        }

        if (v15)
        {
        }
      }
    }

    *a4 = *a2;
    result = *v10;
    *(a4 + 8) = *v10;
    *(a4 + 24) = *(a2 + 24);
  }

  else
  {
    v18[0] = *a2;
    v8 = *a3;
    v17 = v8;
    result.n128_f64[0] = re::MaterialParameterBlock::setSampler(a1, v18, &v17, a4);
    if (v8)
    {
    }
  }

  return result;
}

BOOL re::MaterialParameterBlock::bindTextureToSampler(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, a3);
  if (v8 == -1)
  {
    v16 = *re::graphicsLogObjects(0xFFFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a2;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0;
      }

      else if (v17)
      {
        v18 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v17);
      }

      else
      {
        v18 = &str_67;
      }

      v27 = *a3;
      if (*a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = 0;
      }

      else if (v27)
      {
        v28 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v27);
      }

      else
      {
        v28 = &str_67;
      }

      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = v28;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Attempting to bind texture %s to non-existent sampler %s, skipping binding.", buf, 0x16u);
    }
  }

  else
  {
    v9 = a1[48];
    re::DynamicString::format("%llu", buf, a4);
    v10 = &buf[9];
    if (buf[8])
    {
      v10 = *&buf[16];
    }

    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        if (buf[8])
        {
          v12 = (*&buf[16] + 1);
        }

        else
        {
          v12 = &buf[10];
        }

        v13 = *v12;
        if (*v12)
        {
          v14 = v12 + 1;
          do
          {
            v11 = 31 * v11 + v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        v11 &= ~0x8000000000000000;
      }
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30[0] = v11;
    if (*buf)
    {
      v19 = (buf[8] & 1) == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      (*(**buf + 40))();
    }

    v20 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, v30);
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addOrReplace(a1 + 87, a2, v30);
    re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
    if (v20 == -1)
    {
      v21 = *(v9 + 16 * v8 + 8);
      *buf = a1[20];
      re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 47, v30, buf);
      v22 = a1[20];
      if (v22 <= v21)
      {
        v30[1] = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v31 = 136315906;
        *&v31[4] = "operator[]";
        v32 = 1024;
        v33 = 789;
        v34 = 2048;
        v35 = v21;
        v36 = 2048;
        v37 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      *v31 = *(a1[22] + 8 * v21);
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 18), v31);
      if (a1[122])
      {
        v23 = v30[0];
        v24 = *v31;
        v25 = a1[122];
        *buf = v23;
        buf[8] = 1;
        *&buf[16] = v24;
        re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((v25 + 176), buf);
        if (buf[8] == 1 && *&buf[16])
        {
        }

        if (v24)
        {
        }
      }

      if (*v31)
      {
      }
    }

    v26 = a1[122];
    if (v26)
    {
      *buf = *a2;
      buf[8] = 1;
      *&buf[16] = v30[0];
      re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakStringID>,true>>::add((v26 + 376), buf);
    }
  }

  return v8 != -1;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakStringID>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 24 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

BOOL re::MaterialParameterBlock::unbindTextureFromSamplers(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  v4 = re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::remove(a1 + 696, a2);
  if (v4 && re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v5 = *(a1 + 122);
    v7 = *a2;
    v8 = 0;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakStringID>,true>>::add((v5 + 376), &v7);
  }

  return v4;
}

uint64_t re::MaterialParameterBlock::setUVIndexForTexture(re::MaterialParameterBlock *a1, uint64_t *a2, int a3)
{
  v11 = a3;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 95, a2);
  if (result == -1 || *(*(a1 + 96) + 16 * result + 8) != a3)
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addOrReplace(a1 + 95, a2, &v11);
    result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
    if (result)
    {
      v7 = *(a1 + 122);
      v8 = *a2;
      v9 = 1;
      v10 = v11;
      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::add((v7 + 416), &v8);
    }
  }

  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 16 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 12) = *(a2 + 12);
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::MaterialParameterBlock::setSwizzleForTexture(re::MaterialParameterBlock *a1, uint64_t *a2, int a3)
{
  v12 = a3;
  v10 = *a2;
  result = re::MaterialParameterBlock::handle(a1, &v10, v11);
  v10 = 0;
  if ((v11[12] & 7) != 0)
  {
    result = re::MaterialParameterHandle::isParameterType(v11, 64);
    if (result)
    {
      re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::addOrReplace(a1 + 103, a2, &v12);
      result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
      if (result)
      {
        v6 = *(a1 + 122);
        v7 = *a2;
        v8 = 1;
        v9 = v12;
        return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::add((v6 + 456), &v7);
      }
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::addOrReplace(void *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    *(a1[1] + 16 * v7 + 8) = *a3;
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateKvpsHash(a1, a1[1] + 16 * v7);
    return a1[1] + 16 * v7 + 8;
  }
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 16 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 9) = *(a2 + 9);
    v4 = v3[2];
  }

  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::MaterialParameterBlock::resetSwizzleForTexture(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  result = re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::remove(a1 + 824, a2);
  if (result)
  {
    result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
    if (result)
    {
      v5 = *a2;
      v6 = 0;
      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::add((*(a1 + 122) + 456), &v5);
    }
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

unint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = 5 * v6;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, (a1[1] + 40 * v6));
    v8 = a1[1] + 8 * v7;
    *(v8 + 8) = *a3;
    *(v8 + 16) = *(a3 + 8);
    *(v8 + 24) = *(a3 + 16);
    *(v8 + 32) = *(a3 + 24);

    return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::updateKvpsHash(a1, v8);
  }
}

double re::MaterialParameterBlock::setBinding@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  re::MaterialParameterBlock::handle(a1, &v19, a6);
  v19 = 0;
  if ((*(a6 + 12) & 7) != 0)
  {
    re::MaterialParameterBlock::setBinding(v13, a1, a6, a3);
  }

  else
  {
    v18 = *a2;
    re::MaterialParameterBlock::addBinding(a1, &v18, a3, a4, a5);
    v18 = 0;
    v14 = *a2;
    re::MaterialParameterBlock::handle(a1, &v14, &v15);
    *a6 = v15;
    result = *&v16;
    *(a6 + 8) = v16;
    *(a6 + 24) = v17;
  }

  return result;
}

void re::MaterialParameterBlock::setBinding(_anonymous_namespace_ *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = 0;
  v14 = &str_67;
  v15 = v13 >> 1;
  re::MaterialParameterBlock::setBinding(a1, &v15, a3, a4, a5, a6);
  if (v13)
  {
    if (v13)
    {
    }
  }
}

void re::internal::Callable<re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::PerFrameAllocator *)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {

    *v2 = 0;
  }
}

void *re::internal::Callable<re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::PerFrameAllocator *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09218;
  return result;
}

void *re::internal::Callable<re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::PerFrameAllocator *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09218;
  return result;
}

void re::DynamicArray<re::TextureHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::TextureHandle>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 16 * v13;
      do
      {
        v16 = re::TextureHandle::operator=(v14, v12);
        v12 += 16;
        v14 = v16 + 16;
        v15 -= 16;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = (v12 + 16 * v13);
      v18 = (v14 + 16 * v13);
      v19 = 16 * v4 - 16 * v13;
      do
      {
        v20 = re::TextureHandle::TextureHandle(v18, v17);
        v17 = (v17 + 16);
        v18 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 16 * v4;
      do
      {
        v9 = re::TextureHandle::operator=(v6, v7);
        v7 += 16;
        v6 = v9 + 16;
        v8 -= 16;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = (v6 + 16 * v4);
      v11 = 16 * v5 - 16 * v4;
      do
      {
        re::TextureHandle::invalidate(v10);
        v10 = (v10 + 16);
        v11 -= 16;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::BufferSlice>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::BufferSlice>::setCapacity(result, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = v3[2];
    v14 = v3[4];
    if (v13)
    {
      v15 = v12 + 40 * v13;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v14, v12);
        *(v14 + 32) = *(v12 + 32);
        v12 += 40;
        v14 += 40;
      }

      while (v12 != v15);
      v14 = v3[4];
      v13 = v3[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = 5 * v13;
      v17 = v12 + 40 * v4;
      v18 = v12 + 8 * v16;
      v19 = v14 + 8 * v16;
      do
      {
        *v19 = 0;
        *(v19 + 24) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v19, v18);
        *(v19 + 32) = *(v18 + 32);
        v18 += 40;
        v19 += 40;
      }

      while (v18 != v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 40 * v4;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v6, v7);
        *(v6 + 32) = *(v7 + 32);
        v7 += 40;
        v6 += 40;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        v11 = *(v9 + 24);
        if (v11 != -1)
        {
          result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v11])(&v20, v9);
        }

        *(v9 + 24) = -1;
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicArray<re::BufferSlice>::removeStableAt(uint64_t result, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    memset(v10, 0, sizeof(v10));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  if (v2 - 1 > a2)
  {
    v4 = *(result + 32);
    v5 = v4 + 40 * a2;
    v6 = v4 + 40 * v2;
    if (v5 + 40 != v6)
    {
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v5, v5 + 40);
        *(v5 + 32) = *(v5 + 72);
        v7 = v5 + 80;
        v5 += 40;
      }

      while (v7 != v6);
      v2 = *(v3 + 16);
    }
  }

  v8 = *(v3 + 32) + 40 * v2;
  v9 = *(v8 - 16);
  if (v9 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v9])(v10, v8 - 40);
    v2 = *(v3 + 16);
  }

  *(v8 - 16) = -1;
  *(v3 + 16) = v2 - 1;
  ++*(v3 + 24);
  return result;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PassTechniqueMappingDelta>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::internalAdd(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateHashes(a1, *(a1 + 8) + 16 * v16);
  return *(a1 + 8) + 16 * v16 + 8;
}

unint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateKvpsHash(uint64_t a1, uint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  result = re::Hash<re::mtl::TextureSwizzleChannels>::operator()(&v6, (a2 + 8));
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::doResize(a1, v3);
}

unint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateHashes(uint64_t a1, uint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  *(a1 + 40) ^= v4;
  result = re::Hash<re::mtl::TextureSwizzleChannels>::operator()(&v6, (a2 + 8));
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v23);
}

unint64_t re::Hash<re::mtl::TextureSwizzleChannels>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v3 = v2 ^ (v2 >> 31);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2[1]) ^ ((0xBF58476D1CE4E5B9 * a2[1]) >> 27));
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2[2]) ^ ((0xBF58476D1CE4E5B9 * a2[2]) >> 27));
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2[3]) ^ ((0xBF58476D1CE4E5B9 * a2[3]) >> 27));
  v7 = (v4 ^ (v4 >> 31)) + (v3 << 6) + (v3 >> 2);
  return ((((v7 - 0x61C8864680B583E9) ^ v3) << 6) + (((v7 - 0x61C8864680B583E9) ^ v3) >> 2) + (((v6 ^ (v6 >> 31)) + ((v5 ^ (v5 >> 31)) << 6) + ((v5 ^ (v5 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v5 ^ (v5 >> 31)) - 0x61C8864680B583E9) ^ (v7 - 0x61C8864680B583E9) ^ v3;
}

void *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::ArgumentBufferTextureRecord::destroyTexture(re::ArgumentBufferTextureRecord *this)
{
  if (*(this + 28) == 1)
  {
    v2 = *this;
    if (*this)
    {

      *this = 0;
    }
  }

  else
  {

    re::TextureHandle::invalidate(this);
  }
}

void re::ArgumentBufferTextureRecord::getRenderThreadTexture(id *this@<X0>, void *a2@<X8>)
{
  if (*(this + 28) == 1)
  {
    *a2 = *this;
  }

  else
  {

    re::TextureHandle::metalTexture(this, a2);
  }
}

float32x2_t *re::ColorGamut4F::ColorGamut4F(float32x2_t *a1, CGColorRef color, char a3)
{
  v17 = *MEMORY[0x1E69E9840];
  a1[2].i8[0] = 0;
  ColorSpace = CGColorGetColorSpace(color);
  Components = CGColorGetComponents(color);
  v14 = 0;
  if (re::ColorHelpers::getColorGamutFromCGStandardLinearColorSpace(ColorSpace, &v14))
  {
    *a1 = vcvt_f32_f64(*Components);
    v8 = Components[1].f64[0];
    a1[1].f32[0] = v8;
    Alpha = CGColorGetAlpha(color);
    a1[1].f32[1] = Alpha;
    a1[2].i8[0] = v14;
  }

  else
  {
    Name = CGColorSpaceGetName(ColorSpace);
    if (re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v14))
    {
      a3 = v14;
    }

    if (re::ColorHelpers::getCGColorTransformToGamut(re::ColorGamut)::onceToken[0] != -1)
    {
      dispatch_once(re::ColorHelpers::getCGColorTransformToGamut(re::ColorGamut)::onceToken, &__block_literal_global_37);
    }

    CGColorTransformConvertColorComponents();
    a1[2].i8[0] = a3;
    *a1 = vcvt_f32_f64(v15);
    v11 = v16;
    a1[1].f32[0] = v11;
    v12 = CGColorGetAlpha(color);
    a1[1].f32[1] = v12;
  }

  return a1;
}

void re::ColorGamut4F::as(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 == a2)
  {
    *a4 = *a1;
    *(a4 + 16) = *(a1 + 16);
    return;
  }

  v8 = a2;
  re::ColorHelpers::computeGamutTransformMatrix(v6, a2, v11);
  v9 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v11[0], *a1), v11[1], *(a1 + 4)), v11[2], *(a1 + 8));
  if ((~a3 & 3) != 0)
  {
    if (a3)
    {
      v9.i32[3] = 0;
      v9 = vmaxnmq_f32(v9, 0);
      goto LABEL_10;
    }

    if ((a3 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9.i32[3] = 0;
    v9 = vmaxnmq_f32(v9, 0);
  }

  v9.i32[3] = 0;
  v9 = vminnmq_f32(v9, xmmword_1E304F3C0);
LABEL_10:
  v10 = *(a1 + 12);
  *a4 = v9.i64[0];
  *(a4 + 8) = v9.i32[2];
  *(a4 + 12) = v10;
  *(a4 + 16) = v8;
}

CGColorRef re::ColorGamut4F::createCGColor(float32x2_t *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = vcvtq_f64_f32(this[1]);
  v4[0] = vcvtq_f64_f32(*this);
  v4[1] = v1;
  CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(this[2].u8[0]);
  return CGColorCreate(CGColorSpaceFromWorkingColorGamut, v4);
}

uint64_t re::ColorGamut3F::as(uint64_t *a1, unsigned int a2, int a3)
{
  if (*(a1 + 12) == a2)
  {
    return *a1;
  }

  v11[3] = v3;
  v11[4] = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  v9 = 1065353216;
  v10 = BYTE4(v6);
  re::ColorGamut4F::as(&v7, a2, a3, v11);
  return v11[0];
}

void *re::introspect_ColorGamut(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Rec709";
      re::introspect_ColorGamut(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "P3D65";
      qword_1EE1C6960 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "ACEScg";
      qword_1EE1C6968 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 8) = 3;
      *(v17 + 16) = "Rec2020";
      qword_1EE1C6970 = v17;
    }
  }

  {
    v18 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_ColorGamut(BOOL)::info, "ColorGamut", 1, 1, 1, 1);
    *v18 = &unk_1F5D0C658;
    *(v18 + 8) = &re::introspect_ColorGamut(BOOL)::enumTable;
    *(v18 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_ColorGamut(BOOL)::isInitialized)
    {
      return &re::introspect_ColorGamut(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v20);
    v3 = re::introspect_ColorGamut(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v20);
    if (v3)
    {
      return &re::introspect_ColorGamut(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_ColorGamut(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_ColorGamut(BOOL)::info;
    }
  }

  re::introspect_ColorGamut(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_ColorGamut(BOOL)::info, a2);
  v19[0] = 0xD480D84AC2E5ELL;
  v19[1] = "ColorGamut";
  xmmword_1EE1C6930 = v20;
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_ColorGamut(BOOL)::info;
}

void *re::allocInfo_ColorGamut3F(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_466, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_466))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA0B0, "ColorGamut3F");
    __cxa_guard_release(&_MergedGlobals_466);
  }

  return &unk_1EE1BA0B0;
}

void re::initInfo_ColorGamut3F(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x31DB7ABF0A5A1BC4;
  v22[1] = "ColorGamut3F";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BA050, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA050);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "r";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA068 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "g";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BA070 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "b";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BA078 = v17;
      v18 = re::introspectionAllocator(v17);
      re::introspect_ColorGamut(1, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "gamut";
      *(v20 + 16) = &re::introspect_ColorGamut(BOOL)::info;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BA080 = v20;
      __cxa_guard_release(&qword_1EE1BA050);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BA068;
  *(this + 9) = re::internal::defaultConstruct<re::ColorGamut3F>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ColorGamut3F>;
  *(this + 13) = re::internal::defaultConstructV2<re::ColorGamut3F>;
  *(this + 14) = re::internal::defaultDestructV2<re::ColorGamut3F>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void *re::internal::defaultConstructV2<re::ColorGamut3F>(void *result)
{
  *(result + 5) = 0;
  *result = 0;
  return result;
}

void *re::allocInfo_ColorGamut4F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA058))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA140, "ColorGamut4F");
    __cxa_guard_release(&qword_1EE1BA058);
  }

  return &unk_1EE1BA140;
}

void re::initInfo_ColorGamut4F(re *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x31DB7ABF0A5A1C02;
  v26[1] = "ColorGamut4F";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1BA060, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA060);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "r";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA088 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "g";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BA090 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "b";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BA098 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "a";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BA0A0 = v21;
      v22 = re::introspectionAllocator(v21);
      re::introspect_ColorGamut(1, v23);
      v24 = (*(*v22 + 32))(v22, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "gamut";
      *(v24 + 16) = &re::introspect_ColorGamut(BOOL)::info;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BA0A8 = v24;
      __cxa_guard_release(&qword_1EE1BA060);
    }
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BA088;
  *(this + 9) = re::internal::defaultConstruct<re::ColorGamut4F>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ColorGamut4F>;
  *(this + 13) = re::internal::defaultConstructV2<re::ColorGamut4F>;
  *(this + 14) = re::internal::defaultDestructV2<re::ColorGamut4F>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

double re::internal::defaultConstruct<re::ColorGamut4F>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = xmmword_1E30474D0;
  *(a3 + 16) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ColorGamut4F>(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1E30474D0;
  *(a1 + 16) = 0;
  return result;
}

void re::introspect_RenderGraphResourceOperationType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA1D8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BA1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1E0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA238, "RenderGraphResourceOperationType", 4, 4, 1, 1);
      qword_1EE1BA238 = &unk_1F5D0C658;
      qword_1EE1BA278 = &re::introspect_RenderGraphResourceOperationType(BOOL)::enumTable;
      dword_1EE1BA248 = 9;
      __cxa_guard_release(&qword_1EE1BA1E0);
    }

    if (_MergedGlobals_467)
    {
      break;
    }

    _MergedGlobals_467 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA238, a2);
    v49 = 0x74B10DF276B47AF6;
    v50 = "RenderGraphResourceOperationType";
    v53 = 208862;
    v54 = "int";
    v4 = v52[0];
    v5 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA278;
      v53 = v4;
      v54 = v5;
      re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v51.var0 = 2 * v11;
            v51.var1 = v10;
            re::TypeBuilder::addEnumConstant(v52, v15, &v51);
            if (*&v51.var0)
            {
              if (*&v51.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v51.var0 = 2 * v20;
              v51.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v52, v24, &v51);
              if (*&v51.var0)
              {
                if (*&v51.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v52, v26);
      xmmword_1EE1BA258 = v51;
      if (v49)
      {
        if (v49)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1BA1D8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Read";
      qword_1EE1BA280 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Write";
      qword_1EE1BA288 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "WriteDepth";
      qword_1EE1BA290 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "WriteStencil";
      qword_1EE1BA298 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "WriteBlit";
      qword_1EE1BA2A0 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "WriteCompute";
      qword_1EE1BA2A8 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "WriteResolve";
      qword_1EE1BA2B0 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 7;
      *(v44 + 2) = "WriteResolveDepth";
      qword_1EE1BA2B8 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 8;
      *(v46 + 2) = "WriteResolveStencil";
      qword_1EE1BA2C0 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 8) = 10;
      *(v48 + 16) = "ReadFramebuffer";
      qword_1EE1BA2C8 = v48;
      __cxa_guard_release(&qword_1EE1BA1D8);
    }
  }
}

void *re::allocInfo_ReadSettings(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA328, "ReadSettings");
    __cxa_guard_release(&qword_1EE1BA1E8);
  }

  return &unk_1EE1BA328;
}

void re::initInfo_ReadSettings(re *this, re::IntrospectionBase *a2)
{
  v30[0] = 0x3C332C74121BAFF2;
  v30[1] = "ReadSettings";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1BA1F0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA1F0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "computeIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA208 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "isOptional";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BA210 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "makeStencilView";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x500000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BA218 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "makeArrayView";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x600000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BA220 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::mtl::introspect_RenderStage(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "renderStage";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x800000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1BA228 = v25;
      v26 = re::introspectionAllocator(v25);
      re::introspect_RenderGraphResourceOperationType(v26, v27);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "type";
      *(v28 + 16) = &qword_1EE1BA238;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0xC00000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1BA230 = v28;
      __cxa_guard_release(&qword_1EE1BA1F0);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1BA208;
  *(this + 9) = re::internal::defaultConstruct<re::ReadSettings>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ReadSettings>;
  *(this + 13) = re::internal::defaultConstructV2<re::ReadSettings>;
  *(this + 14) = re::internal::defaultDestructV2<re::ReadSettings>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v29 = v31;
}

double re::internal::defaultConstruct<re::ReadSettings>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 3) = 0;
  *a3 = 0;
  *&result = 2;
  *(a3 + 8) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::ReadSettings>(uint64_t a1)
{
  *(a1 + 3) = 0;
  *a1 = 0;
  *&result = 2;
  *(a1 + 8) = 2;
  return result;
}

void *re::allocInfo_WriteSettings(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA3B8, "WriteSettings");
    __cxa_guard_release(&qword_1EE1BA1F8);
  }

  return &unk_1EE1BA3B8;
}

void re::initInfo_WriteSettings(re *this, re::IntrospectionBase *a2)
{
  v49[0] = 0xC0DE7BC02E28B204;
  v49[1] = "WriteSettings";
  if (v49[0])
  {
    if (v49[0])
    {
    }
  }

  *(this + 2) = v50;
  if ((atomic_load_explicit(&qword_1EE1BA200, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BA200);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint32_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "attachmentIndex";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BA2D0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "computeIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 2;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BA2D8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint32_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "slotIndex";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 3;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BA2E0 = v17;
      v18 = re::introspectionAllocator(v17);
      re::introspect_RenderGraphResourceOperationType(v18, v19);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "type";
      *(v20 + 16) = &qword_1EE1BA238;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x400000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BA2E8 = v20;
      v21 = re::introspectionAllocator(v20);
      v22 = re::introspect_Vector4F(1);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "clearColor";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x1000000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1BA2F0 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_float(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "clearDepth";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x1000000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1BA2F8 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "forceClear";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x2000000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1BA300 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_BOOL(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "isOptional";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x2100000008;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1BA308 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::mtl::introspect_MultisampleDepthResolveFilter(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "depthResolveFilter";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x2400000009;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1BA310 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::mtl::introspect_MultisampleStencilResolveFilter(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "stencilResolveFilter";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x280000000ALL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1BA318 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::introspect_uint32_t(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "clearStencil";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x100000000BLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1BA320 = v47;
      __cxa_guard_release(&qword_1EE1BA200);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE1BA2D0;
  *(this + 9) = re::internal::defaultConstruct<re::WriteSettings>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::WriteSettings>;
  *(this + 13) = re::internal::defaultConstructV2<re::WriteSettings>;
  *(this + 14) = re::internal::defaultDestructV2<re::WriteSettings>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v48 = v50;
}

double re::internal::defaultConstruct<re::WriteSettings>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x100000000;
  result = 0.0;
  *(a3 + 16) = xmmword_1E30474D0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::WriteSettings>(uint64_t a1)
{
  *a1 = 0x100000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1E30474D0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  return result;
}

unint64_t re::RenderGraphBufferDescription::makeValid(uint64_t a1, id *a2, uint64_t a3)
{
  result = *a2;
  if (*a2 && !*a1)
  {
    if (*(a1 + 8) == -1)
    {
      result = [result length];
      *(a1 + 8) = (*(a1 + 20) * result);
    }

    if (*(a1 + 32) == -1)
    {
      result = [*a2 protectionOptions];
      *(a1 + 32) = result & a3;
    }
  }

  return result;
}

{
  result = *a2;
  if (*a2 && !*a1)
  {
    if (*(a1 + 8) == -1)
    {
      v7 = [result width];
      result = [*a2 height];
      *(a1 + 8) = (*(a1 + 20) * (result * v7));
    }

    if (*(a1 + 32) == -1)
    {
      result = [*a2 protectionOptions];
      *(a1 + 32) = result & a3;
    }
  }

  return result;
}

void *re::RenderGraphBufferDescription::valuesToString@<X0>(re::RenderGraphBufferDescription *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  a2[3] = 0;
  re::DynamicString::setCapacity(a2, 0);
  if (*v4)
  {
    *v4 = 1;
    v5 = a2[2];
  }

  else
  {
    *v4 = 0;
    v5 = a2 + 9;
  }

  *v5 = 0;
  re::DynamicString::setCapacity(a2, 0x400uLL);
  re::DynamicString::format("type: %d length: %zu lengthMultiplier: %f initialOptions: %d protectionOptions: %llu isMemoryless: %d", &v7, *this, *(this + 1), *(this + 5), *(this + 6), *(this + 4), (*(this + 6) & 0x70) == 48);
  re::DynamicString::operator=(a2, &v7);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  return re::DynamicString::trimExcess(a2);
}

uint64_t re::RenderGraphBufferHandle::introspectionSerialize(uint64_t a1, uint64_t a2, void *a3, re::DynamicString *a4)
{
  re::DynamicString::format("%llu", &v6, *a3);
  re::DynamicString::operator=(a4, &v6);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return 1;
}

uint64_t re::RenderGraphBufferHandle::introspectionDeserialize(int a1, int a2, int a3, void *a4, char *__str)
{
  v5 = __str;
  do
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      __endptr = 0;
      *a4 = strtoull(__str, &__endptr, 10);
      return 1;
    }
  }

  while ((v6 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0);
  v8 = *__str;
  if (*__str)
  {
    v9 = __str[1];
    if (v9)
    {
      v10 = __str + 2;
      do
      {
        v8 = 31 * v8 + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    v8 &= ~0x8000000000000000;
  }

  *a4 = v8;
  return 1;
}

uint64_t *re::introspect_RenderGraphBufferHandle(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BA450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA450))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA458, "RenderGraphBufferHandle", 16, 8, 0, 0);
    qword_1EE1BA458 = &unk_1F5D0C698;
    qword_1EE1BA498 = re::internal::defaultConstruct<re::RenderGraphBufferHandle>;
    qword_1EE1BA4A0 = re::RenderGraphBufferHandle::introspectionSerialize;
    qword_1EE1BA4A8 = re::RenderGraphBufferHandle::introspectionDeserialize;
    qword_1EE1BA4B8 = 0;
    unk_1EE1BA4C0 = 0;
    qword_1EE1BA4B0 = re::RenderGraphBufferHandle::introspectionDeepCopy;
    dword_1EE1BA468 = 11;
    __cxa_guard_release(&qword_1EE1BA450);
  }

  if (v2)
  {
    if (_MergedGlobals_468)
    {
      return &qword_1EE1BA458;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
    v3 = _MergedGlobals_468;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
    if (v3)
    {
      return &qword_1EE1BA458;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (_MergedGlobals_468)
    {
LABEL_11:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &qword_1EE1BA458;
    }
  }

  _MergedGlobals_468 = 1;
  re::IntrospectionRegistry::add(&qword_1EE1BA458, a2);
  v9[0] = 0xA33A75EAF1B787C0;
  v9[1] = "RenderGraphBufferHandle";
  xmmword_1EE1BA478 = v10;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &qword_1EE1BA458;
}

double re::internal::defaultConstruct<re::RenderGraphBufferHandle>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  result = NAN;
  a3[1] = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphBufferHandle>(void *a1)
{
  *a1 = 0;
  result = NAN;
  a1[1] = -1;
  return result;
}

uint64_t *re::FixedArray<re::AttributeArgument>::operator=(uint64_t *result, uint64_t *a2)
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

void *re::TechniqueStage::deinit(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    v3 = re::globalAllocators(this);
    this = (*(*v3[2] + 40))(v3[2], v1);
    v2[1] = 0;
  }

  return this;
}

void re::MaterialPipelineData::~MaterialPipelineData(re::TechniqueStage **this)
{
  *this = &unk_1F5D09270;
  re::internal::destroyPersistent<re::TechniqueStage>("deinit", 206, this[2]);
  this[2] = 0;
  re::internal::destroyPersistent<re::TechniqueStage>("deinit", 208, this[3]);
  this[3] = 0;
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(this + 16);
  re::FixedArray<re::LinkedFunction>::deinit(this + 7);
  re::FixedArray<re::LinkedFunction>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::MaterialPipelineData::~MaterialPipelineData(this);

  JUMPOUT(0x1E6906520);
}

void re::MaterialPipelineData::generatePipelineStateKey(re::MaterialPipelineData *this)
{
  v51 = *MEMORY[0x1E69E9840];
  *(this + 20) = 0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 272);
    v4 = 0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30));
    v5 = ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9;
    *(this + 20) = v5;
    if (v3)
    {
      v6 = 0;
      v7 = v3;
      do
      {
        if (!v7)
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          *cf = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v39 = 136315906;
          *&v39[4] = "operator[]";
          v40 = 1024;
          v41 = 468;
          v42 = 2048;
          v43 = v3;
          v44 = 2048;
          v45 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(v2 + 280) + v6;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v8 + 16)) ^ ((0xBF58476D1CE4E5B9 * *(v8 + 16)) >> 27));
        v10 = ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + (v9 ^ (v9 >> 31))) ^ v5;
        v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v8 + 18)) ^ ((0xBF58476D1CE4E5B9 * *(v8 + 18)) >> 27));
        v5 = ((v11 ^ (v11 >> 31)) - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
        *(this + 20) = v5;
        v6 += 24;
        --v7;
      }

      while (24 * v3 != v6);
    }

    v12 = strlen(*(v2 + 8));
    if (v12)
    {
      MurmurHash3_x64_128(*(v2 + 8), v12, 0, cf);
      v13 = (cf[1] + 64 * cf[0] + (cf[0] >> 2) - 0x61C8864680B583E9) ^ cf[0];
      v2 = *(this + 2);
    }

    else
    {
      v13 = 0;
    }

    v14 = ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + (((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + *(v2 + 16)) ^ v13)) ^ v5;
    *(this + 20) = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 3);
  if (v15)
  {
    v16 = strlen(*(v15 + 8));
    if (v16)
    {
      MurmurHash3_x64_128(*(v15 + 8), v16, 0, cf);
      v17 = (cf[1] + 64 * cf[0] + (cf[0] >> 2) - 0x61C8864680B583E9) ^ cf[0];
      v15 = *(this + 3);
    }

    else
    {
      v17 = 0;
    }

    v14 ^= (v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (((v17 << 6) - 0x61C8864680B583E9 + (v17 >> 2) + *(v15 + 16)) ^ v17);
    *(this + 20) = v14;
  }

  v18 = *(this + 5);
  if (v18)
  {
    v19 = 200 * v18;
    v20 = *(this + 6) + 48;
    do
    {
      v21 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (*(v20 - 24) >> 1)) ^ v14;
      *(this + 20) = v21;
      v22 = ((*(v20 - 40) >> 1) - 0x61C8864680B583E9 + (v21 << 6) + (v21 >> 2)) ^ v21;
      *(this + 20) = v22;
      v23 = *v20;
      if (*v20)
      {
        re::sg::CachedCompilationMaterial::getMaterial(*v20, cf);
        v24 = cf[0];
        if (cf[0])
        {
          v24 = CFHash(cf[0]);
        }
      }

      else
      {
        v24 = *(v20 - 8);
      }

      v25 = (v24 + 64 * v22 + (v22 >> 2) - 0x61C8864680B583E9) ^ v22;
      *(this + 20) = v25;
      if (v23)
      {

        v25 = *(this + 20);
      }

      v26 = 0xBF58476D1CE4E5B9 * (*(v20 + 8) ^ (*(v20 + 8) >> 30));
      v27 = ((v25 << 6) - 0x61C8864680B583E9 + (v25 >> 2) + ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31))) ^ v25;
      v14 = (*(v20 + 40) - 0x61C8864680B583E9 + (v27 << 6) + (v27 >> 2)) ^ v27;
      *(this + 20) = v14;
      v20 += 200;
      v19 -= 200;
    }

    while (v19);
  }

  v28 = *(this + 8);
  if (v28)
  {
    v29 = 200 * v28;
    v30 = *(this + 9) + 48;
    do
    {
      v31 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (*(v30 - 24) >> 1)) ^ v14;
      *(this + 20) = v31;
      v32 = ((*(v30 - 40) >> 1) - 0x61C8864680B583E9 + (v31 << 6) + (v31 >> 2)) ^ v31;
      *(this + 20) = v32;
      v33 = *v30;
      if (*v30)
      {
        re::sg::CachedCompilationMaterial::getMaterial(*v30, v39);
        v34 = *v39;
        if (*v39)
        {
          v34 = CFHash(*v39);
        }
      }

      else
      {
        v34 = *(v30 - 8);
      }

      v35 = ((v32 << 6) - 0x61C8864680B583E9 + (v32 >> 2) + v34) ^ v32;
      *(this + 20) = v35;
      if (v33)
      {

        v35 = *(this + 20);
      }

      v36 = 0xBF58476D1CE4E5B9 * (*(v30 + 8) ^ (*(v30 + 8) >> 30));
      v37 = ((v35 << 6) - 0x61C8864680B583E9 + (v35 >> 2) + ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) ^ ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) >> 31))) ^ v35;
      v14 = (*(v30 + 40) - 0x61C8864680B583E9 + (v37 << 6) + (v37 >> 2)) ^ v37;
      *(this + 20) = v14;
      v30 += 200;
      v29 -= 200;
    }

    while (v29);
  }

  v38 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (((*(this + 23) << 6) - 0x61C8864680B583E9 + (*(this + 23) >> 2) + *(this + 176)) ^ *(this + 23))) ^ v14;
  *(this + 19) = (*(this + 21) - 0x61C8864680B583E9 + (v38 << 6) + (v38 >> 2)) ^ v38;
  *(this + 20) = v38;
}

unint64_t re::MaterialTechnique::combinedBuffersHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[77] + (v1[55] << 6) + (v1[55] >> 2) - 0x61C8864680B583E9) ^ v1[55];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 560) + (*(v1[2] + 384) << 6) + (*(v1[2] + 384) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 384))) ^ v2;
}

unint64_t re::MaterialTechnique::combinedTexturesHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[130] + (v1[113] << 6) + (v1[113] >> 2) - 0x61C8864680B583E9) ^ v1[113];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 984) + (*(v1[2] + 848) << 6) + (*(v1[2] + 848) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 848))) ^ v2;
}

unint64_t re::MaterialTechnique::combinedConstantsHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[69] + (v1[47] << 6) + (v1[47] >> 2) - 0x61C8864680B583E9) ^ v1[47];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 496) + (*(v1[2] + 320) << 6) + (*(v1[2] + 320) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 320))) ^ v2;
}

unint64_t re::MaterialTechnique::combinedSamplersHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[143] + (v1[121] << 6) + (v1[121] >> 2) - 0x61C8864680B583E9) ^ v1[121];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 1088) + (*(v1[2] + 912) << 6) + (*(v1[2] + 912) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 912))) ^ v2;
}

unint64_t re::MaterialTechnique::combinedTextureBlocksHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[165] + (v1[157] << 6) + (v1[157] >> 2) - 0x61C8864680B583E9) ^ v1[157];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 1264) + (*(v1[2] + 1200) << 6) + (*(v1[2] + 1200) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 1200))) ^ v2;
}

void re::MaterialTechniqueVariant::releasePipelineStates(re::MaterialTechniqueVariant *this, re::RenderManager *a2, re::DrawingManager *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(this + 14);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 5);
    while (1)
    {
      v9 = *v8;
      v8 += 24;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 5) + 96 * v7;
    v15 = *(v10 + 40);
    v16 = *(v10 + 56);
    v17 = *(v10 + 72);
    v13 = *(v10 + 8);
    v14 = *(v10 + 24);
    v20 = 0;
    *v11 = &unk_1F5D092E0;
    *(v11 + 8) = a3;
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *(v11 + 48) = v15;
    *(v11 + 64) = v16;
    *(v11 + 80) = v17;
    v20 = v11;
    re::RenderManager::addDelayedDestructorToRenderThread(a2, v18);
    re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v18);
    v12 = *(this + 14);
    if (v12 <= v7 + 1)
    {
      v12 = v7 + 1;
    }

    while (v12 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 5) + 96 * v7) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v7) = v12;
LABEL_14:
    ;
  }

  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::clear(this + 24);
}

BOOL assertTextureType(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BA4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4D0))
  {
    re::Defaults::BOOLValue("enableShaderDebugLogs", v14, &v16);
    if (v16)
    {
      v15 = BYTE1(v16);
    }

    else
    {
      v15 = 0;
    }

    _MergedGlobals_469 = v15;
    __cxa_guard_release(&qword_1EE1BA4D0);
  }

  (*(**(a1 + 8 * a3[1]) + 24))(&v16);
  v6 = [v16 textureType];
  v7 = v16;
  if (v16)
  {
  }

  v8 = *(a2 + 18);
  if (v6 != v8 && _MergedGlobals_469 == 1)
  {
    v9 = *re::graphicsLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 18);
      v12 = *a3;
      LODWORD(v16) = 67109890;
      HIDWORD(v16) = v6;
      v17 = 2080;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Mismatch between bound texture type %d and shader param(%s) type %d at slot %d.\n", &v16, 0x1Eu);
    }
  }

  return v6 == v8;
}

unint64_t re::MaterialTechniqueVariant::fillTextureTableLayerLists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a4 = 0;
  ++*(a4 + 2);
  v7 = *(a3 + 72);
  v8 = v7[8];
  if (v8)
  {
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(0, a2);
    v9 = *a4;
    v10 = &a4[3 * *a4];
    v10[2] = v8 + 680;
    v10[3] = v8 + 552;
    v10[4] = 7;
    v11 = v9 + 1;
    *a4 = v9 + 1;
    ++*(a4 + 2);
    v7 = *(a3 + 72);
  }

  else
  {
    v11 = 0;
  }

  v12 = v7[9];
  if (v12)
  {
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
    v13 = *a4;
    v14 = &a4[3 * *a4];
    v14[2] = v12 + 680;
    v14[3] = v12 + 552;
    v14[4] = 8;
    v11 = v13 + 1;
    *a4 = v13 + 1;
    ++*(a4 + 2);
    v7 = *(a3 + 72);
  }

  v15 = v7[11];
  if (v15)
  {
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
    v16 = *a4;
    v17 = &a4[3 * *a4];
    v17[2] = v15 + 680;
    v17[3] = v15 + 552;
    v17[4] = 10;
    v11 = v16 + 1;
    *a4 = v16 + 1;
    ++*(a4 + 2);
    v7 = *(a3 + 72);
  }

  v18 = v7[10];
  if (v18)
  {
    v19 = *(v18 + 8);
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
    v20 = *a4;
    v21 = &a4[3 * *a4];
    v21[2] = v19;
    v21[3] = 0;
    v21[4] = 11;
    v11 = v20 + 1;
    *a4 = v20 + 1;
    ++*(a4 + 2);
  }

  v22 = *(*a1 + 8);
  re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
  v23 = *a4;
  v24 = &a4[3 * *a4 + 2];
  *v24 = v22 + 984;
  *(v24 + 8) = v22 + 856;
  *(v24 + 16) = 5;
  *a4 = v23 + 1;
  ++*(a4 + 2);
  v25 = *(*(*a1 + 8) + 16);
  result = re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v23 + 1, v26);
  v28 = *a4;
  v29 = &a4[3 * *a4 + 2];
  *v29 = v25 + 928;
  *(v29 + 8) = v25 + 800;
  *(v29 + 16) = 6;
  *a4 = v28 + 1;
  ++*(a4 + 2);
  return result;
}

void re::MaterialTechniqueVariant::resolveTextureArgument(int a1, StringID *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4[1];
  if (!v10)
  {
LABEL_28:
    *a5 = a2[1].var0;
    *(a5 + 2) = 0;
    if (*(&a2[1].var0 + 1) - 3 > 4)
    {
      v26 = 113101865;
    }

    else
    {
      v26 = qword_1E30DAAD0[(*(&a2[1].var0 + 1) - 3)];
    }

    v28 = *a3;
    v37 = v26;
    (*(*v28 + 32))(&v36);
    *(a5 + 4) = BYTE1(v36);
    return;
  }

  v12 = *a4;
  v13 = &(*a4)[3 * v10];
  while (1)
  {
    re::StringID::StringID(&v36, a2);
    if (*(a7 + 192))
    {
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) >> 27));
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a7 + 144, &v36, v14 ^ (v14 >> 31), &v37);
      if (v38 != 0x7FFFFFFF)
      {
        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) >> 27));
        re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a7 + 144, &v36, v15 ^ (v15 >> 31), &v37);
        re::StringID::operator=(&v36, (*(a7 + 160) + 40 * v38 + 24));
      }
    }

    v16 = *v12;
    v37 = (v36 >> 1);
    v17 = (*(*v16 + 32))(&v34);
    if (v34 != 1)
    {
      v21 = v12[1];
      if (v21)
      {
        v37 = (v36 >> 1);
        v17 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v21, &v37);
        if (v17 != -1)
        {
          v22 = 0;
          v23 = *(v21[1] + 40 * v17 + 24);
          v24 = &re::s_textureTableConstantMembers;
          while (1)
          {
            v25 = *v24;
            v24 += 16;
            if (v23 == v25)
            {
              v17 = a3[v22];
              if (v17)
              {
                break;
              }
            }

            if (!v23)
            {
              *a5 = a2[1].var0;
              *(a5 + 2) = -1;
              *(a5 + 6) = 1;
              if (v36)
              {
                if (v36)
                {
                }
              }

              goto LABEL_33;
            }

            if (++v22 == 12)
            {
              goto LABEL_24;
            }
          }

          v17 = (*(*v17 + 32))(v33);
          if (v33[0] == 1)
          {
            (*(*a3[v22] + 24))(&v37);
            v17 = v37;
            if (v37)
            {

              *a5 = a2[1].var0;
              *(a5 + 2) = v22;
              v18 = v33[1];
              goto LABEL_8;
            }
          }
        }
      }

LABEL_24:
      if (v36)
      {
        if (v36)
        {
        }
      }

      goto LABEL_27;
    }

    v18 = v35;
    *a5 = a2[1].var0;
    *(a5 + 2) = *(v12 + 4);
LABEL_8:
    *(a5 + 4) = v18;
    v19 = assertTextureType(a3, a2, a5);
    v20 = v19;
    if (v36)
    {
      if (v36)
      {
      }
    }

    if (v20)
    {
      break;
    }

LABEL_27:
    v12 += 3;
    if (v12 == v13)
    {
      goto LABEL_28;
    }
  }

LABEL_33:
  if ((*(a5 + 6) & 1) == 0)
  {
    (*(*a3[*(a5 + 2)] + 24))(&v37);
    v27 = a6;
    if (([v37 protectionOptions] & ~a6) != 0)
    {
      *a5 = a2[1].var0;
      *(a5 + 2) = 0;
      v29 = [v37 textureType];
      if ((v29 - 1) > 7)
      {
        v30 = 93818879;
      }

      else
      {
        v30 = qword_1E30DAAF8[(v29 - 1)];
      }

      v31 = *a3;
      v36 = v30;
      (*(*v31 + 32))(&v34);
      *(a5 + 4) = v35;
      v27 = a6;
    }

    if ((a2[1].var1 - 1) <= 1 && (v27 & ~[v37 protectionOptions]) != 0)
    {
      *(a5 + 6) = 1;
    }

    if (v37)
    {
    }
  }
}

unint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  v16 = 0;
  v17 = 0;
  result = re::MaterialTechniqueVariant::fillTextureTableLayerLists(a1, a2, a4, &v16);
  v11 = *(a3 + 120);
  if (v11)
  {
    v12 = *(a3 + 128);
    v13 = 32 * v11;
    do
    {
      v14[0] = &v18;
      v14[1] = v16;
      v15 = 0;
      re::MaterialTechniqueVariant::resolveTextureArgument(result, v12, a2, v14, &v15, a6, a3);
      result = re::DynamicArray<re::TextureResolution>::add(a5, &v15);
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
  }

  return result;
}

void *re::DynamicArray<re::TextureResolution>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::TextureResolution>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

uint64_t re::MaterialTechniqueVariant::resolveBufferArgument(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = memcpy(__dst, a2, sizeof(__dst));
  if (a4)
  {
    v10 = a3 + 24 * a4;
    while (1)
    {
      v11 = *a3;
      *buf = *a1 >> 1;
      v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v11, buf);
      if (v12 != -1)
      {
        v13 = v11[1] + 16 * v12;
        v15 = *(v13 + 8);
        v14 = (v13 + 8);
        LODWORD(v16) = *(a3 + 16);
        if (*(&__dst[3 * v16] + 1) > v15)
        {
          break;
        }
      }

      v17 = *(a3 + 8);
      *buf = *a1 >> 1;
      v9 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v17, buf);
      if (v9 != -1)
      {
        v16 = 0;
        v18 = v17[1] + 40 * v9;
        v19 = v18 + 8;
        v20 = *(v18 + 24);
        v21 = __dst;
        v22 = &re::s_bufferTableConstantMembers;
        while (1)
        {
          v23 = *v22;
          v22 += 16;
          if (v20 == v23)
          {
            v24 = v21[1];
            if (v24)
            {
              break;
            }
          }

          ++v16;
          v21 += 6;
          if (v16 == 13)
          {
            goto LABEL_14;
          }
        }

        v25 = v21[5];
        v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v25, (v19 + 24));
        if (v9 != -1)
        {
          v27 = v25[1] + 16 * v9;
          v29 = *(v27 + 8);
          v14 = (v27 + 8);
          v28 = v29;
          if (v24 <= v29)
          {
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v24);
            _os_crash();
            __break(1u);
          }

          if (*(*v21 + 24 * v28))
          {
            break;
          }
        }
      }

LABEL_14:
      a3 += 24;
      if (a3 == v10)
      {
        goto LABEL_15;
      }
    }

    v32 = a5;
    *(a5 + 2) = v16;
    v33 = *v14;
    result = 1;
  }

  else
  {
LABEL_15:
    if (!a6)
    {
      return 0;
    }

    v30 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v34 = a1[1];
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to find reflection for buffer %s", buf, 0xCu);
    }

    if (a2[1])
    {
      return 0;
    }

    result = 0;
    v32 = a5;
    *(a5 + 2) = 11;
    v33 = 12;
  }

  *(v32 + 4) = v33;
  return result;
}

unint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = (a3 + 296);
  v9 = a2;
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 && !v10[8]);
  v54 = 0x2B3FAC222C23CAEDLL;
  v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v10 + 5, &v54);
  if (v11 == -1)
  {
    v49 = 0;
  }

  else
  {
    v49 = *(v10[6] + 16 * v11 + 8);
  }

  v12 = *(a3 + 272);
  v54 = 0;
  v55 = 0;
  v13 = a4;
  v14 = a1;
  result = re::MaterialTechniqueVariant::fillBufferTableLayerLists(a1, v13, &v54);
  v50 = v54;
  v17 = vmvnq_s8(v8[1]);
  v53[0] = vmvnq_s8(*v8);
  v53[1] = v17;
  v47 = v12;
  if (v12)
  {
    v18 = 0;
    v19 = &v56[3 * v54];
    v20 = -1;
    do
    {
      v21 = v20 + 1;
      if (v20 + 1 > 0xFF)
      {
        goto LABEL_50;
      }

      v22 = v21 >> 6;
      if ((v21 & 0x3F) != 0)
      {
        v23 = *(v53 + v22) & (-1 << (v21 & 0x3F));
        if (v23)
        {
          v20 = __clz(__rbit64(v23)) + (v21 & 0xC0);
          goto LABEL_21;
        }

        if (v21 > 0xBF)
        {
          goto LABEL_50;
        }

        ++v22;
      }

      v24 = 8 * v22;
      v25 = -64 * v22;
      while (1)
      {
        v26 = *(v53 + v24);
        if (v26)
        {
          break;
        }

        v25 -= 64;
        v24 += 8;
        if (v24 == 32)
        {
          goto LABEL_50;
        }
      }

      v27 = __clz(__rbit64(v26));
      if (v27 + 1 == v25)
      {
        goto LABEL_50;
      }

      v20 = v27 - v25;
LABEL_21:
      v52 = 0;
      v51 = 0;
      v28 = *(a3 + 272);
      if (v28 <= v18)
      {
        v57 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v58 = 136315906;
        v59 = "operator[]";
        v60 = 1024;
        v61 = 476;
        v62 = 2048;
        v63 = v18;
        v64 = 2048;
        v65 = v28;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_49:
        v57 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v58 = 136315906;
        v59 = "operator[]";
        v60 = 1024;
        v61 = 476;
        v62 = 2048;
        v63 = v14;
        v64 = 2048;
        v65 = v28;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_50:
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "nextAvailableSlot != ~0", "completeResolution", 743);
        _os_crash();
        __break(1u);
      }

      v29 = *(a3 + 280) + 24 * v18;
      LOWORD(v51) = v20;
      WORD1(v51) = *(v29 + 16);
      if (*(v29 + 18) == 6)
      {
        LOBYTE(v52) = 1;
      }

      WORD2(v51) = v49;
      v30 = v50;
      if (v50)
      {
        v31 = v56;
        while (1)
        {
          v32 = v31[1];
          *&v66 = *v29 >> 1;
          v33 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v32, &v66);
          if (v33 != -1)
          {
            v34 = v32[1] + 40 * v33;
            if (*(v34 + 24) == 17)
            {
              v35 = v34 + 8;
              v36 = a2;
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36 && !v37[8]);
              v38 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v37 + 5, (v35 + 24));
              if (v38 != -1)
              {
                break;
              }
            }
          }

          v31 += 3;
          if (v31 == v19)
          {
            v30 = 0;
            v39 = 0;
            goto LABEL_42;
          }
        }

        v40 = v37[6] + 16 * v38;
        LOBYTE(v52) = 0;
        v42 = *(v40 + 8);
        v41 = (v40 + 8);
        WORD2(v51) = v42;
        v43 = a2;
        do
        {
          v44 = v43;
          v43 = *v43;
          v28 = v44[3];
          if (v43)
          {
            v45 = v28 == 0;
          }

          else
          {
            v45 = 0;
          }
        }

        while (v45);
        v14 = *v41;
        if (v28 <= v14)
        {
          goto LABEL_49;
        }

        v39 = (*(v44[4] + 16 * v14 + 12) & 0xFC) != 28;
        v30 = 1;
LABEL_42:
        v14 = a1;
      }

      else
      {
        v39 = 0;
      }

      if (*(v14 + 16) == 1 && !v39 && (*(**v14 + 2844) & 1) != 0)
      {
        HIWORD(v51) = *(v29 + 18);
      }

      HIBYTE(v52) = v30;
      result = re::DynamicArray<re::AttributeResolution>::add(a5, &v51);
      ++v18;
    }

    while (v18 != v47);
  }

  return result;
}

unint64_t re::MaterialTechniqueVariant::fillBufferTableLayerLists(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  v7 = v6[8];
  v8 = *a3;
  if (v7)
  {
    re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
    v9 = *a3;
    v10 = a3 + 24 * *a3;
    *(v10 + 16) = v7 + 264;
    *(v10 + 24) = v7 + 88;
    *(v10 + 32) = 7;
    v8 = v9 + 1;
    *a3 = v9 + 1;
    ++*(a3 + 8);
    v6 = *(a2 + 72);
  }

  v11 = v6[9];
  if (v11)
  {
    re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
    v12 = *a3;
    v13 = a3 + 24 * *a3;
    *(v13 + 16) = v11 + 264;
    *(v13 + 24) = v11 + 88;
    *(v13 + 32) = 8;
    v8 = v12 + 1;
    *a3 = v12 + 1;
    ++*(a3 + 8);
    v6 = *(a2 + 72);
  }

  v14 = v6[11];
  if (v14)
  {
    re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
    v15 = *a3;
    v16 = a3 + 24 * *a3;
    *(v16 + 16) = v14 + 264;
    *(v16 + 24) = v14 + 88;
    *(v16 + 32) = 12;
    v8 = v15 + 1;
    *a3 = v15 + 1;
    ++*(a3 + 8);
  }

  v17 = *(*a1 + 8);
  re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
  v18 = *a3;
  v19 = a3 + 16 + 24 * *a3;
  *v19 = v17 + 568;
  *(v19 + 8) = v17 + 392;
  *(v19 + 16) = 5;
  *a3 = v18 + 1;
  ++*(a3 + 8);
  v20 = *(*(*a1 + 8) + 16);
  result = re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v18 + 1, v21);
  v23 = *a3;
  v24 = a3 + 16 + 24 * *a3;
  *v24 = v20 + 512;
  *(v24 + 8) = v20 + 336;
  *(v24 + 16) = 6;
  *a3 = v23 + 1;
  ++*(a3 + 8);
  return result;
}

unint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  v19 = 0;
  v20 = 0;
  result = re::MaterialTechniqueVariant::fillBufferTableLayerLists(a1, a4, &v19);
  v10 = *(a3 + 32);
  if (v10)
  {
    v11 = *(a3 + 40);
    v12 = 112 * v10;
    do
    {
      v13 = *(v11 + 16);
      result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), v13, *a3);
      if ((result & 1) == 0)
      {
        v18 = v13;
        result = re::MaterialTechniqueVariant::resolveBufferArgument(v11, a2, v21, v19, &v18, 0);
        if (result)
        {
          result = re::DynamicArray<re::BufferResolution>::add(a5, &v18);
        }
      }

      v11 += 112;
      v12 -= 112;
    }

    while (v12);
  }

  v14 = *(a3 + 240);
  if (v14)
  {
    v15 = *(a3 + 248);
    v16 = 24 * v14;
    do
    {
      v17 = *(v15 + 16);
      result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), v17, *a3);
      if ((result & 1) == 0)
      {
        v18 = v17;
        re::MaterialTechniqueVariant::resolveBufferArgument(v15, a2, v21, v19, &v18, 1);
        result = re::DynamicArray<re::BufferResolution>::add(a5, &v18);
      }

      v15 += 24;
      v16 -= 24;
    }

    while (v16);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BufferResolution>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::TextureResolution>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::TextureResolution>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

unint64_t re::MaterialTechniqueVariant::fillConstantTableLayerLists(uint64_t **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a4 = 0;
  ++*(a4 + 8);
  *a5 = 0;
  ++*(a5 + 8);
  v10 = *(a3 + 72);
  v11 = v10[8];
  if (v11)
  {
    v12 = v11 + 152;
    v13 = v11 + 24;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v14 = *a4;
    v15 = (a4 + 24 * *a4);
    v15[2] = v12;
    v15[3] = v13;
    v15[4] = 8;
    *a4 = v14 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v16);
    v17 = *a5;
    v18 = (a5 + 24 * *a5);
    v18[2] = v12;
    v18[3] = v13;
    v18[4] = 8;
    v19 = v17 + 1;
    *a5 = v17 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  else
  {
    v19 = 0;
  }

  v20 = v10[12];
  if (v20)
  {
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(v19, a2);
    v21 = *a5;
    v22 = (a5 + 24 * *a5);
    v22[2] = v20 + 152;
    v22[3] = v20 + 24;
    v22[4] = 11;
    *a5 = v21 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  v23 = v10[9];
  if (v23)
  {
    v24 = v23 + 152;
    v25 = v23 + 24;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v26 = *a4;
    v27 = (a4 + 24 * *a4);
    v27[2] = v24;
    v27[3] = v25;
    v27[4] = 9;
    *a4 = v26 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v28);
    v29 = *a5;
    v30 = (a5 + 24 * *a5);
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = 9;
    *a5 = v29 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  v31 = v10[11];
  if (v31)
  {
    v32 = v31 + 152;
    v33 = v31 + 24;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v34 = *a4;
    v35 = (a4 + 24 * *a4);
    v35[2] = v32;
    v35[3] = v33;
    v35[4] = 10;
    *a4 = v34 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v36);
    v37 = *a5;
    v38 = (a5 + 24 * *a5);
    v38[2] = v32;
    v38[3] = v33;
    v38[4] = 10;
    *a5 = v37 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  v39 = v10[10];
  if (v39)
  {
    v40 = *v39;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v41 = *a4;
    v42 = (a4 + 24 * *a4);
    v42[2] = v40;
    v42[3] = 0;
    v42[4] = 13;
    *a4 = v41 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v43);
    v44 = *a5;
    v45 = (a5 + 24 * *a5);
    v45[2] = v40;
    v45[3] = 0;
    v45[4] = 13;
    *a5 = v44 + 1;
    ++*(a5 + 8);
  }

  v46 = (*a1)[1];
  v47 = v46 + 456;
  v48 = v46 + 328;
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
  v49 = a4 + 16;
  v50 = *a4;
  v51 = (a4 + 16 + 24 * *a4);
  *v51 = v47;
  v51[1] = v48;
  v51[2] = 6;
  *a4 = v50 + 1;
  ++*(a4 + 8);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v52);
  v54 = a5 + 16;
  v55 = *a5;
  v56 = (a5 + 16 + 24 * *a5);
  *v56 = v47;
  v56[1] = v48;
  v56[2] = 6;
  *a5 = v55 + 1;
  ++*(a5 + 8);
  if (*a2 == 1)
  {
    v57 = 4;
    v58 = 192;
    v59 = 320;
    goto LABEL_16;
  }

  if (*a2 == 2)
  {
    v57 = 5;
    v58 = 1320;
    v59 = 1448;
LABEL_16:
    v60 = **a1;
    v61 = v60 + v59;
    v62 = v60 + v58;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, v53);
    v63 = *a4;
    v64 = v49 + 24 * *a4;
    *v64 = v61;
    *(v64 + 8) = v62;
    *(v64 + 16) = v57;
    *(v64 + 20) = 0;
    *a4 = v63 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v65);
    v66 = *a5;
    v67 = v54 + 24 * *a5;
    *v67 = v61;
    *(v67 + 8) = v62;
    *(v67 + 16) = v57;
    *(v67 + 20) = 0;
    *a5 = v66 + 1;
    ++*(a5 + 8);
  }

  v68 = *((*a1)[1] + 16);
  v69 = v68 + 400;
  v70 = v68 + 272;
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, v53);
  v71 = *a4;
  v72 = (v49 + 24 * *a4);
  *v72 = v69;
  v72[1] = v70;
  v72[2] = 7;
  *a4 = v71 + 1;
  ++*(a4 + 8);
  result = re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v73);
  v75 = *a5;
  v76 = (v54 + 24 * *a5);
  *v76 = v69;
  v76[1] = v70;
  v76[2] = 7;
  *a5 = v75 + 1;
  ++*(a5 + 8);
  return result;
}

uint64_t re::MaterialTechniqueVariant::resolveConstantArgument(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7, __n128 a8)
{
  v101[3] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BA4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4D8))
  {
    re::Defaults::BOOLValue("enableShaderDebugLogs", v80, buf);
    if (buf[0])
    {
      v81 = buf[1];
    }

    else
    {
      v81 = 0;
    }

    byte_1EE1BA4C9 = v81;
    __cxa_guard_release(&qword_1EE1BA4D8);
  }

  v94 = a3;
  if (a7)
  {
    goto LABEL_13;
  }

  v15 = *a1;
  v16 = (*a1)[1];
  v86[0] = *a2 >> 1;
  re::MaterialParameterTable::handle((v16 + 304), v86, &v90);
  v86[0] = 0;
  if ((BYTE4(v91) & 7) != 0)
  {
    *buf = 1;
    *&buf[8] = v90;
    *&buf[16] = v91;
    v17 = v92;
  }

  else
  {
    v18 = *(v15[1] + 16);
    *v95 = *a2 >> 1;
    re::MaterialParameterTable::handle((v18 + 248), v95, buf);
    v19 = *buf;
    v91 = *&buf[8];
    LOBYTE(v92) = buf[24];
    *v95 = 0;
    if ((buf[12] & 7) == 0)
    {
      *buf = 0;
      *&buf[24] = 0;
      LOBYTE(v99) = 0;
      *&buf[8] = 0;
      *&buf[13] = 0;
      goto LABEL_8;
    }

    *buf = 2;
    *&buf[8] = v19;
    *&buf[16] = v91;
    v17 = v92;
  }

  LOBYTE(v99) = v17;
LABEL_8:
  v20 = re::StringID::StringID(v100, a2);
  v21 = buf[20] & 7;
  if (v100[0])
  {
    if (v100[0])
    {
    }
  }

  if (v21)
  {
    return 0;
  }

LABEL_13:
  v23 = **a1;
  v24 = *(v23 + 2712);
  v25 = *(v23 + 2704);
  if (v25)
  {
    v26 = 8 * v25;
    v27 = v24;
    while (*v27 != *a2 >> 1)
    {
      ++v27;
      v26 -= 8;
      if (!v26)
      {
        v28 = 0;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v27 = v24;
  }

  v29 = &v24[v25];
  v28 = v27 != v29;
  if (v27 != v29)
  {
    a4 = a5;
  }

LABEL_21:
  v30 = *a4;
  v31 = a4[1];
  v93 = 0;
  v91 = 0uLL;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  v86[1] = 0;
  v87 = 0;
  v86[0] = 0;
  v88 = 0;
  if (a7)
  {
    v32 = *(a2 + 72);
    if (!v32)
    {
      v85 = 0;
      v33 = *(a2 + 28);
      v84.n128_u32[2] = 0;
      v84.n128_u32[3] = v33;
      v34 = re::scanUntil<re::MetalTypeInfo,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::ResolvedFillCommand,re::ConstantLayer,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_0 &>(a2 + 24, v30, v31, &v94, &v84);
      if (v34)
      {
        if (v85)
        {
          v35 = v86;
        }

        else
        {
          v35 = &v90;
        }

        a8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(v35, &v84);
        goto LABEL_105;
      }

      if (*(a3 + 96))
      {
        *buf = *(a2 + 24);
        *&buf[8] = *(a2 + 32);
        re::StringID::StringID(&buf[16], (a2 + 40));
        LODWORD(v99) = *(a2 + 56);
        WORD2(v99) = *(a2 + 60);
        re::FixedArray<re::MetalTypeInfo>::FixedArray(v100, a2 + 64);
        v101[0] = *(a2 + 88);
        *(v101 + 6) = *(a2 + 94);
        v69 = *(a3 + 96);
        *v95 = *&buf[16] >> 1;
        v70 = (**v69)();
        if (v70)
        {
          v71 = v70;
          v72 = *v70;
          v84.n128_u32[0] = 12;
          v84.n128_u32[1] = v72;
          v73 = v84.n128_u32[3];
          if (v84.n128_u32[3] != v70[2])
          {
            v74 = *re::graphicsLogObjects(v70);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v71[2];
              *v95 = 136315650;
              *&v95[4] = *&buf[24];
              *&v95[12] = 1024;
              *&v95[14] = v73;
              v96 = 1024;
              v97 = v75;
              _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "Shader constant '%s' expects %d bytes, but the material parameter provides %d bytes.", v95, 0x18u);
            }
          }

          re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(&v90, &v84);
          v76 = re::FixedArray<re::MetalTypeInfo>::deinit(v100);
          if (buf[16])
          {
            if (buf[16])
            {
            }
          }

          goto LABEL_105;
        }

        re::FixedArray<re::MetalTypeInfo>::deinit(v100);
        re::StringID::destroyString(&buf[16]);
      }

      if (byte_1EE1BA4C9 == 1)
      {
        v77 = *re::graphicsLogObjects(v34);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = *(a2 + 48);
          v79 = *(a2 + 8);
          *buf = 136315394;
          *&buf[4] = v78;
          *&buf[12] = 2080;
          *&buf[14] = v79;
          _os_log_error_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_ERROR, "Found no parameter definition for shader constant '%s::%s'", buf, 0x16u);
        }
      }

LABEL_105:
      v54 = *(&v91 + 1);
      if (!(*(&v91 + 1) | v87))
      {
        goto LABEL_47;
      }

LABEL_61:
      v55 = 0;
      if (v54)
      {
        v56 = v93;
        v57 = 16 * v54;
        do
        {
          v58 = v56->n128_u32[0];
          ++v56;
          v55 |= 1 << v58;
          v57 -= 16;
        }

        while (v57);
      }

      if (v87)
      {
        v59 = v89;
        v60 = 16 * v87;
        do
        {
          v61 = v59->n128_u32[0];
          ++v59;
          v55 |= 1 << v61;
          v60 -= 16;
        }

        while (v60);
      }

      *(a6 + 100) = *(a2 + 28);
      *(a6 + 98) = *(a2 + 32);
      v62 = __clz(__rbit64(v55));
      if (v62 > 0xF)
      {
        LOBYTE(v62) = -1;
      }

      if ((v55 ^ (v55 - 1)) <= (v55 - 1))
      {
        v63 = -1;
      }

      else
      {
        v63 = v62;
      }

      *(a6 + 96) = *(a2 + 16);
      *(a6 + 106) = v63;
      *(a6 + 104) = v55;
      *(a6 + 107) = v28;
      re::DynamicArray<re::FillCommand>::operator=(a6 + 8, &v90);
      v64 = *(a6 + 24);
      if (v64)
      {
        if (16 * v64)
        {
          MurmurHash3_x64_128(*(a6 + 40), 16 * v64, 0, buf);
          v65 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
        }

        else
        {
          v65 = 0;
        }

        *a6 = v65;
      }

      re::DynamicArray<re::FillCommand>::operator=(a6 + 56, v86);
      v66 = *(a6 + 72);
      if (v66)
      {
        if (16 * v66)
        {
          MurmurHash3_x64_128(*(a6 + 88), 16 * v66, 0, buf);
          v67 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
        }

        else
        {
          v67 = 0;
        }

        *(a6 + 48) = v67;
      }

      v22 = 1;
      goto LABEL_83;
    }
  }

  else
  {
    v32 = *(a2 + 72);
    if (!v32)
    {
      v48 = 1;
      goto LABEL_46;
    }
  }

  v82 = v28;
  v83 = a6;
  v36 = *(a2 + 80);
  v37 = &v36[10 * v32];
  do
  {
    v95[16] = 0;
    *&v95[8] = *v36;
    if (re::scanUntil<re::MetalTypeInfo,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::ResolvedFillCommand,re::ConstantLayer,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_0 &>(v36, v30, v31, &v94, v95))
    {
      if (v95[16])
      {
        v38 = v86;
      }

      else
      {
        v38 = &v90;
      }

      a8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(v38, v95);
    }

    else
    {
      v39 = *(a3 + 96);
      if (v39 && (*buf = v36[2] >> 1, (v39 = (**v39)(v39, buf)) != 0))
      {
        v40 = v39;
        *v95 = 12;
        *&v95[4] = *v39;
        v41 = *&v95[12];
        if (*&v95[12] != v39[2])
        {
          v42 = *re::graphicsLogObjects(v39);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v36[3];
            v44 = v40[2];
            *buf = 136315650;
            *&buf[4] = v43;
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 1024;
            *&buf[20] = v44;
            _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Shader constant '%s' expects %d bytes, but the material parameter provides %d bytes.", buf, 0x18u);
          }
        }

        a8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(&v90, v95);
      }

      else if (byte_1EE1BA4C9 == 1)
      {
        v45 = *re::graphicsLogObjects(v39);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a2 + 48);
          v47 = v36[3];
          *buf = 136315394;
          *&buf[4] = v46;
          *&buf[12] = 2080;
          *&buf[14] = v47;
          _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "Found no parameter definition for shader constant '%s::%s'", buf, 0x16u);
        }
      }
    }

    v36 += 10;
  }

  while (v36 != v37);
  v32 = *(&v91 + 1);
  v48 = v87 == 0;
  a6 = v83;
  v28 = v82;
  if (*(&v91 + 1))
  {
    goto LABEL_48;
  }

LABEL_46:
  if (!v48)
  {
LABEL_48:
    v49 = 126 - 2 * __clz(v32);
    if (v32)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(v93, &v93[v32], v50, 1, a8);
    v52 = 126 - 2 * __clz(v87);
    if (v87)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(v89, &v89[v87], v53, 1, v51);
    re::DynamicArray<re::FillCommand>::operator=(&v90, buf);
    if (*buf && v99)
    {
      (*(**buf + 40))(*buf);
    }

    re::DynamicArray<re::FillCommand>::operator=(v86, buf);
    if (*buf && v99)
    {
      (*(**buf + 40))(*buf);
    }

    v54 = *(&v91 + 1);
    goto LABEL_61;
  }

LABEL_47:
  v22 = 0;
LABEL_83:
  if (v86[0] && v89)
  {
    (*(*v86[0] + 40))(a8);
  }

  if (v90 && v93)
  {
    (*(*v90 + 40))(a8);
  }

  return v22;
}

uint64_t re::scanUntil<re::MetalTypeInfo,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::ResolvedFillCommand,re::ConstantLayer,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_0 &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v8 = (a2 + 24 * a3);
  for (i = (a2 + 16); ; i += 6)
  {
    v11 = i - 4;
    v10 = *(i - 2);
    *buf = *(a1 + 16) >> 1;
    v12 = (**v10)(v10, buf);
    if (v12)
    {
      break;
    }

    v13 = *(i - 1);
    if (v13)
    {
      *buf = *(a1 + 16) >> 1;
      v14 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v13, buf);
      if (v14 != -1)
      {
        v15 = v13[1] + 40 * v14;
        v16 = *(v15 + 24);
        v17 = *a4;
        if (*(*a4 + 160) > v16)
        {
          v18 = *(*(v17 + 152) + v16);
          if (v18 <= 0x14)
          {
            v19 = v15 + 8;
            v20 = (***(v17 + 8 * v18))(*(v17 + 8 * v18), v15 + 32);
            if (v20)
            {
              v40 = *(*a4 + 160);
              if (v40 <= v16)
              {
                re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v40);
                _os_crash();
                __break(1u);
              }

              v41 = v20;
              *a5 = *(*(*a4 + 152) + v16);
              *(a5 + 4) = *v20;
              if (*(a5 + 12) != v20[2])
              {
                v42 = *re::graphicsLogObjects(v20);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = *(a1 + 24);
                  v44 = *(a5 + 12);
                  v45 = re::s_materialTableIDMappings[*(v19 + 16)];
                  v46 = re::WeakStringID::debugStr((v19 + 24));
                  v47 = v41[2];
                  *buf = 136316162;
                  *&buf[4] = v43;
                  v49 = 1024;
                  *v50 = v44;
                  *&v50[4] = 2080;
                  *&v50[6] = v45;
                  *&v50[14] = 2080;
                  *&v50[16] = v46;
                  v51 = 1024;
                  v52 = v47;
                  v37 = "Shader constant '%s' expects %d bytes, but the shader binding with struct '%s' and member hash '%s' provides %d bytes.";
                  v38 = v42;
                  v39 = 44;
LABEL_44:
                  _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
                }
              }

              return 1;
            }

            v22 = *re::graphicsLogObjects(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = re::s_materialTableIDMappings[*(v19 + 16)];
              v24 = *(v19 + 24);
              if (v24 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v25 = 0;
              }

              else if (v24)
              {
                snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *(v19 + 24));
                v25 = re::WeakStringID::debugStr(void)const::msg;
              }

              else
              {
                v25 = &str_67;
              }

              v26 = *(a1 + 24);
              *buf = 136315650;
              *&buf[4] = v23;
              v49 = 2080;
              *v50 = v25;
              *&v50[8] = 2080;
              *&v50[10] = v26;
              _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Invalid binding: '%s.%s' for shader constant '%s'", buf, 0x20u);
            }
          }
        }
      }
    }

    if (v11 + 6 == v8)
    {
      return 0;
    }
  }

  v28 = v12;
  *a5 = *i;
  *(a5 + 4) = *v12;
  if (*(a5 + 12) == v12[2])
  {
    return 1;
  }

  v29 = v12[3];
  v30 = *(a1 + 36);
  if (v29 > 0x20)
  {
    if (v29 != 33)
    {
      if (v29 != 34 || v30 != 19)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    if (v30 == 18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v29 != 1)
    {
      if (v29 != 32 || v30 != 17)
      {
        goto LABEL_33;
      }

LABEL_27:
      result = 1;
      *(a5 + 16) = 1;
      return result;
    }

    if (v30 == 16)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  if (byte_1EE1BA4C9 == 1)
  {
    v33 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 24);
      v35 = *(a5 + 12);
      v36 = v28[2];
      *buf = 136315650;
      *&buf[4] = v34;
      v49 = 1024;
      *v50 = v35;
      *&v50[4] = 1024;
      *&v50[6] = v36;
      v37 = "Shader constant '%s' expects %d bytes, but the material parameter provides %d bytes and cannot be downcast";
      v38 = v33;
      v39 = 24;
      goto LABEL_44;
    }
  }

  return 1;
}

double anonymous namespace::combineFillCommands(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 32);
    v8 = *v5;
    if (v2 != 1)
    {
      v6 = v5 + 1;
      do
      {
        if (v8.n128_u32[0] == v6->n128_u32[0] && __PAIR64__(v8.n128_u32[2] + v8.n128_u32[3], v8.n128_u32[3] + v8.n128_u32[1]) == *(v6->n128_u64 + 4))
        {
          v8.n128_u32[3] += v6->n128_u32[3];
        }

        else
        {
          re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(a1, &v8);
          v8 = *v6;
          v5 = *(a2 + 32);
          v2 = *(a2 + 16);
        }

        ++v6;
      }

      while (v6 != &v5[v2]);
    }

    *&result = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(a1, &v8).n128_u64[0];
  }

  return result;
}

uint64_t re::DynamicArray<re::FillCommand>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DynamicArray<re::ConstantResolution>::clear(a5);
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  result = re::MaterialTechniqueVariant::fillConstantTableLayerLists(a1, a3, a4, &v27, &v24);
  v11 = *(a3 + 32);
  if (v11)
  {
    v12 = *(a3 + 40);
    v13 = 112 * v11;
    do
    {
      result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), *(v12 + 16), *a3);
      if ((result & 1) == 0)
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        v18 = 0u;
        memset(v19, 0, 28);
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 255;
        v15[0] = &v29;
        v15[1] = v27;
        v14[0] = &v26;
        v14[1] = v24;
        if (re::MaterialTechniqueVariant::resolveConstantArgument(a1, v12, a2, v15, v14, v16, 0, 0))
        {
          re::DynamicArray<re::ConstantResolution>::add(a5, v16);
        }

        if (v19[0])
        {
          if (v20)
          {
            (*(*v19[0] + 40))();
          }

          v20 = 0;
          memset(v19, 0, 24);
          ++LODWORD(v19[3]);
        }

        result = *(&v16[0] + 1);
        if (*(&v16[0] + 1))
        {
          if (v18)
          {
            result = (*(**(&v16[0] + 1) + 40))();
          }
        }
      }

      v12 += 112;
      v13 -= 112;
    }

    while (v13);
  }

  return result;
}

uint64_t re::DynamicArray<re::ConstantResolution>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 112 * v2;
    v4 = *(result + 32) + 56;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v4);
      result = re::DynamicArray<unsigned long>::deinit(v4 - 48);
      v4 += 112;
      v3 -= 112;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::ConstantResolution>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::ConstantResolution>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ConstantResolution>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 112 * v5;
  *v11 = *a2;
  re::DynamicArray<re::GeomCell4>::DynamicArray(v11 + 8, (a2 + 8));
  *(v11 + 48) = *(a2 + 48);
  result = re::DynamicArray<re::GeomCell4>::DynamicArray(v11 + 56, (a2 + 56));
  v13 = *(a2 + 96);
  *(v11 + 104) = *(a2 + 104);
  *(v11 + 96) = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

unint64_t createSamplerLayerList(const re::MaterialTechnique *a1, const re::DrawCall *a2, uint64_t a3)
{
  v6 = *(a3 + 72);
  v7 = v6[8];
  if (v7)
  {
    re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(0, a2);
    *(a1 + 2) = v7 + 792;
    *(a1 + 3) = v7 + 616;
    *(a1 + 4) = v7 + 904;
    *(a1 + 5) = v7 + 968;
    *(a1 + 6) = 3;
    v8 = 1;
    *a1 = 1;
    v6 = *(a3 + 72);
    v7 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6[9];
  if (v9)
  {
    re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7, a2);
    v10 = (a1 + 40 * v7);
    v10[2] = v9 + 792;
    v10[3] = v9 + 616;
    v10[4] = v9 + 904;
    v10[5] = v9 + 968;
    v10[6] = 4;
    ++v7;
    ++v8;
    v6 = *(a3 + 72);
  }

  v11 = v6[11];
  if (v11)
  {
    re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7, a2);
    v12 = (a1 + 40 * v7);
    v12[2] = v11 + 792;
    v12[3] = v11 + 616;
    v12[4] = v11 + 904;
    v12[5] = v11 + 968;
    v12[6] = 5;
    ++v7;
    ++v8;
  }

  v13 = *(a2 + 1);
  re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7, a2);
  v14 = v13 + 1272;
  v15 = v13 + 1208;
  v16 = v13 + 920;
  v17 = v13 + 1096;
  v18 = a1 + 40 * v7;
  *(v18 + 2) = v17;
  *(v18 + 3) = v16;
  *(v18 + 4) = v15;
  *(v18 + 5) = v14;
  *(v18 + 12) = 1;
  v19 = *(*(a2 + 1) + 16);
  result = re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7 + 1, v20);
  *(v18 + 7) = v19 + 1040;
  *(v18 + 8) = v19 + 864;
  *(v18 + 9) = v19 + 1152;
  *(v18 + 10) = v19 + 1216;
  *(v18 + 22) = 2;
  *a1 = v7 + 2;
  *(a1 + 2) = v8 + 2;
  return result;
}

double re::MaterialTechniqueVariant::completeResolution(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v85 = *MEMORY[0x1E69E9840];
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v81 = 0x7FFFFFFFLL;
  createSamplerLayerList(&v76, *a1, a4);
  v73 = v76;
  v71 = a1;
  v7 = *(a1 + 8);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v9)
  {
    LODWORD(v9) = *(v9 + 332);
  }

  if (!(*(v8 + 332) | v9) || (v10 = a3[15]) == 0)
  {
    v69 = 0;
    goto LABEL_54;
  }

  v11 = 0;
  v12 = a3[16];
  v68 = &v12[2 * v10];
  v13 = &v77[5 * v76];
  do
  {
    v14 = *(v71 + 8);
    v15 = *(v14 + 24);
    if (v15)
    {
      LODWORD(v15) = *(v15 + 332);
    }

    v16 = *(*(v14 + 16) + 332);
    if (v16 <= v15)
    {
      v16 = v15;
    }

    if (v16 <= v11)
    {
      break;
    }

    v75 = 0;
    if (!v73)
    {
      goto LABEL_35;
    }

    v17 = v11;
    v18 = v77;
    while (1)
    {
      re::StringID::StringID(v82, v12);
      if (a3[24])
      {
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v82[0] >> 31) ^ (v82[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v82[0] >> 31) ^ (v82[0] >> 1))) >> 27));
        re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), v82, v19 ^ (v19 >> 31), buf);
        if (v84 != 0x7FFFFFFF)
        {
          v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v82[0] >> 31) ^ (v82[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v82[0] >> 31) ^ (v82[0] >> 1))) >> 27));
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), v82, v20 ^ (v20 >> 31), buf);
          re::StringID::operator=(v82, (a3[20] + 40 * v84 + 24));
        }
      }

      v21 = v18[2];
      *buf = v82[0] >> 1;
      v22 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v21, buf);
      if (v22 == -1)
      {
        goto LABEL_24;
      }

      v23 = v21[1] + 16 * v22;
      v26 = *(v23 + 8);
      v25 = (v23 + 8);
      v24 = v26;
      if (DWORD2(v79))
      {
        v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) >> 27));
        v28 = *(*(&v78 + 1) + 4 * ((v27 ^ (v27 >> 31)) % DWORD2(v79)));
        if (v28 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_21:
      v29 = *v18;
      v22 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(*v18, v25);
      if (v22 != -1)
      {
        v32 = v29[1] + 16 * v22;
        v31 = (v17 + 1);
        WORD2(v75) = *(v32 + 8);
        WORD1(v75) = *(v18 + 32);
        v33 = *(v71 + 8);
        v34 = 24;
        if (!*(v33 + 24))
        {
          v34 = 16;
        }

        LOWORD(v75) = *(*(v33 + v34) + 330) + v17;
        v35 = 0xBF58476D1CE4E5B9 * (*v25 ^ (*v25 >> 30));
        v36 = (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31);
        if (DWORD2(v79))
        {
          v37 = v36 % DWORD2(v79);
          v38 = *(*(&v78 + 1) + 4 * v37);
          if (v38 != 0x7FFFFFFF)
          {
            v11 = v17;
            while (*(v79 + 16 * v38 + 8) != *v25)
            {
              v38 = *(v79 + 16 * v38) & 0x7FFFFFFF;
              if (v38 == 0x7FFFFFFF)
              {
                goto LABEL_46;
              }
            }

            goto LABEL_30;
          }
        }

        else
        {
          v37 = 0;
        }

LABEL_46:
        v39 = v81;
        if (v81 == 0x7FFFFFFF)
        {
          v39 = v80;
          v40 = v80;
          if (v80 == DWORD2(v79))
          {
            v67 = v36;
            re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(&v78, 2 * HIDWORD(v79));
            v40 = v80;
            v37 = v67 % DWORD2(v79);
          }

          v80 = v40 + 1;
          v41 = v79;
          v42 = *(v79 + 16 * v39);
        }

        else
        {
          v41 = v79;
          v42 = *(v79 + 16 * v81);
          LODWORD(v81) = v42 & 0x7FFFFFFF;
        }

        v43 = 16 * v39;
        *(v41 + v43) = v42 | 0x80000000;
        v44 = *(&v78 + 1);
        *(v79 + v43) = *(v79 + 16 * v39) & 0x80000000 | *(*(&v78 + 1) + 4 * v37);
        *(v79 + 16 * v39 + 8) = *v25;
        *(v44 + 4 * v37) = v39;
        ++HIDWORD(v79);
        ++HIDWORD(v81);
        v11 = v17;
        goto LABEL_30;
      }

      v30 = *re::graphicsLogObjects(0xFFFFFFFFFFFFFFFFLL);
      v22 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        *buf = 136315138;
        *&buf[4] = v82[1];
        _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Texture '%s' is attempting to use a non-existent sampler via a texture block.", buf, 0xCu);
      }

LABEL_24:
      if (v82[0])
      {
        if (v82[0])
        {
        }
      }

      v18 += 5;
      if (v18 == v13)
      {
        v11 = v17;
        goto LABEL_35;
      }
    }

    while (*(v79 + 16 * v28 + 8) != v24)
    {
      v28 = *(v79 + 16 * v28) & 0x7FFFFFFF;
      if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_21;
      }
    }

    v11 = v17;
    v31 = v17;
LABEL_30:
    if (v82[0])
    {
      if (v82[0])
      {
      }
    }

    if (v11 != v31)
    {
      re::DynamicArray<re::BufferResolution>::add(a5, &v75);
      v11 = v31;
    }

LABEL_35:
    v12 += 2;
  }

  while (v12 != v68);
  v69 = v11;
LABEL_54:
  v45 = a3[26];
  if (v45)
  {
    v46 = a3[27];
    v72 = v46 + 24 * v45;
    do
    {
      v82[0] = 0;
      if (*(v46 + 18) != 1)
      {
        goto LABEL_60;
      }

      v47 = *(v71 + 8);
      v48 = 16;
      if (*(v47 + 24))
      {
        v48 = 24;
      }

      if (*(v46 + 16) - *(*(v47 + v48) + 330) >= v69)
      {
LABEL_60:
        if (v73)
        {
          v49 = v77;
          while (1)
          {
            v50 = *v49;
            *buf = *v46 >> 1;
            v51 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v50, buf);
            if (v51 != -1)
            {
              LODWORD(v52) = *(v49 + 8);
              v53 = *(v50[1] + 16 * v51 + 8);
              if (*(a2 + 24 * v52 + 8) > v53)
              {
                break;
              }
            }

            v54 = v49[1];
            *buf = *v46 >> 1;
            v55 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v54, buf);
            if (v55 != -1)
            {
              v52 = 0;
              v56 = v54[1] + 40 * v55;
              v57 = v56 + 8;
              v58 = *(v56 + 24);
              v59 = &re::s_samplerTableConstantMembers;
              v60 = (a2 + 8);
              while (1)
              {
                v61 = *v59;
                v59 += 16;
                if (v58 == v61)
                {
                  if (*v60)
                  {
                    break;
                  }
                }

                ++v52;
                v60 += 3;
                if (v52 == 6)
                {
                  goto LABEL_73;
                }
              }

              v62 = v60[1];
              v63 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v62, (v57 + 24));
              if (v63 != -1)
              {
                v53 = *(v62[1] + 16 * v63 + 8);
                if (*v60 <= v53)
                {
                  re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v62[1] + 16 * v63 + 8), *v60);
                  _os_crash();
                  __break(1u);
                }

                if (*(*(v60 - 1) + 8 * v53))
                {
                  break;
                }
              }
            }

LABEL_73:
            v49 += 5;
            if (v49 == &v77[5 * v73])
            {
              goto LABEL_74;
            }
          }

          WORD1(v82[0]) = v52;
          WORD2(v82[0]) = v53;
          LOWORD(v82[0]) = *(v46 + 16);
        }

        else
        {
LABEL_74:
          LODWORD(v82[0]) = *(v46 + 16);
          *buf = 0x5CEBE1FD2490;
          v65 = *(a2 + 16);
          WORD2(v82[0]) = *(v65[1] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v65, buf) + 8);
        }

        re::DynamicArray<re::BufferResolution>::add(a5, v82);
      }

      v46 += 24;
    }

    while (v46 != v72);
  }

  return re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v78);
}

{
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  SamplerLayerList = createSamplerLayerList(v75, *a1, a4);
  v63 = v75[0];
  v9 = v75[0] + 1;
  v10 = 4;
  do
  {
    if (!--v9)
    {
      break;
    }

    v11 = v75[v10];
    v10 += 5;
  }

  while (!*(v11 + 24));
  v12 = *(a1 + 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v14)
  {
    LODWORD(v14) = *(v14 + 332);
  }

  if (v9)
  {
    v15 = (*(v13 + 332) | v14) == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  v68 = v16;
  v17 = v75[0] + 1;
  v18 = 5;
  while (--v17)
  {
    v19 = v75[v18];
    v18 += 5;
    if (*(v19 + 24))
    {
      goto LABEL_17;
    }
  }

  if (v68)
  {
LABEL_17:
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v74 = 0x7FFFFFFFLL;
    v20 = a3[15];
    if (v20)
    {
      v64 = 0;
      v21 = a3[16];
      v67 = v21 + 32 * v20;
      if (v75[0])
      {
        v22 = v17 == 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = !v22;
      v65 = v23;
      v66 = a5;
      do
      {
        v24 = *(a1 + 8);
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v26)
        {
          v27 = *(v26 + 332);
          v28 = *(v25 + 332);
          if (v28 <= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v28;
          }

          v30 = v29 - 1;
          if (!v68)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v28 = *(v25 + 332);
          v30 = v28 - 1;
          if ((v68 & 1) == 0)
          {
            goto LABEL_48;
          }

          v27 = 0;
        }

        if (v28 <= v27)
        {
          v28 = v27;
        }

        if (v28 > v64)
        {
          if (!v63)
          {
            goto LABEL_85;
          }

          v70 = v30;
          v31 = &v76;
          v32 = 40 * v63;
          while (1)
          {
            re::StringID::StringID(&v78, v21);
            if (a3[24])
            {
              v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v33 ^ (v33 >> 31), &v79);
              if (v80 != 0x7FFFFFFF)
              {
                v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
                re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v34 ^ (v34 >> 31), &v79);
                re::StringID::operator=(&v78, (a3[20] + 40 * v80 + 24));
              }
            }

            v35 = *v31;
            v79 = v78 >> 1;
            SamplerLayerList = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v35, &v79);
            if (SamplerLayerList != -1)
            {
              v36 = v35[1] + 16 * SamplerLayerList;
              SamplerLayerList = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(*(v31 - 2), (v36 + 8));
              if (SamplerLayerList != -1)
              {
                break;
              }
            }

            if (v78)
            {
              if (v78)
              {
              }
            }

            v31 += 5;
            v32 -= 40;
            if (!v32)
            {
              LOBYTE(v37) = 0;
              v38 = 0;
              goto LABEL_49;
            }
          }

          v51 = *(v36 + 8);
          v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) >> 27));
          v53 = v52 ^ (v52 >> 31);
          if (v71)
          {
            v54 = v53 % DWORD2(v72);
            v55 = *(*(&v71 + 1) + 4 * v54);
            if (v55 != 0x7FFFFFFF)
            {
              v56 = *(v72 + 24 * v55 + 8);
              if (v56 == v51)
              {
                v57 = *(*(&v71 + 1) + 4 * v54);
LABEL_78:
                v58 = v72 + 24 * v57;
                v59 = *(v58 + 18);
                LOBYTE(v37) = *(v58 + 20);
                goto LABEL_95;
              }

              while (1)
              {
                v60 = *(v72 + 24 * *(*(&v71 + 1) + 4 * v54)) & 0x7FFFFFFF;
                if (v60 == 0x7FFFFFFF)
                {
                  break;
                }

                if (*(v72 + 24 * v60 + 8) == v51)
                {
                  while (1)
                  {
                    v57 = v55;
                    if (v56 == v51)
                    {
                      break;
                    }

                    v55 = *(v72 + 24 * v55) & 0x7FFFFFFF;
                    v57 = 0x7FFFFFFF;
                    if (v55 == 0x7FFFFFFF)
                    {
                      break;
                    }

                    v56 = *(v72 + 24 * v55 + 8);
                  }

                  goto LABEL_78;
                }
              }

              v62 = v64 + 1;
              v59 = v64;
              while (*(v72 + 24 * v55 + 8) != v51)
              {
                LODWORD(v55) = *(v72 + 24 * v55) & 0x7FFFFFFF;
                if (v55 == 0x7FFFFFFF)
                {
                  goto LABEL_93;
                }
              }

              LOBYTE(v37) = 0;
LABEL_94:
              v64 = v62;
LABEL_95:
              v38 = *(v21 + 16);
              if (v78)
              {
                if (v78)
                {
                }
              }

              v70 = v59;
              LODWORD(v32) = 1;
              goto LABEL_49;
            }
          }

          else
          {
            LODWORD(v54) = 0;
          }

          v62 = v64 + 1;
          v59 = v64;
LABEL_93:
          SamplerLayerList = re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(&v71, v54, v53);
          LOBYTE(v37) = 0;
          *(SamplerLayerList + 8) = *(v36 + 8);
          *(SamplerLayerList + 16) = 0;
          *(SamplerLayerList + 18) = v59;
          *(SamplerLayerList + 20) = 0;
          ++HIDWORD(v74);
          goto LABEL_94;
        }

LABEL_48:
        v70 = v30;
        LOBYTE(v37) = 0;
        v38 = 0;
        LODWORD(v32) = 0;
LABEL_49:
        if (v65)
        {
          v39 = &v77;
          v40 = 40 * v63;
          while (1)
          {
            re::StringID::StringID(&v78, v21);
            if (a3[24])
            {
              v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v41 ^ (v41 >> 31), &v79);
              if (v80 != 0x7FFFFFFF)
              {
                v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
                re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v42 ^ (v42 >> 31), &v79);
                re::StringID::operator=(&v78, (a3[20] + 40 * v80 + 24));
              }
            }

            v43 = *v39;
            v79 = v78 >> 1;
            SamplerLayerList = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v43, &v79);
            if (SamplerLayerList != -1)
            {
              break;
            }

            if (v78)
            {
              if (v78)
              {
              }
            }

            v39 += 5;
            v40 -= 40;
            if (!v40)
            {
              goto LABEL_59;
            }
          }

          v37 = *(v43[1] + 16 * SamplerLayerList + 8);
          v38 = *(v21 + 16);
          if (v78)
          {
            if (v78)
            {
            }
          }

          v44 = v66;
LABEL_65:
          v45 = *(v44 + 8);
          v46 = *(v44 + 16);
          if (v46 >= v45)
          {
            v47 = v46 + 1;
            if (v45 < v46 + 1)
            {
              if (*v44)
              {
                v48 = 2 * v45;
                v15 = v45 == 0;
                v49 = 8;
                if (!v15)
                {
                  v49 = v48;
                }

                if (v49 <= v47)
                {
                  v50 = v47;
                }

                else
                {
                  v50 = v49;
                }

                SamplerLayerList = re::DynamicArray<re::internal::Voxel>::setCapacity(v44, v50);
              }

              else
              {
                SamplerLayerList = re::DynamicArray<re::internal::Voxel>::setCapacity(v44, v47);
                ++*(v44 + 24);
              }
            }

            v46 = *(v44 + 16);
          }

          v61 = *(v44 + 32) + 6 * v46;
          *v61 = v38;
          *(v61 + 2) = v70;
          *(v61 + 4) = v37;
          ++*(v44 + 16);
          ++*(v44 + 24);
          goto LABEL_85;
        }

LABEL_59:
        v44 = v66;
        if (v32)
        {
          goto LABEL_65;
        }

LABEL_85:
        v21 += 32;
      }

      while (v21 != v67);
    }

    return re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v71);
  }

  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v130 = *MEMORY[0x1E69E9840];
  v8 = *(a5 + 16);
  *(a5 + 16) = 0;
  if (v8)
  {
    v9 = 144 * v8;
    v10 = *(a5 + 32) + 80;
    do
    {
      v11 = *(v10 + 40);
      if (v11)
      {

        *(v10 + 40) = 0;
      }

      re::DynamicArray<re::ConstantResolution>::deinit(v10);
      re::DynamicArray<unsigned long>::deinit(v10 - 40);
      re::DynamicArray<unsigned long>::deinit(v10 - 80);
      v10 += 144;
      v9 -= 144;
    }

    while (v9);
  }

  ++*(a5 + 24);
  v109 = 0;
  v110 = 0;
  re::MaterialTechniqueVariant::fillTextureTableLayerLists(a1, a2, a4, &v109);
  v106 = 0;
  v107 = 0;
  v103 = 0;
  v104 = 0;
  re::MaterialTechniqueVariant::fillConstantTableLayerLists(a1, a3, a4, &v106, &v103);
  v100 = 0;
  v101 = 0;
  result = re::MaterialTechniqueVariant::fillBufferTableLayerLists(a1, a4, &v100);
  v13 = *(a3 + 64);
  if (!v13)
  {
    return result;
  }

  v14 = 0;
  v72 = a3;
  do
  {
    v15 = *(a3 + 72) + 112 * v14;
    result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), *(v15 + 16), *a3);
    if (result)
    {
      goto LABEL_97;
    }

    v16 = *(a3 + 88);
    if (v16 <= v14)
    {
      v76 = 0;
      v122 = 0u;
      *v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 476;
      *&buf[18] = 2048;
      *&buf[20] = v14;
      *&buf[28] = 2048;
      *&buf[30] = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v17 = *(a3 + 96);
    v119 = 0uLL;
    DWORD2(v120) = 0;
    *&v120 = 0;
    v121 = 0u;
    v122 = 0u;
    *v123 = 0;
    *&v123[8] = 0u;
    v124 = 0u;
    v125 = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    v129 = 0;
    v129 = *(v15 + 16);
    v99 = 0;
    v96[1] = 0;
    v97 = 0;
    v95 = 0;
    v96[0] = 0;
    v98 = 0;
    v92[1] = 0;
    v93 = 0;
    v91 = 0;
    v92[0] = 0;
    v94 = 0;
    v88[1] = 0;
    v89 = 0;
    v88[0] = 0;
    v90 = 0;
    v18 = *(v15 + 72);
    if (!v18)
    {
      v128 = 0;
      v53 = a5;
      goto LABEL_51;
    }

    v68 = v17;
    v19 = 0;
    v20 = 0;
    v21 = *(v15 + 80);
    v22 = 80 * v18;
    do
    {
      v23 = (v21 + v19);
      v24 = *(v21 + v19 + 36);
      if (v24 > 0x3A)
      {
        if (v24 != 59)
        {
          if (v24 == 60)
          {
            *buf = 0;
            *buf = *(v21 + v19 + 72);
            re::MaterialTechniqueVariant::resolveBufferArgument((v21 + v19 + 16), *(a2 + 16), &v102, v100, buf, 1);
            v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *&buf[2]) ^ ((0xBF58476D1CE4E5B9 * *&buf[2]) >> 27));
            v32 = ((v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + (v31 ^ (v31 >> 31))) ^ v20;
            v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *&buf[4]) ^ ((0xBF58476D1CE4E5B9 * *&buf[4]) >> 27));
            v20 = ((v33 ^ (v33 >> 31)) - 0x61C8864680B583E9 + (v32 << 6) + (v32 >> 2)) ^ v32;
            result = re::DynamicArray<re::BufferResolution>::add(v92, buf);
            goto LABEL_39;
          }

          goto LABEL_22;
        }

        v50 = *re::graphicsLogObjects(result);
        result = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_39;
        }

        v51 = *(v21 + v19 + 24);
        v52 = *(v15 + 8);
        *buf = 136315394;
        *&buf[4] = v51;
        *&buf[12] = 2080;
        *&buf[14] = v52;
        v48 = v50;
        v49 = "Found sampler member (%s) in Bindless Argument (%s). This is not supported.";
LABEL_42:
        _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
        goto LABEL_39;
      }

      if (v24 == 1)
      {
        v45 = *re::graphicsLogObjects(result);
        result = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_39;
        }

        v46 = *(v21 + v19 + 24);
        v47 = *(v15 + 8);
        *buf = 136315394;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = v47;
        v48 = v45;
        v49 = "Found struct member (%s) in Bindless Argument (%s). This is not supported.";
        goto LABEL_42;
      }

      if (v24 == 58)
      {
        v75[0] = 0;
        *buf = 0;
        *&buf[8] = &str_67;
        *&buf[24] = 0;
        *&buf[16] = 0;
        *&buf[19] = 0;
        v25 = re::StringID::operator=(buf, (v21 + v19 + 16));
        *&buf[18] = *(v21 + v19 + 64);
        buf[22] = *(v21 + v19 + 68);
        v26 = *(a2 + 8);
        v76 = &v111;
        v77 = v109;
        re::MaterialTechniqueVariant::resolveTextureArgument(v25, buf, v26, &v76, v75, a6, v72);
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        LOWORD(v75[0]) = *(v21 + v19 + 72);
        v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * WORD1(v75[0])) ^ ((0xBF58476D1CE4E5B9 * WORD1(v75[0])) >> 27));
        v29 = ((v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + (v28 ^ (v28 >> 31))) ^ v20;
        v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * WORD2(v75[0])) ^ ((0xBF58476D1CE4E5B9 * WORD2(v75[0])) >> 27));
        v20 = ((v30 ^ (v30 >> 31)) - 0x61C8864680B583E9 + (v29 << 6) + (v29 >> 2)) ^ v29;
        result = re::DynamicArray<re::TextureResolution>::add(v96, v75);
        goto LABEL_39;
      }

LABEL_22:
      memset(buf, 0, 36);
      v113 = 0u;
      memset(v114, 0, 28);
      v117 = 0;
      v115 = 0;
      v116 = 0;
      v118 = 255;
      LOWORD(v116) = *(v21 + v19 + 72);
      v76 = 0;
      v77 = &str_67;
      v78 = 0;
      v79 = 0;
      v80 = 1;
      v81 = 0;
      v82 = &str_67;
      v83 = 0;
      v84 = 0;
      *&v86[16] = 0;
      *&v86[20] = 256;
      v85[1] = 0;
      *v86 = 0;
      v85[0] = 0;
      *&v86[5] = 0;
      v87 = 0;
      re::StringID::operator=(&v76, (v21 + v19 + 16));
      v34 = *v23;
      v80 = *(v23 + 2);
      v79 = v34;
      re::StringID::operator=(&v81, (v21 + v19 + 16));
      v35 = *(v21 + v19 + 32);
      v84 = *(v21 + v19 + 36);
      v83 = v35;
      re::FixedArray<re::MetalTypeInfo>::operator=(v85, v21 + v19 + 40);
      v36 = *(v21 + v19 + 70);
      *&v86[8] = *(v21 + v19 + 64);
      *&v86[14] = v36;
      v37 = *a2;
      v75[0] = &v108;
      v75[1] = v106;
      v74[0] = &v105;
      v74[1] = v103;
      re::MaterialTechniqueVariant::resolveConstantArgument(a1, &v76, v37, v75, v74, buf, 1, v38);
      v39 = re::FixedArray<re::MetalTypeInfo>::deinit(v85);
      if (v81)
      {
        if (v81)
        {
        }
      }

      v81 = 0;
      v82 = &str_67;
      if (v76)
      {
        if (v76)
        {
        }
      }

      LOWORD(v116) = *(v21 + v19 + 72);
      v40 = *buf;
      v41 = *(&v113 + 1);
      re::DynamicArray<re::ConstantResolution>::add(v88, buf);
      if (v114[0])
      {
        if (v115)
        {
          (*(*v114[0] + 40))();
        }

        v115 = 0;
        memset(v114, 0, 24);
        ++LODWORD(v114[3]);
      }

      result = *&buf[8];
      if (*&buf[8] && v113)
      {
        result = (*(**&buf[8] + 40))();
      }

      v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
      v43 = ((v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + (v42 ^ (v42 >> 31))) ^ v20;
      v44 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
      v20 = ((v44 ^ (v44 >> 31)) - 0x61C8864680B583E9 + (v43 << 6) + (v43 >> 2)) ^ v43;
LABEL_39:
      v19 += 80;
    }

    while (v22 != v19);
    v128 = v20;
    v53 = a5;
    if (v119)
    {
      v17 = v68;
      if (v96[0])
      {
        re::DynamicArray<re::TextureResolution>::copy(&v119, v96);
      }

      else
      {
        *&v120 = 0;
      }

      ++DWORD2(v120);
    }

    else
    {
      v17 = v68;
      if (v96[0])
      {
        *&v119 = v96[0];
        re::DynamicArray<re::TextureResolution>::setCapacity(&v119, v97);
        ++DWORD2(v120);
        re::DynamicArray<re::TextureResolution>::copy(&v119, v96);
      }
    }

LABEL_51:
    v54 = v92[0];
    if (*(&v121 + 1))
    {
      if (v92[0])
      {
        re::DynamicArray<re::TextureResolution>::copy(&v121 + 1, v92);
      }

      else
      {
        *(&v122 + 1) = 0;
      }

      ++*v123;
    }

    else if (v92[0])
    {
      *(&v121 + 1) = v92[0];
      re::DynamicArray<re::TextureResolution>::setCapacity(&v121 + 1, v93);
      ++*v123;
      re::DynamicArray<re::TextureResolution>::copy(&v121 + 1, v92);
    }

    if (*&v123[16])
    {
      if (v88[0])
      {
        re::DynamicArray<re::ConstantResolution>::copy(&v123[16], v88);
        ++v125;
      }

      else
      {
        re::DynamicArray<re::ConstantResolution>::clear(&v123[16]);
      }
    }

    else if (v88[0])
    {
      *&v123[16] = v88[0];
      re::DynamicArray<re::ConstantResolution>::setCapacity(&v123[16], v89);
      ++v125;
      re::DynamicArray<re::ConstantResolution>::copy(&v123[16], v88);
    }

    v55 = NS::SharedPtr<MTL::Buffer>::operator=(&v127, (v17 + 8 * v14));
    v56 = *(v53 + 8);
    v57 = *(v53 + 16);
    if (v57 >= v56)
    {
      v58 = v57 + 1;
      if (v56 < v57 + 1)
      {
        if (*v53)
        {
          v59 = 2 * v56;
          v60 = v56 == 0;
          v61 = 8;
          if (!v60)
          {
            v61 = v59;
          }

          if (v61 <= v58)
          {
            v62 = v58;
          }

          else
          {
            v62 = v61;
          }

          re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(v53, v62);
        }

        else
        {
          re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(v53, v58);
          ++*(v53 + 24);
        }
      }

      v57 = *(v53 + 16);
    }

    v63 = *(v53 + 32) + 144 * v57;
    *(v63 + 32) = 0;
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *v63 = 0;
    *(v63 + 24) = 0;
    if (v119)
    {
      v64 = v120;
      *v63 = v119;
      re::DynamicArray<re::TextureResolution>::setCapacity(v63, v64);
      ++*(v63 + 24);
      re::DynamicArray<re::TextureResolution>::copy(v63, &v119);
    }

    *(v63 + 40) = 0;
    *(v63 + 72) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    if (*(&v121 + 1))
    {
      v65 = *(&v122 + 1);
      *(v63 + 40) = *(&v121 + 1);
      re::DynamicArray<re::TextureResolution>::setCapacity((v63 + 40), v65);
      ++*(v63 + 64);
      re::DynamicArray<re::TextureResolution>::copy((v63 + 40), &v121 + 8);
    }

    *(v63 + 80) = 0;
    *(v63 + 112) = 0;
    *(v63 + 88) = 0;
    *(v63 + 96) = 0;
    *(v63 + 104) = 0;
    if (*&v123[16])
    {
      v66 = *(&v124 + 1);
      *(v63 + 80) = *&v123[16];
      re::DynamicArray<re::ConstantResolution>::setCapacity((v63 + 80), v66);
      ++*(v63 + 104);
      re::DynamicArray<re::ConstantResolution>::copy((v63 + 80), &v123[16]);
    }

    *(v63 + 120) = v127;
    v67 = v129;
    *(v63 + 128) = v128;
    *(v63 + 136) = v67;
    ++*(v53 + 16);
    ++*(v53 + 24);
    re::DynamicArray<re::ConstantResolution>::deinit(v88);
    if (v54 && v95)
    {
      (*(*v54 + 40))(v54);
    }

    a3 = v72;
    if (v96[0] && v99)
    {
      (*(*v96[0] + 40))();
    }

    if (v127)
    {

      v127 = 0;
    }

    re::DynamicArray<re::ConstantResolution>::deinit(&v123[16]);
    if (*(&v121 + 1))
    {
      if (*&v123[8])
      {
        (*(**(&v121 + 1) + 40))();
      }

      *&v123[8] = 0;
      v122 = 0uLL;
      *(&v121 + 1) = 0;
      ++*v123;
    }

    result = v119;
    if (v119)
    {
      if (v121)
      {
        result = (*(*v119 + 40))();
      }
    }

    v13 = *(v72 + 64);
LABEL_97:
    ++v14;
  }

  while (v14 < v13);
  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::AttributeResolution,re::AttributeTable>(re *a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v15 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 48, 8);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v14 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v15, &v14);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, (*v11 + 8));
  return v12;
}

uint64_t re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = v7;
  ++*(a1 + 40);
  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::BufferResolution,re::BufferTableCollection>(re *a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 88, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v15 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v16, &v15);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v11 + 8);
  v13 = *(*(a1 + 1) + 24);
  if (v13)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v13, a4, v12 + 48);
  }

  return v12;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::TextureResolution,re::TextureTableCollection>(re *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v18 = a5;
  v10 = *a2;
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 88, 8);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  v17 = v12;
  v13 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v10, &v18, &v17);
  v14 = *v13;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v13 + 8, a6);
  v15 = *(*(a1 + 1) + 24);
  if (v15)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v15, a4, v14 + 48, a6);
  }

  return v14;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::ConstantResolution,re::ConstantTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 88, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v15 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v16, &v15);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v11 + 8);
  v13 = *(*(a1 + 1) + 24);
  if (v13)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v13, a4, v12 + 48);
  }

  return v12;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::SamplerResolution,re::SamplerTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 88, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v15 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v16, &v15);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v11 + 8);
  v13 = *(*(a1 + 1) + 24);
  if (v13)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v13, a4, v12 + 48);
  }

  return v12;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::TextureBlockResolution,re::SamplerTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = a5;
  v7 = *a2;
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 88, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0;
  v16 = v9;
  v10 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v7, &v17, &v16);
  v11 = *v10;
  re::MaterialTechniqueVariant::completeResolution(a1, v12, *(*(a1 + 1) + 16), a4, *v10 + 8);
  v14 = *(*(a1 + 1) + 24);
  if (v14)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, v13, v14, a4, v11 + 48);
  }

  return v11;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::ArgumentBufferResolution,re::ArgumentBufferTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v18 = a5;
  v10 = *a2;
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 88, 8);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  v17 = v12;
  v13 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v10, &v18, &v17);
  v14 = *v13;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v13 + 8, a6);
  v15 = *(*(a1 + 1) + 24);
  if (v15)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v15, a4, v14 + 48, a6);
  }

  return v14;
}

uint64_t re::MaterialTechniqueVariant::shouldCompileSynchronously(re::MaterialTechniqueVariant *this)
{
  {
    v5 = this;
    this = v5;
    if (v4)
    {
      re::Defaults::BOOLValue("compilePipelinesSynchronously", v3, &re::MaterialTechniqueVariant::shouldCompileSynchronously(void)const::_compilePipelinesSynchronously);
      this = v5;
    }
  }

  if (re::MaterialTechniqueVariant::shouldCompileSynchronously(void)const::_compilePipelinesSynchronously == 1)
  {
    v1 = byte_1ECF1CC91;
  }

  else if (*(this + 16))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(**this + 2845) ^ 1;
  }

  return v1 & 1;
}

void *re::introspect_ShaderAPIFlagsValues(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "None";
      re::introspect_ShaderAPIFlagsValues(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "SurfaceShader";
      qword_1EE1C6450 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "SurfaceShaderPrivate";
      qword_1EE1C6458 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 1) = 4;
      *(v17 + 2) = "GeometryModifier";
      qword_1EE1C6460 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 24, 8);
      *v19 = 1;
      *(v19 + 8) = 8;
      *(v19 + 16) = "GeometryModifierPrivate";
      qword_1EE1C6468 = v19;
    }
  }

  {
    v20 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_ShaderAPIFlagsValues(BOOL)::info, "ShaderAPIFlagsValues", 4, 4, 1, 1);
    *v20 = &unk_1F5D0C658;
    *(v20 + 8) = &re::introspect_ShaderAPIFlagsValues(BOOL)::enumTable;
    *(v20 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized)
    {
      return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    v3 = re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    if (v3)
    {
      return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
    }
  }

  re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_ShaderAPIFlagsValues(BOOL)::info, a2);
  v21[0] = 0xDB7D46A3AA816EE8;
  v21[1] = "ShaderAPIFlagsValues";
  xmmword_1EE1C6420 = v22;
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
}

uint64_t re::internal::MoveOnlyCallable<re::MaterialTechniqueVariant::releasePipelineStates(re::RenderManager *,re::DrawingManager *)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D092E0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = v2;
  return a2;
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_8;
  }

  v6 = v4 % v5;
  v7 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    v10 = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(a1, v6, v4, a2, a2);
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 16 * v10;
    return v9 + 8;
  }

  v8 = *(a1 + 16);
  while (*(v8 + 16 * v7 + 8) != v4)
  {
    v7 = *(v8 + 16 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v9 = v8 + 16 * v7;
  return v9 + 8;
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 16 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  v13 = *(a1 + 8);
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 16 * v7) & 0x80000000 | *(v13 + 4 * a2);
  *(*(a1 + 16) + 16 * v7 + 8) = *a5;
  *(v13 + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10) & 0x80000000) != 0)
          {
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(a1, *(*&v13[16] + v10 + 8) % *(a1 + 24), *(*&v13[16] + v10 + 8), *&v13[16] + v10 + 8, *&v13[16] + v10 + 8);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

unint64_t re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::TextureResolution>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TextureResolution>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TextureResolution>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TextureResolution>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 2);
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
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::TextureResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

unint64_t re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 4)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v132 = a2[-1].n128_u32[0];
        v131 = a2 - 1;
        v133 = v132 == v12->n128_u32[0];
        v134 = v132 < v12->n128_u32[0];
        if (v133)
        {
          v134 = v131->n128_u32[2] < v12->n128_u32[2];
        }

        if (v134)
        {
          v239 = *v12;
          *v12 = *v131;
          *v131 = v239;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(v12, v12 + 1, v12 + 2, a2 - 1, a5);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a5);
      v117 = a2[-1].n128_u32[0];
      v116 = a2 - 1;
      v118 = v12[3].n128_u32[0];
      v119 = v117 < v118;
      if (v117 == v118)
      {
        v119 = v116->n128_u32[2] < v12[3].n128_u32[2];
      }

      if (v119)
      {
        v120 = v12[3];
        v12[3] = *v116;
        *v116 = v120;
        v121 = v12[3].n128_u32[0];
        v122 = v12[2].n128_u32[0];
        v133 = v121 == v122;
        v123 = v121 < v122;
        if (v133)
        {
          v123 = v12[3].n128_u32[2] < v12[2].n128_u32[2];
        }

        if (v123)
        {
          v124 = v12[2];
          v12[2] = v12[3];
          v12[3] = v124;
          v125 = v12[2].n128_u32[0];
          v126 = v12[1].n128_u32[0];
          v133 = v125 == v126;
          v127 = v125 < v126;
          if (v133)
          {
            v127 = v12[2].n128_u32[2] < v12[1].n128_u32[2];
          }

          if (v127)
          {
            v128 = v12[1];
            v12[1] = v12[2];
            v12[2] = v128;
            v129 = v12[1].n128_u32[0];
            v133 = v129 == v12->n128_u32[0];
            v130 = v129 < v12->n128_u32[0];
            if (v133)
            {
              v130 = v12[1].n128_u32[2] < v12->n128_u32[2];
            }

            if (v130)
            {
              v238 = *v12;
              *v12 = v12[1];
              v12[1] = v238;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v144 = v12 + 1;
      v146 = v12 == a2 || v144 == a2;
      if (a4)
      {
        if (!v146)
        {
          v147 = 0;
          v148 = v12;
          do
          {
            v149 = v144;
            v150 = v148[1].n128_u32[0];
            v151 = v148[1].n128_u32[2];
            v152 = v150 < v148->n128_u32[0];
            if (v150 == v148->n128_u32[0])
            {
              v152 = v151 < v148->n128_u32[2];
            }

            if (v152)
            {
              v153 = v148[1].n128_u32[1];
              v154 = v148[1].n128_u32[3];
              v155 = v147;
              while (1)
              {
                v156 = v12 + v155;
                *(v12 + v155 + 16) = *(v12 + v155);
                if (!v155)
                {
                  break;
                }

                v157 = *(v156 - 4);
                v158 = v151 < *(v156 - 2);
                v133 = v150 == v157;
                v159 = v150 < v157;
                if (!v133)
                {
                  v158 = v159;
                }

                v155 -= 16;
                if (!v158)
                {
                  v160 = (v12 + v155 + 16);
                  goto LABEL_211;
                }
              }

              v160 = v12;
LABEL_211:
              v160->n128_u32[0] = v150;
              v160->n128_u32[1] = v153;
              v160->n128_u32[2] = v151;
              v160->n128_u32[3] = v154;
            }

            v144 = v149 + 1;
            v147 += 16;
            v148 = v149;
          }

          while (&v149[1] != a2);
        }
      }

      else if (!v146)
      {
        do
        {
          v205 = v144;
          v206 = a1[1].n128_u32[0];
          v207 = a1[1].n128_u32[2];
          v208 = v206 < a1->n128_u32[0];
          if (v206 == a1->n128_u32[0])
          {
            v208 = v207 < a1->n128_u32[2];
          }

          if (v208)
          {
            v209 = a1[1].n128_u32[1];
            v210 = a1[1].n128_u32[3];
            v211 = v205;
            do
            {
              *v211 = v211[-1];
              v212 = v211[-2].n128_u32[0];
              v213 = v211[-2].n128_u32[2];
              --v211;
              v214 = v207 < v213;
              v133 = v206 == v212;
              v215 = v206 < v212;
              if (v133)
              {
                v215 = v214;
              }
            }

            while (v215);
            v211->n128_u32[0] = v206;
            v211->n128_u32[1] = v209;
            v211->n128_u32[2] = v207;
            v211->n128_u32[3] = v210;
          }

          v144 = v205 + 1;
          a1 = v205;
        }

        while (&v205[1] != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v161 = (v13 - 2) >> 1;
        v162 = v161;
        do
        {
          v163 = v162;
          if (v161 >= v162)
          {
            v164 = (2 * v162) | 1;
            v165 = &v12[v164];
            if (2 * v163 + 2 >= v13)
            {
              v167 = v165->n128_u32[0];
            }

            else
            {
              v166 = v165[1].n128_u32[0];
              v167 = v165->n128_u32[0];
              v168 = v165->n128_u32[2] < v165[1].n128_u32[2];
              if (v165->n128_u32[0] != v166)
              {
                v168 = v165->n128_u32[0] < v166;
              }

              if (v168)
              {
                v167 = v165[1].n128_u32[0];
                ++v165;
                v164 = 2 * v163 + 2;
              }
            }

            v169 = &v12[v163];
            v170 = v169->n128_u32[0];
            v171 = v169->n128_u32[2];
            v133 = v167 == v169->n128_u32[0];
            v172 = v167 < v169->n128_u32[0];
            if (v133)
            {
              v172 = v165->n128_u32[2] < v171;
            }

            if (!v172)
            {
              v173 = v169->n128_u32[1];
              v174 = v169->n128_u32[3];
              do
              {
                v175 = v169;
                v169 = v165;
                *v175 = *v165;
                if (v161 < v164)
                {
                  break;
                }

                v176 = (2 * v164) | 1;
                v165 = &v12[v176];
                v164 = 2 * v164 + 2;
                if (v164 >= v13)
                {
                  v177 = v165->n128_u32[0];
                  v164 = v176;
                }

                else
                {
                  v177 = v165[1].n128_u32[0];
                  v178 = v165->n128_u32[2] < v165[1].n128_u32[2];
                  if (v165->n128_u32[0] != v177)
                  {
                    v178 = v165->n128_u32[0] < v177;
                  }

                  if (v178)
                  {
                    ++v165;
                  }

                  else
                  {
                    v177 = v165->n128_u32[0];
                    v164 = v176;
                  }
                }

                v133 = v177 == v170;
                v179 = v177 < v170;
                v180 = v133 ? v165->n128_u32[2] < v171 : v179;
              }

              while (v180 != 1);
              v169->n128_u32[0] = v170;
              v169->n128_u32[1] = v173;
              v169->n128_u32[2] = v171;
              v169->n128_u32[3] = v174;
            }
          }

          v162 = v163 - 1;
        }

        while (v163);
        do
        {
          v181 = 0;
          v241 = *v12;
          v182 = v12;
          do
          {
            v183 = &v182[v181];
            v184 = v183 + 1;
            v185 = (2 * v181) | 1;
            v181 = 2 * v181 + 2;
            if (v181 >= v13)
            {
              v181 = v185;
            }

            else
            {
              v187 = v183[2].n128_u32[0];
              v186 = v183 + 2;
              v188 = v186[-1].n128_u32[0];
              v189 = v188 < v187;
              if (v188 == v187)
              {
                v189 = v186[-1].n128_u32[2] < v186->n128_u32[2];
              }

              if (v189)
              {
                v184 = v186;
              }

              else
              {
                v181 = v185;
              }
            }

            *v182 = *v184;
            v182 = v184;
          }

          while (v181 <= ((v13 - 2) >> 1));
          if (v184 == --a2)
          {
            *v184 = v241;
          }

          else
          {
            *v184 = *a2;
            *a2 = v241;
            v190 = (v184 - v12 + 16) >> 4;
            v191 = v190 < 2;
            v192 = v190 - 2;
            if (!v191)
            {
              v193 = v192 >> 1;
              v194 = &v12[v193];
              v195 = v184->n128_u32[0];
              v196 = v184->n128_u32[2];
              v197 = v194->n128_u32[0] < v184->n128_u32[0];
              if (v194->n128_u32[0] == v184->n128_u32[0])
              {
                v197 = v194->n128_u32[2] < v196;
              }

              if (v197)
              {
                v198 = v184->n128_i32[1];
                v199 = v184->n128_i32[3];
                do
                {
                  v200 = v184;
                  v184 = v194;
                  *v200 = *v194;
                  if (!v193)
                  {
                    break;
                  }

                  v193 = (v193 - 1) >> 1;
                  v194 = &v12[v193];
                  v201 = v194->n128_u32[0] < v195;
                  if (v194->n128_u32[0] == v195)
                  {
                    v201 = v194->n128_u32[2] < v196;
                  }
                }

                while (v201);
                v184->n128_u32[0] = v195;
                v184->n128_u32[1] = v198;
                v184->n128_u32[2] = v196;
                v184->n128_u32[3] = v199;
              }
            }
          }

          v191 = v13-- <= 2;
        }

        while (!v191);
      }

      return;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_u32[0];
    v16 = a2[-1].n128_u32[2];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u32[0];
      v18 = v14->n128_u32[2];
      v19 = v14->n128_u32[0] < v12->n128_u32[0];
      if (v14->n128_u32[0] == v12->n128_u32[0])
      {
        v19 = v18 < v12->n128_u32[2];
      }

      v20 = v16 < v18;
      v133 = v15 == v17;
      v21 = v15 < v17;
      if (v133)
      {
        v21 = v20;
      }

      if (v19)
      {
        if (v21)
        {
          v219 = *v12;
          *v12 = *v9;
          goto LABEL_40;
        }

        v225 = *v12;
        *v12 = *v14;
        *v14 = v225;
        v29 = a2[-1].n128_u32[0];
        v133 = v29 == v14->n128_u32[0];
        v30 = v29 < v14->n128_u32[0];
        if (v133)
        {
          v30 = a2[-1].n128_u32[2] < v14->n128_u32[2];
        }

        if (v30)
        {
          v219 = *v14;
          *v14 = *v9;
LABEL_40:
          *v9 = v219;
        }
      }

      else if (v21)
      {
        v221 = *v14;
        *v14 = *v9;
        *v9 = v221;
        v27 = v14->n128_u32[0] < v12->n128_u32[0];
        if (v14->n128_u32[0] == v12->n128_u32[0])
        {
          v27 = v14->n128_u32[2] < v12->n128_u32[2];
        }

        if (v27)
        {
          v222 = *v12;
          *v12 = *v14;
          *v14 = v222;
        }
      }

      v31 = v12 + 1;
      v32 = v12[1].n128_u32[0];
      v33 = v14 - 1;
      v34 = v14[-1].n128_u32[0];
      v35 = v14[-1].n128_u32[2];
      v36 = v35 < v12[1].n128_u32[2];
      v133 = v34 == v32;
      v37 = v34 < v32;
      if (!v133)
      {
        v36 = v37;
      }

      v38 = a2[-2].n128_u32[0];
      v39 = a2[-2].n128_u32[2] < v35;
      v133 = v38 == v34;
      v40 = v38 < v34;
      if (v133)
      {
        v40 = v39;
      }

      if (v36)
      {
        if (v40)
        {
          v41 = *v31;
          *v31 = *v10;
          goto LABEL_62;
        }

        v47 = *v31;
        *v31 = *v33;
        *v33 = v47;
        v48 = a2[-2].n128_u32[0];
        v133 = v48 == v33->n128_u32[0];
        v49 = v48 < v33->n128_u32[0];
        if (v133)
        {
          v49 = a2[-2].n128_u32[2] < v14[-1].n128_u32[2];
        }

        if (v49)
        {
          v228 = *v33;
          *v33 = *v10;
          v41 = v228;
LABEL_62:
          *v10 = v41;
        }
      }

      else if (v40)
      {
        v226 = *v33;
        *v33 = *v10;
        *v10 = v226;
        v42 = v12[1].n128_u32[0];
        v43 = v33->n128_u32[0] < v42;
        if (v33->n128_u32[0] == v42)
        {
          v43 = v14[-1].n128_u32[2] < v12[1].n128_u32[2];
        }

        if (v43)
        {
          v44 = *v31;
          *v31 = *v33;
          *v33 = v44;
        }
      }

      v50 = v12 + 2;
      v51 = v12[2].n128_u32[0];
      v52 = v14 + 1;
      v53 = v14[1].n128_u32[0];
      v54 = v14[1].n128_u32[2];
      v55 = v54 < v12[2].n128_u32[2];
      v133 = v53 == v51;
      v56 = v53 < v51;
      if (!v133)
      {
        v55 = v56;
      }

      v57 = a2[-3].n128_u32[0];
      v58 = a2[-3].n128_u32[2] < v54;
      v133 = v57 == v53;
      v59 = v57 < v53;
      if (v133)
      {
        v59 = v58;
      }

      if (v55)
      {
        if (v59)
        {
          v60 = *v50;
          *v50 = *v11;
          goto LABEL_79;
        }

        v64 = *v50;
        *v50 = *v52;
        *v52 = v64;
        v65 = a2[-3].n128_u32[0];
        v133 = v65 == v52->n128_u32[0];
        v66 = v65 < v52->n128_u32[0];
        if (v133)
        {
          v66 = a2[-3].n128_u32[2] < v14[1].n128_u32[2];
        }

        if (v66)
        {
          v230 = *v52;
          *v52 = *v11;
          v60 = v230;
LABEL_79:
          *v11 = v60;
        }
      }

      else if (v59)
      {
        v229 = *v52;
        *v52 = *v11;
        *v11 = v229;
        v61 = v12[2].n128_u32[0];
        v62 = v52->n128_u32[0] < v61;
        if (v52->n128_u32[0] == v61)
        {
          v62 = v14[1].n128_u32[2] < v12[2].n128_u32[2];
        }

        if (v62)
        {
          v63 = *v50;
          *v50 = *v52;
          *v52 = v63;
        }
      }

      v67 = v14->n128_u32[0];
      v68 = v14->n128_u32[2];
      v69 = v14->n128_u32[0] < v33->n128_u32[0];
      if (v14->n128_u32[0] == v33->n128_u32[0])
      {
        v69 = v68 < v14[-1].n128_u32[2];
      }

      v70 = v14[1].n128_u32[2] < v68;
      v133 = v52->n128_u32[0] == v67;
      v71 = v52->n128_u32[0] < v67;
      if (v133)
      {
        v71 = v70;
      }

      if (v69)
      {
        if (v71)
        {
          v231 = *v33;
          *v33 = *v52;
          goto LABEL_96;
        }

        v234 = *v33;
        *v33 = *v14;
        *v14 = v234;
        v73 = v52->n128_u32[0] < v14->n128_u32[0];
        if (v52->n128_u32[0] == v14->n128_u32[0])
        {
          v73 = v14[1].n128_u32[2] < v14->n128_u32[2];
        }

        if (v73)
        {
          v231 = *v14;
          *v14 = *v52;
LABEL_96:
          *v52 = v231;
        }
      }

      else if (v71)
      {
        v232 = *v14;
        *v14 = *v52;
        *v52 = v232;
        v72 = v14->n128_u32[0] < v33->n128_u32[0];
        if (v14->n128_u32[0] == v33->n128_u32[0])
        {
          v72 = v14->n128_u32[2] < v14[-1].n128_u32[2];
        }

        if (v72)
        {
          v233 = *v33;
          *v33 = *v14;
          *v14 = v233;
        }
      }

      v235 = *v12;
      *v12 = *v14;
      a5 = v235;
      *v14 = v235;
      goto LABEL_98;
    }

    v22 = v12->n128_u32[0];
    v23 = v12->n128_u32[2];
    v24 = v12->n128_u32[0] < v14->n128_u32[0];
    if (v12->n128_u32[0] == v14->n128_u32[0])
    {
      v24 = v23 < v14->n128_u32[2];
    }

    v25 = v16 < v23;
    v133 = v15 == v22;
    v26 = v15 < v22;
    if (v133)
    {
      v26 = v25;
    }

    if (v24)
    {
      if (v26)
      {
        v220 = *v14;
        *v14 = *v9;
LABEL_57:
        a5 = v220;
        *v9 = v220;
        goto LABEL_98;
      }

      v227 = *v14;
      *v14 = *v12;
      a5 = v227;
      *v12 = v227;
      v45 = a2[-1].n128_u32[0];
      v133 = v45 == v12->n128_u32[0];
      v46 = v45 < v12->n128_u32[0];
      if (v133)
      {
        v46 = a2[-1].n128_u32[2] < v12->n128_u32[2];
      }

      if (v46)
      {
        v220 = *v12;
        *v12 = *v9;
        goto LABEL_57;
      }
    }

    else if (v26)
    {
      v223 = *v12;
      *v12 = *v9;
      a5 = v223;
      *v9 = v223;
      v28 = v12->n128_u32[0] < v14->n128_u32[0];
      if (v12->n128_u32[0] == v14->n128_u32[0])
      {
        v28 = v12->n128_u32[2] < v14->n128_u32[2];
      }

      if (v28)
      {
        v224 = *v14;
        *v14 = *v12;
        a5 = v224;
        *v12 = v224;
      }
    }

LABEL_98:
    --a3;
    v74 = v12->n128_u32[0];
    if (a4)
    {
      v75 = v12->n128_u32[2];
      goto LABEL_103;
    }

    v76 = v12[-1].n128_u32[0];
    v75 = v12->n128_u32[2];
    v133 = v76 == v74;
    v77 = v76 < v74;
    if (v133)
    {
      v77 = v12[-1].n128_u32[2] < v75;
    }

    if (v77)
    {
LABEL_103:
      v78 = 0;
      v79 = v12->n128_u32[1];
      v80 = v12->n128_u32[3];
      do
      {
        v81 = v12[v78 + 1].n128_u32[0];
        v82 = v12[v78 + 1].n128_u32[2] < v75;
        v133 = v81 == v74;
        v83 = v81 < v74;
        if (!v133)
        {
          v82 = v83;
        }

        ++v78;
      }

      while (v82);
      v84 = &v12[v78];
      v85 = a2;
      if (v78 == 1)
      {
        v85 = a2;
        do
        {
          if (v84 >= v85)
          {
            break;
          }

          v88 = v85[-1].n128_u32[0];
          --v85;
          v89 = v88 < v74;
          if (v88 == v74)
          {
            v89 = v85->n128_u32[2] < v75;
          }
        }

        while (!v89);
      }

      else
      {
        do
        {
          v86 = v85[-1].n128_u32[0];
          --v85;
          v87 = v86 < v74;
          if (v86 == v74)
          {
            v87 = v85->n128_u32[2] < v75;
          }
        }

        while (!v87);
      }

      v12 = v84;
      if (v84 < v85)
      {
        v90 = v85;
        do
        {
          v236 = *v12;
          *v12 = *v90;
          a5 = v236;
          *v90 = v236;
          do
          {
            v91 = v12[1].n128_u32[0];
            ++v12;
            v92 = v91 < v74;
            if (v91 == v74)
            {
              v92 = v12->n128_u32[2] < v75;
            }
          }

          while (v92);
          do
          {
            v93 = v90[-1].n128_u32[0];
            --v90;
            v94 = v93 < v74;
            if (v93 == v74)
            {
              v94 = v90->n128_u32[2] < v75;
            }
          }

          while (!v94);
        }

        while (v12 < v90);
      }

      v95 = v12 - 1;
      if (&v12[-1] != a1)
      {
        a5 = *v95;
        *a1 = *v95;
      }

      v12[-1].n128_u32[0] = v74;
      v12[-1].n128_u32[1] = v79;
      v12[-1].n128_u32[2] = v75;
      v12[-1].n128_u32[3] = v80;
      if (v84 < v85)
      {
        goto LABEL_132;
      }

      v96 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *>(a1, v12 - 1, a5);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *>(v12, a2, v97))
      {
        a2 = v12 - 1;
        if (!v96)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v96)
      {
LABEL_132:
        std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v98 = a2[-1].n128_u32[0];
      v133 = v74 == v98;
      v99 = v74 < v98;
      if (v133)
      {
        v99 = v75 < a2[-1].n128_u32[2];
      }

      if (v99)
      {
        do
        {
          v100 = v12[1].n128_u32[0];
          ++v12;
          v101 = v74 < v100;
          if (v74 == v100)
          {
            v101 = v75 < v12->n128_u32[2];
          }
        }

        while (!v101);
      }

      else
      {
        v102 = v12 + 1;
        do
        {
          v12 = v102;
          if (v102 >= a2)
          {
            break;
          }

          v103 = v102->n128_u32[0];
          v104 = v75 < v12->n128_u32[2];
          v133 = v74 == v103;
          v105 = v74 < v103;
          if (!v133)
          {
            v104 = v105;
          }

          v102 = v12 + 1;
        }

        while (!v104);
      }

      v106 = a2;
      if (v12 < a2)
      {
        v106 = a2;
        do
        {
          v107 = v106[-1].n128_u32[0];
          --v106;
          v108 = v74 < v107;
          if (v74 == v107)
          {
            v108 = v75 < v106->n128_u32[2];
          }
        }

        while (v108);
      }

      v109 = a1->n128_u32[1];
      v110 = a1->n128_u32[3];
      while (v12 < v106)
      {
        v237 = *v12;
        *v12 = *v106;
        a5 = v237;
        *v106 = v237;
        do
        {
          v111 = v12[1].n128_u32[0];
          ++v12;
          v112 = v74 < v111;
          if (v74 == v111)
          {
            v112 = v75 < v12->n128_u32[2];
          }
        }

        while (!v112);
        do
        {
          v113 = v106[-1].n128_u32[0];
          --v106;
          v114 = v74 < v113;
          if (v74 == v113)
          {
            v114 = v75 < v106->n128_u32[2];
          }
        }

        while (v114);
      }

      v115 = v12 - 1;
      if (&v12[-1] != a1)
      {
        a5 = *v115;
        *a1 = *v115;
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v74;
      v12[-1].n128_u32[1] = v109;
      v12[-1].n128_u32[2] = v75;
      v12[-1].n128_u32[3] = v110;
    }
  }

  v135 = v12 + 1;
  v136 = v12[1].n128_u32[0];
  v137 = a2 - 1;
  v138 = a2[-1].n128_u32[0];
  v139 = v12[1].n128_u32[2];
  v140 = v136 < v12->n128_u32[0];
  if (v136 == v12->n128_u32[0])
  {
    v140 = v139 < v12->n128_u32[2];
  }

  v141 = a2[-1].n128_u32[2] < v139;
  v133 = v138 == v136;
  v142 = v138 < v136;
  if (v133)
  {
    v142 = v141;
  }

  if (v140)
  {
    if (v142)
    {
      v240 = *v12;
      *v12 = *v137;
      v143 = v240;
    }

    else
    {
      v243 = *v12;
      *v12 = *v135;
      *v135 = v243;
      v216 = a2[-1].n128_u32[0];
      v217 = v12[1].n128_u32[0];
      v133 = v216 == v217;
      v218 = v216 < v217;
      if (v133)
      {
        v218 = a2[-1].n128_u32[2] < v12[1].n128_u32[2];
      }

      if (!v218)
      {
        return;
      }

      v143 = *v135;
      *v135 = *v137;
    }

    *v137 = v143;
    return;
  }

  if (v142)
  {
    v202 = *v135;
    *v135 = *v137;
    *v137 = v202;
    v203 = v12[1].n128_u32[0];
    v133 = v203 == v12->n128_u32[0];
    v204 = v203 < v12->n128_u32[0];
    if (v133)
    {
      v204 = v12[1].n128_u32[2] < v12->n128_u32[2];
    }

    if (v204)
    {
      v242 = *v12;
      *v12 = *v135;
      *v135 = v242;
    }
  }
}