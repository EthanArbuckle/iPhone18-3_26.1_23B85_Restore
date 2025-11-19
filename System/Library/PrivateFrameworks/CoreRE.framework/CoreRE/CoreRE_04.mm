void re::AnimationImpl<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Vector3<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD5E8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_55:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v44 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v6;
    v59 = 2048;
    v60 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v49, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v50;
    if (v50 > v6)
    {
      v6 = *(v51 + 8 * v6);
      if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              v29 = v25[16] != 1 || *v25 == 2;
              if (!v29 || (*v4 = *v27, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v61.n128_u64[0] = v4;
              v61.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v49 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v48 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 476;
          v57 = 2048;
          v58 = v6;
          v59 = 2048;
          v60 = v48;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v46 = v19;
        v47 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 476;
        v57 = 2048;
        v58 = v47;
        v59 = 2048;
        v60 = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v49 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v45 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v6;
      v59 = 2048;
      v60 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_57:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v30 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v61.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v61.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  }

LABEL_37:
  v8 = v11 + v8;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v8;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if ((v32 & 1) == 0)
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
LABEL_44:
    if (v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v37 = 0;
  v38 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v39 = *(a1 + 400);
  v38 = *(*(a1 + 416) + 8 * v39 - 8);
  *(a1 + 400) = v39 - 1;
  ++*(a1 + 408);
LABEL_46:
  v40 = *v36;
  if (*(v10 + 7))
  {
    v41 = vaddq_f32(v40, *v33);
  }

  else
  {
    v41 = vmlaq_n_f32(vmulq_n_f32(*v33, v11 / v8), v40, 1.0 - (v11 / v8));
  }

  *v38 = v41;
  v61.n128_u64[0] = v38;
  v61.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  if (v37)
  {
    v42 = *(a1 + 400);
    if (v42 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v42 + 1);
      v42 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v42) = v37;
    *(a1 + 400) = v42 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

_OWORD *re::AnimationBlendTreeRigContext<re::Vector3<float>>::setRigDataValue<re::Vector3<float>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(a1 + 248) + 288 * a2, a2);
    *result = *a3;
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector4<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Vector4<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Vector4<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[46];
}

float re::AnimationImpl<re::Vector4<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::Vector4<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 160, 16);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACD90;
  *(v2 + 112) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  return result;
}

BOOL re::AnimationImpl<re::Vector4<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[46] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Vector4<float>>::debugLogData(re *a1, uint64_t a2)
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

_DWORD *re::AnimationImpl<re::Vector4<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
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

void re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6, double a7)
{
  v85 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v16.n128_u64[1] = 0;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v17 = *(a1 + 400);
    do
    {
      if (v17 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v17 + 1);
        v17 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v17++) = &v59 + v15;
      *(a1 + 400) = v17;
      ++*(a1 + 408);
      v15 += 16;
    }

    while (v15 != 48);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    v16.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateBlend(a1, 0, 0, v16);
    v18 = *(a1 + 360);
    if (v18)
    {
      v19 = *(*(a1 + 376) + 16 * v18 - 16);
      if (v19 != a6)
      {
        *a6 = *v19;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v20 = *(a1 + 440);
  v21 = *(a1 + 320);
  v53 = *(a1 + 312);
  v57[0] = a2;
  v57[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v54, (v14 + 44));
  v22 = v14[39];
  if (v22 != *(v20 + 56))
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v22; ++i)
    {
      v59 = 0uLL;
      re::DynamicArray<re::Vector4<float>>::add((v20 + 40), &v59);
      v22 = v14[39];
    }
  }

  if (v22)
  {
    v24 = 0;
    for (j = 0; j < v22; ++j)
    {
      v26 = v55;
      if (v55 <= j)
      {
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 476;
        v81 = 2048;
        v82 = j;
        v83 = 2048;
        v84 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_76:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 476;
        v81 = 2048;
        v82 = v8;
        v83 = 2048;
        v84 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 476;
        v81 = 2048;
        v82 = v26;
        v83 = 2048;
        v84 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_78:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 476;
        v81 = 2048;
        v82 = v8;
        v83 = 2048;
        v84 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 789;
        v81 = 2048;
        v82 = j;
        v83 = 2048;
        v84 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_80:
        re::internal::assertLog(6, v28, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
LABEL_81:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 789;
        v81 = 2048;
        v82 = j;
        v83 = 2048;
        v84 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 789;
        v81 = 2048;
        v82 = j;
        v83 = 2048;
        v84 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_83:
        re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, j, v36);
        _os_crash();
        __break(1u);
LABEL_84:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v77 = 136315906;
        v78 = "operator[]";
        v79 = 1024;
        v80 = 789;
        v81 = 2048;
        v82 = j;
        v83 = 2048;
        v84 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v8 = *(v56 + 8 * j);
      v7 = v14[42];
      if (v7 <= v8)
      {
        goto LABEL_76;
      }

      v26 = v8 + 1;
      if (v7 <= v8 + 1)
      {
        goto LABEL_77;
      }

      if (v22 <= v8)
      {
        goto LABEL_78;
      }

      v22 = *(v14[40] + 8 * v8);
      v27 = re::Slice<re::AnimationClock>::range(v57, *(v14[43] + 8 * v8), *(v14[43] + 8 * v26));
      v26 = *(v20 + 56);
      if (v26 <= j)
      {
        goto LABEL_79;
      }

      v29 = v28;
      if (!v28)
      {
        goto LABEL_80;
      }

      v30 = *(v20 + 72);
      v31 = v27[16] != 1 || *v27 == 2;
      if (!v31 || (*(v30 + v24) = *a4, v22[2] == 49))
      {
        (*(*v22 + 120))(v22, v27, v28, a4, a5, v30 + v24);
      }

      v26 = *(v20 + 16);
      if (v26 <= j)
      {
        goto LABEL_81;
      }

      v26 = *(v20 + 56);
      if (v26 <= j)
      {
        goto LABEL_82;
      }

      v22 = v14[39];
      v24 += 16;
    }
  }

LABEL_34:
  if (v53)
  {
    v32 = 0;
    v33 = 0;
    j = 0;
    do
    {
      if (!*(v21 + 3) || !re::BindPoint::isAlive(v21))
      {
        goto LABEL_68;
      }

      v34 = re::BindPoint::valueUntyped(v21);
      v36 = *(v20 + 232);
      if (v36 <= j)
      {
        goto LABEL_83;
      }

      v37 = v34;
      v38 = *(v20 + 248);
      v22 = (v38 + v32);
      v39 = *(v38 + v32 + 32);
      if (v39 > 5)
      {
        if (*(v38 + v32 + 32) <= 7u)
        {
          if (v39 != 6)
          {
            if (v39 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v38 + v32, v35) = *v34;
            }

            goto LABEL_68;
          }

          v47 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v38 + v32, v35);
        }

        else
        {
          if (v39 != 8)
          {
            if (v39 == 10)
            {
              v22 = *(v20 + 96);
              if (v22 <= j)
              {
                goto LABEL_84;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v20 + 112) + v33), v34);
            }

            else if (v39 == 13 && *(v38 + v32 + 40) >> 1 == 82389)
            {
              v44 = *(v38 + v32 + 48);
              if (v44 == "SRT" || !strcmp(v44, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v22, v37);
              }
            }

            goto LABEL_68;
          }

          v47 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v38 + v32, v35);
        }

        *v47 = *v37;
      }

      else
      {
        if (*(v38 + v32 + 32) > 2u)
        {
          switch(v39)
          {
            case 3u:
              v48 = *v34;
              *re::RigDataValue::getRuntimeValue<float>(v38 + v32, v35) = v48;
              break;
            case 4u:
              v49 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v38 + v32, v35);
              v51 = *(v37 + 1);
              v50 = *(v37 + 2);
              *v49 = *v37;
              v49[1] = v51;
              v49[2] = v50;
              break;
            case 5u:
              v40 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v38 + v32, v35);
              v41 = *(v37 + 3);
              v43 = *v37;
              v42 = *(v37 + 1);
              v40[2] = *(v37 + 2);
              v40[3] = v41;
              *v40 = v43;
              v40[1] = v42;
              break;
          }

          goto LABEL_68;
        }

        if (v39 == 1)
        {
          v45 = *v34;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v38 + v32, v35);
          goto LABEL_60;
        }

        if (v39 == 2)
        {
          v45 = *v34;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v38 + v32, v35);
LABEL_60:
          *Runtime = v45;
        }
      }

LABEL_68:
      ++j;
      v33 += 24;
      v32 += 288;
      v21 = (v21 + 48);
    }

    while (v53 != j);
  }

  if ((*(v20 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v20 + 2360));
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  re::EvaluationContextSlices::init(&v59, (v20 + 4896));
  (*(*(v20 + 5600) + 16))(v20 + 5600, &v59);
  if (v54 && v55)
  {
    (*(*v54 + 40))();
  }
}

void re::AnimationImpl<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Vector4<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD6C8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_55:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v44 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v6;
    v59 = 2048;
    v60 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v49, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v50;
    if (v50 > v6)
    {
      v6 = *(v51 + 8 * v6);
      if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              v29 = v25[16] != 1 || *v25 == 2;
              if (!v29 || (*v4 = *v27, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v61.n128_u64[0] = v4;
              v61.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v49 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v48 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 476;
          v57 = 2048;
          v58 = v6;
          v59 = 2048;
          v60 = v48;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v46 = v19;
        v47 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 476;
        v57 = 2048;
        v58 = v47;
        v59 = 2048;
        v60 = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v49 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v45 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v6;
      v59 = 2048;
      v60 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_57:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v30 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v61.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v61.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  }

LABEL_37:
  v8 = v11 + v8;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v8;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if ((v32 & 1) == 0)
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
LABEL_44:
    if (v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v37 = 0;
  v38 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v39 = *(a1 + 400);
  v38 = *(*(a1 + 416) + 8 * v39 - 8);
  *(a1 + 400) = v39 - 1;
  ++*(a1 + 408);
LABEL_46:
  v40 = *v36;
  if (*(v10 + 7))
  {
    v41 = *v33;
  }

  else
  {
    v40 = vmulq_n_f32(v40, 1.0 - (v11 / v8));
    v41 = vmulq_n_f32(*v33, v11 / v8);
  }

  *v38 = vaddq_f32(v40, v41);
  v61.n128_u64[0] = v38;
  v61.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  if (v37)
  {
    v42 = *(a1 + 400);
    if (v42 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v42 + 1);
      v42 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v42) = v37;
    *(a1 + 400) = v42 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

__n128 re::DynamicArray<re::Vector4<float>>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Vector4<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Vector4<float>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Vector4<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Vector4<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Vector4<float>>::setCapacity(void *result, unint64_t a2)
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
          result = (*(*result + 32))(result, 16 * a2, 16);
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
        result = re::DynamicArray<re::Vector4<float>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Quaternion<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Quaternion<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Quaternion<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[245];
}

float re::AnimationImpl<re::Quaternion<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::Quaternion<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 160, 16);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACDE8;
  *(v2 + 112) = 0;
  result = 0.0;
  *(v2 + 144) = xmmword_1E30474D0;
  return result;
}

BOOL re::AnimationImpl<re::Quaternion<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[245] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Quaternion<float>>::debugLogData(re *a1, uint64_t a2)
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

_DWORD *re::AnimationImpl<re::Quaternion<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
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

void re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6, double a7)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    memset_pattern16(&__b, &xmmword_1E30474D0, 0x30uLL);
    v16 = 0;
    v17 = *(a1 + 400);
    do
    {
      if (v17 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v17 + 1);
        v17 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v17++) = &__b + v16;
      *(a1 + 400) = v17;
      ++*(a1 + 408);
      v16 += 16;
    }

    while (v16 != 48);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    v15.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateBlend(a1, 0, 0, v15);
    v18 = *(a1 + 360);
    if (v18)
    {
      v19 = *(*(a1 + 376) + 16 * v18 - 16);
      if (v19 != a6)
      {
        *a6 = *v19;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v52 = a6;
  v20 = *(a1 + 440);
  v21 = *(a1 + 320);
  v54 = *(a1 + 312);
  v58[0] = a2;
  v58[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v55, (v14 + 44));
  v22 = v14[39];
  if (v22 != *(v20 + 56))
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v22; ++i)
    {
      __b = xmmword_1E30474D0;
      re::DynamicArray<re::Vector3<float>>::add((v20 + 40), &__b);
      v22 = v14[39];
    }
  }

  if (v22)
  {
    v24 = 0;
    a3 = 0;
    while (1)
    {
      v7 = v56;
      if (v56 <= a3)
      {
        break;
      }

      v25 = *(v57 + 8 * a3);
      v8 = v14[42];
      if (v8 <= v25)
      {
        goto LABEL_76;
      }

      v7 = v25 + 1;
      if (v8 <= v25 + 1)
      {
        goto LABEL_77;
      }

      if (v22 <= v25)
      {
        goto LABEL_78;
      }

      v26 = *(v14[40] + 8 * v25);
      v27 = re::Slice<re::AnimationClock>::range(v58, *(v14[43] + 8 * v25), *(v14[43] + 8 * v7));
      v7 = *(v20 + 56);
      if (v7 <= a3)
      {
        goto LABEL_79;
      }

      v29 = v28;
      if (!v28)
      {
        goto LABEL_80;
      }

      v30 = *(v20 + 72);
      v31 = v27[16] != 1 || *v27 == 2;
      if (!v31 || (*(v30 + v24) = *a4, v26[2] == 49))
      {
        (*(*v26 + 120))(v26, v27, v28, a4, a5, v30 + v24);
      }

      v7 = *(v20 + 16);
      if (v7 <= a3)
      {
        goto LABEL_81;
      }

      v7 = *(v20 + 56);
      if (v7 <= a3)
      {
        goto LABEL_82;
      }

      re::AnimationBlendTreeRigContext<re::Quaternion<float>>::setRigDataValue<re::Quaternion<float>>(v20, *(*(v20 + 32) + 8 * a3++), (*(v20 + 72) + v24));
      v22 = v14[39];
      v24 += 16;
      if (a3 >= v22)
      {
        goto LABEL_34;
      }
    }

    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    v25 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = v25;
    v84 = 2048;
    v85 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    v25 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = v7;
    v84 = 2048;
    v85 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = v25;
    v84 = 2048;
    v85 = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    re::internal::assertLog(6, v28, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_81:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v36);
    _os_crash();
    __break(1u);
LABEL_84:
    re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
LABEL_85:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    __b = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = v7;
    v84 = 2048;
    v85 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v54)
  {
    v32 = 0;
    v33 = 0;
    v7 = 0;
    while (1)
    {
      if (!*(v21 + 3) || !re::BindPoint::isAlive(v21))
      {
        goto LABEL_67;
      }

      v34 = re::BindPoint::valueUntyped(v21);
      v36 = *(v20 + 232);
      if (v36 <= v7)
      {
        goto LABEL_83;
      }

      v37 = v34;
      v38 = *(v20 + 248);
      a3 = v38 + v32;
      v39 = *(v38 + v32 + 32);
      if (v39 > 5)
      {
        if (*(v38 + v32 + 32) <= 7u)
        {
          if (v39 == 6)
          {
            re::AnimationBlendTreeRigContext<re::Quaternion<float>>::setRigDataValue<re::Quaternion<float>>(v20, v7, v34);
          }

          else if (v39 == 7)
          {
            *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v38 + v32, v35) = *v34;
          }
        }

        else if (v39 == 8)
        {
          *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v38 + v32, v35) = *v34;
        }

        else if (v39 == 10)
        {
          a3 = *(v20 + 96);
          if (a3 <= v7)
          {
            goto LABEL_85;
          }

          re::EvaluationSkeletalPoseInputHandle::set((*(v20 + 112) + v33), v34);
        }

        else if (v39 == 13 && *(v38 + v32 + 40) >> 1 == 82389)
        {
          v44 = *(v38 + v32 + 48);
          if (v44 == "SRT" || !strcmp(v44, "SRT"))
          {
            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v37);
          }
        }

        goto LABEL_67;
      }

      if (*(v38 + v32 + 32) > 2u)
      {
        switch(v39)
        {
          case 3u:
            v47 = *v34;
            *re::RigDataValue::getRuntimeValue<float>(v38 + v32, v35) = v47;
            break;
          case 4u:
            v48 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v38 + v32, v35);
            v50 = v37[1];
            v49 = v37[2];
            *v48 = *v37;
            v48[1] = v50;
            v48[2] = v49;
            break;
          case 5u:
            v40 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v38 + v32, v35);
            v41 = v37[3];
            v43 = *v37;
            v42 = v37[1];
            v40[2] = v37[2];
            v40[3] = v41;
            *v40 = v43;
            v40[1] = v42;
            break;
        }

        goto LABEL_67;
      }

      if (v39 == 1)
      {
        break;
      }

      if (v39 == 2)
      {
        v45 = *v34;
        Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v38 + v32, v35);
LABEL_60:
        *Runtime = v45;
      }

LABEL_67:
      ++v7;
      v33 += 24;
      v32 += 288;
      v21 = (v21 + 48);
      if (v54 == v7)
      {
        goto LABEL_68;
      }
    }

    v45 = *v34;
    Runtime = re::RigDataValue::getRuntimeValue<int>(v38 + v32, v35);
    goto LABEL_60;
  }

LABEL_68:
  if ((*(v20 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v20 + 2360));
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  __b = 0u;
  v61 = 0u;
  re::EvaluationContextSlices::init(&__b, (v20 + 4896));
  (*(*(v20 + 5600) + 16))(v20 + 5600, &__b);
  if (!*(v20 + 272))
  {
    goto LABEL_84;
  }

  *v52 = *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*(v20 + 288), v51);
  if (v55 && v56)
  {
    (*(*v55 + 40))();
  }
}

void re::AnimationImpl<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Quaternion<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD7A8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v108 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v91 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v95 = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    v98 = 476;
    v99 = 2048;
    v100 = v4;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_63:
    v91 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v95 = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    v98 = 476;
    v99 = 2048;
    v100 = v4;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0u;
    v81 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v95 = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    v98 = 476;
    v99 = 2048;
    v100 = v6;
    v101 = 2048;
    v102 = v81;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v91, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v92;
    if (v92 > v6)
    {
      v6 = *(v93 + 8 * v6);
      if (v91)
      {
        (*(*v91 + 40))(v91);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              _ZF = v25[16] != 1 || *v25 == 2;
              if (!_ZF || (*v4 = *v27, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v103.n128_u64[0] = v4;
              v103.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_69:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_68:
          v91 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          v85 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v95 = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          v98 = 476;
          v99 = 2048;
          v100 = v6;
          v101 = 2048;
          v102 = v85;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_69;
        }

LABEL_67:
        v91 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v103 = 0u;
        v83 = v19;
        v84 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v95 = 136315906;
        v96 = "operator[]";
        v97 = 1024;
        v98 = 476;
        v99 = 2048;
        v100 = v84;
        v101 = 2048;
        v102 = v83;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_68;
      }

LABEL_66:
      v91 = 0;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      v82 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v95 = 136315906;
      v96 = "operator[]";
      v97 = 1024;
      v98 = 476;
      v99 = 2048;
      v100 = v6;
      v101 = 2048;
      v102 = v82;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_65:
    v91 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v95 = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    v98 = 468;
    v99 = 2048;
    v100 = v4;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v30 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v103.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v103.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v103);
  }

LABEL_37:
  v8 = v11 + v8;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v8;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if (v32)
  {
    v37 = 0;
    v38 = v33;
    if (v34)
    {
LABEL_45:
      v39 = *(a1 + 400);
      v38 = *(*(a1 + 416) + 8 * v39 - 8);
      *(a1 + 400) = v39 - 1;
      ++*(a1 + 408);
      goto LABEL_46;
    }
  }

  else
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
  }

  if (!v38)
  {
    goto LABEL_45;
  }

LABEL_46:
  v40 = *v33;
  if (*(v10 + 7))
  {
    _Q1 = *v36;
    _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(*v36)), v40, vextq_s8(vuzp1q_s32(_Q1, _Q1), *v36, 0xCuLL));
    v69 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v40, *v36, 3);
    _Q3.i32[0] = HIDWORD(*v33);
    v70 = vmlaq_laneq_f32(v69, *v36, v40, 3);
    __asm { FMLA            S0, S3, V1.S[3] }

    v70.i32[3] = _S0;
    v66 = v70.i64[1];
    v65 = v70.i64[0];
  }

  else
  {
    v41 = v11 / v8;
    v42 = vmulq_f32(v40, *v36);
    v43 = vextq_s8(v42, v42, 8uLL);
    *v42.f32 = vadd_f32(*v42.f32, *v43.f32);
    v42.f32[0] = vaddv_f32(*v42.f32);
    v43.i64[0] = 0;
    v44 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v42, v43)), 0), vnegq_f32(v40), v40);
    v45 = 1.0;
    v46 = 1.0 - (v11 / v8);
    v47 = vsubq_f32(*v36, v44);
    v48 = vmulq_f32(v47, v47);
    v89 = v44;
    v90 = *v36;
    v49 = vaddq_f32(*v36, v44);
    v50 = vmulq_f32(v49, v49);
    v51 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)))));
    v52 = v51 + v51;
    _ZF = (v51 + v51) == 0.0;
    v53 = 1.0;
    if (!_ZF)
    {
      v53 = sinf(v52) / v52;
    }

    v54 = v53;
    v55 = vrecpe_f32(LODWORD(v53));
    v56 = vmul_f32(v55, vrecps_f32(LODWORD(v54), v55));
    LODWORD(v57) = vmul_f32(v56, vrecps_f32(LODWORD(v54), v56)).u32[0];
    if ((v46 * v52) != 0.0)
    {
      v87 = v57;
      v56.f32[0] = sinf(v46 * v52);
      v57 = v87;
      v45 = v56.f32[0] / (v46 * v52);
    }

    v56.f32[0] = v46 * (v57 * v45);
    v58 = vdupq_lane_s32(v56, 0);
    v59 = v41 * v52;
    v60 = 1.0;
    if (v59 != 0.0)
    {
      v86 = v58;
      v88 = v57;
      v61 = sinf(v59);
      v58 = v86;
      v57 = v88;
      v60 = v61 / v59;
    }

    v62 = vmlaq_f32(vmulq_n_f32(v89, v41 * (v57 * v60)), v90, v58);
    v63 = vmulq_f32(v62, v62);
    v64 = vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    if (vaddv_f32(v64) == 0.0)
    {
      v65 = 0;
      v66 = 0x3F80000000000000;
    }

    else
    {
      v75 = vadd_f32(v64, vdup_lane_s32(v64, 1)).u32[0];
      v76 = vrsqrte_f32(v75);
      v77 = vmul_f32(v76, vrsqrts_f32(v75, vmul_f32(v76, v76)));
      v78 = vmulq_n_f32(v62, vmul_f32(v77, vrsqrts_f32(v75, vmul_f32(v77, v77))).f32[0]);
      v66 = v78.i64[1];
      v65 = v78.i64[0];
    }
  }

  *v38 = v65;
  v38[1] = v66;
  v103.n128_u64[0] = v38;
  v103.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v103);
  if (v37)
  {
    v79 = *(a1 + 400);
    if (v79 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v79 + 1);
      v79 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v79) = v37;
    *(a1 + 400) = v79 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

_OWORD *re::AnimationBlendTreeRigContext<re::Quaternion<float>>::setRigDataValue<re::Quaternion<float>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*(a1 + 248) + 288 * a2, a2);
    *result = *a3;
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::GenericSRT<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::GenericSRT<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::GenericSRT<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[248];
}

float re::AnimationImpl<re::GenericSRT<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::GenericSRT<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 224, 16);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACE40;
  *(v2 + 112) = 0;
  *(v2 + 176) = 0x3F8000003F800000;
  *(v2 + 184) = 1065353216;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0x3F80000000000000;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  return result;
}

BOOL re::AnimationImpl<re::GenericSRT<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[248] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::GenericSRT<float>>::debugLogData(re *a1, uint64_t a2)
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

_DWORD *re::AnimationImpl<re::GenericSRT<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (v9 = *a4, v10 = a4[2], a6[1] = a4[1], a6[2] = v10, *a6 = v9, result[2] == 49))
    {
      v11 = *(*result + 120);

      return v11();
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

void re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __n128 a7)
{
  v112 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7.n128_f64[0]);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    for (i = 0; i != 144; i += 48)
    {
      v16 = (&v90 + i);
      *v16 = 0x3F8000003F800000;
      v16[1] = 1065353216;
      v16[2] = 0;
      v16[3] = 0x3F80000000000000;
      v16[4] = 0;
      v16[5] = 0;
    }

    v17 = 0;
    v18 = *(a1 + 400);
    do
    {
      if (v18 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v18 + 1);
        v18 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v18++) = &v90 + v17;
      *(a1 + 400) = v18;
      ++*(a1 + 408);
      v17 += 48;
    }

    while (v17 != 144);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    a7.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateBlend(a1, 0, 0, a7);
    v19 = *(a1 + 360);
    if (v19)
    {
      v20 = *(*(a1 + 376) + 16 * v19 - 16);
      if (v20 != a6)
      {
        v21 = *v20;
        v22 = v20[2];
        a6[1] = v20[1];
        a6[2] = v22;
        *a6 = v21;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v77 = a6;
  v23 = *(a1 + 440);
  v24 = *(a1 + 320);
  v79 = *(a1 + 312);
  v83[0] = a2;
  v83[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v80, (v14 + 44));
  v25 = v14[39];
  if (v25 != *(v23 + 56))
  {
    if (!v25)
    {
      goto LABEL_36;
    }

    v26 = 0;
    v7 = 0x3F8000003F800000;
    do
    {
      *&v90 = 0x3F8000003F800000;
      *(&v90 + 1) = 1065353216;
      *&v91 = 0;
      *(&v91 + 1) = 0x3F80000000000000;
      v92 = 0uLL;
      re::DynamicArray<re::Matrix3x3<float>>::add((v23 + 40), &v90);
      ++v26;
      v25 = v14[39];
    }

    while (v26 < v25);
  }

  if (v25)
  {
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v7 = v81;
      if (v81 <= v28)
      {
        break;
      }

      v29 = *(v82 + 8 * v28);
      v8 = v14[42];
      if (v8 <= v29)
      {
        goto LABEL_93;
      }

      v7 = v29 + 1;
      if (v8 <= v29 + 1)
      {
        goto LABEL_94;
      }

      if (v25 <= v29)
      {
        goto LABEL_95;
      }

      v30 = *(v14[40] + 8 * v29);
      v31 = re::Slice<re::AnimationClock>::range(v83, *(v14[43] + 8 * v29), *(v14[43] + 8 * v7));
      v7 = *(v23 + 56);
      if (v7 <= v28)
      {
        goto LABEL_96;
      }

      v33 = v32;
      if (!v32)
      {
        goto LABEL_97;
      }

      v34 = (*(v23 + 72) + v27);
      v35 = v31[16] != 1 || *v31 == 2;
      if (!v35 || (v36 = *a4, v37 = a4[2], v34[1] = a4[1], v34[2] = v37, *v34 = v36, v30[2] == 49))
      {
        (*(*v30 + 120))(v30, v31, v32, a4, a5, v34);
      }

      v7 = *(v23 + 16);
      if (v7 <= v28)
      {
        goto LABEL_98;
      }

      v7 = *(v23 + 56);
      if (v7 <= v28)
      {
        goto LABEL_99;
      }

      re::AnimationBlendTreeRigContext<re::GenericSRT<float>>::setRigDataValue<re::GenericSRT<float>>(v23, *(*(v23 + 32) + 8 * v28++), (*(v23 + 72) + v27));
      v25 = v14[39];
      v27 += 48;
      if (v28 >= v25)
      {
        goto LABEL_36;
      }
    }

    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 476;
    v110 = 2048;
    *v111 = v28;
    *&v111[8] = 2048;
    *&v111[10] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_93:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 476;
    v110 = 2048;
    *v111 = v29;
    *&v111[8] = 2048;
    *&v111[10] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_94:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 476;
    v110 = 2048;
    *v111 = v7;
    *&v111[8] = 2048;
    *&v111[10] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_95:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 476;
    v110 = 2048;
    *v111 = v29;
    *&v111[8] = 2048;
    *&v111[10] = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_96:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 789;
    v110 = 2048;
    *v111 = v28;
    *&v111[8] = 2048;
    *&v111[10] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_97:
    re::internal::assertLog(6, v32, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_98:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 789;
    v110 = 2048;
    *v111 = v28;
    *&v111[8] = 2048;
    *&v111[10] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 789;
    v110 = 2048;
    *v111 = v28;
    *&v111[8] = 2048;
    *&v111[10] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_100:
    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v42);
    _os_crash();
    __break(1u);
    goto LABEL_101;
  }

LABEL_36:
  if (v79)
  {
    v38 = 0;
    v39 = 0;
    v7 = 0;
    do
    {
      if (!*(v24 + 3) || !re::BindPoint::isAlive(v24))
      {
        goto LABEL_70;
      }

      v40 = re::BindPoint::valueUntyped(v24);
      v42 = *(v23 + 232);
      if (v42 <= v7)
      {
        goto LABEL_100;
      }

      v43 = v40;
      v44 = *(v23 + 248);
      v45 = v44 + v38;
      v46 = *(v44 + v38 + 32);
      if (v46 > 5)
      {
        if (*(v44 + v38 + 32) <= 7u)
        {
          if (v46 != 6)
          {
            if (v46 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v45, v41) = *v43;
            }

            goto LABEL_70;
          }

          v54 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v45, v41);
        }

        else
        {
          if (v46 != 8)
          {
            if (v46 == 10)
            {
              v8 = *(v23 + 96);
              if (v8 <= v7)
              {
                goto LABEL_104;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v23 + 112) + v39), v43);
            }

            else if (v46 == 13 && *(v44 + v38 + 40) >> 1 == 82389)
            {
              v51 = *(v44 + v38 + 48);
              if (v51 == "SRT" || !strcmp(v51, "SRT"))
              {
                re::AnimationBlendTreeRigContext<re::GenericSRT<float>>::setRigDataValue<re::GenericSRT<float>>(v23, v7, v43);
              }
            }

            goto LABEL_70;
          }

          v54 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v45, v41);
        }

        *v54 = *v43;
      }

      else
      {
        if (*(v44 + v38 + 32) > 2u)
        {
          switch(v46)
          {
            case 3u:
              v55 = *v43;
              *re::RigDataValue::getRuntimeValue<float>(v45, v41) = v55;
              break;
            case 4u:
              v56 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v45, v41);
              v58 = *(v43 + 1);
              v57 = *(v43 + 2);
              *v56 = *v43;
              v56[1] = v58;
              v56[2] = v57;
              break;
            case 5u:
              v47 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v45, v41);
              v48 = *(v43 + 3);
              v50 = *v43;
              v49 = *(v43 + 1);
              v47[2] = *(v43 + 2);
              v47[3] = v48;
              *v47 = v50;
              v47[1] = v49;
              break;
          }

          goto LABEL_70;
        }

        if (v46 == 1)
        {
          v52 = *v43;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v45, v41);
          goto LABEL_62;
        }

        if (v46 == 2)
        {
          v52 = *v43;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v45, v41);
LABEL_62:
          *Runtime = v52;
        }
      }

LABEL_70:
      ++v7;
      v39 += 24;
      v38 += 288;
      v24 = (v24 + 48);
    }

    while (v79 != v7);
  }

  if ((*(v23 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v23 + 2360));
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  re::EvaluationContextSlices::init(&v90, (v23 + 4896));
  (*(*(v23 + 5600) + 16))(v23 + 5600, &v90);
  if (!*(v23 + 272))
  {
LABEL_101:
    re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_102;
  }

  v60 = *(v23 + 288);
  v89[0] = "scale";
  v89[1] = 5;
  re::RigDataValue::attributeValue(v60, v89, &v90);
  v62 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(&v90 + 1), v61);
  if (!*(v23 + 272))
  {
LABEL_102:
    re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_103;
  }

  v65 = *v62;
  v64 = v62[1];
  v66 = *(v23 + 288);
  v88[0] = "rotation";
  v88[1] = 8;
  re::RigDataValue::attributeValue(v66, v88, &v108);
  v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v109[4], v67);
  if (!*(v23 + 272))
  {
LABEL_103:
    re::internal::assertLog(6, v69, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
LABEL_104:
    v85[0] = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v108 = 136315906;
    *v109 = "operator[]";
    *&v109[8] = 1024;
    *&v109[10] = 789;
    v110 = 2048;
    *v111 = v7;
    *&v111[8] = 2048;
    *&v111[10] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v71 = *v68;
  v70 = v68[1];
  v72 = *(v23 + 288);
  v84[0] = "translation";
  v84[1] = 11;
  re::RigDataValue::attributeValue(v72, v84, v85);
  v74 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v85[1], v73);
  v76 = *v74;
  v75 = v74[1];
  *v77 = v65;
  *(v77 + 1) = v64;
  *(v77 + 2) = v71;
  *(v77 + 3) = v70;
  *(v77 + 4) = v76;
  *(v77 + 5) = v75;
  if (v85[0] & 1) == 0 && v86 && (v87)
  {
    (*(*v86 + 40))();
  }

  if (v108 & 1) == 0 && *&v111[4] && (v111[12])
  {
    (*(**&v111[4] + 40))();
  }

  if (v90 & 1) == 0 && *(&v91 + 1) && (v92)
  {
    (*(**(&v91 + 1) + 40))();
  }

  if (v80 && v81)
  {
    (*(*v80 + 40))();
  }
}

void re::AnimationImpl<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::GenericSRT<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD888;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 476;
    v76 = 2048;
    v77 = v4;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_55:
    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 476;
    v76 = 2048;
    v77 = v4;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v63 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 476;
    v76 = 2048;
    v77 = v6;
    v78 = 2048;
    v79 = v63;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v68, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v69;
    if (v69 > v6)
    {
      v6 = *(v70 + 8 * v6);
      if (v68)
      {
        (*(*v68 + 40))(v68);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              _ZF = v25[16] != 1 || *v25 == 2;
              if (!_ZF || (v30 = *v27, v31 = v27[2], *(v4 + 16) = v27[1], *(v4 + 32) = v31, *v4 = v30, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v80.n128_u64[0] = v4;
              v80.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v68 = 0;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v80 = 0u;
          v67 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v72 = 136315906;
          v73 = "operator[]";
          v74 = 1024;
          v75 = 476;
          v76 = 2048;
          v77 = v6;
          v78 = 2048;
          v79 = v67;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v68 = 0;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v80 = 0u;
        v65 = v19;
        v66 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v72 = 136315906;
        v73 = "operator[]";
        v74 = 1024;
        v75 = 476;
        v76 = 2048;
        v77 = v66;
        v78 = 2048;
        v79 = v65;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v68 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v64 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      v75 = 476;
      v76 = 2048;
      v77 = v6;
      v78 = 2048;
      v79 = v64;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_57:
    v68 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    v75 = 468;
    v76 = 2048;
    v77 = v4;
    v78 = 2048;
    v79 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v32 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v32 + 3) && re::BindPoint::isAlive(v32))
  {
    v80.n128_u64[0] = re::BindPoint::valueUntyped(v32);
    v80.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v80);
  }

LABEL_37:
  v8 = v11 + v8;
  v33 = *(a1 + 360);
  if (v33 != a3 + 2)
  {
    return v8;
  }

  v34 = *(a1 + 376) + 16 * v33;
  v35 = *(v34 - 16);
  v36 = *(v34 - 8);
  v37 = *(a1 + 368);
  v38 = *(v34 - 32);
  LODWORD(v34) = *(v34 - 24);
  *(a1 + 360) = v33 - 2;
  *(a1 + 368) = v37 + 2;
  if ((v34 & 1) == 0)
  {
    if (v36)
    {
      v39 = 0;
    }

    else
    {
      v39 = v35;
    }

    v40 = v38;
LABEL_44:
    if (v40)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v39 = 0;
  v40 = v35;
  if ((v36 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v41 = *(a1 + 400);
  v40 = *(*(a1 + 416) + 8 * v41 - 8);
  *(a1 + 400) = v41 - 1;
  ++*(a1 + 408);
LABEL_46:
  if (*(v10 + 7))
  {
    _Q1 = v38[1];
    _Q3 = v35[1];
    v46 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
    v47 = vnegq_f32(_Q1);
    v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v47), _Q3, v46);
    _S7 = _Q3.i32[3];
    v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
    __asm { FMLA            S3, S7, V1.S[3] }

    v50.i32[3] = _Q3.i32[0];
    v54 = v35[2];
    v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), v47), v54, v46);
    v56 = vaddq_f32(v55, v55);
    v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
    v58 = vaddq_f32(v54, vmulq_laneq_f32(v57, _Q1, 3));
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v47), v57, v46);
    v60 = vaddq_f32(v38[2], vmulq_f32(*v38, vaddq_f32(v58, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL))));
    *v40 = vmulq_f32(*v38, *v35);
    *(v40 + 16) = v50;
    *(v40 + 32) = v60;
  }

  else
  {
    re::lerp<float>(v38, v35, &v80, v11 / v8);
    v42 = v80;
    v43 = v82;
    *(v40 + 16) = v81;
    *(v40 + 32) = v43;
    *v40 = v42;
  }

  v80.n128_u64[0] = v40;
  v80.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v80);
  if (v39)
  {
    v61 = *(a1 + 400);
    if (v61 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v61 + 1);
      v61 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v61) = v39;
    *(a1 + 400) = v61 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

_OWORD *re::AnimationBlendTreeRigContext<re::GenericSRT<float>>::setRigDataValue<re::GenericSRT<float>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 232);
  if (v5 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v5, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 248) + 288 * a2;

    return re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v6, a3);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::SkeletalPose>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::SkeletalPose>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::SkeletalPose>::animationValueType()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 95);
}

float re::AnimationImpl<re::SkeletalPose>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::SkeletalPose>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 296, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACE98;
  *(v2 + 112) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = &str_67;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  return result;
}

uint64_t re::AnimationImpl<re::SkeletalPose>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v5 = this;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    this = v5;
    if (v4)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      this = v5;
    }
  }

  if (*(v2 + 95) != *this)
  {
    return 0;
  }

  result = re::BindPoint::valueUntyped(this);
  if (result)
  {
    return *(result + 80) != 0;
  }

  return result;
}

void re::Animation<re::SkeletalPose>::debugLogData(re *a1, uint64_t a2)
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

uint64_t re::AnimationImpl<re::SkeletalPose>::evaluate(_DWORD *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    v12 = a2[16] != 1 || *a2 == 2;
    if (!v12 || (result = re::AnimationValueTraits<re::SkeletalPose>::copy(a4, a6), a1[2] == 49))
    {
      v14 = *(*a1 + 120);

      return v14(a1, a2, a3, a4, a5, a6);
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateCore(uint64_t a1, void *a2, unint64_t a3, void *a4, uint64_t a5, re::SkeletalPose *a6, double a7)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v11 = *(a1 + 80);
  if (v11[36])
  {
    for (i = 0; i != 264; i += 88)
    {
      v13 = &v70 + i;
      *v13 = 0;
      *(v13 + 1) = &str_67;
      *(v13 + 1) = 0uLL;
      *(v13 + 2) = 0uLL;
      *(v13 + 3) = 0uLL;
      *(v13 + 16) = 0;
      *(v13 + 9) = 0;
      *(v13 + 10) = 0;
    }

    for (j = 0; j != 264; j += 88)
    {
      v15 = *(a1 + 400);
      if (v15 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v15 + 1);
        v15 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v15) = &v70 + j;
      *(a1 + 400) = v15 + 1;
      ++*(a1 + 408);
      re::AnimationValueTraits<re::SkeletalPose>::init((&v70 + j), a6);
    }

    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    v16.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateBlend(a1, 0, 0, v16);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        re::AnimationValueTraits<re::SkeletalPose>::copy(v18, a6);
      }
    }

    for (k = 0; k != 264; k += 88)
    {
      re::SkeletalPose::deinit((&v70 + k));
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    for (m = 176; m != -88; m -= 88)
    {
      re::SkeletalPose::~SkeletalPose((&v70 + m));
    }

    return;
  }

  v21 = *(a1 + 440);
  v22 = *(a1 + 320);
  v54 = *(a1 + 312);
  v60[0] = a2;
  v60[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v57, (v11 + 44));
  v23 = v11[39];
  if (v23 != *(v21 + 56))
  {
    if (!v23)
    {
      goto LABEL_40;
    }

    v24 = 0;
    a3 = 88;
    a2 = &str_67;
    do
    {
      v74 = 0uLL;
      *&v70.var0 = 0;
      v70.var1 = &str_67;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      *&v75 = 0;
      re::DynamicArray<re::SkeletalPose>::add((v21 + 40), &v70);
      re::SkeletalPose::~SkeletalPose(&v70);
      re::AnimationValueTraits<re::SkeletalPose>::init((*(v21 + 72) + 88 * *(v21 + 56) - 88), a6);
      ++v24;
      v23 = v11[39];
    }

    while (v24 < v23);
  }

  if (v23)
  {
    ii = 0;
    for (n = 0; n < v23; ++n)
    {
      v27 = v58;
      if (v58 <= n)
      {
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 476;
        v66 = 2048;
        v67 = n;
        v68 = 2048;
        v69 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_81:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 476;
        v66 = 2048;
        v67 = a3;
        v68 = 2048;
        v69 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 476;
        v66 = 2048;
        v67 = v27;
        v68 = 2048;
        v69 = a2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_83:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 476;
        v66 = 2048;
        v67 = a3;
        v68 = 2048;
        v69 = v23;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_84:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 789;
        v66 = 2048;
        v67 = n;
        v68 = 2048;
        v69 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_85:
        re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
LABEL_86:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 789;
        v66 = 2048;
        v67 = n;
        v68 = 2048;
        v69 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        v65 = 789;
        v66 = 2048;
        v67 = n;
        v68 = 2048;
        v69 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_88:
        re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, ii, v36);
        _os_crash();
        __break(1u);
      }

      a3 = *(v59 + 8 * n);
      a2 = v11[42];
      if (a2 <= a3)
      {
        goto LABEL_81;
      }

      v27 = a3 + 1;
      if (a2 <= a3 + 1)
      {
        goto LABEL_82;
      }

      if (v23 <= a3)
      {
        goto LABEL_83;
      }

      v28 = *(v11[40] + 8 * a3);
      v29 = re::Slice<re::AnimationClock>::range(v60, *(v11[43] + 8 * a3), *(v11[43] + 8 * v27));
      v27 = *(v21 + 56);
      if (v27 <= n)
      {
        goto LABEL_84;
      }

      a3 = v30;
      if (!v30)
      {
        goto LABEL_85;
      }

      a2 = v29;
      v31 = *(v21 + 72);
      v32 = v29[16] != 1 || *v29 == 2;
      if (!v32 || (re::AnimationValueTraits<re::SkeletalPose>::copy(a4, (v31 + ii)), v28[2] == 49))
      {
        (*(*v28 + 120))(v28, a2, a3, a4, a5, v31 + ii);
      }

      v27 = *(v21 + 16);
      if (v27 <= n)
      {
        goto LABEL_86;
      }

      v27 = *(v21 + 56);
      if (v27 <= n)
      {
        goto LABEL_87;
      }

      re::AnimationBlendTreeRigContext<re::SkeletalPose>::setRigDataValue<re::SkeletalPose>(v21, *(*(v21 + 32) + 8 * n), (*(v21 + 72) + ii));
      v23 = v11[39];
      ii += 88;
    }
  }

LABEL_40:
  if (v54)
  {
    v33 = 0;
    for (ii = 0; ii != v54; ++ii)
    {
      if (!*(v22 + 3) || !re::BindPoint::isAlive(v22))
      {
        goto LABEL_73;
      }

      v34 = re::BindPoint::valueUntyped(v22);
      v36 = *(v21 + 232);
      if (v36 <= ii)
      {
        goto LABEL_88;
      }

      v37 = v34;
      v38 = *(v21 + 248);
      v39 = v38 + v33;
      v40 = *(v38 + v33 + 32);
      if (v40 > 5)
      {
        if (*(v38 + v33 + 32) <= 7u)
        {
          if (v40 != 6)
          {
            if (v40 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v38 + v33, v35) = *v34;
            }

            goto LABEL_73;
          }

          v48 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v38 + v33, v35);
        }

        else
        {
          if (v40 != 8)
          {
            if (v40 == 10)
            {
              re::AnimationBlendTreeRigContext<re::SkeletalPose>::setRigDataValue<re::SkeletalPose>(v21, ii, v34);
            }

            else if (v40 == 13 && *(v38 + v33 + 40) >> 1 == 82389)
            {
              v45 = *(v38 + v33 + 48);
              if (v45 == "SRT" || !strcmp(v45, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v39, v37);
              }
            }

            goto LABEL_73;
          }

          v48 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v38 + v33, v35);
        }

        *v48 = *v37;
      }

      else
      {
        if (*(v38 + v33 + 32) > 2u)
        {
          switch(v40)
          {
            case 3u:
              v49 = *v34;
              *re::RigDataValue::getRuntimeValue<float>(v38 + v33, v35) = v49;
              break;
            case 4u:
              v50 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v38 + v33, v35);
              v52 = *(v37 + 1);
              v51 = *(v37 + 2);
              *v50 = *v37;
              v50[1] = v52;
              v50[2] = v51;
              break;
            case 5u:
              v41 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v38 + v33, v35);
              v42 = *(v37 + 3);
              v44 = *v37;
              v43 = *(v37 + 1);
              v41[2] = *(v37 + 2);
              v41[3] = v42;
              *v41 = v44;
              v41[1] = v43;
              break;
          }

          goto LABEL_73;
        }

        if (v40 == 1)
        {
          v46 = *v34;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v38 + v33, v35);
          goto LABEL_66;
        }

        if (v40 == 2)
        {
          v46 = *v34;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v38 + v33, v35);
LABEL_66:
          *Runtime = v46;
        }
      }

LABEL_73:
      v33 += 288;
      v22 = (v22 + 48);
    }
  }

  if ((*(v21 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v21 + 2360));
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0;
  v71 = 0u;
  re::EvaluationContextSlices::init(&v70, (v21 + 4896));
  (*(*(v21 + 5600) + 16))(v21 + 5600, &v70);
  v53 = re::EvaluationSkeletalPoseOutputHandle::get((v21 + 6384), a6);
  if (v57 && v58)
  {
    (*(*v57 + 40))(v53);
  }
}

void re::AnimationImpl<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::SkeletalPose>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD968;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<re::SkeletalPose>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::DynamicArray<re::SkeletalPose>::deinit(uint64_t a1)
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
        v5 = 88 * v4;
        do
        {
          re::SkeletalPose::~SkeletalPose(v3);
          v3 = (v3 + 88);
          v5 -= 88;
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

float re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = a2;
  v59 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 80);
  v8 = *(v7 + 288);
  if (v8 <= a2)
  {
    v42 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    v49 = 476;
    v50 = 2048;
    v51 = v6;
    v52 = 2048;
    v53 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v10 = a4.n128_f32[0];
  v12 = *(v7 + 296) + 8 * a2;
  v13 = *v12;
  if (a2 && *(a1 + 96))
  {
    v6 = a2 - 1;
    v8 = *(a1 + 264);
    if (v8 > a2 - 1)
    {
      v14 = (*(a1 + 272) + 4 * v6);
LABEL_6:
      v13 = *v14;
      goto LABEL_11;
    }

LABEL_55:
    v42 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    v49 = 476;
    v50 = 2048;
    v51 = v6;
    v52 = 2048;
    v53 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    v49 = 476;
    v50 = 2048;
    v51 = v8;
    v52 = 2048;
    v53 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v15 = (*(a1 + 296) + 48 * a2);
    if (*(v15 + 3))
    {
      if (re::BindPoint::isAlive(v15))
      {
        v14 = re::BindPoint::valueUntyped(v15);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v13 <= 0.001)
  {
    return v10;
  }

  if (*(v12 + 6))
  {
    v16 = 0;
    v17 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateBlend(a1, v16 + *(v12 + 4), v17, a4);
      ++v16;
    }

    while (v16 < *(v12 + 6));
    goto LABEL_37;
  }

  if ((*(v12 + 7) & 2) == 0)
  {
    v18 = *(a1 + 400);
    v6 = *(*(a1 + 416) + 8 * v18 - 8);
    *(a1 + 400) = v18 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v42, *(a1 + 80) + 352);
    v8 = *(v12 + 4);
    v4 = v43;
    if (v43 > v8)
    {
      v8 = *(v44 + 8 * v8);
      if (v42)
      {
        (*(*v42 + 40))(v42);
      }

      v19 = *(a1 + 80);
      v4 = v19[42];
      if (v4 > v8)
      {
        v5 = v8 + 1;
        if (v4 > v8 + 1)
        {
          v4 = v19[39];
          if (v4 > v8)
          {
            v20 = v19[43];
            v21 = *(v20 + 8 * v8);
            v22 = *(v19[40] + 8 * v8);
            v23 = re::Slice<re::AnimationClock>::range((a1 + 328), v21, *(v20 + 8 * v5));
            if (v24)
            {
              v25 = v23;
              v26 = v24;
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              v29 = v23[16] != 1 || *v23 == 2;
              if (!v29 || (re::AnimationValueTraits<re::SkeletalPose>::copy(*(a1 + 424), v6), v22[2] == 49))
              {
                (*(*v22 + 120))(v22, v25, v26, v27, v28, v6);
              }

              v54.n128_u64[0] = v6;
              v54.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v42 = 0;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v46 = 136315906;
          v47 = "operator[]";
          v48 = 1024;
          v49 = 476;
          v50 = 2048;
          v51 = v8;
          v52 = 2048;
          v53 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v42 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        v49 = 476;
        v50 = 2048;
        v51 = v5;
        v52 = 2048;
        v53 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v42 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      v49 = 476;
      v50 = 2048;
      v51 = v8;
      v52 = 2048;
      v53 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v6 = *(v12 + 4);
  v8 = *(a1 + 312);
  if (v8 <= v6)
  {
LABEL_57:
    v42 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    v49 = 468;
    v50 = 2048;
    v51 = v6;
    v52 = 2048;
    v53 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v30 = (*(a1 + 320) + 48 * *(v12 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v54.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v54.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v54);
  }

LABEL_37:
  v10 = v13 + v10;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v10;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if ((v32 & 1) == 0)
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
LABEL_44:
    if (v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v37 = 0;
  v38 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v39 = *(a1 + 400);
  v38 = *(*(a1 + 416) + 8 * v39 - 8);
  *(a1 + 400) = v39 - 1;
  ++*(a1 + 408);
LABEL_46:
  if (*(v12 + 7))
  {
    re::AnimationValueTraits<re::SkeletalPose>::combine(v33, v36, v38);
  }

  else
  {
    re::AnimationValueTraits<re::SkeletalPose>::interpolate(v36, v33, v38, v13 / v10);
  }

  v54.n128_u64[0] = v38;
  v54.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v54);
  if (v37)
  {
    v40 = *(a1 + 400);
    if (v40 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v40 + 1);
      v40 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v40) = v37;
    *(a1 + 400) = v40 + 1;
    ++*(a1 + 408);
  }

  return v10;
}

id re::DynamicArray<re::SkeletalPose>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SkeletalPose>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 88 * v4);
  re::StringID::StringID(v5, a2);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v5 + 2, &a2[1]);
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 40, &a2[2].var1);
  v7 = *&a2[5].var0;
  *(v5 + 10) = v7;
  if (v7)
  {
    result = (v7 + 8);
  }

  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::AnimationBlendTreeRigContext<re::SkeletalPose>::setRigDataValue<re::SkeletalPose>(uint64_t a1, unint64_t a2, re::SkeletalPose *a3)
{
  if (*(a1 + 96) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 112) + 24 * a2);

  *&result = re::EvaluationSkeletalPoseInputHandle::set(v3, a3).n128_u64[0];
  return result;
}

void *re::DynamicArray<re::SkeletalPose>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::SkeletalPose>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SkeletalPose>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SkeletalPose>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPose>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 88 * v9;
        do
        {
          re::StringID::StringID(&v7[v10 / 8], (v8 + v10));
          re::FixedArray<re::GenericSRT<float>>::FixedArray(&v7[v10 / 8 + 2], v8 + v10 + 16);
          re::DynamicArray<BOOL>::DynamicArray(&v7[v10 / 8 + 5], (v8 + v10 + 40));
          v12 = *(v8 + v10 + 80);
          v7[v10 / 8 + 10] = v12;
          if (v12)
          {
            v13 = (v12 + 8);
          }

          re::SkeletalPose::~SkeletalPose((v8 + v10));
          v10 += 88;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::RigHierarchyJointTransform::init(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 116, &v35);
  a1[1] = a2[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 106, &v35);
  a1[2] = a2[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 116, &v35);
  a1[3] = a2[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 116, &v35);
  a1[4] = a2[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 106, &v35);
  a1[5] = a2[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 116, &v35);
  a1[6] = a2[118] + 0x7FFFFFFFFFFFFFFELL;
  v10 = a1[5];
  LODWORD(v35) = 21;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 233), &v35);
  v11 = a2[235] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a2 + 208), v11) + 8) = v10;
  a1[7] = v11;
  v12 = a1[4];
  v13 = a1[5];
  LODWORD(v35) = 39;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 223), &v35);
  v14 = a2[225] - 1;
  v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a2 + 208), v14);
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  a1[8] = v14;
  LODWORD(v35) = 19;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 223), &v35);
  v16 = a2[225] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a2 + 208), v16) + 8) = v14;
  a1[9] = v16;
  v17 = a1[8];
  v18 = a1[6];
  LODWORD(v35) = 40;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 228), &v35);
  v19 = a2[230] - 1;
  v20 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a2 + 208), v19);
  *(v20 + 8) = v17;
  *(v20 + 16) = v18;
  a1[10] = v19;
  LODWORD(v35) = 20;
  v36 = 0uLL;
  *(&v35 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 228), &v35);
  v21 = a2[230] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a2 + 208), v21) + 8) = v19;
  a1[11] = v21;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 116, &v35);
  a1[12] = a2[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 106, &v35);
  a1[13] = a2[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 116, &v35);
  a1[14] = a2[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 106, &v35);
  a1[15] = a2[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 96, &v35);
  a1[16] = a2[98] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 96, &v35);
  a1[17] = a2[98] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 101, &v35);
  a1[18] = a2[103] + 0x7FFFFFFFFFFFFFFELL;
  *&v35 = -1;
  re::DynamicArray<unsigned long>::add(a2 + 101, &v35);
  a1[19] = a2[103] + 0x7FFFFFFFFFFFFFFELL;
  v22 = a1[12] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[118] <= v22)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v23 = a2[120];
  *(v23 + 8 * v22) = *a3;
  v24 = a1[13] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[108] <= v24)
  {
LABEL_11:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v25 = a2[110];
  *(v25 + 8 * v24) = a3[1];
  v26 = a1[14] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[118] <= v26)
  {
LABEL_12:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  *(v23 + 8 * v26) = a3[2];
  v27 = a1[15] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[108] <= v27)
  {
LABEL_13:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  *(v25 + 8 * v27) = a3[1];
  v28 = a1[16] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[98] <= v28)
  {
LABEL_14:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v29 = a2[100];
  *(v29 + 8 * v28) = a4;
  v30 = a1[17] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[98] <= v30)
  {
LABEL_15:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  *(v29 + 8 * v30) = a4;
  v31 = a1[18] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[103] <= v31)
  {
LABEL_16:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_17:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v32 = a2[105];
  *(v32 + 8 * v31) = a5;
  v33 = a1[19] - 0x7FFFFFFFFFFFFFFFLL;
  if (a2[103] <= v33)
  {
    goto LABEL_17;
  }

  *(v32 + 8 * v33) = a5;
  re::RigHierarchyJointTransform::setLocalSpaceJointScale(a1, *a3);
  re::RigHierarchyJointTransform::setLocalSpaceJointRotation(a1, a3[1]);
  return re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(a1, a3[2]);
}

uint64_t re::RigHierarchyJointTransform::setLocalSpaceJointScale(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1] - 0x7FFFFFFFFFFFFFFFLL;
  if (*(*a1 + 944) <= v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v4 = a1[4];
  v5 = a1[12];
  v6 = a1[1];
  LODWORD(v10) = 25;
  v11 = 0uLL;
  *(&v10 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v10);
  v7 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v7);
  *(result + 8) = v5;
  *(result + 16) = v6;
  v9 = v4 - 0x7FFFFFFFFFFFFFFFLL;
  if (v2[118] <= v9)
  {
    goto LABEL_5;
  }

  *(v2[120] + 8 * v9) = v7;
  return result;
}

uint64_t re::RigHierarchyJointTransform::setLocalSpaceJointRotation(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[2] - 0x7FFFFFFFFFFFFFFFLL;
  if (*(*a1 + 864) <= v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v2[110] + 8 * v3) = a2;
  v4 = a1[5];
  v5 = a1[13];
  v6 = a1[2];
  LODWORD(v10) = 24;
  v11 = 0uLL;
  *(&v10 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 233), &v10);
  v7 = v2[235] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((v2 + 208), v7);
  *(result + 8) = v5;
  *(result + 16) = v6;
  v9 = v4 - 0x7FFFFFFFFFFFFFFFLL;
  if (v2[108] <= v9)
  {
    goto LABEL_5;
  }

  *(v2[110] + 8 * v9) = v7;
  return result;
}

uint64_t re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[3] - 0x7FFFFFFFFFFFFFFFLL;
  if (*(*a1 + 944) <= v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v4 = a1[6];
  v5 = a1[18];
  v6 = a1[3];
  LODWORD(v10) = 43;
  v11 = 0uLL;
  *(&v10 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v10);
  v7 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v7);
  *(result + 8) = v5;
  *(result + 16) = v6;
  v9 = v4 - 0x7FFFFFFFFFFFFFFFLL;
  if (v2[118] <= v9)
  {
    goto LABEL_5;
  }

  *(v2[120] + 8 * v9) = v7;
  return result;
}

void re::RigHierarchyJointTransform::setParentTransform(unint64_t *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (a2)
  {
    v6 = a1[12] - 0x7FFFFFFFFFFFFFFFLL;
    v7 = *(v5 + 944);
    if (v7 <= v6)
    {
      v21 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v6;
      *&v25[28] = 2048;
      *&v25[30] = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v8 = *(v5 + 960);
      *(v8 + 8 * v6) = a2[4];
      v6 = a1[13] - 0x7FFFFFFFFFFFFFFFLL;
      v7 = *(v5 + 864);
      if (v7 > v6)
      {
        v9 = *(v5 + 880);
        *(v9 + 8 * v6) = a2[5];
        v6 = a1[14] - 0x7FFFFFFFFFFFFFFFLL;
        v7 = *(v5 + 944);
        if (v7 > v6)
        {
          *(v8 + 8 * v6) = a2[6];
          v6 = a1[15] - 0x7FFFFFFFFFFFFFFFLL;
          v7 = *(v5 + 864);
          if (v7 > v6)
          {
            *(v9 + 8 * v6) = a2[7];
            v6 = a1[16] - 0x7FFFFFFFFFFFFFFFLL;
            v7 = *(v5 + 784);
            if (v7 > v6)
            {
              v10 = *(v5 + 800);
              *(v10 + 8 * v6) = a2[8];
              v6 = a1[17] - 0x7FFFFFFFFFFFFFFFLL;
              v7 = *(v5 + 784);
              if (v7 > v6)
              {
                *(v10 + 8 * v6) = a2[9];
                v6 = a1[18] - 0x7FFFFFFFFFFFFFFFLL;
                v7 = *(v5 + 824);
                if (v7 > v6)
                {
                  v11 = *(v5 + 840);
                  *(v11 + 8 * v6) = a2[10];
                  v6 = a1[19] - 0x7FFFFFFFFFFFFFFFLL;
                  v5 = *(v5 + 824);
                  if (v5 > v6)
                  {
                    *(v11 + 8 * v6) = a2[11];
                    return;
                  }

                  goto LABEL_28;
                }

LABEL_27:
                v21 = 0;
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v26 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v25 = 136315906;
                *&v25[4] = "operator[]";
                *&v25[12] = 1024;
                *&v25[14] = 789;
                *&v25[18] = 2048;
                *&v25[20] = v6;
                *&v25[28] = 2048;
                *&v25[30] = v7;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_28:
                v21 = 0;
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v26 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v25 = 136315906;
                *&v25[4] = "operator[]";
                *&v25[12] = 1024;
                *&v25[14] = 789;
                *&v25[18] = 2048;
                *&v25[20] = v6;
                *&v25[28] = 2048;
                *&v25[30] = v5;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_29;
              }

LABEL_26:
              v21 = 0;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v26 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v25 = 136315906;
              *&v25[4] = "operator[]";
              *&v25[12] = 1024;
              *&v25[14] = 789;
              *&v25[18] = 2048;
              *&v25[20] = v6;
              *&v25[28] = 2048;
              *&v25[30] = v7;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            v21 = 0;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v26 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v25 = 136315906;
            *&v25[4] = "operator[]";
            *&v25[12] = 1024;
            *&v25[14] = 789;
            *&v25[18] = 2048;
            *&v25[20] = v6;
            *&v25[28] = 2048;
            *&v25[30] = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          v21 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v25 = 136315906;
          *&v25[4] = "operator[]";
          *&v25[12] = 1024;
          *&v25[14] = 789;
          *&v25[18] = 2048;
          *&v25[20] = v6;
          *&v25[28] = 2048;
          *&v25[30] = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        v21 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v25 = 136315906;
        *&v25[4] = "operator[]";
        *&v25[12] = 1024;
        *&v25[14] = 789;
        *&v25[18] = 2048;
        *&v25[20] = v6;
        *&v25[28] = 2048;
        *&v25[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_24;
      }
    }

    v21 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v6;
    *&v25[28] = 2048;
    *&v25[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  v26 = xmmword_1E3047670;
  v27 = xmmword_1E3047680;
  v28 = xmmword_1E30476A0;
  *v25 = 3;
  memset(&v25[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((v5 + 1784), v25);
  *v25 = *(v5 + 1800) - 1;
  re::DynamicArray<unsigned long>::add((v5 + 128), v25);
  re::DynamicArray<re::Matrix3x3<float>>::add((v5 + 448), &v26);
  v5 = *(*(v5 + 160) + 8 * *(v5 + 144) - 8);
  v12 = *a1;
  v26 = xmmword_1E3047670;
  v27 = xmmword_1E3047680;
  v28 = xmmword_1E30476A0;
  v29 = xmmword_1E30474D0;
  *v25 = 4;
  memset(&v25[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((v12 + 228), v25);
  *v25 = v12[230] - 1;
  v7 = v25;
  re::DynamicArray<unsigned long>::add(v12 + 21, v25);
  re::DynamicArray<re::Matrix4x4<float>>::add((v12 + 61), &v26);
  v13 = *(v12[25] + 8 * v12[23] - 8);
  v14 = *a1;
  *&v26 = 0x3F8000003F800000;
  *(&v26 + 1) = 1065353216;
  *&v27 = 0;
  *(&v27 + 1) = 0x3F80000000000000;
  v28 = 0uLL;
  re::EvaluationTree::createInputRegister(v14, &v26, &v21);
  v15 = *a1;
  v2 = a1[12] - 0x7FFFFFFFFFFFFFFFLL;
  v3 = *(*a1 + 944);
  if (v3 <= v2)
  {
LABEL_29:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v2;
    *&v25[28] = 2048;
    *&v25[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v16 = v15[120];
  *(v16 + 8 * v2) = v21;
  v7 = a1[13] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[108];
  if (v2 <= v7)
  {
LABEL_30:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v7;
    *&v25[28] = 2048;
    *&v25[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  v17 = v22;
  v18 = v15[110];
  *(v18 + 8 * v7) = v22;
  v7 = a1[14] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[118];
  if (v2 <= v7)
  {
LABEL_31:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v7;
    *&v25[28] = 2048;
    *&v25[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  *(v16 + 8 * v7) = v23;
  v7 = a1[15] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[108];
  if (v2 <= v7)
  {
LABEL_32:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v7;
    *&v25[28] = 2048;
    *&v25[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  *(v18 + 8 * v7) = v17;
  v7 = a1[16] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[98];
  if (v2 <= v7)
  {
LABEL_33:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v7;
    *&v25[28] = 2048;
    *&v25[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  v19 = v15[100];
  *(v19 + 8 * v7) = v5;
  v7 = a1[17] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[98];
  if (v2 <= v7)
  {
LABEL_34:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v7;
    *&v25[28] = 2048;
    *&v25[30] = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  *(v19 + 8 * v7) = v5;
  v5 = a1[18] - 0x7FFFFFFFFFFFFFFFLL;
  v7 = v15[103];
  if (v7 <= v5)
  {
LABEL_35:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v5;
    *&v25[28] = 2048;
    *&v25[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v5;
    *&v25[28] = 2048;
    *&v25[30] = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v20 = v15[105];
  *(v20 + 8 * v5) = v13;
  v5 = a1[19] - 0x7FFFFFFFFFFFFFFFLL;
  v7 = v15[103];
  if (v7 <= v5)
  {
    goto LABEL_36;
  }

  *(v20 + 8 * v5) = v13;
}

uint64_t re::RigHierarchyJointTransform::setModelSpaceJointScale(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[4] - 0x7FFFFFFFFFFFFFFFLL;
  if (*(*a1 + 944) <= v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v4 = a1[1];
  v5 = a1[4];
  v6 = a1[12];
  LODWORD(v10) = 17;
  v11 = 0uLL;
  *(&v10 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v10);
  v7 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v7);
  *(result + 8) = v5;
  *(result + 16) = v6;
  v9 = v4 - 0x7FFFFFFFFFFFFFFFLL;
  if (v2[118] <= v9)
  {
    goto LABEL_5;
  }

  *(v2[120] + 8 * v9) = v7;
  return result;
}

uint64_t re::RigHierarchyJointTransform::setModelSpaceJointRotation(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[5] - 0x7FFFFFFFFFFFFFFFLL;
  if (*(*a1 + 864) <= v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v2[110] + 8 * v3) = a2;
  v4 = a1[2];
  v5 = a1[15];
  v6 = a1[5];
  LODWORD(v10) = 24;
  v11 = 0uLL;
  *(&v10 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 233), &v10);
  v7 = v2[235] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((v2 + 208), v7);
  *(result + 8) = v5;
  *(result + 16) = v6;
  v9 = v4 - 0x7FFFFFFFFFFFFFFFLL;
  if (v2[108] <= v9)
  {
    goto LABEL_5;
  }

  *(v2[110] + 8 * v9) = v7;
  return result;
}

uint64_t re::RigHierarchyJointTransform::setModelSpaceJointTranslation(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[6] - 0x7FFFFFFFFFFFFFFFLL;
  if (*(*a1 + 944) <= v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v4 = a1[3];
  v5 = a1[19];
  v6 = a1[6];
  LODWORD(v10) = 43;
  v11 = 0uLL;
  *(&v10 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v10);
  v7 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v7);
  *(result + 8) = v5;
  *(result + 16) = v6;
  v9 = v4 - 0x7FFFFFFFFFFFFFFFLL;
  if (v2[118] <= v9)
  {
    goto LABEL_5;
  }

  *(v2[120] + 8 * v9) = v7;
  return result;
}

_anonymous_namespace_ *re::RigHierarchy::init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v144 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (2 * a6 <= 0x80)
  {
    v11 = 128;
  }

  else
  {
    v11 = 2 * a6;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 24, a3, v11);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 72, a3, 8);
  *(a1 + 120) = a3;
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity((a1 + 120), 8uLL);
  ++*(a1 + 144);
  *(a1 + 160) = a3;
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity((a1 + 160), a6);
  ++*(a1 + 184);
  *(a1 + 200) = a3;
  re::DynamicArray<re::StringID>::setCapacity((a1 + 200), a6);
  *(a1 + 240) = a3;
  ++*(a1 + 224);
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 240), a6);
  ++*(a1 + 264);
  v139 = xmmword_1E3047670;
  v140 = xmmword_1E3047680;
  v141 = xmmword_1E30476A0;
  *v137 = 3;
  memset(&v137[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((a4 + 223), v137);
  *v137 = a4[225] - 1;
  re::DynamicArray<unsigned long>::add(a4 + 16, v137);
  re::DynamicArray<re::Matrix3x3<float>>::add((a4 + 56), &v139);
  v12 = *(a4[20] + 8 * a4[18] - 8);
  v139 = xmmword_1E3047670;
  v140 = xmmword_1E3047680;
  v141 = xmmword_1E30476A0;
  v142 = xmmword_1E30474D0;
  *v137 = 4;
  memset(&v137[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), v137);
  *v137 = a4[230] - 1;
  re::DynamicArray<unsigned long>::add(a4 + 21, v137);
  re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), &v139);
  v13 = *(a4[25] + 8 * a4[23] - 8);
  v139.n128_u64[0] = 0x3F8000003F800000;
  v139.n128_u64[1] = 1065353216;
  *&v140 = 0;
  *(&v140 + 1) = 0x3F80000000000000;
  v141 = 0uLL;
  re::EvaluationTree::createInputRegister(a4, &v139, &v132);
  v128 = a3;
  *(a1 + 280) = a3;
  re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), a6);
  ++*(a1 + 304);
  v14 = *(a1 + 296);
  if (v14 >= a6)
  {
    if (v14 <= a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a1 + 288) < a6)
    {
      re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), a6);
      v14 = *(a1 + 296);
    }

    if (a6 > v14)
    {
      v15 = 160 * (a6 - v14);
      if (v15 >= 1)
      {
        v16 = *(a1 + 312) + 160 * v14;
        v17 = v15 / 0xA0uLL + 1;
        *&v18 = -1;
        *(&v18 + 1) = -1;
        do
        {
          *v16 = 0;
          *(v16 + 8) = v18;
          *(v16 + 24) = v18;
          *(v16 + 40) = v18;
          *(v16 + 56) = v18;
          *(v16 + 72) = v18;
          *(v16 + 88) = v18;
          *(v16 + 104) = v18;
          *(v16 + 120) = v18;
          *(v16 + 136) = v18;
          *(v16 + 152) = -1;
          v16 += 160;
          --v17;
        }

        while (v17 > 1);
      }
    }
  }

  *(a1 + 296) = a6;
  ++*(a1 + 304);
LABEL_14:
  *(a1 + 320) = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 320), a6);
  ++*(a1 + 344);
  v20 = *(a1 + 336);
  if (v20 >= a6)
  {
    if (v20 <= a6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 328) < a6)
    {
      result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 320), a6);
      v20 = *(a1 + 336);
    }

    if (a6 > v20 && a6 > v20)
    {
      result = memset((*(a1 + 352) + 8 * v20), 255, 8 * (a6 - v20));
    }
  }

  *(a1 + 336) = a6;
  ++*(a1 + 344);
LABEL_25:
  if (!a6)
  {
    return result;
  }

  v22 = 0;
  v23 = 0;
  v24 = v137;
  do
  {
    v25 = *(a1 + 296);
    if (v25 <= v23)
    {
      goto LABEL_114;
    }

    v26 = *(a1 + 312);
    v139 = v132;
    *&v140 = v133;
    result = re::RigHierarchyJointTransform::init((v26 + v22), a4, &v139, v12, v13);
    ++v23;
    v22 += 160;
  }

  while (a6 != v23);
  v23 = 0;
  v24 = &v139;
  v131 = 0;
  v127 = a6;
  do
  {
    v27 = a5 + 176 * v23;
    v22 = *v27;
    v28 = *(v27 + 8);
    v139.n128_u64[0] = 0;
    v139.n128_u64[1] = &str_67;
    v29 = re::DynamicArray<re::StringID>::add((a1 + 200), &v139);
    if (v139.n128_u8[0])
    {
      if (v139.n128_u8[0])
      {
      }
    }

    v139.n128_u64[1] = 0;
    v140 = 0uLL;
    v30 = *(v27 + 8);
    if (v30)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = 0;
    }

    re::DynamicString::setCapacity(&v139, v31);
    re::DynamicString::operator=(&v139, v27);
    v32 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 24, &v139, &v131);
    if (v139.n128_u64[0] && (v139.n128_u8[8] & 1) != 0)
    {
      (*(*v139.n128_u64[0] + 40))(v32);
    }

    re::DynamicArray<unsigned long>::add((a1 + 240), (v27 + 16));
    v34 = *(v27 + 16);
    v25 = 176;
    if (v34 == -1)
    {
      if (*(v27 + 96))
      {
        *v137 = 0u;
        *v135 = xmmword_1E30474D0;
        v129 = 0u;
        re::decomposeScaleRotationTranslation<float>(v27 + 112, v137, v135, &v129);
        v139 = *v137;
        v140 = *v135;
        v141 = v129;
        re::EvaluationTree::createInputRegister(a4, &v139, v135);
        v22 = *(a1 + 296);
        v38 = v127;
        if (v22 <= v23)
        {
          goto LABEL_123;
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), *v135);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
LABEL_124:
          *&v129 = 0;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v139 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v137 = 136315906;
          *&v137[4] = "operator[]";
          *&v137[12] = 1024;
          *&v137[14] = 789;
          *&v137[18] = 2048;
          *&v137[20] = v23;
          *&v137[28] = 2048;
          *&v137[30] = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_125:
          *&v129 = 0;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v139 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v137 = 136315906;
          *&v137[4] = "operator[]";
          *&v137[12] = 1024;
          *&v137[14] = 789;
          *&v137[18] = 2048;
          *&v137[20] = v23;
          *&v137[28] = 2048;
          *&v137[30] = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_126;
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *&v135[8]);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v38 = v127;
        if (*(v27 + 32) != 1)
        {
          goto LABEL_76;
        }

        re::EvaluationTree::createInputRegister(a4, (v27 + 48), v135);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
          goto LABEL_129;
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), *v135);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
LABEL_130:
          *&v129 = 0;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v139 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v137 = 136315906;
          *&v137[4] = "operator[]";
          *&v137[12] = 1024;
          *&v137[14] = 789;
          *&v137[18] = 2048;
          *&v137[20] = v23;
          *&v137[28] = 2048;
          *&v137[30] = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_131:
          *&v129 = 0;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v139 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v137 = 136315906;
          *&v137[4] = "operator[]";
          *&v137[12] = 1024;
          *&v137[14] = 789;
          *&v137[18] = 2048;
          *&v137[20] = v23;
          *&v137[28] = 2048;
          *&v137[30] = v22;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *&v135[8]);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
          goto LABEL_131;
        }
      }

      re::RigHierarchyJointTransform::setLocalSpaceJointTranslation((*(a1 + 312) + 160 * v23), *&v135[16]);
      goto LABEL_76;
    }

    if (!*(v27 + 96))
    {
      v38 = v127;
      v25 = 160;
      if (*(v27 + 32) != 1)
      {
        goto LABEL_73;
      }

      re::EvaluationTree::createInputRegister(a4, (v27 + 48), v135);
      v22 = *(a1 + 296);
      if (v22 > v23)
      {
        re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), *v135);
        v22 = *(a1 + 296);
        if (v22 > v23)
        {
          re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *&v135[8]);
          v22 = *(a1 + 296);
          if (v22 > v23)
          {
            v60 = (*(a1 + 312) + 160 * v23);
            v61 = *&v135[16];
            goto LABEL_72;
          }

          goto LABEL_128;
        }

LABEL_127:
        *&v129 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v23;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_128:
        *&v129 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v23;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_129:
        *&v129 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v23;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_130;
      }

LABEL_126:
      *&v129 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      *&v137[14] = 789;
      *&v137[18] = 2048;
      *&v137[20] = v23;
      *&v137[28] = 2048;
      *&v137[30] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_127;
    }

    v35 = *(v27 + 112);
    v36 = *(v27 + 128);
    v37 = *(v27 + 160);
    *&v135[32] = *(v27 + 144);
    v136 = v37;
    *v135 = v35;
    *&v135[16] = v36;
    v38 = v127;
    while (1)
    {
      if (v127 <= v34)
      {
        re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v127);
        _os_crash();
        __break(1u);
LABEL_113:
        re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v38);
        _os_crash();
        __break(1u);
LABEL_114:
        *v135 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *(v24->n128_u64 + 4) = "operator[]";
        *&v137[12] = 1024;
        *(&v24->n128_u32[3] + 2) = 789;
        *&v137[18] = 2048;
        *(v24[1].n128_u64 + 4) = v23;
        *&v137[28] = 2048;
        *(&v24[1].n128_u64[1] + 6) = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_115:
        *v135 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v23;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_116:
        *v135 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v25;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_117;
      }

      v22 = a5 + 176 * v34;
      if (*(v22 + 32) == 1)
      {
        v39 = *(v22 + 64);
        v40 = *(v22 + 68);
        v41 = v39 + v39;
        v42 = v40 + v40;
        v43 = *(v22 + 72);
        v44 = *(v22 + 76);
        v45 = v43 + v43;
        v46 = v39 * (v39 + v39);
        v47 = v40 * (v40 + v40);
        v48 = v43 * (v43 + v43);
        v49 = v41 * v40;
        v50 = v41 * v43;
        v51 = v42 * v43;
        v52 = v41 * v44;
        v53 = v42 * v44;
        v54 = v45 * v44;
        v55.i32[3] = 0;
        v55.f32[0] = 1.0 - (v47 + v48);
        v55.f32[1] = v49 + v54;
        v55.f32[2] = v50 - v53;
        v56.i32[3] = 0;
        v56.f32[0] = v49 - v54;
        v56.f32[1] = 1.0 - (v46 + v48);
        v56.f32[2] = v51 + v52;
        v57.i32[3] = 0;
        v57.f32[0] = v50 + v53;
        v57.f32[1] = v51 - v52;
        v57.f32[2] = 1.0 - (v46 + v47);
        v58 = *(v22 + 48);
        v145.columns[0] = vmulq_n_f32(v55, v58.f32[0]);
        v145.columns[2] = vmulq_laneq_f32(v57, v58, 2);
        v145.columns[1] = vmulq_n_f32(v56, COERCE_FLOAT(HIDWORD(*(v22 + 48))));
        v145.columns[3] = *(v22 + 80);
        v145.columns[3].i32[3] = 1.0;
        v146 = __invert_f4(v145);
        v59 = 0;
        *v137 = *v135;
        *&v137[16] = *&v135[16];
        *&v137[32] = *&v135[32];
        v138 = v136;
        do
        {
          *(&v139 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v146.columns[0], COERCE_FLOAT(*&v137[v59])), v146.columns[1], *&v137[v59], 1), v146.columns[2], *&v137[v59], 2), v146.columns[3], *&v137[v59], 3);
          v59 += 16;
        }

        while (v59 != 64);
        *v135 = v139;
        *&v135[16] = v140;
        *&v135[32] = v141;
        v136 = v142;
        goto LABEL_48;
      }

      if (*(v22 + 96) == 1)
      {
        break;
      }

LABEL_48:
      v34 = *(v22 + 16);
      if (v34 == -1)
      {
        goto LABEL_68;
      }
    }

    v147 = __invert_f4(*(v22 + 112));
    v62 = 0;
    *v137 = *v135;
    *&v137[16] = *&v135[16];
    *&v137[32] = *&v135[32];
    v138 = v136;
    do
    {
      *(&v139 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v147.columns[0], COERCE_FLOAT(*&v137[v62])), v147.columns[1], *&v137[v62], 1), v147.columns[2], *&v137[v62], 2), v147.columns[3], *&v137[v62], 3);
      v62 += 16;
    }

    while (v62 != 64);
    *v135 = v139;
    *&v135[16] = v140;
    *&v135[32] = v141;
    v136 = v142;
LABEL_68:
    *v137 = 0u;
    v129 = xmmword_1E30474D0;
    v134 = 0u;
    re::decomposeScaleRotationTranslation<float>(v135, v137, &v129, &v134);
    v139 = *v137;
    v140 = v129;
    v141 = v134;
    re::EvaluationTree::createInputRegister(a4, &v139, &v129);
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
LABEL_118:
      *&v134 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      *&v137[14] = 789;
      *&v137[18] = 2048;
      *&v137[20] = v23;
      *&v137[28] = 2048;
      *&v137[30] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_119:
      *&v134 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      *&v137[14] = 789;
      *&v137[18] = 2048;
      *&v137[20] = v23;
      *&v137[28] = 2048;
      *&v137[30] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_120:
      *&v134 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      *&v137[14] = 789;
      *&v137[18] = 2048;
      *&v137[20] = v23;
      *&v137[28] = 2048;
      *&v137[30] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_121;
    }

    v25 = 160;
    re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), v129);
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_119;
    }

    re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *(&v129 + 1));
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_120;
    }

    v60 = (*(a1 + 312) + 160 * v23);
    v61 = v130;
LABEL_72:
    re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(v60, v61);
LABEL_73:
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_115;
    }

    v25 = *(v27 + 16);
    if (v22 <= v25)
    {
      goto LABEL_116;
    }

    re::RigHierarchyJointTransform::setParentTransform((*(a1 + 312) + 160 * v23), (*(a1 + 312) + 160 * v25));
    v25 = 176;
LABEL_76:
    *&v141 = 0;
    *&v140 = 0;
    v139 = 0uLL;
    DWORD2(v140) = 0;
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::add((a1 + 160), &v139);
    re::DynamicArray<re::RigDataValue>::deinit(&v139);
    v63 = *(a1 + 192) + 40 * *(a1 + 176);
    *(v63 - 40) = v128;
    v22 = v63 - 40;
    re::DynamicArray<re::RigDataValue>::setCapacity(v22, 8uLL);
    ++*(v22 + 24);
    if (*(v27 + 96) != 1)
    {
      if (*(v27 + 32) == 1)
      {
        v65 = *(v27 + 64);
        v66 = *(v27 + 68);
        v67 = v65 + v65;
        v68 = v66 + v66;
        v69 = *(v27 + 72);
        v70 = *(v27 + 76);
        v71 = v69 + v69;
        v72 = v65 * (v65 + v65);
        v73 = v66 * (v66 + v66);
        v74 = v69 * (v69 + v69);
        v75 = v67 * v66;
        v76 = v67 * v69;
        v77 = v68 * v69;
        v78 = v67 * v70;
        v79 = v68 * v70;
        v80 = v71 * v70;
        v81.i32[3] = 0;
        v81.f32[0] = 1.0 - (v73 + v74);
        v81.f32[1] = v75 + v80;
        v81.f32[2] = v76 - v79;
        v82.i32[3] = 0;
        v82.f32[0] = v75 - v80;
        v82.f32[1] = 1.0 - (v72 + v74);
        v82.f32[2] = v77 + v78;
        v83.i32[3] = 0;
        v83.f32[0] = v76 + v79;
        v83.f32[1] = v77 - v78;
        v83.f32[2] = 1.0 - (v72 + v73);
        v84 = *(v27 + 48);
        v85 = vmulq_n_f32(v81, v84.f32[0]);
        v86 = vmulq_laneq_f32(v83, v84, 2);
        v87 = vmulq_n_f32(v82, COERCE_FLOAT(HIDWORD(*(v27 + 48))));
        *v135 = v85;
        *&v135[16] = v87;
        *&v135[32] = v86;
        v88 = *(v27 + 80);
        HIDWORD(v88) = 1.0;
        v136 = v88;
        for (i = *(v27 + 16); i != -1; i = v90[1].u64[0])
        {
          if (v38 <= i)
          {
            goto LABEL_113;
          }

          v90 = (a5 + 176 * i);
          if (v90[2].i8[0] == 1)
          {
            v91 = 0;
            v92 = v90[4].f32[0];
            v93 = v90[4].f32[1];
            v94 = v92 + v92;
            v95 = v93 + v93;
            v96 = v90[4].f32[2];
            v97 = v90[4].f32[3];
            v98 = v96 + v96;
            v99 = v92 * (v92 + v92);
            v100 = v93 * (v93 + v93);
            v101 = v96 * (v96 + v96);
            v102 = v94 * v93;
            v103 = v94 * v96;
            v104 = v95 * v96;
            v105 = v94 * v97;
            v106 = v95 * v97;
            v107 = v98 * v97;
            v108.i32[3] = 0;
            v108.f32[0] = 1.0 - (v100 + v101);
            v108.f32[1] = v102 + v107;
            v108.f32[2] = v103 - v106;
            v109.i32[3] = 0;
            v109.f32[0] = v102 - v107;
            v109.f32[1] = 1.0 - (v99 + v101);
            v109.f32[2] = v104 + v105;
            v110.i32[3] = 0;
            v110.f32[0] = v103 + v106;
            v110.f32[1] = v104 - v105;
            v110.f32[2] = 1.0 - (v99 + v100);
            v111 = v90[3];
            v112 = vmulq_n_f32(v108, v111.f32[0]);
            v113 = vmulq_laneq_f32(v110, v111, 2);
            v114 = v90[5];
            v114.i32[3] = 1.0;
            v110.i64[0] = HIDWORD(v90[3].i64[0]);
            *v137 = v85;
            *&v137[16] = v87;
            v115 = vmulq_n_f32(v109, v110.f32[0]);
            *&v137[32] = v86;
            v138 = v88;
            do
            {
              *(&v139 + v91) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(*&v137[v91])), v115, *&v137[v91], 1), v113, *&v137[v91], 2), v114, *&v137[v91], 3);
              v91 += 16;
            }

            while (v91 != 64);
            v85 = v139;
            v87 = v140;
            v86 = v141;
            v88 = v142;
            *v135 = v139;
            *&v135[16] = v140;
            *&v135[32] = v141;
            v136 = v142;
          }

          else if (v90[6].i8[0] == 1)
          {
            v116 = 0;
            v117 = v90[7];
            v118 = v90[8];
            v119 = v90[9];
            v120 = v90[10];
            *v137 = v85;
            *&v137[16] = v87;
            *&v137[32] = v86;
            v138 = v88;
            do
            {
              *(&v139 + v116) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, COERCE_FLOAT(*&v137[v116])), v118, *&v137[v116], 1), v119, *&v137[v116], 2), v120, *&v137[v116], 3);
              v116 += 16;
            }

            while (v116 != 64);
            *v135 = v139;
            *&v135[16] = v140;
            *&v135[32] = v141;
            v136 = v142;
            break;
          }
        }

        v139.n128_u32[0] = 4;
        v140 = 0uLL;
        v139.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v139);
        v139.n128_u64[0] = a4[230] - 1;
        re::DynamicArray<unsigned long>::add(a4 + 21, &v139);
        re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), v135);
        v22 = *(a1 + 336);
        if (v22 > v23)
        {
          goto LABEL_95;
        }

LABEL_122:
        *&v129 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v23;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_123:
        *&v129 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        *&v137[14] = 789;
        *&v137[18] = 2048;
        *&v137[20] = v23;
        *&v137[28] = 2048;
        *&v137[30] = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_124;
      }

      *v137 = xmmword_1E3047670;
      *&v137[16] = xmmword_1E3047680;
      *&v137[32] = xmmword_1E30476A0;
      v138 = xmmword_1E30474D0;
      v139.n128_u32[0] = 4;
      v140 = 0uLL;
      v139.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v139);
      v139.n128_u64[0] = a4[230] - 1;
      re::DynamicArray<unsigned long>::add(a4 + 21, &v139);
      re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), v137);
      v22 = *(a1 + 336);
      if (v22 > v23)
      {
        goto LABEL_95;
      }

LABEL_121:
      *&v129 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      *&v135[14] = 789;
      *&v135[18] = 2048;
      *&v135[20] = v23;
      *&v135[28] = 2048;
      *&v135[30] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    v139.n128_u32[0] = 4;
    v140 = 0uLL;
    v139.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v139);
    v139.n128_u64[0] = a4[230] - 1;
    re::DynamicArray<unsigned long>::add(a4 + 21, &v139);
    re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), v27 + 112);
    v22 = *(a1 + 336);
    if (v22 <= v23)
    {
LABEL_117:
      *v135 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      *&v137[14] = 789;
      *&v137[18] = 2048;
      *&v137[20] = v23;
      *&v137[28] = 2048;
      *&v137[30] = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_118;
    }

LABEL_95:
    *(*(a1 + 352) + 8 * v23++) = *(a4[25] + 8 * a4[23] - 8);
    v131 = v23;
  }

  while (v23 < v38);
  *&v129 = 0;
  v121 = 1;
  do
  {
    v139.n128_u64[1] = 0;
    v140 = 0uLL;
    v122 = *(a5 + 8);
    if (v122)
    {
      v123 = v122 + 1;
    }

    else
    {
      v123 = 0;
    }

    re::DynamicString::setCapacity(&v139, v123);
    v124 = re::DynamicString::operator=(&v139, a5);
    re::DynamicString::rfind(v124, 47, v135);
    if (v135[0] == 1)
    {
      v126 = (v139.n128_u8[8] & 1) != 0 ? v139.n128_u64[1] >> 1 : v139.n128_u8[8] >> 1;
      re::DynamicString::substr(&v139, *&v135[8] + 1, v126, v137);
      v125.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 24, v137, &v129);
      if (*v137)
      {
        if (v137[8])
        {
          (*(**v137 + 40))(v125.n128_f64[0]);
        }
      }
    }

    result = v139.n128_u64[0];
    if (v139.n128_u64[0])
    {
      if (v139.n128_u8[8])
      {
        result = (*(*v139.n128_u64[0] + 40))(v125);
      }
    }

    *&v129 = v121++;
    a5 += 176;
    --v38;
  }

  while (v38);
  return result;
}

void *re::DynamicArray<re::StringID>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::StringID>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 16 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

double re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v13);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v14, v13);
    result = 0.0;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 32) = a2[3];
    v9 = a2[1];
    *(v8 + 8) = *a2;
    *a2 = 0;
    v10 = a2[2];
    a2[3] = 0;
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    a2[1] = v12;
    a2[2] = v11;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DynamicArray<re::RigDataValue>>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 40 * v5;
  *(v11 + 32) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 0;
  v12 = *(a2 + 8);
  *v11 = *a2;
  *(v11 + 8) = v12;
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = *(v11 + 16);
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v14 = *(v11 + 32);
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 32) = v14;
  ++*(a2 + 24);
  ++*(v11 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::RigHierarchy::init(re::RigHierarchy *this, const re::RigEnvironment *a2, const re::Skeleton *a3, re::Allocator *a4, re::EvaluationTree *a5)
{
  v8 = *(a3 + 3);
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v34 = 0;
  re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v32, v8);
  ++v34;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 8;
    while (1)
    {
      v13 = *(a3 + 3);
      if (v13 <= v11)
      {
        break;
      }

      v14 = strlen(*(*(a3 + 4) + v12));
      *&v25 = *(*(a3 + 4) + v12);
      *(&v25 + 1) = v14;
      v16 = *(a3 + 6);
      if (v16 <= v11)
      {
        goto LABEL_14;
      }

      v17 = *(*(a3 + 7) + 4 * v11);
      if (v17 == -1)
      {
        v17 = -1;
      }

      v26 = v17;
      v18 = *(a3 + 12);
      if (v18 <= v11)
      {
        goto LABEL_15;
      }

      v19 = (*(a3 + 13) + v10);
      v27 = 1;
      v21 = v19[1];
      v20 = v19[2];
      v28 = *v19;
      v29 = v21;
      v30 = v20;
      v31 = 0;
      re::DynamicArray<re::RigHierarchyJointDescription>::add(v32, &v25);
      ++v11;
      v12 += 16;
      v10 += 48;
      if (v8 == v11)
      {
        goto LABEL_9;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v13, a4, a5);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v16);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v18);
    result = _os_crash();
    __break(1u);
  }

  else
  {
LABEL_9:
    re::RigHierarchy::init(this, a2, a4, a5, v35, v33);
    result = v32[0];
    if (v32[0])
    {
      if (v35)
      {
        return (*(*v32[0] + 40))(v32[0]);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::RigHierarchyJointDescription>::add(void *this, __int128 *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigHierarchyJointDescription>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 176 * v4;
  v6 = *a2;
  *(v5 + 16) = *(a2 + 2);
  *v5 = v6;
  v7 = *(a2 + 32);
  *(v5 + 32) = v7;
  if (v7 == 1)
  {
    v8 = a2[3];
    v9 = a2[5];
    *(v5 + 64) = a2[4];
    *(v5 + 80) = v9;
    *(v5 + 48) = v8;
  }

  v10 = *(a2 + 96);
  *(v5 + 96) = v10;
  if (v10 == 1)
  {
    v11 = a2[7];
    v12 = a2[8];
    v13 = a2[10];
    *(v5 + 144) = a2[9];
    *(v5 + 160) = v13;
    *(v5 + 112) = v11;
    *(v5 + 128) = v12;
  }

  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::RigHierarchy::deinit(re::RigHierarchy *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 280);
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<re::StringID>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(this + 160);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(this + 120);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t re::RigHierarchy::jointDescription@<X0>(re::RigHierarchy *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(this + 27);
  result = *(this + 1);
  a3[1] = v5;
  a3[2] = 0;
  *a3 = result;
  if (v5)
  {
    if (v5 < 0x1745D1745D1745ELL)
    {
      v7 = (*(*result + 32))(result, 176 * v5, 16);
      a3[2] = v7;
      if (!v7)
      {
        goto LABEL_24;
      }

      v9 = v5 - 1;
      if (v5 == 1)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = -1;
        *(v7 + 32) = 0;
        v10 = (v7 + 96);
      }

      else
      {
        v10 = (v7 + 96);
        do
        {
          *(v10 - 12) = 0;
          *(v10 - 11) = 0;
          *(v10 - 10) = -1;
          *(v10 - 64) = 0;
          *v10 = 0;
          v10 += 176;
          --v9;
        }

        while (v9);
        *(v10 - 12) = 0;
        *(v10 - 11) = 0;
        *(v10 - 10) = -1;
        *(v10 - 64) = 0;
      }

      v11 = 0;
      *v10 = 0;
      v12 = (v7 + 112);
      for (i = 8; ; i += 16)
      {
        v14 = *(this + 27);
        if (v14 <= v11)
        {
          break;
        }

        if (v5 == v11)
        {
          goto LABEL_20;
        }

        v15 = strlen(*(*(this + 29) + i));
        *(v12 - 14) = *(*(this + 29) + i);
        *(v12 - 13) = v15;
        v14 = *(this + 32);
        if (v14 <= v11)
        {
          goto LABEL_21;
        }

        *(v12 - 12) = *(*(this + 34) + 8 * v11);
        *v19 = xmmword_1E3047670;
        *&v19[16] = xmmword_1E3047680;
        *&v19[32] = xmmword_1E30476A0;
        v20 = xmmword_1E30474D0;
        v14 = *(this + 42);
        if (v14 <= v11)
        {
          goto LABEL_22;
        }

        result = re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(*(this + 2), *(*(this + 44) + 8 * v11), v19);
        *&v28[15] = *v19;
        *&v28[31] = *&v19[16];
        *&v28[47] = *&v19[32];
        *&v28[63] = v20;
        if (*(v12 - 1))
        {
          v16 = *v19;
          v17 = *&v19[16];
          v18 = v20;
          v12[2] = *&v19[32];
          v12[3] = v18;
          *v12 = v16;
          v12[1] = v17;
        }

        else
        {
          *(v12 - 16) = 1;
          *v12 = *&v28[15];
          v12[1] = *&v28[31];
          v12[2] = *&v28[47];
          v12[3] = *&v28[63];
        }

        ++v11;
        v12 += 11;
        if (v5 == v11)
        {
          return result;
        }
      }

      *v21 = 0;
      memset(v28, 0, sizeof(v28));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v11;
      *&v19[28] = 2048;
      *&v19[30] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_20:
      *v21 = 0;
      memset(v28, 0, sizeof(v28));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 468;
      *&v19[18] = 2048;
      *&v19[20] = v5;
      *&v19[28] = 2048;
      *&v19[30] = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_21:
      *v21 = 0;
      memset(v28, 0, sizeof(v28));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v11;
      *&v19[28] = 2048;
      *&v19[30] = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_22:
      memset(v28, 0, sizeof(v28));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v21 = 136315906;
      *&v21[4] = "operator[]";
      v22 = 1024;
      v23 = 797;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 176, v5);
    _os_crash();
    __break(1u);
LABEL_24:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
  {
    while (a1[103] > v3)
    {
      a2 = *(a1[105] + 8 * v3);
      v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
      if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_4;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_4:
  v4 = a1[25];
  v5 = a1[23];
  v6 = (v4 + 8 * v5);
  if (v5)
  {
    v7 = a1[25];
    do
    {
      v8 = v5 >> 1;
      v9 = &v7[v5 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v5 += ~(v5 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v5);
  }

  else
  {
    v7 = a1[25];
  }

  if (v7 == v6 || *v7 != a2)
  {
    return 0;
  }

  v12 = (v7 - v4) >> 3;
  if (a1[63] <= v12)
  {
    goto LABEL_18;
  }

  v13 = (a1[65] + (v12 << 6));
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[3];
  a3[2] = v13[2];
  a3[3] = v16;
  *a3 = v14;
  a3[1] = v15;
  return 1;
}

uint64_t re::RigHierarchy::setLocalSpaceJointTransform@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v9);
  re::DynamicString::operator=(&v21, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 37);
    if (v12 <= *v10)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 789;
      *&v20[18] = 2048;
      *&v20[20] = v11;
      *&v20[28] = 2048;
      *&v20[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 39) + 160 * v11), *a3);
      v11 = *v10;
      v12 = *(a1 + 37);
      if (v12 > *v10)
      {
        re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 39) + 160 * v11), a3[1]);
        v11 = *v10;
        v10 = *(a1 + 37);
        if (v10 > v11)
        {
          result = re::RigHierarchyJointTransform::setLocalSpaceJointTranslation((*(a1 + 39) + 160 * v11), a3[2]);
          *a4 = 1;
          return result;
        }

LABEL_24:
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v20 = 136315906;
        *&v20[4] = "operator[]";
        *&v20[12] = 1024;
        *&v20[14] = 789;
        *&v20[18] = 2048;
        *&v20[20] = v11;
        *&v20[28] = 2048;
        *&v20[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v20 = 136315906;
    *&v20[4] = "operator[]";
    *&v20[12] = 1024;
    *&v20[14] = 789;
    *&v20[18] = 2048;
    *&v20[20] = v11;
    *&v20[28] = 2048;
    *&v20[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(a1 + 1);
  *&v20[16] = 0;
  *&v20[24] = 0;
  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  *v20 = v14;
  *&v20[8] = 0;
  re::DynamicString::setCapacity(v20, v16);
  re::DynamicString::operator=(v20, a2);
  if (v20[8])
  {
    v17 = *&v20[16];
  }

  else
  {
    v17 = &v20[9];
  }

  re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
  v18 = v21;
  v19 = v22;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v18;
  *(a4 + 40) = v19;
  result = *v20;
  if (*v20)
  {
    if (v20[8])
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v7 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v7, v3, v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 40;
  }
}

void *re::RigHierarchy::getEvaluationSkeletalPose@<X0>(re::RigHierarchy *this@<X0>, re::Allocator *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *(this + 27);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v10)
  {
    v13 = 0;
    v5 = 8;
    while (1)
    {
      v4 = *(this + 27);
      if (v4 <= v13)
      {
        break;
      }

      v14 = *(*(this + 29) + v5);
      *&v42 = 0;
      *(&v42 + 1) = &str_67;
      v4 = v39;
      if (v39 <= v13)
      {
        goto LABEL_42;
      }

      v12 = re::StringID::operator=((v40 + v5 - 8), &v42);
      if (v42)
      {
        if (v42)
        {
        }
      }

      ++v13;
      v5 += 16;
      if (v10 == v13)
      {
        goto LABEL_9;
      }
    }

    *&v42 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v62[0].i32[0] = 136315906;
    *(v62[0].i64 + 4) = "operator[]";
    v62[0].i16[6] = 1024;
    *(&v62[0].i32[3] + 2) = 797;
    v62[1].i16[1] = 2048;
    *(v62[1].i64 + 4) = v13;
    v62[1].i16[6] = 2048;
    *(&v62[1].i64[1] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    *v57 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v62[0].i32[0] = 136315906;
    *(v62[0].i64 + 4) = "operator[]";
    v62[0].i16[6] = 1024;
    *(&v62[0].i32[3] + 2) = 468;
    v62[1].i16[1] = 2048;
    *(v62[1].i64 + 4) = v13;
    v62[1].i16[6] = 2048;
    *(&v62[1].i64[1] + 6) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

LABEL_9:
  v11 = &v42;
  *&v46 = 0;
  *(&v46 + 1) = &str_67;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v56 = 0x7FFFFFFFLL;
  if (a3)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (v10)
    {
      v16 = 0;
      v4 = 0;
      v17 = xmmword_1E30474D0;
      while (1)
      {
        v5 = *(this + 32);
        if (v5 <= v4)
        {
          break;
        }

        v5 = v36;
        if (v36 <= v4)
        {
          goto LABEL_46;
        }

        v18 = *(*(this + 34) + 8 * v4);
        if (v18 >= v4)
        {
          LODWORD(v18) = -1;
        }

        *(v37 + 4 * v4) = v18;
        v42 = xmmword_1E3047670;
        v43 = xmmword_1E3047680;
        v44 = xmmword_1E30476A0;
        v45 = v17;
        v5 = *(this + 42);
        if (v5 <= v4)
        {
          goto LABEL_47;
        }

        re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(*(this + 2), *(*(this + 44) + 8 * v4), &v42);
        v62[0] = 0u;
        *v57 = xmmword_1E30474D0;
        v41 = 0u;
        re::decomposeScaleRotationTranslation<float>(&v42, v62, v57, &v41);
        v5 = v33;
        if (v33 <= v4)
        {
          goto LABEL_48;
        }

        v19 = v62[0].i64[1];
        v20 = *v57;
        v21 = v41;
        v22 = v34 + v16;
        *v22 = v62[0].i64[0];
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        ++v4;
        v16 += 48;
        *(v22 + 32) = v21;
        v17 = xmmword_1E30474D0;
        if (v10 == v4)
        {
          goto LABEL_19;
        }
      }

LABEL_45:
      *v57 = 0;
      v63 = 0u;
      v64 = 0u;
      memset(v62, 0, sizeof(v62));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v42) = 136315906;
      *(v11 + 4) = "operator[]";
      WORD6(v42) = 1024;
      *(v11 + 14) = 797;
      WORD1(v43) = 2048;
      *(v11 + 20) = v4;
      WORD6(v43) = 2048;
      *(v11 + 30) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_46:
      *v57 = 0;
      v63 = 0u;
      v64 = 0u;
      memset(v62, 0, sizeof(v62));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v42) = 136315906;
      *(v11 + 4) = "operator[]";
      WORD6(v42) = 1024;
      *(v11 + 14) = 468;
      WORD1(v43) = 2048;
      *(v11 + 20) = v4;
      WORD6(v43) = 2048;
      *(v11 + 30) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_47:
      *&v41 = 0;
      v63 = 0u;
      v64 = 0u;
      memset(v62, 0, sizeof(v62));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v57 = 136315906;
      *&v57[4] = "operator[]";
      *&v57[12] = 1024;
      *&v57[14] = 797;
      v58 = 2048;
      v59 = v4;
      v60 = 2048;
      v61 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_48:
      *&v41 = 0;
      v63 = 0u;
      v64 = 0u;
      memset(v62, 0, sizeof(v62));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v57 = 136315906;
      *&v57[4] = "operator[]";
      *&v57[12] = 1024;
      *&v57[14] = 468;
      v58 = 2048;
      v59 = v4;
      v60 = 2048;
      v61 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_19:
    v62[0].i64[0] = 0x270108FE20E3CD24;
    v62[0].i64[1] = "RigHierarchySkeleton";
    *&v42 = v40;
    *(&v42 + 1) = v39;
    *v57 = v37;
    *&v57[8] = v36;
    *&v41 = v34;
    *(&v41 + 1) = v33;
    v4 = v29;
    re::Skeleton::init(&v46, a2, v62[0].i64, &v42, v57, &v41, v29);
    if ((v29[0] & 1) == 0)
    {
      v23 = v30;
      if (v30)
      {
        if (BYTE8(v30))
        {
          v23 = (*(*v30 + 40))();
        }

        v31 = 0u;
        v30 = 0u;
      }
    }

    if (v62[0].i8[0])
    {
      if (v62[0].i8[0])
      {
      }
    }

    if (v32 && v33)
    {
      (*(*v32 + 40))();
    }

    if (v35 && v36)
    {
      (*(*v35 + 40))();
    }
  }

  re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>(&v38, &v46, v62[0].i64);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a4 + 24), v62[0].i64[0]);
  re::FixedArray<re::EvaluationSRT>::init<>(a4, a2, *(v62[0].i64[0] + 216));
  if (v62[0].i64[0])
  {
  }

  if (v10)
  {
    v24 = 0;
    a2 = 0;
    v25 = (*(a4 + 16) + 16);
    while (1)
    {
      a3 = *(this + 37);
      if (a3 <= a2)
      {
        break;
      }

      a3 = *(a4 + 8);
      if (a3 <= a2)
      {
        goto LABEL_44;
      }

      v26 = *(this + 39) + v24;
      v27 = *(v26 + 24);
      *(v25 - 1) = *(v26 + 8);
      *v25 = v27;
      v25 += 3;
      a2 = (a2 + 1);
      v24 += 160;
      if (v10 == a2)
      {
        goto LABEL_40;
      }
    }

LABEL_43:
    *v57 = 0;
    v63 = 0u;
    v64 = 0u;
    memset(v62, 0, sizeof(v62));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v42) = 136315906;
    *(v11 + 4) = "operator[]";
    WORD6(v42) = 1024;
    *(v11 + 14) = 797;
    WORD1(v43) = 2048;
    *(v11 + 20) = a2;
    WORD6(v43) = 2048;
    *(v11 + 30) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    *v57 = 0;
    v63 = 0u;
    v64 = 0u;
    memset(v62, 0, sizeof(v62));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v42) = 136315906;
    *(v11 + 4) = "operator[]";
    WORD6(v42) = 1024;
    *(v11 + 14) = 468;
    WORD1(v43) = 2048;
    *(v11 + 20) = a2;
    WORD6(v43) = 2048;
    *(v11 + 30) = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

LABEL_40:
  re::Skeleton::~Skeleton(&v46);
  return re::FixedArray<re::StringID>::deinit(&v38);
}

__n128 re::RigHierarchy::bindRigHierarchyPose@<Q0>(re::RigHierarchy *this@<X0>, re::EvaluationTree *a2@<X1>, re::EvaluationContextManager *a3@<X2>, const re::BindPoint *a4@<X3>, unsigned __int8 *a5@<X8>)
{
  v9 = re::BindPoint::valueUntyped(a4);
  if (v9)
  {
    v11 = *(v9 + 80);
    v12 = (v11 + 224);
    if (!v11)
    {
      v12 = (this + 232);
      v11 = this;
    }

    v13 = *(v11 + 27);
    if (v13)
    {
      v14 = 0;
      v15 = (*v12 + 8);
      while (1)
      {
        v24.n128_u64[0] = 0x3F8000003F800000;
        v24.n128_u64[1] = 1065353216;
        v25 = 0;
        v26 = 0x3F80000000000000;
        v27 = 0;
        v28 = 0;
        re::EvaluationTree::createInputRegister(a2, &v24, &v29);
        v24.n128_u64[0] = 0x3F8000003F800000;
        v24.n128_u64[1] = 1065353216;
        v25 = 0;
        v26 = 0x3F80000000000000;
        v27 = 0;
        v28 = 0;
        re::DynamicArray<re::EvaluationSRT>::add((a3 + 328), &v29);
        re::DynamicArray<re::Matrix3x3<float>>::add((a3 + 688), &v24);
        v16 = (*(a3 + 43) - 1);
        v23[0] = a3;
        v23[1] = v16;
        re::makeSkeletalPoseJointBindNode(a4, v14, &v24);
        re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(v23[0], v23, &v24, 0);
        v17 = strlen(*v15);
        v22[0] = *v15;
        v22[1] = v17;
        re::RigHierarchy::setLocalSpaceJointTransform(this, v22, &v29, a5);
        v18 = *a5;
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v24.n128_i64[1]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v24.n128_i64[1]);
        if (v18 != 1)
        {
          break;
        }

        v14 = (v14 + 1);
        v15 += 2;
        if (v13 == v14)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      *a5 = 1;
    }
  }

  else
  {
    result = v24;
    v19 = v25;
    v20 = v26;
    *a5 = 0;
    *(a5 + 1) = 5000;
    *(a5 + 2) = &re::AnimationErrorCategory(void)::instance;
    *(a5 + 24) = result;
    *(a5 + 5) = v19;
    *(a5 + 6) = v20;
  }

  return result;
}

uint64_t re::RigHierarchy::addJoint@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v60 = 0uLL;
  v6 = a2[1];
  if (v6)
  {
    v7 = (v6 + 1);
  }

  else
  {
    v7 = 0;
  }

  *(&v59 + 1) = 0;
  re::DynamicString::setCapacity(&v59, v7);
  re::DynamicString::operator=(&v59, a2);
  v8 = re::Hash<re::DynamicString>::operator()(v58, &v59);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, &v59, v8, v58);
  v9 = *&v58[12];
  if (v59 && (BYTE8(v59) & 1) != 0)
  {
    (*(*v59 + 40))();
  }

  if (v9 == 0x7FFFFFFF)
  {
    *&v61 = 0;
    *&v60 = 0;
    v59 = 0uLL;
    DWORD2(v60) = 0;
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::add((a1 + 160), &v59);
    re::DynamicArray<re::RigDataValue>::deinit(&v59);
    v10 = *(a1 + 192) + 40 * *(a1 + 176);
    v11 = *(a1 + 136);
    *(v10 - 40) = *(a1 + 8);
    v10 -= 40;
    re::DynamicArray<re::RigDataValue>::setCapacity(v10, v11);
    ++*(v10 + 24);
    v12 = *(a1 + 136);
    re::DynamicArray<re::RigDataValue>::resize(*(a1 + 192) + 40 * *(a1 + 176) - 40, v12);
    if (v12)
    {
      v14 = 0;
      v15 = 0;
      v16 = 32;
      do
      {
        v17 = *(a1 + 192) + 40 * *(a1 + 176);
        v18 = *(v17 - 24);
        if (v18 <= v15)
        {
          v53 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 789;
          *&v58[18] = 2048;
          *&v58[20] = v15;
          *&v58[28] = 2048;
          *&v58[30] = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_54:
          v53 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          *&v58[12] = 1024;
          *&v58[14] = 789;
          *&v58[18] = 2048;
          *&v58[20] = v15;
          *&v58[28] = 2048;
          *&v58[30] = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v18 = *(a1 + 136);
        if (v18 <= v15)
        {
          goto LABEL_54;
        }

        re::RigDataValue::init((*(v17 - 8) + v14), *(a1 + 8), *a1, (*(a1 + 152) + v16), *(a1 + 16));
        ++v15;
        v14 += 288;
        v16 += 96;
      }

      while (v12 != v15);
    }

    v19 = *a2;
    v20 = a2[1];
    *&v59 = 0;
    *(&v59 + 1) = &str_67;
    v21 = re::DynamicArray<re::StringID>::add((a1 + 200), &v59);
    if (v59)
    {
      if (v59)
      {
      }
    }

    v22 = *(a1 + 216) - 1;
    v57 = v22;
    v55 = 0;
    v56 = 0;
    v23 = a2[1];
    if (v23)
    {
      v24 = (v23 + 1);
    }

    else
    {
      v24 = 0;
    }

    v54 = 0;
    re::DynamicString::setCapacity(&v53, v24);
    re::DynamicString::operator=(&v53, a2);
    v59 = 0uLL;
    *&v60 = 0;
    v25 = re::Hash<re::DynamicString>::operator()(v58, &v53);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, &v53, v25, &v59);
    if (HIDWORD(v59) == 0x7FFFFFFF)
    {
      v26 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 24, DWORD2(v59), v59);
      re::DynamicString::DynamicString((v26 + 8), &v53);
      *(v26 + 40) = v22;
      ++*(a1 + 64);
    }

    re::DynamicString::rfind(&v53, 47, v58);
    if (v58[0])
    {
      v27 = (v54 & 1) != 0 ? v54 >> 1 : v54 >> 1;
      re::DynamicString::substr(&v53, *&v58[8] + 1, v27, &v59);
      v28 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 24, &v59, &v57);
      if (v59)
      {
        if (BYTE8(v59))
        {
          (*(*v59 + 40))(v28);
        }
      }
    }

    v29 = re::DynamicArray<unsigned long>::add((a1 + 240), &re::RigHierarchyJointDescription::kInvalidParentIndex);
    v30 = *(a1 + 288);
    v31 = *(a1 + 296);
    if (v31 >= v30)
    {
      v32 = v31 + 1;
      if (v30 < v31 + 1)
      {
        if (*(a1 + 280))
        {
          v33 = 2 * v30;
          v34 = v30 == 0;
          v35 = 8;
          if (!v34)
          {
            v35 = v33;
          }

          if (v35 <= v32)
          {
            v36 = v32;
          }

          else
          {
            v36 = v35;
          }

          re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), v36);
        }

        else
        {
          re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), v32);
          ++*(a1 + 304);
        }
      }

      v31 = *(a1 + 296);
    }

    v45 = *(a1 + 312) + 160 * v31;
    *v45 = 0;
    *&v46 = -1;
    *(&v46 + 1) = -1;
    *(v45 + 8) = v46;
    *(v45 + 24) = v46;
    *(v45 + 40) = v46;
    *(v45 + 56) = v46;
    *(v45 + 72) = v46;
    *(v45 + 88) = v46;
    *(v45 + 104) = v46;
    *(v45 + 120) = v46;
    *(v45 + 136) = v46;
    *(v45 + 152) = -1;
    ++*(a1 + 296);
    ++*(a1 + 304);
    v47 = *(a1 + 16);
    v59 = xmmword_1E3047670;
    v60 = xmmword_1E3047680;
    v61 = xmmword_1E30476A0;
    *v58 = 3;
    memset(&v58[8], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v47 + 223), v58);
    *v58 = v47[225] - 1;
    re::DynamicArray<unsigned long>::add(v47 + 16, v58);
    re::DynamicArray<re::Matrix3x3<float>>::add((v47 + 56), &v59);
    v48 = *(v47[20] + 8 * v47[18] - 8);
    v49 = *(a1 + 16);
    v59 = xmmword_1E3047670;
    v60 = xmmword_1E3047680;
    v61 = xmmword_1E30476A0;
    v62 = xmmword_1E30474D0;
    *v58 = 4;
    memset(&v58[8], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v49 + 228), v58);
    *v58 = v49[230] - 1;
    re::DynamicArray<unsigned long>::add(v49 + 21, v58);
    re::DynamicArray<re::Matrix4x4<float>>::add((v49 + 61), &v59);
    v50 = *(v49[25] + 8 * v49[23] - 8);
    v51 = *(a1 + 16);
    *&v59 = 0x3F8000003F800000;
    *(&v59 + 1) = 1065353216;
    *&v60 = 0;
    *(&v60 + 1) = 0x3F80000000000000;
    v61 = 0uLL;
    re::EvaluationTree::createInputRegister(v51, &v59, v58);
    re::RigHierarchyJointTransform::init((*(a1 + 312) + 160 * *(a1 + 296) - 160), *(a1 + 16), v58, v48, v50);
    v52 = *(a1 + 16);
    v59 = xmmword_1E3047670;
    v60 = xmmword_1E3047680;
    v61 = xmmword_1E30476A0;
    v62 = xmmword_1E30474D0;
    *v58 = 4;
    memset(&v58[8], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v52 + 228), v58);
    *v58 = v52[230] - 1;
    re::DynamicArray<unsigned long>::add(v52 + 21, v58);
    re::DynamicArray<re::Matrix4x4<float>>::add((v52 + 61), &v59);
    *v58 = *(v52[25] + 8 * v52[23] - 8);
    re::DynamicArray<unsigned long>::add((a1 + 320), v58);
    *a3 = 1;
    result = v53;
    if (v53 && (v54 & 1) != 0)
    {
      v44 = v55;
      return (*(*result + 40))(result, v44);
    }
  }

  else
  {
    v37 = *(a1 + 8);
    *&v58[16] = 0;
    *&v58[24] = 0;
    v38 = a2[1];
    if (v38)
    {
      v39 = (v38 + 1);
    }

    else
    {
      v39 = 0;
    }

    *v58 = v37;
    *&v58[8] = 0;
    re::DynamicString::setCapacity(v58, v39);
    re::DynamicString::operator=(v58, a2);
    if (v58[8])
    {
      v40 = *&v58[16];
    }

    else
    {
      v40 = &v58[9];
    }

    re::DynamicString::format(v37, "Cannot add duplicate joint: %s", &v59, v40);
    v41 = v59;
    v42 = v60;
    *a3 = 0;
    *(a3 + 8) = 1030;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v41;
    *(a3 + 40) = v42;
    result = *v58;
    if (*v58 && (v58[8] & 1) != 0)
    {
      v44 = *&v58[16];
      return (*(*result + 40))(result, v44);
    }
  }

  return result;
}

void re::DynamicArray<re::RigDataValue>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 288 * a2;
    v9 = a2;
    do
    {
      re::RigDataValue::~RigDataValue((*(a1 + 32) + v8));
      ++v9;
      v8 += 288;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigDataValue>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 288 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 + 32) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 40) = 0;
        *(v7 + 48) = &str_67;
        *(v7 + 88) = 0;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 56) = 0;
        *(v7 + 80) = 0;
        *(v7 + 96) = 0;
        *(v7 + 112) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0uLL;
        *(v7 + 160) = 0uLL;
        *(v7 + 176) = -1;
        *(v7 + 184) = 0;
        *(v7 + 216) = 0;
        *(v7 + 224) = 0;
        *(v7 + 272) = 0;
        *(v7 + 264) = 0;
        *(v7 + 232) = &str_67;
        *(v7 + 240) = 0;
        v6 += 288;
        *(v7 + 248) = 0;
        *(v7 + 256) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::RigHierarchy::removeJoint@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = 0;
  v32 = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v30 + 1) = 0;
  re::DynamicString::setCapacity(&v30, v7);
  re::DynamicString::operator=(&v30, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v30);
  v9 = v30;
  if (v30 && (BYTE8(v30) & 1) != 0)
  {
    v9 = (*(*v30 + 40))();
  }

  if (v8)
  {
    v31 = 0;
    v32 = 0;
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    re::DynamicString::setCapacity(&v30, v11);
    re::DynamicString::operator=(&v30, a2);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 24, &v30);
    result = v30;
    if (v30 && (BYTE8(v30) & 1) != 0)
    {
      result = (*(*v30 + 40))();
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = 0;
      v15 = *(a1 + 40);
      while (1)
      {
        v16 = *v15;
        v15 += 14;
        if (v16 < 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          LODWORD(v14) = *(a1 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    if (v14 != v13)
    {
      v24 = *(a1 + 40);
      while (*(v24 + 56 * v14 + 40) != *v8)
      {
        if (v13 <= v14 + 1)
        {
          v25 = v14 + 1;
        }

        else
        {
          v25 = *(a1 + 56);
        }

        while (v25 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(v24 + 56 * v14) & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        LODWORD(v14) = v25;
LABEL_39:
        if (v14 == v13)
        {
          goto LABEL_42;
        }
      }

      result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 24, v24 + 56 * v14 + 8);
    }

LABEL_42:
    *a3 = 1;
  }

  else
  {
    v17 = *(a1 + 8);
    v28 = 0;
    v29 = 0;
    v18 = *(a2 + 8);
    if (v18)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    v26 = v17;
    v27 = 0;
    re::DynamicString::setCapacity(&v26, v19);
    re::DynamicString::operator=(&v26, a2);
    if (v27)
    {
      v20 = v28;
    }

    else
    {
      v20 = &v27 + 1;
    }

    re::DynamicString::format(v17, "Cannot remove unknown joint: %s", &v30, v20);
    v21 = v30;
    v22 = v31;
    v23 = v32;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v21;
    *(a3 + 40) = v22;
    *(a3 + 48) = v23;
    result = v26;
    if (v26 && (v27 & 1) != 0)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

BOOL re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(a1, v6);
}

uint64_t re::RigHierarchy::jointParent@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v31 + 1) = 0;
  re::DynamicString::setCapacity(&v31, v9);
  re::DynamicString::operator=(&v31, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v31);
  result = v31;
  if (v31 && (BYTE8(v31) & 1) != 0)
  {
    result = (*(*v31 + 40))();
  }

  if (v10)
  {
    v12 = *v10;
    v13 = *(a1 + 32);
    if (v13 <= v12)
    {
LABEL_36:
      v25 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      *&v30[12] = 1024;
      *&v30[14] = 797;
      *&v30[18] = 2048;
      *&v30[20] = v12;
      *&v30[28] = 2048;
      *&v30[30] = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v25 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v30 = 136315906;
      *&v30[4] = "operator[]";
      *&v30[12] = 1024;
      *&v30[14] = 797;
      *&v30[18] = 2048;
      *&v30[20] = v13;
      *&v30[28] = 2048;
      *&v30[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v13 = *(*(a1 + 34) + 8 * v12);
    if (v13 == -1)
    {
LABEL_21:
      *a4 = 1;
      *(a4 + 8) = 0;
    }

    else
    {
      if (a3)
      {
        while (1)
        {
          v12 = *(a1 + 27);
          if (v12 <= v13)
          {
            break;
          }

          v14 = strlen(*(*(a1 + 29) + 16 * v13 + 8));
          *v30 = *(*(a1 + 29) + 16 * v13 + 8);
          *&v30[8] = v14;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          if (v14)
          {
            v15 = v14 + 1;
          }

          else
          {
            v15 = 0;
          }

          re::DynamicString::setCapacity(&v25, v15);
          re::DynamicString::operator=(&v25, v30);
          v16 = re::Hash<re::DynamicString>::operator()(&v31, &v25);
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, &v25, v16, &v31);
          v17 = HIDWORD(v31);
          result = v25;
          if (v25)
          {
            if (v26)
            {
              result = (*(*v25 + 40))();
            }
          }

          if (v17 != 0x7FFFFFFF)
          {
            goto LABEL_31;
          }

          v12 = *(a1 + 32);
          if (v12 <= v13)
          {
            goto LABEL_35;
          }

          v13 = *(*(a1 + 34) + 8 * v13);
          if (v13 == -1)
          {
            goto LABEL_21;
          }
        }

        v29 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        *&v30[12] = 1024;
        *&v30[14] = 797;
        *&v30[18] = 2048;
        *&v30[20] = v13;
        *&v30[28] = 2048;
        *&v30[30] = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v25 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        *&v30[12] = 1024;
        *&v30[14] = 797;
        *&v30[18] = 2048;
        *&v30[20] = v13;
        *&v30[28] = 2048;
        *&v30[30] = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_36;
      }

LABEL_31:
      v12 = *(a1 + 27);
      if (v12 <= v13)
      {
        goto LABEL_37;
      }

      v24 = *(a1 + 29) + 16 * v13;
      *a4 = 1;
      *(a4 + 8) = v24;
    }
  }

  else
  {
    v18 = *(a1 + 1);
    *&v30[16] = 0;
    *&v30[24] = 0;
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 0;
    }

    *v30 = v18;
    *&v30[8] = 0;
    re::DynamicString::setCapacity(v30, v20);
    re::DynamicString::operator=(v30, a2);
    if (v30[8])
    {
      v21 = *&v30[16];
    }

    else
    {
      v21 = &v30[9];
    }

    re::DynamicString::format(v18, "Unknown joint name: %s", &v31, v21);
    v22 = v31;
    v23 = v32;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v22;
    *(a4 + 40) = v23;
    result = *v30;
    if (*v30 && (v30[8] & 1) != 0)
    {
      return (*(**v30 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::getLocalSpaceJointTransform@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::RigHierarchy::getLocalSpaceJointSRT(a1, a2, v10);
  if (v10[0] == 1)
  {
    result = re::EvaluationTree::constructMatrix4x4(*(a1 + 2), v11, *(&v11 + 1), v12);
    *a3 = 1;
    *(a3 + 8) = result;
  }

  else
  {
    v6 = v11;
    re::DynamicString::DynamicString(&v7, &v12);
    *a3 = 0;
    *(a3 + 8) = v6;
    *(a3 + 24) = v7;
    *(a3 + 48) = v9;
    *(a3 + 32) = v8;
    result = v12;
    if (v12)
    {
      if (v13)
      {
        return (*(*v12 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getLocalSpaceJointSRT@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v21 + 1) = 0;
  re::DynamicString::setCapacity(&v21, v7);
  re::DynamicString::operator=(&v21, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v21);
  result = v21;
  if (v21 && (BYTE8(v21) & 1) != 0)
  {
    result = (*(*v21 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      *&v20[12] = 1024;
      *&v20[14] = 797;
      *&v20[18] = 2048;
      *&v20[20] = v10;
      *&v20[28] = 2048;
      *&v20[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1 + 39) + 160 * v10;
    v13 = *(v12 + 24);
    *a3 = 1;
    *(a3 + 8) = *(v12 + 8);
    *(a3 + 24) = v13;
  }

  else
  {
    v14 = *(a1 + 1);
    *&v20[16] = 0;
    *&v20[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v20 = v14;
    *&v20[8] = 0;
    re::DynamicString::setCapacity(v20, v16);
    re::DynamicString::operator=(v20, a2);
    if (v20[8])
    {
      v17 = *&v20[16];
    }

    else
    {
      v17 = &v20[9];
    }

    re::DynamicString::format(v14, "Unknown joint name: %s", &v21, v17);
    v18 = v21;
    v19 = v22;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v20;
    if (*v20 && (v20[8] & 1) != 0)
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setLocalSpaceJointTransform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v28 + 1) = 0;
  re::DynamicString::setCapacity(&v28, v9);
  re::DynamicString::operator=(&v28, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v28);
  if (v28 && (BYTE8(v28) & 1) != 0)
  {
    (*(*v28 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 296);
    if (v12 <= *v10)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v27 = 136315906;
      *&v27[4] = "operator[]";
      *&v27[12] = 1024;
      *&v27[14] = 789;
      *&v27[18] = 2048;
      *&v27[20] = v11;
      *&v27[28] = 2048;
      *&v27[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v13 = (*(a1 + 312) + 160 * v11);
      Scale = re::EvaluationTree::extractScale(*(a1 + 16), a3);
      re::RigHierarchyJointTransform::setLocalSpaceJointScale(v13, Scale);
      v11 = *v10;
      v12 = *(a1 + 296);
      if (v12 > *v10)
      {
        v15 = (*(a1 + 312) + 160 * v11);
        Rotation = re::EvaluationTree::extractRotation(*(a1 + 16), a3);
        re::RigHierarchyJointTransform::setLocalSpaceJointRotation(v15, Rotation);
        v11 = *v10;
        v10 = *(a1 + 296);
        if (v10 > v11)
        {
          v17 = *(a1 + 16);
          v18 = (*(a1 + 312) + 160 * v11);
          LODWORD(v28) = 37;
          v29 = 0uLL;
          *(&v28 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v17 + 1944), &v28);
          v19 = *(v17 + 1960) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v17 + 1664, v19) + 8) = a3;
          result = re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(v18, v19);
          *a4 = 1;
          return result;
        }

LABEL_24:
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v27 = 136315906;
        *&v27[4] = "operator[]";
        *&v27[12] = 1024;
        *&v27[14] = 789;
        *&v27[18] = 2048;
        *&v27[20] = v11;
        *&v27[28] = 2048;
        *&v27[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    *&v27[12] = 1024;
    *&v27[14] = 789;
    *&v27[18] = 2048;
    *&v27[20] = v11;
    *&v27[28] = 2048;
    *&v27[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v21 = *(a1 + 8);
  *&v27[16] = 0;
  *&v27[24] = 0;
  v22 = *(a2 + 8);
  if (v22)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 0;
  }

  *v27 = v21;
  *&v27[8] = 0;
  re::DynamicString::setCapacity(v27, v23);
  re::DynamicString::operator=(v27, a2);
  if (v27[8])
  {
    v24 = *&v27[16];
  }

  else
  {
    v24 = &v27[9];
  }

  re::DynamicString::format(v21, "Unknown joint name: %s", &v28, v24);
  v25 = v28;
  v26 = v29;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v25;
  *(a4 + 40) = v26;
  result = *v27;
  if (*v27)
  {
    if (v27[8])
    {
      return (*(**v27 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointTransform@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v20 + 1) = 0;
  re::DynamicString::setCapacity(&v20, v7);
  re::DynamicString::operator=(&v20, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v20);
  result = v20;
  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    result = (*(*v20 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = *(a1 + 37);
    if (v11 <= v10)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v19 = 136315906;
      *&v19[4] = "operator[]";
      *&v19[12] = 1024;
      *&v19[14] = 797;
      *&v19[18] = 2048;
      *&v19[20] = v10;
      *&v19[28] = 2048;
      *&v19[30] = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(*(a1 + 39) + 160 * v10 + 80);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = *(a1 + 1);
    *&v19[16] = 0;
    *&v19[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v19 = v13;
    *&v19[8] = 0;
    re::DynamicString::setCapacity(v19, v15);
    re::DynamicString::operator=(v19, a2);
    if (v19[8])
    {
      v16 = *&v19[16];
    }

    else
    {
      v16 = &v19[9];
    }

    re::DynamicString::format(v13, "Unknown joint name: %s", &v20, v16);
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v17;
    *(a3 + 40) = v18;
    result = *v19;
    if (*v19 && (v19[8] & 1) != 0)
    {
      return (*(**v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::setModelSpaceJointTransform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v28 + 1) = 0;
  re::DynamicString::setCapacity(&v28, v9);
  re::DynamicString::operator=(&v28, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v28);
  if (v28 && (BYTE8(v28) & 1) != 0)
  {
    (*(*v28 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = *(a1 + 296);
    if (v12 <= *v10)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v27 = 136315906;
      *&v27[4] = "operator[]";
      *&v27[12] = 1024;
      *&v27[14] = 789;
      *&v27[18] = 2048;
      *&v27[20] = v11;
      *&v27[28] = 2048;
      *&v27[30] = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v13 = (*(a1 + 312) + 160 * v11);
      Scale = re::EvaluationTree::extractScale(*(a1 + 16), a3);
      re::RigHierarchyJointTransform::setModelSpaceJointScale(v13, Scale);
      v11 = *v10;
      v12 = *(a1 + 296);
      if (v12 > *v10)
      {
        v15 = (*(a1 + 312) + 160 * v11);
        Rotation = re::EvaluationTree::extractRotation(*(a1 + 16), a3);
        re::RigHierarchyJointTransform::setModelSpaceJointRotation(v15, Rotation);
        v11 = *v10;
        v10 = *(a1 + 296);
        if (v10 > v11)
        {
          v17 = *(a1 + 16);
          v18 = (*(a1 + 312) + 160 * v11);
          LODWORD(v28) = 37;
          v29 = 0uLL;
          *(&v28 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v17 + 1944), &v28);
          v19 = *(v17 + 1960) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v17 + 1664, v19) + 8) = a3;
          result = re::RigHierarchyJointTransform::setModelSpaceJointTranslation(v18, v19);
          *a4 = 1;
          return result;
        }

LABEL_24:
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v27 = 136315906;
        *&v27[4] = "operator[]";
        *&v27[12] = 1024;
        *&v27[14] = 789;
        *&v27[18] = 2048;
        *&v27[20] = v11;
        *&v27[28] = 2048;
        *&v27[30] = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    *&v27[12] = 1024;
    *&v27[14] = 789;
    *&v27[18] = 2048;
    *&v27[20] = v11;
    *&v27[28] = 2048;
    *&v27[30] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v21 = *(a1 + 8);
  *&v27[16] = 0;
  *&v27[24] = 0;
  v22 = *(a2 + 8);
  if (v22)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 0;
  }

  *v27 = v21;
  *&v27[8] = 0;
  re::DynamicString::setCapacity(v27, v23);
  re::DynamicString::operator=(v27, a2);
  if (v27[8])
  {
    v24 = *&v27[16];
  }

  else
  {
    v24 = &v27[9];
  }

  re::DynamicString::format(v21, "Unknown joint name: %s", &v28, v24);
  v25 = v28;
  v26 = v29;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v25;
  *(a4 + 40) = v26;
  result = *v27;
  if (*v27)
  {
    if (v27[8])
    {
      return (*(**v27 + 40))();
    }
  }

  return result;
}