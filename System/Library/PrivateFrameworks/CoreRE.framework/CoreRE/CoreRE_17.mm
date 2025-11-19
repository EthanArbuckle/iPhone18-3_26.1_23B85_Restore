uint64_t re::internal::AudioAnimationTimelineCompositionChain::cleanup(re::internal::AudioAnimationTimelineCompositionChain *this)
{
  *(this + 168) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 20) = 0;
  return (*(*this + 40))();
}

void re::AudioAnimationTimeline::~AudioAnimationTimeline(re::AudioAnimationTimeline *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::AudioAnimationState>::animationValueType()
{
  if ((atomic_load_explicit(&qword_1EE190A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190A08))
  {
    qword_1EE190A00 = re::internal::getOrCreateInfo("AudioAnimationState", re::allocInfo_AudioAnimationState, re::initInfo_AudioAnimationState, &unk_1EE1909F8, 0);
    __cxa_guard_release(&qword_1EE190A08);
  }

  return qword_1EE190A00;
}

void re::AudioAnimationTimeline::debugLogData(re *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v16, a2);
    re::Animation<re::AudioAnimationState>::debugLogData(a1, v16);
    v5 = *&v16[0];
    if (*&v16[0])
    {
      if (BYTE8(v16[0]))
      {
        v5 = (*(**&v16[0] + 40))();
      }

      memset(v16, 0, sizeof(v16));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v12 = *re::animationLogObjects(v7);
      v7 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (*(a2 + 8))
        {
          v13 = *(a2 + 16);
        }

        else
        {
          v13 = a2 + 9;
        }

        v15 = *(a1 + 10);
        *buf = 136315394;
        v18 = v13;
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "ANIM: %sstartTime: %f\n", buf, 0x16u);
      }
    }

    v8 = re::animationLogObjects(v7);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v10 = *re::animationLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = a2 + 9;
        }

        v14 = *(a1 + 11);
        *buf = 136315394;
        v18 = v11;
        v19 = 2048;
        v20 = v14;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: %sendTime: %f\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::AudioAnimationState>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (v9 = *a4, *(a6 + 16) = *(a4 + 2), *a6 = v9, result[2] == 49))
    {
      v10 = *(*result + 120);

      return v10();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::internal::AudioAnimationTimelineCompositionChain::~AudioAnimationTimelineCompositionChain(re::internal::AudioAnimationTimelineCompositionChain *this)
{
  re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::apply(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::isAlive((a1 + 8));
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 72))
  {
    if (*(a1 + 104) == 1)
    {
      if (re::BindPoint::isOverridden((a1 + 8)))
      {
        v18 = re::BindPoint::overrideValueUntyped((a1 + 8));
        v19 = re::BindPoint::baseValueUntyped((a1 + 8));
        if (v19)
        {
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          re::BindPoint::markAsWritten(a1 + 8);
        }
      }
    }

    return re::BindPoint::setIsOverridden(a1 + 8, 0);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return result;
  }

  v28 = 0;
  v29 = 0;
  v30 = 1;
  v31 = 0;
  v32 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v28, v3);
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 32);
  v7 = v29;
  do
  {
    if (v6 == v5)
    {
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 797;
      v38 = 2048;
      v39 = v6;
      v40 = 2048;
      v41 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 858;
      v38 = 2048;
      v39 = v7;
      v40 = 2048;
      v41 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_46;
    }

    v8 = (*(a1 + 48) + v4);
    if (!*v8)
    {
      v8 = v8[2];
    }

    if (v7 == v5)
    {
      goto LABEL_45;
    }

    if (v30)
    {
      v9 = &v31;
    }

    else
    {
      v9 = v32;
    }

    v9[v5++] = v8;
    v4 += 32;
  }

  while (v3 != v5);
  if (!v7)
  {
LABEL_46:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    v37 = 858;
    v38 = 2048;
    v39 = 0;
    v40 = 2048;
    v41 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  if (v30)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v32;
  }

  v11 = *v10;
  v12 = v3 - 1;
  v13 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v28, 1uLL, v12);
  v15 = (*(*v11 + 120))(v11, 0, v13, v14);
  if (v15)
  {
    v16 = v15;
    if (!re::BindPoint::isOverridden((a1 + 8)) || *v16 != *(a1 + 144) || *(v16 + 8) != *(a1 + 152) || *(v16 + 12) != *(a1 + 156))
    {
      re::BindPoint::willSet(a1 + 8);
      v17 = *(a1 + 144);
      *(v16 + 16) = *(a1 + 160);
      *v16 = v17;
      re::BindPoint::setIsOverridden(a1 + 8, 1);
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (!v29)
  {
LABEL_47:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    v37 = 858;
    v38 = 2048;
    v39 = 0;
    v40 = 2048;
    v41 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v30)
  {
    v21 = &v31;
  }

  else
  {
    v21 = v32;
  }

  v22 = *v21;
  v23 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v28, 1uLL, v12);
  v25 = (*(*v22 + 88))(v22, 0, v23, v24);
  if (v25)
  {
    v26 = v25;
    if (*v25 != *(a1 + 144) || *(v25 + 8) != *(a1 + 152) || *(v25 + 12) != *(a1 + 156))
    {
      re::BindPoint::willSet(a1 + 8);
      v27 = *(a1 + 144);
      *(v26 + 16) = *(a1 + 160);
      *v26 = v27;
LABEL_39:
      re::BindPoint::markAsWritten(a1 + 8);
    }
  }

LABEL_40:
  result = v28;
  if (v28)
  {
    if ((v30 & 1) == 0)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    *(result + 120) = *(result + 144);
    v2 = *(result + 160);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0;
      *(v1 + 132) = 0;
      *(v1 + 136) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *(result + 16);
    *(v1 + 120) = *result;
LABEL_14:
    *(v1 + 136) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0;
      *(v1 + 132) = 0;
      *(v1 + 136) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

void re::Animation<re::AudioAnimationState>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CB2428;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_AnimationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_22, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_22))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190AC8, "AnimationService");
    __cxa_guard_release(&_MergedGlobals_22);
  }

  return &unk_1EE190AC8;
}

void re::initInfo_AnimationService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1D19303ADC189562;
  v6[1] = "AnimationService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_AnimationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_BlendParameterInputNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190DB8, "BlendParameterInputNode");
    __cxa_guard_release(&qword_1EE190B60);
  }

  return &unk_1EE190DB8;
}

void re::initInfo_BlendParameterInputNode(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0xA1A56AFCB4DA42A8;
  v15[1] = "BlendParameterInputNode";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE190B68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190B68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE190BE0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "defaultValueIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE190BE8 = v13;
      __cxa_guard_release(&qword_1EE190B68);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE190BE0;
  *(this + 9) = re::internal::defaultConstruct<re::BlendParameterInputNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendParameterInputNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendParameterInputNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendParameterInputNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

re::StringID *re::internal::defaultConstruct<re::BlendParameterInputNode>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  result = re::StringID::invalid(a3);
  *(a3 + 4) = -1;
  return result;
}

re::StringID *re::internal::defaultConstructV2<re::BlendParameterInputNode>(re::StringID *a1)
{
  result = re::StringID::invalid(a1);
  *(a1 + 4) = -1;
  return result;
}

void *re::allocInfo_BlendValueInputNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190E48, "BlendValueInputNode");
    __cxa_guard_release(&qword_1EE190B78);
  }

  return &unk_1EE190E48;
}

void re::initInfo_BlendValueInputNode(re *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x26A7E5732D4BEA18;
  v15[1] = "BlendValueInputNode";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE190B80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190B80);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE190BF0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_uint32_t(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "blendValueIndex";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE190BF8 = v13;
      __cxa_guard_release(&qword_1EE190B80);
    }
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE190BF0;
  *(this + 9) = re::internal::defaultConstruct<re::BlendValueInputNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendValueInputNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendValueInputNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendValueInputNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v14 = v16;
}

re::StringID *re::internal::defaultConstruct<re::BlendValueInputNode>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  result = re::StringID::invalid(a3);
  *(a3 + 4) = 0;
  return result;
}

re::StringID *re::internal::defaultConstructV2<re::BlendValueInputNode>(re::StringID *a1)
{
  result = re::StringID::invalid(a1);
  *(a1 + 4) = 0;
  return result;
}

void re::introspect_BlendType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE190B90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE190B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B98))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE190D20, "BlendType", 1, 1, 1, 1);
      qword_1EE190D20 = &unk_1F5D0C658;
      qword_1EE190D60 = &re::introspect_BlendType(BOOL)::enumTable;
      dword_1EE190D30 = 9;
      __cxa_guard_release(&qword_1EE190B98);
    }

    if (_MergedGlobals_23)
    {
      break;
    }

    _MergedGlobals_23 = 1;
    re::IntrospectionRegistry::add(&qword_1EE190D20, a2);
    v45 = 0x6BF759AE6616;
    v46 = "BlendType";
    v49 = 0x31CD534126;
    v50 = "uint8_t";
    v4 = v48[0];
    v5 = v48[1];
    if (v49)
    {
      if (v49)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE190D60;
      v49 = v4;
      v50 = v5;
      re::TypeBuilder::beginEnumType(v48, &v45, 1, 1, &v49);
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
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(v48, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
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
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v48, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v48, v26);
      xmmword_1EE190D40 = v47;
      if (v45)
      {
        if (v45)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v46);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE190B90);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Unknown";
      qword_1EE190C20 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Invert";
      qword_1EE190C28 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Identity";
      qword_1EE190C30 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Repeat";
      qword_1EE190C38 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 4;
      *(v38 + 2) = "Interpolate";
      qword_1EE190C40 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 5;
      *(v40 + 2) = "AdditiveBlend";
      qword_1EE190C48 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 6;
      *(v42 + 2) = "WeightedAdditiveBlend";
      qword_1EE190C50 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 8) = 7;
      *(v44 + 16) = "BlendTypeCount";
      qword_1EE190C58 = v44;
      __cxa_guard_release(&qword_1EE190B90);
    }
  }
}

void *re::allocInfo_BlendNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190BA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190ED8, "BlendNode");
    __cxa_guard_release(&qword_1EE190BA0);
  }

  return &unk_1EE190ED8;
}

void re::initInfo_BlendNode(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x6BF759A8A3A6;
  v22[1] = "BlendNode";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE190BA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190BA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_BlendType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "blendType";
      *(v8 + 16) = &qword_1EE190D20;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE190C00 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "blendNodeParameterIndexStart";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x400000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE190C08 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint32_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "blendNodeOptionIndexStart";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE190C10 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "outputBlendValueIndex";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE190C18 = v20;
      __cxa_guard_release(&qword_1EE190BA8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE190C00;
  *(this + 9) = re::internal::defaultConstruct<re::BlendNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::BlendNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 4) = 0;
}

uint64_t re::internal::defaultConstructV2<re::BlendNode>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 4) = 0;
  return result;
}

void *re::allocInfo_BlendTreeDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190BB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190F68, "BlendTreeDefinition");
    __cxa_guard_release(&qword_1EE190BB8);
  }

  return &unk_1EE190F68;
}

void re::initInfo_BlendTreeDefinition(re *this, re::IntrospectionBase *a2)
{
  v39[0] = 0x498A493E4355D444;
  v39[1] = "BlendTreeDefinition";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE190BC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE190BC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "defaultUInt32s";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE190D68 = v9;
      v10 = re::introspectionAllocator(v9);
      re::IntrospectionInfo<re::DynamicArray<re::BlendParameterInputNode>>::get(v10);
      v11 = (*(*v10 + 32))(v10, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "parameterInputUInt32Nodes";
      *(v11 + 16) = &qword_1EE190C60;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE190D70 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "defaultFloats";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x5000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE190D78 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::DynamicArray<re::BlendParameterInputNode>>::get(v16);
      v17 = (*(*v16 + 32))(v16, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "parameterInputFloatNodes";
      *(v17 + 16) = &qword_1EE190C60;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x7800000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE190D80 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_uint32_t(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "blendValueCount";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xA000000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE190D88 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_uint32_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "blendOutputIndex";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xA400000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE190D90 = v25;
      v26 = re::introspectionAllocator(v25);
      re::IntrospectionInfo<re::DynamicArray<re::BlendValueInputNode>>::get(v26);
      v27 = (*(*v26 + 32))(v26, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "blendValueInputNodes";
      *(v27 + 16) = &qword_1EE190CA0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0xA800000007;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE190D98 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "blendNodeParameters";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0xD000000008;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE190DA0 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "blendNodeOptions";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0xF800000009;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE190DA8 = v35;
      v36 = re::introspectionAllocator(v35);
      re::IntrospectionInfo<re::DynamicArray<re::BlendNode>>::get(v36);
      v37 = (*(*v36 + 32))(v36, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "blendNodes";
      *(v37 + 16) = &qword_1EE190CE0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x1200000000ALL;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE190DB0 = v37;
      __cxa_guard_release(&qword_1EE190BC0);
    }
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE190D68;
  *(this + 9) = re::internal::defaultConstruct<re::BlendTreeDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendTreeDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendTreeDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendTreeDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v38 = v40;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info) = &unk_1F5CB2480;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint32_t(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info, 0);
    qword_1EE1867A0 = 0x2800000003;
    dword_1EE1867A8 = v8;
    word_1EE1867AC = 0;
    *&xmmword_1EE1867B0 = 0;
    *(&xmmword_1EE1867B0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1867C0 = v7;
    unk_1EE1867C8 = 0;
    re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info = &unk_1F5CB2480;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE1867B0 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendParameterInputNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190BC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190BC8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190C60);
      qword_1EE190C60 = &unk_1F5CB2518;
      __cxa_guard_release(&qword_1EE190BC8);
    }
  }

  if ((byte_1EE190B59 & 1) == 0)
  {
    v1 = qword_1EE190B70;
    if (qword_1EE190B70 || (v1 = re::allocInfo_BlendParameterInputNode(a1), qword_1EE190B70 = v1, re::initInfo_BlendParameterInputNode(v1, v2), (byte_1EE190B59 & 1) == 0))
    {
      byte_1EE190B59 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190C60, 0);
      qword_1EE190C70 = 0x2800000003;
      dword_1EE190C78 = v3;
      word_1EE190C7C = 0;
      *&xmmword_1EE190C80 = 0;
      *(&xmmword_1EE190C80 + 1) = 0xFFFFFFFFLL;
      qword_1EE190C90 = v1;
      unk_1EE190C98 = 0;
      qword_1EE190C60 = &unk_1F5CB2518;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE190C60, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE190C80 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendValueInputNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190BD0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190BD0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190CA0);
      qword_1EE190CA0 = &unk_1F5CB25B0;
      __cxa_guard_release(&qword_1EE190BD0);
    }
  }

  if ((byte_1EE190B5A & 1) == 0)
  {
    v1 = qword_1EE190B88;
    if (qword_1EE190B88 || (v1 = re::allocInfo_BlendValueInputNode(a1), qword_1EE190B88 = v1, re::initInfo_BlendValueInputNode(v1, v2), (byte_1EE190B5A & 1) == 0))
    {
      byte_1EE190B5A = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190CA0, 0);
      qword_1EE190CB0 = 0x2800000003;
      dword_1EE190CB8 = v3;
      word_1EE190CBC = 0;
      *&xmmword_1EE190CC0 = 0;
      *(&xmmword_1EE190CC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE190CD0 = v1;
      unk_1EE190CD8 = 0;
      qword_1EE190CA0 = &unk_1F5CB25B0;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE190CA0, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE190CC0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190BD8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190BD8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190CE0);
      qword_1EE190CE0 = &unk_1F5CB2648;
      __cxa_guard_release(&qword_1EE190BD8);
    }
  }

  if ((byte_1EE190B5B & 1) == 0)
  {
    v1 = qword_1EE190BB0;
    if (qword_1EE190BB0 || (v1 = re::allocInfo_BlendNode(a1), qword_1EE190BB0 = v1, re::initInfo_BlendNode(v1, v2), (byte_1EE190B5B & 1) == 0))
    {
      byte_1EE190B5B = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190CE0, 0);
      qword_1EE190CF0 = 0x2800000003;
      dword_1EE190CF8 = v3;
      word_1EE190CFC = 0;
      *&xmmword_1EE190D00 = 0;
      *(&xmmword_1EE190D00 + 1) = 0xFFFFFFFFLL;
      qword_1EE190D10 = v1;
      unk_1EE190D18 = 0;
      qword_1EE190CE0 = &unk_1F5CB2648;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE190CE0, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE190D00 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 320) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 180) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 272) = 0;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 312) = 0;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 288);
  re::DynamicArray<unsigned long>::deinit(a3 + 248);
  re::DynamicArray<unsigned long>::deinit(a3 + 208);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 168);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 120);
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::BlendTreeDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendTreeDefinition>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 288);
  re::DynamicArray<unsigned long>::deinit(a1 + 248);
  re::DynamicArray<unsigned long>::deinit(a1 + 208);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 168);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 120);
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<unsigned int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<unsigned int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<unsigned int>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<unsigned int>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<int>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<unsigned int>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<int>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<float>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<unsigned int>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<int>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<unsigned int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<int>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<float>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 4 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendParameterInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendParameterInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendParameterInputNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendParameterInputNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendParameterInputNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendParameterInputNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendParameterInputNode>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = re::StringID::invalid(&v20);
  LODWORD(v22) = -1;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v15);
      }

      else
      {
        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 24 * v10;
  v17 = v20;
  *v16 = *v16 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
  *v16 = v20 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
  *(v16 + 8) = v21;
  v20 = 0;
  v21 = &str_67;
  *(v16 + 16) = v22;
  ++*(a4 + 16);
  ++*(a4 + 24);
  if (v20)
  {
    if (v20)
    {
    }
  }

  v18 = (*(a4 + 32) + 24 * *(a4 + 16) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v18);
  return v18;
}

uint64_t re::IntrospectionDynamicArray<re::BlendParameterInputNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::BlendParameterInputNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 4) = *(v8 + 4);
          re::StringID::destroyString(v8);
          v8 += 3;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::BlendParameterInputNode>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid(v7);
        *(v7 + 4) = -1;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::StringID::destroyString(v9);
        v9 = (v9 + 24);
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendParameterInputNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendValueInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendValueInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendValueInputNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendValueInputNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendValueInputNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendValueInputNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendValueInputNode>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = re::StringID::invalid(&v20);
  LODWORD(v22) = 0;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v11)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v15);
      }

      else
      {
        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 24 * v10;
  v17 = v20;
  *v16 = *v16 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
  *v16 = v20 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
  *(v16 + 8) = v21;
  v20 = 0;
  v21 = &str_67;
  *(v16 + 16) = v22;
  ++*(a4 + 16);
  ++*(a4 + 24);
  if (v20)
  {
    if (v20)
    {
    }
  }

  v18 = (*(a4 + 32) + 24 * *(a4 + 16) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v18);
  return v18;
}

uint64_t re::IntrospectionDynamicArray<re::BlendValueInputNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void re::DynamicArray<re::BlendValueInputNode>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid(v7);
        *(v7 + 4) = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::StringID::destroyString(v9);
        v9 = (v9 + 24);
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendValueInputNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BlendNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::BlendNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendNode>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::BlendNode>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::BlendNode>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 16 * v9);
  *v15 = 0;
  v15[1] = 0;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 16 * v16 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

uint64_t re::IntrospectionDynamicArray<re::BlendNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::BlendNode>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 4);
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
            memcpy(v7, v5[4], 16 * v5[2]);
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
        result = re::DynamicArray<re::BlendNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::BlendNode>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::BlendNode>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 16 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 4) = 0;
        v6 += 16;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::BlendNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 16 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info) = &unk_1F5CB26E0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_int(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info, 0);
    qword_1EE186CF8 = 0x1800000004;
    dword_1EE186D00 = v8;
    word_1EE186D04 = 0;
    *&xmmword_1EE186D08 = 0;
    *(&xmmword_1EE186D08 + 1) = 0xFFFFFFFFLL;
    qword_1EE186D18 = v7;
    unk_1EE186D20 = 0;
    re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info = &unk_1F5CB26E0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186D08 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(int a1)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info) = &unk_1F5CB2778;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Vector3F(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info, 0);
    qword_1EE186E60 = 0x1800000004;
    dword_1EE186E68 = v7;
    word_1EE186E6C = 0;
    *&xmmword_1EE186E70 = 0;
    *(&xmmword_1EE186E70 + 1) = 0xFFFFFFFFLL;
    qword_1EE186E80 = v6;
    unk_1EE186E88 = 0;
    re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info = &unk_1F5CB2778;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186E70 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info;
}

void *re::allocInfo_DynamicRegisterTable(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191000))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1911A0, "DynamicRegisterTable");
    __cxa_guard_release(&qword_1EE191000);
  }

  return &unk_1EE1911A0;
}

void re::initInfo_DynamicRegisterTable(re *this, re::IntrospectionBase *a2)
{
  v33[0] = 0x52D273DBBD26DA18;
  v33[1] = "DynamicRegisterTable";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE191008, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE191008);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::DynamicArray<int>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "registerInt32s";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE191038 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "registerUInt32s";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x2800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE191040 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "registerFloats";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE191048 = v17;
      v18 = re::introspectionAllocator(v17);
      re::IntrospectionInfo<re::DynamicArray<re::Matrix3x3<float>>>::get();
      v19 = (*(*v18 + 32))(v18, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "registerMatrix3x3s";
      *(v19 + 16) = qword_1EE191078;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x7800000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE191050 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "registerMatrix4x4s";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0xA000000005;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE191058 = v22;
      v23 = re::introspectionAllocator(v22);
      v24 = re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(1);
      v25 = (*(*v23 + 32))(v23, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "registerQuaternions";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xC800000006;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE191060 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(1);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "registerVector2s";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0xF000000007;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE191068 = v28;
      v29 = re::introspectionAllocator(v28);
      v30 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1);
      v31 = (*(*v29 + 32))(v29, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "registerVector3s";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x11800000008;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE191070 = v31;
      __cxa_guard_release(&qword_1EE191008);
    }
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE191038;
  *(this + 9) = re::internal::defaultConstruct<re::DynamicRegisterTable>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DynamicRegisterTable>;
  *(this + 13) = re::internal::defaultConstructV2<re::DynamicRegisterTable>;
  *(this + 14) = re::internal::defaultDestructV2<re::DynamicRegisterTable>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v32 = v34;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info) = &unk_1F5CB2810;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_int(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info, 0);
    qword_1EE1867E8 = 0x2800000003;
    dword_1EE1867F0 = v8;
    word_1EE1867F4 = 0;
    *&xmmword_1EE1867F8 = 0;
    *(&xmmword_1EE1867F8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186808 = v7;
    unk_1EE186810 = 0;
    re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info = &unk_1F5CB2810;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE1867F8 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::Matrix3x3<float>>>::get()
{
  if ((atomic_load_explicit(&qword_1EE191030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191030))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE191078);
    qword_1EE191078[0] = &unk_1F5CB28A8;
    __cxa_guard_release(&qword_1EE191030);
  }

  if ((byte_1EE190FFA & 1) == 0)
  {
    v0 = re::introspect_Matrix3x3F(1);
    if ((byte_1EE190FFA & 1) == 0)
    {
      v1 = v0;
      byte_1EE190FFA = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(qword_1EE191078, 0);
      unk_1EE191088 = 0x2800000003;
      unk_1EE191090 = v2;
      word_1EE191094 = 0;
      *&xmmword_1EE191098 = 0;
      *(&xmmword_1EE191098 + 1) = 0xFFFFFFFFLL;
      unk_1EE1910A8 = v1;
      unk_1EE1910B0 = 0;
      qword_1EE191078[0] = &unk_1F5CB28A8;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(qword_1EE191078, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE191098 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(int a1)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info) = &unk_1F5CB2940;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Matrix4x4F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info, 0);
    qword_1EE186950 = 0x2800000003;
    dword_1EE186958 = v7;
    word_1EE18695C = 0;
    *&xmmword_1EE186960 = 0;
    *(&xmmword_1EE186960 + 1) = 0xFFFFFFFFLL;
    qword_1EE186970 = v6;
    unk_1EE186978 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info = &unk_1F5CB2940;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186960 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(int a1)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info) = &unk_1F5CB29D8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_QuaternionF(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info, 0);
    qword_1EE186C68 = 0x2800000003;
    dword_1EE186C70 = v7;
    word_1EE186C74 = 0;
    *&xmmword_1EE186C78 = 0;
    *(&xmmword_1EE186C78 + 1) = 0xFFFFFFFFLL;
    qword_1EE186C88 = v6;
    unk_1EE186C90 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info = &unk_1F5CB29D8;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186C78 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(int a1)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info) = &unk_1F5CB2A70;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Vector2F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info, 0);
    qword_1EE186A70 = 0x2800000003;
    dword_1EE186A78 = v7;
    word_1EE186A7C = 0;
    *&xmmword_1EE186A80 = 0;
    *(&xmmword_1EE186A80 + 1) = 0xFFFFFFFFLL;
    qword_1EE186A90 = v6;
    unk_1EE186A98 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info = &unk_1F5CB2A70;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186A80 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(int a1)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info) = &unk_1F5CB2B08;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Vector3F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info, 0);
    qword_1EE186A28 = 0x2800000003;
    dword_1EE186A30 = v7;
    word_1EE186A34 = 0;
    *&xmmword_1EE186A38 = 0;
    *(&xmmword_1EE186A38 + 1) = 0xFFFFFFFFLL;
    qword_1EE186A48 = v6;
    unk_1EE186A50 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info = &unk_1F5CB2B08;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186A38 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::DynamicRegisterTable>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 312) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::DynamicRegisterTable>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 280);
  re::DynamicArray<unsigned long>::deinit(a3 + 240);
  re::DynamicArray<unsigned long>::deinit(a3 + 200);
  re::DynamicArray<unsigned long>::deinit(a3 + 160);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::DynamicRegisterTable>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 312) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::DynamicRegisterTable>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 280);
  re::DynamicArray<unsigned long>::deinit(a1 + 240);
  re::DynamicArray<unsigned long>::deinit(a1 + 200);
  re::DynamicArray<unsigned long>::deinit(a1 + 160);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

uint64_t *re::introspect_EvaluationRegisterType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE191010, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE191018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191018))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1910B8, "EvaluationRegisterType", 1, 1, 1, 1);
      qword_1EE1910B8 = &unk_1F5D0C658;
      qword_1EE1910F8 = &re::introspect_EvaluationRegisterType(BOOL)::enumTable;
      dword_1EE1910C8 = 9;
      __cxa_guard_release(&qword_1EE191018);
    }

    if (v2)
    {
      if (_MergedGlobals_24)
      {
        return &qword_1EE1910B8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v60);
      v3 = _MergedGlobals_24;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v60);
      if (v3)
      {
        return &qword_1EE1910B8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_24)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_24 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1910B8, a2);
    v57 = 0x79BBFE2840B26BF2;
    v58 = "EvaluationRegisterType";
    v61 = 0x31CD534126;
    v62 = "uint8_t";
    v9 = v60[0];
    v10 = v60[1];
    if (v61)
    {
      if (v61)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v58);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE191010);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "EvaluationRegisterTypeInt32";
      qword_1EE191148 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "EvaluationRegisterTypeUInt32";
      qword_1EE191150 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "EvaluationRegisterTypeFloat";
      qword_1EE191158 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "EvaluationRegisterTypeMatrix3x3";
      qword_1EE191160 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "EvaluationRegisterTypeMatrix4x4";
      qword_1EE191168 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "EvaluationRegisterTypeQuaternion";
      qword_1EE191170 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 6;
      *(v48 + 2) = "EvaluationRegisterTypeVector2";
      qword_1EE191178 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 7;
      *(v50 + 2) = "EvaluationRegisterTypeVector3";
      qword_1EE191180 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 8;
      *(v52 + 2) = "EvaluationRegisterTypeCount";
      qword_1EE191188 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 255;
      *(v54 + 2) = "EvaluationRegisterTypeUnknown";
      qword_1EE191190 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 8) = 254;
      *(v56 + 16) = "EvaluationRegisterTypeCallback";
      qword_1EE191198 = v56;
      __cxa_guard_release(&qword_1EE191010);
    }
  }

  v11 = qword_1EE1910F8;
  v61 = v9;
  v62 = v10;
  re::TypeBuilder::beginEnumType(v60, &v57, 1, 1, &v61);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v59.var0 = 2 * v16;
        v59.var1 = v15;
        re::TypeBuilder::addEnumConstant(v60, v20, &v59);
        if (*&v59.var0)
        {
          if (*&v59.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v59.var0 = 2 * v25;
          v59.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v60, v29, &v59);
          if (*&v59.var0)
          {
            if (*&v59.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v60, v31);
  xmmword_1EE1910D8 = v59;
  if (v57)
  {
    if (v57)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1910B8;
}

uint64_t *re::introspect_EvaluationCommand(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE191020, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE191028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191028))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE191100, "EvaluationCommand", 4, 4, 1, 1);
      qword_1EE191100 = &unk_1F5D0C658;
      qword_1EE191140 = &re::introspect_EvaluationCommand(BOOL)::enumTable;
      dword_1EE191110 = 9;
      __cxa_guard_release(&qword_1EE191028);
    }

    if (v2)
    {
      if (byte_1EE190FF9)
      {
        return &qword_1EE191100;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v154);
      v3 = byte_1EE190FF9;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v154);
      if (v3)
      {
        return &qword_1EE191100;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE190FF9)
      {
        goto LABEL_46;
      }
    }

    byte_1EE190FF9 = 1;
    re::IntrospectionRegistry::add(&qword_1EE191100, a2);
    v151 = 0x59C43F7855EEA89ELL;
    v152 = "EvaluationCommand";
    v155 = 0x607DD0F01DCLL;
    v156 = "uint32_t";
    v9 = v154[0];
    v10 = v154[1];
    if (v155)
    {
      if (v155)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v152);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE191020);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 8;
      *(v36 + 2) = "AddVector3";
      qword_1EE191230 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 9;
      *(v38 + 2) = "AddVector2";
      qword_1EE191238 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 10;
      *(v40 + 2) = "ComponentLerpVector3";
      qword_1EE191240 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 11;
      *(v42 + 2) = "LerpVector3";
      qword_1EE191248 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 12;
      *(v44 + 2) = "SlerpQuaternion";
      qword_1EE191250 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 13;
      *(v46 + 2) = "ConvertIntrinsicEulerToQuaternion";
      qword_1EE191258 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 14;
      *(v48 + 2) = "ConvertQuaternionToIntrinsicEuler";
      qword_1EE191260 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 15;
      *(v50 + 2) = "CrossVector3";
      qword_1EE191268 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 16;
      *(v52 + 2) = "DivideQuaternion";
      qword_1EE191270 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 18;
      *(v54 + 2) = "ConjugateQuaternion";
      qword_1EE191278 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 19;
      *(v56 + 2) = "InvertMatrix3x3";
      qword_1EE191280 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 20;
      *(v58 + 2) = "InvertMatrix4x4";
      qword_1EE191288 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 21;
      *(v60 + 2) = "InvertQuaternion";
      qword_1EE191290 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 22;
      *(v62 + 2) = "DotVector3";
      qword_1EE191298 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 23;
      *(v64 + 2) = "DotVector2";
      qword_1EE1912A0 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 24;
      *(v66 + 2) = "MultiplyQuaternion";
      qword_1EE1912A8 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 25;
      *(v68 + 2) = "MultiplyVector3";
      qword_1EE1912B0 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 27;
      *(v70 + 2) = "MultiplyMatrix3x3";
      qword_1EE1912B8 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 28;
      *(v72 + 2) = "MultiplyMatrix4x4";
      qword_1EE1912C0 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 29;
      *(v74 + 2) = "NormalizeVector3";
      qword_1EE1912C8 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 30;
      *(v76 + 2) = "RotateQuaternionVector3";
      qword_1EE1912D0 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 1) = 31;
      *(v78 + 2) = "SubtractVector3";
      qword_1EE1912D8 = v78;
      v79 = re::introspectionAllocator(v78);
      v80 = (*(*v79 + 32))(v79, 24, 8);
      *v80 = 1;
      *(v80 + 1) = 32;
      *(v80 + 2) = "SubtractVector2";
      qword_1EE1912E0 = v80;
      v81 = re::introspectionAllocator(v80);
      v82 = (*(*v81 + 32))(v81, 24, 8);
      *v82 = 1;
      *(v82 + 1) = 33;
      *(v82 + 2) = "TransposeMatrix3x3";
      qword_1EE1912E8 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = (*(*v83 + 32))(v83, 24, 8);
      *v84 = 1;
      *(v84 + 1) = 34;
      *(v84 + 2) = "ExtractMinorMatrix4x4";
      qword_1EE1912F0 = v84;
      v85 = re::introspectionAllocator(v84);
      v86 = (*(*v85 + 32))(v85, 24, 8);
      *v86 = 1;
      *(v86 + 1) = 35;
      *(v86 + 2) = "ExtractRotationMatrix3x3";
      qword_1EE1912F8 = v86;
      v87 = re::introspectionAllocator(v86);
      v88 = (*(*v87 + 32))(v87, 24, 8);
      *v88 = 1;
      *(v88 + 1) = 36;
      *(v88 + 2) = "ExtractScaleMatrix3x3";
      qword_1EE191300 = v88;
      v89 = re::introspectionAllocator(v88);
      v90 = (*(*v89 + 32))(v89, 24, 8);
      *v90 = 1;
      *(v90 + 1) = 37;
      *(v90 + 2) = "ExtractTranslationMatrix4x4";
      qword_1EE191308 = v90;
      v91 = re::introspectionAllocator(v90);
      v92 = (*(*v91 + 32))(v91, 24, 8);
      *v92 = 1;
      *(v92 + 1) = 38;
      *(v92 + 2) = "MakeColumnsMatrix3x3";
      qword_1EE191310 = v92;
      v93 = re::introspectionAllocator(v92);
      v94 = (*(*v93 + 32))(v93, 24, 8);
      *v94 = 1;
      *(v94 + 1) = 39;
      *(v94 + 2) = "MakeScaleRotationMatrix3x3";
      qword_1EE191318 = v94;
      v95 = re::introspectionAllocator(v94);
      v96 = (*(*v95 + 32))(v95, 24, 8);
      *v96 = 1;
      *(v96 + 1) = 40;
      *(v96 + 2) = "MakeMinorTranslationMatrix4x4";
      qword_1EE191320 = v96;
      v97 = re::introspectionAllocator(v96);
      v98 = (*(*v97 + 32))(v97, 24, 8);
      *v98 = 1;
      *(v98 + 1) = 41;
      *(v98 + 2) = "TransformDirectionMatrix3x3Vector3";
      qword_1EE191328 = v98;
      v99 = re::introspectionAllocator(v98);
      v100 = (*(*v99 + 32))(v99, 24, 8);
      *v100 = 1;
      *(v100 + 1) = 42;
      *(v100 + 2) = "TransformDirectionMatrix4x4Vector3";
      qword_1EE191330 = v100;
      v101 = re::introspectionAllocator(v100);
      v102 = (*(*v101 + 32))(v101, 24, 8);
      *v102 = 1;
      *(v102 + 1) = 43;
      *(v102 + 2) = "TransformPositionMatrix4x4Vector3";
      qword_1EE191338 = v102;
      v103 = re::introspectionAllocator(v102);
      v104 = (*(*v103 + 32))(v103, 24, 8);
      *v104 = 1;
      *(v104 + 1) = 44;
      *(v104 + 2) = "DotQuaternion";
      qword_1EE191340 = v104;
      v105 = re::introspectionAllocator(v104);
      v106 = (*(*v105 + 32))(v105, 24, 8);
      *v106 = 1;
      *(v106 + 1) = 45;
      *(v106 + 2) = "MakeAxisAngleQuaternion";
      qword_1EE191348 = v106;
      v107 = re::introspectionAllocator(v106);
      v108 = (*(*v107 + 32))(v107, 24, 8);
      *v108 = 1;
      *(v108 + 1) = 46;
      *(v108 + 2) = "MakeVector3FloatQuaternion";
      qword_1EE191350 = v108;
      v109 = re::introspectionAllocator(v108);
      v110 = (*(*v109 + 32))(v109, 24, 8);
      *v110 = 1;
      *(v110 + 1) = 47;
      *(v110 + 2) = "MakeVector3";
      qword_1EE191358 = v110;
      v111 = re::introspectionAllocator(v110);
      v112 = (*(*v111 + 32))(v111, 24, 8);
      *v112 = 1;
      *(v112 + 1) = 48;
      *(v112 + 2) = "MakeVector2";
      qword_1EE191360 = v112;
      v113 = re::introspectionAllocator(v112);
      v114 = (*(*v113 + 32))(v113, 24, 8);
      *v114 = 1;
      *(v114 + 1) = 49;
      *(v114 + 2) = "AddFloat";
      qword_1EE191368 = v114;
      v115 = re::introspectionAllocator(v114);
      v116 = (*(*v115 + 32))(v115, 24, 8);
      *v116 = 1;
      *(v116 + 1) = 50;
      *(v116 + 2) = "SubtractFloat";
      qword_1EE191370 = v116;
      v117 = re::introspectionAllocator(v116);
      v118 = (*(*v117 + 32))(v117, 24, 8);
      *v118 = 1;
      *(v118 + 1) = 51;
      *(v118 + 2) = "MultiplyFloat";
      qword_1EE191378 = v118;
      v119 = re::introspectionAllocator(v118);
      v120 = (*(*v119 + 32))(v119, 24, 8);
      *v120 = 1;
      *(v120 + 1) = 52;
      *(v120 + 2) = "DivideFloat";
      qword_1EE191380 = v120;
      v121 = re::introspectionAllocator(v120);
      v122 = (*(*v121 + 32))(v121, 24, 8);
      *v122 = 1;
      *(v122 + 1) = 53;
      *(v122 + 2) = "SinFloat";
      qword_1EE191388 = v122;
      v123 = re::introspectionAllocator(v122);
      v124 = (*(*v123 + 32))(v123, 24, 8);
      *v124 = 1;
      *(v124 + 1) = 54;
      *(v124 + 2) = "CosFloat";
      qword_1EE191390 = v124;
      v125 = re::introspectionAllocator(v124);
      v126 = (*(*v125 + 32))(v125, 24, 8);
      *v126 = 1;
      *(v126 + 1) = 55;
      *(v126 + 2) = "TanFloat";
      qword_1EE191398 = v126;
      v127 = re::introspectionAllocator(v126);
      v128 = (*(*v127 + 32))(v127, 24, 8);
      *v128 = 1;
      *(v128 + 1) = 56;
      *(v128 + 2) = "AsinFloat";
      qword_1EE1913A0 = v128;
      v129 = re::introspectionAllocator(v128);
      v130 = (*(*v129 + 32))(v129, 24, 8);
      *v130 = 1;
      *(v130 + 1) = 57;
      *(v130 + 2) = "AcosFloat";
      qword_1EE1913A8 = v130;
      v131 = re::introspectionAllocator(v130);
      v132 = (*(*v131 + 32))(v131, 24, 8);
      *v132 = 1;
      *(v132 + 1) = 58;
      *(v132 + 2) = "AtanFloat";
      qword_1EE1913B0 = v132;
      v133 = re::introspectionAllocator(v132);
      v134 = (*(*v133 + 32))(v133, 24, 8);
      *v134 = 1;
      *(v134 + 1) = 59;
      *(v134 + 2) = "Atan2Float";
      qword_1EE1913B8 = v134;
      v135 = re::introspectionAllocator(v134);
      v136 = (*(*v135 + 32))(v135, 24, 8);
      *v136 = 1;
      *(v136 + 1) = 60;
      *(v136 + 2) = "SelectFloat";
      qword_1EE1913C0 = v136;
      v137 = re::introspectionAllocator(v136);
      v138 = (*(*v137 + 32))(v137, 24, 8);
      *v138 = 1;
      *(v138 + 1) = 61;
      *(v138 + 2) = "GreaterFloat";
      qword_1EE1913C8 = v138;
      v139 = re::introspectionAllocator(v138);
      v140 = (*(*v139 + 32))(v139, 24, 8);
      *v140 = 1;
      *(v140 + 1) = 62;
      *(v140 + 2) = "GreaterEqualFloat";
      qword_1EE1913D0 = v140;
      v141 = re::introspectionAllocator(v140);
      v142 = (*(*v141 + 32))(v141, 24, 8);
      *v142 = 1;
      *(v142 + 1) = 63;
      *(v142 + 2) = "LessFloat";
      qword_1EE1913D8 = v142;
      v143 = re::introspectionAllocator(v142);
      v144 = (*(*v143 + 32))(v143, 24, 8);
      *v144 = 1;
      *(v144 + 1) = 64;
      *(v144 + 2) = "LessEqualFloat";
      qword_1EE1913E0 = v144;
      v145 = re::introspectionAllocator(v144);
      v146 = (*(*v145 + 32))(v145, 24, 8);
      *v146 = 1;
      *(v146 + 1) = 65;
      *(v146 + 2) = "Int32IsEqual";
      qword_1EE1913E8 = v146;
      v147 = re::introspectionAllocator(v146);
      v148 = (*(*v147 + 32))(v147, 24, 8);
      *v148 = 1;
      *(v148 + 1) = 66;
      *(v148 + 2) = "UInt32IsEqual";
      qword_1EE1913F0 = v148;
      v149 = re::introspectionAllocator(v148);
      v150 = (*(*v149 + 32))(v149, 24, 8);
      *v150 = 1;
      *(v150 + 8) = 67;
      *(v150 + 16) = "FloatAlmostEqual";
      qword_1EE1913F8 = v150;
      __cxa_guard_release(&qword_1EE191020);
    }
  }

  v11 = qword_1EE191140;
  v155 = v9;
  v156 = v10;
  re::TypeBuilder::beginEnumType(v154, &v151, 1, 1, &v155);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v153.var0 = 2 * v16;
        v153.var1 = v15;
        re::TypeBuilder::addEnumConstant(v154, v20, &v153);
        if (*&v153.var0)
        {
          if (*&v153.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v153.var0 = 2 * v25;
          v153.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v154, v29, &v153);
          if (*&v153.var0)
          {
            if (*&v153.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v154, v31);
  xmmword_1EE191120 = v153;
  if (v151)
  {
    if (v151)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE191100;
}

void re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<int>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<int>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<int>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 4;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<int>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 4 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::Vector3<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::Vector3<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::Vector3<float>>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::Vector3<float>>::init(uint64_t a1, uint64_t *a2, re *a3, int a4, unint64_t a5)
{
  re::FixedArray<re::Vector3<float>>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (a2[1] <= v11)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 16;
    }

    while (a5 != v11);
  }
}

uint64_t re::IntrospectionFixedArray<re::Vector3<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 16 * a3;
}

{
  if (*(a2 + 8) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 16 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<re::Vector3<float>>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 16 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<int>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<int>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<int>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<int>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<int>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<float>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<int>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<int>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 4 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<int>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<float>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 4 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::Matrix3x3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Matrix3x3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Matrix3x3<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Matrix3x3<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Matrix3x3<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Matrix3x3<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Matrix3x3<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::Matrix3x3<float>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 48 * v8);
  v9[1] = 0u;
  v9[2] = 0u;
  *v9 = 0u;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 48 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::Matrix3x3<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void re::DynamicArray<re::Matrix3x3<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      v5 = 48 * (a2 - v4);
      if (v5 >= 1)
      {
        bzero((*(a1 + 32) + 48 * v4), 48 * (v5 / 0x30uLL - (v5 > 0x2F)) + 48);
      }
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Matrix3x3<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 48 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Matrix4x4<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Matrix4x4<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Matrix4x4<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Matrix4x4<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Matrix4x4<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Matrix4x4<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Matrix4x4<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::Matrix4x4<float>>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::Matrix4x4<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::Matrix4x4<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + (v4 << 6)), (a2 - v4) << 6);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Matrix4x4<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Quaternion<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Quaternion<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Quaternion<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Quaternion<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Quaternion<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Quaternion<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Quaternion<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = xmmword_1E30474D0;
  re::DynamicArray<re::Vector3<float>>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::Quaternion<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void re::DynamicArray<re::Quaternion<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      memset_pattern16((*(a1 + 32) + 16 * v4), &xmmword_1E30474D0, 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Quaternion<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 16 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Vector2<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Vector2<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Vector2<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Vector2<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Vector2<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<unsigned long>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Vector2<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<unsigned long>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::Vector2<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<unsigned long>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 8 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Vector3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Vector3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Vector3<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Vector3<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Vector3<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Vector3<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Vector3<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0u;
  re::DynamicArray<re::Vector3<float>>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::Vector3<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Vector3<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 16 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::PackedData::reserve(re::PackedData *this, size_t size)
{
  if (*(this + 1) < size)
  {
    memptr[5] = v2;
    memptr[6] = v3;
    v4 = size;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x10uLL, size, 0xAE8B065EuLL);
    v6 = memptr[0];
    v7 = *(this + 1);
    if (v7)
    {
      memcpy(memptr[0], v7, *this);
      free(*(this + 1));
    }

    *(this + 1) = v6;
    *(this + 1) = v4;
  }
}

void *re::introspect_FillMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "FillNone";
      re::introspect_FillMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "FillForwards";
      qword_1EE1C6BC0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "FillBackwards";
      qword_1EE1C6BC8 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 8) = 3;
      *(v17 + 16) = "FillBoth";
      qword_1EE1C6BD0 = v17;
    }
  }

  {
    v18 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_FillMode(BOOL)::info, "FillMode", 1, 1, 1, 1);
    *v18 = &unk_1F5D0C658;
    *(v18 + 8) = &re::introspect_FillMode(BOOL)::enumTable;
    *(v18 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_FillMode(BOOL)::isInitialized)
    {
      return &re::introspect_FillMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v20);
    v3 = re::introspect_FillMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v20);
    if (v3)
    {
      return &re::introspect_FillMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_FillMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_FillMode(BOOL)::info;
    }
  }

  re::introspect_FillMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_FillMode(BOOL)::info, a2);
  v19[0] = 0x3ADB0C51BCCLL;
  v19[1] = "FillMode";
  xmmword_1EE1C6B90 = v20;
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

  return &re::introspect_FillMode(BOOL)::info;
}

void re::internal::registerEnumType<re::FillMode>(re::TypeRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *&v35.var0 = 6104748;
  v35.var1 = "char";
  v8 = re::TypeRegistry::typeID(a1, &v35, v34);
  v10 = v34[0];
  v11 = v34[1];
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  if (v10)
  {
    v12 = *(a2 + 64);
    v33[0] = v10;
    v33[1] = v11;
    re::TypeBuilder::beginEnumType(v34, a3, 1, 1, v33);
    v13 = *v12;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v15 = *(*(v12 + 1) + 8 * i);
        if (*v15 == 1)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v17 = *v16;
            if (*v16)
            {
              v18 = v16[1];
              if (v18)
              {
                v19 = (v16 + 2);
                do
                {
                  v17 = 31 * v17 + v18;
                  v20 = *v19++;
                  v18 = v20;
                }

                while (v20);
              }
            }
          }

          else
          {
            v17 = 0;
          }

          v21 = *(v15 + 8);
          *&v35.var0 = 2 * v17;
          v35.var1 = v16;
          re::TypeBuilder::addEnumConstant(v34, v21, &v35);
          if (*&v35.var0)
          {
            if (*&v35.var0)
            {
            }
          }

          v13 = *v12;
        }
      }

      if (v13)
      {
        for (j = 0; j < v13; ++j)
        {
          v24 = *(*(v12 + 1) + 8 * j);
          if (*v24 == 2)
          {
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = *v25;
              if (*v25)
              {
                v27 = v25[1];
                if (v27)
                {
                  v28 = (v25 + 2);
                  do
                  {
                    v26 = 31 * v26 + v27;
                    v29 = *v28++;
                    v27 = v29;
                  }

                  while (v29);
                }
              }
            }

            else
            {
              v26 = 0;
            }

            v30 = *(v24 + 8);
            *&v35.var0 = 2 * v26;
            v35.var1 = v25;
            re::TypeBuilder::addEnumConstantRenaming(v34, v30, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
              {
              }
            }

            v13 = *v12;
          }
        }
      }
    }

    re::TypeBuilder::commitTo(v34, a1, a4);
    re::TypeBuilder::~TypeBuilder(v34, v32);
  }

  else
  {
    re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, a3[1]);
    _os_crash();
    __break(1u);
  }
}

void *re::introspect_LoopBehavior(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Constant";
      re::introspect_LoopBehavior(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Repeat";
      qword_1EE1C6728 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "RepeatCumulative";
      qword_1EE1C6730 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 8) = 3;
      *(v17 + 16) = "AutoReverse";
      qword_1EE1C6738 = v17;
    }
  }

  {
    v18 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_LoopBehavior(BOOL)::info, "LoopBehavior", 1, 1, 1, 1);
    *v18 = &unk_1F5D0C658;
    *(v18 + 8) = &re::introspect_LoopBehavior(BOOL)::enumTable;
    *(v18 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_LoopBehavior(BOOL)::isInitialized)
    {
      return &re::introspect_LoopBehavior(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v20);
    v3 = re::introspect_LoopBehavior(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v20);
    if (v3)
    {
      return &re::introspect_LoopBehavior(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_LoopBehavior(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_LoopBehavior(BOOL)::info;
    }
  }

  re::introspect_LoopBehavior(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_LoopBehavior(BOOL)::info, a2);
  v19[0] = 0x3834E1F9FF309A6CLL;
  v19[1] = "LoopBehavior";
  xmmword_1EE1C66F8 = v20;
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

  return &re::introspect_LoopBehavior(BOOL)::info;
}

uint64_t *re::introspect_TimelineType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE191408, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE191410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191410))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE191418, "TimelineType", 4, 4, 1, 1);
      qword_1EE191418 = &unk_1F5D0C658;
      qword_1EE191458 = &re::introspect_TimelineType(BOOL)::enumTable;
      dword_1EE191428 = 9;
      __cxa_guard_release(&qword_1EE191410);
    }

    if (v2)
    {
      if (_MergedGlobals_25)
      {
        return &qword_1EE191418;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v140);
      v3 = _MergedGlobals_25;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v140);
      if (v3)
      {
        return &qword_1EE191418;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_25)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_25 = 1;
    re::IntrospectionRegistry::add(&qword_1EE191418, a2);
    v137 = 0x3DB5CF76C26C4676;
    v138 = "TimelineType";
    v141 = 208862;
    v142 = "int";
    v9 = v140[0];
    v10 = v140[1];
    if (v141)
    {
      if (v141)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v138);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE191408);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 1;
      *(v36 + 2) = "TimelineClip";
      qword_1EE191460 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 2;
      *(v38 + 2) = "TimelineGroup";
      qword_1EE191468 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 3;
      *(v40 + 2) = "FloatAnimationClip";
      qword_1EE191470 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 4;
      *(v42 + 2) = "DoubleAnimationClip";
      qword_1EE191478 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 5;
      *(v44 + 2) = "Vector2FAnimationClip";
      qword_1EE191480 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 6;
      *(v46 + 2) = "Vector3FAnimationClip";
      qword_1EE191488 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 7;
      *(v48 + 2) = "Vector4FAnimationClip";
      qword_1EE191490 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 8;
      *(v50 + 2) = "QuaternionFAnimationClip";
      qword_1EE191498 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 1;
      *(v52 + 1) = 9;
      *(v52 + 2) = "SRTAnimationClip";
      qword_1EE1914A0 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 1;
      *(v54 + 1) = 10;
      *(v54 + 2) = "SkeletalPoseAnimationClip";
      qword_1EE1914A8 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 1;
      *(v56 + 1) = 11;
      *(v56 + 2) = "FloatAnimation";
      qword_1EE1914B0 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 1;
      *(v58 + 1) = 12;
      *(v58 + 2) = "DoubleAnimation";
      qword_1EE1914B8 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 1;
      *(v60 + 1) = 13;
      *(v60 + 2) = "Vector2FAnimation";
      qword_1EE1914C0 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 1;
      *(v62 + 1) = 14;
      *(v62 + 2) = "Vector3FAnimation";
      qword_1EE1914C8 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 1;
      *(v64 + 1) = 15;
      *(v64 + 2) = "Vector4FAnimation";
      qword_1EE1914D0 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 1;
      *(v66 + 1) = 16;
      *(v66 + 2) = "QuaternionFAnimation";
      qword_1EE1914D8 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = (*(*v67 + 32))(v67, 24, 8);
      *v68 = 1;
      *(v68 + 1) = 17;
      *(v68 + 2) = "SRTAnimation";
      qword_1EE1914E0 = v68;
      v69 = re::introspectionAllocator(v68);
      v70 = (*(*v69 + 32))(v69, 24, 8);
      *v70 = 1;
      *(v70 + 1) = 18;
      *(v70 + 2) = "SkeletalPoseAnimation";
      qword_1EE1914E8 = v70;
      v71 = re::introspectionAllocator(v70);
      v72 = (*(*v71 + 32))(v71, 24, 8);
      *v72 = 1;
      *(v72 + 1) = 19;
      *(v72 + 2) = "FloatKeyframeAnimation";
      qword_1EE1914F0 = v72;
      v73 = re::introspectionAllocator(v72);
      v74 = (*(*v73 + 32))(v73, 24, 8);
      *v74 = 1;
      *(v74 + 1) = 20;
      *(v74 + 2) = "DoubleKeyframeAnimation";
      qword_1EE1914F8 = v74;
      v75 = re::introspectionAllocator(v74);
      v76 = (*(*v75 + 32))(v75, 24, 8);
      *v76 = 1;
      *(v76 + 1) = 21;
      *(v76 + 2) = "Vector2FKeyframeAnimation";
      qword_1EE191500 = v76;
      v77 = re::introspectionAllocator(v76);
      v78 = (*(*v77 + 32))(v77, 24, 8);
      *v78 = 1;
      *(v78 + 1) = 22;
      *(v78 + 2) = "Vector3FKeyframeAnimation";
      qword_1EE191508 = v78;
      v79 = re::introspectionAllocator(v78);
      v80 = (*(*v79 + 32))(v79, 24, 8);
      *v80 = 1;
      *(v80 + 1) = 23;
      *(v80 + 2) = "Vector4FKeyframeAnimation";
      qword_1EE191510 = v80;
      v81 = re::introspectionAllocator(v80);
      v82 = (*(*v81 + 32))(v81, 24, 8);
      *v82 = 1;
      *(v82 + 1) = 24;
      *(v82 + 2) = "QuaternionFKeyframeAnimation";
      qword_1EE191518 = v82;
      v83 = re::introspectionAllocator(v82);
      v84 = (*(*v83 + 32))(v83, 24, 8);
      *v84 = 1;
      *(v84 + 1) = 25;
      *(v84 + 2) = "SRTKeyframeAnimation";
      qword_1EE191520 = v84;
      v85 = re::introspectionAllocator(v84);
      v86 = (*(*v85 + 32))(v85, 24, 8);
      *v86 = 1;
      *(v86 + 1) = 26;
      *(v86 + 2) = "SkeletalPoseKeyframeAnimation";
      qword_1EE191528 = v86;
      v87 = re::introspectionAllocator(v86);
      v88 = (*(*v87 + 32))(v87, 24, 8);
      *v88 = 1;
      *(v88 + 1) = 27;
      *(v88 + 2) = "FloatSampledAnimation";
      qword_1EE191530 = v88;
      v89 = re::introspectionAllocator(v88);
      v90 = (*(*v89 + 32))(v89, 24, 8);
      *v90 = 1;
      *(v90 + 1) = 28;
      *(v90 + 2) = "DoubleSampledAnimation";
      qword_1EE191538 = v90;
      v91 = re::introspectionAllocator(v90);
      v92 = (*(*v91 + 32))(v91, 24, 8);
      *v92 = 1;
      *(v92 + 1) = 29;
      *(v92 + 2) = "Vector2FSampledAnimation";
      qword_1EE191540 = v92;
      v93 = re::introspectionAllocator(v92);
      v94 = (*(*v93 + 32))(v93, 24, 8);
      *v94 = 1;
      *(v94 + 1) = 30;
      *(v94 + 2) = "Vector3FSampledAnimation";
      qword_1EE191548 = v94;
      v95 = re::introspectionAllocator(v94);
      v96 = (*(*v95 + 32))(v95, 24, 8);
      *v96 = 1;
      *(v96 + 1) = 31;
      *(v96 + 2) = "Vector4FSampledAnimation";
      qword_1EE191550 = v96;
      v97 = re::introspectionAllocator(v96);
      v98 = (*(*v97 + 32))(v97, 24, 8);
      *v98 = 1;
      *(v98 + 1) = 32;
      *(v98 + 2) = "QuaternionFSampledAnimation";
      qword_1EE191558 = v98;
      v99 = re::introspectionAllocator(v98);
      v100 = (*(*v99 + 32))(v99, 24, 8);
      *v100 = 1;
      *(v100 + 1) = 33;
      *(v100 + 2) = "SRTSampledAnimation";
      qword_1EE191560 = v100;
      v101 = re::introspectionAllocator(v100);
      v102 = (*(*v101 + 32))(v101, 24, 8);
      *v102 = 1;
      *(v102 + 1) = 34;
      *(v102 + 2) = "SkeletalPoseSampledAnimation";
      qword_1EE191568 = v102;
      v103 = re::introspectionAllocator(v102);
      v104 = (*(*v103 + 32))(v103, 24, 8);
      *v104 = 1;
      *(v104 + 1) = 35;
      *(v104 + 2) = "SkeletalAnimation";
      qword_1EE191570 = v104;
      v105 = re::introspectionAllocator(v104);
      v106 = (*(*v105 + 32))(v105, 24, 8);
      *v106 = 1;
      *(v106 + 1) = 36;
      *(v106 + 2) = "TransformAnimation";
      qword_1EE191578 = v106;
      v107 = re::introspectionAllocator(v106);
      v108 = (*(*v107 + 32))(v107, 24, 8);
      *v108 = 1;
      *(v108 + 1) = 37;
      *(v108 + 2) = "OrbitAnimation";
      qword_1EE191580 = v108;
      v109 = re::introspectionAllocator(v108);
      v110 = (*(*v109 + 32))(v109, 24, 8);
      *v110 = 1;
      *(v110 + 1) = 38;
      *(v110 + 2) = "AudioAnimationTimeline";
      qword_1EE191588 = v110;
      v111 = re::introspectionAllocator(v110);
      v112 = (*(*v111 + 32))(v111, 24, 8);
      *v112 = 1;
      *(v112 + 1) = 39;
      *(v112 + 2) = "FloatAnimationBlendTree";
      qword_1EE191590 = v112;
      v113 = re::introspectionAllocator(v112);
      v114 = (*(*v113 + 32))(v113, 24, 8);
      *v114 = 1;
      *(v114 + 1) = 40;
      *(v114 + 2) = "DoubleAnimationBlendTree";
      qword_1EE191598 = v114;
      v115 = re::introspectionAllocator(v114);
      v116 = (*(*v115 + 32))(v115, 24, 8);
      *v116 = 1;
      *(v116 + 1) = 41;
      *(v116 + 2) = "Vector2FAnimationBlendTree";
      qword_1EE1915A0 = v116;
      v117 = re::introspectionAllocator(v116);
      v118 = (*(*v117 + 32))(v117, 24, 8);
      *v118 = 1;
      *(v118 + 1) = 42;
      *(v118 + 2) = "Vector3FAnimationBlendTree";
      qword_1EE1915A8 = v118;
      v119 = re::introspectionAllocator(v118);
      v120 = (*(*v119 + 32))(v119, 24, 8);
      *v120 = 1;
      *(v120 + 1) = 43;
      *(v120 + 2) = "Vector4FAnimationBlendTree";
      qword_1EE1915B0 = v120;
      v121 = re::introspectionAllocator(v120);
      v122 = (*(*v121 + 32))(v121, 24, 8);
      *v122 = 1;
      *(v122 + 1) = 44;
      *(v122 + 2) = "QuaternionFAnimationBlendTree";
      qword_1EE1915B8 = v122;
      v123 = re::introspectionAllocator(v122);
      v124 = (*(*v123 + 32))(v123, 24, 8);
      *v124 = 1;
      *(v124 + 1) = 45;
      *(v124 + 2) = "SRTAnimationBlendTree";
      qword_1EE1915C0 = v124;
      v125 = re::introspectionAllocator(v124);
      v126 = (*(*v125 + 32))(v125, 24, 8);
      *v126 = 1;
      *(v126 + 1) = 46;
      *(v126 + 2) = "SkeletalPoseAnimationBlendTree";
      qword_1EE1915C8 = v126;
      v127 = re::introspectionAllocator(v126);
      v128 = (*(*v127 + 32))(v127, 24, 8);
      *v128 = 1;
      *(v128 + 1) = 48;
      *(v128 + 2) = "EventTimeline";
      qword_1EE1915D0 = v128;
      v129 = re::introspectionAllocator(v128);
      v130 = (*(*v129 + 32))(v129, 24, 8);
      *v130 = 1;
      *(v130 + 1) = 50;
      *(v130 + 2) = "BlendShapeWeightsAnimation";
      qword_1EE1915D8 = v130;
      v131 = re::introspectionAllocator(v130);
      v132 = (*(*v131 + 32))(v131, 24, 8);
      *v132 = 1;
      *(v132 + 1) = 59;
      *(v132 + 2) = "BlendShapeWeightsSampledAnimation";
      qword_1EE1915E0 = v132;
      v133 = re::introspectionAllocator(v132);
      v134 = (*(*v133 + 32))(v133, 24, 8);
      *v134 = 1;
      *(v134 + 1) = 60;
      *(v134 + 2) = "BlendShapeWeightsAnimationClip";
      qword_1EE1915E8 = v134;
      v135 = re::introspectionAllocator(v134);
      v136 = (*(*v135 + 32))(v135, 24, 8);
      *v136 = 1;
      *(v136 + 8) = 61;
      *(v136 + 16) = "BlendShapeWeightsKeyframeAnimation";
      qword_1EE1915F0 = v136;
      __cxa_guard_release(&qword_1EE191408);
    }
  }

  v11 = qword_1EE191458;
  v141 = v9;
  v142 = v10;
  re::TypeBuilder::beginEnumType(v140, &v137, 1, 1, &v141);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v139.var0 = 2 * v16;
        v139.var1 = v15;
        re::TypeBuilder::addEnumConstant(v140, v20, &v139);
        if (*&v139.var0)
        {
          if (*&v139.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v139.var0 = 2 * v25;
          v139.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v140, v29, &v139);
          if (*&v139.var0)
          {
            if (*&v139.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v140, v31);
  xmmword_1EE191438 = v139;
  if (v137)
  {
    if (v137)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE191418;
}

float re::calculateNodeSRT@<S0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = a1[5].u8[0];
  v20 = xmmword_1E30474D0;
  re::convertIntrinsicEulersToQuaternions<float>(&a1[2], 1, v4, &v20, 1);
  _Q1 = a1[1];
  _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(_Q1)), v20, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
  v7 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v20, _Q1, 3);
  _Q3.i32[0] = HIDWORD(v20);
  _Q2 = vmlaq_laneq_f32(v7, _Q1, v20, 3);
  __asm { FMLA            S0, S3, V1.S[3] }

  _Q1 = a1[3];
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q2)), _Q1, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
  v16 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), _Q1, result), _Q2, _Q1, 3);
  __asm { FMLA            S2, S0, V1.S[3] }

  v16.i32[3] = _Q2.i32[0];
  v17 = a1[4].i64[1];
  v18 = a1->i64[0];
  v19 = a1->i64[1];
  a2->i64[0] = a1[4].i64[0];
  a2->i64[1] = v17;
  a2[1] = v16;
  a2[2].i64[0] = v18;
  a2[2].i64[1] = v19;
  return result;
}

void *re::DynamicArray<unsigned long>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<unsigned long>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[8 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 8 * v5), __src, 8 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 8 * v5), v12, 8 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void *re::DynamicArray<float>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + 4 * a2), __src, 4 * a4);
  }

  else
  {
    re::DynamicArray<float>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[4 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + 4 * v5), __src, 4 * v11);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + 4 * v5), v12, 4 * (v4 - v11));
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

void re::convertQuaternionsToIntrinsicEulers<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a2)
      {
        v105 = 0;
        v106 = (a1 + 8);
        v107 = (a4 + 8);
        v108 = 1.0;
        while (a5 != v105)
        {
          v109 = *(v106 - 2);
          v110 = *(v106 - 1);
          v111 = v109 + v109;
          v112 = v110 + v110;
          v113 = *v106;
          v114 = v106[1];
          v115 = v113 + v113;
          v116 = v110 * (v110 + v110);
          v135 = (v110 + v110) * *v106;
          v141 = v109 * (v109 + v109);
          v129 = (v109 + v109) * v114;
          v117 = (v109 + v109) * v110;
          v118 = (v113 + v113) * v114;
          v119 = v117 - v118;
          if ((v117 - v118) > v108)
          {
            v119 = v108;
          }

          if (v119 >= -1.0)
          {
            v120 = -v119;
          }

          else
          {
            v120 = v108;
          }

          *v107 = asinf(v120);
          if (vabds_f32(v117, v118) >= 0.9999)
          {
            v125 = atan2f(-(v135 - v129), 1.0 - (v141 + v116));
            v126 = 0.0;
          }

          else
          {
            v121 = v112 * v114;
            v122 = 1.0 - (v116 + (v113 * v115));
            v123 = 1.0 - (v141 + (v113 * v115));
            v124 = (v111 * v113) + v121;
            v125 = atan2f(v135 + v129, v123);
            v126 = atan2f(v124, v122);
          }

          *(v107 - 2) = v125;
          *(v107 - 1) = v126;
          ++v105;
          v106 += 4;
          v107 += 4;
          v108 = 1.0;
          if (a2 == v105)
          {
            return;
          }
        }

        goto LABEL_91;
      }

      return;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        if (a2)
        {
          v28 = 0;
          v29 = (a1 + 8);
          v30 = (a4 + 4);
          v31 = 1.0;
          while (a5 != v28)
          {
            v32 = *(v29 - 2);
            v33 = *(v29 - 1);
            v34 = v32 + v32;
            v35 = v33 + v33;
            v37 = *v29;
            v36 = v29[1];
            v131 = v37 * (v37 + v37);
            v137 = v32 * (v32 + v32);
            v127 = (v32 + v32) * v33;
            v38 = (v37 + v37) * v36;
            v39 = (v32 + v32) * *v29;
            v40 = (v33 + v33) * v36;
            v41 = v39 - v40;
            if ((v39 - v40) > v31)
            {
              v41 = v31;
            }

            if (v41 >= -1.0)
            {
              v42 = -v41;
            }

            else
            {
              v42 = v31;
            }

            *v30 = asinf(v42);
            if (vabds_f32(v39, v40) >= 0.9999)
            {
              v44 = atan2f(-(v127 - v38), 1.0 - (v137 + v131));
              v43 = 0.0;
            }

            else
            {
              v43 = atan2f((v35 * v37) + (v34 * v36), 1.0 - (v137 + (v33 * v35)));
              v44 = atan2f(v127 + v38, 1.0 - ((v33 * v35) + v131));
            }

            *(v30 - 1) = v43;
            v30[1] = v44;
            ++v28;
            v29 += 4;
            v30 += 4;
            v31 = 1.0;
            if (a2 == v28)
            {
              return;
            }
          }

          goto LABEL_89;
        }

        return;
      }

LABEL_92:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown rotation order", "!Unreachable code", "convertQuaternionsToIntrinsicEulers", 505);
      _os_crash();
      __break(1u);
      return;
    }

    if (!a2)
    {
      return;
    }

    v64 = 0;
    v65 = (a1 + 8);
    v66 = (a4 + 8);
    v67 = 1.0;
    while (a5 != v64)
    {
      v68 = *(v65 - 2);
      v69 = *(v65 - 1);
      v70 = v68 + v68;
      v71 = *v65;
      v72 = v65[1];
      v73 = v71 + v71;
      v74 = v71 * (v71 + v71);
      v133 = (v68 + v68) * *v65;
      v139 = v69 * (v69 + v69);
      v128 = (v69 + v69) * v72;
      v75 = (v69 + v69) * *v65;
      v76 = (v68 + v68) * v72;
      if ((v75 - v76) >= -1.0)
      {
        v77 = -(v75 - v76);
      }

      else
      {
        v77 = v67;
      }

      if (v77 < -1.0)
      {
        v77 = -1.0;
      }

      *(v66 - 2) = asinf(v77);
      if (vabds_f32(v75, v76) >= 0.9999)
      {
        v81 = atan2f(-(v133 - v128), 1.0 - (v139 + v74));
        v82 = 0.0;
      }

      else
      {
        v78 = v68 * v70;
        v79 = (v70 * v69) + (v73 * v72);
        v80 = 1.0 - ((v68 * v70) + v74);
        v81 = atan2f(v133 + v128, 1.0 - (v78 + v139));
        v82 = atan2f(v79, v80);
      }

      *(v66 - 1) = v81;
      *v66 = v82;
      ++v64;
      v65 += 4;
      v66 += 4;
      v67 = 1.0;
      if (a2 == v64)
      {
        return;
      }
    }

LABEL_87:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_88:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_89:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_90:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
LABEL_91:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
    goto LABEL_92;
  }

  if (!a3)
  {
    if (a2)
    {
      v83 = 0;
      v84 = (a1 + 8);
      v85 = (a4 + 4);
      v86 = 1.0;
      while (a5 != v83)
      {
        v87 = *(v84 - 2);
        v88 = *(v84 - 1);
        v89 = v87 + v87;
        v90 = v88 + v88;
        v91 = *v84;
        v92 = v84[1];
        v93 = v91 + v91;
        v94 = v91 * (v91 + v91);
        v134 = (v88 + v88) * *v84;
        v140 = v87 * (v87 + v87);
        v95 = (v87 + v87) * v92;
        v96 = (v87 + v87) * *v84;
        v97 = (v88 + v88) * v92;
        v98 = v96 + v97;
        if ((v96 + v97) <= v86)
        {
          v99 = v96 + v97;
        }

        else
        {
          v99 = v86;
        }

        if (v99 < -1.0)
        {
          v99 = -1.0;
        }

        *v85 = asinf(v99);
        if (fabsf(v98) >= 0.9999)
        {
          v103 = atan2f(v134 + v95, 1.0 - (v140 + v94));
          v104 = 0.0;
        }

        else
        {
          v100 = v89 * v88;
          v101 = 1.0 - ((v88 * v90) + v94);
          v102 = v100 - (v93 * v92);
          v103 = atan2f(-(v134 - v95), 1.0 - (v140 + (v88 * v90)));
          v104 = atan2f(-v102, v101);
        }

        *(v85 - 1) = v103;
        v85[1] = v104;
        ++v83;
        v84 += 4;
        v85 += 4;
        v86 = 1.0;
        if (a2 == v83)
        {
          return;
        }
      }

      goto LABEL_90;
    }

    return;
  }

  if (a3 == 1)
  {
    if (!a2)
    {
      return;
    }

    v45 = 0;
    v46 = (a1 + 8);
    v47 = (a4 + 8);
    v48 = 1.0;
    while (a5 != v45)
    {
      v49 = *(v46 - 2);
      v50 = *(v46 - 1);
      v51 = v49 + v49;
      v52 = v50 + v50;
      v54 = *v46;
      v53 = v46[1];
      v55 = v54 + v54;
      v56 = v50 * (v50 + v50);
      v132 = (v49 + v49) * *v46;
      v138 = v49 * (v49 + v49);
      v57 = (v50 + v50) * v53;
      v58 = (v49 + v49) * v50;
      v59 = (v54 + v54) * v53;
      v60 = v58 + v59;
      if ((v58 + v59) <= v48)
      {
        v61 = v58 + v59;
      }

      else
      {
        v61 = v48;
      }

      if (v61 < -1.0)
      {
        v61 = -1.0;
      }

      *v47 = asinf(v61);
      if (fabsf(v60) >= 0.9999)
      {
        v63 = atan2f(v132 + v57, 1.0 - (v138 + v56));
        v62 = 0.0;
      }

      else
      {
        v62 = atan2f(-((v52 * v54) - (v51 * v53)), 1.0 - (v138 + (v54 * v55)));
        v63 = atan2f(-(v132 - v57), 1.0 - (v56 + (v54 * v55)));
      }

      *(v47 - 2) = v62;
      *(v47 - 1) = v63;
      ++v45;
      v46 += 4;
      v47 += 4;
      v48 = 1.0;
      if (a2 == v45)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash();
    __break(1u);
    goto LABEL_87;
  }

  if (a3 != 2)
  {
    goto LABEL_92;
  }

  if (a2)
  {
    v7 = 0;
    v8 = (a1 + 8);
    v9 = (a4 + 8);
    v10 = 1.0;
    while (a5 != v7)
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = v12 + v12;
      v14 = v11 + v11;
      v16 = *v8;
      v15 = v8[1];
      v130 = v16 * (v16 + v16);
      v136 = v11 * (v11 + v11);
      v17 = (v12 + v12) * v11;
      v18 = (v16 + v16) * v15;
      v19 = (v11 + v11) * *v8;
      v20 = (v12 + v12) * v15;
      v21 = v19 + v20;
      if ((v19 + v20) <= v10)
      {
        v22 = v19 + v20;
      }

      else
      {
        v22 = v10;
      }

      if (v22 < -1.0)
      {
        v22 = -1.0;
      }

      *(v9 - 2) = asinf(v22);
      if (fabsf(v21) >= 0.9999)
      {
        v27 = atan2f(v17 + v18, 1.0 - (v136 + v130));
        v26 = 0.0;
      }

      else
      {
        v23 = v12 * v13;
        v24 = (v13 * v16) - (v14 * v15);
        v25 = 1.0 - ((v12 * v13) + v130);
        v26 = atan2f(-v24, 1.0 - (v23 + v136));
        v27 = atan2f(-(v17 - v18), v25);
      }

      *(v9 - 1) = v26;
      *v9 = v27;
      ++v7;
      v8 += 4;
      v9 += 4;
      v10 = 1.0;
      if (a2 == v7)
      {
        return;
      }
    }

    goto LABEL_88;
  }
}

float re::BlendSpace::init(uint64_t a1, uint64_t a2, unint64_t *a3, re::BindNode **a4)
{
  v6 = a3;
  v7 = a2;
  v59 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 16) = a3[8];
  v9 = a3[5];
  v10 = a3[3];
  *(&v54 + 1) = v10;
  *&v55 = 0;
  *&v54 = a2;
  if (v10)
  {
    if (v10 >= 0x555555555555556)
    {
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v10);
      _os_crash();
      __break(1u);
      goto LABEL_47;
    }

    v4 = 48 * v10;
    v11 = (*(*a2 + 32))(a2, 48 * v10, 8);
    *&v55 = v11;
    if (!v11)
    {
LABEL_47:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_48;
    }

    v13 = v10 - 1;
    if (v10 != 1)
    {
      do
      {
        *v11 = 0;
        v11[1] = &str_67;
        v11[2] = 0;
        v11[3] = &str_67;
        v11[4] = 0;
        v11[5] = 0;
        v11 += 6;
        --v13;
      }

      while (v13);
    }

    *v11 = 0;
    v11[1] = &str_67;
    v11[2] = 0;
    v11[3] = &str_67;
    v11[4] = 0;
    v11[5] = 0;
    if (*(&v54 + 1) != v10)
    {
LABEL_45:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash();
      __break(1u);
      goto LABEL_46;
    }

    v14 = 0;
    v15 = v55;
    do
    {
      v5 = v9 + v14;
      re::StringID::operator=((v15 + v14), (v9 + v14));
      re::StringID::operator=((v15 + v14 + 16), (v9 + v14 + 16));
      *(v15 + v14 + 32) = *(v9 + v14 + 32);
      v14 += 48;
    }

    while (v4 != v14);
  }

  else
  {
    v15 = 0;
  }

  if ((a1 + 72) != &v54)
  {
    v16 = *(a1 + 72);
    if (v16 && v16 != v54)
    {
LABEL_48:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
      _os_crash();
      __break(1u);
    }

    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    *(a1 + 72) = v54;
    *(a1 + 80) = v10;
    *&v54 = v16;
    *(&v54 + 1) = v17;
    *(a1 + 88) = v15;
    *&v55 = v18;
  }

  v34 = v7;
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit(&v54);
  re::FixedArray<re::BindPoint>::init<>(a1 + 96, *a1, v6[3]);
  re::FixedArray<int>::init<>((a1 + 120), *a1, v6[3]);
  re::FixedArray<int>::init<>((a1 + 144), *a1, *(a1 + 16));
  re::FixedArray<int>::init<>((a1 + 168), *a1, *(a1 + 16));
  v20 = v6[3];
  if (v20)
  {
    v21 = 0;
    v7 = 0;
    do
    {
      v5 = v6[3];
      if (v5 <= v7)
      {
        goto LABEL_41;
      }

      v5 = *(a1 + 128);
      if (v5 <= v7)
      {
        goto LABEL_42;
      }

      v22 = v6[5] + v21;
      *(*(a1 + 136) + 4 * v7) = *(v22 + 40);
      re::StringID::StringID(&v37, (v22 + 16));
      {
        re::introspect<float>(BOOL)::info = re::introspect_float(0, v26);
      }

      v10 = __s;
      v23 = strlen(__s);
      v36[0] = __s;
      v36[1] = v23;
      re::BindNode::bindPointWithOverride(a4, re::introspect<float>(BOOL)::info, v36, v40);
      v5 = *(a1 + 104);
      if (v5 <= v7)
      {
        goto LABEL_43;
      }

      v24 = (*(a1 + 112) + v21);
      *v24 = *v40;
      re::DynamicArray<re::RigDataValue>::operator=((v24 + 1), &v40[8]);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v40[8]);
      v25 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v40[8]);
      if (v37)
      {
        if (v37)
        {
        }
      }

      ++v7;
      v21 += 48;
    }

    while (v20 != v7);
  }

  if ((*(a1 + 8) & 0xFFFFFFFD) != 1)
  {
    re::FixedArray<int>::init<>((a1 + 24), v34, v6[8]);
    re::FixedArray<int>::init<>((a1 + 48), v34, v6[3] * v6[8]);
    v27 = v6[8];
    if (v27)
    {
      v28 = 0;
      v21 = 0;
      v29 = v6[10];
      v30 = v6[3];
      while (1)
      {
        v31 = v29 + (v21 << 6);
        if (v30)
        {
          break;
        }

LABEL_36:
        v6 = *(a1 + 32);
        if (v6 <= v21)
        {
          goto LABEL_44;
        }

        result = *(v31 + 16);
        *(*(a1 + 40) + 4 * v21++) = result;
        v28 += v30;
        if (v21 == v27)
        {
          return result;
        }
      }

      v32 = 0;
      v6 = *(v31 + 40);
      v33 = v28;
      while (v6 != v32)
      {
        v4 = *(a1 + 56);
        if (v4 <= v33)
        {
          goto LABEL_40;
        }

        *(*(a1 + 64) + 4 * v33) = *(*(v31 + 56) + 4 * v32);
        v32 = (v32 + 1);
        ++v33;
        if (v30 == v32)
        {
          goto LABEL_36;
        }
      }

      *v47 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 797;
      v43 = 2048;
      v44 = v6;
      v45 = 2048;
      v46 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_40:
      *v47 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 468;
      v43 = 2048;
      v44 = v33;
      v45 = 2048;
      v46 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      *v47 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 797;
      v43 = 2048;
      v44 = v7;
      v45 = 2048;
      v46 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_42:
      *v47 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 468;
      v43 = 2048;
      v44 = v7;
      v45 = 2048;
      v46 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v39 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v47 = 136315906;
      *&v47[4] = "operator[]";
      v48 = 1024;
      v49 = 468;
      v50 = 2048;
      v51 = v7;
      v52 = 2048;
      v53 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_44:
      *v47 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 468;
      v43 = 2048;
      v44 = v21;
      v45 = 2048;
      v46 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_45;
    }
  }

  return result;
}

unint64_t re::BlendSpace::samplePosition(re::BlendSpace *this, uint64_t a2)
{
  v2 = *(this + 10) * a2;
  if (*(this + 7) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 8) + 4 * v2;
}

void re::BlendSpace::computeWeights(re::BlendSpace *this, double a2)
{
  if (*(this + 13))
  {
    v3 = 0;
    v4 = 24;
    do
    {
      v5 = (*(this + 14) + v4);
      v7 = *v5;
      v6 = (v5 - 3);
      if (v7 && re::BindPoint::isAlive(v6))
      {
        v8 = re::BindPoint::valueUntyped(v6);
        if (*(this + 16) <= v3)
        {
          goto LABEL_72;
        }

        *(*(this + 17) + 4 * v3) = *v8;
      }

      ++v3;
      v4 += 48;
    }

    while (v3 < *(this + 13));
  }

  v9 = *(this + 2);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      if (*(this + 10))
      {
        if (*(this + 16))
        {
          v35 = *(this + 11);
          LODWORD(a2) = **(this + 17);
          v36 = *(this + 23);
          v37 = *(v35 + 11);
          v38 = v35[8];
          v39 = v35[9];

          return;
        }

        goto LABEL_81;
      }

      goto LABEL_79;
    }

    if (v9 != 2)
    {
      return;
    }

    if (*(this + 16))
    {
      v10 = *(this + 17);
      v11 = re::BlendSpace::samplePosition(this, 0);
      v12 = re::BlendSpace::samplePosition(this, *(this + 2) - 1);
      v13 = *v10;
      if (*v10 > *v12)
      {
        v13 = *v12;
      }

      if (v13 >= *v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = *v11;
      }

      v15 = *(this + 22);
      if (v15)
      {
        bzero(*(this + 23), 4 * v15);
      }

      if (*(this + 2) < 2uLL)
      {
        return;
      }

      for (i = 0; v14 > *re::BlendSpace::samplePosition(this, i + 1); ++i)
      {
        v17 = i + 2;
        if (v17 >= *(this + 2))
        {
          return;
        }
      }

      v53 = *re::BlendSpace::samplePosition(this, i);
      v54 = *re::BlendSpace::samplePosition(this, i + 1);
      v55 = 0.0;
      if (vabds_f32(v54, v53) >= 0.00001)
      {
        v55 = (v14 - v53) / (v54 - v53);
      }

      v56 = *(this + 22);
      if (v56 > i + 1)
      {
        v57 = *(this + 23);
        *(v57 + 4 * i + 4) = v55;
        if (v56 > i)
        {
          *(v57 + 4 * i) = 1.0 - v55;
          return;
        }

LABEL_87:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_86:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_87;
    }

LABEL_78:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_80;
  }

  if (v9 == 3)
  {
    v40 = *(this + 10);
    if (!v40)
    {
LABEL_80:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_81:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_82;
    }

    if (v40 == 1)
    {
LABEL_82:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_83;
    }

    if (!*(this + 16))
    {
LABEL_83:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_84;
    }

    v41 = *(this + 11);
    v42 = *(v41 + 44);
    v43 = *(v41 + 92);
    v44 = *(this + 20);
    LODWORD(a2) = **(this + 17);
    if (*(this + 16) <= 1uLL)
    {
LABEL_84:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_85;
    }

    if (*(this + 10) <= 1uLL)
    {
LABEL_85:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_86;
    }

    LODWORD(v45) = *(*(this + 17) + 4);
    if (!v43)
    {
      return;
    }

    v46 = 0;
    v47 = 0;
    while (!v42)
    {
LABEL_62:
      ++v47;
      v46 += v42;
      if (v47 == v43)
      {
        return;
      }
    }

    v48 = *(this + 22);
    v49 = v46;
    v50 = v44;
    v51 = v42;
    while (v48 > v49)
    {
      v52 = *v50++;
      *(*(this + 23) + 4 * v49++) = *&v44[4 * v42 + 4 * v47] * v52;
      if (!--v51)
      {
        goto LABEL_62;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_71;
  }

  if (v9 != 4 || !*(this + 2))
  {
    return;
  }

  v18 = 0;
  v19 = *(this + 10);
  do
  {
    v20 = re::BlendSpace::samplePosition(this, v18);
    if (v19)
    {
      v21 = 0;
      v22 = 0.0;
      while (*(this + 16) != v21)
      {
        v23 = *(v20 + 4 * v21) - *(*(this + 17) + 4 * v21);
        v22 = v22 + (v23 * v23);
        if (v19 == ++v21)
        {
          goto LABEL_34;
        }
      }

LABEL_71:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_72:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_73:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_74:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_75:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_76:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_77:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_78;
    }

    v22 = 0.0;
LABEL_34:
    v24 = *(this + 19);
    if (v24 <= v18)
    {
      goto LABEL_73;
    }

    v25 = *(this + 20);
    *(v25 + 4 * v18++) = v22;
    v26 = *(this + 2);
  }

  while (v18 < v26);
  if (v26)
  {
    v27 = 0;
    v28 = *(this + 4);
    v29 = 0.0;
    do
    {
      if (v28 == v27)
      {
        goto LABEL_74;
      }

      if (v24 <= v27)
      {
        goto LABEL_75;
      }

      v30 = *(this + 22);
      if (v30 <= v27)
      {
        goto LABEL_76;
      }

      v31 = *(*(this + 5) + 4 * v27) * *(*(this + 5) + 4 * v27);
      v32 = expf(-*(v25 + 4 * v27) / (v31 + v31));
      v33 = *(this + 23);
      *(v33 + 4 * v27) = v32;
      v29 = v29 + v32;
      ++v27;
    }

    while (v26 != v27);
    v34 = 0;
    while (v30 != v34)
    {
      *(v33 + 4 * v34) = *(v33 + 4 * v34) / v29;
      if (v26 == ++v34)
      {
        return;
      }
    }

    goto LABEL_77;
  }
}

void anonymous namespace::computeWeightsForUniformAxis(void *a1, unint64_t a2, double a3, float a4, float a5)
{
  if (a5 < *&a3)
  {
    *&a3 = a5;
  }

  if (*&a3 < a4)
  {
    *&a3 = a4;
  }

  v7 = ((*&a3 - a4) / (a5 - a4)) * (a2 - 1);
  v8 = floorf(v7);
  v9 = (v8 + 1.0);
  if (a2)
  {
    bzero(a1, 4 * a2);
  }

  *&a3 = v7 - v8;
  if (a2 > v9)
  {
    *(a1 + v9) = LODWORD(a3);
  }

  v10 = v9 - 1;
  if (a2 <= v10)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, a2);
    _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + v10) = 1.0 - *&a3;
  }
}

uint64_t re::BlendSpaceBuilder::addAxis(re::BlendSpaceBuilder *this, const re::StringID *a2, int a3, float a4, float a5)
{
  if (re::BlendSpaceBuilder::axisIndex(this, a2) != -1)
  {
    return -1;
  }

  v12 = *(this + 1);
  if ((*v12 & 0xFFFFFFFD) != 1 || (v10 = -1, a3) && (a5 - a4) > 0.0)
  {
    v10 = *(v12 + 24);
    re::StringID::StringID(&v14, a2);
    v15 = 0;
    v16 = &str_8;
    v17 = a4;
    v18 = a5;
    v19 = 0;
    v20 = a3;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::add((v12 + 8), &v14);
    if (v15)
    {
      if (v15)
      {
      }
    }

    v15 = 0;
    v16 = &str_67;
    if (v14.n128_u8[0])
    {
      if (v14.n128_u8[0])
      {
      }
    }
  }

  return v10;
}

uint64_t re::BlendSpaceBuilder::axisIndex(re::BlendSpaceBuilder *this, const re::StringID *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return -1;
  }

  v5 = 0;
  for (i = *(v2 + 40); !re::StringID::operator==(i, a2); i += 6)
  {
    if (v3 == ++v5)
    {
      return -1;
    }
  }

  return v5;
}

uint64_t re::BlendSpaceBuilder::setDefaultControlValueForAxis(uint64_t this, unint64_t a2, float a3)
{
  v3 = *(this + 8);
  if (*(v3 + 24) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(v3 + 40) + 48 * a2 + 40) = a3;
  return this;
}

unint64_t *re::BlendSpaceBuilder::setControlValueBindPath(re::BlendSpaceBuilder *this, unint64_t a2, const re::StringID *a3)
{
  v3 = *(this + 1);
  if (*(v3 + 24) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(v3 + 40) + 48 * a2 + 16);

  return re::StringID::operator=(v4, a3);
}

uint64_t re::BlendSpaceBuilder::addSample(re::BlendSpaceBuilder *this, StringID *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = *(v3 + 80);
    v6 = -v4;
    v7 = 1;
    while (!re::StringID::operator==(v5, a2))
    {
      ++v7;
      v5 += 8;
      if (v6 + v7 == 1)
      {
        goto LABEL_7;
      }
    }

    if (v7)
    {
      return -1;
    }
  }

LABEL_7:
  if ((*v3 & 0xFFFFFFFD) == 1)
  {
    return -1;
  }

  re::StringID::StringID(v11, a2);
  v11[4] = 0.0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v15 = 0;
  v9 = re::DynamicArray<re::BlendSpaceSampleDefinition>::add((v3 + 48), v11);
  v10 = v12;
  if (v12)
  {
    if (v16)
    {
      v10 = (*(*v12 + 40))(v9);
    }

    v16 = 0;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    ++v15;
  }

  if (LOBYTE(v11[0]))
  {
    if (LOBYTE(v11[0]))
    {
    }
  }

  return *(v3 + 64) - 1;
}

uint64_t re::BlendSpaceBuilder::setSamplePosition(uint64_t a1, unint64_t a2, float *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (a4 != *(v4 + 24) || (*v4 & 0xFFFFFFFD) == 1)
  {
    return 0;
  }

  if (*(v4 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = a4;
  if (a4)
  {
    v8 = *(v4 + 80) + (a2 << 6);
    do
    {
      re::DynamicArray<float>::add((v8 + 24), a3++);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t re::BlendSpaceBuilder::setSampleFalloff(uint64_t this, unint64_t a2, float a3)
{
  v3 = *(this + 8);
  if (*(v3 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(v3 + 80) + (a2 << 6) + 16) = a3;
  return this;
}

unint64_t re::BlendSpaceBuilder::addSampleUniform(re::BlendSpaceBuilder *this, StringID *a2, int a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  if ((*v5 & 0xFFFFFFFD) != 1)
  {
    return -1;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    *v28 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    *v23 = 789;
    *&v23[4] = 2048;
    *v24 = 0;
    *&v24[8] = 2048;
    *&v24[10] = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(v5 + 40);
  if (v6 != 1)
  {
    LODWORD(v6) = *(v11 + 92);
  }

  v12 = *(v11 + 44);
  if (!*(v5 + 64))
  {
    v13 = (v6 * v12);
    *(v5 + 48) = *this;
    v14 = v5 + 48;
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(v14, v13);
    ++*(v14 + 24);
    re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(*(this + 1) + 48, v13);
  }

  v15 = (a4 + v12 * a3);
  re::StringID::StringID(&v20, a2);
  *&v23[2] = 0;
  v27 = 0;
  *&v24[12] = 0;
  v25 = 0;
  *&v24[4] = 0;
  v26 = 0;
  v16 = *(this + 1);
  v4 = *(v16 + 64);
  if (v4 <= v15)
  {
LABEL_18:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v28 = 136315906;
    *&v28[4] = "operator[]";
    v29 = 1024;
    v30 = 789;
    v31 = 2048;
    v32 = v15;
    v33 = 2048;
    v34 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v17 = re::StringID::operator=((*(v16 + 80) + (v15 << 6)), &v20);
  *(v17 + 4) = *&v23[2];
  re::DynamicArray<re::RigComponentConstraint>::operator=(v17 + 24, &v24[4]);
  v18 = *&v24[4];
  if (*&v24[4])
  {
    if (v27)
    {
      v18 = (*(**&v24[4] + 40))();
    }

    v27 = 0;
    *&v24[12] = 0;
    v25 = 0;
    *&v24[4] = 0;
    ++v26;
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  return v15;
}

void re::BlendSpaceBuilder::build(re::BlendSpaceBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v4 = *(v3 + 8);
  if (v4 <= 1)
  {
    v5 = v32;
    v6 = v33;
    v7 = v34;
    *a2 = 0;
    v8 = 8000;
LABEL_39:
    *(a2 + 8) = v8;
    *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a2 + 24) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7;
    return;
  }

  v9 = *(v3 + 3);
  if (!v9)
  {
    v5 = v32;
    v6 = v33;
    v7 = v34;
    *a2 = 0;
    v8 = 8003;
    goto LABEL_39;
  }

  v11 = *v3;
  if ((*v3 & 0xFFFFFFFD) == 1)
  {
    v12 = *(v3 + 5);
    v13 = v12 + 48 * v9;
    do
    {
      re::StringID::StringID(&v32, v12);
      v14 = re::StringID::StringID(&v33, (v12 + 16));
      v35 = *(v12 + 32);
      if (*(&v35 + 1) <= *&v35)
      {
        v25 = re::DynamicString::format("Axis range for uniform blend space not defined for axis %s.", &v29, *(&v32 + 1));
        v26 = v29;
        v27 = v30;
        v28 = v31;
        *a2 = 0;
        *(a2 + 8) = 8001;
        *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a2 + 24) = v26;
        *(a2 + 40) = v27;
        *(a2 + 48) = v28;
        if (v33)
        {
          if (v33)
          {
          }
        }

        v33 = 0;
        v34 = &str_67;
        if (v32)
        {
          if (v32)
          {
          }
        }

        return;
      }

      if (v33)
      {
        if (v33)
        {
        }
      }

      v33 = 0;
      v34 = &str_67;
      if (v32)
      {
        if (v32)
        {
        }
      }

      v12 += 48;
    }

    while (v12 != v13);
    v15 = *(v3 + 8);
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15 << 6;
    v17 = (*(v3 + 10) + 8);
    while (*(v17 - 1) > 1uLL || !*v17 || **v17)
    {
      v17 += 8;
      v16 -= 64;
      if (!v16)
      {
        goto LABEL_25;
      }
    }

LABEL_38:
    v5 = v32;
    v6 = v33;
    v7 = v34;
    *a2 = 0;
    v8 = 8002;
    goto LABEL_39;
  }

  v18 = (*(v3 + 10) + 40);
  v19 = v4 << 6;
  do
  {
    if (*v18 != v9)
    {
      re::DynamicString::format("Blend space sample %s has an invalid position.", &v32, *(v18 - 4));
      goto LABEL_38;
    }

    v18 += 8;
    v19 -= 64;
  }

  while (v19);
LABEL_25:
  v20 = *(this + 1);
  if (v11 == 2)
  {
    v21 = *(v20 + 80);
    v22 = *(v20 + 64);
    v23 = 126 - 2 * __clz(v22);
    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,false>(v21, v21 + (v22 << 6), v24, 1);
    v20 = *(this + 1);
  }

  *a2 = 1;
  *(a2 + 8) = v20;
}

void std::__introsort<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v102 = a2 - 64;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 6;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 24), *(a2 - 8), *(a1 + 40), *(a1 + 56)))
        {
          v47 = a1;
          v48 = a2 - 64;
LABEL_75:
          std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v47, v48);
          return;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, v102);
      return;
    }

    if (v9 == 4)
    {
      break;
    }

    if (v9 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128, a1 + 192, v102);
      return;
    }

LABEL_9:
    if (v9 <= 23)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v49 = (a1 + 64);
          if (a1 + 64 != a2)
          {
            v50 = 0;
            v51 = a1;
            do
            {
              v52 = v49;
              if (re::BlendSpaceBuilder::build(void)::$_0::operator()(v49[5], v49[7], v51[5], v51[7]))
              {
                v53 = *v52;
                v54 = v52[1];
                v110 = *v52 & 1;
                v110 = *v52 & 0xFFFFFFFFFFFFFFFELL | v53 & 1;
                v111 = v54;
                *v52 = 0;
                v52[1] = &str_67;
                v112 = *(v51 + 20);
                v113 = v51[11];
                v114 = *(v51 + 6);
                v51[12] = 0;
                v51[13] = 0;
                v51[11] = 0;
                v116 = v51[15];
                v51[15] = 0;
                ++*(v51 + 28);
                v115 = 1;
                v55 = v50;
                while (1)
                {
                  v56 = a1 + v55;
                  re::StringID::operator=((a1 + v55 + 64), (a1 + v55));
                  *(v56 + 80) = *(v56 + 16);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v56 + 88, v56 + 24);
                  if (!v55)
                  {
                    break;
                  }

                  v55 -= 64;
                  if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v56 - 24), *(v56 - 8)))
                  {
                    v57 = (a1 + v55 + 64);
                    goto LABEL_91;
                  }
                }

                v57 = a1;
LABEL_91:
                v58 = re::StringID::operator=(v57, &v110);
                *(v58 + 4) = v112;
                re::DynamicArray<re::RigComponentConstraint>::operator=(v56 + 24, &v113);
                v59 = v113;
                if (v113)
                {
                  if (v116)
                  {
                    v59 = (*(*v113 + 40))();
                  }

                  v116 = 0;
                  v114 = 0uLL;
                  v113 = 0;
                  ++v115;
                }

                if (v110)
                {
                  if (v110)
                  {
                  }
                }
              }

              v49 = v52 + 8;
              v50 += 64;
              v51 = v52;
            }

            while (v52 + 8 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v95 = (a1 + 64);
        if (a1 + 64 != a2)
        {
          do
          {
            v96 = v95;
            if (re::BlendSpaceBuilder::build(void)::$_0::operator()(v95[5], v95[7], *(a1 + 40), *(a1 + 56)))
            {
              v97 = *v96;
              v98 = v96[1];
              v110 = *v96 & 1;
              v110 = *v96 & 0xFFFFFFFFFFFFFFFELL | v97 & 1;
              v111 = v98;
              *v96 = 0;
              v96[1] = &str_67;
              v112 = *(a1 + 80);
              v113 = *(a1 + 88);
              v114 = *(a1 + 96);
              *(a1 + 96) = 0;
              *(a1 + 104) = 0;
              *(a1 + 88) = 0;
              v116 = *(a1 + 120);
              *(a1 + 120) = 0;
              ++*(a1 + 112);
              v115 = 1;
              v99 = v96;
              do
              {
                v100 = v99;
                v99 = (v99 - 64);
                re::StringID::operator=(v100, v99);
                *(v100 + 4) = *(v100 - 12);
                re::DynamicArray<re::RigComponentConstraint>::operator=(v100 + 24, v100 - 40);
              }

              while (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v100 - 11), *(v100 - 9)));
              re::StringID::operator=(v99, &v110);
              *(v99 + 4) = v112;
              re::DynamicArray<re::RigComponentConstraint>::operator=(v99 + 24, &v113);
              v101 = v113;
              if (v113)
              {
                if (v116)
                {
                  v101 = (*(*v113 + 40))();
                }

                v116 = 0;
                v114 = 0uLL;
                v113 = 0;
                ++v115;
              }

              if (v110)
              {
                if (v110)
                {
                }
              }
            }

            v95 = v96 + 8;
            a1 = v96;
          }

          while (v96 + 8 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v60 = v10 >> 1;
        v61 = v10 >> 1;
        do
        {
          v62 = v61;
          if (v60 >= v61)
          {
            v63 = (2 * v61) | 1;
            v64 = a1 + (v63 << 6);
            if (2 * v61 + 2 < v9)
            {
              v65 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 40), *(v64 + 56), *(v64 + 104), *(v64 + 120));
              v66 = 64;
              if (!v65)
              {
                v66 = 0;
              }

              v64 += v66;
              if (v65)
              {
                v63 = 2 * v62 + 2;
              }
            }

            v67 = (a1 + (v62 << 6));
            if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 40), *(v64 + 56), *(v67 + 5), *(v67 + 7)))
            {
              v68 = *v67;
              v110 = *v67 & 1;
              v110 = *v67 & 0xFFFFFFFFFFFFFFFELL | v68 & 1;
              v111 = *(v67 + 1);
              *v67 = 0;
              *(v67 + 1) = &str_67;
              v112 = *(v67 + 4);
              v113 = *(v67 + 3);
              *(v67 + 3) = 0;
              *&v114 = *(v67 + 4);
              *(v67 + 4) = 0;
              *(&v114 + 1) = *(v67 + 5);
              *(v67 + 5) = 0;
              v116 = *(v67 + 7);
              *(v67 + 7) = 0;
              ++*(v67 + 12);
              v115 = 1;
              do
              {
                v69 = v64;
                re::StringID::operator=(v67, v64);
                *(v67 + 4) = *(v64 + 16);
                re::DynamicArray<re::RigComponentConstraint>::operator=(v67 + 24, v64 + 24);
                if (v60 < v63)
                {
                  break;
                }

                v70 = (2 * v63) | 1;
                v64 = a1 + (v70 << 6);
                if (2 * v63 + 2 < v9)
                {
                  v71 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 40), *(v64 + 56), *(v64 + 104), *(v64 + 120));
                  v72 = 64;
                  if (!v71)
                  {
                    v72 = 0;
                  }

                  v64 += v72;
                  if (v71)
                  {
                    v70 = 2 * v63 + 2;
                  }
                }

                v67 = v69;
                v63 = v70;
              }

              while (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 40), *(v64 + 56), *(&v114 + 1), v116));
              re::StringID::operator=(v69, &v110);
              *(v69 + 4) = v112;
              re::DynamicArray<re::RigComponentConstraint>::operator=(v69 + 24, &v113);
              v73 = v113;
              if (v113)
              {
                if (v116)
                {
                  v73 = (*(*v113 + 40))();
                }

                v116 = 0;
                v114 = 0uLL;
                v113 = 0;
                ++v115;
              }

              if (v110)
              {
                if (v110)
                {
                }
              }
            }
          }

          v61 = v62 - 1;
        }

        while (v62);
        do
        {
          v74 = 0;
          v75 = *a1;
          v76 = *(a1 + 8);
          v103[0] = *a1 & 1;
          v77 = a2;
          v103[0] = *a1 & 0xFFFFFFFFFFFFFFFELL | v75 & 1;
          v103[1] = v76;
          *a1 = 0;
          *(a1 + 8) = &str_67;
          v104 = *(a1 + 16);
          v78 = *(a1 + 32);
          v105 = *(a1 + 24);
          *(a1 + 24) = 0;
          v106 = v78;
          *(a1 + 32) = 0;
          v107 = *(a1 + 40);
          *(a1 + 40) = 0;
          v109 = *(a1 + 56);
          *(a1 + 56) = 0;
          ++*(a1 + 48);
          v108 = 1;
          v79 = a1;
          do
          {
            v80 = (v79 + 64 * v74);
            v81 = (v80 + 16);
            v82 = (2 * v74) | 1;
            v74 = 2 * v74 + 2;
            if (v74 >= v9)
            {
              v74 = v82;
            }

            else
            {
              v83 = (v80 + 32);
              if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v80 + 13), *(v80 + 15), *(v80 + 21), *(v80 + 23)))
              {
                v81 = v83;
              }

              else
              {
                v74 = v82;
              }
            }

            re::StringID::operator=(v79, v81);
            *(v79 + 4) = *(v81 + 4);
            re::DynamicArray<re::RigComponentConstraint>::operator=(v79 + 24, v81 + 24);
            v79 = v81;
          }

          while (v74 <= ((v9 - 2) >> 1));
          a2 = v77 - 64;
          if (v81 == (v77 - 64))
          {
            re::StringID::operator=(v81, v103);
            *(v81 + 4) = v104;
            re::DynamicArray<re::RigComponentConstraint>::operator=(v81 + 24, &v105);
          }

          else
          {
            re::StringID::operator=(v81, (v77 - 64));
            *(v81 + 4) = *(v77 - 48);
            re::DynamicArray<re::RigComponentConstraint>::operator=(v81 + 24, v77 - 40);
            re::StringID::operator=((v77 - 64), v103);
            *(v77 - 48) = v104;
            re::DynamicArray<re::RigComponentConstraint>::operator=(v77 - 40, &v105);
            v84 = (v81 - a1 + 64) >> 6;
            v85 = v84 < 2;
            v86 = v84 - 2;
            if (!v85)
            {
              v87 = v86 >> 1;
              v88 = a1 + (v86 >> 1 << 6);
              if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v88 + 40), *(v88 + 56), *(v81 + 5), *(v81 + 7)))
              {
                v89 = *v81;
                v90 = *(v81 + 1);
                v110 = *v81 & 1;
                v110 = *v81 & 0xFFFFFFFFFFFFFFFELL | v89 & 1;
                v111 = v90;
                *v81 = 0;
                *(v81 + 1) = &str_67;
                v112 = *(v81 + 4);
                v91 = *(v81 + 4);
                v113 = *(v81 + 3);
                *(v81 + 3) = 0;
                *&v114 = v91;
                *(v81 + 4) = 0;
                *(&v114 + 1) = *(v81 + 5);
                *(v81 + 5) = 0;
                v116 = *(v81 + 7);
                *(v81 + 7) = 0;
                ++*(v81 + 12);
                v115 = 1;
                do
                {
                  v92 = v88;
                  re::StringID::operator=(v81, v88);
                  *(v81 + 4) = *(v88 + 16);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v81 + 24, v88 + 24);
                  if (!v87)
                  {
                    break;
                  }

                  v87 = (v87 - 1) >> 1;
                  v88 = a1 + (v87 << 6);
                  v81 = v92;
                }

                while (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v88 + 40), *(v88 + 56), *(&v114 + 1), v116));
                re::StringID::operator=(v92, &v110);
                *(v92 + 4) = v112;
                re::DynamicArray<re::RigComponentConstraint>::operator=(v92 + 24, &v113);
                v93 = v113;
                if (v113)
                {
                  if (v116)
                  {
                    v93 = (*(*v113 + 40))();
                  }

                  v116 = 0;
                  v114 = 0uLL;
                  v113 = 0;
                  ++v115;
                }

                if (v110)
                {
                  if (v110)
                  {
                  }
                }
              }
            }
          }

          v94 = v105;
          if (v105)
          {
            if (v109)
            {
              v94 = (*(*v105 + 40))();
            }

            v109 = 0;
            v106 = 0;
            v107 = 0;
            v105 = 0;
            ++v108;
          }

          if (v103[0])
          {
            if (v103[0])
            {
            }
          }

          v85 = v9-- <= 2;
        }

        while (!v85);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = a1 + (v9 >> 1 << 6);
    if (v9 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1 + (v9 >> 1 << 6), a1, v102);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + (v9 >> 1 << 6), v102);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1 + 64, v12 - 64, a2 - 128);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1 + 128, a1 + 64 + (v11 << 6), a2 - 192);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(v12 - 64, a1 + (v9 >> 1 << 6), a1 + 64 + (v11 << 6));
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a1 + (v9 >> 1 << 6));
    }

    --a3;
    if ((a4 & 1) != 0 || re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 - 24), *(a1 - 8), *(a1 + 40), *(a1 + 56)))
    {
      v13 = 0;
      v14 = *a1;
      v15 = *(a1 + 8);
      v110 = *a1 & 1;
      v110 = *a1 & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
      v111 = v15;
      *a1 = 0;
      *(a1 + 8) = &str_67;
      v16 = *(a1 + 16);
      v113 = *(a1 + 24);
      *(a1 + 24) = 0;
      v17 = *(a1 + 40);
      *&v114 = *(a1 + 32);
      *(a1 + 32) = 0;
      *(&v114 + 1) = v17;
      *(a1 + 40) = 0;
      v116 = *(a1 + 56);
      ++*(a1 + 48);
      v112 = v16;
      *(a1 + 56) = 0;
      v115 = 1;
      do
      {
        v18 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + v13 + 104), *(a1 + v13 + 120), *(&v114 + 1), v116);
        v13 += 64;
      }

      while (v18);
      v19 = a1 + v13;
      v20 = a2;
      if (v13 == 64)
      {
        v23 = a2;
        while (v19 < v23)
        {
          v21 = v23 - 64;
          v24 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v23 - 24), *(v23 - 8), *(&v114 + 1), v116);
          v23 = v21;
          if (v24)
          {
            goto LABEL_26;
          }
        }

        v21 = v23;
      }

      else
      {
        do
        {
          v21 = v20 - 64;
          v22 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v20 - 24), *(v20 - 8), *(&v114 + 1), v116);
          v20 = v21;
        }

        while (!v22);
      }

LABEL_26:
      v8 = a1 + v13;
      if (v19 < v21)
      {
        v25 = v21;
        do
        {
          std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v8, v25);
          do
          {
            v26 = *(v8 + 104);
            v27 = *(v8 + 120);
            v8 += 64;
          }

          while (re::BlendSpaceBuilder::build(void)::$_0::operator()(v26, v27, *(&v114 + 1), v116));
          do
          {
            v28 = *(v25 - 24);
            v29 = *(v25 - 8);
            v25 -= 64;
          }

          while (!re::BlendSpaceBuilder::build(void)::$_0::operator()(v28, v29, *(&v114 + 1), v116));
        }

        while (v8 < v25);
      }

      if (v8 - 64 != a1)
      {
        re::StringID::operator=(a1, (v8 - 64));
        *(a1 + 16) = *(v8 - 48);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 24, v8 - 40);
      }

      re::StringID::operator=((v8 - 64), &v110);
      *(v8 - 48) = v112;
      re::DynamicArray<re::RigComponentConstraint>::operator=(v8 - 40, &v113);
      v30 = v113;
      if (v113)
      {
        if (v116)
        {
          v30 = (*(*v113 + 40))();
        }

        v116 = 0;
        v114 = 0uLL;
        v113 = 0;
        ++v115;
      }

      if (v110)
      {
        if (v110)
        {
        }
      }

      if (v19 < v21)
      {
        goto LABEL_44;
      }

      v31 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *>(a1, v8 - 64);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *>(v8, a2))
      {
        a2 = v8 - 64;
        if (!v31)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v31)
      {
LABEL_44:
        std::__introsort<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,false>(a1, v8 - 64, a3, a4 & 1);
        goto LABEL_45;
      }
    }

    else
    {
      v32 = *a1;
      v33 = *(a1 + 8);
      v110 = *a1 & 1;
      v110 = *a1 & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
      v111 = v33;
      *a1 = 0;
      *(a1 + 8) = &str_67;
      v112 = *(a1 + 16);
      v113 = *(a1 + 24);
      *(a1 + 24) = 0;
      *&v114 = *(a1 + 32);
      *(a1 + 32) = 0;
      *(&v114 + 1) = *(a1 + 40);
      *(a1 + 40) = 0;
      v116 = *(a1 + 56);
      *(a1 + 56) = 0;
      ++*(a1 + 48);
      v115 = 1;
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(a2 - 24), *(a2 - 8)))
      {
        v34 = a1;
        do
        {
          v8 = v34 + 64;
          v35 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v34 + 104), *(v34 + 120));
          v34 = v8;
        }

        while (!v35);
      }

      else
      {
        v36 = a1 + 64;
        do
        {
          v8 = v36;
          if (v36 >= a2)
          {
            break;
          }

          v37 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v36 + 40), *(v36 + 56));
          v36 = v8 + 64;
        }

        while (!v37);
      }

      v38 = a2;
      if (v8 < a2)
      {
        v39 = a2;
        do
        {
          v38 = v39 - 64;
          v40 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v39 - 24), *(v39 - 8));
          v39 = v38;
        }

        while (v40);
      }

      while (v8 < v38)
      {
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v8, v38);
        do
        {
          v41 = *(v8 + 104);
          v42 = *(v8 + 120);
          v8 += 64;
        }

        while (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, v41, v42));
        do
        {
          v43 = *(v38 - 24);
          v44 = *(v38 - 8);
          v38 -= 64;
        }

        while (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, v43, v44));
      }

      if (v8 - 64 != a1)
      {
        re::StringID::operator=(a1, (v8 - 64));
        *(a1 + 16) = *(v8 - 48);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a1 + 24, v8 - 40);
      }

      re::StringID::operator=((v8 - 64), &v110);
      *(v8 - 48) = v112;
      re::DynamicArray<re::RigComponentConstraint>::operator=(v8 - 40, &v113);
      v45 = v113;
      if (v113)
      {
        if (v116)
        {
          v45 = (*(*v113 + 40))();
        }

        v116 = 0;
        v114 = 0uLL;
        v113 = 0;
        ++v115;
      }

      if (v110)
      {
        if (v110)
        {
        }
      }

LABEL_45:
      a4 = 0;
    }
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128);
  if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 24), *(a2 - 8), *(a1 + 168), *(a1 + 184)))
  {
    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1 + 128, v102);
    if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + 168), *(a1 + 184), *(a1 + 104), *(a1 + 120)))
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1 + 64, a1 + 128);
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + 104), *(a1 + 120), *(a1 + 40), *(a1 + 56)))
      {
        v48 = a1 + 64;
        v47 = a1;
        goto LABEL_75;
      }
    }
  }
}